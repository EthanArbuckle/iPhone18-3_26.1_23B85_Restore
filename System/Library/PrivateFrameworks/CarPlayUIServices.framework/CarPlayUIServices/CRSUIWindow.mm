@interface CRSUIWindow
+ (id)_stringForStyle:(int64_t)a3;
- (CRSUIWindow)initWithWindowScene:(id)a3;
- (id)_mapSettings;
- (id)_settings;
- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8;
- (void)_setMapStyle:(int64_t)a3;
- (void)_updateMapStyleTrait;
- (void)commonInit;
@end

@implementation CRSUIWindow

void __25__CRSUIWindow_commonInit__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained _settings];
  [v1 bannerHeight];
  v3 = v2;
  [WeakRetained bannerHeight];
  if (v4 != v3)
  {
    [WeakRetained setBannerHeight:v3];
    v5 = [WeakRetained heightConstraint];
    [v5 setConstant:v3];

    [WeakRetained notificationLayoutGuideDidChange];
  }
}

- (id)_settings
{
  objc_opt_class();
  v3 = [(CRSUIWindow *)self windowScene];
  v4 = [v3 _FBSScene];
  v5 = [v4 settings];
  if (v5 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (CRSUIWindow)initWithWindowScene:(id)a3
{
  v6.receiver = self;
  v6.super_class = CRSUIWindow;
  v3 = [(CRSUIWindow *)&v6 initWithWindowScene:a3];
  v4 = v3;
  if (v3)
  {
    [(CRSUIWindow *)v3 commonInit];
  }

  return v4;
}

- (void)commonInit
{
  v39[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D756D0]);
  notificationLayoutGuide = self->_notificationLayoutGuide;
  self->_notificationLayoutGuide = v3;

  [(CRSUIWindow *)self addLayoutGuide:self->_notificationLayoutGuide];
  v5 = [(UILayoutGuide *)self->_notificationLayoutGuide heightAnchor];
  obj = [v5 constraintEqualToConstant:0.0];

  objc_storeStrong(&self->_heightConstraint, obj);
  v26 = MEMORY[0x277CCAAD0];
  v39[0] = obj;
  v27 = [(CRSUIWindow *)self leftAnchor];
  v6 = [(UILayoutGuide *)self->_notificationLayoutGuide leftAnchor];
  v7 = [v27 constraintEqualToAnchor:v6];
  v39[1] = v7;
  v8 = [(CRSUIWindow *)self bottomAnchor];
  v9 = [(UILayoutGuide *)self->_notificationLayoutGuide bottomAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  v39[2] = v10;
  v11 = [(CRSUIWindow *)self rightAnchor];
  v12 = [(UILayoutGuide *)self->_notificationLayoutGuide rightAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  v39[3] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:4];
  [v26 activateConstraints:v14];

  v15 = objc_alloc_init(CRSUIApplicationSceneSettingsDiffInspector);
  settingsDiffInspector = self->_settingsDiffInspector;
  self->_settingsDiffInspector = v15;

  objc_initWeak(&location, self);
  v17 = self->_settingsDiffInspector;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __25__CRSUIWindow_commonInit__block_invoke;
  v31[3] = &unk_278DA12D0;
  objc_copyWeak(&v32, &location);
  [(CRSUIApplicationSceneSettingsDiffInspector *)v17 observeBannerFrameWithBlock:v31];
  v18 = self->_settingsDiffInspector;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __25__CRSUIWindow_commonInit__block_invoke_2;
  v29[3] = &unk_278DA12D0;
  objc_copyWeak(&v30, &location);
  [(CRSUIApplicationSceneSettingsDiffInspector *)v18 observeMapStyleWithBlock:v29];
  v19 = [(CRSUIWindow *)self windowScene];
  v38 = self;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
  [v19 _registerSettingsDiffActionArray:v20 forKey:@"bannerFrameObserver"];

  v21 = [(CRSUIWindow *)self _mapSettings];
  v22 = [v21 mapStyle];

  v23 = [objc_opt_class() _stringForStyle:v22];
  v24 = CRSUILogForCategory(4uLL);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v35 = self;
    v36 = 2114;
    v37 = v23;
    _os_log_impl(&dword_243218000, v24, OS_LOG_TYPE_DEFAULT, "Initial map style for: %{public}@ is: %{public}@", buf, 0x16u);
  }

  [(CRSUIWindow *)self _setMapStyle:v22];
  objc_destroyWeak(&v30);
  objc_destroyWeak(&v32);
  objc_destroyWeak(&location);

  v25 = *MEMORY[0x277D85DE8];
}

void __25__CRSUIWindow_commonInit__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateMapStyleTrait];
}

- (void)_setMapStyle:(int64_t)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = [objc_opt_class() _stringForStyle:a3];
  v6 = CRSUILogForCategory(4uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543618;
    v15 = self;
    v16 = 2114;
    v17 = v5;
    _os_log_impl(&dword_243218000, v6, OS_LOG_TYPE_DEFAULT, "Updating map style for %{public}@, to style: %{public}@", &v14, 0x16u);
  }

  v7 = [MEMORY[0x277D75C80] crsui_traitCollectionWithMapStyle:a3];
  [(CRSUIWindow *)self _setLocalOverrideTraitCollection:v7];
  v8 = objc_opt_class();
  v9 = [(CRSUIWindow *)self traitCollection];
  v10 = [v8 _stringForStyle:{objc_msgSend(v9, "crsui_mapStyle")}];

  v11 = CRSUILogForCategory(4uLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543618;
    v15 = self;
    v16 = 2114;
    v17 = v10;
    _os_log_impl(&dword_243218000, v11, OS_LOG_TYPE_DEFAULT, "Trait collection for %{public}@, is style: %{public}@", &v14, 0x16u);
  }

  v12 = [MEMORY[0x277CCAB98] defaultCenter];
  [v12 postNotificationName:@"CRSUIWindowMapStyleChangedNotification" object:self];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_updateMapStyleTrait
{
  v3 = [(CRSUIWindow *)self _mapSettings];
  v4 = [v3 mapStyle];

  [(CRSUIWindow *)self _setMapStyle:v4];
}

- (id)_mapSettings
{
  v2 = [(CRSUIWindow *)self windowScene];
  v3 = [v2 _FBSScene];
  v4 = [v3 settings];
  if ([v4 conformsToProtocol:&unk_2855F9398])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8
{
  v9 = a5;
  v10 = [(CRSUIWindow *)self settingsDiffInspector];
  [v10 inspectDiff:v9 withContext:0];
}

+ (id)_stringForStyle:(int64_t)a3
{
  v3 = @"unknown";
  if (a3 == 1)
  {
    v3 = @"light";
  }

  if (a3 == 2)
  {
    return @"dark";
  }

  else
  {
    return v3;
  }
}

@end