@interface DSContinuityController
- (DSContinuityController)init;
- (DSNavigationDelegate)delegate;
- (id)allComputerNames;
- (id)computerNameWithUUID:(id)a3;
- (id)dateDescription:(id)a3;
- (id)selectedComputerNames;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_updateButtons;
- (void)getDevicesWithCompletion:(id)a3;
- (void)presentLearnMore;
- (void)presentRemoveAllDevicesAlert;
- (void)presentRemoveSelectedDevicesAlert;
- (void)presentUnpairErrorAlert:(id)a3;
- (void)remoteDeviceListModified:(id)a3;
- (void)removeAllPairedDevicesAndPushNextPane;
- (void)removeDetailViewControllerFromStack;
- (void)removeSelectedPairedDevicesAndPushNextPane;
- (void)returnFromDetailAndRemoveDevice:(id)a3;
- (void)shouldShowWithCompletion:(id)a3;
- (void)tableView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4;
- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation DSContinuityController

- (DSContinuityController)init
{
  v3 = +[DSFeatureFlags isNaturalUIEnabled];
  v4 = DSUILocStringForKey(@"CONTINUITY_TITLE");
  v5 = DSUILocStringForKey(@"CONTINUITY_DETAIL");
  if (v3)
  {
    v20.receiver = self;
    v20.super_class = DSContinuityController;
    v6 = [(DSTableWelcomeController *)&v20 initWithTitle:v4 detailText:v5 symbolName:@"macbook.and.iphone" adoptTableViewScrollView:0 shouldShowSearchBar:0];
  }

  else
  {
    v7 = [MEMORY[0x277D755B8] systemImageNamed:@"macbook.and.iphone"];
    v19.receiver = self;
    v19.super_class = DSContinuityController;
    v6 = [(DSTableWelcomeController *)&v19 initWithTitle:v4 detailText:v5 icon:v7 adoptTableViewScrollView:0 shouldShowSearchBar:0];
  }

  if (v6)
  {
    v8 = os_log_create("com.apple.DigitalSeparation", "DSContinuityController");
    v9 = DSLog_4;
    DSLog_4 = v8;

    v10 = DSUILocStringForKey(@"SKIP");
    v11 = [(DSContinuityController *)v6 delegate];
    v12 = [DSUIUtilities setUpBoldButtonForController:v6 title:v10 target:v11 selector:sel_pushNextPane];
    [(DSTableWelcomeController *)v6 setBoldButton:v12];

    v13 = DSUILocStringForKey(@"CONTINUITY_STOP_ALL");
    v14 = [DSUIUtilities setUpLinkButtonForController:v6 title:v13 target:v6 selector:sel_presentRemoveAllDevicesAlert];
    [(DSTableWelcomeController *)v6 setLinkButton:v14];

    v15 = [MEMORY[0x277CBEB18] array];
    [(DSContinuityController *)v6 setSelectedDevices:v15];

    v16 = objc_alloc_init(MEMORY[0x277D05488]);
    [(DSContinuityController *)v6 setContinuityStore:v16];

    v17 = +[DSDeviceManager sharedInstance];
    [v17 refresh];
  }

  return v6;
}

uint64_t __41__DSContinuityController_viewWillAppear___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  [v2 reloadData];

  v3 = *(a1 + 32);

  return [v3 _updateButtons];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = DSContinuityController;
  [(DSTableWelcomeController *)&v4 viewDidLoad];
  v3 = [DSUIUtilities setUpLearnMoreButtonForController:self selector:sel_presentLearnMore];
}

- (void)shouldShowWithCompletion:(id)a3
{
  v4 = a3;
  if (_os_feature_enabled_impl())
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __51__DSContinuityController_shouldShowWithCompletion___block_invoke;
    v5[3] = &unk_278F75718;
    v5[4] = self;
    v6 = v4;
    [(DSContinuityController *)self getDevicesWithCompletion:v5];
  }

  else
  {
    (*(v4 + 2))(v4, 0);
  }
}

void __51__DSContinuityController_shouldShowWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) continuityDevices];
  (*(v1 + 16))(v1, [v2 count] != 0);
}

- (void)getDevicesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(DSContinuityController *)self continuityStore];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__DSContinuityController_getDevicesWithCompletion___block_invoke;
  v7[3] = &unk_278F75998;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 fetchPairedDevicesWithCompletion:v7];
}

void __51__DSContinuityController_getDevicesWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v51 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = DSLog_4;
    if (os_log_type_enabled(DSLog_4, OS_LOG_TYPE_ERROR))
    {
      __51__DSContinuityController_getDevicesWithCompletion___block_invoke_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  else
  {
    v31 = a1;
    v35 = +[DSDeviceManager sharedInstance];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v32 = v5;
    obj = v5;
    v36 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v36)
    {
      v34 = *v46;
      do
      {
        v14 = 0;
        do
        {
          if (*v46 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v37 = v14;
          v15 = *(*(&v45 + 1) + 8 * v14);
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v16 = [v35 remoteDevices];
          v17 = [v16 countByEnumeratingWithState:&v41 objects:v49 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v42;
            do
            {
              for (i = 0; i != v18; ++i)
              {
                if (*v42 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v21 = *(*(&v41 + 1) + 8 * i);
                v22 = [v15 pushToken];
                v23 = [v21 pushToken];
                v24 = [v22 isEqualToString:v23];

                if (v24)
                {
                  v25 = DSLog_4;
                  if (os_log_type_enabled(DSLog_4, OS_LOG_TYPE_INFO))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_248C7E000, v25, OS_LOG_TYPE_INFO, "Continuity: matched AK devices by push token.", buf, 2u);
                  }

                  v26 = [v21 serialNumber];
                  [v15 setSerialNumber:v26];

                  v27 = [v21 model];
                  [v15 setModel:v27];
                }
              }

              v18 = [v16 countByEnumeratingWithState:&v41 objects:v49 count:16];
            }

            while (v18);
          }

          v14 = v37 + 1;
        }

        while (v37 + 1 != v36);
        v36 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v36);
    }

    v28 = [obj sortedArrayUsingComparator:&__block_literal_global_10];
    v29 = [MEMORY[0x277CBEB18] arrayWithArray:v28];
    a1 = v31;
    [*(v31 + 32) setContinuityDevices:v29];

    v6 = 0;
    v5 = v32;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__DSContinuityController_getDevicesWithCompletion___block_invoke_2;
  block[3] = &unk_278F75490;
  v39 = *(a1 + 40);
  dispatch_async(MEMORY[0x277D85CD0], block);

  v30 = *MEMORY[0x277D85DE8];
}

uint64_t __51__DSContinuityController_getDevicesWithCompletion___block_invoke_368(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)presentRemoveAllDevicesAlert
{
  v3 = DSUILocStringForKey(@"CONTINUITY_DISCONNECT_TITLE");
  v4 = MEMORY[0x277CCACA8];
  v5 = DSUILocStringForKey(@"CONTINUITY_DISCONNECT_ALL_CONFIRMATION");
  v6 = MEMORY[0x277CCAAF0];
  v7 = [(DSContinuityController *)self allComputerNames];
  v8 = [v6 localizedStringByJoiningStrings:v7];
  v9 = [v4 stringWithFormat:v5, v8];

  v10 = [MEMORY[0x277D75110] alertControllerWithTitle:v3 message:v9 preferredStyle:0];
  v11 = MEMORY[0x277D750F8];
  v12 = DSUILocStringForKey(@"CANCEL");
  v13 = [v11 actionWithTitle:v12 style:1 handler:&__block_literal_global_386];

  v14 = MEMORY[0x277D750F8];
  v15 = DSUILocStringForKey(@"CONTINUITY_STOP");
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __54__DSContinuityController_presentRemoveAllDevicesAlert__block_invoke_2;
  v17[3] = &unk_278F750A0;
  v17[4] = self;
  v16 = [v14 actionWithTitle:v15 style:2 handler:v17];

  [v10 addAction:v16];
  [v10 addAction:v13];
  [(DSContinuityController *)self presentViewController:v10 animated:1 completion:0];
}

- (void)presentRemoveSelectedDevicesAlert
{
  v3 = [(DSContinuityController *)self selectedDevices];
  v4 = [v3 count];

  if (v4 == 1)
  {
    v5 = [(DSContinuityController *)self selectedDevices];
    v6 = [v5 firstObject];
    v7 = [(DSContinuityController *)self computerNameWithUUID:v6];

    v8 = MEMORY[0x277CCACA8];
    v9 = DSUILocStringForKey(@"CONTINUITY_DISCONNECT_SINGLE_TITLE");
    v10 = [v8 stringWithFormat:v9, v7];

    v11 = @"CONTINUITY_DISCONNECT_SINGLE_CONFIRMATION";
  }

  else
  {
    v12 = MEMORY[0x277CCAAF0];
    v13 = [(DSContinuityController *)self selectedComputerNames];
    v7 = [v12 localizedStringByJoiningStrings:v13];

    v10 = DSUILocStringForKey(@"CONTINUITY_DISCONNECT_TITLE");
    v11 = @"CONTINUITY_DISCONNECT_MULTIPLE_CONFIRMATION";
  }

  v14 = MEMORY[0x277CCACA8];
  v15 = DSUILocStringForKey(v11);
  v16 = [v14 stringWithFormat:v15, v7];

  v17 = [MEMORY[0x277D75110] alertControllerWithTitle:v10 message:v16 preferredStyle:0];
  v18 = MEMORY[0x277D750F8];
  v19 = DSUILocStringForKey(@"CANCEL");
  v20 = [v18 actionWithTitle:v19 style:1 handler:&__block_literal_global_400];

  v21 = MEMORY[0x277D750F8];
  v22 = DSUILocStringForKey(@"CONTINUITY_STOP");
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __59__DSContinuityController_presentRemoveSelectedDevicesAlert__block_invoke_2;
  v24[3] = &unk_278F750A0;
  v24[4] = self;
  v23 = [v21 actionWithTitle:v22 style:2 handler:v24];

  [v17 addAction:v23];
  [v17 addAction:v20];
  [(DSContinuityController *)self presentViewController:v17 animated:1 completion:0];
}

- (void)presentUnpairErrorAlert:(id)a3
{
  v4 = a3;
  v5 = DSLog_4;
  if (os_log_type_enabled(DSLog_4, OS_LOG_TYPE_ERROR))
  {
    [(DSContinuityController *)v4 presentUnpairErrorAlert:v5, v6, v7, v8, v9, v10, v11];
  }

  v12 = [MEMORY[0x277D75110] ds_alertControllerContinuityUnpairError:v4];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __50__DSContinuityController_presentUnpairErrorAlert___block_invoke;
  v14[3] = &unk_278F75650;
  v14[4] = self;
  v15 = v12;
  v13 = v12;
  dispatch_async(MEMORY[0x277D85CD0], v14);
}

uint64_t __50__DSContinuityController_presentUnpairErrorAlert___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  [v2 reloadData];

  v3 = [*(a1 + 32) boldButton];
  [v3 hidesBusyIndicator];

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  return [v4 presentErrorAlertController:v5];
}

- (void)removeSelectedPairedDevicesAndPushNextPane
{
  v3 = [(DSContinuityController *)self selectedDevices];
  v4 = [(DSTableWelcomeController *)self boldButton];
  [v4 showsBusyIndicator];

  v5 = [(DSContinuityController *)self continuityStore];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__DSContinuityController_removeSelectedPairedDevicesAndPushNextPane__block_invoke;
  v6[3] = &unk_278F759C0;
  v6[4] = self;
  [v5 unpairDevicesWithIDs:v3 completion:v6];
}

void __68__DSContinuityController_removeSelectedPairedDevicesAndPushNextPane__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) selectedDevices];
  [v4 removeAllObjects];

  v5 = *(a1 + 32);
  if (v3)
  {
    [v5 presentUnpairErrorAlert:v3];
  }

  else
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __68__DSContinuityController_removeSelectedPairedDevicesAndPushNextPane__block_invoke_2;
    v6[3] = &unk_278F75408;
    v6[4] = v5;
    [v5 getDevicesWithCompletion:v6];
  }
}

void __68__DSContinuityController_removeSelectedPairedDevicesAndPushNextPane__block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__DSContinuityController_removeSelectedPairedDevicesAndPushNextPane__block_invoke_3;
  block[3] = &unk_278F75408;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __68__DSContinuityController_removeSelectedPairedDevicesAndPushNextPane__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  [v2 reloadData];

  v3 = [*(a1 + 32) boldButton];
  [v3 hidesBusyIndicator];

  v4 = [*(a1 + 32) delegate];
  [v4 pushNextPane];
}

- (void)removeAllPairedDevicesAndPushNextPane
{
  v3 = [(DSTableWelcomeController *)self boldButton];
  [v3 showsBusyIndicator];

  v4 = [(DSContinuityController *)self continuityStore];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__DSContinuityController_removeAllPairedDevicesAndPushNextPane__block_invoke;
  v5[3] = &unk_278F759C0;
  v5[4] = self;
  [v4 unpairAllDevicesWithCompletion:v5];
}

void __63__DSContinuityController_removeAllPairedDevicesAndPushNextPane__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) selectedDevices];
  [v4 removeAllObjects];

  if (v3)
  {
    [*(a1 + 32) presentUnpairErrorAlert:v3];
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__DSContinuityController_removeAllPairedDevicesAndPushNextPane__block_invoke_2;
    block[3] = &unk_278F75408;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __63__DSContinuityController_removeAllPairedDevicesAndPushNextPane__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  [v2 reloadData];

  v3 = [*(a1 + 32) boldButton];
  [v3 hidesBusyIndicator];

  v4 = [*(a1 + 32) delegate];
  [v4 pushNextPane];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(DSContinuityController *)self continuityDevices:a3];
  v5 = [v4 count];

  return v5;
}

- (id)dateDescription:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x277CCA968];
    v4 = a3;
    v5 = objc_alloc_init(v3);
    [v5 setDateStyle:1];
    v6 = [v5 stringFromDate:v4];

    v7 = MEMORY[0x277CCACA8];
    v8 = DSUILocStringForKey(@"CONTINUITY_TIME_PAIRED");
    v9 = [v7 localizedStringWithFormat:v8, v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(DSContinuityController *)self continuityDevices];
  v7 = [v6 objectAtIndexedSubscript:{objc_msgSend(v5, "row")}];

  v8 = [(OBTableWelcomeController *)self tableView];
  v9 = [v7 name];
  v10 = [v7 initialDiscoveryDate];
  v11 = [(DSContinuityController *)self dateDescription:v10];
  v12 = [DSIconTableViewCell iconTableViewCellFromTableView:v8 withText:v9 detail:v11 icon:0];

  v13 = [(DSContinuityController *)self selectedDevices];
  v14 = [v7 deviceID];
  LODWORD(v10) = [v13 containsObject:v14];

  if (v10)
  {
    v15 = [(OBTableWelcomeController *)self tableView];
    [v15 selectRowAtIndexPath:v5 animated:1 scrollPosition:0];
  }

  v16 = [v7 initialDiscoveryDate];
  if (v16 || ([v7 serialNumber], (v16 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v7, "model"), (v16 = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_7:
    [v12 setEditingAccessoryType:4];
    goto LABEL_8;
  }

  v18 = [v7 marketingName];

  if (v18)
  {
    goto LABEL_7;
  }

LABEL_8:

  return v12;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(DSContinuityController *)self selectedDevices];
  v7 = [(DSContinuityController *)self continuityDevices];
  v8 = [v5 row];

  v9 = [v7 objectAtIndex:v8];
  v10 = [v9 deviceID];
  [v6 addObject:v10];

  [(DSContinuityController *)self _updateButtons];
}

- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(DSContinuityController *)self selectedDevices];
  v7 = [(DSContinuityController *)self continuityDevices];
  v8 = [v5 row];

  v9 = [v7 objectAtIndex:v8];
  v10 = [v9 deviceID];
  [v6 removeObject:v10];

  [(DSContinuityController *)self _updateButtons];
}

- (void)tableView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(DSContinuityController *)self continuityDevices];
  v7 = [v5 row];

  v10 = [v6 objectAtIndexedSubscript:v7];

  v8 = [[DSContinuityDetailController alloc] initWithContinuityDevice:v10];
  [(DSContinuityDetailController *)v8 setDelegate:self];
  v9 = [(DSContinuityController *)self navigationController];
  [v9 pushViewController:v8 animated:1];
}

- (void)removeDetailViewControllerFromStack
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(DSContinuityController *)self navigationController];
  v5 = [v4 viewControllers];

  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v5);
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
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = [(DSContinuityController *)self navigationController];
  [v12 setViewControllers:v3];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)returnFromDetailAndRemoveDevice:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DSTableWelcomeController *)self boldButton];
  [v5 showsBusyIndicator];

  v6 = [(DSContinuityController *)self continuityStore];
  v7 = [v4 deviceID];
  v13[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__DSContinuityController_returnFromDetailAndRemoveDevice___block_invoke;
  v11[3] = &unk_278F759E8;
  v11[4] = self;
  v12 = v4;
  v9 = v4;
  [v6 unpairDevicesWithIDs:v8 completion:v11];

  v10 = *MEMORY[0x277D85DE8];
}

void __58__DSContinuityController_returnFromDetailAndRemoveDevice___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) selectedDevices];
  v5 = [*(a1 + 40) deviceID];
  [v4 removeObject:v5];

  v6 = *(a1 + 32);
  if (v3)
  {
    [v6 presentUnpairErrorAlert:v3];
  }

  else
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __58__DSContinuityController_returnFromDetailAndRemoveDevice___block_invoke_2;
    v7[3] = &unk_278F75408;
    v7[4] = v6;
    [v6 getDevicesWithCompletion:v7];
  }
}

void __58__DSContinuityController_returnFromDetailAndRemoveDevice___block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__DSContinuityController_returnFromDetailAndRemoveDevice___block_invoke_3;
  block[3] = &unk_278F75408;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __58__DSContinuityController_returnFromDetailAndRemoveDevice___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) continuityDevices];
  v3 = [v2 count];

  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4 tableView];
    [v5 reloadData];

    [*(a1 + 32) _updateButtons];
    v6 = [*(a1 + 32) boldButton];
    [v6 hidesBusyIndicator];

    v11 = [*(a1 + 32) navigationController];
    v7 = [v11 popViewControllerAnimated:1];
  }

  else
  {
    v8 = [v4 boldButton];
    [v8 hidesBusyIndicator];

    v9 = [*(a1 + 32) delegate];
    [v9 pushNextPane];

    v10 = *(a1 + 32);

    [v10 removeDetailViewControllerFromStack];
  }
}

- (void)_updateButtons
{
  v2 = self;
  v3 = [(DSContinuityController *)v2 selectedDevices];
  v4 = [v3 count];

  if (v4)
  {
    v13 = DSUILocStringForKey(@"CONTINUITY_STOP");
    v5 = sel_presentRemoveSelectedDevicesAlert;
    v6 = v2;
  }

  else
  {
    v13 = DSUILocStringForKey(@"SKIP");
    v5 = sel_pushNextPane;
    v6 = [(DSContinuityController *)v2 delegate];
  }

  v7 = [(DSTableWelcomeController *)v2 boldButton];
  [v7 removeTarget:0 action:0 forControlEvents:0xFFFFFFFFLL];

  v8 = [(DSTableWelcomeController *)v2 boldButton];
  [v8 setTitle:v13 forState:0];

  v9 = [(DSTableWelcomeController *)v2 boldButton];
  [v9 addTarget:v6 action:v5 forControlEvents:64];

  v10 = [(DSTableWelcomeController *)v2 linkButton];
  v11 = DSUILocStringForKey(@"CONTINUITY_STOP_ALL");
  [v10 setTitle:v11 forState:0];

  v12 = [(DSTableWelcomeController *)v2 linkButton];
  [v12 addTarget:v2 action:sel_presentRemoveAllDevicesAlert forControlEvents:64];
}

- (void)presentLearnMore
{
  v4 = [(DSContinuityController *)self delegate];
  v3 = DSUILocStringForKey(@"CONTINUITY_LEARN_MORE_URL");
  [v4 learnMorePressedForController:self withURL:v3];
}

- (id)allComputerNames
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(DSContinuityController *)self continuityDevices];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) name];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)selectedComputerNames
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(DSContinuityController *)self selectedDevices];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(DSContinuityController *)self computerNameWithUUID:*(*(&v12 + 1) + 8 * i)];
        if (v9)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)computerNameWithUUID:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = [(DSContinuityController *)self continuityDevices];
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v11 = [v10 deviceID];
        v12 = [v11 isEqual:v4];

        if (v12)
        {
          v20 = [v10 name];

          goto LABEL_13;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = DSLog_4;
  if (os_log_type_enabled(DSLog_4, OS_LOG_TYPE_ERROR))
  {
    [(DSContinuityController *)v4 computerNameWithUUID:v13, v14, v15, v16, v17, v18, v19];
  }

  v20 = 0;
LABEL_13:

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (void)remoteDeviceListModified:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __51__DSContinuityController_remoteDeviceListModified___block_invoke;
  v3[3] = &unk_278F75408;
  v3[4] = self;
  [(DSContinuityController *)self getDevicesWithCompletion:v3];
}

void __51__DSContinuityController_remoteDeviceListModified___block_invoke(uint64_t a1)
{
  v2 = DSLog_4;
  if (os_log_type_enabled(DSLog_4, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_248C7E000, v2, OS_LOG_TYPE_DEFAULT, "Completed fetch for remote device list modification", v4, 2u);
  }

  v3 = [*(a1 + 32) tableView];
  [v3 reloadData];
}

- (DSNavigationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __51__DSContinuityController_getDevicesWithCompletion___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_248C7E000, a2, a3, "Failed to fetch devices from continuity store, error: %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)presentUnpairErrorAlert:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_248C7E000, a2, a3, "Failed to unpair device(s), error: %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)computerNameWithUUID:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_248C7E000, a2, a3, "Couldn't find a computer with uuid %@, this should never happen!", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end