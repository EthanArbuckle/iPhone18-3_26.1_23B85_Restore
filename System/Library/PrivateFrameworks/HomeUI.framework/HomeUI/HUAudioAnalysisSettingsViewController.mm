@interface HUAudioAnalysisSettingsViewController
- (HUAudioAnalysisSettingsViewController)initWithAccessoryGroupItem:(id)item;
- (HUAudioAnalysisSettingsViewController)initWithAccessorySettingItem:(id)item;
- (HUAudioAnalysisSettingsViewController)initWithAccessorySettingItem:(id)item module:(id)module;
- (HUAudioAnalysisSettingsViewController)initWithHome:(id)home;
- (id)buildItemModuleControllerForModule:(id)module;
@end

@implementation HUAudioAnalysisSettingsViewController

- (HUAudioAnalysisSettingsViewController)initWithAccessoryGroupItem:(id)item
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithAccessoryGroupItem_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUAudioAnalysisSettingsViewController.m" lineNumber:30 description:{@"%s is unavailable; use %@ instead", "-[HUAudioAnalysisSettingsViewController initWithAccessoryGroupItem:]", v6}];

  return 0;
}

- (HUAudioAnalysisSettingsViewController)initWithAccessorySettingItem:(id)item
{
  homeKitSettingsVendor = [item homeKitSettingsVendor];
  hf_home = [homeKitSettingsVendor hf_home];
  v6 = [(HUAudioAnalysisSettingsViewController *)self initWithHome:hf_home];

  return v6;
}

- (HUAudioAnalysisSettingsViewController)initWithHome:(id)home
{
  homeCopy = home;
  if (!homeCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUAudioAnalysisSettingsViewController.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"home != nil"}];
  }

  v6 = [objc_alloc(MEMORY[0x277D14B08]) initWithDelegate:self];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __54__HUAudioAnalysisSettingsViewController_initWithHome___block_invoke;
  v13[3] = &unk_277DB7478;
  v7 = homeCopy;
  v14 = v7;
  [v6 setHomeCreator:v13];
  [v6 setItemModuleCreator:&__block_literal_global_186];
  v12.receiver = self;
  v12.super_class = HUAudioAnalysisSettingsViewController;
  v8 = [(HUItemTableViewController *)&v12 initWithItemManager:v6 tableViewStyle:1];
  if (v8)
  {
    v9 = _HULocalizedStringWithDefaultValue(@"HUListenSettings_Title", @"HUListenSettings_Title", 1);
    [(HUAudioAnalysisSettingsViewController *)v8 setTitle:v9];
  }

  return v8;
}

id __54__HUAudioAnalysisSettingsViewController_initWithHome___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CBEB18];
  v5 = a3;
  v6 = a2;
  v7 = [v4 arrayWithCapacity:1];
  v8 = [[HUAudioAnalysisSettingsItemModule alloc] initWithItemUpdater:v5 home:v6];

  [v7 addObject:v8];

  return v7;
}

- (HUAudioAnalysisSettingsViewController)initWithAccessorySettingItem:(id)item module:(id)module
{
  home = [module home];
  v6 = [(HUAudioAnalysisSettingsViewController *)self initWithHome:home];

  return v6;
}

- (id)buildItemModuleControllerForModule:(id)module
{
  moduleCopy = module;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    NSLog(&cfstr_UnexpectedModu.isa, moduleCopy);
  }

  v5 = [(HUItemModuleController *)[HUAudioAnalysisSettingsItemModuleController alloc] initWithModule:moduleCopy];
  [(HUAudioAnalysisSettingsViewController *)self setModuleController:v5];

  moduleController = [(HUAudioAnalysisSettingsViewController *)self moduleController];

  return moduleController;
}

@end