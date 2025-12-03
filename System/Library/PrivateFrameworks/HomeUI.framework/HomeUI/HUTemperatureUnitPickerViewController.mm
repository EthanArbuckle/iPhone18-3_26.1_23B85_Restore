@interface HUTemperatureUnitPickerViewController
- (HUTemperatureUnitPickerViewController)initWithUnitItem:(id)item;
- (id)_controlItem;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)itemManager:(id)manager didUpdateResultsForSourceItem:(id)item;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation HUTemperatureUnitPickerViewController

- (HUTemperatureUnitPickerViewController)initWithUnitItem:(id)item
{
  itemCopy = item;
  v15.receiver = self;
  v15.super_class = HUTemperatureUnitPickerViewController;
  v6 = [(HUTemperatureUnitPickerViewController *)&v15 initWithStyle:2];
  if (v6)
  {
    v7 = _HULocalizedStringWithDefaultValue(@"HUTemperatureUnitTitle", @"HUTemperatureUnitTitle", 1);
    [(HUTemperatureUnitPickerViewController *)v6 setTitle:v7];

    v8 = objc_alloc(MEMORY[0x277D14B08]);
    v9 = [itemCopy copy];
    v10 = [v8 initWithDelegate:v6 sourceItem:v9];
    [(HUTemperatureUnitPickerViewController *)v6 setItemManager:v10];

    itemManager = [(HUTemperatureUnitPickerViewController *)v6 itemManager];
    [itemManager setUseCustomDiffableDataSource:1];

    itemManager2 = [(HUTemperatureUnitPickerViewController *)v6 itemManager];
    v13 = [itemManager2 reloadAndUpdateAllItemsFromSenderSelector:a2];
  }

  return v6;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = HUTemperatureUnitPickerViewController;
  [(HUTemperatureUnitPickerViewController *)&v7 viewDidLoad];
  tableView = [(HUTemperatureUnitPickerViewController *)self tableView];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [tableView registerClass:v4 forCellReuseIdentifier:v6];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [viewCopy dequeueReusableCellWithIdentifier:v9 forIndexPath:pathCopy];

  v11 = [pathCopy row];
  v12 = [(HUTemperatureUnitPickerViewController *)self _tableRowToTemperatureUnit:v11];
  _controlItem = [(HUTemperatureUnitPickerViewController *)self _controlItem];
  latestResults = [_controlItem latestResults];
  v15 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13818]];

  if (v12)
  {
    v16 = @"HUTemperatureUnitDegreesFahrenheit";
  }

  else
  {
    v16 = @"HUTemperatureUnitDegreesCelsius";
  }

  v17 = _HULocalizedStringWithDefaultValue(v16, v16, 1);
  textLabel = [v10 textLabel];
  [textLabel setText:v17];

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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v5 = -[HUTemperatureUnitPickerViewController _tableRowToTemperatureUnit:](self, "_tableRowToTemperatureUnit:", [path row]);
  _controlItem = [(HUTemperatureUnitPickerViewController *)self _controlItem];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
  v7 = [_controlItem writeValue:v6];
}

- (void)itemManager:(id)manager didUpdateResultsForSourceItem:(id)item
{
  v5 = [(HUTemperatureUnitPickerViewController *)self tableView:manager];
  v4 = [MEMORY[0x277CCAA78] indexSetWithIndex:0];
  [v5 reloadSections:v4 withRowAnimation:5];
}

- (id)_controlItem
{
  itemManager = [(HUTemperatureUnitPickerViewController *)self itemManager];
  sourceItem = [itemManager sourceItem];

  return sourceItem;
}

@end