@interface HUCharacteristicTriggerServicePickerViewController
+ (BOOL)canPickServicesFromSource:(unint64_t)a3 home:(id)a4;
+ (unint64_t)sourceForTriggerBuilder:(id)a3;
- (HUCharacteristicTriggerServicePickerContentViewController)servicePickerContentViewController;
- (HUCharacteristicTriggerServicePickerViewController)initWithEventBuilderItem:(id)a3 triggerBuilder:(id)a4 mode:(unint64_t)a5 source:(unint64_t)a6 delegate:(id)a7;
- (HUCharacteristicTriggerServicePickerViewController)initWithInstructionsItem:(id)a3 contentViewController:(id)a4;
- (HUTriggerEditorDelegate)delegate;
- (id)characteristicTriggerBuilder;
- (id)filter;
- (unint64_t)mode;
- (unint64_t)source;
- (void)setDelegate:(id)a3;
- (void)setFilter:(id)a3;
- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6;
- (void)viewDidLoad;
@end

@implementation HUCharacteristicTriggerServicePickerViewController

+ (BOOL)canPickServicesFromSource:(unint64_t)a3 home:(id)a4
{
  v5 = a4;
  if (a3 == 1)
  {
    v9 = [HUCharacteristicEventOptionProvider hasOptionsForAnyServiceInHome:v5 allowingSensors:0];
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
    v11[2] = __85__HUCharacteristicTriggerServicePickerViewController_canPickServicesFromSource_home___block_invoke;
    v11[3] = &unk_277DB8EC0;
    v12 = v6;
    v8 = v6;
    v9 = [v7 na_any:v11];
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

+ (unint64_t)sourceForTriggerBuilder:(id)a3
{
  v3 = MEMORY[0x277CD1970];
  v4 = a3;
  v5 = [v3 hf_sensingCharacteristicTypes];
  v6 = [v4 characteristics];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __78__HUCharacteristicTriggerServicePickerViewController_sourceForTriggerBuilder___block_invoke;
  v9[3] = &unk_277DB9538;
  v10 = v5;
  v7 = v5;
  LODWORD(v4) = [v6 na_any:v9];

  return v4 ^ 1;
}

uint64_t __78__HUCharacteristicTriggerServicePickerViewController_sourceForTriggerBuilder___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 characteristicType];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (HUCharacteristicTriggerServicePickerViewController)initWithInstructionsItem:(id)a3 contentViewController:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithEventBuilderItem_triggerBuilder_mode_source_delegate_);
  [v6 handleFailureInMethod:a2 object:self file:@"HUCharacteristicTriggerServicePickerViewController.m" lineNumber:70 description:{@"%s is unavailable; use %@ instead", "-[HUCharacteristicTriggerServicePickerViewController initWithInstructionsItem:contentViewController:]", v7}];

  return 0;
}

- (HUCharacteristicTriggerServicePickerViewController)initWithEventBuilderItem:(id)a3 triggerBuilder:(id)a4 mode:(unint64_t)a5 source:(unint64_t)a6 delegate:(id)a7
{
  v13 = a4;
  v14 = a7;
  v15 = a3;
  v16 = [HUCharacteristicTriggerServicePickerContentViewController alloc];
  v17 = [(HUCharacteristicTriggerServicePickerViewController *)self navigationItem];
  v18 = [(HUCharacteristicTriggerServicePickerContentViewController *)v16 initWithTriggerBuilder:v13 eventBuilderItem:v15 mode:a5 source:a6 effectiveNavigationItem:v17 delegate:v14];

  [(HUServiceGridViewController *)v18 setContentMargins:1];
  v22.receiver = self;
  v22.super_class = HUCharacteristicTriggerServicePickerViewController;
  v19 = [(HUInstructionsTableViewController *)&v22 initWithInstructionsItem:0 contentViewController:v18];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_triggerBuilder, a4);
  }

  return v20;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = HUCharacteristicTriggerServicePickerViewController;
  [(HUInstructionsTableViewController *)&v9 viewDidLoad];
  v3 = [(HUCharacteristicTriggerServicePickerViewController *)self source];
  if (v3)
  {
    if (v3 != 1)
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
  v8 = [(HUCharacteristicTriggerServicePickerViewController *)self navigationItem];
  [v8 setPrompt:v7];
}

- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v14.receiver = self;
  v14.super_class = HUCharacteristicTriggerServicePickerViewController;
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

- (HUCharacteristicTriggerServicePickerContentViewController)servicePickerContentViewController
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
  v2 = [(HUCharacteristicTriggerServicePickerViewController *)self servicePickerContentViewController];
  v3 = [v2 triggerBuilder];

  return v3;
}

- (unint64_t)mode
{
  v2 = [(HUCharacteristicTriggerServicePickerViewController *)self servicePickerContentViewController];
  v3 = [v2 mode];

  return v3;
}

- (unint64_t)source
{
  v2 = [(HUCharacteristicTriggerServicePickerViewController *)self servicePickerContentViewController];
  v3 = [v2 source];

  return v3;
}

- (HUTriggerEditorDelegate)delegate
{
  v2 = [(HUCharacteristicTriggerServicePickerViewController *)self servicePickerContentViewController];
  v3 = [v2 delegate];

  return v3;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v5 = [(HUCharacteristicTriggerServicePickerViewController *)self servicePickerContentViewController];
  [v5 setDelegate:v4];
}

- (id)filter
{
  v2 = [(HUCharacteristicTriggerServicePickerViewController *)self servicePickerContentViewController];
  v3 = [v2 filter];

  return v3;
}

- (void)setFilter:(id)a3
{
  v4 = a3;
  v5 = [(HUCharacteristicTriggerServicePickerViewController *)self servicePickerContentViewController];
  [v5 setFilter:v4];
}

@end