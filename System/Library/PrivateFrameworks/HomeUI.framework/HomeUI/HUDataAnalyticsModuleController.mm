@interface HUDataAnalyticsModuleController
- (BOOL)canSelectItem:(id)item;
- (HUDataAnalyticsModuleController)initWithModule:(id)module;
- (HUDataAnalyticsModuleControllerDelegate)dataAnalyticsModuleControllerDelegate;
- (id)module;
- (unint64_t)didSelectItem:(id)item;
- (void)setupCell:(id)cell forItem:(id)item;
@end

@implementation HUDataAnalyticsModuleController

- (HUDataAnalyticsModuleController)initWithModule:(id)module
{
  v4.receiver = self;
  v4.super_class = HUDataAnalyticsModuleController;
  return [(HUItemModuleController *)&v4 initWithModule:module];
}

- (id)module
{
  v4.receiver = self;
  v4.super_class = HUDataAnalyticsModuleController;
  module = [(HUItemModuleController *)&v4 module];

  return module;
}

- (void)setupCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  latestResults = [itemCopy latestResults];
  v7 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  textLabel = [cellCopy textLabel];
  [textLabel setText:v7];

  [cellCopy setAccessoryType:1];
  latestResults2 = [itemCopy latestResults];

  v10 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13EA8]];
  bOOLValue = [v10 BOOLValue];
  if (bOOLValue)
  {
    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  }

  else
  {
    systemGrayColor = 0;
  }

  textLabel2 = [cellCopy textLabel];
  [textLabel2 setTextColor:systemGrayColor];

  if (bOOLValue)
  {
  }
}

- (BOOL)canSelectItem:(id)item
{
  latestResults = [item latestResults];
  v4 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13EA8]];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue ^ 1;
}

- (unint64_t)didSelectItem:(id)item
{
  itemCopy = item;
  dataAnalyticsModuleControllerDelegate = [(HUDataAnalyticsModuleController *)self dataAnalyticsModuleControllerDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    dataAnalyticsModuleControllerDelegate2 = [(HUDataAnalyticsModuleController *)self dataAnalyticsModuleControllerDelegate];
    [dataAnalyticsModuleControllerDelegate2 dataAnalyticsModuleController:self didSelectItem:itemCopy];
  }

  return 0;
}

- (HUDataAnalyticsModuleControllerDelegate)dataAnalyticsModuleControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_dataAnalyticsModuleControllerDelegate);

  return WeakRetained;
}

@end