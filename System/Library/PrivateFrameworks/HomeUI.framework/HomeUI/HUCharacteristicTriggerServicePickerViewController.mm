@interface HUCharacteristicTriggerServicePickerViewController
+ (BOOL)canPickServicesFromSource:(unint64_t)source home:(id)home;
+ (unint64_t)sourceForTriggerBuilder:(id)builder;
- (HUCharacteristicTriggerServicePickerContentViewController)servicePickerContentViewController;
- (HUCharacteristicTriggerServicePickerViewController)initWithEventBuilderItem:(id)item triggerBuilder:(id)builder mode:(unint64_t)mode source:(unint64_t)source delegate:(id)delegate;
- (HUCharacteristicTriggerServicePickerViewController)initWithInstructionsItem:(id)item contentViewController:(id)controller;
- (HUTriggerEditorDelegate)delegate;
- (id)characteristicTriggerBuilder;
- (id)filter;
- (unint64_t)mode;
- (unint64_t)source;
- (void)setDelegate:(id)delegate;
- (void)setFilter:(id)filter;
- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated;
- (void)viewDidLoad;
@end

@implementation HUCharacteristicTriggerServicePickerViewController

+ (BOOL)canPickServicesFromSource:(unint64_t)source home:(id)home
{
  homeCopy = home;
  if (source == 1)
  {
    v9 = [HUCharacteristicEventOptionProvider hasOptionsForAnyServiceInHome:homeCopy allowingSensors:0];
  }

  else if (source)
  {
    v9 = 0;
  }

  else
  {
    hf_sensingCharacteristicTypes = [MEMORY[0x277CD1970] hf_sensingCharacteristicTypes];
    accessories = [homeCopy accessories];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __85__HUCharacteristicTriggerServicePickerViewController_canPickServicesFromSource_home___block_invoke;
    v11[3] = &unk_277DB8EC0;
    v12 = hf_sensingCharacteristicTypes;
    v8 = hf_sensingCharacteristicTypes;
    v9 = [accessories na_any:v11];
  }

  return v9;
}

uint64_t __85__HUCharacteristicTriggerServicePickerViewController_canPickServicesFromSource_home___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 services];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __85__HUCharacteristicTriggerServicePickerViewController_canPickServicesFromSource_home___block_invoke_2;
  v6[3] = &unk_277DB9560;
  v7 = *(a1 + 32);
  v4 = [v3 na_any:v6];

  return v4;
}

uint64_t __85__HUCharacteristicTriggerServicePickerViewController_canPickServicesFromSource_home___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 characteristics];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __85__HUCharacteristicTriggerServicePickerViewController_canPickServicesFromSource_home___block_invoke_3;
  v6[3] = &unk_277DB9538;
  v7 = *(a1 + 32);
  v4 = [v3 na_any:v6];

  return v4;
}

uint64_t __85__HUCharacteristicTriggerServicePickerViewController_canPickServicesFromSource_home___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 characteristicType];
  if ([v4 containsObject:v5])
  {
    v6 = [v3 properties];
    v7 = [v6 containsObject:*MEMORY[0x277CCF738]];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (unint64_t)sourceForTriggerBuilder:(id)builder
{
  v3 = MEMORY[0x277CD1970];
  builderCopy = builder;
  hf_sensingCharacteristicTypes = [v3 hf_sensingCharacteristicTypes];
  characteristics = [builderCopy characteristics];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __78__HUCharacteristicTriggerServicePickerViewController_sourceForTriggerBuilder___block_invoke;
  v9[3] = &unk_277DB9538;
  v10 = hf_sensingCharacteristicTypes;
  v7 = hf_sensingCharacteristicTypes;
  LODWORD(builderCopy) = [characteristics na_any:v9];

  return builderCopy ^ 1;
}

uint64_t __78__HUCharacteristicTriggerServicePickerViewController_sourceForTriggerBuilder___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 characteristicType];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (HUCharacteristicTriggerServicePickerViewController)initWithInstructionsItem:(id)item contentViewController:(id)controller
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithEventBuilderItem_triggerBuilder_mode_source_delegate_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUCharacteristicTriggerServicePickerViewController.m" lineNumber:70 description:{@"%s is unavailable; use %@ instead", "-[HUCharacteristicTriggerServicePickerViewController initWithInstructionsItem:contentViewController:]", v7}];

  return 0;
}

- (HUCharacteristicTriggerServicePickerViewController)initWithEventBuilderItem:(id)item triggerBuilder:(id)builder mode:(unint64_t)mode source:(unint64_t)source delegate:(id)delegate
{
  builderCopy = builder;
  delegateCopy = delegate;
  itemCopy = item;
  v16 = [HUCharacteristicTriggerServicePickerContentViewController alloc];
  navigationItem = [(HUCharacteristicTriggerServicePickerViewController *)self navigationItem];
  v18 = [(HUCharacteristicTriggerServicePickerContentViewController *)v16 initWithTriggerBuilder:builderCopy eventBuilderItem:itemCopy mode:mode source:source effectiveNavigationItem:navigationItem delegate:delegateCopy];

  [(HUServiceGridViewController *)v18 setContentMargins:1];
  v22.receiver = self;
  v22.super_class = HUCharacteristicTriggerServicePickerViewController;
  v19 = [(HUInstructionsTableViewController *)&v22 initWithInstructionsItem:0 contentViewController:v18];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_triggerBuilder, builder);
  }

  return v20;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = HUCharacteristicTriggerServicePickerViewController;
  [(HUInstructionsTableViewController *)&v9 viewDidLoad];
  source = [(HUCharacteristicTriggerServicePickerViewController *)self source];
  if (source)
  {
    if (source != 1)
    {
      v6 = 0;
      v7 = 0;
      goto LABEL_7;
    }

    v4 = @"HUCharacteristicTriggerServicePickerInstructionsDescriptionAccessory";
    v5 = @"HUCharacteristicTriggerServicePickerTitleAccessory";
  }

  else
  {
    v4 = @"HUCharacteristicTriggerServicePickerInstructionsDescriptionAlarm";
    v5 = @"HUCharacteristicTriggerServicePickerTitleAlarm";
  }

  v6 = _HULocalizedStringWithDefaultValue(v5, v5, 1);
  v7 = _HULocalizedStringWithDefaultValue(v4, v4, 1);
LABEL_7:
  [(HUCharacteristicTriggerServicePickerViewController *)self setTitle:v6];
  navigationItem = [(HUCharacteristicTriggerServicePickerViewController *)self navigationItem];
  [navigationItem setPrompt:v7];
}

- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  cellCopy = cell;
  v14.receiver = self;
  v14.super_class = HUCharacteristicTriggerServicePickerViewController;
  [(HUInstructionsTableViewController *)&v14 updateCell:cellCopy forItem:item indexPath:path animated:animatedCopy];
  objc_opt_class();
  v11 = cellCopy;
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v13)
  {
    [v13 removeMargins];
  }
}

- (HUCharacteristicTriggerServicePickerContentViewController)servicePickerContentViewController
{
  objc_opt_class();
  contentViewController = [(HUInstructionsTableViewController *)self contentViewController];
  if (objc_opt_isKindOfClass())
  {
    v4 = contentViewController;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (id)characteristicTriggerBuilder
{
  servicePickerContentViewController = [(HUCharacteristicTriggerServicePickerViewController *)self servicePickerContentViewController];
  triggerBuilder = [servicePickerContentViewController triggerBuilder];

  return triggerBuilder;
}

- (unint64_t)mode
{
  servicePickerContentViewController = [(HUCharacteristicTriggerServicePickerViewController *)self servicePickerContentViewController];
  mode = [servicePickerContentViewController mode];

  return mode;
}

- (unint64_t)source
{
  servicePickerContentViewController = [(HUCharacteristicTriggerServicePickerViewController *)self servicePickerContentViewController];
  source = [servicePickerContentViewController source];

  return source;
}

- (HUTriggerEditorDelegate)delegate
{
  servicePickerContentViewController = [(HUCharacteristicTriggerServicePickerViewController *)self servicePickerContentViewController];
  delegate = [servicePickerContentViewController delegate];

  return delegate;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  servicePickerContentViewController = [(HUCharacteristicTriggerServicePickerViewController *)self servicePickerContentViewController];
  [servicePickerContentViewController setDelegate:delegateCopy];
}

- (id)filter
{
  servicePickerContentViewController = [(HUCharacteristicTriggerServicePickerViewController *)self servicePickerContentViewController];
  filter = [servicePickerContentViewController filter];

  return filter;
}

- (void)setFilter:(id)filter
{
  filterCopy = filter;
  servicePickerContentViewController = [(HUCharacteristicTriggerServicePickerViewController *)self servicePickerContentViewController];
  [servicePickerContentViewController setFilter:filterCopy];
}

@end