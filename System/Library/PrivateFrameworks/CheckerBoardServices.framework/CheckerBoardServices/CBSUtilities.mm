@interface CBSUtilities
+ (BOOL)_currentProcessHasEntitlement:(id)entitlement;
+ (BOOL)isCheckerBoardActive;
+ (BOOL)isSSRBootIntentSet;
+ (BOOL)rebootToCheckerBoard;
+ (id)proxyServer;
+ (void)addShutdownTask:(id)task forReason:(id)reason;
+ (void)connectToSSID:(id)d completion:(id)completion;
+ (void)connectToSSID:(id)d password:(id)password completion:(id)completion;
+ (void)connectedNetwork:(id)network;
+ (void)currentLocaleIdentifier:(id)identifier;
+ (void)diagnosticsRunning:(id)running;
+ (void)dimDisplay;
+ (void)disableNetworkReconnect;
+ (void)disableTouchButtonEvents;
+ (void)displayDimmed:(id)dimmed;
+ (void)enableNetworkReconnect;
+ (void)enableTouchButtonEvents;
+ (void)exitCheckerBoard;
+ (void)hideSceneStatusBar;
+ (void)launchDiagnostics;
+ (void)networkReconnectEnabled:(id)enabled;
+ (void)networkScanWithCompletion:(id)completion;
+ (void)removeShutdownTask:(id)task;
+ (void)sceneStatusBarStyle:(int64_t)style;
+ (void)setLocaleIdentifier:(id)identifier completion:(id)completion;
+ (void)showSceneStatusBar;
+ (void)undimDisplay;
@end

@implementation CBSUtilities

+ (BOOL)isCheckerBoardActive
{
  mEMORY[0x277D0AE18] = [MEMORY[0x277D0AE18] sharedService];
  systemApplicationBundleIdentifier = [mEMORY[0x277D0AE18] systemApplicationBundleIdentifier];

  LOBYTE(mEMORY[0x277D0AE18]) = [systemApplicationBundleIdentifier isEqualToString:@"com.apple.CheckerBoard"];
  return mEMORY[0x277D0AE18];
}

+ (BOOL)rebootToCheckerBoard
{
  if ([self _currentProcessHasEntitlement:@"com.apple.CheckerBoard.services.reboot"] && objc_msgSend(self, "_currentProcessHasEntitlement:", @"com.apple.private.iokit.nvram-write-access") && (objc_msgSend(self, "_currentProcessHasEntitlement:", @"com.apple.frontboard.shutdown") & 1) != 0)
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
  systemServicesServer = [v3 systemServicesServer];
  [systemServicesServer exitCheckerBoard];
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
  systemServicesServer = [v3 systemServicesServer];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __27__CBSUtilities_proxyServer__block_invoke;
  v9[3] = &unk_278DB2F10;
  v11 = &v12;
  v5 = v2;
  v10 = v5;
  [systemServicesServer proxyServerWithCompletion:v9];

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
  systemServicesServer = [v3 systemServicesServer];
  [systemServicesServer showSceneStatusBar];
}

+ (void)hideSceneStatusBar
{
  v3 = +[CBSClient defaultClient];
  systemServicesServer = [v3 systemServicesServer];
  [systemServicesServer hideSceneStatusBar];
}

+ (void)sceneStatusBarStyle:(int64_t)style
{
  v5 = +[CBSClient defaultClient];
  systemServicesServer = [v5 systemServicesServer];
  [systemServicesServer statusBarStyle:style];
}

+ (void)dimDisplay
{
  v3 = +[CBSClient defaultClient];
  systemServicesServer = [v3 systemServicesServer];
  [systemServicesServer dimDisplay];
}

+ (void)undimDisplay
{
  v3 = +[CBSClient defaultClient];
  systemServicesServer = [v3 systemServicesServer];
  [systemServicesServer undimDisplay];
}

+ (void)enableTouchButtonEvents
{
  v3 = +[CBSClient defaultClient];
  systemServicesServer = [v3 systemServicesServer];
  [systemServicesServer enableTouchButtonEvents];
}

+ (void)disableTouchButtonEvents
{
  v3 = +[CBSClient defaultClient];
  systemServicesServer = [v3 systemServicesServer];
  [systemServicesServer disableTouchButtonEvents];
}

+ (void)addShutdownTask:(id)task forReason:(id)reason
{
  reasonCopy = reason;
  taskCopy = task;
  v8 = +[CBSClient defaultClient];
  systemServicesServer = [v8 systemServicesServer];
  [systemServicesServer addShutdownTask:taskCopy forReason:reasonCopy];
}

+ (void)removeShutdownTask:(id)task
{
  taskCopy = task;
  v5 = +[CBSClient defaultClient];
  systemServicesServer = [v5 systemServicesServer];
  [systemServicesServer removeShutdownTask:taskCopy];
}

+ (void)disableNetworkReconnect
{
  v3 = +[CBSClient defaultClient];
  systemServicesServer = [v3 systemServicesServer];
  [systemServicesServer disableNetworkReconnect];
}

+ (void)enableNetworkReconnect
{
  v3 = +[CBSClient defaultClient];
  systemServicesServer = [v3 systemServicesServer];
  [systemServicesServer enableNetworkReconnect];
}

+ (void)launchDiagnostics
{
  v3 = +[CBSClient defaultClient];
  systemServicesServer = [v3 systemServicesServer];
  [systemServicesServer launchDiagnostics];
}

+ (void)diagnosticsRunning:(id)running
{
  runningCopy = running;
  v5 = +[CBSClient defaultClient];
  systemServicesServer = [v5 systemServicesServer];
  [systemServicesServer diagnosticsRunning:runningCopy];
}

+ (void)connectToSSID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  v8 = +[CBSClient defaultClient];
  systemServicesServer = [v8 systemServicesServer];
  [systemServicesServer connectToSSID:dCopy completion:completionCopy];
}

+ (void)connectToSSID:(id)d password:(id)password completion:(id)completion
{
  completionCopy = completion;
  passwordCopy = password;
  dCopy = d;
  v11 = +[CBSClient defaultClient];
  systemServicesServer = [v11 systemServicesServer];
  [systemServicesServer connectToSSID:dCopy password:passwordCopy completion:completionCopy];
}

+ (void)networkScanWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[CBSClient defaultClient];
  systemServicesServer = [v5 systemServicesServer];
  [systemServicesServer networkScanWithCompletion:completionCopy];
}

+ (void)connectedNetwork:(id)network
{
  networkCopy = network;
  v5 = +[CBSClient defaultClient];
  systemServicesServer = [v5 systemServicesServer];
  [systemServicesServer connectedNetwork:networkCopy];
}

+ (void)networkReconnectEnabled:(id)enabled
{
  enabledCopy = enabled;
  v5 = +[CBSClient defaultClient];
  systemServicesServer = [v5 systemServicesServer];
  [systemServicesServer networkReconnectEnabled:enabledCopy];
}

+ (void)displayDimmed:(id)dimmed
{
  dimmedCopy = dimmed;
  v5 = +[CBSClient defaultClient];
  systemServicesServer = [v5 systemServicesServer];
  [systemServicesServer displayDimmed:dimmedCopy];
}

+ (void)currentLocaleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[CBSClient defaultClient];
  systemServicesServer = [v5 systemServicesServer];
  [systemServicesServer currentLocaleIdentifier:identifierCopy];
}

+ (void)setLocaleIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  v8 = +[CBSClient defaultClient];
  systemServicesServer = [v8 systemServicesServer];
  [systemServicesServer setLocaleIdentifier:identifierCopy completion:completionCopy];
}

+ (BOOL)_currentProcessHasEntitlement:(id)entitlement
{
  [entitlement cStringUsingEncoding:4];
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