@interface HUCharacteristicEventServicePickerViewController
+ (BOOL)canPickServicesFromSource:(unint64_t)source home:(id)home;
+ (unint64_t)sourceForTriggerBuilder:(id)builder;
- (HUCharacteristicEventServicePickerContentViewController)servicePickerContentViewController;
- (HUCharacteristicEventServicePickerViewController)initWithEventBuilderItem:(id)item triggerBuilder:(id)builder source:(unint64_t)source flow:(id)flow stepIdentifier:(id)identifier;
- (HUCharacteristicEventServicePickerViewController)initWithFlow:(id)flow stepIdentifier:(id)identifier;
- (HUCharacteristicEventServicePickerViewController)initWithInstructionsItem:(id)item contentViewController:(id)controller;
- (id)characteristicTriggerBuilder;
- (id)filter;
- (unint64_t)source;
- (void)_next:(id)_next;
- (void)characteristicEventServicePickerContentViewController:(id)controller didChangeNumberOfSelectedItems:(unint64_t)items;
- (void)setFilter:(id)filter;
- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated;
- (void)viewDidLoad;
@end

@implementation HUCharacteristicEventServicePickerViewController

+ (BOOL)canPickServicesFromSource:(unint64_t)source home:(id)home
{
  homeCopy = home;
  if (source == 1)
  {
    v9 = [HUCharacteristicEventOptionProvider hasOptionsForAnyServiceInHome:homeCopy];
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
    v11[2] = __83__HUCharacteristicEventServicePickerViewController_canPickServicesFromSource_home___block_invoke;
    v11[3] = &unk_277DB8EC0;
    v12 = hf_sensingCharacteristicTypes;
    v8 = hf_sensingCharacteristicTypes;
    v9 = [accessories na_any:v11];
  }

  return v9;
}

uint64_t __83__HUCharacteristicEventServicePickerViewController_canPickServicesFromSource_home___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 services];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __83__HUCharacteristicEventServicePickerViewController_canPickServicesFromSource_home___block_invoke_2;
  v6[3] = &unk_277DB9560;
  v7 = *(a1 + 32);
  v4 = [v3 na_any:v6];

  return v4;
}

uint64_t __83__HUCharacteristicEventServicePickerViewController_canPickServicesFromSource_home___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 characteristics];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __83__HUCharacteristicEventServicePickerViewController_canPickServicesFromSource_home___block_invoke_3;
  v6[3] = &unk_277DB9538;
  v7 = *(a1 + 32);
  v4 = [v3 na_any:v6];

  return v4;
}

uint64_t __83__HUCharacteristicEventServicePickerViewController_canPickServicesFromSource_home___block_invoke_3(uint64_t a1, void *a2)
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
  v9[2] = __76__HUCharacteristicEventServicePickerViewController_sourceForTriggerBuilder___block_invoke;
  v9[3] = &unk_277DB9538;
  v10 = hf_sensingCharacteristicTypes;
  v7 = hf_sensingCharacteristicTypes;
  LODWORD(builderCopy) = [characteristics na_any:v9];

  return builderCopy ^ 1;
}

uint64_t __76__HUCharacteristicEventServicePickerViewController_sourceForTriggerBuilder___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 characteristicType];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (HUCharacteristicEventServicePickerViewController)initWithInstructionsItem:(id)item contentViewController:(id)controller
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithEventBuilderItem_triggerBuilder_source_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUCharacteristicEventServicePickerViewController.m" lineNumber:74 description:{@"%s is unavailable; use %@ instead", "-[HUCharacteristicEventServicePickerViewController initWithInstructionsItem:contentViewController:]", v7}];

  return 0;
}

- (HUCharacteristicEventServicePickerViewController)initWithEventBuilderItem:(id)item triggerBuilder:(id)builder source:(unint64_t)source flow:(id)flow stepIdentifier:(id)identifier
{
  itemCopy = item;
  builderCopy = builder;
  flowCopy = flow;
  identifierCopy = identifier;
  v16 = objc_alloc(objc_opt_class());
  if (flowCopy && identifierCopy)
  {
    v17 = [v16 initWithFlow:flowCopy stepIdentifier:identifierCopy];
  }

  else
  {
    v17 = [v16 initWithTriggerBuilder:builderCopy eventBuilderItem:itemCopy source:source];
  }

  v18 = v17;
  [v17 setContentMargins:1];
  [v18 setServicePickerDelegate:self];
  v22.receiver = self;
  v22.super_class = HUCharacteristicEventServicePickerViewController;
  v19 = [(HUInstructionsTableViewController *)&v22 initWithInstructionsItem:0 contentViewController:v18];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_triggerBuilder, builder);
    [(HUCharacteristicEventServicePickerViewController *)v20 setFlow:flowCopy];
    [(HUCharacteristicEventServicePickerViewController *)v20 setStepIdentifier:identifierCopy];
  }

  return v20;
}

- (HUCharacteristicEventServicePickerViewController)initWithFlow:(id)flow stepIdentifier:(id)identifier
{
  identifierCopy = identifier;
  flowCopy = flow;
  v8 = [flowCopy viewController:self servicePickerSourceForStep:identifierCopy];
  eventBuilderItem = [flowCopy eventBuilderItem];
  triggerBuilder = [flowCopy triggerBuilder];
  v11 = [(HUCharacteristicEventServicePickerViewController *)self initWithEventBuilderItem:eventBuilderItem triggerBuilder:triggerBuilder source:v8 flow:flowCopy stepIdentifier:identifierCopy];

  return v11;
}

- (void)viewDidLoad
{
  v16.receiver = self;
  v16.super_class = HUCharacteristicEventServicePickerViewController;
  [(HUInstructionsTableViewController *)&v16 viewDidLoad];
  source = [(HUCharacteristicEventServicePickerViewController *)self source];
  if (!source)
  {
    v4 = @"HUCharacteristicTriggerServicePickerInstructionsDescriptionAlarm";
    v5 = @"HUCharacteristicTriggerServicePickerTitleAlarm";
    goto LABEL_5;
  }

  if (source == 1)
  {
    v4 = @"HUCharacteristicTriggerServicePickerInstructionsDescriptionAccessory";
    v5 = @"HUCharacteristicTriggerServicePickerTitleAccessory";
LABEL_5:
    v6 = _HULocalizedStringWithDefaultValue(v5, v5, 1);
    v7 = _HULocalizedStringWithDefaultValue(v4, v4, 1);
    goto LABEL_7;
  }

  v6 = 0;
  v7 = 0;
LABEL_7:
  [(HUCharacteristicEventServicePickerViewController *)self setTitle:v6];
  navigationItem = [(HUCharacteristicEventServicePickerViewController *)self navigationItem];
  [navigationItem setPrompt:v7];

  flow = [(HUCharacteristicEventServicePickerViewController *)self flow];
  stepIdentifier = [(HUCharacteristicEventServicePickerViewController *)self stepIdentifier];
  v11 = [flow shouldShowNextButtonForStep:stepIdentifier];

  if (v11)
  {
    v12 = objc_alloc(MEMORY[0x277D751E0]);
    v13 = _HULocalizedStringWithDefaultValue(@"HUCharacteristicTriggerServicePickerNextButton", @"HUCharacteristicTriggerServicePickerNextButton", 1);
    v14 = [v12 initWithTitle:v13 style:2 target:self action:sel__next_];
    navigationItem2 = [(HUCharacteristicEventServicePickerViewController *)self navigationItem];
    [navigationItem2 setRightBarButtonItem:v14];
  }
}

- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  cellCopy = cell;
  v14.receiver = self;
  v14.super_class = HUCharacteristicEventServicePickerViewController;
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

- (void)_next:(id)_next
{
  flow = [(HUCharacteristicEventServicePickerViewController *)self flow];
  stepIdentifier = [(HUCharacteristicEventServicePickerViewController *)self stepIdentifier];
  [flow viewController:self didFinishStepWithIdentifier:stepIdentifier];
}

- (void)characteristicEventServicePickerContentViewController:(id)controller didChangeNumberOfSelectedItems:(unint64_t)items
{
  v4 = items != 0;
  navigationItem = [(HUCharacteristicEventServicePickerViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:v4];
}

- (HUCharacteristicEventServicePickerContentViewController)servicePickerContentViewController
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
  servicePickerContentViewController = [(HUCharacteristicEventServicePickerViewController *)self servicePickerContentViewController];
  triggerBuilder = [servicePickerContentViewController triggerBuilder];

  return triggerBuilder;
}

- (unint64_t)source
{
  servicePickerContentViewController = [(HUCharacteristicEventServicePickerViewController *)self servicePickerContentViewController];
  source = [servicePickerContentViewController source];

  return source;
}

- (id)filter
{
  servicePickerContentViewController = [(HUCharacteristicEventServicePickerViewController *)self servicePickerContentViewController];
  filter = [servicePickerContentViewController filter];

  return filter;
}

- (void)setFilter:(id)filter
{
  filterCopy = filter;
  servicePickerContentViewController = [(HUCharacteristicEventServicePickerViewController *)self servicePickerContentViewController];
  [servicePickerContentViewController setFilter:filterCopy];
}

@end