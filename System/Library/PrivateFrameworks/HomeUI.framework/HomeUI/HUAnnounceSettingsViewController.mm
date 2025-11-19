@interface HUAnnounceSettingsViewController
- (HUAnnounceSettingsViewController)initWithAccessoryGroupItem:(id)a3;
- (HUAnnounceSettingsViewController)initWithAccessorySettingItem:(id)a3;
- (HUAnnounceSettingsViewController)initWithAccessorySettingItem:(id)a3 module:(id)a4;
- (HUAnnounceSettingsViewController)initWithHome:(id)a3;
- (id)buildItemModuleControllerForModule:(id)a3;
@end

@implementation HUAnnounceSettingsViewController

- (HUAnnounceSettingsViewController)initWithAccessoryGroupItem:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithAccessoryGroupItem_);
  [v5 handleFailureInMethod:a2 object:self file:@"HUAnnounceSettingsViewController.m" lineNumber:25 description:{@"%s is unavailable; use %@ instead", "-[HUAnnounceSettingsViewController initWithAccessoryGroupItem:]", v6}];

  return 0;
}

- (HUAnnounceSettingsViewController)initWithAccessorySettingItem:(id)a3
{
  v4 = [a3 homeKitSettingsVendor];
  v5 = [v4 hf_home];
  v6 = [(HUAnnounceSettingsViewController *)self initWithHome:v5];

  return v6;
}

- (HUAnnounceSettingsViewController)initWithHome:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"HUAnnounceSettingsViewController.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"home != nil"}];
  }

  v6 = [objc_alloc(MEMORY[0x277D14B08]) initWithDelegate:self];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __49__HUAnnounceSettingsViewController_initWithHome___block_invoke;
  v13[3] = &unk_277DB7478;
  v7 = v5;
  v14 = v7;
  [v6 setHomeCreator:v13];
  [v6 setItemModuleCreator:&__block_literal_global_255];
  v12.receiver = self;
  v12.super_class = HUAnnounceSettingsViewController;
  v8 = [(HUItemTableViewController *)&v12 initWithItemManager:v6 tableViewStyle:1];
  if (v8)
  {
    v9 = _HULocalizedStringWithDefaultValue(@"HUAnnounceSettings_Title", @"HUAnnounceSettings_Title", 1);
    [(HUAnnounceSettingsViewController *)v8 setTitle:v9];
  }

  return v8;
}

id __49__HUAnnounceSettingsViewController_initWithHome___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CBEB18];
  v5 = a3;
  v6 = a2;
  v7 = [v4 arrayWithCapacity:1];
  v8 = [[HUAnnounceSettingsItemModule alloc] initWithItemUpdater:v5 home:v6 settingsContext:0];

  [v7 addObject:v8];

  return v7;
}

- (HUAnnounceSettingsViewController)initWithAccessorySettingItem:(id)a3 module:(id)a4
{
  v5 = [a4 home];
  v6 = [(HUAnnounceSettingsViewController *)self initWithHome:v5];

  return v6;
}

- (id)buildItemModuleControllerForModule:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    NSLog(&cfstr_UnexpectedModu.isa, v4);
  }

  v5 = [(HUItemModuleController *)[HUAnnounceSettingsItemModuleController alloc] initWithModule:v4];
  [(HUAnnounceSettingsViewController *)self setModuleController:v5];

  v6 = [(HUAnnounceSettingsViewController *)self moduleController];

  return v6;
}

@end