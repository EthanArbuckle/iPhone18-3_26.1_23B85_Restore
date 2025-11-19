@interface HUShortcutsTriggerViewUtilities
+ (id)accessoryPickerViewControllerInHome:(id)a3 withConfiguration:(id)a4;
+ (id)getServicesOnAccessoryPicker:(id)a3;
+ (id)triggerActionPickerViewControllerWithTriggerBuilder:(id)a3 flow:(id)a4 delegate:(id)a5;
+ (void)setServices:(id)a3 onAccessoryPicker:(id)a4;
@end

@implementation HUShortcutsTriggerViewUtilities

+ (id)accessoryPickerViewControllerInHome:(id)a3 withConfiguration:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[HUShortcutsAccessoryPickerViewController alloc] initWithHome:v6 configuration:v5];

  [(HUShortcutsAccessoryPickerViewController *)v7 configureWithDefaultSelectionController];

  return v7;
}

+ (id)getServicesOnAccessoryPicker:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 getServices];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [MEMORY[0x277CBEB98] set];
  }

  v10 = v9;

  return v10;
}

+ (void)setServices:(id)a3 onAccessoryPicker:(id)a4
{
  v5 = a4;
  v6 = a3;
  objc_opt_class();
  v9 = v5;
  if (objc_opt_isKindOfClass())
  {
    v7 = v9;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  [v8 setServices:v6];
}

+ (id)triggerActionPickerViewControllerWithTriggerBuilder:(id)a3 flow:(id)a4 delegate:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[HUTriggerActionPickerViewController alloc] initWithTriggerBuilder:v9 flow:v8 delegate:v7];

  return v10;
}

@end