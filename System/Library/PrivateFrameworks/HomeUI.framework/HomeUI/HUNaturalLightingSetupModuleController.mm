@interface HUNaturalLightingSetupModuleController
- (HUNaturalLightingSetupModuleController)initWithModule:(id)module;
- (unint64_t)didSelectItem:(id)item;
- (void)setupCell:(id)cell forItem:(id)item;
- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated;
@end

@implementation HUNaturalLightingSetupModuleController

- (HUNaturalLightingSetupModuleController)initWithModule:(id)module
{
  v4.receiver = self;
  v4.super_class = HUNaturalLightingSetupModuleController;
  return [(HUItemModuleController *)&v4 initWithModule:module];
}

- (unint64_t)didSelectItem:(id)item
{
  itemCopy = item;
  module = [(HUItemModuleController *)self module];
  [module toggleSelectedForItem:itemCopy];

  return 0;
}

- (void)setupCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  v8.receiver = self;
  v8.super_class = HUNaturalLightingSetupModuleController;
  [(HUItemModuleController *)&v8 setupCell:cellCopy forItem:item];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = cellCopy;
    [v7 setHideValue:1];
    [v7 setHideIcon:1];
  }
}

- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated
{
  animatedCopy = animated;
  cellCopy = cell;
  itemCopy = item;
  v20.receiver = self;
  v20.super_class = HUNaturalLightingSetupModuleController;
  [(HUItemModuleController *)&v20 updateCell:cellCopy forItem:itemCopy animated:animatedCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = cellCopy;
    objc_opt_class();
    latestResults = [itemCopy latestResults];
    v12 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F00]];
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    if (v14)
    {
      serviceName = [v14 serviceName];
      [v10 setTitleText:serviceName];
    }

    latestResults2 = [itemCopy latestResults];
    v17 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13FE8]];
    bOOLValue = [v17 BOOLValue];

    if (bOOLValue)
    {
      v19 = 3;
    }

    else
    {
      v19 = 0;
    }

    [v10 setAccessoryType:v19];
  }
}

@end