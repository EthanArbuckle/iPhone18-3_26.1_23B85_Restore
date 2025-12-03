@interface CCUIContentModuleContext
+ (BOOL)areAnimationsPermittedInWindow:(id)window;
+ (id)_sharedOpenAppService;
+ (id)_sharedOpenApplicationOptions;
+ (void)initialize;
+ (void)performWithoutAnimationWhileHiddenInWindow:(id)window actions:(id)actions;
+ (void)setAnimationsPermitted:(BOOL)permitted inWindow:(id)window;
- (BOOL)isDevicePasscodeLocked;
- (CCUIContentModuleContext)initWithModuleIdentifier:(id)identifier uniqueIdentifier:(id)uniqueIdentifier;
- (CCUIContentModuleContextDelegate)delegate;
- (CCUIDisplayLayoutContextProviding)displayLayoutContextProvider;
- (CCUIModuleLayoutSize)moduleLayoutSizeForOrientation:(int64_t)orientation;
- (CCUISensorActivityData)mutedMicrophoneSensorActivityData;
- (CCUISensorActivityData)sensorActivityDataEligibleForInactiveMicModeSelection;
- (id)sensorActivityDataForActiveSensorType:(unint64_t)type;
- (void)dismissControlCenter;
- (void)dismissModule;
- (void)enqueueStatusUpdate:(id)update;
- (void)invalidateContainerViewsForPlatterTreatment;
- (void)openApplication:(id)application completionHandler:(id)handler;
- (void)openApplication:(id)application withOptions:(id)options completionHandler:(id)handler;
- (void)openURL:(id)l completionHandler:(id)handler;
- (void)requestAuthenticationWithCompletionHandler:(id)handler;
- (void)requestExpandModule;
- (void)requestLayoutSizeUpdate;
@end

@implementation CCUIContentModuleContext

- (void)invalidateContainerViewsForPlatterTreatment
{
  delegate = [(CCUIContentModuleContext *)self delegate];
  [delegate invalidateContainerViewsForPlatterTreatmentForContentModuleContext:self];
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

- (CCUIContentModuleContext)initWithModuleIdentifier:(id)identifier uniqueIdentifier:(id)uniqueIdentifier
{
  identifierCopy = identifier;
  uniqueIdentifierCopy = uniqueIdentifier;
  v19.receiver = self;
  v19.super_class = CCUIContentModuleContext;
  v8 = [(CCUIContentModuleContext *)&v19 init];
  if (v8)
  {
    v9 = [uniqueIdentifierCopy copy];
    uniqueIdentifier = v8->_uniqueIdentifier;
    v8->_uniqueIdentifier = v9;

    v11 = [identifierCopy copy];
    moduleIdentifier = v8->_moduleIdentifier;
    v8->_moduleIdentifier = v11;

    serial = [MEMORY[0x1E698E698] serial];
    v14 = [serial autoreleaseFrequency:1];
    v15 = [v14 serviceClass:25];
    v16 = BSDispatchQueueCreate();
    queue = v8->_queue;
    v8->_queue = v16;
  }

  return v8;
}

- (void)requestAuthenticationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(CCUIContentModuleContext *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__CCUIContentModuleContext_requestAuthenticationWithCompletionHandler___block_invoke;
  block[3] = &unk_1E83EA950;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, block);
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

- (void)openURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  _sharedOpenApplicationOptions = [objc_opt_class() _sharedOpenApplicationOptions];
  queue = [(CCUIContentModuleContext *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__CCUIContentModuleContext_openURL_completionHandler___block_invoke;
  block[3] = &unk_1E83EA978;
  v14 = lCopy;
  v15 = _sharedOpenApplicationOptions;
  v16 = handlerCopy;
  v10 = handlerCopy;
  v11 = _sharedOpenApplicationOptions;
  v12 = lCopy;
  dispatch_async(queue, block);
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

- (void)openApplication:(id)application completionHandler:(id)handler
{
  handlerCopy = handler;
  applicationCopy = application;
  _sharedOpenApplicationOptions = [objc_opt_class() _sharedOpenApplicationOptions];
  [(CCUIContentModuleContext *)self openApplication:applicationCopy withOptions:_sharedOpenApplicationOptions completionHandler:handlerCopy];
}

- (void)openApplication:(id)application withOptions:(id)options completionHandler:(id)handler
{
  applicationCopy = application;
  handlerCopy = handler;
  optionsCopy = options;
  _sharedOpenAppService = [objc_opt_class() _sharedOpenAppService];
  v11 = [MEMORY[0x1E699FB70] optionsWithDictionary:optionsCopy];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __74__CCUIContentModuleContext_openApplication_withOptions_completionHandler___block_invoke;
  v14[3] = &unk_1E83EA9A0;
  v15 = applicationCopy;
  v16 = handlerCopy;
  v12 = handlerCopy;
  v13 = applicationCopy;
  [_sharedOpenAppService openApplication:v13 withOptions:v11 completion:v14];
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

- (void)enqueueStatusUpdate:(id)update
{
  updateCopy = update;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__CCUIContentModuleContext_enqueueStatusUpdate___block_invoke;
  v6[3] = &unk_1E83EA450;
  v6[4] = self;
  v7 = updateCopy;
  v5 = updateCopy;
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

- (id)sensorActivityDataForActiveSensorType:(unint64_t)type
{
  delegate = [(CCUIContentModuleContext *)self delegate];
  v6 = [delegate contentModuleContext:self requestsSensorActivityDataForActiveSensorType:type];

  return v6;
}

- (CCUISensorActivityData)mutedMicrophoneSensorActivityData
{
  delegate = [(CCUIContentModuleContext *)self delegate];
  v4 = [delegate contentModuleContextRequestsMutedMicrophoneSensorActivityData:self];

  return v4;
}

- (CCUISensorActivityData)sensorActivityDataEligibleForInactiveMicModeSelection
{
  delegate = [(CCUIContentModuleContext *)self delegate];
  v4 = [delegate contentModuleContextRequestsSensorActivityDataEligibleForInactiveMicModeSelection:self];

  return v4;
}

- (CCUIModuleLayoutSize)moduleLayoutSizeForOrientation:(int64_t)orientation
{
  delegate = [(CCUIContentModuleContext *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [delegate moduleLayoutSizeForContentModuleContext:self forOrientation:orientation];
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
  delegate = [(CCUIContentModuleContext *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [delegate isDevicePasscodeLockedForContentModuleContext:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)areAnimationsPermittedInWindow:(id)window
{
  windowCopy = window;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (windowCopy)
  {
    _contextId = [windowCopy _contextId];
    v5 = _contextId != __animationsDisabledContextID;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (void)setAnimationsPermitted:(BOOL)permitted inWindow:(id)window
{
  windowCopy = window;
  if (!windowCopy && !permitted)
  {
    [CCUIContentModuleContext setAnimationsPermitted:a2 inWindow:self];
  }

  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (permitted)
  {
    _contextId = 0;
  }

  else
  {
    _contextId = [windowCopy _contextId];
  }

  __animationsDisabledContextID = _contextId;

  MEMORY[0x1EEE66BB8](_contextId, windowCopy);
}

+ (void)performWithoutAnimationWhileHiddenInWindow:(id)window actions:(id)actions
{
  windowCopy = window;
  actionsCopy = actions;
  if (actionsCopy)
  {
    dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
    if ([self areAnimationsPermittedInWindow:windowCopy])
    {
      actionsCopy[2](actionsCopy);
    }

    else
    {
      [MEMORY[0x1E69DD250] performWithoutAnimation:actionsCopy];
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