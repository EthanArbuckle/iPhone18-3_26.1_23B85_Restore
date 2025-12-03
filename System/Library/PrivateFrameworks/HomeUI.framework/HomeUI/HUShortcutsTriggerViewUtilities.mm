@interface HUShortcutsTriggerViewUtilities
+ (id)accessoryPickerViewControllerInHome:(id)home withConfiguration:(id)configuration;
+ (id)getServicesOnAccessoryPicker:(id)picker;
+ (id)triggerActionPickerViewControllerWithTriggerBuilder:(id)builder flow:(id)flow delegate:(id)delegate;
+ (void)setServices:(id)services onAccessoryPicker:(id)picker;
@end

@implementation HUShortcutsTriggerViewUtilities

+ (id)accessoryPickerViewControllerInHome:(id)home withConfiguration:(id)configuration
{
  configurationCopy = configuration;
  homeCopy = home;
  v7 = [[HUShortcutsAccessoryPickerViewController alloc] initWithHome:homeCopy configuration:configurationCopy];

  [(HUShortcutsAccessoryPickerViewController *)v7 configureWithDefaultSelectionController];

  return v7;
}

+ (id)getServicesOnAccessoryPicker:(id)picker
{
  pickerCopy = picker;
  objc_opt_class();
  v4 = pickerCopy;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  getServices = [v6 getServices];
  v8 = getServices;
  if (getServices)
  {
    v9 = getServices;
  }

  else
  {
    v9 = [MEMORY[0x277CBEB98] set];
  }

  v10 = v9;

  return v10;
}

+ (void)setServices:(id)services onAccessoryPicker:(id)picker
{
  pickerCopy = picker;
  servicesCopy = services;
  objc_opt_class();
  v9 = pickerCopy;
  if (objc_opt_isKindOfClass())
  {
    v7 = v9;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  [v8 setServices:servicesCopy];
}

+ (id)triggerActionPickerViewControllerWithTriggerBuilder:(id)builder flow:(id)flow delegate:(id)delegate
{
  delegateCopy = delegate;
  flowCopy = flow;
  builderCopy = builder;
  v10 = [[HUTriggerActionPickerViewController alloc] initWithTriggerBuilder:builderCopy flow:flowCopy delegate:delegateCopy];

  return v10;
}

@end