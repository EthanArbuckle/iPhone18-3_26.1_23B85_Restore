@interface HUCharacteristicEventServicePickerViewController
+ (BOOL)canPickServicesFromSource:(unint64_t)a3 home:(id)a4;
+ (unint64_t)sourceForTriggerBuilder:(id)a3;
- (HUCharacteristicEventServicePickerContentViewController)servicePickerContentViewController;
- (HUCharacteristicEventServicePickerViewController)initWithEventBuilderItem:(id)a3 triggerBuilder:(id)a4 source:(unint64_t)a5 flow:(id)a6 stepIdentifier:(id)a7;
- (HUCharacteristicEventServicePickerViewController)initWithFlow:(id)a3 stepIdentifier:(id)a4;
- (HUCharacteristicEventServicePickerViewController)initWithInstructionsItem:(id)a3 contentViewController:(id)a4;
- (id)characteristicTriggerBuilder;
- (id)filter;
- (unint64_t)source;
- (void)_next:(id)a3;
- (void)characteristicEventServicePickerContentViewController:(id)a3 didChangeNumberOfSelectedItems:(unint64_t)a4;
- (void)setFilter:(id)a3;
- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6;
- (void)viewDidLoad;
@end

@implementation HUCharacteristicEventServicePickerViewController

+ (BOOL)canPickServicesFromSource:(unint64_t)a3 home:(id)a4
{
  v5 = a4;
  if (a3 == 1)
  {
    v9 = [HUCharacteristicEventOptionProvider hasOptionsForAnyServiceInHome:v5];
  }

  else if (a3)
  {
    v9 = 0;
  }

  else
  {
    v6 = [MEMORY[0x277CD1970] hf_sensingCharacteristicTypes];
    v7 = [v5 accessories];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __83__HUCharacteristicEventServicePickerViewController_canPickServicesFromSource_home___block_invoke;
    v11[3] = &unk_277DB8EC0;
    v12 = v6;
    v8 = v6;
    v9 = [v7 na_any:v11];
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

+ (unint64_t)sourceForTriggerBuilder:(id)a3
{
  v3 = MEMORY[0x277CD1970];
  v4 = a3;
  v5 = [v3 hf_sensingCharacteristicTypes];
  v6 = [v4 characteristics];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__HUCharacteristicEventServicePickerViewController_sourceForTriggerBuilder___block_invoke;
  v9[3] = &unk_277DB9538;
  v10 = v5;
  v7 = v5;
  LODWORD(v4) = [v6 na_any:v9];

  return v4 ^ 1;
}

uint64_t __76__HUCharacteristicEventServicePickerViewController_sourceForTriggerBuilder___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 characteristicType];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (HUCharacteristicEventServicePickerViewController)initWithInstructionsItem:(id)a3 contentViewController:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithEventBuilderItem_triggerBuilder_source_);
  [v6 handleFailureInMethod:a2 object:self file:@"HUCharacteristicEventServicePickerViewController.m" lineNumber:74 description:{@"%s is unavailable; use %@ instead", "-[HUCharacteristicEventServicePickerViewController initWithInstructionsItem:contentViewController:]", v7}];

  return 0;
}

- (HUCharacteristicEventServicePickerViewController)initWithEventBuilderItem:(id)a3 triggerBuilder:(id)a4 source:(unint64_t)a5 flow:(id)a6 stepIdentifier:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = objc_alloc(objc_opt_class());
  if (v14 && v15)
  {
    v17 = [v16 initWithFlow:v14 stepIdentifier:v15];
  }

  else
  {
    v17 = [v16 initWithTriggerBuilder:v13 eventBuilderItem:v12 source:a5];
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
    objc_storeStrong(&v19->_triggerBuilder, a4);
    [(HUCharacteristicEventServicePickerViewController *)v20 setFlow:v14];
    [(HUCharacteristicEventServicePickerViewController *)v20 setStepIdentifier:v15];
  }

  return v20;
}

- (HUCharacteristicEventServicePickerViewController)initWithFlow:(id)a3 stepIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 viewController:self servicePickerSourceForStep:v6];
  v9 = [v7 eventBuilderItem];
  v10 = [v7 triggerBuilder];
  v11 = [(HUCharacteristicEventServicePickerViewController *)self initWithEventBuilderItem:v9 triggerBuilder:v10 source:v8 flow:v7 stepIdentifier:v6];

  return v11;
}

- (void)viewDidLoad
{
  v16.receiver = self;
  v16.super_class = HUCharacteristicEventServicePickerViewController;
  [(HUInstructionsTableViewController *)&v16 viewDidLoad];
  v3 = [(HUCharacteristicEventServicePickerViewController *)self source];
  if (!v3)
  {
    v4 = @"HUCharacteristicTriggerServicePickerInstructionsDescriptionAlarm";
    v5 = @"HUCharacteristicTriggerServicePickerTitleAlarm";
    goto LABEL_5;
  }

  if (v3 == 1)
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
  v8 = [(HUCharacteristicEventServicePickerViewController *)self navigationItem];
  [v8 setPrompt:v7];

  v9 = [(HUCharacteristicEventServicePickerViewController *)self flow];
  v10 = [(HUCharacteristicEventServicePickerViewController *)self stepIdentifier];
  v11 = [v9 shouldShowNextButtonForStep:v10];

  if (v11)
  {
    v12 = objc_alloc(MEMORY[0x277D751E0]);
    v13 = _HULocalizedStringWithDefaultValue(@"HUCharacteristicTriggerServicePickerNextButton", @"HUCharacteristicTriggerServicePickerNextButton", 1);
    v14 = [v12 initWithTitle:v13 style:2 target:self action:sel__next_];
    v15 = [(HUCharacteristicEventServicePickerViewController *)self navigationItem];
    [v15 setRightBarButtonItem:v14];
  }
}

- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v14.receiver = self;
  v14.super_class = HUCharacteristicEventServicePickerViewController;
  [(HUInstructionsTableViewController *)&v14 updateCell:v10 forItem:a4 indexPath:a5 animated:v6];
  objc_opt_class();
  v11 = v10;
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

- (void)_next:(id)a3
{
  v5 = [(HUCharacteristicEventServicePickerViewController *)self flow];
  v4 = [(HUCharacteristicEventServicePickerViewController *)self stepIdentifier];
  [v5 viewController:self didFinishStepWithIdentifier:v4];
}

- (void)characteristicEventServicePickerContentViewController:(id)a3 didChangeNumberOfSelectedItems:(unint64_t)a4
{
  v4 = a4 != 0;
  v6 = [(HUCharacteristicEventServicePickerViewController *)self navigationItem];
  v5 = [v6 rightBarButtonItem];
  [v5 setEnabled:v4];
}

- (HUCharacteristicEventServicePickerContentViewController)servicePickerContentViewController
{
  objc_opt_class();
  v3 = [(HUInstructionsTableViewController *)self contentViewController];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
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
  v2 = [(HUCharacteristicEventServicePickerViewController *)self servicePickerContentViewController];
  v3 = [v2 triggerBuilder];

  return v3;
}

- (unint64_t)source
{
  v2 = [(HUCharacteristicEventServicePickerViewController *)self servicePickerContentViewController];
  v3 = [v2 source];

  return v3;
}

- (id)filter
{
  v2 = [(HUCharacteristicEventServicePickerViewController *)self servicePickerContentViewController];
  v3 = [v2 filter];

  return v3;
}

- (void)setFilter:(id)a3
{
  v4 = a3;
  v5 = [(HUCharacteristicEventServicePickerViewController *)self servicePickerContentViewController];
  [v5 setFilter:v4];
}

@end