@interface CRSUIClusterWindow
- (id)_clusterSettings;
- (unint64_t)compassSetting;
- (unint64_t)etaSetting;
- (unint64_t)itemType;
- (unint64_t)layoutJustification;
- (unint64_t)speedLimitSetting;
- (void)addClusterSettingsObserver:(id)observer;
- (void)commonInit;
- (void)handleZoomInDirection:(int64_t)direction;
- (void)removeClusterSettingsObserver:(id)observer;
@end

@implementation CRSUIClusterWindow

- (void)commonInit
{
  v31[1] = *MEMORY[0x277D85DE8];
  v29.receiver = self;
  v29.super_class = CRSUIClusterWindow;
  [(CRSUIWindow *)&v29 commonInit];
  v3 = [objc_alloc(MEMORY[0x277CF89C0]) initWithProtocol:&unk_285609190];
  observers = self->_observers;
  self->_observers = v3;

  windowScene = [(CRSUIClusterWindow *)self windowScene];
  v6 = [[CRSUIClusterZoomBSActionsHandler alloc] initWithDelegate:self];
  v31[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
  [windowScene _registerSceneActionsHandlerArray:v7 forKey:@"zoomActions"];

  v8 = objc_alloc_init(CRSUIInstrumentClusterSettingsDiffInspector);
  clusterSettingsDiffInspector = self->_clusterSettingsDiffInspector;
  self->_clusterSettingsDiffInspector = v8;

  objc_initWeak(&location, self);
  v10 = self->_clusterSettingsDiffInspector;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __32__CRSUIClusterWindow_commonInit__block_invoke;
  v26[3] = &unk_278DA12D0;
  objc_copyWeak(&v27, &location);
  [(CRSUIInstrumentClusterSettingsDiffInspector *)v10 observeShowETAWithBlock:v26];
  v11 = self->_clusterSettingsDiffInspector;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __32__CRSUIClusterWindow_commonInit__block_invoke_2;
  v24[3] = &unk_278DA12D0;
  objc_copyWeak(&v25, &location);
  [(CRSUIInstrumentClusterSettingsDiffInspector *)v11 observeShowCompassWithBlock:v24];
  v12 = self->_clusterSettingsDiffInspector;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __32__CRSUIClusterWindow_commonInit__block_invoke_3;
  v22[3] = &unk_278DA12D0;
  objc_copyWeak(&v23, &location);
  [(CRSUIInstrumentClusterSettingsDiffInspector *)v12 observeShowSpeedLimitWithBlock:v22];
  v13 = self->_clusterSettingsDiffInspector;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __32__CRSUIClusterWindow_commonInit__block_invoke_4;
  v20[3] = &unk_278DA12D0;
  objc_copyWeak(&v21, &location);
  [(CRSUIInstrumentClusterSettingsDiffInspector *)v13 observeItemTypeWithBlock:v20];
  v14 = self->_clusterSettingsDiffInspector;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __32__CRSUIClusterWindow_commonInit__block_invoke_5;
  v18[3] = &unk_278DA12D0;
  objc_copyWeak(&v19, &location);
  [(CRSUIInstrumentClusterSettingsDiffInspector *)v14 observeLayoutSpecificationWithBlock:v18];
  windowScene2 = [(CRSUIClusterWindow *)self windowScene];
  selfCopy = self;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&selfCopy count:1];
  [windowScene2 _registerSettingsDiffActionArray:v16 forKey:@"clusterSettings"];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&v23);
  objc_destroyWeak(&v25);
  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
  v17 = *MEMORY[0x277D85DE8];
}

void __32__CRSUIClusterWindow_commonInit__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained observers];
  [v1 clusterWindow:WeakRetained didChangeETASetting:{objc_msgSend(WeakRetained, "etaSetting")}];
}

void __32__CRSUIClusterWindow_commonInit__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained observers];
  [v1 clusterWindow:WeakRetained didChangeCompassSetting:{objc_msgSend(WeakRetained, "compassSetting")}];
}

void __32__CRSUIClusterWindow_commonInit__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained observers];
  [v1 clusterWindow:WeakRetained didChangeSpeedLimitSetting:{objc_msgSend(WeakRetained, "speedLimitSetting")}];
}

void __32__CRSUIClusterWindow_commonInit__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained observers];
  [v1 clusterWindow:WeakRetained didChangeItemType:{objc_msgSend(WeakRetained, "itemType")}];
}

void __32__CRSUIClusterWindow_commonInit__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained observers];
  [v1 clusterWindow:WeakRetained didChangeLayoutJustification:{objc_msgSend(WeakRetained, "layoutJustification")}];
}

- (void)addClusterSettingsObserver:(id)observer
{
  observerCopy = observer;
  observers = [(CRSUIClusterWindow *)self observers];
  [observers addObserver:observerCopy];
}

- (void)removeClusterSettingsObserver:(id)observer
{
  observerCopy = observer;
  observers = [(CRSUIClusterWindow *)self observers];
  [observers removeObserver:observerCopy];
}

- (unint64_t)etaSetting
{
  _clusterSettings = [(CRSUIClusterWindow *)self _clusterSettings];
  showsETA = [_clusterSettings showsETA];

  return showsETA;
}

- (unint64_t)compassSetting
{
  _clusterSettings = [(CRSUIClusterWindow *)self _clusterSettings];
  showsCompass = [_clusterSettings showsCompass];

  return showsCompass;
}

- (unint64_t)speedLimitSetting
{
  _clusterSettings = [(CRSUIClusterWindow *)self _clusterSettings];
  showsSpeedLimit = [_clusterSettings showsSpeedLimit];

  return showsSpeedLimit;
}

- (unint64_t)itemType
{
  _clusterSettings = [(CRSUIClusterWindow *)self _clusterSettings];
  itemType = [_clusterSettings itemType];

  return itemType;
}

- (unint64_t)layoutJustification
{
  _clusterSettings = [(CRSUIClusterWindow *)self _clusterSettings];
  layoutJustification = [_clusterSettings layoutJustification];

  return layoutJustification;
}

- (void)handleZoomInDirection:(int64_t)direction
{
  observers = [(CRSUIClusterWindow *)self observers];
  [observers clusterWindow:self didZoomInDirection:direction];
}

- (id)_clusterSettings
{
  objc_opt_class();
  windowScene = [(CRSUIClusterWindow *)self windowScene];
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

@end