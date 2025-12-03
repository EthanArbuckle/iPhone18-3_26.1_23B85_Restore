@interface CDPDSOSCircleController
- (CDPDCircleDelegate)delegate;
- (CDPDSOSCircleController)initWithUiProvider:(id)provider delegate:(id)delegate circleProxy:(id)proxy octagonTrustProxy:(id)trustProxy;
- (void)_joinCircleIgnoringBackups:(BOOL)backups completion:(id)completion;
- (void)_requestCircleJoinWithObserver:(id)observer requestBlock:(id)block completion:(id)completion;
- (void)_requestToJoinAfterRestoreAndWaitForSuccessWithHandler:(id)handler;
- (void)_requestToJoinAndWaitForSuccessWithHandler:(id)handler;
- (void)_requestToJoinWithObserver:(id)observer completion:(id)completion;
- (void)_requestToJoinWithRequestBlock:(id)block completion:(id)completion;
- (void)applyToJoinCircleWithJoinHandler:(id)handler;
- (void)cancelApplicationToJoinCircle;
- (void)dealloc;
- (void)joinCircleAfterRecoveryWithCompletion:(id)completion;
- (void)prepareCircleStateForRecovery;
- (void)resetCircleIncludingCloudKitData:(BOOL)data cloudKitResetReasonDescription:(id)description withCompletion:(id)completion;
- (void)useCircleInfoToUpdateNameForDevices:(id)devices;
@end

@implementation CDPDSOSCircleController

- (CDPDSOSCircleController)initWithUiProvider:(id)provider delegate:(id)delegate circleProxy:(id)proxy octagonTrustProxy:(id)trustProxy
{
  providerCopy = provider;
  delegateCopy = delegate;
  proxyCopy = proxy;
  v13 = [(CDPDSOSCircleController *)self init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_uiProvider, provider);
    objc_storeWeak(&v14->_delegate, delegateCopy);
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create("com.apple.cdpd.circleRequestQueue", v15);
    requestSynchronizationQueue = v14->_requestSynchronizationQueue;
    v14->_requestSynchronizationQueue = v16;

    objc_storeStrong(&v14->_circleProxy, proxy);
  }

  return v14;
}

- (void)dealloc
{
  [(CDPDCircleStateObserver *)self->_circleJoinObserver stopObservingCircleStatusChange];
  v3.receiver = self;
  v3.super_class = CDPDSOSCircleController;
  [(CDPDSOSCircleController *)&v3 dealloc];
}

- (void)prepareCircleStateForRecovery
{
  v18 = *MEMORY[0x277D85DE8];
  circleStatus = [(CDPDSOSCircleController *)self circleStatus];
  v3 = _CDPLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = circleStatus;
    _os_log_impl(&dword_24510B000, v3, OS_LOG_TYPE_DEFAULT, "Circle status before attempting recovery is %lu", buf, 0xCu);
  }

  if (circleStatus == 3)
  {
    *buf = 0;
    v4 = _CDPLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_24510B000, v4, OS_LOG_TYPE_DEFAULT, "Attempting to reset to offering in SOS", v16, 2u);
    }

    v5 = SOSCCResetToOffering();
    v6 = *buf;
    v7 = _CDPLogSystem();
    v8 = v7;
    if (!v5 || v6)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(CDPDCircleController *)buf prepareCircleStateForRecovery:v8];
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_24510B000, v8, OS_LOG_TYPE_DEFAULT, "Successfully reset SOS circle to offering", v16, 2u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_joinCircleIgnoringBackups:(BOOL)backups completion:(id)completion
{
  completionCopy = completion;
  v7 = _os_activity_create(&dword_24510B000, "cdp: circle join", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  circleStatus = [(CDPDSOSCircleController *)self circleStatus];
  v9 = objc_alloc_init(CDPDCircleJoinResult);
  [(CDPDCircleJoinResult *)v9 setCircleStatus:circleStatus];
  [(CDPDCircleJoinResult *)v9 setRequiresEscrowRecordsFetch:1];
  [(CDPDCircleJoinResult *)v9 setRequiresInitialSync:1];
  if (circleStatus == 1)
  {
    v10 = _CDPLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(CDPDSOSCircleController *)v10 _joinCircleIgnoringBackups:v11 completion:v12, v13, v14, v15, v16, v17];
    }

    [(CDPDCircleJoinResult *)v9 setDidJoin:1];
    goto LABEL_5;
  }

  if ([(CDPDSOSCircleController *)self _peerCount])
  {
    v18 = _CDPLogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24510B000, v18, OS_LOG_TYPE_DEFAULT, "Circle has peers for remote approval", buf, 2u);
    }

    [(CDPDCircleJoinResult *)v9 setHasPeersForRemoteApproval:1];
  }

  else
  {
    v19 = _CDPLogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24510B000, v19, OS_LOG_TYPE_DEFAULT, "Circle does NOT have peers for remote approval", buf, 2u);
    }
  }

  if (circleStatus == 2 || circleStatus == 4)
  {
    v20 = _CDPLogSystem();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24510B000, v20, OS_LOG_TYPE_DEFAULT, "Falling back to recovery based circle flows...", buf, 2u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __65__CDPDSOSCircleController__joinCircleIgnoringBackups_completion___block_invoke;
    v23[3] = &unk_278E25BD8;
    v26 = completionCopy;
    backupsCopy = backups;
    v27 = circleStatus;
    v24 = v9;
    selfCopy = self;
    [WeakRetained circleController:self secureBackupRecordsArePresentWithCompletion:v23];

    v22 = v26;
    goto LABEL_21;
  }

  if (circleStatus != 3)
  {
    v22 = _CDPStateError();
    (*(completionCopy + 2))(completionCopy, 0, v22);
LABEL_21:

    goto LABEL_22;
  }

  [(CDPDCircleJoinResult *)v9 setNeedsBackupRecovery:1];
LABEL_5:
  (*(completionCopy + 2))(completionCopy, v9, 0);
LABEL_22:

  os_activity_scope_leave(&state);
}

void __65__CDPDSOSCircleController__joinCircleIgnoringBackups_completion___block_invoke(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v7 = a4;
  if (v7)
  {
    v8 = _CDPLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __65__CDPDSOSCircleController__joinCircleIgnoringBackups_completion___block_invoke_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
    }

    v15 = *(*(a1 + 48) + 16);
    goto LABEL_10;
  }

  [*(a1 + 32) setHasPeersWithCDPBackupRecords:a3];
  if (((a2 & 1) != 0 || a3) && *(a1 + 64) != 1 || *(a1 + 56) == 1)
  {
    [*(a1 + 32) setNeedsBackupRecovery:1];
    v16 = *(a1 + 32);
    v15 = *(*(a1 + 48) + 16);
LABEL_10:
    v15();
    goto LABEL_11;
  }

  v17 = _CDPLogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v17, OS_LOG_TYPE_DEFAULT, "Circle status is CDPSyncingStatusAbsent and backups are NOT present... Trying to create and join the circle", buf, 2u);
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __65__CDPDSOSCircleController__joinCircleIgnoringBackups_completion___block_invoke_17;
  v19[3] = &unk_278E255A0;
  v18 = *(a1 + 40);
  v21 = *(a1 + 48);
  v20 = *(a1 + 32);
  [v18 _requestToJoinAndWaitForSuccessWithHandler:v19];

LABEL_11:
}

uint64_t __65__CDPDSOSCircleController__joinCircleIgnoringBackups_completion___block_invoke_17(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 40);
  }

  else
  {
    [*(a1 + 32) setDidJoin:a2];
    v6 = *(a1 + 32);
  }

  v5 = *(*(a1 + 40) + 16);

  return v5();
}

- (void)joinCircleAfterRecoveryWithCompletion:(id)completion
{
  v51 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  circleProxy = self->_circleProxy;
  v48 = 0;
  v6 = [(CDPDCircleProxy *)circleProxy requestToJoinCircleAfterRestore:&v48];
  v7 = v48;
  v8 = _CDPLogSystem();
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24510B000, v9, OS_LOG_TYPE_DEFAULT, "Circle join request succeeded after backup recovery", buf, 2u);
    }

    circleStatus = [(CDPDSOSCircleController *)self circleStatus];
    v11 = _CDPLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v50 = circleStatus;
      _os_log_impl(&dword_24510B000, v11, OS_LOG_TYPE_DEFAULT, "Circle status after successful request to join is %lu", buf, 0xCu);
    }

    if (circleStatus == 3)
    {
      v29 = self->_circleProxy;
      v44 = 0;
      [(CDPDCircleProxy *)v29 resetToOffering:&v44];
      v15 = v44;
      if (completionCopy)
      {
        completionCopy[2](completionCopy, 0, v15);
      }

      goto LABEL_38;
    }

    if (circleStatus != 1)
    {
      v30 = objc_alloc_init(CDPDCircleStateObserver);
      v31 = self->_circleProxy;
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __65__CDPDSOSCircleController_joinCircleAfterRecoveryWithCompletion___block_invoke;
      v39[3] = &unk_278E25C00;
      v40 = v30;
      selfCopy = self;
      v42 = completionCopy;
      v43 = circleStatus;
      v15 = v30;
      [(CDPDCircleStateObserver *)v15 observeCircleStateWithCircleProxy:v31 changeHandler:v39];

LABEL_38:
      goto LABEL_39;
    }

    v12 = objc_alloc(MEMORY[0x277CDBD48]);
    cdpContext = [(CDPDCircleProxy *)self->_circleProxy cdpContext];
    cliqueConfiguration = [cdpContext cliqueConfiguration];
    v15 = [v12 initWithContextData:cliqueConfiguration];

    v47 = 0;
    LODWORD(cliqueConfiguration) = [(CDPDCircleStateObserver *)v15 fetchUserControllableViewsSyncingEnabled:&v47];
    v16 = v47;
    if (cliqueConfiguration)
    {
      v17 = self->_circleProxy;
      v46 = 0;
      v18 = [(CDPDCircleProxy *)v17 setUserControllableViewsSyncStatus:1 error:&v46];
      v19 = v46;
      v20 = _CDPLogSystem();
      v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
      if (v18)
      {
        if (v21)
        {
          *buf = 0;
          v22 = "Successfully enabled SOS views";
LABEL_29:
          v36 = v20;
          v37 = 2;
LABEL_33:
          _os_log_impl(&dword_24510B000, v36, OS_LOG_TYPE_DEFAULT, v22, buf, v37);
          goto LABEL_34;
        }

        goto LABEL_34;
      }

      if (!v21)
      {
        goto LABEL_34;
      }

      *buf = 138412290;
      v50 = v19;
      v22 = "Failed to enable SOS views: %@";
    }

    else
    {
      v19 = _CDPLogSystem();
      v32 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
      if (v16)
      {
        if (v32)
        {
          *buf = 138412290;
          v50 = v16;
          _os_log_impl(&dword_24510B000, v19, OS_LOG_TYPE_DEFAULT, "Failed to fetch user controllable views from clique, error: %@", buf, 0xCu);
        }

        goto LABEL_35;
      }

      if (v32)
      {
        *buf = 0;
        _os_log_impl(&dword_24510B000, v19, OS_LOG_TYPE_DEFAULT, "Octagon reports user controllable views are not enabled! disabling for SOS", buf, 2u);
      }

      v33 = self->_circleProxy;
      v45 = 0;
      v34 = [(CDPDCircleProxy *)v33 setUserControllableViewsSyncStatus:0 error:&v45];
      v19 = v45;
      v20 = _CDPLogSystem();
      v35 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
      if (v34)
      {
        if (v35)
        {
          *buf = 0;
          v22 = "Successfully disabled SOS views";
          goto LABEL_29;
        }

LABEL_34:

LABEL_35:
        if (completionCopy)
        {
          completionCopy[2](completionCopy, 1, 0);
        }

        goto LABEL_38;
      }

      if (!v35)
      {
        goto LABEL_34;
      }

      *buf = 138412290;
      v50 = v19;
      v22 = "Failed to disable SOS views: %@";
    }

    v36 = v20;
    v37 = 12;
    goto LABEL_33;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [(CDPDSOSCircleController *)v7 joinCircleAfterRecoveryWithCompletion:v9, v23, v24, v25, v26, v27, v28];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0, v7);
  }

LABEL_39:

  v38 = *MEMORY[0x277D85DE8];
}

void __65__CDPDSOSCircleController_joinCircleAfterRecoveryWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 == 3)
  {
    v12 = *(*(a1 + 40) + 24);
    v15 = 0;
    [v12 resetToOffering:&v15];
    v13 = v15;
    v14 = *(a1 + 48);
    if (v14)
    {
      (*(v14 + 16))(v14, 0, v13);
    }

    goto LABEL_11;
  }

  if (a2 != 1)
  {
    v13 = _CDPLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      __65__CDPDSOSCircleController_joinCircleAfterRecoveryWithCompletion___block_invoke_cold_2(a1, v13);
    }

LABEL_11:

    return;
  }

  v3 = _CDPLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __65__CDPDSOSCircleController_joinCircleAfterRecoveryWithCompletion___block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  [*(a1 + 32) stopObservingCircleStatusChange];
  v11 = *(a1 + 48);
  if (v11)
  {
    (*(v11 + 16))(v11, 1, 0);
  }
}

- (void)resetCircleIncludingCloudKitData:(BOOL)data cloudKitResetReasonDescription:(id)description withCompletion:(id)completion
{
  if (completion)
  {
    completionCopy = completion;
    v7 = _CDPStateError();
    (*(completion + 2))(completionCopy, 0, v7);
  }
}

- (void)useCircleInfoToUpdateNameForDevices:(id)devices
{
  v28 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  _peerDeviceNamesByPeerID = [(CDPDSOSCircleController *)self _peerDeviceNamesByPeerID];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = devicesCopy;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v20;
    *&v8 = 138412546;
    v18 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        recordID = [v12 recordID];

        if (recordID)
        {
          recordID2 = [v12 recordID];
          v15 = [_peerDeviceNamesByPeerID objectForKey:recordID2];

          if (v15)
          {
            v16 = _CDPLogSystem();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              *buf = v18;
              v24 = v12;
              v25 = 2112;
              v26 = v15;
              _os_log_debug_impl(&dword_24510B000, v16, OS_LOG_TYPE_DEBUG, "Updating device name for %@ to '%@' based on circle info", buf, 0x16u);
            }

            [v12 setLocalizedName:v15];
          }
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v9);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)applyToJoinCircleWithJoinHandler:(id)handler
{
  handlerCopy = handler;
  v4 = objc_alloc_init(CDPDCircleStateObserver);
  circleJoinObserver = self->_circleJoinObserver;
  self->_circleJoinObserver = v4;

  [(CDPDSOSCircleController *)self _requestToJoinWithObserver:self->_circleJoinObserver completion:handlerCopy];
}

- (void)_requestToJoinWithObserver:(id)observer completion:(id)completion
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __65__CDPDSOSCircleController__requestToJoinWithObserver_completion___block_invoke;
  v4[3] = &unk_278E25370;
  v4[4] = self;
  [(CDPDSOSCircleController *)self _requestCircleJoinWithObserver:observer requestBlock:v4 completion:completion];
}

- (void)_requestToJoinAndWaitForSuccessWithHandler:(id)handler
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __70__CDPDSOSCircleController__requestToJoinAndWaitForSuccessWithHandler___block_invoke;
  v3[3] = &unk_278E25370;
  v3[4] = self;
  [(CDPDSOSCircleController *)self _requestToJoinWithRequestBlock:v3 completion:handler];
}

- (void)_requestToJoinAfterRestoreAndWaitForSuccessWithHandler:(id)handler
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __82__CDPDSOSCircleController__requestToJoinAfterRestoreAndWaitForSuccessWithHandler___block_invoke;
  v3[3] = &unk_278E25370;
  v3[4] = self;
  [(CDPDSOSCircleController *)self _requestToJoinWithRequestBlock:v3 completion:handler];
}

- (void)_requestToJoinWithRequestBlock:(id)block completion:(id)completion
{
  completionCopy = completion;
  blockCopy = block;
  v8 = objc_alloc_init(CDPDCircleStateObserver);
  [(CDPDSOSCircleController *)self _requestCircleJoinWithObserver:v8 requestBlock:blockCopy completion:completionCopy];
}

- (void)_requestCircleJoinWithObserver:(id)observer requestBlock:(id)block completion:(id)completion
{
  observerCopy = observer;
  blockCopy = block;
  completionCopy = completion;
  v11 = _CDPLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v11, OS_LOG_TYPE_DEFAULT, "Requesting to join circle with handler", buf, 2u);
  }

  if ([(CDPDSOSCircleController *)self circleStatus]== 1)
  {
    v12 = _CDPLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [(CDPDSOSCircleController *)v12 _requestCircleJoinWithObserver:v13 requestBlock:v14 completion:v15, v16, v17, v18, v19];
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1, 0);
    }
  }

  else
  {
    *buf = 0;
    v33 = buf;
    v34 = 0x2020000000;
    v35 = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __82__CDPDSOSCircleController__requestCircleJoinWithObserver_requestBlock_completion___block_invoke;
    aBlock[3] = &unk_278E253C0;
    aBlock[4] = self;
    v31 = buf;
    v20 = observerCopy;
    v29 = v20;
    v30 = completionCopy;
    v21 = _Block_copy(aBlock);
    circleProxy = self->_circleProxy;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __82__CDPDSOSCircleController__requestCircleJoinWithObserver_requestBlock_completion___block_invoke_25;
    v26[3] = &unk_278E24820;
    v23 = v21;
    v27 = v23;
    [v20 observeChangeToState:1 circleProxy:circleProxy handler:v26];
    v25 = 0;
    LOBYTE(circleProxy) = blockCopy[2](blockCopy, &v25);
    v24 = v25;
    if ((circleProxy & 1) == 0)
    {
      (*(v23 + 2))(v23, 0, v24);
    }

    _Block_object_dispose(buf, 8);
  }
}

void __82__CDPDSOSCircleController__requestCircleJoinWithObserver_requestBlock_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__CDPDSOSCircleController__requestCircleJoinWithObserver_requestBlock_completion___block_invoke_2;
  block[3] = &unk_278E25398;
  v13 = *(a1 + 56);
  v7 = *(a1 + 40);
  v14 = a2;
  v10 = v7;
  v11 = v5;
  v12 = *(a1 + 48);
  v8 = v5;
  dispatch_sync(v6, block);
}

uint64_t __82__CDPDSOSCircleController__requestCircleJoinWithObserver_requestBlock_completion___block_invoke_2(uint64_t result)
{
  v1 = *(*(result + 56) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    v2 = result;
    *(v1 + 24) = 1;
    [*(result + 32) stopObservingCircleStatusChange];
    v3 = *(v2 + 64);
    v4 = _CDPLogSystem();
    v5 = v4;
    if (v3 == 1)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_24510B000, v5, OS_LOG_TYPE_DEFAULT, "Successfully joined the circle", v12, 2u);
      }
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __79__CDPDCircleController__requestCircleJoinWithObserver_requestBlock_completion___block_invoke_2_cold_1(v2, v5, v6, v7, v8, v9, v10, v11);
    }

    result = *(v2 + 48);
    if (result)
    {
      return (*(result + 16))(result, *(v2 + 64), *(v2 + 40));
    }
  }

  return result;
}

- (void)cancelApplicationToJoinCircle
{
  [(CDPDCircleStateObserver *)self->_circleJoinObserver stopObservingCircleStatusChange];
  circleJoinObserver = self->_circleJoinObserver;
  self->_circleJoinObserver = 0;
}

- (CDPDCircleDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __65__CDPDSOSCircleController__joinCircleIgnoringBackups_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_24510B000, a2, a3, "Can't join circle, failed to check for presence of secure backup records: %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)joinCircleAfterRecoveryWithCompletion:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_24510B000, a2, a3, "Failed to request circle join after restore with error %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __65__CDPDSOSCircleController_joinCircleAfterRecoveryWithCompletion___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  v4 = 134217984;
  v5 = v2;
  _os_log_debug_impl(&dword_24510B000, a2, OS_LOG_TYPE_DEBUG, "Circle status is now %lu (waiting for CDPSyncingStatusIn or CDPSyncingStatusPending)", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end