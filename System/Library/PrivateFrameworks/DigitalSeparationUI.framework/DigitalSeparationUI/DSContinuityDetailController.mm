@interface DSContinuityDetailController
- (DSContinuityDelegate)delegate;
- (DSContinuityDetailController)initWithContinuityDevice:(id)device;
- (id)cellWithText:(id)text secondaryText:(id)secondaryText;
- (id)localizedDetailText;
- (id)marketingNameForDevice:(id)device;
- (id)stringFromDate:(id)date;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)back;
- (void)presentRemoveDeviceAlert;
- (void)returnFromDetailAndRemoveComputer;
- (void)viewDidLoad;
@end

@implementation DSContinuityDetailController

- (DSContinuityDetailController)initWithContinuityDevice:(id)device
{
  deviceCopy = device;
  v35.receiver = self;
  v35.super_class = DSContinuityDetailController;
  v6 = [(DSTableWelcomeController *)&v35 initWithTitle:&stru_285BA4988 detailText:&stru_285BA4988 icon:0 adoptTableViewScrollView:0 shouldShowSearchBar:0];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_10;
  }

  objc_storeStrong(&v6->_continuityDevice, device);
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  orderedCells = v7->_orderedCells;
  v7->_orderedCells = v8;

  headerView = [(DSContinuityDetailController *)v7 headerView];
  name = [deviceCopy name];
  [headerView setTitle:name];

  headerView2 = [(DSContinuityDetailController *)v7 headerView];
  localizedDetailText = [(DSContinuityDetailController *)v7 localizedDetailText];
  [headerView2 setDetailText:localizedDetailText];

  model = [deviceCopy model];
  if (model)
  {

LABEL_5:
    v16 = v7->_orderedCells;
    v17 = DSUILocStringForKey(@"CONTINUITY_DEVICE_MODEL");
    v18 = [DSUIUtilities valueForUnfinalizedString:v17];
    v19 = [(DSContinuityDetailController *)v7 marketingNameForDevice:deviceCopy];
    v20 = [(DSContinuityDetailController *)v7 cellWithText:v18 secondaryText:v19];
    [(NSMutableArray *)v16 addObject:v20];

    goto LABEL_6;
  }

  marketingName = [deviceCopy marketingName];

  if (marketingName)
  {
    goto LABEL_5;
  }

LABEL_6:
  serialNumber = [deviceCopy serialNumber];

  if (serialNumber)
  {
    v22 = v7->_orderedCells;
    v23 = DSUILocStringForKey(@"CONTINUITY_DEVICE_SERIAL_NUMBER");
    v24 = [DSUIUtilities valueForUnfinalizedString:v23];
    serialNumber2 = [deviceCopy serialNumber];
    v26 = [(DSContinuityDetailController *)v7 cellWithText:v24 secondaryText:serialNumber2];
    [(NSMutableArray *)v22 addObject:v26];
  }

  initialDiscoveryDate = [deviceCopy initialDiscoveryDate];

  if (initialDiscoveryDate)
  {
    v28 = v7->_orderedCells;
    v29 = DSUILocStringForKey(@"CONTINUITY_TIME_PAIRED_2");
    v30 = [DSUIUtilities valueForUnfinalizedString:v29];
    initialDiscoveryDate2 = [deviceCopy initialDiscoveryDate];
    v32 = [(DSContinuityDetailController *)v7 stringFromDate:initialDiscoveryDate2];
    v33 = [(DSContinuityDetailController *)v7 cellWithText:v30 secondaryText:v32];
    [(NSMutableArray *)v28 addObject:v33];
  }

LABEL_10:

  return v7;
}

- (id)cellWithText:(id)text secondaryText:(id)secondaryText
{
  secondaryTextCopy = secondaryText;
  v6 = MEMORY[0x277D75B48];
  textCopy = text;
  v8 = objc_alloc_init(v6);
  valueCellConfiguration = [MEMORY[0x277D756E0] valueCellConfiguration];
  [v8 setAccessoryType:0];
  [v8 setIsAccessibilityElement:1];
  tertiarySystemFillColor = [MEMORY[0x277D75348] tertiarySystemFillColor];
  [v8 setBackgroundColor:tertiarySystemFillColor];

  textProperties = [valueCellConfiguration textProperties];
  [textProperties setNumberOfLines:0];

  textProperties2 = [valueCellConfiguration textProperties];
  [textProperties2 setLineBreakMode:0];

  [valueCellConfiguration setText:textCopy];
  if (secondaryTextCopy)
  {
    [valueCellConfiguration setSecondaryText:secondaryTextCopy];
  }

  [v8 setContentConfiguration:valueCellConfiguration];

  return v8;
}

- (void)presentRemoveDeviceAlert
{
  v3 = MEMORY[0x277CCACA8];
  v4 = DSUILocStringForKey(@"CONTINUITY_DISCONNECT_SINGLE_TITLE");
  continuityDevice = [(DSContinuityDetailController *)self continuityDevice];
  name = [continuityDevice name];
  v7 = [v3 stringWithFormat:v4, name];

  v8 = MEMORY[0x277CCACA8];
  v9 = DSUILocStringForKey(@"CONTINUITY_DISCONNECT_SINGLE_CONFIRMATION");
  continuityDevice2 = [(DSContinuityDetailController *)self continuityDevice];
  name2 = [continuityDevice2 name];
  v12 = [v8 stringWithFormat:v9, name2];

  v13 = [MEMORY[0x277D75110] alertControllerWithTitle:v7 message:v12 preferredStyle:0];
  v14 = MEMORY[0x277D750F8];
  v15 = DSUILocStringForKey(@"CANCEL");
  v16 = [v14 actionWithTitle:v15 style:1 handler:0];

  v17 = MEMORY[0x277D750F8];
  v18 = DSUILocStringForKey(@"CONTINUITY_STOP");
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __56__DSContinuityDetailController_presentRemoveDeviceAlert__block_invoke;
  v20[3] = &unk_278F750A0;
  v20[4] = self;
  v19 = [v17 actionWithTitle:v18 style:2 handler:v20];

  [v13 addAction:v19];
  [v13 addAction:v16];
  [(DSContinuityDetailController *)self presentViewController:v13 animated:1 completion:0];
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = DSContinuityDetailController;
  [(DSTableWelcomeController *)&v8 viewDidLoad];
  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView setEditing:0];

  tableView2 = [(OBTableWelcomeController *)self tableView];
  [tableView2 setAllowsSelection:0];

  v5 = DSUILocStringForKey(@"CONTINUITY_STOP");
  v6 = [DSUIUtilities valueForUnfinalizedString:v5];
  v7 = [DSUIUtilities setUpBoldButtonForController:self title:v6 target:self selector:sel_presentRemoveDeviceAlert];
  [(DSTableWelcomeController *)self setBoldButton:v7];
}

- (void)returnFromDetailAndRemoveComputer
{
  delegate = [(DSContinuityDetailController *)self delegate];
  continuityDevice = [(DSContinuityDetailController *)self continuityDevice];
  [delegate returnFromDetailAndRemoveDevice:continuityDevice];
}

- (id)localizedDetailText
{
  continuityDevice = [(DSContinuityDetailController *)self continuityDevice];
  formattedSessionStart = [continuityDevice formattedSessionStart];
  if (!formattedSessionStart)
  {
    v13 = &stru_285BA4988;
    goto LABEL_5;
  }

  v5 = formattedSessionStart;
  continuityDevice2 = [(DSContinuityDetailController *)self continuityDevice];
  formattedSessionDuration = [continuityDevice2 formattedSessionDuration];

  if (formattedSessionDuration)
  {
    v8 = MEMORY[0x277CCACA8];
    continuityDevice = DSUILocStringForKey(@"CONTINUITY_SESSION_DETAIL");
    continuityDevice3 = [(DSContinuityDetailController *)self continuityDevice];
    formattedSessionStart2 = [continuityDevice3 formattedSessionStart];
    continuityDevice4 = [(DSContinuityDetailController *)self continuityDevice];
    formattedSessionDuration2 = [continuityDevice4 formattedSessionDuration];
    v13 = [v8 stringWithFormat:continuityDevice, formattedSessionStart2, formattedSessionDuration2];

LABEL_5:
    goto LABEL_7;
  }

  v13 = &stru_285BA4988;
LABEL_7:

  return v13;
}

- (id)stringFromDate:(id)date
{
  v3 = MEMORY[0x277CCA968];
  dateCopy = date;
  v5 = objc_alloc_init(v3);
  [v5 setTimeStyle:1];
  [v5 setDateStyle:1];
  v6 = [v5 stringFromDate:dateCopy];

  return v6;
}

- (id)marketingNameForDevice:(id)device
{
  deviceCopy = device;
  marketingName = [deviceCopy marketingName];

  if (marketingName)
  {
    marketingName2 = [deviceCopy marketingName];
  }

  else
  {
    v6 = MEMORY[0x277D19238];
    model = [deviceCopy model];

    marketingName2 = [v6 marketingNameForModel:model];
    deviceCopy = model;
  }

  return marketingName2;
}

- (void)back
{
  navigationController = [(DSContinuityDetailController *)self navigationController];
  v2 = [navigationController popViewControllerAnimated:1];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  orderedCells = [(DSContinuityDetailController *)self orderedCells];
  v7 = [pathCopy row];

  v8 = [orderedCells objectAtIndex:v7];

  return v8;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(DSContinuityDetailController *)self orderedCells:view];
  v5 = [v4 count];

  return v5;
}

- (DSContinuityDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end