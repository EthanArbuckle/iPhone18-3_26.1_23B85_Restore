@interface HUUpdateListeningHistorySettingsViewController
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (HUUpdateListeningHistorySettingsViewController)initWithUserItem:(id)item;
- (id)buildItemModuleControllerForModule:(id)module;
@end

@implementation HUUpdateListeningHistorySettingsViewController

- (HUUpdateListeningHistorySettingsViewController)initWithUserItem:(id)item
{
  itemCopy = item;
  v5 = [objc_alloc(MEMORY[0x277D14B08]) initWithDelegate:self];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __67__HUUpdateListeningHistorySettingsViewController_initWithUserItem___block_invoke;
  v14[3] = &unk_277DB7478;
  v6 = itemCopy;
  v15 = v6;
  [v5 setHomeCreator:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__HUUpdateListeningHistorySettingsViewController_initWithUserItem___block_invoke_2;
  v12[3] = &unk_277DC0718;
  v7 = v6;
  v13 = v7;
  [v5 setItemModuleCreator:v12];
  v11.receiver = self;
  v11.super_class = HUUpdateListeningHistorySettingsViewController;
  v8 = [(HUItemTableViewController *)&v11 initWithItemManager:v5 tableViewStyle:1];
  if (v8)
  {
    v9 = _HULocalizedStringWithDefaultValue(@"HUUpdateListeningHistorySettingTitle", @"HUUpdateListeningHistorySettingTitle", 1);
    [(HUUpdateListeningHistorySettingsViewController *)v8 setTitle:v9];
  }

  return v8;
}

id __67__HUUpdateListeningHistorySettingsViewController_initWithUserItem___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277D2C900];
  v2 = [*(a1 + 32) home];
  v3 = [v1 futureWithResult:v2];

  return v3;
}

id __67__HUUpdateListeningHistorySettingsViewController_initWithUserItem___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277CBEB18];
  v6 = a3;
  v7 = a2;
  v8 = [v5 arrayWithCapacity:1];
  v9 = [HUUpdateListeningHistorySettingsItemModule alloc];
  v10 = [*(a1 + 32) user];
  v11 = [(HUUpdateListeningHistorySettingsItemModule *)v9 initWithItemUpdater:v6 home:v7 user:v10];

  [v8 addObject:v11];

  return v8;
}

- (id)buildItemModuleControllerForModule:(id)module
{
  moduleCopy = module;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    NSLog(&cfstr_UnexpectedModu.isa, moduleCopy);
  }

  v5 = [(HUItemModuleController *)[HUUpdateListeningHistorySettingsItemModuleController alloc] initWithModule:moduleCopy];
  [(HUUpdateListeningHistorySettingsViewController *)self setModuleController:v5];

  moduleController = [(HUUpdateListeningHistorySettingsViewController *)self moduleController];

  return moduleController;
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  v25 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412546;
    selfCopy = self;
    v23 = 2112;
    v24 = lCopy;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@: User tapped URL: %@", &v21, 0x16u);
  }

  absoluteString = [lCopy absoluteString];
  musicPrivacyURL = [MEMORY[0x277D14C80] musicPrivacyURL];
  absoluteString2 = [musicPrivacyURL absoluteString];
  v12 = [absoluteString isEqualToString:absoluteString2];

  if (v12)
  {
    navigationController = [(HUUpdateListeningHistorySettingsViewController *)self navigationController];
    v14 = navigationController;
    if (navigationController)
    {
      selfCopy2 = navigationController;
    }

    else
    {
      selfCopy2 = self;
    }

    v16 = selfCopy2;

    mEMORY[0x277D148E8] = [MEMORY[0x277D37678] presenterForPrivacySplashWithIdentifier:*MEMORY[0x277D376B0]];
    splashController = [mEMORY[0x277D148E8] splashController];
    [splashController setDisplayDeviceType:6];

    [mEMORY[0x277D148E8] setPresentingViewController:v16];
    [mEMORY[0x277D148E8] present];
  }

  else
  {
    mEMORY[0x277D148E8] = [MEMORY[0x277D148E8] sharedInstance];
    v19 = [mEMORY[0x277D148E8] openURL:lCopy];
  }

  return 0;
}

@end