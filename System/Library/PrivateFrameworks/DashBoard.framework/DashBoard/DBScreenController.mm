@interface DBScreenController
- (DBScreenController)initWithRootScene:(id)a3 environmentConfiguration:(id)a4 defaultSceneWorkspaceIdentifier:(id)a5;
- (UIWindow)systemGestureWindow;
- (id)_UISceneTouchpads;
- (void)invalidate;
@end

@implementation DBScreenController

- (DBScreenController)initWithRootScene:(id)a3 environmentConfiguration:(id)a4 defaultSceneWorkspaceIdentifier:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v46.receiver = self;
  v46.super_class = DBScreenController;
  v12 = [(DBScreenController *)&v46 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_rootScene, a3);
    [(FBScene *)v13->_rootScene addObserver:v13];
    v14 = [MEMORY[0x277D0AA98] sharedInstance];
    v15 = [v14 fbsSceneForScene:v9];

    v16 = [MEMORY[0x277D75DA8] _sceneForFBSScene:v15];
    windowScene = v13->_windowScene;
    v13->_windowScene = v16;

    objc_storeStrong(&v13->_environmentConfiguration, a4);
    objc_storeStrong(&v13->_defaultSceneWorkspaceIdentifier, a5);
    v18 = [v10 session];
    v19 = [v18 configuration];

    v20 = [v19 screens];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __97__DBScreenController_initWithRootScene_environmentConfiguration_defaultSceneWorkspaceIdentifier___block_invoke;
    v44[3] = &unk_278F01870;
    v21 = v10;
    v45 = v21;
    v22 = [v20 bs_firstObjectPassingTest:v44];
    screenInfo = v13->_screenInfo;
    v13->_screenInfo = v22;

    v24 = [v19 db_displayInfoForScreenInfo:v13->_screenInfo];
    displayInfo = v13->_displayInfo;
    v13->_displayInfo = v24;

    v26 = [v21 displayConfiguration];
    [v26 bounds];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;

    v35 = [[_TtC9DashBoard19DBInterestingWindow alloc] initWithWindowScene:v13->_windowScene frame:v28, v30, v32, v34];
    interestingWindow = v13->_interestingWindow;
    v13->_interestingWindow = v35;

    [(DBInterestingWindow *)v13->_interestingWindow setHidden:0];
    v37 = [[_TtC9DashBoard20DBCornerRadiusWindow alloc] initWithWindowScene:v13->_windowScene frame:v28, v30, v32, v34];
    cornerRadiusWindow = v13->_cornerRadiusWindow;
    v13->_cornerRadiusWindow = v37;

    [(DBCornerRadiusWindow *)v13->_cornerRadiusWindow setHidden:0];
    rootScene = v13->_rootScene;
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __97__DBScreenController_initWithRootScene_environmentConfiguration_defaultSceneWorkspaceIdentifier___block_invoke_2;
    v41[3] = &unk_278F03D70;
    v42 = v13;
    v43 = v9;
    [(FBScene *)rootScene updateSettings:v41];
  }

  return v13;
}

uint64_t __97__DBScreenController_initWithRootScene_environmentConfiguration_defaultSceneWorkspaceIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) displayConfiguration];
  v5 = [v4 hardwareIdentifier];
  v6 = [v3 isEqualToString:v5];

  return v6;
}

void __97__DBScreenController_initWithRootScene_environmentConfiguration_defaultSceneWorkspaceIdentifier___block_invoke_2(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = UIScreenInteractionModelFromCARScreenInteractionModels([*(*(a1 + 32) + 32) availableInteractionModels]);
  v3 = UIScreenInteractionModelFromCARScreenInteractionModels([*(*(a1 + 32) + 32) primaryInteractionModel]);
  if (([*(*(a1 + 32) + 32) availableInteractionModels] & 2) != 0)
  {
    v4 = [*(*(a1 + 32) + 32) supportsHighFidelityTouch] ^ 1;
  }

  else
  {
    v4 = 2;
  }

  v5 = [*(a1 + 32) _UISceneTouchpads];
  v6 = DBLogForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [*(a1 + 40) identityToken];
    v10 = [v9 stringRepresentation];
    v11 = NSStringFromUIScreenInteractionModel();
    NSStringFromUIScreenInteractionModel();
    v12 = v17 = v2;
    NSStringFromUIScreenTouchLevel();
    v16 = v4;
    v14 = v13 = v3;
    *buf = 138544642;
    v19 = v8;
    v20 = 2114;
    v21 = v10;
    v22 = 2114;
    v23 = v11;
    v24 = 2114;
    v25 = v12;
    v26 = 2114;
    v27 = v14;
    v28 = 2050;
    v29 = [v5 count];
    _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Updating session settings for root scene %{public}@: (availableInteractionModels: %{public}@, primaryInteractionModel: %{public}@, touchLevel: %{public}@, touchpad count %{public}lu)", buf, 0x3Eu);

    v3 = v13;
    v4 = v16;

    v2 = v17;
  }

  v15 = [*(a1 + 40) carPlaySession];
  [v15 setAvailableInteractionModels:v2];
  [v15 setPrimaryInteractionModel:v3];
  [v15 setTouchLevel:v4];
  [v15 setTouchpads:v5];
}

- (UIWindow)systemGestureWindow
{
  v2 = [(DBScreenController *)self environmentConfiguration];
  v3 = [v2 displayIdentity];

  v4 = [MEMORY[0x277D76330] sharedInstance];
  v5 = [v4 windowForSystemGesturesForDisplayWithIdentity:v3];

  return v5;
}

- (void)invalidate
{
  v3 = [(DBScreenController *)self interestingWindow];
  [v3 setHidden:1];

  v4 = [(DBScreenController *)self cornerRadiusWindow];
  [v4 setHidden:1];

  windowScene = self->_windowScene;
  self->_windowScene = 0;
}

- (id)_UISceneTouchpads
{
  v2 = [(DBScreenController *)self environmentConfiguration];
  v3 = [v2 session];
  v4 = [v3 inputDeviceManager];
  v5 = [v4 inputDevices];

  v6 = [v5 bs_compactMap:&__block_literal_global_38];

  return v6;
}

id __39__DBScreenController__UISceneTouchpads__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [v6 supportedFeedbackTypes];
    v8 = objc_alloc(MEMORY[0x277D761C8]);
    v9 = [v6 senderID];
    [v6 sensitivity];
    v11 = v10;
    [v6 physicalSize];
    v14 = [v8 initWithSenderID:v9 sensitivity:v7 & 1 physicalSize:v11 supportedFeedbackTypes:{v12, v13}];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end