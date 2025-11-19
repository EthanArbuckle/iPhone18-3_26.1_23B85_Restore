@interface HUDataAnalyticsModuleController
- (BOOL)canSelectItem:(id)a3;
- (HUDataAnalyticsModuleController)initWithModule:(id)a3;
- (HUDataAnalyticsModuleControllerDelegate)dataAnalyticsModuleControllerDelegate;
- (id)module;
- (unint64_t)didSelectItem:(id)a3;
- (void)setupCell:(id)a3 forItem:(id)a4;
@end

@implementation HUDataAnalyticsModuleController

- (HUDataAnalyticsModuleController)initWithModule:(id)a3
{
  v4.receiver = self;
  v4.super_class = HUDataAnalyticsModuleController;
  return [(HUItemModuleController *)&v4 initWithModule:a3];
}

- (id)module
{
  v4.receiver = self;
  v4.super_class = HUDataAnalyticsModuleController;
  v2 = [(HUItemModuleController *)&v4 module];

  return v2;
}

- (void)setupCell:(id)a3 forItem:(id)a4
{
  v14 = a3;
  v5 = a4;
  v6 = [v5 latestResults];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  v8 = [v14 textLabel];
  [v8 setText:v7];

  [v14 setAccessoryType:1];
  v9 = [v5 latestResults];

  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277D13EA8]];
  v11 = [v10 BOOLValue];
  if (v11)
  {
    v12 = [MEMORY[0x277D75348] systemGrayColor];
  }

  else
  {
    v12 = 0;
  }

  v13 = [v14 textLabel];
  [v13 setTextColor:v12];

  if (v11)
  {
  }
}

- (BOOL)canSelectItem:(id)a3
{
  v3 = [a3 latestResults];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D13EA8]];
  v5 = [v4 BOOLValue];

  return v5 ^ 1;
}

- (unint64_t)didSelectItem:(id)a3
{
  v4 = a3;
  v5 = [(HUDataAnalyticsModuleController *)self dataAnalyticsModuleControllerDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(HUDataAnalyticsModuleController *)self dataAnalyticsModuleControllerDelegate];
    [v7 dataAnalyticsModuleController:self didSelectItem:v4];
  }

  return 0;
}

- (HUDataAnalyticsModuleControllerDelegate)dataAnalyticsModuleControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_dataAnalyticsModuleControllerDelegate);

  return WeakRetained;
}

@end