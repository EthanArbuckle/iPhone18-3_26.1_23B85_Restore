@interface DBUserAlert
- (DBUserAlert)initWithAlert:(id)a3 scene:(id)a4 preferredPresentationStyle:(int64_t)a5 safeAreaInsets:(UIEdgeInsets)a6 environmentConfiguration:(id)a7;
- (FBScene)scene;
- (UIEdgeInsets)safeAreaInsets;
- (id)_alertViewController;
- (id)presentationViewForRequester:(id)a3;
- (void)_setupAlertScene:(id)a3;
- (void)invalidate;
- (void)relinquishPresentationForRequester:(id)a3;
- (void)setSceneFrame:(CGRect)a3 safeAreaInsets:(UIEdgeInsets)a4;
- (void)setUserInterfaceStyle:(int64_t)a3;
@end

@implementation DBUserAlert

- (DBUserAlert)initWithAlert:(id)a3 scene:(id)a4 preferredPresentationStyle:(int64_t)a5 safeAreaInsets:(UIEdgeInsets)a6 environmentConfiguration:(id)a7
{
  right = a6.right;
  bottom = a6.bottom;
  left = a6.left;
  top = a6.top;
  v16 = a3;
  v17 = a4;
  v18 = a7;
  v22.receiver = self;
  v22.super_class = DBUserAlert;
  v19 = [(DBUserAlert *)&v22 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_alert, a3);
    v20->_preferredPresentationStyle = a5;
    objc_storeStrong(&v20->_environmentConfiguration, a7);
    v20->_safeAreaInsets.top = top;
    v20->_safeAreaInsets.left = left;
    v20->_safeAreaInsets.bottom = bottom;
    v20->_safeAreaInsets.right = right;
    [(DBUserAlert *)v20 _setupAlertScene:v17];
  }

  return v20;
}

- (FBScene)scene
{
  v2 = [(DBUserAlert *)self localSceneController];
  v3 = [v2 scene];

  return v3;
}

- (id)presentationViewForRequester:(id)a3
{
  v4 = a3;
  v5 = [(DBUserAlert *)self localSceneController];
  v6 = [v5 presentationViewWithIdentifier:v4];

  return v6;
}

- (void)relinquishPresentationForRequester:(id)a3
{
  v4 = a3;
  v5 = [(DBUserAlert *)self localSceneController];
  [v5 invalidatePresentationViewForIdentifier:v4];
}

- (void)setSceneFrame:(CGRect)a3 safeAreaInsets:(UIEdgeInsets)a4
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v28 = *MEMORY[0x277D85DE8];
  self->_safeAreaInsets = a4;
  v13 = [(DBUserAlert *)self requiresSafeAreaWindow];
  v14 = v13;
  if (v13)
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

  v18 = [(DBUserAlert *)self localSceneController];
  v19 = [v18 scene];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __44__DBUserAlert_setSceneFrame_safeAreaInsets___block_invoke;
  v23[3] = &__block_descriptor_64_e33_v16__0__FBSMutableSceneSettings_8l;
  *&v23[4] = x;
  *&v23[5] = y;
  *&v23[6] = width;
  *&v23[7] = height;
  [v19 updateSettingsWithBlock:v23];

  v20 = [(DBUserAlert *)self window];
  [v20 setFrame:{x, y, width, height}];

  if (!v14)
  {
    v21 = [(DBUserAlert *)self window];
    v22 = [v21 rootViewController];
    [v22 setAdditionalSafeAreaInsets:{top, left, bottom, right}];
  }
}

- (void)setUserInterfaceStyle:(int64_t)a3
{
  v4 = [(DBUserAlert *)self localSceneController];
  v5 = [v4 scene];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__DBUserAlert_setUserInterfaceStyle___block_invoke;
  v6[3] = &__block_descriptor_40_e43_v16__0__UIMutableApplicationSceneSettings_8l;
  v6[4] = a3;
  [v5 updateSettingsWithBlock:v6];
}

- (void)invalidate
{
  v3 = [(DBUserAlert *)self localSceneController];
  [v3 invalidate];

  [(DBUserAlert *)self setWindow:0];
}

- (void)_setupAlertScene:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DBUserAlert *)self environmentConfiguration];
  [v5 currentSafeViewAreaFrame];
  v7 = v6;
  v9 = v8;

  v10 = *MEMORY[0x277CBF348];
  v11 = *(MEMORY[0x277CBF348] + 8);
  v12 = [(DBUserAlert *)self requiresSafeAreaWindow];
  v13 = v12;
  if (v12)
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
  [v4 configureParameters:v29];
  v21 = [[DBLocalSceneController alloc] initWithScene:v4];
  [(DBUserAlert *)self setLocalSceneController:v21];
  v22 = MEMORY[0x277D75DA8];
  v23 = [(DBLocalSceneController *)v21 clientScene];
  v24 = [v22 _sceneForFBSScene:v23];

  v25 = [[_TtC9DashBoard17DBUserAlertWindow alloc] initWithWindowScene:v24 frame:v10, v11, v7, v9];
  v26 = [(DBUserAlert *)self _alertViewController];
  if (!v13)
  {
    [(DBUserAlert *)self safeAreaInsets];
    [v26 setAdditionalSafeAreaInsets:?];
  }

  [(DBUserAlertWindow *)v25 setRootViewController:v26];
  [(DBUserAlertWindow *)v25 setHidden:0];
  [(DBUserAlert *)self setWindow:v25];
  v27 = DBLogForCategory(0);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v28 = [v4 identity];
    *buf = 138543362;
    v31 = v28;
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
  v3 = [(DBUserAlert *)self preferredPresentationStyle];
  v4 = DBLogForCategory(0);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3 != 2)
  {
    if (v3 == 1)
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
    v14 = [(DBUserAlert *)self alert];
    v16 = [(DBUserAlertModalViewController *)v17 initWithAlert:v14];
    goto LABEL_11;
  }

  if (v5)
  {
    [(DBUserAlert *)v4 _alertViewController:v6];
  }

  v13 = [DBUserAlertSheetViewController alloc];
  v14 = [(DBUserAlert *)self alert];
  v15 = [(DBUserAlert *)self environmentConfiguration];
  v16 = [(DBUserAlertSheetViewController *)v13 initWithAlert:v14 environmentConfiguration:v15];

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