@interface CRSUIWindow
+ (id)_stringForStyle:(int64_t)style;
- (CRSUIWindow)initWithWindowScene:(id)scene;
- (id)_mapSettings;
- (id)_settings;
- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type;
- (void)_setMapStyle:(int64_t)style;
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
  windowScene = [(CRSUIWindow *)self windowScene];
  _FBSScene = [windowScene _FBSScene];
  settings = [_FBSScene settings];
  if (settings && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v6 = settings;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (CRSUIWindow)initWithWindowScene:(id)scene
{
  v6.receiver = self;
  v6.super_class = CRSUIWindow;
  v3 = [(CRSUIWindow *)&v6 initWithWindowScene:scene];
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
  heightAnchor = [(UILayoutGuide *)self->_notificationLayoutGuide heightAnchor];
  obj = [heightAnchor constraintEqualToConstant:0.0];

  objc_storeStrong(&self->_heightConstraint, obj);
  v26 = MEMORY[0x277CCAAD0];
  v39[0] = obj;
  leftAnchor = [(CRSUIWindow *)self leftAnchor];
  leftAnchor2 = [(UILayoutGuide *)self->_notificationLayoutGuide leftAnchor];
  v7 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v39[1] = v7;
  bottomAnchor = [(CRSUIWindow *)self bottomAnchor];
  bottomAnchor2 = [(UILayoutGuide *)self->_notificationLayoutGuide bottomAnchor];
  v10 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v39[2] = v10;
  rightAnchor = [(CRSUIWindow *)self rightAnchor];
  rightAnchor2 = [(UILayoutGuide *)self->_notificationLayoutGuide rightAnchor];
  v13 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
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
  windowScene = [(CRSUIWindow *)self windowScene];
  selfCopy = self;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&selfCopy count:1];
  [windowScene _registerSettingsDiffActionArray:v20 forKey:@"bannerFrameObserver"];

  _mapSettings = [(CRSUIWindow *)self _mapSettings];
  mapStyle = [_mapSettings mapStyle];

  v23 = [objc_opt_class() _stringForStyle:mapStyle];
  v24 = CRSUILogForCategory(4uLL);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy2 = self;
    v36 = 2114;
    v37 = v23;
    _os_log_impl(&dword_243218000, v24, OS_LOG_TYPE_DEFAULT, "Initial map style for: %{public}@ is: %{public}@", buf, 0x16u);
  }

  [(CRSUIWindow *)self _setMapStyle:mapStyle];
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

- (void)_setMapStyle:(int64_t)style
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = [objc_opt_class() _stringForStyle:style];
  v6 = CRSUILogForCategory(4uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543618;
    selfCopy2 = self;
    v16 = 2114;
    v17 = v5;
    _os_log_impl(&dword_243218000, v6, OS_LOG_TYPE_DEFAULT, "Updating map style for %{public}@, to style: %{public}@", &v14, 0x16u);
  }

  v7 = [MEMORY[0x277D75C80] crsui_traitCollectionWithMapStyle:style];
  [(CRSUIWindow *)self _setLocalOverrideTraitCollection:v7];
  v8 = objc_opt_class();
  traitCollection = [(CRSUIWindow *)self traitCollection];
  v10 = [v8 _stringForStyle:{objc_msgSend(traitCollection, "crsui_mapStyle")}];

  v11 = CRSUILogForCategory(4uLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543618;
    selfCopy2 = self;
    v16 = 2114;
    v17 = v10;
    _os_log_impl(&dword_243218000, v11, OS_LOG_TYPE_DEFAULT, "Trait collection for %{public}@, is style: %{public}@", &v14, 0x16u);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"CRSUIWindowMapStyleChangedNotification" object:self];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_updateMapStyleTrait
{
  _mapSettings = [(CRSUIWindow *)self _mapSettings];
  mapStyle = [_mapSettings mapStyle];

  [(CRSUIWindow *)self _setMapStyle:mapStyle];
}

- (id)_mapSettings
{
  windowScene = [(CRSUIWindow *)self windowScene];
  _FBSScene = [windowScene _FBSScene];
  settings = [_FBSScene settings];
  if ([settings conformsToProtocol:&unk_2855F9398])
  {
    v5 = settings;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type
{
  diffCopy = diff;
  settingsDiffInspector = [(CRSUIWindow *)self settingsDiffInspector];
  [settingsDiffInspector inspectDiff:diffCopy withContext:0];
}

+ (id)_stringForStyle:(int64_t)style
{
  v3 = @"unknown";
  if (style == 1)
  {
    v3 = @"light";
  }

  if (style == 2)
  {
    return @"dark";
  }

  else
  {
    return v3;
  }
}

@end