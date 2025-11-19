@interface HUAccessorySettingsSiriOutputVoiceViewController
- (HUAccessorySettingsSiriOutputVoiceViewController)initWithAccessoryGroupItem:(id)a3;
- (HUAccessorySettingsSiriOutputVoiceViewController)initWithAccessorySettingItem:(id)a3 module:(id)a4;
- (HUAccessorySettingsSiriOutputVoiceViewController)initWithItemManager:(id)a3 tableViewStyle:(int64_t)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6;
@end

@implementation HUAccessorySettingsSiriOutputVoiceViewController

- (HUAccessorySettingsSiriOutputVoiceViewController)initWithItemManager:(id)a3 tableViewStyle:(int64_t)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithAccessoryGroupItem_);
  [v6 handleFailureInMethod:a2 object:self file:@"HUAccessorySettingsSiriOutputVoiceViewController.m" lineNumber:30 description:{@"%s is unavailable; use %@ instead", "-[HUAccessorySettingsSiriOutputVoiceViewController initWithItemManager:tableViewStyle:]", v7}];

  return 0;
}

- (HUAccessorySettingsSiriOutputVoiceViewController)initWithAccessoryGroupItem:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D146E8] sharedDispatcher];
  v6 = [v5 homeManager];
  v7 = [v6 hasOptedToHH2];

  if (v7)
  {
    objc_opt_class();
    v8 = [v4 homeKitSettingsVendor];
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    if (v10)
    {
      v11 = [v10 hf_siriLanguageOptionsManager];
    }

    else
    {
      objc_opt_class();
      v13 = [v4 homeKitSettingsVendor];
      if (objc_opt_isKindOfClass())
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;

      if (v15)
      {
        v11 = [v15 hf_siriLanguageOptionsManager];
      }

      else
      {
        v11 = 0;
      }
    }

    v16 = [HUAccessorySettingsSiriOutputVoiceItemManager alloc];
    if (v11)
    {
      v17 = [(HUAccessorySettingsSiriOutputVoiceItemManager *)v16 initWithDelegate:self siriLanguageOptionsManager:v11 sourceItem:v4];
    }

    else
    {
      v17 = [(HUAccessorySettingsSiriOutputVoiceItemManager *)v16 initWithDelegate:self groupItem:v4];
    }

    v12 = v17;
  }

  else
  {
    v12 = [[HUAccessorySettingsSiriOutputVoiceItemManager alloc] initWithDelegate:self groupItem:v4];
  }

  v20.receiver = self;
  v20.super_class = HUAccessorySettingsSiriOutputVoiceViewController;
  v18 = [(HUItemTableViewController *)&v20 initWithItemManager:v12 tableViewStyle:1];

  return v18;
}

- (HUAccessorySettingsSiriOutputVoiceViewController)initWithAccessorySettingItem:(id)a3 module:(id)a4
{
  v6 = a4;
  v7 = a3;
  objc_opt_class();
  v8 = [v6 accessorySettingsManager];

  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [[HUAccessorySettingsSiriOutputVoiceItemManager alloc] initWithDelegate:self siriLanguageOptionsManager:v10 sourceItem:v7];
  v14.receiver = self;
  v14.super_class = HUAccessorySettingsSiriOutputVoiceViewController;
  v12 = [(HUItemTableViewController *)&v14 initWithItemManager:v11 tableViewStyle:1];

  return v12;
}

- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v17.receiver = self;
  v17.super_class = HUAccessorySettingsSiriOutputVoiceViewController;
  v9 = a4;
  v10 = a3;
  [(HUItemTableViewController *)&v17 updateCell:v10 forItem:v9 indexPath:a5 animated:v6];
  v11 = [MEMORY[0x277D756E0] cellConfiguration];
  v12 = [v9 latestResults];
  v13 = [v12 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  [v11 setText:v13];

  [v10 setContentConfiguration:v11];
  v14 = [v9 latestResults];

  v15 = [v14 objectForKeyedSubscript:*MEMORY[0x277D13FE8]];
  if ([v15 BOOLValue])
  {
    v16 = 3;
  }

  else
  {
    v16 = 0;
  }

  [v10 setAccessoryType:v16];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v13.receiver = self;
  v13.super_class = HUAccessorySettingsSiriOutputVoiceViewController;
  v6 = a4;
  v7 = a3;
  [(HUItemTableViewController *)&v13 tableView:v7 didSelectRowAtIndexPath:v6];
  v8 = [(HUItemTableViewController *)self itemManager:v13.receiver];
  v9 = [v8 displayedItemAtIndexPath:v6];

  v10 = [(HUItemTableViewController *)self itemManager];
  v11 = [v10 updateSelectionWithOptionItem:v9];
  v12 = [v11 addFailureBlock:&__block_literal_global_114];

  [v7 deselectRowAtIndexPath:v6 animated:1];
}

void __86__HUAccessorySettingsSiriOutputVoiceViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 na_isCancelledError];
  v4 = [MEMORY[0x277D14640] sharedHandler];
  v5 = v4;
  if (v3)
  {
    [v4 logError:v2 operationDescription:@"Updating siri voice"];
  }

  else
  {
    [v4 handleError:v2];
  }
}

@end