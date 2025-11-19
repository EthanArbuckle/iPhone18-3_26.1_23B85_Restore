@interface DBWidgetSceneHostViewController
- (CGRect)sceneFrame;
- (DBWidgetSceneHostViewControllerDelegate)delegate;
- (UIEdgeInsets)sceneSafeAreaInsets;
- (void)_performSceneUpdateForeground:(BOOL)a3;
- (void)initializeSceneForeground:(BOOL)a3 active:(BOOL)a4;
- (void)processMonitor:(id)a3 didHandleDeathOfBundleIdentifier:(id)a4;
- (void)processMonitor:(id)a3 shouldHandleDeathOfBundleIdentifier:(id)a4 isCrash:(BOOL)a5;
- (void)sceneContentStateDidUpdate:(int64_t)a3;
- (void)setActive:(BOOL)a3;
- (void)setForeground:(BOOL)a3;
- (void)setWidgetStyle:(unint64_t)a3;
- (void)updateSceneFrame:(CGRect)a3 animationSettings:(id)a4 fenceHandle:(id)a5;
@end

@implementation DBWidgetSceneHostViewController

- (DBWidgetSceneHostViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGRect)sceneFrame
{
  v2 = [(DBWidgetSceneHostViewController *)self view];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (UIEdgeInsets)sceneSafeAreaInsets
{
  v2 = *MEMORY[0x277D768C8];
  v3 = *(MEMORY[0x277D768C8] + 8);
  v4 = *(MEMORY[0x277D768C8] + 16);
  v5 = *(MEMORY[0x277D768C8] + 24);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)setForeground:(BOOL)a3
{
  if (self->_foreground != a3)
  {
    self->_foreground = a3;
    [(DBWidgetSceneHostViewController *)self _performSceneUpdateForeground:?];
  }
}

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    v6[5] = v3;
    v6[6] = v4;
    self->_active = a3;
    v5 = 128;
    if (a3)
    {
      v5 = 0;
    }

    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __45__DBWidgetSceneHostViewController_setActive___block_invoke;
    v6[3] = &__block_descriptor_40_e50_v16__0__UIMutableCarPlayApplicationSceneSettings_8l;
    v6[4] = v5;
    [(DBSceneHostViewController *)self updateSceneSettingsWithBlock:v6];
  }
}

- (void)setWidgetStyle:(unint64_t)a3
{
  if (self->_widgetStyle != a3)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_widgetStyle = a3;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __50__DBWidgetSceneHostViewController_setWidgetStyle___block_invoke;
    v5[3] = &__block_descriptor_40_e50_v16__0__UIMutableCarPlayApplicationSceneSettings_8l;
    v5[4] = a3;
    [(DBSceneHostViewController *)self updateSceneSettingsWithBlock:v5];
  }
}

void __50__DBWidgetSceneHostViewController_setWidgetStyle___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v5 = v3;
  if (v5 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = v5;
  }

  else
  {
    v4 = 0;
  }

  [v4 setWidgetStyle:*(a1 + 32)];
}

- (void)initializeSceneForeground:(BOOL)a3 active:(BOOL)a4
{
  self->_foreground = a3;
  self->_active = a4;
  [(DBWidgetSceneHostViewController *)self _performSceneUpdateForeground:?];
}

- (void)updateSceneFrame:(CGRect)a3 animationSettings:(id)a4 fenceHandle:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v30 = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = a5;
  v13 = DBLogForCategory(2uLL);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v31.origin.x = x;
    v31.origin.y = y;
    v31.size.width = width;
    v31.size.height = height;
    v14 = NSStringFromCGRect(v31);
    *buf = 138543874;
    v25 = self;
    v26 = 2112;
    v27 = v14;
    v28 = 2112;
    v29 = v11;
    _os_log_impl(&dword_248146000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Updating frame for widget scene to %@, with animation settings: %@", buf, 0x20u);
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __82__DBWidgetSceneHostViewController_updateSceneFrame_animationSettings_fenceHandle___block_invoke;
  v17[3] = &unk_278F01BC0;
  v20 = x;
  v21 = y;
  v22 = width;
  v23 = height;
  v18 = v12;
  v19 = v11;
  v15 = v11;
  v16 = v12;
  [(DBSceneHostViewController *)self updateSceneSettingsWithTransitionBlock:v17];
}

void __82__DBWidgetSceneHostViewController_updateSceneFrame_animationSettings_fenceHandle___block_invoke(double *a1, void *a2, void *a3)
{
  v5 = a1[6];
  v6 = a1[7];
  v7 = a1[8];
  v8 = a1[9];
  v9 = a3;
  [a2 setFrame:{v5, v6, v7, v8}];
  [v9 setAnimationFence:*(a1 + 4)];
  [v9 setAnimationSettings:*(a1 + 5)];
}

- (void)sceneContentStateDidUpdate:(int64_t)a3
{
  v5 = [(DBWidgetSceneHostViewController *)self delegate];
  [v5 widgetSceneHostViewController:self sceneContentStateDidUpdate:a3];
}

- (void)processMonitor:(id)a3 shouldHandleDeathOfBundleIdentifier:(id)a4 isCrash:(BOOL)a5
{
  v5 = a5;
  v21 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v18.receiver = self;
  v18.super_class = DBWidgetSceneHostViewController;
  [(DBSceneHostViewController *)&v18 processMonitor:a3 shouldHandleDeathOfBundleIdentifier:v8 isCrash:v5];
  v9 = [(DBSceneHostViewController *)self application];
  v10 = [v9 bundleIdentifier];
  if ([v8 isEqualToString:v10])
  {
  }

  else
  {
    v11 = [(DBSceneHostViewController *)self proxyApplication];
    v12 = [v11 bundleIdentifier];
    v13 = [v8 isEqualToString:v12];

    if (!v13)
    {
      goto LABEL_7;
    }
  }

  v14 = DBLogForCategory(2uLL);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    *buf = 138543362;
    v20 = v16;
    _os_log_impl(&dword_248146000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] Dead process is current widget target identifier, pausing persistence.", buf, 0xCu);
  }

  v17 = [(DBWidgetSceneHostViewController *)self delegate];
  [v17 widgetSceneHostViewControllerSceneWillDeactivate:self];

  [(DBSceneHostViewController *)self deactivateScene];
LABEL_7:
}

- (void)processMonitor:(id)a3 didHandleDeathOfBundleIdentifier:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v15.receiver = self;
  v15.super_class = DBWidgetSceneHostViewController;
  [(DBSceneHostViewController *)&v15 processMonitor:a3 didHandleDeathOfBundleIdentifier:v6];
  v7 = [(DBSceneHostViewController *)self application];
  v8 = [v7 bundleIdentifier];
  if ([v6 isEqualToString:v8])
  {
  }

  else
  {
    v9 = [(DBSceneHostViewController *)self proxyApplication];
    v10 = [v9 bundleIdentifier];
    v11 = [v6 isEqualToString:v10];

    if (!v11)
    {
      goto LABEL_7;
    }
  }

  v12 = DBLogForCategory(2uLL);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    *buf = 138543362;
    v17 = v14;
    _os_log_impl(&dword_248146000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Dead process was current widget target identifier, resuming persistence.", buf, 0xCu);
  }

  [(DBWidgetSceneHostViewController *)self _performSceneUpdateForeground:[(DBWidgetSceneHostViewController *)self isForeground]];
LABEL_7:
}

- (void)_performSceneUpdateForeground:(BOOL)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __65__DBWidgetSceneHostViewController__performSceneUpdateForeground___block_invoke;
  v3[3] = &unk_278F01BE8;
  v3[4] = self;
  v4 = a3;
  [(DBSceneHostViewController *)self performSceneUpdateWithBlock:v3 completion:0];
}

uint64_t __65__DBWidgetSceneHostViewController__performSceneUpdateForeground___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) isActive])
  {
    v4 = 0;
  }

  else
  {
    v4 = 128;
  }

  [v3 setDeactivationReasons:v4];
  objc_opt_class();
  v5 = v3;
  if (v5 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  [v6 setWidgetStyle:{objc_msgSend(*(a1 + 32), "widgetStyle")}];
  v7 = [*(a1 + 32) widgetWindowServiceEndpoint];
  [v6 setEndpoint:v7];

  v8 = [*(a1 + 32) proxyApplication];

  if (v8)
  {
    objc_opt_class();
    v9 = v6;
    if (v9 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [*(a1 + 32) application];
    v12 = [v11 bundleIdentifier];
    [v10 setProxiedApplicationBundleIdentifier:v12];
  }

  v13 = *(a1 + 40);

  return v13;
}

@end