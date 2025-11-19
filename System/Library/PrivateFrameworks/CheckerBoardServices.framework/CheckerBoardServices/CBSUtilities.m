@interface CBSUtilities
+ (BOOL)_currentProcessHasEntitlement:(id)a3;
+ (BOOL)isCheckerBoardActive;
+ (BOOL)isSSRBootIntentSet;
+ (BOOL)rebootToCheckerBoard;
+ (id)proxyServer;
+ (void)addShutdownTask:(id)a3 forReason:(id)a4;
+ (void)connectToSSID:(id)a3 completion:(id)a4;
+ (void)connectToSSID:(id)a3 password:(id)a4 completion:(id)a5;
+ (void)connectedNetwork:(id)a3;
+ (void)currentLocaleIdentifier:(id)a3;
+ (void)diagnosticsRunning:(id)a3;
+ (void)dimDisplay;
+ (void)disableNetworkReconnect;
+ (void)disableTouchButtonEvents;
+ (void)displayDimmed:(id)a3;
+ (void)enableNetworkReconnect;
+ (void)enableTouchButtonEvents;
+ (void)exitCheckerBoard;
+ (void)hideSceneStatusBar;
+ (void)launchDiagnostics;
+ (void)networkReconnectEnabled:(id)a3;
+ (void)networkScanWithCompletion:(id)a3;
+ (void)removeShutdownTask:(id)a3;
+ (void)sceneStatusBarStyle:(int64_t)a3;
+ (void)setLocaleIdentifier:(id)a3 completion:(id)a4;
+ (void)showSceneStatusBar;
+ (void)undimDisplay;
@end

@implementation CBSUtilities

+ (BOOL)isCheckerBoardActive
{
  v2 = [MEMORY[0x277D0AE18] sharedService];
  v3 = [v2 systemApplicationBundleIdentifier];

  LOBYTE(v2) = [v3 isEqualToString:@"com.apple.CheckerBoard"];
  return v2;
}

+ (BOOL)rebootToCheckerBoard
{
  if ([a1 _currentProcessHasEntitlement:@"com.apple.CheckerBoard.services.reboot"] && objc_msgSend(a1, "_currentProcessHasEntitlement:", @"com.apple.private.iokit.nvram-write-access") && (objc_msgSend(a1, "_currentProcessHasEntitlement:", @"com.apple.frontboard.shutdown") & 1) != 0)
  {
    v3 = CheckerBoardLogHandleForCategory(4);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_2433DB000, v3, OS_LOG_TYPE_DEFAULT, "Rebooting into CheckerBoard", v8, 2u);
    }

    [CBSNVRamUtil writeNVRamVariable:@"one-time-boot-command" value:@"checkerboard"];
    v4 = objc_alloc_init(MEMORY[0x277D0AE18]);
    v5 = [objc_alloc(MEMORY[0x277D0AE10]) initWithReason:@"Rebooting to CheckerBoard"];
    v6 = 1;
    [v5 setRebootType:1];
    [v4 shutdownWithOptions:v5];
  }

  else
  {
    v4 = CheckerBoardLogHandleForCategory(4);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2433DB000, v4, OS_LOG_TYPE_DEFAULT, "Missing entitlements necessary for rebooting to CheckerBoard", buf, 2u);
    }

    v6 = 0;
  }

  return v6;
}

+ (void)exitCheckerBoard
{
  v3 = +[CBSClient defaultClient];
  v2 = [v3 systemServicesServer];
  [v2 exitCheckerBoard];
}

+ (BOOL)isSSRBootIntentSet
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.CheckerBoard"];
  v3 = [v2 objectForKey:@"persistedBootIntentReason"];
  v4 = v3;
  v5 = v3 && ([v3 isEqualToNumber:&unk_285623388] & 1) != 0;

  return v5;
}

+ (id)proxyServer
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  v2 = dispatch_semaphore_create(0);
  v3 = +[CBSClient defaultClient];
  v4 = [v3 systemServicesServer];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __27__CBSUtilities_proxyServer__block_invoke;
  v9[3] = &unk_278DB2F10;
  v11 = &v12;
  v5 = v2;
  v10 = v5;
  [v4 proxyServerWithCompletion:v9];

  v6 = dispatch_time(0, 2000000000);
  dispatch_semaphore_wait(v5, v6);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __27__CBSUtilities_proxyServer__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

+ (void)showSceneStatusBar
{
  v3 = +[CBSClient defaultClient];
  v2 = [v3 systemServicesServer];
  [v2 showSceneStatusBar];
}

+ (void)hideSceneStatusBar
{
  v3 = +[CBSClient defaultClient];
  v2 = [v3 systemServicesServer];
  [v2 hideSceneStatusBar];
}

+ (void)sceneStatusBarStyle:(int64_t)a3
{
  v5 = +[CBSClient defaultClient];
  v4 = [v5 systemServicesServer];
  [v4 statusBarStyle:a3];
}

+ (void)dimDisplay
{
  v3 = +[CBSClient defaultClient];
  v2 = [v3 systemServicesServer];
  [v2 dimDisplay];
}

+ (void)undimDisplay
{
  v3 = +[CBSClient defaultClient];
  v2 = [v3 systemServicesServer];
  [v2 undimDisplay];
}

+ (void)enableTouchButtonEvents
{
  v3 = +[CBSClient defaultClient];
  v2 = [v3 systemServicesServer];
  [v2 enableTouchButtonEvents];
}

+ (void)disableTouchButtonEvents
{
  v3 = +[CBSClient defaultClient];
  v2 = [v3 systemServicesServer];
  [v2 disableTouchButtonEvents];
}

+ (void)addShutdownTask:(id)a3 forReason:(id)a4
{
  v5 = a4;
  v6 = a3;
  v8 = +[CBSClient defaultClient];
  v7 = [v8 systemServicesServer];
  [v7 addShutdownTask:v6 forReason:v5];
}

+ (void)removeShutdownTask:(id)a3
{
  v3 = a3;
  v5 = +[CBSClient defaultClient];
  v4 = [v5 systemServicesServer];
  [v4 removeShutdownTask:v3];
}

+ (void)disableNetworkReconnect
{
  v3 = +[CBSClient defaultClient];
  v2 = [v3 systemServicesServer];
  [v2 disableNetworkReconnect];
}

+ (void)enableNetworkReconnect
{
  v3 = +[CBSClient defaultClient];
  v2 = [v3 systemServicesServer];
  [v2 enableNetworkReconnect];
}

+ (void)launchDiagnostics
{
  v3 = +[CBSClient defaultClient];
  v2 = [v3 systemServicesServer];
  [v2 launchDiagnostics];
}

+ (void)diagnosticsRunning:(id)a3
{
  v3 = a3;
  v5 = +[CBSClient defaultClient];
  v4 = [v5 systemServicesServer];
  [v4 diagnosticsRunning:v3];
}

+ (void)connectToSSID:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v8 = +[CBSClient defaultClient];
  v7 = [v8 systemServicesServer];
  [v7 connectToSSID:v6 completion:v5];
}

+ (void)connectToSSID:(id)a3 password:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v11 = +[CBSClient defaultClient];
  v10 = [v11 systemServicesServer];
  [v10 connectToSSID:v9 password:v8 completion:v7];
}

+ (void)networkScanWithCompletion:(id)a3
{
  v3 = a3;
  v5 = +[CBSClient defaultClient];
  v4 = [v5 systemServicesServer];
  [v4 networkScanWithCompletion:v3];
}

+ (void)connectedNetwork:(id)a3
{
  v3 = a3;
  v5 = +[CBSClient defaultClient];
  v4 = [v5 systemServicesServer];
  [v4 connectedNetwork:v3];
}

+ (void)networkReconnectEnabled:(id)a3
{
  v3 = a3;
  v5 = +[CBSClient defaultClient];
  v4 = [v5 systemServicesServer];
  [v4 networkReconnectEnabled:v3];
}

+ (void)displayDimmed:(id)a3
{
  v3 = a3;
  v5 = +[CBSClient defaultClient];
  v4 = [v5 systemServicesServer];
  [v4 displayDimmed:v3];
}

+ (void)currentLocaleIdentifier:(id)a3
{
  v3 = a3;
  v5 = +[CBSClient defaultClient];
  v4 = [v5 systemServicesServer];
  [v4 currentLocaleIdentifier:v3];
}

+ (void)setLocaleIdentifier:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v8 = +[CBSClient defaultClient];
  v7 = [v8 systemServicesServer];
  [v7 setLocaleIdentifier:v6 completion:v5];
}

+ (BOOL)_currentProcessHasEntitlement:(id)a3
{
  [a3 cStringUsingEncoding:4];
  v3 = xpc_copy_entitlement_for_self();
  v4 = v3;
  if (v3)
  {
    value = xpc_BOOL_get_value(v3);
  }

  else
  {
    value = 0;
  }

  return value;
}

@end