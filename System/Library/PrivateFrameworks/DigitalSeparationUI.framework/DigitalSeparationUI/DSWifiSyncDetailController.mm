@interface DSWifiSyncDetailController
+ (void)initialize;
- (DSWifiSyncDelegate)delegate;
- (DSWifiSyncDetailController)initWithPairedComputer:(id)computer;
- (id)cellWithText:(id)text secondaryText:(id)secondaryText;
- (id)dateDescription;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)back;
- (void)presentRemoveDeviceAlert;
- (void)returnFromDetailAndRemoveComputer;
- (void)viewDidLoad;
@end

@implementation DSWifiSyncDetailController

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = os_log_create("com.apple.DigitalSeparation", "DSLogWifiSyncDetail");
    v3 = DSLogWifiSyncDetail;
    DSLogWifiSyncDetail = v2;

    MEMORY[0x2821F96F8](v2, v3);
  }
}

- (DSWifiSyncDetailController)initWithPairedComputer:(id)computer
{
  computerCopy = computer;
  deviceName = [computerCopy deviceName];
  v34.receiver = self;
  v34.super_class = DSWifiSyncDetailController;
  v7 = [(DSTableWelcomeController *)&v34 initWithTitle:deviceName detailText:&stru_285BA4988 icon:0 adoptTableViewScrollView:0 shouldShowSearchBar:0];

  if (!v7)
  {
    goto LABEL_14;
  }

  objc_storeStrong(&v7->_pairedComputer, computer);
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  orderedCells = v7->_orderedCells;
  v7->_orderedCells = v8;

  marketingName = [computerCopy marketingName];

  if (marketingName)
  {
    v11 = v7->_orderedCells;
    v12 = DSUILocStringForKey(@"WIFI_SYNC_DEVICE_MODEL");
    marketingName2 = [computerCopy marketingName];
    v14 = v7;
    v15 = v12;
    v16 = marketingName2;
LABEL_9:
    v21 = [(DSWifiSyncDetailController *)v14 cellWithText:v15 secondaryText:v16];
    [(NSMutableArray *)v11 addObject:v21];

    goto LABEL_10;
  }

  model = [computerCopy model];

  if (model)
  {
    model2 = [computerCopy model];
    if ([model2 isEqualToString:@"Windows PC"])
    {
      v12 = DSUILocStringForKey(@"WINDOWS_PC");
    }

    else
    {
      v19 = MEMORY[0x277D19238];
      model3 = [computerCopy model];
      v12 = [v19 marketingNameForModel:model3];
    }

    v11 = v7->_orderedCells;
    marketingName2 = DSUILocStringForKey(@"WIFI_SYNC_DEVICE_MODEL");
    v14 = v7;
    v15 = marketingName2;
    v16 = v12;
    goto LABEL_9;
  }

LABEL_10:
  serialNumber = [computerCopy serialNumber];

  if (serialNumber)
  {
    v23 = v7->_orderedCells;
    v24 = DSUILocStringForKey(@"WIFI_SYNC_DEVICE_SERIAL_NUMBER");
    serialNumber2 = [computerCopy serialNumber];
    v26 = [(DSWifiSyncDetailController *)v7 cellWithText:v24 secondaryText:serialNumber2];
    [(NSMutableArray *)v23 addObject:v26];
  }

  datePaired = [computerCopy datePaired];

  if (datePaired)
  {
    v28 = v7->_orderedCells;
    v29 = DSUILocStringForKey(@"WIFI_SYNC_TIME_SYNCED_2");
    v30 = [DSUIUtilities valueForUnfinalizedString:v29];
    dateDescription = [(DSWifiSyncDetailController *)v7 dateDescription];
    v32 = [(DSWifiSyncDetailController *)v7 cellWithText:v30 secondaryText:dateDescription];
    [(NSMutableArray *)v28 addObject:v32];
  }

LABEL_14:

  return v7;
}

- (id)cellWithText:(id)text secondaryText:(id)secondaryText
{
  v5 = MEMORY[0x277D75B48];
  secondaryTextCopy = secondaryText;
  textCopy = text;
  v8 = objc_alloc_init(v5);
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
  [valueCellConfiguration setSecondaryText:secondaryTextCopy];

  [v8 setContentConfiguration:valueCellConfiguration];

  return v8;
}

- (void)presentRemoveDeviceAlert
{
  pairedComputer = [(DSWifiSyncDetailController *)self pairedComputer];
  deviceName = [pairedComputer deviceName];

  v5 = DSUILocStringForKey(@"WIFI_SYNC_DISCONNECT_DETAIL");
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:v5, deviceName];
  v7 = MEMORY[0x277D75110];
  v8 = DSUILocStringForKey(@"WIFI_SYNC_DISCONNECT_CONFIRMATION_DETAIL");
  v9 = [v7 alertControllerWithTitle:v6 message:v8 preferredStyle:0];

  v10 = MEMORY[0x277D750F8];
  v11 = DSUILocStringForKey(@"CANCEL");
  v12 = [v10 actionWithTitle:v11 style:1 handler:0];

  v13 = MEMORY[0x277D750F8];
  v14 = DSUILocStringForKey(@"WIFI_SYNC_DISCONNECT_ACTION");
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __54__DSWifiSyncDetailController_presentRemoveDeviceAlert__block_invoke;
  v17[3] = &unk_278F75678;
  v18 = deviceName;
  selfCopy = self;
  v15 = deviceName;
  v16 = [v13 actionWithTitle:v14 style:2 handler:v17];

  [v9 addAction:v16];
  [v9 addAction:v12];
  [(DSWifiSyncDetailController *)self presentViewController:v9 animated:1 completion:0];
}

uint64_t __54__DSWifiSyncDetailController_presentRemoveDeviceAlert__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = DSLogWifiSyncDetail;
  if (os_log_type_enabled(DSLogWifiSyncDetail, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_248C7E000, v2, OS_LOG_TYPE_INFO, "User confirmed disconnect for device: %@", &v6, 0xCu);
  }

  result = [*(a1 + 40) returnFromDetailAndRemoveComputer];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = DSWifiSyncDetailController;
  [(DSTableWelcomeController *)&v8 viewDidLoad];
  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView setEditing:0];

  tableView2 = [(OBTableWelcomeController *)self tableView];
  [tableView2 setAllowsSelection:0];

  v5 = DSUILocStringForKey(@"WIFI_SYNC_REMOVE");
  v6 = [DSUIUtilities valueForUnfinalizedString:v5];
  v7 = [DSUIUtilities setUpBoldButtonForController:self title:v6 target:self selector:sel_presentRemoveDeviceAlert];
  [(DSTableWelcomeController *)self setBoldButton:v7];
}

- (void)returnFromDetailAndRemoveComputer
{
  delegate = [(DSWifiSyncDetailController *)self delegate];
  pairedComputer = [(DSWifiSyncDetailController *)self pairedComputer];
  [delegate returnFromDetailAndRemoveComputer:pairedComputer];
}

- (id)dateDescription
{
  v3 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v3 setTimeStyle:1];
  [v3 setDateStyle:1];
  datePaired = [(DSPairedComputer *)self->_pairedComputer datePaired];
  v5 = [v3 stringFromDate:datePaired];

  return v5;
}

- (void)back
{
  navigationController = [(DSWifiSyncDetailController *)self navigationController];
  v2 = [navigationController popViewControllerAnimated:1];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  orderedCells = [(DSWifiSyncDetailController *)self orderedCells];
  v7 = [pathCopy row];

  v8 = [orderedCells objectAtIndex:v7];

  return v8;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(DSWifiSyncDetailController *)self orderedCells:view];
  v5 = [v4 count];

  return v5;
}

- (DSWifiSyncDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end