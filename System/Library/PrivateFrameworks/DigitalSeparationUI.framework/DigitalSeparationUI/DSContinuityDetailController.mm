@interface DSContinuityDetailController
- (DSContinuityDelegate)delegate;
- (DSContinuityDetailController)initWithContinuityDevice:(id)a3;
- (id)cellWithText:(id)a3 secondaryText:(id)a4;
- (id)localizedDetailText;
- (id)marketingNameForDevice:(id)a3;
- (id)stringFromDate:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)back;
- (void)presentRemoveDeviceAlert;
- (void)returnFromDetailAndRemoveComputer;
- (void)viewDidLoad;
@end

@implementation DSContinuityDetailController

- (DSContinuityDetailController)initWithContinuityDevice:(id)a3
{
  v5 = a3;
  v35.receiver = self;
  v35.super_class = DSContinuityDetailController;
  v6 = [(DSTableWelcomeController *)&v35 initWithTitle:&stru_285BA4988 detailText:&stru_285BA4988 icon:0 adoptTableViewScrollView:0 shouldShowSearchBar:0];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_10;
  }

  objc_storeStrong(&v6->_continuityDevice, a3);
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  orderedCells = v7->_orderedCells;
  v7->_orderedCells = v8;

  v10 = [(DSContinuityDetailController *)v7 headerView];
  v11 = [v5 name];
  [v10 setTitle:v11];

  v12 = [(DSContinuityDetailController *)v7 headerView];
  v13 = [(DSContinuityDetailController *)v7 localizedDetailText];
  [v12 setDetailText:v13];

  v14 = [v5 model];
  if (v14)
  {

LABEL_5:
    v16 = v7->_orderedCells;
    v17 = DSUILocStringForKey(@"CONTINUITY_DEVICE_MODEL");
    v18 = [DSUIUtilities valueForUnfinalizedString:v17];
    v19 = [(DSContinuityDetailController *)v7 marketingNameForDevice:v5];
    v20 = [(DSContinuityDetailController *)v7 cellWithText:v18 secondaryText:v19];
    [(NSMutableArray *)v16 addObject:v20];

    goto LABEL_6;
  }

  v15 = [v5 marketingName];

  if (v15)
  {
    goto LABEL_5;
  }

LABEL_6:
  v21 = [v5 serialNumber];

  if (v21)
  {
    v22 = v7->_orderedCells;
    v23 = DSUILocStringForKey(@"CONTINUITY_DEVICE_SERIAL_NUMBER");
    v24 = [DSUIUtilities valueForUnfinalizedString:v23];
    v25 = [v5 serialNumber];
    v26 = [(DSContinuityDetailController *)v7 cellWithText:v24 secondaryText:v25];
    [(NSMutableArray *)v22 addObject:v26];
  }

  v27 = [v5 initialDiscoveryDate];

  if (v27)
  {
    v28 = v7->_orderedCells;
    v29 = DSUILocStringForKey(@"CONTINUITY_TIME_PAIRED_2");
    v30 = [DSUIUtilities valueForUnfinalizedString:v29];
    v31 = [v5 initialDiscoveryDate];
    v32 = [(DSContinuityDetailController *)v7 stringFromDate:v31];
    v33 = [(DSContinuityDetailController *)v7 cellWithText:v30 secondaryText:v32];
    [(NSMutableArray *)v28 addObject:v33];
  }

LABEL_10:

  return v7;
}

- (id)cellWithText:(id)a3 secondaryText:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x277D75B48];
  v7 = a3;
  v8 = objc_alloc_init(v6);
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
  if (v5)
  {
    [v9 setSecondaryText:v5];
  }

  [v8 setContentConfiguration:v9];

  return v8;
}

- (void)presentRemoveDeviceAlert
{
  v3 = MEMORY[0x277CCACA8];
  v4 = DSUILocStringForKey(@"CONTINUITY_DISCONNECT_SINGLE_TITLE");
  v5 = [(DSContinuityDetailController *)self continuityDevice];
  v6 = [v5 name];
  v7 = [v3 stringWithFormat:v4, v6];

  v8 = MEMORY[0x277CCACA8];
  v9 = DSUILocStringForKey(@"CONTINUITY_DISCONNECT_SINGLE_CONFIRMATION");
  v10 = [(DSContinuityDetailController *)self continuityDevice];
  v11 = [v10 name];
  v12 = [v8 stringWithFormat:v9, v11];

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
  v3 = [(OBTableWelcomeController *)self tableView];
  [v3 setEditing:0];

  v4 = [(OBTableWelcomeController *)self tableView];
  [v4 setAllowsSelection:0];

  v5 = DSUILocStringForKey(@"CONTINUITY_STOP");
  v6 = [DSUIUtilities valueForUnfinalizedString:v5];
  v7 = [DSUIUtilities setUpBoldButtonForController:self title:v6 target:self selector:sel_presentRemoveDeviceAlert];
  [(DSTableWelcomeController *)self setBoldButton:v7];
}

- (void)returnFromDetailAndRemoveComputer
{
  v4 = [(DSContinuityDetailController *)self delegate];
  v3 = [(DSContinuityDetailController *)self continuityDevice];
  [v4 returnFromDetailAndRemoveDevice:v3];
}

- (id)localizedDetailText
{
  v3 = [(DSContinuityDetailController *)self continuityDevice];
  v4 = [v3 formattedSessionStart];
  if (!v4)
  {
    v13 = &stru_285BA4988;
    goto LABEL_5;
  }

  v5 = v4;
  v6 = [(DSContinuityDetailController *)self continuityDevice];
  v7 = [v6 formattedSessionDuration];

  if (v7)
  {
    v8 = MEMORY[0x277CCACA8];
    v3 = DSUILocStringForKey(@"CONTINUITY_SESSION_DETAIL");
    v9 = [(DSContinuityDetailController *)self continuityDevice];
    v10 = [v9 formattedSessionStart];
    v11 = [(DSContinuityDetailController *)self continuityDevice];
    v12 = [v11 formattedSessionDuration];
    v13 = [v8 stringWithFormat:v3, v10, v12];

LABEL_5:
    goto LABEL_7;
  }

  v13 = &stru_285BA4988;
LABEL_7:

  return v13;
}

- (id)stringFromDate:(id)a3
{
  v3 = MEMORY[0x277CCA968];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setTimeStyle:1];
  [v5 setDateStyle:1];
  v6 = [v5 stringFromDate:v4];

  return v6;
}

- (id)marketingNameForDevice:(id)a3
{
  v3 = a3;
  v4 = [v3 marketingName];

  if (v4)
  {
    v5 = [v3 marketingName];
  }

  else
  {
    v6 = MEMORY[0x277D19238];
    v7 = [v3 model];

    v5 = [v6 marketingNameForModel:v7];
    v3 = v7;
  }

  return v5;
}

- (void)back
{
  v3 = [(DSContinuityDetailController *)self navigationController];
  v2 = [v3 popViewControllerAnimated:1];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(DSContinuityDetailController *)self orderedCells];
  v7 = [v5 row];

  v8 = [v6 objectAtIndex:v7];

  return v8;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(DSContinuityDetailController *)self orderedCells:a3];
  v5 = [v4 count];

  return v5;
}

- (DSContinuityDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end