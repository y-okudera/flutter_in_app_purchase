import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:in_app_purchase_android/in_app_purchase_android.dart';
import 'package:flutter_in_app_purchase/ui/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  if (defaultTargetPlatform == TargetPlatform.android) {
    // For play billing library 2.0 on Android, it is mandatory to call
    // [enablePendingPurchases](https://developer.android.com/reference/com/android/billingclient/api/BillingClient.Builder.html#enablependingpurchases)
    // as part of initializing the app.
    InAppPurchaseAndroidPlatformAddition.enablePendingPurchases();
  }

  runApp(HomePage());
}
