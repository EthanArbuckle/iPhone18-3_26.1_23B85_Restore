@interface CCUIContentModuleContext
+ (BOOL)areAnimationsPermittedInWindow:(id)a3;
+ (id)_sharedOpenAppService;
+ (id)_sharedOpenApplicationOptions;
+ (void)initialize;
+ (void)performWithoutAnimationWhileHiddenInWindow:(id)a3 actions:(id)a4;
+ (void)setAnimationsPermitted:(BOOL)a3 inWindow:(id)a4;
- (BOOL)isDevicePasscodeLocked;
- (CCUIContentModuleContext)initWithModuleIdentifier:(id)a3 uniqueIdentifier:(id)a4;
- (CCUIContentModuleContextDelegate)delegate;
- (CCUIDisplayLayoutContextProviding)displayLayoutContextProvider;
- (CCUIModuleLayoutSize)moduleLayoutSizeForOrientation:(int64_t)a3;
- (CCUISensorActivityData)mutedMicrophoneSensorActivityData;
- (CCUISensorActivityData)sensorActivityDataEligibleForInactiveMicModeSelection;
- (id)sensorActivityDataForActiveSensorType:(unint64_t)a3;
- (void)dismissControlCenter;
- (void)dismissModule;
- (void)enqueueStatusUpdate:(id)a3;
- (void)invalidateContainerViewsForPlatterTreatment;
- (void)openApplication:(id)a3 completionHandler:(id)a4;
- (void)openApplication:(id)a3 withOptions:(id)a4 completionHandler:(id)a5;
- (void)openURL:(id)a3 completionHandler:(id)a4;
- (void)requestAuthenticationWithCompletionHandler:(id)a3;
- (void)requestExpandModule;
- (void)requestLayoutSizeUpdate;
@end

@implementation CCUIContentModuleContext

- (void)invalidateContainerViewsForPlatterTreatment
{
  v3 = [(CCUIContentModuleContext *)self delegate];
  [v3 invalidateContainerViewsForPlatterTreatmentForContentModuleContext:self];
}

- (CCUIContentModuleContextDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (id)_sharedOpenAppService
{
  if (_sharedOpenAppService_onceToken != -1)
  {
    +[CCUIContentModuleContext _sharedOpenAppService];
  }

  v3 = _sharedOpenAppService___openAppService;

  return v3;
}

uint64_t __49__CCUIContentModuleContext__sharedOpenAppService__block_invoke()
{
  v0 = [MEMORY[0x1E699FB78] serviceWithDefaultShellEndpoint];
  v1 = _sharedOpenAppService___openAppService;
  _sharedOpenAppService___openAppService = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)_sharedOpenApplicationOptions
{
  if (_sharedOpenApplicationOptions_onceToken != -1)
  {
    +[CCUIContentModuleContext _sharedOpenApplicationOptions];
  }

  v3 = _sharedOpenApplicationOptions___options;

  return v3;
}

void __57__CCUIContentModuleContext__sharedOpenApplicationOptions__block_invoke()
{
  v4[3] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E699F990];
  v3[0] = *MEMORY[0x1E699F970];
  v3[1] = v0;
  v4[0] = MEMORY[0x1E695E118];
  v4[1] = MEMORY[0x1E695E118];
  v3[2] = *MEMORY[0x1E699F940];
  v4[2] = @"CCUIAppLaunchOriginControlCenter";
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:3];
  v2 = _sharedOpenApplicationOptions___options;
  _sharedOpenApplicationOptions___options = v1;
}

+ (void)initialize
{
  if (initialize_onceToken != -1)
  {
    +[CCUIContentModuleContext initialize];
  }
}

uint64_t __38__CCUIContentModuleContext_initialize__block_invoke()
{
  v0 = os_log_create("com.apple.ControlCenter.Module", "AppLauncher");
  v1 = kApplicationLauncherLog;
  kApplicationLauncherLog = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (CCUIContentModuleContext)initWithModuleIdentifier:(id)a3 uniqueIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = CCUIContentModuleContext;
  v8 = [(CCUIContentModuleContext *)&v19 init];
  if (v8)
  {
    v9 = [v7 copy];
    uniqueIdentifier = v8->_uniqueIdentifier;
    v8->_uniqueIdentifier = v9;

    v11 = [v6 copy];
    moduleIdentifier = v8->_moduleIdentifier;
    v8->_moduleIdentifier = v11;

    v13 = [MEMORY[0x1E698E698] serial];
    v14 = [v13 autoreleaseFrequency:1];
    v15 = [v14 serviceClass:25];
    v16 = BSDispatchQueueCreate();
    queue = v8->_queue;
    v8->_queue = v16;
  }

  return v8;
}

- (void)requestAuthenticationWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(CCUIContentModuleContext *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__CCUIContentModuleContext_requestAuthenticationWithCompletionHandler___block_invoke;
  block[3] = &unk_1E83EA950;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

void __71__CCUIContentModuleContext_requestAuthenticationWithCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  SBSRequestPasscodeUnlockAlertUI();
}

uint64_t __71__CCUIContentModuleContext_requestAuthenticationWithCompletionHandler___block_invoke_2(uint64_t a1, int a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 != 0);
  }

  return result;
}

- (void)openURL:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_opt_class() _sharedOpenApplicationOptions];
  v9 = [(CCUIContentModuleContext *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__CCUIContentModuleContext_openURL_completionHandler___block_invoke;
  block[3] = &unk_1E83EA978;
  v14 = v6;
  v15 = v8;
  v16 = v7;
  v10 = v7;
  v11 = v8;
  v12 = v6;
  dispatch_async(v9, block);
}

void __54__CCUIContentModuleContext_openURL_completionHandler___block_invoke(uint64_t *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E6963608] defaultWorkspace];
  v3 = a1[4];
  v4 = a1[5];
  v10 = 0;
  v5 = [v2 openSensitiveURL:v3 withOptions:v4 error:&v10];
  v6 = v10;

  v7 = kApplicationLauncherLog;
  if (v5)
  {
    if (os_log_type_enabled(kApplicationLauncherLog, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[4];
      *buf = 138543362;
      v12 = v8;
      _os_log_impl(&dword_1D168A000, v7, OS_LOG_TYPE_DEFAULT, "Launched URL %{public}@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(kApplicationLauncherLog, OS_LOG_TYPE_ERROR))
  {
    __54__CCUIContentModuleContext_openURL_completionHandler___block_invoke_cold_1(a1 + 4, v6, v7);
  }

  v9 = a1[6];
  if (v9)
  {
    (*(v9 + 16))(v9, v5);
  }
}

- (void)openApplication:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_opt_class() _sharedOpenApplicationOptions];
  [(CCUIContentModuleContext *)self openApplication:v7 withOptions:v8 completionHandler:v6];
}

- (void)openApplication:(id)a3 withOptions:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [objc_opt_class() _sharedOpenAppService];
  v11 = [MEMORY[0x1E699FB70] optionsWithDictionary:v9];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __74__CCUIContentModuleContext_openApplication_withOptions_completionHandler___block_invoke;
  v14[3] = &unk_1E83EA9A0;
  v15 = v7;
  v16 = v8;
  v12 = v8;
  v13 = v7;
  [v10 openApplication:v13 withOptions:v11 completion:v14];
}

void __74__CCUIContentModuleContext_openApplication_withOptions_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = kApplicationLauncherLog;
  if (v6)
  {
    if (os_log_type_enabled(kApplicationLauncherLog, OS_LOG_TYPE_ERROR))
    {
      __74__CCUIContentModuleContext_openApplication_withOptions_completionHandler___block_invoke_cold_1(a1, v7);
    }
  }

  else if (os_log_type_enabled(kApplicationLauncherLog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_1D168A000, v7, OS_LOG_TYPE_DEFAULT, "Launched application %{public}@", &v10, 0xCu);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v6 == 0);
  }
}

- (void)enqueueStatusUpdate:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__CCUIContentModuleContext_enqueueStatusUpdate___block_invoke;
  v6[3] = &unk_1E83EA450;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __48__CCUIContentModuleContext_enqueueStatusUpdate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 contentModuleContext:*(a1 + 32) enqueueStatusUpdate:*(a1 + 40)];
}

void __59__CCUIContentModuleContext_setHomeGestureDismissalAllowed___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 contentModuleContext:*(a1 + 32) didUpdateHomeGestureDismissalAllowed:*(a1 + 40)];
  }
}

- (void)requestExpandModule
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__CCUIContentModuleContext_requestExpandModule__block_invoke;
  block[3] = &unk_1E83EA478;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __47__CCUIContentModuleContext_requestExpandModule__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 requestExpandModuleForContentModuleContext:*(a1 + 32)];
}

- (void)dismissModule
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__CCUIContentModuleContext_dismissModule__block_invoke;
  block[3] = &unk_1E83EA478;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __41__CCUIContentModuleContext_dismissModule__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 dismissExpandedViewForContentModuleContext:*(a1 + 32)];
}

- (void)dismissControlCenter
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__CCUIContentModuleContext_dismissControlCenter__block_invoke;
  block[3] = &unk_1E83EA478;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __48__CCUIContentModuleContext_dismissControlCenter__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 dismissControlCenterForContentModuleContext:*(a1 + 32)];
}

- (void)requestLayoutSizeUpdate
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__CCUIContentModuleContext_requestLayoutSizeUpdate__block_invoke;
  block[3] = &unk_1E83EA478;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __51__CCUIContentModuleContext_requestLayoutSizeUpdate__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 requestModuleLayoutSizeUpdateForContentModuleContext:*(a1 + 32)];
  }
}

- (id)sensorActivityDataForActiveSensorType:(unint64_t)a3
{
  v5 = [(CCUIContentModuleContext *)self delegate];
  v6 = [v5 contentModuleContext:self requestsSensorActivityDataForActiveSensorType:a3];

  return v6;
}

- (CCUISensorActivityData)mutedMicrophoneSensorActivityData
{
  v3 = [(CCUIContentModuleContext *)self delegate];
  v4 = [v3 contentModuleContextRequestsMutedMicrophoneSensorActivityData:self];

  return v4;
}

- (CCUISensorActivityData)sensorActivityDataEligibleForInactiveMicModeSelection
{
  v3 = [(CCUIContentModuleContext *)self delegate];
  v4 = [v3 contentModuleContextRequestsSensorActivityDataEligibleForInactiveMicModeSelection:self];

  return v4;
}

- (CCUIModuleLayoutSize)moduleLayoutSizeForOrientation:(int64_t)a3
{
  v5 = [(CCUIContentModuleContext *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 moduleLayoutSizeForContentModuleContext:self forOrientation:a3];
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = v6;
  v10 = v8;
  result.var1 = v10;
  result.var0 = v9;
  return result;
}

- (BOOL)isDevicePasscodeLocked
{
  v3 = [(CCUIContentModuleContext *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 isDevicePasscodeLockedForContentModuleContext:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)areAnimationsPermittedInWindow:(id)a3
{
  v3 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (v3)
  {
    v4 = [v3 _contextId];
    v5 = v4 != __animationsDisabledContextID;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (void)setAnimationsPermitted:(BOOL)a3 inWindow:(id)a4
{
  v8 = a4;
  if (!v8 && !a3)
  {
    [CCUIContentModuleContext setAnimationsPermitted:a2 inWindow:a1];
  }

  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v8 _contextId];
  }

  __animationsDisabledContextID = v7;

  MEMORY[0x1EEE66BB8](v7, v8);
}

+ (void)performWithoutAnimationWhileHiddenInWindow:(id)a3 actions:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (v6)
  {
    dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
    if ([a1 areAnimationsPermittedInWindow:v7])
    {
      v6[2](v6);
    }

    else
    {
      [MEMORY[0x1E69DD250] performWithoutAnimation:v6];
    }
  }
}

- (CCUIDisplayLayoutContextProviding)displayLayoutContextProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_displayLayoutContextProvider);

  return WeakRetained;
}

void __54__CCUIContentModuleContext_openURL_completionHandler___block_invoke_cold_1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_1D168A000, log, OS_LOG_TYPE_ERROR, "Failed to launch URL %{public}@: %{public}@", &v4, 0x16u);
}

void __74__CCUIContentModuleContext_openApplication_withOptions_completionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&dword_1D168A000, a2, OS_LOG_TYPE_ERROR, "Failed to launch application %{public}@", &v3, 0xCu);
}

+ (void)setAnimationsPermitted:(uint64_t)a1 inWindow:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CCUIContentModuleContext.m" lineNumber:221 description:@"A window is required in order to disable animations"];
}

@end