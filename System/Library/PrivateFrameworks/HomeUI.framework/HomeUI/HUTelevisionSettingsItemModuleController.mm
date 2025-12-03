@interface HUTelevisionSettingsItemModuleController
- (Class)cellClassForItem:(id)item;
- (unint64_t)didSelectItem:(id)item;
@end

@implementation HUTelevisionSettingsItemModuleController

- (Class)cellClassForItem:(id)item
{
  itemCopy = item;
  module = [(HUItemModuleController *)self module];
  showPowerModeSelectionItem = [module showPowerModeSelectionItem];

  if (showPowerModeSelectionItem == itemCopy)
  {
    v7 = objc_opt_class();
  }

  else
  {
    NSLog(&cfstr_UnknownItem.isa, itemCopy);
    v7 = 0;
  }

  return v7;
}

- (unint64_t)didSelectItem:(id)item
{
  itemCopy = item;
  module = [(HUItemModuleController *)self module];
  showPowerModeSelectionItem = [module showPowerModeSelectionItem];

  if (showPowerModeSelectionItem == itemCopy)
  {
    module2 = [(HUItemModuleController *)self module];
    showPowerModeSelection = [module2 showPowerModeSelection];
  }

  return 0;
}

@end