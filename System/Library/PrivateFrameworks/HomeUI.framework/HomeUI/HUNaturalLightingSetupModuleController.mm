@interface HUNaturalLightingSetupModuleController
- (HUNaturalLightingSetupModuleController)initWithModule:(id)a3;
- (unint64_t)didSelectItem:(id)a3;
- (void)setupCell:(id)a3 forItem:(id)a4;
- (void)updateCell:(id)a3 forItem:(id)a4 animated:(BOOL)a5;
@end

@implementation HUNaturalLightingSetupModuleController

- (HUNaturalLightingSetupModuleController)initWithModule:(id)a3
{
  v4.receiver = self;
  v4.super_class = HUNaturalLightingSetupModuleController;
  return [(HUItemModuleController *)&v4 initWithModule:a3];
}

- (unint64_t)didSelectItem:(id)a3
{
  v4 = a3;
  v5 = [(HUItemModuleController *)self module];
  [v5 toggleSelectedForItem:v4];

  return 0;
}

- (void)setupCell:(id)a3 forItem:(id)a4
{
  v6 = a3;
  v8.receiver = self;
  v8.super_class = HUNaturalLightingSetupModuleController;
  [(HUItemModuleController *)&v8 setupCell:v6 forItem:a4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    [v7 setHideValue:1];
    [v7 setHideIcon:1];
  }
}

- (void)updateCell:(id)a3 forItem:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v20.receiver = self;
  v20.super_class = HUNaturalLightingSetupModuleController;
  [(HUItemModuleController *)&v20 updateCell:v8 forItem:v9 animated:v5];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v8;
    objc_opt_class();
    v11 = [v9 latestResults];
    v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277D13F00]];
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
      v15 = [v14 serviceName];
      [v10 setTitleText:v15];
    }

    v16 = [v9 latestResults];
    v17 = [v16 objectForKeyedSubscript:*MEMORY[0x277D13FE8]];
    v18 = [v17 BOOLValue];

    if (v18)
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