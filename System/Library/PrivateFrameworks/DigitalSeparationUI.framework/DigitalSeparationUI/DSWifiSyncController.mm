@interface DSWifiSyncController
- (DSNavigationDelegate)delegate;
- (DSWifiSyncController)init;
- (id)dateDescription:(id)description;
- (id)localizedDetailText;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)titleForPairedComputer:(id)computer;
- (void)_updateButtons;
- (void)addPairedDevices:(id)devices;
- (void)finalizeComputerReviewAndPushNextPane;
- (void)finalizePairingReviewReport;
- (void)learnMoreWifiSyncPressed;
- (void)presentFetchedErrorAlert;
- (void)presentRemoveAllDevicesAlert;
- (void)presentRemoveErrorAlert:(id)alert;
- (void)presentRemoveSelectedDevicesAlert;
- (void)reloadDetailText;
- (void)removeAllPairedDevicesAndPushNextPane;
- (void)removeDetailViewControllerFromStack;
- (void)removeSelectedPairedDevicesAndPushNextPane;
- (void)reportReviewedComputers:(id)computers;
- (void)reportUnpairedComputers:(id)computers;
- (void)returnFromDetailAndRemoveComputer:(id)computer;
- (void)shouldShowWithCompletion:(id)completion;
- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path;
- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation DSWifiSyncController

- (DSWifiSyncController)init
{
  if (+[DSFeatureFlags isNaturalUIEnabled])
  {
    v25.receiver = self;
    v25.super_class = DSWifiSyncController;
    v3 = [(DSTableWelcomeController *)&v25 initWithTitle:&stru_285BA4988 detailText:&stru_285BA4988 symbolName:@"arrow.triangle.2.circlepath.circle.fill" adoptTableViewScrollView:0 shouldShowSearchBar:0];
    if (!v3)
    {
      return v3;
    }

    goto LABEL_5;
  }

  v4 = MEMORY[0x277D755D0];
  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  v6 = [v4 configurationWithHierarchicalColor:systemBlueColor];

  v7 = [MEMORY[0x277D755B8] systemImageNamed:@"arrow.triangle.2.circlepath.circle.fill" withConfiguration:v6];
  v8 = [v7 imageWithRenderingMode:2];

  v24.receiver = self;
  v24.super_class = DSWifiSyncController;
  v3 = [(DSTableWelcomeController *)&v24 initWithTitle:&stru_285BA4988 detailText:&stru_285BA4988 icon:v8 adoptTableViewScrollView:0 shouldShowSearchBar:0];

  if (v3)
  {
LABEL_5:
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(DSWifiSyncController *)v3 setSelectedPairedComputers:v9];

    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(DSWifiSyncController *)v3 setPairedComputers:v10];

    v11 = objc_alloc_init(MEMORY[0x277D054E0]);
    [(DSWifiSyncController *)v3 setWifiSyncStore:v11];

    v12 = os_log_create("com.apple.DigitalSeparation", "DSWifiSyncController");
    v13 = DSLog_12;
    DSLog_12 = v12;

    headerView = [(DSWifiSyncController *)v3 headerView];
    v15 = DSUILocStringForKey(@"WIFI_SYNC_TITLE");
    [headerView setTitle:v15];

    headerView2 = [(DSWifiSyncController *)v3 headerView];
    localizedDetailText = [(DSWifiSyncController *)v3 localizedDetailText];
    [headerView2 setDetailText:localizedDetailText];

    v18 = DSUILocStringForKey(@"SKIP");
    delegate = [(DSWifiSyncController *)v3 delegate];
    v20 = [DSUIUtilities setUpBoldButtonForController:v3 title:v18 target:delegate selector:sel_pushNextPane];
    [(DSTableWelcomeController *)v3 setBoldButton:v20];

    v21 = DSUILocStringForKey(@"WIFI_SYNC_REMOVE_ALL");
    v22 = [DSUIUtilities setUpLinkButtonForController:v3 title:v21 target:v3 selector:sel_presentRemoveAllDevicesAlert];
    [(DSTableWelcomeController *)v3 setLinkButton:v22];
  }

  return v3;
}

- (void)addPairedDevices:(id)devices
{
  devicesCopy = devices;
  [(NSMutableArray *)self->_pairedComputers removeAllObjects];
  wifiSyncStore = [(DSWifiSyncController *)self wifiSyncStore];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__DSWifiSyncController_addPairedDevices___block_invoke;
  v7[3] = &unk_278F75CE0;
  v7[4] = self;
  v8 = devicesCopy;
  v6 = devicesCopy;
  [wifiSyncStore fetchPairedDevicesOnQueue:MEMORY[0x277D85CD0] completion:v7];
}

void __41__DSWifiSyncController_addPairedDevices___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    if (os_log_type_enabled(DSLog_12, OS_LOG_TYPE_ERROR))
    {
      __41__DSWifiSyncController_addPairedDevices___block_invoke_cold_1();
    }

    v7 = [*(a1 + 32) isViewLoaded];
    v8 = *(a1 + 32);
    if (v7)
    {
      [v8 presentFetchedErrorAlert];
    }

    else
    {
      [v8 setFetchError:v5];
    }
  }

  v9 = [*(a1 + 32) pairedComputers];
  [v9 addObjectsFromArray:v6];

  (*(*(a1 + 40) + 16))();
}

- (void)shouldShowWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__DSWifiSyncController_shouldShowWithCompletion___block_invoke;
  v6[3] = &unk_278F75AC8;
  objc_copyWeak(&v8, &location);
  v5 = completionCopy;
  v7 = v5;
  [(DSWifiSyncController *)self addPairedDevices:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __49__DSWifiSyncController_shouldShowWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(*(a1 + 32) + 16))(*(a1 + 32), [WeakRetained[168] count] != 0);
  [WeakRetained reloadDetailText];
  v2 = [WeakRetained tableView];
  [v2 reloadData];
}

- (void)removeAllPairedDevicesAndPushNextPane
{
  pairedComputers = [(DSWifiSyncController *)self pairedComputers];
  wifiSyncStore = [(DSWifiSyncController *)self wifiSyncStore];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__DSWifiSyncController_removeAllPairedDevicesAndPushNextPane__block_invoke;
  v6[3] = &unk_278F759E8;
  v6[4] = self;
  v7 = pairedComputers;
  v5 = pairedComputers;
  [wifiSyncStore removeAllPairedDevicesOnQueue:MEMORY[0x277D85CD0] completion:v6];
}

void __61__DSWifiSyncController_removeAllPairedDevicesAndPushNextPane__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(DSLog_12, OS_LOG_TYPE_ERROR))
    {
      __61__DSWifiSyncController_removeAllPairedDevicesAndPushNextPane__block_invoke_cold_1();
    }

    v4 = *(a1 + 32);
    v5 = DSUILocStringForKey(@"WIFI_SYNC_REMOVE_ERROR_TITLE");
    v6 = DSUILocStringForKey(@"WIFI_SYNC_REMOVE_ERROR_DETAIL");
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __61__DSWifiSyncController_removeAllPairedDevicesAndPushNextPane__block_invoke_341;
    v9[3] = &unk_278F750A0;
    v10 = *(a1 + 32);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __61__DSWifiSyncController_removeAllPairedDevicesAndPushNextPane__block_invoke_2;
    v8[3] = &unk_278F750A0;
    v8[4] = v10;
    [v4 presentErrorAlertWithTitle:v5 message:v6 continueHandler:v9 tryAgainHandler:v8];
  }

  else
  {
    [*(a1 + 32) reportUnpairedComputers:*(a1 + 40)];
    v7 = [*(a1 + 32) delegate];
    [v7 pushNextPane];
  }
}

void __61__DSWifiSyncController_removeAllPairedDevicesAndPushNextPane__block_invoke_341(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 pushNextPane];
}

- (void)reloadDetailText
{
  headerView = [(DSWifiSyncController *)self headerView];
  localizedDetailText = [(DSWifiSyncController *)self localizedDetailText];
  [headerView setDetailText:localizedDetailText];
}

- (id)localizedDetailText
{
  v3 = [(NSMutableArray *)self->_pairedComputers count];
  wifiSyncStore = [(DSWifiSyncController *)self wifiSyncStore];
  fetchWifiSyncStatus = [wifiSyncStore fetchWifiSyncStatus];

  if (fetchWifiSyncStatus)
  {
    v6 = MGGetBoolAnswer();
    v7 = @"WIFI_SYNC_DETAIL_MULTIPLE";
    if (v3 < 2)
    {
      v7 = @"WIFI_SYNC_DETAIL_SINGLE";
    }

    v8 = @"WLAN_SYNC_DETAIL_SINGLE";
    if (v3 >= 2)
    {
      v8 = @"WLAN_SYNC_DETAIL_MULTIPLE";
    }

    if (v6)
    {
      v9 = v8;
    }

    else
    {
      v9 = v7;
    }
  }

  else if (v3 >= 2)
  {
    v9 = @"CABLE_SYNC_DETAIL_MULTIPLE";
  }

  else
  {
    v9 = @"CABLE_SYNC_DETAIL_SINGLE";
  }

  v10 = DSUILocStringForKey(v9);

  return v10;
}

- (void)learnMoreWifiSyncPressed
{
  delegate = [(DSWifiSyncController *)self delegate];
  v3 = DSUILocStringForKey(@"WIFI_SYNC_LEARN_MORE_URL");
  [delegate learnMorePressedForController:self withURL:v3];
}

- (void)presentFetchedErrorAlert
{
  v3 = MEMORY[0x277D75110];
  v4 = DSUILocStringForKey(@"WIFI_SYNC_FETCH_ERROR_TITLE");
  v5 = DSUILocStringForKey(@"WIFI_SYNC_FETCH_ERROR_DETAIL");
  v6 = [v3 alertControllerWithTitle:v4 message:v5 preferredStyle:1];

  [(DSTableWelcomeController *)self presentErrorAlertController:v6];
}

- (void)presentRemoveErrorAlert:(id)alert
{
  v4 = MEMORY[0x277D75110];
  v5 = DSUILocStringForKey(@"WIFI_SYNC_REMOVE_ERROR_TITLE");
  v6 = DSUILocStringForKey(@"WIFI_SYNC_REMOVE_ERROR_DETAIL");
  v7 = [v4 alertControllerWithTitle:v5 message:v6 preferredStyle:1];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__DSWifiSyncController_presentRemoveErrorAlert___block_invoke;
  v9[3] = &unk_278F75650;
  v9[4] = self;
  v10 = v7;
  v8 = v7;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

- (void)viewDidLoad
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*self);
  OUTLINED_FUNCTION_0(&dword_248C7E000, a2, a3, "Error occurred during data fetch: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __35__DSWifiSyncController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadDetailText];
  v1 = [WeakRetained tableView];
  [v1 reloadData];
}

- (id)titleForPairedComputer:(id)computer
{
  computerCopy = computer;
  deviceName = [computerCopy deviceName];
  if (deviceName)
  {
    v5 = deviceName;
    deviceName2 = [computerCopy deviceName];
    v7 = [deviceName2 length];

    if (v7)
    {
      deviceName3 = [computerCopy deviceName];
LABEL_6:
      v11 = deviceName3;
      goto LABEL_8;
    }
  }

  marketingName = [computerCopy marketingName];
  v10 = [marketingName isEqualToString:@"Windows PC"];

  if (v10)
  {
    deviceName3 = DSUILocStringForKey(@"WINDOWS_PC");
    goto LABEL_6;
  }

  v11 = &stru_285BA4988;
LABEL_8:

  return v11;
}

- (id)dateDescription:(id)description
{
  if (description)
  {
    v3 = MEMORY[0x277CCA968];
    descriptionCopy = description;
    v5 = objc_alloc_init(v3);
    [v5 setDateStyle:1];
    v6 = [v5 stringFromDate:descriptionCopy];

    v7 = MEMORY[0x277CCACA8];
    v8 = DSUILocStringForKey(@"WIFI_SYNC_TIME_SYNCED");
    v9 = [v7 localizedStringWithFormat:v8, v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = -[NSMutableArray objectAtIndexedSubscript:](self->_pairedComputers, "objectAtIndexedSubscript:", [pathCopy row]);
  tableView = [(OBTableWelcomeController *)self tableView];
  v8 = [(DSWifiSyncController *)self titleForPairedComputer:v6];
  datePaired = [v6 datePaired];
  v10 = [(DSWifiSyncController *)self dateDescription:datePaired];
  v11 = [DSIconTableViewCell iconTableViewCellFromTableView:tableView withText:v8 detail:v10 icon:0];

  datePaired2 = [v6 datePaired];
  if (datePaired2 || ([v6 serialNumber], (datePaired2 = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_4:
    [v11 setEditingAccessoryType:4];
    goto LABEL_5;
  }

  marketingName = [v6 marketingName];

  if (marketingName)
  {
    goto LABEL_4;
  }

LABEL_5:
  selectedPairedComputers = [(DSWifiSyncController *)self selectedPairedComputers];
  v14 = [selectedPairedComputers containsObject:v6];

  if (v14)
  {
    tableView2 = [(OBTableWelcomeController *)self tableView];
    [tableView2 selectRowAtIndexPath:pathCopy animated:1 scrollPosition:0];
  }

  return v11;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  selectedPairedComputers = [(DSWifiSyncController *)self selectedPairedComputers];
  pairedComputers = self->_pairedComputers;
  v8 = [pathCopy row];

  v9 = [(NSMutableArray *)pairedComputers objectAtIndex:v8];
  [selectedPairedComputers addObject:v9];

  [(DSWifiSyncController *)self _updateButtons];
}

- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path
{
  pathCopy = path;
  selectedPairedComputers = [(DSWifiSyncController *)self selectedPairedComputers];
  pairedComputers = self->_pairedComputers;
  v8 = [pathCopy row];

  v9 = [(NSMutableArray *)pairedComputers objectAtIndex:v8];
  [selectedPairedComputers removeObject:v9];

  [(DSWifiSyncController *)self _updateButtons];
}

- (void)removeSelectedPairedDevicesAndPushNextPane
{
  selectedPairedComputers = [(DSWifiSyncController *)self selectedPairedComputers];
  objc_initWeak(&location, self);
  wifiSyncStore = [(DSWifiSyncController *)self wifiSyncStore];
  v5 = MEMORY[0x277D85CD0];
  v6 = MEMORY[0x277D85CD0];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__DSWifiSyncController_removeSelectedPairedDevicesAndPushNextPane__block_invoke;
  v8[3] = &unk_278F75D08;
  objc_copyWeak(&v11, &location);
  v7 = selectedPairedComputers;
  v9 = v7;
  selfCopy = self;
  [wifiSyncStore removePairedDevices:v7 onQueue:v5 withCompletion:v8];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __66__DSWifiSyncController_removeSelectedPairedDevicesAndPushNextPane__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (v3)
  {
    if (os_log_type_enabled(DSLog_12, OS_LOG_TYPE_ERROR))
    {
      __66__DSWifiSyncController_removeSelectedPairedDevicesAndPushNextPane__block_invoke_cold_1();
    }

    [v5 presentRemoveErrorAlert:v3];
  }

  else
  {
    [WeakRetained reportUnpairedComputers:*(a1 + 32)];
    v6 = [v5 selectedPairedComputers];
    [v6 removeAllObjects];

    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __66__DSWifiSyncController_removeSelectedPairedDevicesAndPushNextPane__block_invoke_388;
    v7[3] = &unk_278F75408;
    v7[4] = *(a1 + 40);
    [v5 addPairedDevices:v7];
  }
}

uint64_t __66__DSWifiSyncController_removeSelectedPairedDevicesAndPushNextPane__block_invoke_388(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  [v2 reloadData];

  v3 = *(a1 + 32);

  return [v3 finalizeComputerReviewAndPushNextPane];
}

- (void)presentRemoveAllDevicesAlert
{
  v3 = MEMORY[0x277D75110];
  v4 = DSUILocStringForKey(@"WIFI_SYNC_DISCONNECT_TITLE");
  v5 = DSUILocStringForKey(@"WIFI_SYNC_DISCONNECT_CONFIRMATION");
  v6 = [v3 alertControllerWithTitle:v4 message:v5 preferredStyle:0];

  v7 = MEMORY[0x277D750F8];
  v8 = DSUILocStringForKey(@"CANCEL");
  v9 = [v7 actionWithTitle:v8 style:1 handler:0];

  v10 = MEMORY[0x277D750F8];
  v11 = DSUILocStringForKey(@"WIFI_SYNC_DISCONNECT_ACTION");
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __52__DSWifiSyncController_presentRemoveAllDevicesAlert__block_invoke;
  v13[3] = &unk_278F750A0;
  v13[4] = self;
  v12 = [v10 actionWithTitle:v11 style:2 handler:v13];

  [v6 addAction:v12];
  [v6 addAction:v9];
  [(DSWifiSyncController *)self presentViewController:v6 animated:1 completion:0];
}

- (void)presentRemoveSelectedDevicesAlert
{
  v3 = MEMORY[0x277D75110];
  v4 = DSUILocStringForKey(@"WIFI_SYNC_DISCONNECT_TITLE");
  v5 = DSUILocStringForKey(@"WIFI_SYNC_DISCONNECT_CONFIRMATION");
  v6 = [v3 alertControllerWithTitle:v4 message:v5 preferredStyle:0];

  v7 = MEMORY[0x277D750F8];
  v8 = DSUILocStringForKey(@"CANCEL");
  v9 = [v7 actionWithTitle:v8 style:1 handler:0];

  v10 = MEMORY[0x277D750F8];
  v11 = DSUILocStringForKey(@"WIFI_SYNC_DISCONNECT_ACTION");
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __57__DSWifiSyncController_presentRemoveSelectedDevicesAlert__block_invoke;
  v13[3] = &unk_278F750A0;
  v13[4] = self;
  v12 = [v10 actionWithTitle:v11 style:2 handler:v13];

  [v6 addAction:v12];
  [v6 addAction:v9];
  [(DSWifiSyncController *)self presentViewController:v6 animated:1 completion:0];
}

- (void)_updateButtons
{
  v3 = [(NSMutableArray *)self->_selectedPairedComputers count];
  v4 = v3 == 0;
  if (v3)
  {
    v5 = @"WIFI_SYNC_REMOVE";
  }

  else
  {
    v5 = @"SKIP";
  }

  if (v4)
  {
    v6 = &selRef_finalizeComputerReviewAndPushNextPane;
  }

  else
  {
    v6 = &selRef_presentRemoveSelectedDevicesAlert;
  }

  v14 = DSUILocStringForKey(v5);
  v7 = *v6;
  boldButton = [(DSTableWelcomeController *)self boldButton];
  [boldButton removeTarget:0 action:0 forControlEvents:0xFFFFFFFFLL];

  boldButton2 = [(DSTableWelcomeController *)self boldButton];
  [boldButton2 setTitle:v14 forState:0];

  boldButton3 = [(DSTableWelcomeController *)self boldButton];
  [boldButton3 addTarget:self action:v7 forControlEvents:64];

  linkButton = [(DSTableWelcomeController *)self linkButton];
  v12 = DSUILocStringForKey(@"WIFI_SYNC_REMOVE_ALL");
  [linkButton setTitle:v12 forState:0];

  linkButton2 = [(DSTableWelcomeController *)self linkButton];
  [linkButton2 addTarget:self action:sel_presentRemoveAllDevicesAlert forControlEvents:64];
}

- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = -[NSMutableArray objectAtIndexedSubscript:](self->_pairedComputers, "objectAtIndexedSubscript:", [path row]);
  v6 = [[DSWifiSyncDetailController alloc] initWithPairedComputer:v5];
  [(DSWifiSyncDetailController *)v6 setDelegate:self];
  v10[0] = v5;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  [(DSWifiSyncController *)self reportReviewedComputers:v7];

  navigationController = [(DSWifiSyncController *)self navigationController];
  [navigationController pushViewController:v6 animated:1];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)removeDetailViewControllerFromStack
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  navigationController = [(DSWifiSyncController *)self navigationController];
  viewControllers = [navigationController viewControllers];

  v6 = [viewControllers countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(viewControllers);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        v11 = objc_opt_class();
        if (v11 != objc_opt_class())
        {
          [v3 addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [viewControllers countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  navigationController2 = [(DSWifiSyncController *)self navigationController];
  [navigationController2 setViewControllers:v3];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)returnFromDetailAndRemoveComputer:(id)computer
{
  computerCopy = computer;
  wifiSyncStore = self->_wifiSyncStore;
  v6 = [MEMORY[0x277CBEA60] arrayWithObject:computerCopy];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__DSWifiSyncController_returnFromDetailAndRemoveComputer___block_invoke;
  v8[3] = &unk_278F759E8;
  v8[4] = self;
  v9 = computerCopy;
  v7 = computerCopy;
  [(DSWifiSyncStore *)wifiSyncStore removePairedDevices:v6 onQueue:MEMORY[0x277D85CD0] withCompletion:v8];
}

void __58__DSWifiSyncController_returnFromDetailAndRemoveComputer___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(DSLog_12, OS_LOG_TYPE_ERROR))
    {
      __58__DSWifiSyncController_returnFromDetailAndRemoveComputer___block_invoke_cold_1();
    }

    [*(a1 + 32) presentRemoveErrorAlert:v3];
  }

  else
  {
    v4 = [*(a1 + 32) selectedPairedComputers];
    [v4 removeAllObjects];

    objc_initWeak(&location, *(a1 + 32));
    v5 = *(a1 + 32);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __58__DSWifiSyncController_returnFromDetailAndRemoveComputer___block_invoke_411;
    v6[3] = &unk_278F752A8;
    objc_copyWeak(&v8, &location);
    v7 = *(a1 + 40);
    [v5 addPairedDevices:v6];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __58__DSWifiSyncController_returnFromDetailAndRemoveComputer___block_invoke_411(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateButtons];
  v3 = [WeakRetained tableView];
  [v3 reloadData];

  v4 = [WeakRetained pairedComputers];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [WeakRetained navigationController];
    v7 = [v6 popViewControllerAnimated:1];
  }

  else
  {
    v8 = [WeakRetained delegate];
    [v8 pushNextPane];

    v11[0] = *(a1 + 32);
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    [WeakRetained reportUnpairedComputers:v9];

    [WeakRetained removeDetailViewControllerFromStack];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)finalizeComputerReviewAndPushNextPane
{
  [(DSWifiSyncController *)self finalizePairingReviewReport];
  delegate = [(DSWifiSyncController *)self delegate];
  [delegate pushNextPane];
}

- (void)finalizePairingReviewReport
{
  v22 = *MEMORY[0x277D85DE8];
  delegate = [(DSWifiSyncController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    unpairedComputers = [delegate unpairedComputers];
    v5 = [unpairedComputers count];

    if (v5)
    {
      array = [MEMORY[0x277CBEB18] array];
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      pairedComputers = [(DSWifiSyncController *)self pairedComputers];
      v8 = [pairedComputers countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v18;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v18 != v10)
            {
              objc_enumerationMutation(pairedComputers);
            }

            v12 = *(*(&v17 + 1) + 8 * i);
            lockdownFrameworkKey = [v12 lockdownFrameworkKey];

            if (lockdownFrameworkKey)
            {
              lockdownFrameworkKey2 = [v12 lockdownFrameworkKey];
              [array addObject:lockdownFrameworkKey2];
            }
          }

          v9 = [pairedComputers countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v9);
      }

      if (objc_opt_respondsToSelector())
      {
        reviewedComputers = [delegate reviewedComputers];
        [reviewedComputers addObjectsFromArray:array];
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)reportUnpairedComputers:(id)computers
{
  v34 = *MEMORY[0x277D85DE8];
  computersCopy = computers;
  delegate = [(DSWifiSyncController *)self delegate];
  array = [MEMORY[0x277CBEB18] array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = computersCopy;
  v8 = [v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v29;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v28 + 1) + 8 * i);
        lockdownFrameworkKey = [v12 lockdownFrameworkKey];

        if (lockdownFrameworkKey)
        {
          lockdownFrameworkKey2 = [v12 lockdownFrameworkKey];
          [array addObject:lockdownFrameworkKey2];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v9);
  }

  if (objc_opt_respondsToSelector())
  {
    unpairedComputers = [delegate unpairedComputers];
    [unpairedComputers addObjectsFromArray:array];
  }

  if (objc_opt_respondsToSelector())
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v16 = array;
    v17 = [v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v25;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v25 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v24 + 1) + 8 * j);
          reviewedComputers = [delegate reviewedComputers];
          [reviewedComputers removeObject:v21];
        }

        v18 = [v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v18);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)reportReviewedComputers:(id)computers
{
  v22 = *MEMORY[0x277D85DE8];
  computersCopy = computers;
  delegate = [(DSWifiSyncController *)self delegate];
  array = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = computersCopy;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        lockdownFrameworkKey = [v12 lockdownFrameworkKey];

        if (lockdownFrameworkKey)
        {
          lockdownFrameworkKey2 = [v12 lockdownFrameworkKey];
          [array addObject:lockdownFrameworkKey2];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  if (objc_opt_respondsToSelector())
  {
    reviewedComputers = [delegate reviewedComputers];
    [reviewedComputers addObjectsFromArray:array];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (DSNavigationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __41__DSWifiSyncController_addPairedDevices___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_248C7E000, v0, v1, "Failed to fetch paired devices with error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __61__DSWifiSyncController_removeAllPairedDevicesAndPushNextPane__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_248C7E000, v0, v1, "Failed to remove all paired devices with error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __66__DSWifiSyncController_removeSelectedPairedDevicesAndPushNextPane__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_248C7E000, v0, v1, "Error occurred when attempting to remove selected devices: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __58__DSWifiSyncController_returnFromDetailAndRemoveComputer___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_248C7E000, v0, v1, "Error occured when removing computer from detail controller: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end