@interface CRSUIClusterWindow
- (id)_clusterSettings;
- (unint64_t)compassSetting;
- (unint64_t)etaSetting;
- (unint64_t)itemType;
- (unint64_t)layoutJustification;
- (unint64_t)speedLimitSetting;
- (void)addClusterSettingsObserver:(id)a3;
- (void)commonInit;
- (void)handleZoomInDirection:(int64_t)a3;
- (void)removeClusterSettingsObserver:(id)a3;
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

  v5 = [(CRSUIClusterWindow *)self windowScene];
  v6 = [[CRSUIClusterZoomBSActionsHandler alloc] initWithDelegate:self];
  v31[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
  [v5 _registerSceneActionsHandlerArray:v7 forKey:@"zoomActions"];

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
  v15 = [(CRSUIClusterWindow *)self windowScene];
  v30 = self;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
  [v15 _registerSettingsDiffActionArray:v16 forKey:@"clusterSettings"];

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

- (void)addClusterSettingsObserver:(id)a3
{
  v4 = a3;
  v5 = [(CRSUIClusterWindow *)self observers];
  [v5 addObserver:v4];
}

- (void)removeClusterSettingsObserver:(id)a3
{
  v4 = a3;
  v5 = [(CRSUIClusterWindow *)self observers];
  [v5 removeObserver:v4];
}

- (unint64_t)etaSetting
{
  v2 = [(CRSUIClusterWindow *)self _clusterSettings];
  v3 = [v2 showsETA];

  return v3;
}

- (unint64_t)compassSetting
{
  v2 = [(CRSUIClusterWindow *)self _clusterSettings];
  v3 = [v2 showsCompass];

  return v3;
}

- (unint64_t)speedLimitSetting
{
  v2 = [(CRSUIClusterWindow *)self _clusterSettings];
  v3 = [v2 showsSpeedLimit];

  return v3;
}

- (unint64_t)itemType
{
  v2 = [(CRSUIClusterWindow *)self _clusterSettings];
  v3 = [v2 itemType];

  return v3;
}

- (unint64_t)layoutJustification
{
  v2 = [(CRSUIClusterWindow *)self _clusterSettings];
  v3 = [v2 layoutJustification];

  return v3;
}

- (void)handleZoomInDirection:(int64_t)a3
{
  v5 = [(CRSUIClusterWindow *)self observers];
  [v5 clusterWindow:self didZoomInDirection:a3];
}

- (id)_clusterSettings
{
  objc_opt_class();
  v3 = [(CRSUIClusterWindow *)self windowScene];
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

@end