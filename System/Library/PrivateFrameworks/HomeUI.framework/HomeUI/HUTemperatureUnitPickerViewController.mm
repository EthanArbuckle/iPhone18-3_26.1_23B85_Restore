@interface HUTemperatureUnitPickerViewController
- (HUTemperatureUnitPickerViewController)initWithUnitItem:(id)a3;
- (id)_controlItem;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)itemManager:(id)a3 didUpdateResultsForSourceItem:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation HUTemperatureUnitPickerViewController

- (HUTemperatureUnitPickerViewController)initWithUnitItem:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = HUTemperatureUnitPickerViewController;
  v6 = [(HUTemperatureUnitPickerViewController *)&v15 initWithStyle:2];
  if (v6)
  {
    v7 = _HULocalizedStringWithDefaultValue(@"HUTemperatureUnitTitle", @"HUTemperatureUnitTitle", 1);
    [(HUTemperatureUnitPickerViewController *)v6 setTitle:v7];

    v8 = objc_alloc(MEMORY[0x277D14B08]);
    v9 = [v5 copy];
    v10 = [v8 initWithDelegate:v6 sourceItem:v9];
    [(HUTemperatureUnitPickerViewController *)v6 setItemManager:v10];

    v11 = [(HUTemperatureUnitPickerViewController *)v6 itemManager];
    [v11 setUseCustomDiffableDataSource:1];

    v12 = [(HUTemperatureUnitPickerViewController *)v6 itemManager];
    v13 = [v12 reloadAndUpdateAllItemsFromSenderSelector:a2];
  }

  return v6;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = HUTemperatureUnitPickerViewController;
  [(HUTemperatureUnitPickerViewController *)&v7 viewDidLoad];
  v3 = [(HUTemperatureUnitPickerViewController *)self tableView];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v3 registerClass:v4 forCellReuseIdentifier:v6];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v7 dequeueReusableCellWithIdentifier:v9 forIndexPath:v6];

  v11 = [v6 row];
  v12 = [(HUTemperatureUnitPickerViewController *)self _tableRowToTemperatureUnit:v11];
  v13 = [(HUTemperatureUnitPickerViewController *)self _controlItem];
  v14 = [v13 latestResults];
  v15 = [v14 objectForKeyedSubscript:*MEMORY[0x277D13818]];

  if (v12)
  {
    v16 = @"HUTemperatureUnitDegreesFahrenheit";
  }

  else
  {
    v16 = @"HUTemperatureUnitDegreesCelsius";
  }

  v17 = _HULocalizedStringWithDefaultValue(v16, v16, 1);
  v18 = [v10 textLabel];
  [v18 setText:v17];

  if (v15 && [v15 integerValue] == v12)
  {
    v19 = 3;
  }

  else
  {
    v19 = 0;
  }

  [v10 setAccessoryType:v19];

  return v10;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = -[HUTemperatureUnitPickerViewController _tableRowToTemperatureUnit:](self, "_tableRowToTemperatureUnit:", [a4 row]);
  v8 = [(HUTemperatureUnitPickerViewController *)self _controlItem];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
  v7 = [v8 writeValue:v6];
}

- (void)itemManager:(id)a3 didUpdateResultsForSourceItem:(id)a4
{
  v5 = [(HUTemperatureUnitPickerViewController *)self tableView:a3];
  v4 = [MEMORY[0x277CCAA78] indexSetWithIndex:0];
  [v5 reloadSections:v4 withRowAnimation:5];
}

- (id)_controlItem
{
  v2 = [(HUTemperatureUnitPickerViewController *)self itemManager];
  v3 = [v2 sourceItem];

  return v3;
}

@end