@interface HUMediaSystemEditorHelper
- (HFMediaSystemBuilder)mediaSystemBuilder;
- (HUMediaSystemEditorHelper)initWithDelegate:(id)delegate;
- (HUMediaSystemEditorHelperDelegate)delegate;
- (id)_authKitContextGenerator;
- (id)_checkIfAccessoriesNeedSoftwareUpdateToSupportPairing;
- (id)_executeAppleMusicAccountReconcilationForMediaSystemBuilder:(id)builder;
- (id)_executePreferredMediaUserReconcilationForMediaSystemBuilder:(id)builder;
- (id)_promptForRoomChange;
- (id)createMediaSystem;
- (id)createMediaSystemWithAccessory:(id)accessory;
- (void)_configureMediaSystemBuilderToMoveHomePodsToRoom:(id)room;
@end

@implementation HUMediaSystemEditorHelper

- (HUMediaSystemEditorHelper)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = HUMediaSystemEditorHelper;
  v5 = [(HUMediaSystemEditorHelper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

- (HFMediaSystemBuilder)mediaSystemBuilder
{
  delegate = [(HUMediaSystemEditorHelper *)self delegate];
  mediaSystemBuilder = [delegate mediaSystemBuilder];

  return mediaSystemBuilder;
}

- (id)createMediaSystemWithAccessory:(id)accessory
{
  v32 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  inFlightCommitFuture = [(HUMediaSystemEditorHelper *)self inFlightCommitFuture];
  if (inFlightCommitFuture && (v7 = inFlightCommitFuture, -[HUMediaSystemEditorHelper inFlightCommitFuture](self, "inFlightCommitFuture"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 isFinished], v8, v7, (v9 & 1) == 0))
  {
    v22 = HFLogForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = NSStringFromSelector(a2);
      *buf = 138412290;
      v31 = v23;
      _os_log_impl(&dword_20CEB6000, v22, OS_LOG_TYPE_INFO, "Skipping '%@'; createNewMediaSystem already in progress.", buf, 0xCu);
    }

    createMediaSystem = 0;
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    mediaSystemBuilder = [(HUMediaSystemEditorHelper *)self mediaSystemBuilder];
    accessories = [mediaSystemBuilder accessories];

    v12 = [accessories countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v26;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v26 != v14)
          {
            objc_enumerationMutation(accessories);
          }

          v16 = *(*(&v25 + 1) + 8 * i);
          mediaSystemBuilder2 = [(HUMediaSystemEditorHelper *)self mediaSystemBuilder];
          firstSetupSourceAccessory = [mediaSystemBuilder2 firstSetupSourceAccessory];

          if (v16 != firstSetupSourceAccessory)
          {
            mediaSystemBuilder3 = [(HUMediaSystemEditorHelper *)self mediaSystemBuilder];
            [mediaSystemBuilder3 removeAccessory:v16];
          }
        }

        v13 = [accessories countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v13);
    }

    mediaSystemBuilder4 = [(HUMediaSystemEditorHelper *)self mediaSystemBuilder];
    [mediaSystemBuilder4 addAccessory:accessoryCopy];

    createMediaSystem = [(HUMediaSystemEditorHelper *)self createMediaSystem];
  }

  return createMediaSystem;
}

- (id)createMediaSystem
{
  inFlightCommitFuture = [(HUMediaSystemEditorHelper *)self inFlightCommitFuture];
  if (inFlightCommitFuture && (v4 = inFlightCommitFuture, -[HUMediaSystemEditorHelper inFlightCommitFuture](self, "inFlightCommitFuture"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isFinished], v5, v4, (v6 & 1) == 0))
  {
    inFlightCommitFuture2 = [(HUMediaSystemEditorHelper *)self inFlightCommitFuture];
  }

  else
  {
    delegate = [(HUMediaSystemEditorHelper *)self delegate];
    [delegate mediaSystemEditorHelperDidBeginCommitting:self];

    mediaSystemBuilder = [(HUMediaSystemEditorHelper *)self mediaSystemBuilder];
    objc_initWeak(&location, self);
    _checkIfAccessoriesNeedSoftwareUpdateToSupportPairing = [(HUMediaSystemEditorHelper *)self _checkIfAccessoriesNeedSoftwareUpdateToSupportPairing];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __46__HUMediaSystemEditorHelper_createMediaSystem__block_invoke;
    v29[3] = &unk_277DBEB10;
    v29[4] = self;
    v10 = [_checkIfAccessoriesNeedSoftwareUpdateToSupportPairing flatMap:v29];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __46__HUMediaSystemEditorHelper_createMediaSystem__block_invoke_2;
    v27[3] = &unk_277DBE078;
    v27[4] = self;
    v11 = mediaSystemBuilder;
    v28 = v11;
    v12 = [v10 flatMap:v27];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __46__HUMediaSystemEditorHelper_createMediaSystem__block_invoke_3;
    v26[3] = &unk_277DBAFF8;
    v26[4] = self;
    v13 = [v12 flatMap:v26];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __46__HUMediaSystemEditorHelper_createMediaSystem__block_invoke_4;
    v24[3] = &unk_277DBE078;
    v24[4] = self;
    v14 = v11;
    v25 = v14;
    v15 = [v13 flatMap:v24];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __46__HUMediaSystemEditorHelper_createMediaSystem__block_invoke_5;
    v22[3] = &unk_277DBAFF8;
    v16 = v14;
    v23 = v16;
    inFlightCommitFuture2 = [v15 flatMap:v22];

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __46__HUMediaSystemEditorHelper_createMediaSystem__block_invoke_6;
    v20[3] = &unk_277DB8CA8;
    objc_copyWeak(&v21, &location);
    v18 = [inFlightCommitFuture2 addCompletionBlock:v20];
    [(HUMediaSystemEditorHelper *)self setInFlightCommitFuture:inFlightCommitFuture2];
    objc_destroyWeak(&v21);

    objc_destroyWeak(&location);
  }

  return inFlightCommitFuture2;
}

id __46__HUMediaSystemEditorHelper_createMediaSystem__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) accountArbitrationFuture];

  if (v2)
  {
    [*(a1 + 32) accountArbitrationFuture];
  }

  else
  {
    [MEMORY[0x277D2C900] futureWithNoResult];
  }
  v3 = ;

  return v3;
}

void __46__HUMediaSystemEditorHelper_createMediaSystem__block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setInFlightCommitFuture:0];
  v8 = [MEMORY[0x277D2C938] mainThreadScheduler];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__HUMediaSystemEditorHelper_createMediaSystem__block_invoke_7;
  v9[3] = &unk_277DB8770;
  objc_copyWeak(&v10, (a1 + 32));
  [v8 performBlock:v9];

  objc_destroyWeak(&v10);
}

void __46__HUMediaSystemEditorHelper_createMediaSystem__block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 mediaSystemEditorHelperDidEndCommitting:WeakRetained];
}

- (id)_promptForRoomChange
{
  v36 = *MEMORY[0x277D85DE8];
  v24 = objc_opt_new();
  mediaSystemBuilder = [(HUMediaSystemEditorHelper *)self mediaSystemBuilder];
  accessories = [mediaSystemBuilder accessories];
  v22 = [accessories na_map:&__block_literal_global_140];

  if ([v22 count] == 1)
  {
    anyObject = [v22 anyObject];
    [v24 finishWithResult:anyObject];
  }

  else
  {
    objc_initWeak(&location, self);
    v20 = _HULocalizedStringWithDefaultValue(@"HUMediaSystemEditorGridViewControllerRoomChangeAlertTitle", @"HUMediaSystemEditorGridViewControllerRoomChangeAlertTitle", 1);
    v5 = [MEMORY[0x277D75110] alertControllerWithTitle:? message:? preferredStyle:?];
    allObjects = [v22 allObjects];
    v7 = [allObjects sortedArrayUsingComparator:&__block_literal_global_10_0];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = v7;
    v8 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v8)
    {
      v9 = *v31;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v31 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v30 + 1) + 8 * i);
          v12 = MEMORY[0x277D750F8];
          name = [v11 name];
          v27[0] = MEMORY[0x277D85DD0];
          v27[1] = 3221225472;
          v27[2] = __49__HUMediaSystemEditorHelper__promptForRoomChange__block_invoke_3;
          v27[3] = &unk_277DBB800;
          objc_copyWeak(&v29, &location);
          v27[4] = v11;
          v28 = v24;
          v14 = [v12 actionWithTitle:name style:0 handler:v27];
          [v5 addAction:v14];

          objc_destroyWeak(&v29);
        }

        v8 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v8);
    }

    v15 = MEMORY[0x277D750F8];
    v16 = _HULocalizedStringWithDefaultValue(@"HUAlertCancel", @"HUAlertCancel", 1);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __49__HUMediaSystemEditorHelper__promptForRoomChange__block_invoke_4;
    v25[3] = &unk_277DB7600;
    v26 = v24;
    v17 = [v15 actionWithTitle:v16 style:1 handler:v25];
    [v5 addAction:v17];

    delegate = [(HUMediaSystemEditorHelper *)self delegate];
    [delegate mediaSystemEditorHelper:self needsToPresentViewController:v5 animated:1 completion:0];

    objc_destroyWeak(&location);
  }

  return v24;
}

uint64_t __49__HUMediaSystemEditorHelper__promptForRoomChange__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 localizedStandardCompare:v6];
  return v7;
}

void __49__HUMediaSystemEditorHelper__promptForRoomChange__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _configureMediaSystemBuilderToMoveHomePodsToRoom:*(a1 + 32)];
  [*(a1 + 40) finishWithResult:*(a1 + 32)];
}

void __49__HUMediaSystemEditorHelper__promptForRoomChange__block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] na_cancelledError];
  [v1 finishWithError:v2];
}

- (void)_configureMediaSystemBuilderToMoveHomePodsToRoom:(id)room
{
  v4 = MEMORY[0x277D149D8];
  roomCopy = room;
  v6 = [v4 alloc];
  home = [roomCopy home];
  v8 = [v6 initWithExistingObject:roomCopy inHome:home];

  mediaSystemBuilder = [(HUMediaSystemEditorHelper *)self mediaSystemBuilder];
  [mediaSystemBuilder setRoom:v8];

  delegate = [(HUMediaSystemEditorHelper *)self delegate];
  mediaSystemBuilder2 = [(HUMediaSystemEditorHelper *)self mediaSystemBuilder];
  [delegate mediaSystemEditorHelper:self didModifyMediaSystemBuilder:mediaSystemBuilder2];
}

- (id)_executePreferredMediaUserReconcilationForMediaSystemBuilder:(id)builder
{
  v66 = *MEMORY[0x277D85DE8];
  builderCopy = builder;
  mediaSystemBuilder = [(HUMediaSystemEditorHelper *)self mediaSystemBuilder];
  accessories = [mediaSystemBuilder accessories];

  v7 = objc_opt_new();
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v8 = accessories;
  v9 = [v8 countByEnumeratingWithState:&v60 objects:v65 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v61;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v61 != v11)
        {
          objc_enumerationMutation(v8);
        }

        preferredMediaUser = [*(*(&v60 + 1) + 8 * i) preferredMediaUser];
        [v7 na_safeAddObject:preferredMediaUser];
      }

      v10 = [v8 countByEnumeratingWithState:&v60 objects:v65 count:16];
    }

    while (v10);
  }

  if ([v7 hmf_isEmpty])
  {
    v14 = MEMORY[0x277D2C900];
LABEL_10:
    futureWithNoResult = [v14 futureWithNoResult];
    goto LABEL_22;
  }

  if ([v7 count] == 1)
  {
    v16 = MEMORY[0x277D2C900];
    anyObject = [v7 anyObject];
    futureWithNoResult = [v16 futureWithResult:anyObject];
  }

  else
  {
    v18 = [v7 count];
    v19 = [v8 count];
    v14 = MEMORY[0x277D2C900];
    if (v18 != v19)
    {
      goto LABEL_10;
    }

    selfCopy = self;
    v42 = builderCopy;
    v44 = objc_opt_new();
    v40 = objc_opt_new();
    v20 = MEMORY[0x277D75110];
    v21 = _HULocalizedStringWithDefaultValue(@"HUMediaSystemEditorViewControllerPrimaryUserSelectionAlertTitle", @"HUMediaSystemEditorViewControllerPrimaryUserSelectionAlertTitle", 1);
    v22 = [v20 alertControllerWithTitle:v21 message:0 preferredStyle:1];

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = v7;
    v23 = [obj countByEnumeratingWithState:&v56 objects:v64 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v57;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v57 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v56 + 1) + 8 * j);
          v28 = MEMORY[0x277D750F8];
          name = [v27 name];
          v53[0] = MEMORY[0x277D85DD0];
          v53[1] = 3221225472;
          v53[2] = __90__HUMediaSystemEditorHelper__executePreferredMediaUserReconcilationForMediaSystemBuilder___block_invoke;
          v53[3] = &unk_277DBBD90;
          v54 = v44;
          v55 = v27;
          v30 = [v28 actionWithTitle:name style:0 handler:v53];
          [v22 addAction:v30];
        }

        v24 = [obj countByEnumeratingWithState:&v56 objects:v64 count:16];
      }

      while (v24);
    }

    v31 = MEMORY[0x277D750F8];
    v32 = _HULocalizedStringWithDefaultValue(@"HUAlertCancel", @"HUAlertCancel", 1);
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __90__HUMediaSystemEditorHelper__executePreferredMediaUserReconcilationForMediaSystemBuilder___block_invoke_2;
    v51[3] = &unk_277DB7600;
    v33 = v44;
    v52 = v33;
    v34 = [v31 actionWithTitle:v32 style:1 handler:v51];
    [v22 addAction:v34];

    delegate = [(HUMediaSystemEditorHelper *)selfCopy delegate];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __90__HUMediaSystemEditorHelper__executePreferredMediaUserReconcilationForMediaSystemBuilder___block_invoke_3;
    v49[3] = &unk_277DB8488;
    v36 = v40;
    v50 = v36;
    [delegate mediaSystemEditorHelper:selfCopy needsToPresentViewController:v22 animated:1 completion:v49];

    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __90__HUMediaSystemEditorHelper__executePreferredMediaUserReconcilationForMediaSystemBuilder___block_invoke_4;
    v45[3] = &unk_277DBEB60;
    builderCopy = v42;
    v46 = v42;
    v47 = v33;
    v48 = v36;
    v37 = v36;
    v38 = v33;
    futureWithNoResult = [v38 flatMap:v45];
  }

LABEL_22:

  return futureWithNoResult;
}

void __90__HUMediaSystemEditorHelper__executePreferredMediaUserReconcilationForMediaSystemBuilder___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] na_cancelledError];
  [v1 finishWithError:v2];
}

id __90__HUMediaSystemEditorHelper__executePreferredMediaUserReconcilationForMediaSystemBuilder___block_invoke_4(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setPreferredMediaUser:a2];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __90__HUMediaSystemEditorHelper__executePreferredMediaUserReconcilationForMediaSystemBuilder___block_invoke_5;
  v6[3] = &unk_277DBEB38;
  v3 = *(a1 + 40);
  v7 = *(a1 + 48);
  v4 = [v3 flatMap:v6];

  return v4;
}

- (id)_executeAppleMusicAccountReconcilationForMediaSystemBuilder:(id)builder
{
  v67 = *MEMORY[0x277D85DE8];
  builderCopy = builder;
  mediaSystemBuilder = [(HUMediaSystemEditorHelper *)self mediaSystemBuilder];
  accessories = [mediaSystemBuilder accessories];

  v4 = [accessories na_all:&__block_literal_global_25_2];
  v5 = [accessories na_map:&__block_literal_global_27];
  v6 = objc_opt_new();
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v61 objects:v66 count:16];
  if (v8)
  {
    v9 = *v62;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v62 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v61 + 1) + 8 * i);
        username = [v11 username];
        [v6 setObject:v11 forKey:username];
      }

      v8 = [v7 countByEnumeratingWithState:&v61 objects:v66 count:16];
    }

    while (v8);
  }

  v13 = MEMORY[0x277CBEB98];
  allValues = [v6 allValues];
  v39 = [v13 setWithArray:allValues];

  if ([v39 count])
  {
    v15 = [v39 count] == 1;
    v16 = MEMORY[0x277D2C900];
    if ((v15 & v4) == 1)
    {
      anyObject = [v39 anyObject];
      futureWithNoResult = [v16 futureWithResult:anyObject];
    }

    else
    {
      v41 = objc_opt_new();
      v35 = objc_opt_new();
      if (v4)
      {
        v19 = MEMORY[0x277D75110];
        v20 = _HULocalizedStringWithDefaultValue(@"HUMediaSystemEditorViewControllerAccountSelectionAlertTitle", @"HUMediaSystemEditorViewControllerAccountSelectionAlertTitle", 1);
        anyObject2 = [v19 alertControllerWithTitle:v20 message:0 preferredStyle:1];

        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        obj = v39;
        v21 = [obj countByEnumeratingWithState:&v57 objects:v65 count:16];
        if (v21)
        {
          v22 = *v58;
          do
          {
            for (j = 0; j != v21; ++j)
            {
              if (*v58 != v22)
              {
                objc_enumerationMutation(obj);
              }

              v24 = *(*(&v57 + 1) + 8 * j);
              v25 = MEMORY[0x277D750F8];
              username2 = [v24 username];
              v54[0] = MEMORY[0x277D85DD0];
              v54[1] = 3221225472;
              v54[2] = __89__HUMediaSystemEditorHelper__executeAppleMusicAccountReconcilationForMediaSystemBuilder___block_invoke_3;
              v54[3] = &unk_277DBBD90;
              v55 = v41;
              v56 = v24;
              v27 = [v25 actionWithTitle:username2 style:0 handler:v54];
              [anyObject2 addAction:v27];
            }

            v21 = [obj countByEnumeratingWithState:&v57 objects:v65 count:16];
          }

          while (v21);
        }

        v28 = MEMORY[0x277D750F8];
        v29 = _HULocalizedStringWithDefaultValue(@"HUAlertCancel", @"HUAlertCancel", 1);
        v52[0] = MEMORY[0x277D85DD0];
        v52[1] = 3221225472;
        v52[2] = __89__HUMediaSystemEditorHelper__executeAppleMusicAccountReconcilationForMediaSystemBuilder___block_invoke_4;
        v52[3] = &unk_277DB7600;
        v53 = v41;
        v30 = [v28 actionWithTitle:v29 style:1 handler:v52];
        [anyObject2 addAction:v30];

        delegate = [(HUMediaSystemEditorHelper *)self delegate];
        v50[0] = MEMORY[0x277D85DD0];
        v50[1] = 3221225472;
        v50[2] = __89__HUMediaSystemEditorHelper__executeAppleMusicAccountReconcilationForMediaSystemBuilder___block_invoke_5;
        v50[3] = &unk_277DB8488;
        v51 = v35;
        [delegate mediaSystemEditorHelper:self needsToPresentViewController:anyObject2 animated:1 completion:v50];
      }

      else
      {
        [v35 finishWithNoResult];
        anyObject2 = [v39 anyObject];
        [v41 finishWithResult:anyObject2];
      }

      objc_initWeak(&location, self);
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __89__HUMediaSystemEditorHelper__executeAppleMusicAccountReconcilationForMediaSystemBuilder___block_invoke_6;
      v43[3] = &unk_277DBEBB0;
      objc_copyWeak(&v48, &location);
      v44 = accessories;
      v45 = builderCopy;
      v32 = v41;
      v46 = v32;
      v33 = v35;
      v47 = v33;
      futureWithNoResult = [v32 flatMap:v43];

      objc_destroyWeak(&v48);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return futureWithNoResult;
}

BOOL __89__HUMediaSystemEditorHelper__executeAppleMusicAccountReconcilationForMediaSystemBuilder___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 remoteLoginHandler];
  v3 = [v2 loggedInAccount];
  v4 = v3 != 0;

  return v4;
}

id __89__HUMediaSystemEditorHelper__executeAppleMusicAccountReconcilationForMediaSystemBuilder___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 remoteLoginHandler];
  v3 = [v2 loggedInAccount];

  return v3;
}

void __89__HUMediaSystemEditorHelper__executeAppleMusicAccountReconcilationForMediaSystemBuilder___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] na_cancelledError];
  [v1 finishWithError:v2];
}

id __89__HUMediaSystemEditorHelper__executeAppleMusicAccountReconcilationForMediaSystemBuilder___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v5 = objc_alloc(MEMORY[0x277D143F0]);
  v6 = *(a1 + 32);
  v7 = [WeakRetained _authKitContextGenerator];
  v8 = [v5 initWithAccessories:v6 account:v3 contextGenerator:v7];

  [*(a1 + 40) setAccountArbitrator:v8];
  v9 = [v8 pendingArbitrationExecutionFuture];
  [WeakRetained setAccountArbitrationFuture:v9];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __89__HUMediaSystemEditorHelper__executeAppleMusicAccountReconcilationForMediaSystemBuilder___block_invoke_7;
  v13[3] = &unk_277DBEB88;
  v10 = *(a1 + 48);
  v14 = *(a1 + 56);
  v11 = [v10 flatMap:v13];

  return v11;
}

- (id)_authKitContextGenerator
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__HUMediaSystemEditorHelper__authKitContextGenerator__block_invoke;
  aBlock[3] = &unk_277DBEC00;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);

  return v2;
}

id __53__HUMediaSystemEditorHelper__authKitContextGenerator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 remoteLoginHandler];
  v7 = [v6 hu_appleMusicInAppAuthenticationContext];
  v8 = [MEMORY[0x277D2C938] mainThreadScheduler];
  v9 = [v7 reschedule:v8];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __53__HUMediaSystemEditorHelper__authKitContextGenerator__block_invoke_2;
  v14[3] = &unk_277DBEBD8;
  v10 = *(a1 + 32);
  v15 = v5;
  v16 = v10;
  v11 = v5;
  v12 = [v9 flatMap:v14];

  return v12;
}

id __53__HUMediaSystemEditorHelper__authKitContextGenerator__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _HULocalizedStringWithDefaultValue(@"HUAppleMusicPromptTitle", @"HUAppleMusicPromptTitle", 1);
  [v3 setTitle:v4];

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = [v5 username];
    [v3 setUsername:v6];

    [v3 setIsUsernameEditable:0];
    v7 = _HULocalizedStringWithDefaultValue(@"HUAppleMusicPromptReason", @"HUAppleMusicPromptReason", 1);
    v8 = [*(a1 + 32) username];
    v9 = [v7 stringByAppendingFormat:@"\n\n%@", v8];
    [v3 setReason:v9];
  }

  else
  {
    v7 = _HULocalizedStringWithDefaultValue(@"HUAppleMusicPromptReason", @"HUAppleMusicPromptReason", 1);
    [v3 setReason:v7];
  }

  v10 = [*(a1 + 40) delegate];
  v11 = [v10 mediaSystemHelperPresentingViewController];
  [v3 setPresentingViewController:v11];

  v12 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v12;
}

- (id)_checkIfAccessoriesNeedSoftwareUpdateToSupportPairing
{
  mediaSystemBuilder = [(HUMediaSystemEditorHelper *)self mediaSystemBuilder];
  accessories = [mediaSystemBuilder accessories];
  v5 = [accessories na_filter:&__block_literal_global_47_0];

  if ([v5 count])
  {
    mediaSystemBuilder2 = [(HUMediaSystemEditorHelper *)self mediaSystemBuilder];
    firstSetupSourceAccessory = [mediaSystemBuilder2 firstSetupSourceAccessory];

    mediaSystemBuilder3 = [(HUMediaSystemEditorHelper *)self mediaSystemBuilder];
    accessories2 = [mediaSystemBuilder3 accessories];
    v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:firstSetupSourceAccessory];
    v11 = [accessories2 na_setByRemovingObjectsFromSet:v10];
    anyObject = [v11 anyObject];

    if ([firstSetupSourceAccessory hf_needsSoftwareUpdateToSupportBeingAddedToMediaSystem])
    {
      v13 = firstSetupSourceAccessory;
    }

    else
    {
      v13 = anyObject;
    }

    v14 = v13;
    v15 = objc_opt_new();
    v16 = MEMORY[0x277D75110];
    v17 = _HULocalizedStringWithDefaultValue(@"HUMediaAccessoryAudioSettingsViewControllerOTAUpdateRequiredTitle", @"HUMediaAccessoryAudioSettingsViewControllerOTAUpdateRequiredTitle", 1);
    v18 = _HULocalizedStringWithDefaultValue(@"HUMediaAccessoryAudioSettingsViewControllerOTAUpdateRequiredMessage", @"HUMediaAccessoryAudioSettingsViewControllerOTAUpdateRequiredMessage", 1);
    v19 = [v16 alertControllerWithTitle:v17 message:v18 preferredStyle:1];

    v20 = MEMORY[0x277D750F8];
    v21 = _HULocalizedStringWithDefaultValue(@"HUMediaAccessoryAudioSettingsViewControllerOTAUpdateRequiredUpdateButton", @"HUMediaAccessoryAudioSettingsViewControllerOTAUpdateRequiredUpdateButton", 1);
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __82__HUMediaSystemEditorHelper__checkIfAccessoriesNeedSoftwareUpdateToSupportPairing__block_invoke_2;
    v37[3] = &unk_277DB7600;
    v22 = v15;
    v38 = v22;
    v23 = [v20 actionWithTitle:v21 style:0 handler:v37];
    [v19 addAction:v23];

    v24 = MEMORY[0x277D750F8];
    v25 = _HULocalizedStringWithDefaultValue(@"HUMediaAccessoryAudioSettingsViewControllerOTAUpdateRequiredCancelButton", @"HUMediaAccessoryAudioSettingsViewControllerOTAUpdateRequiredCancelButton", 1);
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __82__HUMediaSystemEditorHelper__checkIfAccessoriesNeedSoftwareUpdateToSupportPairing__block_invoke_3;
    v35[3] = &unk_277DB7600;
    v36 = v22;
    v26 = v22;
    v27 = [v24 actionWithTitle:v25 style:1 handler:v35];
    [v19 addAction:v27];

    delegate = [(HUMediaSystemEditorHelper *)self delegate];
    [delegate mediaSystemEditorHelper:self needsToPresentViewController:v19 animated:1 completion:0];

    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __82__HUMediaSystemEditorHelper__checkIfAccessoriesNeedSoftwareUpdateToSupportPairing__block_invoke_4;
    v32[3] = &unk_277DBD4E0;
    v33 = v14;
    selfCopy = self;
    v29 = v14;
    v30 = [v26 flatMap:v32];
  }

  else
  {
    v30 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEC28]];
  }

  return v30;
}

void __82__HUMediaSystemEditorHelper__checkIfAccessoriesNeedSoftwareUpdateToSupportPairing__block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] na_cancelledError];
  [v1 finishWithError:v2];
}

id __82__HUMediaSystemEditorHelper__checkIfAccessoriesNeedSoftwareUpdateToSupportPairing__block_invoke_4(uint64_t a1, void *a2)
{
  if (([a2 BOOLValue] & 1) == 0)
  {
    goto LABEL_4;
  }

  if (*(a1 + 32))
  {
    v3 = [*(a1 + 40) delegate];
    [v3 mediaSystemEditorHelper:*(a1 + 40) didAbortForAccessoryNeedingUpdate:*(a1 + 32)];

LABEL_4:
    v4 = MEMORY[0x277D2C900];
    v5 = [MEMORY[0x277CCA9B8] na_cancelledError];
    v6 = [v4 futureWithError:v5];

    goto LABEL_5;
  }

  v6 = [MEMORY[0x277D2C900] futureWithNoResult];
LABEL_5:

  return v6;
}

- (HUMediaSystemEditorHelperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end