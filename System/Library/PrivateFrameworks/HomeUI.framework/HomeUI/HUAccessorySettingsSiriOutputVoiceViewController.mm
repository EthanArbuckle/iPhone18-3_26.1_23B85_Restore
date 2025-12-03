@interface HUAccessorySettingsSiriOutputVoiceViewController
- (HUAccessorySettingsSiriOutputVoiceViewController)initWithAccessoryGroupItem:(id)item;
- (HUAccessorySettingsSiriOutputVoiceViewController)initWithAccessorySettingItem:(id)item module:(id)module;
- (HUAccessorySettingsSiriOutputVoiceViewController)initWithItemManager:(id)manager tableViewStyle:(int64_t)style;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated;
@end

@implementation HUAccessorySettingsSiriOutputVoiceViewController

- (HUAccessorySettingsSiriOutputVoiceViewController)initWithItemManager:(id)manager tableViewStyle:(int64_t)style
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithAccessoryGroupItem_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUAccessorySettingsSiriOutputVoiceViewController.m" lineNumber:30 description:{@"%s is unavailable; use %@ instead", "-[HUAccessorySettingsSiriOutputVoiceViewController initWithItemManager:tableViewStyle:]", v7}];

  return 0;
}

- (HUAccessorySettingsSiriOutputVoiceViewController)initWithAccessoryGroupItem:(id)item
{
  itemCopy = item;
  mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
  homeManager = [mEMORY[0x277D146E8] homeManager];
  hasOptedToHH2 = [homeManager hasOptedToHH2];

  if (hasOptedToHH2)
  {
    objc_opt_class();
    homeKitSettingsVendor = [itemCopy homeKitSettingsVendor];
    if (objc_opt_isKindOfClass())
    {
      v9 = homeKitSettingsVendor;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    if (v10)
    {
      hf_siriLanguageOptionsManager = [v10 hf_siriLanguageOptionsManager];
    }

    else
    {
      objc_opt_class();
      homeKitSettingsVendor2 = [itemCopy homeKitSettingsVendor];
      if (objc_opt_isKindOfClass())
      {
        v14 = homeKitSettingsVendor2;
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;

      if (v15)
      {
        hf_siriLanguageOptionsManager = [v15 hf_siriLanguageOptionsManager];
      }

      else
      {
        hf_siriLanguageOptionsManager = 0;
      }
    }

    v16 = [HUAccessorySettingsSiriOutputVoiceItemManager alloc];
    if (hf_siriLanguageOptionsManager)
    {
      v17 = [(HUAccessorySettingsSiriOutputVoiceItemManager *)v16 initWithDelegate:self siriLanguageOptionsManager:hf_siriLanguageOptionsManager sourceItem:itemCopy];
    }

    else
    {
      v17 = [(HUAccessorySettingsSiriOutputVoiceItemManager *)v16 initWithDelegate:self groupItem:itemCopy];
    }

    v12 = v17;
  }

  else
  {
    v12 = [[HUAccessorySettingsSiriOutputVoiceItemManager alloc] initWithDelegate:self groupItem:itemCopy];
  }

  v20.receiver = self;
  v20.super_class = HUAccessorySettingsSiriOutputVoiceViewController;
  v18 = [(HUItemTableViewController *)&v20 initWithItemManager:v12 tableViewStyle:1];

  return v18;
}

- (HUAccessorySettingsSiriOutputVoiceViewController)initWithAccessorySettingItem:(id)item module:(id)module
{
  moduleCopy = module;
  itemCopy = item;
  objc_opt_class();
  accessorySettingsManager = [moduleCopy accessorySettingsManager];

  if (objc_opt_isKindOfClass())
  {
    v9 = accessorySettingsManager;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [[HUAccessorySettingsSiriOutputVoiceItemManager alloc] initWithDelegate:self siriLanguageOptionsManager:v10 sourceItem:itemCopy];
  v14.receiver = self;
  v14.super_class = HUAccessorySettingsSiriOutputVoiceViewController;
  v12 = [(HUItemTableViewController *)&v14 initWithItemManager:v11 tableViewStyle:1];

  return v12;
}

- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  v17.receiver = self;
  v17.super_class = HUAccessorySettingsSiriOutputVoiceViewController;
  itemCopy = item;
  cellCopy = cell;
  [(HUItemTableViewController *)&v17 updateCell:cellCopy forItem:itemCopy indexPath:path animated:animatedCopy];
  cellConfiguration = [MEMORY[0x277D756E0] cellConfiguration];
  latestResults = [itemCopy latestResults];
  v13 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  [cellConfiguration setText:v13];

  [cellCopy setContentConfiguration:cellConfiguration];
  latestResults2 = [itemCopy latestResults];

  v15 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13FE8]];
  if ([v15 BOOLValue])
  {
    v16 = 3;
  }

  else
  {
    v16 = 0;
  }

  [cellCopy setAccessoryType:v16];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v13.receiver = self;
  v13.super_class = HUAccessorySettingsSiriOutputVoiceViewController;
  pathCopy = path;
  viewCopy = view;
  [(HUItemTableViewController *)&v13 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  v8 = [(HUItemTableViewController *)self itemManager:v13.receiver];
  v9 = [v8 displayedItemAtIndexPath:pathCopy];

  itemManager = [(HUItemTableViewController *)self itemManager];
  v11 = [itemManager updateSelectionWithOptionItem:v9];
  v12 = [v11 addFailureBlock:&__block_literal_global_114];

  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
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