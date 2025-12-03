@interface DBUserAlert
- (DBUserAlert)initWithAlert:(id)alert scene:(id)scene preferredPresentationStyle:(int64_t)style safeAreaInsets:(UIEdgeInsets)insets environmentConfiguration:(id)configuration;
- (FBScene)scene;
- (UIEdgeInsets)safeAreaInsets;
- (id)_alertViewController;
- (id)presentationViewForRequester:(id)requester;
- (void)_setupAlertScene:(id)scene;
- (void)invalidate;
- (void)relinquishPresentationForRequester:(id)requester;
- (void)setSceneFrame:(CGRect)frame safeAreaInsets:(UIEdgeInsets)insets;
- (void)setUserInterfaceStyle:(int64_t)style;
@end

@implementation DBUserAlert

- (DBUserAlert)initWithAlert:(id)alert scene:(id)scene preferredPresentationStyle:(int64_t)style safeAreaInsets:(UIEdgeInsets)insets environmentConfiguration:(id)configuration
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  alertCopy = alert;
  sceneCopy = scene;
  configurationCopy = configuration;
  v22.receiver = self;
  v22.super_class = DBUserAlert;
  v19 = [(DBUserAlert *)&v22 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_alert, alert);
    v20->_preferredPresentationStyle = style;
    objc_storeStrong(&v20->_environmentConfiguration, configuration);
    v20->_safeAreaInsets.top = top;
    v20->_safeAreaInsets.left = left;
    v20->_safeAreaInsets.bottom = bottom;
    v20->_safeAreaInsets.right = right;
    [(DBUserAlert *)v20 _setupAlertScene:sceneCopy];
  }

  return v20;
}

- (FBScene)scene
{
  localSceneController = [(DBUserAlert *)self localSceneController];
  scene = [localSceneController scene];

  return scene;
}

- (id)presentationViewForRequester:(id)requester
{
  requesterCopy = requester;
  localSceneController = [(DBUserAlert *)self localSceneController];
  v6 = [localSceneController presentationViewWithIdentifier:requesterCopy];

  return v6;
}

- (void)relinquishPresentationForRequester:(id)requester
{
  requesterCopy = requester;
  localSceneController = [(DBUserAlert *)self localSceneController];
  [localSceneController invalidatePresentationViewForIdentifier:requesterCopy];
}

- (void)setSceneFrame:(CGRect)frame safeAreaInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v28 = *MEMORY[0x277D85DE8];
  self->_safeAreaInsets = insets;
  requiresSafeAreaWindow = [(DBUserAlert *)self requiresSafeAreaWindow];
  v14 = requiresSafeAreaWindow;
  if (requiresSafeAreaWindow)
  {
    x = x + left;
    y = y + top;
    width = width - (left + right);
    height = height - (top + bottom);
  }

  v15 = DBLogForCategory(0);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v29.origin.x = x;
    v29.origin.y = y;
    v29.size.width = width;
    v29.size.height = height;
    v16 = NSStringFromRect(v29);
    v30.top = top;
    v30.left = left;
    v30.bottom = bottom;
    v30.right = right;
    v17 = NSStringFromUIEdgeInsets(v30);
    *buf = 138412546;
    v25 = v16;
    v26 = 2112;
    v27 = v17;
    _os_log_impl(&dword_248146000, v15, OS_LOG_TYPE_INFO, "updating user alert sceneFrame %@, safeAreaInsets: %@", buf, 0x16u);
  }

  localSceneController = [(DBUserAlert *)self localSceneController];
  scene = [localSceneController scene];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __44__DBUserAlert_setSceneFrame_safeAreaInsets___block_invoke;
  v23[3] = &__block_descriptor_64_e33_v16__0__FBSMutableSceneSettings_8l;
  *&v23[4] = x;
  *&v23[5] = y;
  *&v23[6] = width;
  *&v23[7] = height;
  [scene updateSettingsWithBlock:v23];

  window = [(DBUserAlert *)self window];
  [window setFrame:{x, y, width, height}];

  if (!v14)
  {
    window2 = [(DBUserAlert *)self window];
    rootViewController = [window2 rootViewController];
    [rootViewController setAdditionalSafeAreaInsets:{top, left, bottom, right}];
  }
}

- (void)setUserInterfaceStyle:(int64_t)style
{
  localSceneController = [(DBUserAlert *)self localSceneController];
  scene = [localSceneController scene];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__DBUserAlert_setUserInterfaceStyle___block_invoke;
  v6[3] = &__block_descriptor_40_e43_v16__0__UIMutableApplicationSceneSettings_8l;
  v6[4] = style;
  [scene updateSettingsWithBlock:v6];
}

- (void)invalidate
{
  localSceneController = [(DBUserAlert *)self localSceneController];
  [localSceneController invalidate];

  [(DBUserAlert *)self setWindow:0];
}

- (void)_setupAlertScene:(id)scene
{
  v34 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  environmentConfiguration = [(DBUserAlert *)self environmentConfiguration];
  [environmentConfiguration currentSafeViewAreaFrame];
  v7 = v6;
  v9 = v8;

  v10 = *MEMORY[0x277CBF348];
  v11 = *(MEMORY[0x277CBF348] + 8);
  requiresSafeAreaWindow = [(DBUserAlert *)self requiresSafeAreaWindow];
  v13 = requiresSafeAreaWindow;
  if (requiresSafeAreaWindow)
  {
    [(DBUserAlert *)self safeAreaInsets];
    v10 = v10 + v14;
    v11 = v11 + v15;
    v7 = v7 - (v14 + v16);
    v9 = v9 - (v15 + v17);
  }

  v18 = DBLogForCategory(0);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v35.origin.x = v10;
    v35.origin.y = v11;
    v35.size.width = v7;
    v35.size.height = v9;
    v19 = NSStringFromRect(v35);
    [(DBUserAlert *)self safeAreaInsets];
    v20 = NSStringFromUIEdgeInsets(v36);
    *buf = 138412546;
    v31 = v19;
    v32 = 2112;
    v33 = v20;
    _os_log_impl(&dword_248146000, v18, OS_LOG_TYPE_INFO, "Setting up user alert with frame %@, safeAreaInsets: %@", buf, 0x16u);
  }

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __32__DBUserAlert__setupAlertScene___block_invoke;
  v29[3] = &unk_278F034A8;
  v29[4] = self;
  *&v29[5] = v10;
  *&v29[6] = v11;
  *&v29[7] = v7;
  *&v29[8] = v9;
  [sceneCopy configureParameters:v29];
  v21 = [[DBLocalSceneController alloc] initWithScene:sceneCopy];
  [(DBUserAlert *)self setLocalSceneController:v21];
  v22 = MEMORY[0x277D75DA8];
  clientScene = [(DBLocalSceneController *)v21 clientScene];
  v24 = [v22 _sceneForFBSScene:clientScene];

  v25 = [[_TtC9DashBoard17DBUserAlertWindow alloc] initWithWindowScene:v24 frame:v10, v11, v7, v9];
  _alertViewController = [(DBUserAlert *)self _alertViewController];
  if (!v13)
  {
    [(DBUserAlert *)self safeAreaInsets];
    [_alertViewController setAdditionalSafeAreaInsets:?];
  }

  [(DBUserAlertWindow *)v25 setRootViewController:_alertViewController];
  [(DBUserAlertWindow *)v25 setHidden:0];
  [(DBUserAlert *)self setWindow:v25];
  v27 = DBLogForCategory(0);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    identity = [sceneCopy identity];
    *buf = 138543362;
    v31 = identity;
    _os_log_impl(&dword_248146000, v27, OS_LOG_TYPE_INFO, "Set up user alert scene %{public}@", buf, 0xCu);
  }
}

uint64_t __32__DBUserAlert__setupAlertScene___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __32__DBUserAlert__setupAlertScene___block_invoke_2;
  v4[3] = &unk_278F03480;
  v4[4] = *(a1 + 32);
  v2 = *(a1 + 56);
  v5 = *(a1 + 40);
  v6 = v2;
  return [a2 updateSettingsWithBlock:v4];
}

void __32__DBUserAlert__setupAlertScene___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  v4 = [v3 environmentConfiguration];
  v5 = [v4 displayConfiguration];
  [v6 setDisplayConfiguration:v5];

  [v6 setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  [v6 setInterfaceOrientation:1];
  [v6 setStatusBarDisabled:1];
  [v6 setForeground:1];
}

- (id)_alertViewController
{
  preferredPresentationStyle = [(DBUserAlert *)self preferredPresentationStyle];
  v4 = DBLogForCategory(0);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (preferredPresentationStyle != 2)
  {
    if (preferredPresentationStyle == 1)
    {
      if (v5)
      {
        goto LABEL_9;
      }
    }

    else if (v5)
    {
LABEL_9:
      [(DBUserAlert *)v4 _alertViewController:v6];
    }

    v17 = [DBUserAlertModalViewController alloc];
    alert = [(DBUserAlert *)self alert];
    v16 = [(DBUserAlertModalViewController *)v17 initWithAlert:alert];
    goto LABEL_11;
  }

  if (v5)
  {
    [(DBUserAlert *)v4 _alertViewController:v6];
  }

  v13 = [DBUserAlertSheetViewController alloc];
  alert = [(DBUserAlert *)self alert];
  environmentConfiguration = [(DBUserAlert *)self environmentConfiguration];
  v16 = [(DBUserAlertSheetViewController *)v13 initWithAlert:alert environmentConfiguration:environmentConfiguration];

LABEL_11:

  return v16;
}

- (UIEdgeInsets)safeAreaInsets
{
  top = self->_safeAreaInsets.top;
  left = self->_safeAreaInsets.left;
  bottom = self->_safeAreaInsets.bottom;
  right = self->_safeAreaInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end