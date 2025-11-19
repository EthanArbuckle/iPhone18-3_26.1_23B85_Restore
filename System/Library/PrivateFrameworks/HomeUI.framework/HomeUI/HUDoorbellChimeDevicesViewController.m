@interface HUDoorbellChimeDevicesViewController
- (HUDoorbellChimeDevicesViewController)init;
- (HUDoorbellChimeDevicesViewController)initWithAccessorySettingItem:(id)a3;
- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5;
- (void)switchCell:(id)a3 didTurnOn:(BOOL)a4;
@end

@implementation HUDoorbellChimeDevicesViewController

- (HUDoorbellChimeDevicesViewController)init
{
  v3 = [(HFItemManager *)[HUDoorbellChimeDevicesItemManager alloc] initWithDelegate:self];
  v7.receiver = self;
  v7.super_class = HUDoorbellChimeDevicesViewController;
  v4 = [(HUItemTableViewController *)&v7 initWithItemManager:v3 tableViewStyle:1];
  if (v4)
  {
    v5 = _HULocalizedStringWithDefaultValue(@"HUDoorbellChimeDevices_Title", @"HUDoorbellChimeDevices_Title", 1);
    [(HUDoorbellChimeDevicesViewController *)v4 setTitle:v5];

    objc_storeStrong(&v4->_doorbellChimeDevicesItemManager, v3);
  }

  return v4;
}

- (HUDoorbellChimeDevicesViewController)initWithAccessorySettingItem:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithAccessorySettingItem_);
  [v5 handleFailureInMethod:a2 object:self file:@"HUDoorbellChimeDevicesViewController.m" lineNumber:46 description:{@"%s is unavailable; use %@ instead", "-[HUDoorbellChimeDevicesViewController initWithAccessorySettingItem:]", v6}];

  return 0;
}

- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5
{
  v6 = a3;
  objc_opt_class();
  v9 = v6;
  if (objc_opt_isKindOfClass())
  {
    v7 = v9;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  [v8 setDelegate:self];
}

- (void)switchCell:(id)a3 didTurnOn:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  objc_opt_class();
  v7 = [v6 item];
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = [v9 sourceItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

LABEL_7:
    v13 = [(HUDoorbellChimeDevicesViewController *)self doorbellChimeDevicesItemManager];
    v14 = [v6 item];
    v15 = [v13 enableDoorbellChime:v4 forItem:v14];

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __61__HUDoorbellChimeDevicesViewController_switchCell_didTurnOn___block_invoke;
    v17[3] = &unk_277DBC098;
    v18 = v6;
    v19 = v4;
    v16 = [v15 addFailureBlock:v17];

    goto LABEL_8;
  }

  v11 = [v9 sourceItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    goto LABEL_7;
  }

LABEL_8:
}

uint64_t __61__HUDoorbellChimeDevicesViewController_switchCell_didTurnOn___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) setOn:(*(result + 40) & 1) == 0 animated:1];
  }

  return result;
}

@end