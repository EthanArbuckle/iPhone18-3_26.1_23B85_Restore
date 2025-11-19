@interface DSWifiSyncDetailController
+ (void)initialize;
- (DSWifiSyncDelegate)delegate;
- (DSWifiSyncDetailController)initWithPairedComputer:(id)a3;
- (id)cellWithText:(id)a3 secondaryText:(id)a4;
- (id)dateDescription;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)back;
- (void)presentRemoveDeviceAlert;
- (void)returnFromDetailAndRemoveComputer;
- (void)viewDidLoad;
@end

@implementation DSWifiSyncDetailController

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = os_log_create("com.apple.DigitalSeparation", "DSLogWifiSyncDetail");
    v3 = DSLogWifiSyncDetail;
    DSLogWifiSyncDetail = v2;

    MEMORY[0x2821F96F8](v2, v3);
  }
}

- (DSWifiSyncDetailController)initWithPairedComputer:(id)a3
{
  v5 = a3;
  v6 = [v5 deviceName];
  v34.receiver = self;
  v34.super_class = DSWifiSyncDetailController;
  v7 = [(DSTableWelcomeController *)&v34 initWithTitle:v6 detailText:&stru_285BA4988 icon:0 adoptTableViewScrollView:0 shouldShowSearchBar:0];

  if (!v7)
  {
    goto LABEL_14;
  }

  objc_storeStrong(&v7->_pairedComputer, a3);
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  orderedCells = v7->_orderedCells;
  v7->_orderedCells = v8;

  v10 = [v5 marketingName];

  if (v10)
  {
    v11 = v7->_orderedCells;
    v12 = DSUILocStringForKey(@"WIFI_SYNC_DEVICE_MODEL");
    v13 = [v5 marketingName];
    v14 = v7;
    v15 = v12;
    v16 = v13;
LABEL_9:
    v21 = [(DSWifiSyncDetailController *)v14 cellWithText:v15 secondaryText:v16];
    [(NSMutableArray *)v11 addObject:v21];

    goto LABEL_10;
  }

  v17 = [v5 model];

  if (v17)
  {
    v18 = [v5 model];
    if ([v18 isEqualToString:@"Windows PC"])
    {
      v12 = DSUILocStringForKey(@"WINDOWS_PC");
    }

    else
    {
      v19 = MEMORY[0x277D19238];
      v20 = [v5 model];
      v12 = [v19 marketingNameForModel:v20];
    }

    v11 = v7->_orderedCells;
    v13 = DSUILocStringForKey(@"WIFI_SYNC_DEVICE_MODEL");
    v14 = v7;
    v15 = v13;
    v16 = v12;
    goto LABEL_9;
  }

LABEL_10:
  v22 = [v5 serialNumber];

  if (v22)
  {
    v23 = v7->_orderedCells;
    v24 = DSUILocStringForKey(@"WIFI_SYNC_DEVICE_SERIAL_NUMBER");
    v25 = [v5 serialNumber];
    v26 = [(DSWifiSyncDetailController *)v7 cellWithText:v24 secondaryText:v25];
    [(NSMutableArray *)v23 addObject:v26];
  }

  v27 = [v5 datePaired];

  if (v27)
  {
    v28 = v7->_orderedCells;
    v29 = DSUILocStringForKey(@"WIFI_SYNC_TIME_SYNCED_2");
    v30 = [DSUIUtilities valueForUnfinalizedString:v29];
    v31 = [(DSWifiSyncDetailController *)v7 dateDescription];
    v32 = [(DSWifiSyncDetailController *)v7 cellWithText:v30 secondaryText:v31];
    [(NSMutableArray *)v28 addObject:v32];
  }

LABEL_14:

  return v7;
}

- (id)cellWithText:(id)a3 secondaryText:(id)a4
{
  v5 = MEMORY[0x277D75B48];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(v5);
  v9 = [MEMORY[0x277D756E0] valueCellConfiguration];
  [v8 setAccessoryType:0];
  [v8 setIsAccessibilityElement:1];
  v10 = [MEMORY[0x277D75348] tertiarySystemFillColor];
  [v8 setBackgroundColor:v10];

  v11 = [v9 textProperties];
  [v11 setNumberOfLines:0];

  v12 = [v9 textProperties];
  [v12 setLineBreakMode:0];

  [v9 setText:v7];
  [v9 setSecondaryText:v6];

  [v8 setContentConfiguration:v9];

  return v8;
}

- (void)presentRemoveDeviceAlert
{
  v3 = [(DSWifiSyncDetailController *)self pairedComputer];
  v4 = [v3 deviceName];

  v5 = DSUILocStringForKey(@"WIFI_SYNC_DISCONNECT_DETAIL");
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:v5, v4];
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
  v18 = v4;
  v19 = self;
  v15 = v4;
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
  v3 = [(OBTableWelcomeController *)self tableView];
  [v3 setEditing:0];

  v4 = [(OBTableWelcomeController *)self tableView];
  [v4 setAllowsSelection:0];

  v5 = DSUILocStringForKey(@"WIFI_SYNC_REMOVE");
  v6 = [DSUIUtilities valueForUnfinalizedString:v5];
  v7 = [DSUIUtilities setUpBoldButtonForController:self title:v6 target:self selector:sel_presentRemoveDeviceAlert];
  [(DSTableWelcomeController *)self setBoldButton:v7];
}

- (void)returnFromDetailAndRemoveComputer
{
  v4 = [(DSWifiSyncDetailController *)self delegate];
  v3 = [(DSWifiSyncDetailController *)self pairedComputer];
  [v4 returnFromDetailAndRemoveComputer:v3];
}

- (id)dateDescription
{
  v3 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v3 setTimeStyle:1];
  [v3 setDateStyle:1];
  v4 = [(DSPairedComputer *)self->_pairedComputer datePaired];
  v5 = [v3 stringFromDate:v4];

  return v5;
}

- (void)back
{
  v3 = [(DSWifiSyncDetailController *)self navigationController];
  v2 = [v3 popViewControllerAnimated:1];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(DSWifiSyncDetailController *)self orderedCells];
  v7 = [v5 row];

  v8 = [v6 objectAtIndex:v7];

  return v8;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(DSWifiSyncDetailController *)self orderedCells:a3];
  v5 = [v4 count];

  return v5;
}

- (DSWifiSyncDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end