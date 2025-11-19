@interface NPKPassSyncService
- (NPKPassSyncService)initWithPassSyncEngineRole:(unint64_t)a3;
- (id)_archivedPassSyncEngine;
- (id)companionCatalogToSendWithStateChange;
- (id)currentLibraryPassSyncStateWithReconciledState:(id)a3;
- (id)passSyncEngine:(id)a3 dataForPassWithUniqueID:(id)a4;
- (id)passSyncEngine:(id)a3 partialDataForPassWithUniqueID:(id)a4 baseManifest:(id)a5 outRemoteAssets:(id *)a6;
- (id)watchCatalogToSendWithStateChange;
- (unint64_t)settingsForPassWithUniqueID:(id)a3;
- (void)_archiveTimerFired;
- (void)_ensureSyncTimerIsSet;
- (void)_provideUpdatedLibraryStateToSyncEngineAndSyncIfNecessary:(BOOL)a3;
- (void)_syncNow;
- (void)_syncTimerFired;
- (void)_syncWhenAppropriate;
- (void)associatedPassDataRequested:(id)a3;
- (void)catalogChanged:(id)a3;
- (void)handleCatalogChangeWithCompanionCatalog:(id)a3 watchCatalog:(id)a4;
- (void)handleIncomingCompanionCatalog:(id)a3 watchCatalog:(id)a4;
- (void)handleIncomingPassSettings:(unint64_t)a3 forPassWithUniqueID:(id)a4;
- (void)handlePassLibraryChanged;
- (void)handleRequestedAssociatedData:(unint64_t)a3 forPassWithUniqueID:(id)a4;
- (void)handleSettingsChanged:(unint64_t)a3 forPassWithUniqueID:(id)a4;
- (void)passSettingsChanged:(id)a3;
- (void)passSyncEngine:(id)a3 finishedProcessingChange:(id)a4;
- (void)passSyncEngine:(id)a3 receivedStateChangeProcessed:(id)a4 changeAccepted:(BOOL)a5;
- (void)passSyncEngine:(id)a3 requestsAddPassData:(id)a4 forSyncStateItem:(id)a5 completion:(id)a6;
- (void)passSyncEngine:(id)a3 requestsRemovePassWithUniqueID:(id)a4 completion:(id)a5;
- (void)passSyncEngine:(id)a3 requestsUpdatePassData:(id)a4 forSyncStateItem:(id)a5 baseManifestHashForPartialUpdate:(id)a6 remoteAssetsForPartialUpdate:(id)a7 completion:(id)a8;
- (void)passSyncEngine:(id)a3 sendProposedReconciledState:(id)a4;
- (void)passSyncEngine:(id)a3 sendReconciledStateAcceptedWithHash:(id)a4;
- (void)passSyncEngine:(id)a3 sendReconciledStateUnrecognizedWithHash:(id)a4 version:(unint64_t)a5 currentPassSyncState:(id)a6;
- (void)passSyncEngine:(id)a3 sendStateChange:(id)a4;
- (void)passSyncEngineStateChanged:(id)a3;
- (void)proposedReconciledState:(id)a3;
- (void)reconciledStateAccepted:(id)a3;
- (void)reconciledStateUnrecognized:(id)a3;
- (void)requestAssociatedData:(unint64_t)a3 forPassWithUniqueID:(id)a4;
- (void)start;
- (void)suggestSync;
- (void)syncStateChangeProcessed:(id)a3;
- (void)syncStateChanged:(id)a3;
- (void)updatePassLibrary;
@end

@implementation NPKPassSyncService

- (NPKPassSyncService)initWithPassSyncEngineRole:(unint64_t)a3
{
  v22.receiver = self;
  v22.super_class = NPKPassSyncService;
  v4 = [(NPKPassSyncService *)&v22 init];
  if (v4)
  {
    v5 = dispatch_queue_create("com.apple.nanopassd.passsync", 0);
    v6 = *(v4 + 4);
    *(v4 + 4) = v5;

    v7 = [objc_alloc(MEMORY[0x277D18778]) initWithService:@"com.apple.private.alloy.passbook.general"];
    [v7 setProtobufAction:sel_syncStateChanged_ forIncomingRequestsOfType:40];
    [v7 setProtobufAction:sel_syncStateChangeProcessed_ forIncomingRequestsOfType:41];
    [v7 setProtobufAction:sel_reconciledStateUnrecognized_ forIncomingRequestsOfType:42];
    [v7 setProtobufAction:sel_proposedReconciledState_ forIncomingRequestsOfType:43];
    [v7 setProtobufAction:sel_reconciledStateAccepted_ forIncomingRequestsOfType:44];
    [v7 setProtobufAction:sel_passSettingsChanged_ forIncomingRequestsOfType:31];
    [v7 setProtobufAction:sel_catalogChanged_ forIncomingRequestsOfType:7];
    [v7 setProtobufAction:sel_associatedPassDataRequested_ forIncomingRequestsOfType:45];
    [v7 addDelegate:v4 queue:*(v4 + 4)];
    objc_storeStrong(v4 + 3, v7);
    objc_initWeak(&location, v4);
    v8 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v4 + 4));
    dispatch_source_set_timer(v8, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __49__NPKPassSyncService_initWithPassSyncEngineRole___block_invoke;
    v19 = &unk_279945030;
    objc_copyWeak(&v20, &location);
    dispatch_source_set_event_handler(v8, &v16);
    dispatch_resume(v8);
    objc_storeStrong(v4 + 5, v8);
    v9 = objc_alloc_init(NPKPassSyncServiceSyncStatus);
    v10 = *(v4 + 7);
    *(v4 + 7) = v9;

    v11 = [v4 _archivedPassSyncEngine];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = [[NPKPassSyncEngine alloc] initWithRole:a3];
    }

    v14 = *(v4 + 2);
    *(v4 + 2) = v13;

    [*(v4 + 2) setDelegate:v4];
    [*(v4 + 2) setDataSource:v4];
    objc_destroyWeak(&v20);

    objc_destroyWeak(&location);
  }

  return v4;
}

void __49__NPKPassSyncService_initWithPassSyncEngineRole___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _archiveTimerFired];
}

- (void)start
{
  v3 = pk_Sync_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_Sync_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service: starting", buf, 2u);
    }
  }

  passSyncQueue = self->_passSyncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__NPKPassSyncService_start__block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_async(passSyncQueue, block);
}

- (void)handlePassLibraryChanged
{
  v3 = pk_Sync_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_Sync_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service: pass library changed", v6, 2u);
    }
  }

  [(NPKPassSyncService *)self updatePassLibrary];
}

- (void)updatePassLibrary
{
  passSyncQueue = self->_passSyncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__NPKPassSyncService_updatePassLibrary__block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_async(passSyncQueue, block);
}

- (void)requestAssociatedData:(unint64_t)a3 forPassWithUniqueID:(id)a4
{
  v47 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"46D8FA11-A747-4C0B-B4F4-0AB1308739B4"];
  v8 = NPKPairedOrPairingDevice();
  v9 = [v8 supportsCapability:v7];

  if (v9)
  {
    if (v6)
    {
      v10 = pk_Sync_log();
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

      if (a3)
      {
        if (v11)
        {
          v12 = pk_Sync_log();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = NSStringFromNPKAssociatedPassData(a3);
            *buf = 138412546;
            v44 = v13;
            v45 = 2112;
            v46 = v6;
            _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: Requesting associated data:%@ for pass with uniqueID:%@", buf, 0x16u);
          }
        }

        v14 = objc_alloc_init(NPKProtoPassAssociatedDataRequest);
        [(NPKProtoPassAssociatedDataRequest *)v14 setPassUniqueID:v6];
        [(NPKProtoPassAssociatedDataRequest *)v14 setPassRequestedData:a3];
        v15 = objc_alloc(MEMORY[0x277D189F0]);
        v16 = [(NPKProtoPassAssociatedDataRequest *)v14 data];
        v17 = [v15 initWithProtobufData:v16 type:45 isResponse:0];

        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"passAssociatedData-%@", v6];
        v41[0] = *MEMORY[0x277D18650];
        v19 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D18828]];
        v20 = *MEMORY[0x277D18630];
        v42[0] = v19;
        v42[1] = v18;
        v21 = *MEMORY[0x277D18580];
        v41[1] = v20;
        v41[2] = v21;
        v22 = *MEMORY[0x277D18600];
        v42[2] = MEMORY[0x277CBEC38];
        v42[3] = MEMORY[0x277CBEC38];
        v23 = *MEMORY[0x277D18568];
        v41[3] = v22;
        v41[4] = v23;
        v42[4] = MEMORY[0x277CBEC38];
        v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:5];

        passSyncService = self->_passSyncService;
        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 3221225472;
        v39[2] = __64__NPKPassSyncService_requestAssociatedData_forPassWithUniqueID___block_invoke;
        v39[3] = &unk_279945058;
        v26 = v17;
        v40 = v26;
        v27 = NPKProtoSendWithOptions(passSyncService, v26, 200, 0, 0, v39, v24);
        v28 = pk_Sync_log();
        v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);

        if (v29)
        {
          v30 = pk_Sync_log();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v44 = v27;
            v45 = 2112;
            v46 = v26;
            _os_log_impl(&dword_25B300000, v30, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service: sent pass associated data request\n\tMessage ID: %@\n\tProtobuf: %@", buf, 0x16u);
          }
        }

        goto LABEL_21;
      }

      if (!v11)
      {
        goto LABEL_22;
      }

      v14 = pk_Sync_log();
      if (!os_log_type_enabled(&v14->super.super.super, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_21;
      }

      *buf = 138412290;
      v44 = v6;
      v33 = "Warning: missing associated data for pass with uniqueID:%@, will not request pass associated data";
      p_super = &v14->super.super.super;
      v37 = 12;
      goto LABEL_20;
    }

    v34 = pk_Sync_log();
    v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);

    if (v35)
    {
      v14 = pk_Sync_log();
      if (os_log_type_enabled(&v14->super.super.super, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v33 = "Warning: missing pass uniqueID, will not request pass associated data";
        goto LABEL_19;
      }

      goto LABEL_21;
    }
  }

  else
  {
    v31 = pk_Sync_log();
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);

    if (v32)
    {
      v14 = pk_Sync_log();
      if (os_log_type_enabled(&v14->super.super.super, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v33 = "Notice: Paired devices doesn't support request pass associated data";
LABEL_19:
        p_super = &v14->super.super.super;
        v37 = 2;
LABEL_20:
        _os_log_impl(&dword_25B300000, p_super, OS_LOG_TYPE_DEFAULT, v33, buf, v37);
      }

LABEL_21:
    }
  }

LABEL_22:

  v38 = *MEMORY[0x277D85DE8];
}

void __64__NPKPassSyncService_requestAssociatedData_forPassWithUniqueID___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Sync_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v6 = pk_Sync_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v9 = 138412546;
      v10 = v7;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_ERROR, "Error: Failed to send pass associated data request: %@ error:%@", &v9, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)handleSettingsChanged:(unint64_t)a3 forPassWithUniqueID:(id)a4
{
  v35[5] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = pk_Sync_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = pk_Sync_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = v6;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service: pass settings changed for pass with unique ID %@", buf, 0xCu);
    }
  }

  v10 = objc_alloc_init(NPKProtoPassSettingsChangedRequest);
  [(NPKProtoPassSettingsChangedRequest *)v10 setUniqueID:v6];
  [(NPKProtoPassSettingsChangedRequest *)v10 setPassSettings:a3];
  v11 = objc_alloc(MEMORY[0x277D189F0]);
  v12 = [(NPKProtoPassSettingsChangedRequest *)v10 data];
  v13 = [v11 initWithProtobufData:v12 type:31 isResponse:0];

  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"passSettings-%@", v6];
  v34[0] = *MEMORY[0x277D18650];
  v15 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D18828]];
  v16 = *MEMORY[0x277D18630];
  v35[0] = v15;
  v35[1] = v14;
  v17 = *MEMORY[0x277D18580];
  v34[1] = v16;
  v34[2] = v17;
  v18 = *MEMORY[0x277D18568];
  v35[2] = MEMORY[0x277CBEC38];
  v35[3] = MEMORY[0x277CBEC38];
  v19 = *MEMORY[0x277D18600];
  v34[3] = v18;
  v34[4] = v19;
  v35[4] = MEMORY[0x277CBEC38];
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:5];

  passSyncService = self->_passSyncService;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __64__NPKPassSyncService_handleSettingsChanged_forPassWithUniqueID___block_invoke;
  v28[3] = &unk_279945058;
  v22 = v13;
  v29 = v22;
  v23 = NPKProtoSendWithOptions(passSyncService, v22, 200, 0, 0, v28, v20);
  v24 = pk_Sync_log();
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);

  if (v25)
  {
    v26 = pk_Sync_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v31 = v23;
      v32 = 2112;
      v33 = v22;
      _os_log_impl(&dword_25B300000, v26, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service: sent pass settings\n\tMessage ID: %@\n\tProtobuf: %@", buf, 0x16u);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __64__NPKPassSyncService_handleSettingsChanged_forPassWithUniqueID___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = pk_Sync_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v4 = pk_Sync_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_ERROR, "Error: Failed to send pass settings: %@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)handleCatalogChangeWithCompanionCatalog:(id)a3 watchCatalog:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = pk_Sync_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Sync_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v37 = v6;
      v38 = 2048;
      v39 = v7;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service: handling catalog changed (companion %p watch %p)", buf, 0x16u);
    }
  }

  v11 = objc_alloc_init(NPKProtoCatalog);
  if (!v6 || (NPKSecureArchiveObject(v6), (v12 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v12 = [MEMORY[0x277CBEA90] data];
  }

  [(NPKProtoCatalog *)v11 setCatalogData:v12];
  v13 = objc_alloc_init(NPKProtoCatalogChangedRequest);
  [(NPKProtoCatalogChangedRequest *)v13 setCompanionCatalog:v11];
  if (v7)
  {
    v14 = NPKSecureArchiveObject(v7);
    if (v14)
    {
      v15 = objc_alloc_init(NPKProtoCatalog);
      [(NPKProtoCatalog *)v15 setCatalogData:v14];
      [(NPKProtoCatalogChangedRequest *)v13 setWatchCatalog:v15];
    }
  }

  v16 = objc_alloc(MEMORY[0x277D189F0]);
  v17 = [(NPKProtoCatalogChangedRequest *)v13 data];
  v18 = [v16 initWithProtobufData:v17 type:7 isResponse:0];

  v34[0] = *MEMORY[0x277D18650];
  v19 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D18828]];
  v20 = *MEMORY[0x277D18630];
  v35[0] = v19;
  v35[1] = @"passCatalog";
  v21 = *MEMORY[0x277D18580];
  v34[1] = v20;
  v34[2] = v21;
  v22 = *MEMORY[0x277D18568];
  v35[2] = MEMORY[0x277CBEC38];
  v35[3] = MEMORY[0x277CBEC38];
  v23 = *MEMORY[0x277D18600];
  v34[3] = v22;
  v34[4] = v23;
  v35[4] = MEMORY[0x277CBEC38];
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:5];

  passSyncService = self->_passSyncService;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __75__NPKPassSyncService_handleCatalogChangeWithCompanionCatalog_watchCatalog___block_invoke;
  v32[3] = &unk_279945058;
  v26 = v18;
  v33 = v26;
  v27 = NPKProtoSendWithOptions(passSyncService, v26, 200, 0, 0, v32, v24);
  v28 = pk_Sync_log();
  v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);

  if (v29)
  {
    v30 = pk_Sync_log();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v37 = v27;
      v38 = 2112;
      v39 = v26;
      _os_log_impl(&dword_25B300000, v30, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service: sent catalog\n\tMessage ID: %@\n\tProtobuf: %@", buf, 0x16u);
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

void __75__NPKPassSyncService_handleCatalogChangeWithCompanionCatalog_watchCatalog___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = pk_Sync_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v4 = pk_Sync_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_ERROR, "Error: Failed to send catalog: %@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)suggestSync
{
  passSyncQueue = self->_passSyncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__NPKPassSyncService_suggestSync__block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_async(passSyncQueue, block);
}

- (id)currentLibraryPassSyncStateWithReconciledState:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = pk_General_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

  if (v4)
  {
    v5 = pk_General_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446722;
      v7 = "[NPKPassSyncService currentLibraryPassSyncStateWithReconciledState:]";
      v8 = 2082;
      v9 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKPassSyncService.m";
      v10 = 2048;
      v11 = 294;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Subclasses must override)", &v6, 0x20u);
    }
  }

  _NPKAssertAbort();
}

- (unint64_t)settingsForPassWithUniqueID:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = pk_General_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

  if (v4)
  {
    v5 = pk_General_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446722;
      v7 = "[NPKPassSyncService settingsForPassWithUniqueID:]";
      v8 = 2082;
      v9 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKPassSyncService.m";
      v10 = 2048;
      v11 = 300;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Subclasses must override)", &v6, 0x20u);
    }
  }

  _NPKAssertAbort();
}

- (void)handleIncomingPassSettings:(unint64_t)a3 forPassWithUniqueID:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = pk_General_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v6 = pk_General_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136446722;
      v8 = "[NPKPassSyncService handleIncomingPassSettings:forPassWithUniqueID:]";
      v9 = 2082;
      v10 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKPassSyncService.m";
      v11 = 2048;
      v12 = 306;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Subclasses must override)", &v7, 0x20u);
    }
  }

  _NPKAssertAbort();
}

- (void)handleIncomingCompanionCatalog:(id)a3 watchCatalog:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = pk_General_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v6 = pk_General_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136446722;
      v8 = "[NPKPassSyncService handleIncomingCompanionCatalog:watchCatalog:]";
      v9 = 2082;
      v10 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKPassSyncService.m";
      v11 = 2048;
      v12 = 311;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Subclasses must override)", &v7, 0x20u);
    }
  }

  _NPKAssertAbort();
}

- (id)companionCatalogToSendWithStateChange
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = pk_General_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v4 = pk_General_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "[NPKPassSyncService companionCatalogToSendWithStateChange]";
      v7 = 2082;
      v8 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKPassSyncService.m";
      v9 = 2048;
      v10 = 316;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Subclasses must override)", &v5, 0x20u);
    }
  }

  _NPKAssertAbort();
}

- (id)watchCatalogToSendWithStateChange
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = pk_General_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v4 = pk_General_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "[NPKPassSyncService watchCatalogToSendWithStateChange]";
      v7 = 2082;
      v8 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKPassSyncService.m";
      v9 = 2048;
      v10 = 322;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Subclasses must override)", &v5, 0x20u);
    }
  }

  _NPKAssertAbort();
}

- (void)syncStateChanged:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  passSyncQueue = self->_passSyncQueue;
  v5 = a3;
  dispatch_assert_queue_V2(passSyncQueue);
  v6 = [NPKOSTransaction transactionWithName:@"sync state changed"];
  v7 = [NPKProtoPassSyncStateChange alloc];
  v8 = [v5 data];

  v9 = [(NPKProtoPassSyncStateChange *)v7 initWithData:v8];
  v10 = [[NPKPassSyncChange alloc] initWithProtoPassSyncChange:v9];
  if (![(NPKProtoPassSyncStateChange *)v9 hasPassSegmentIndex])
  {
LABEL_14:
    [(NPKPassSyncEngine *)self->_passSyncEngine handleStateChange:v10];
    if ([(NPKProtoPassSyncStateChange *)v9 hasCompanionCatalog]|| [(NPKProtoPassSyncStateChange *)v9 hasWatchCatalog])
    {
      v24 = [NPKOSTransaction transactionWithName:@"sync state changed, catalog"];
      if ([(NPKProtoPassSyncStateChange *)v9 hasCompanionCatalog])
      {
        v25 = [(NPKProtoPassSyncStateChange *)v9 companionCatalog];
        v26 = [v25 catalogData];
        v27 = objc_opt_class();
        v28 = NPKSecureUnarchiveObject(v26, v27);
      }

      else
      {
        v28 = 0;
      }

      if ([(NPKProtoPassSyncStateChange *)v9 hasWatchCatalog])
      {
        v32 = [(NPKProtoPassSyncStateChange *)v9 watchCatalog];
        v33 = [v32 catalogData];
        v34 = objc_opt_class();
        v35 = NPKSecureUnarchiveObject(v33, v34);
      }

      else
      {
        v35 = 0;
      }

      [(NPKPassSyncService *)self handleIncomingCompanionCatalog:v28 watchCatalog:v35];
      [v24 invalidate];

LABEL_26:
      goto LABEL_27;
    }

    goto LABEL_27;
  }

  v11 = [(NPKProtoPassSyncStateChange *)v9 passSegmentIndex];
  v12 = pk_Sync_log();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

  if (v13)
  {
    v14 = pk_Sync_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(NPKPassSyncChange *)v10 changeUUID];
      v37 = 138412802;
      v38 = v15;
      v39 = 1024;
      v40 = v11;
      v41 = 1024;
      v42 = [(NPKProtoPassSyncStateChange *)v9 passSegmentTotal];
      _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service: storing large pass data segment\n\tchange UUID: %@\n\tsegment index: %u\n\ttotal pass segments: %u", &v37, 0x18u);
    }
  }

  v16 = [(NPKPassSyncChange *)v10 passData];
  v17 = [(NPKPassSyncChange *)v10 changeUUID];
  NPKStoreLargePassDataSegmentForChangeUUID(v16, v17, v11);

  if ([(NPKProtoPassSyncStateChange *)v9 hasPassSegmentTotal]&& [(NPKProtoPassSyncStateChange *)v9 passSegmentTotal]== v11 + 1)
  {
    v18 = [(NPKPassSyncChange *)v10 changeUUID];
    v19 = NPKDataForLargePassWithChangeUUID(v18, [(NPKProtoPassSyncStateChange *)v9 passSegmentTotal]);

    v20 = pk_Sync_log();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

    if (v21)
    {
      v22 = pk_Sync_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [v19 npkDescription];
        v37 = 138412290;
        v38 = v23;
        _os_log_impl(&dword_25B300000, v22, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service: this is the last segment of pass data\n\tretrieved combined pass data: %@", &v37, 0xCu);
      }
    }

    if (v19)
    {
      [(NPKPassSyncChange *)v10 setPassData:v19];

      goto LABEL_14;
    }
  }

  v29 = pk_Sync_log();
  v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);

  if (v30)
  {
    v28 = pk_Sync_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [(NPKPassSyncChange *)v10 changeUUID];
      v37 = 138412290;
      v38 = v31;
      _os_log_impl(&dword_25B300000, v28, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service: not providing state change to sync engine\n\tchange UUID: %@", &v37, 0xCu);
    }

    goto LABEL_26;
  }

LABEL_27:
  [v6 invalidate];

  v36 = *MEMORY[0x277D85DE8];
}

- (void)syncStateChangeProcessed:(id)a3
{
  passSyncQueue = self->_passSyncQueue;
  v5 = a3;
  dispatch_assert_queue_V2(passSyncQueue);
  v13 = [NPKOSTransaction transactionWithName:@"sync state change processed"];
  v6 = [NPKProtoPassSyncStateChangeProcessed alloc];
  v7 = [v5 data];

  v8 = [(NPKProtoPassSyncStateChangeProcessed *)v6 initWithData:v7];
  v9 = objc_alloc(MEMORY[0x277CCAD78]);
  v10 = [(NPKProtoPassSyncStateChangeProcessed *)v8 acceptedChangeUUID];
  v11 = [v9 initWithUUIDBytes:{objc_msgSend(v10, "bytes")}];

  if ([(NPKProtoPassSyncStateChangeProcessed *)v8 hasChangeAccepted])
  {
    v12 = [(NPKProtoPassSyncStateChangeProcessed *)v8 changeAccepted];
  }

  else
  {
    v12 = 1;
  }

  [(NPKPassSyncEngine *)self->_passSyncEngine handleStateChangeProcessedWithUUID:v11 changeAccepted:v12 fullPassRequired:[(NPKProtoPassSyncStateChangeProcessed *)v8 fullPassRequired]];
  [v13 invalidate];
}

- (void)reconciledStateUnrecognized:(id)a3
{
  passSyncQueue = self->_passSyncQueue;
  v5 = a3;
  dispatch_assert_queue_V2(passSyncQueue);
  v14 = [NPKOSTransaction transactionWithName:@"sync state change processed"];
  v6 = [NPKProtoPassSyncReconciledStateUnrecognized alloc];
  v7 = [v5 data];

  v8 = [(NPKProtoPassSyncReconciledStateUnrecognized *)v6 initWithData:v7];
  v9 = [(NPKProtoPassSyncReconciledStateUnrecognized *)v8 unrecognizedReconciledStateHash];
  v10 = [(NPKProtoPassSyncReconciledStateUnrecognized *)v8 hasUnrecognizedReconciledStateVersion];
  v11 = [NPKPassSyncState alloc];
  v12 = [(NPKProtoPassSyncReconciledStateUnrecognized *)v8 libraryPassSyncState];
  v13 = [(NPKPassSyncState *)v11 initWithProtoSyncState:v12];

  [(NPKPassSyncEngine *)self->_passSyncEngine handleReconciledStateUnrecognizedWithHash:v9 version:v10 passSyncState:v13];
  [v14 invalidate];
}

- (void)proposedReconciledState:(id)a3
{
  passSyncQueue = self->_passSyncQueue;
  v5 = a3;
  dispatch_assert_queue_V2(passSyncQueue);
  v12 = [NPKOSTransaction transactionWithName:@"proposed reconciled state"];
  v6 = [NPKProtoPassSyncProposedReconciledState alloc];
  v7 = [v5 data];

  v8 = [(NPKProtoPassSyncProposedReconciledState *)v6 initWithData:v7];
  v9 = [NPKPassSyncState alloc];
  v10 = [(NPKProtoPassSyncProposedReconciledState *)v8 proposedReconciledState];
  v11 = [(NPKPassSyncState *)v9 initWithProtoSyncState:v10];

  [(NPKPassSyncEngine *)self->_passSyncEngine handleProposedReconciledState:v11];
  [v12 invalidate];
}

- (void)reconciledStateAccepted:(id)a3
{
  passSyncQueue = self->_passSyncQueue;
  v5 = a3;
  dispatch_assert_queue_V2(passSyncQueue);
  v11 = [NPKOSTransaction transactionWithName:@"reconciled state accepted"];
  v6 = [NPKProtoPassSyncReconciledStateAccepted alloc];
  v7 = [v5 data];

  v8 = [(NPKProtoPassSyncReconciledStateAccepted *)v6 initWithData:v7];
  passSyncEngine = self->_passSyncEngine;
  v10 = [(NPKProtoPassSyncReconciledStateAccepted *)v8 reconciledStateHash];
  [(NPKPassSyncEngine *)passSyncEngine handleReconciledStateAcceptedWithHash:v10];

  [v11 invalidate];
}

- (void)passSettingsChanged:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = pk_Sync_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Sync_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v4 npkDescription];
      v18 = 138412290;
      v19 = v8;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service: pass settings changed with protobuf %@", &v18, 0xCu);
    }
  }

  v9 = [NPKOSTransaction transactionWithName:@"pass settings changed"];
  v10 = [NPKProtoPassSettingsChangedRequest alloc];
  v11 = [v4 data];
  v12 = [(NPKProtoPassSettingsChangedRequest *)v10 initWithData:v11];

  v13 = [(NPKProtoPassSettingsChangedRequest *)v12 uniqueID];
  if (v13 && [(NPKProtoPassSettingsChangedRequest *)v12 hasPassSettings])
  {
    [(NPKPassSyncService *)self handleIncomingPassSettings:[(NPKProtoPassSettingsChangedRequest *)v12 passSettings] forPassWithUniqueID:v13];
  }

  else
  {
    v14 = pk_Sync_log();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

    if (v15)
    {
      v16 = pk_Sync_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v18) = 0;
        _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_DEFAULT, "Warning: Pass sync service: No unique ID or no pass settings in protobuf", &v18, 2u);
      }
    }
  }

  [v9 invalidate];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)catalogChanged:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = pk_Sync_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Sync_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v4 npkDescription];
      v25 = 138412290;
      v26 = v8;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service: catalog changed with protobuf %@", &v25, 0xCu);
    }
  }

  v9 = [NPKOSTransaction transactionWithName:@"Catalog changed"];
  v10 = [NPKProtoCatalogChangedRequest alloc];
  v11 = [v4 data];
  v12 = [(NPKProtoCatalogChangedRequest *)v10 initWithData:v11];

  v13 = [(NPKProtoCatalogChangedRequest *)v12 companionCatalog];
  v14 = [v13 catalogData];
  v15 = [v14 length];

  if (v15)
  {
    v16 = [(NPKProtoCatalogChangedRequest *)v12 companionCatalog];
    v17 = [v16 catalogData];
    v18 = objc_opt_class();
    v19 = NPKSecureUnarchiveObject(v17, v18);
  }

  else
  {
    v19 = 0;
  }

  v20 = [(NPKProtoCatalogChangedRequest *)v12 watchCatalog];
  v21 = [v20 catalogData];
  v22 = objc_opt_class();
  v23 = NPKSecureUnarchiveObject(v21, v22);

  [(NPKPassSyncService *)self handleIncomingCompanionCatalog:v19 watchCatalog:v23];
  [v9 invalidate];

  v24 = *MEMORY[0x277D85DE8];
}

- (void)associatedPassDataRequested:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = pk_Sync_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Sync_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v4 npkDescription];
      v22 = 138412290;
      v23 = v8;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service: associated pass data request with protobuf %@", &v22, 0xCu);
    }
  }

  v9 = [NPKProtoPassAssociatedDataRequest alloc];
  v10 = [v4 data];
  v11 = [(NPKProtoPassAssociatedDataRequest *)v9 initWithData:v10];

  v12 = [(NPKProtoPassAssociatedDataRequest *)v11 passUniqueID];
  if ([(NPKProtoPassAssociatedDataRequest *)v11 hasPassRequestedData])
  {
    v13 = [(NPKProtoPassAssociatedDataRequest *)v11 passRequestedData];
  }

  else
  {
    v13 = 8;
  }

  v14 = pk_Sync_log();
  v15 = v14;
  if (v12)
  {
    v16 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

    if (v16)
    {
      v17 = pk_Sync_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = NSStringFromNPKAssociatedPassData(v13);
        v22 = 138412546;
        v23 = v18;
        v24 = 2112;
        v25 = v12;
        _os_log_impl(&dword_25B300000, v17, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service: associated pass data request:%@ for Pass with uniqueID:%@", &v22, 0x16u);
      }
    }

    [(NPKPassSyncService *)self handleRequestedAssociatedData:v13 forPassWithUniqueID:v12];
  }

  else
  {
    v19 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);

    if (v19)
    {
      v20 = pk_Sync_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v22) = 0;
        _os_log_impl(&dword_25B300000, v20, OS_LOG_TYPE_ERROR, "Error: unexpected associated pass data request with nil uniqueID", &v22, 2u);
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)passSyncEngine:(id)a3 sendStateChange:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!self->_dropAllMessages)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __53__NPKPassSyncService_passSyncEngine_sendStateChange___block_invoke;
    aBlock[3] = &unk_279945080;
    aBlock[4] = self;
    v10 = _Block_copy(aBlock);
    v11 = [v7 passData];
    v12 = [v7 protoPassSyncChange];
    v13 = [(NPKPassSyncService *)self companionCatalogToSendWithStateChange];
    if (v13)
    {
      v14 = objc_alloc_init(NPKProtoCatalog);
      v15 = NPKSecureArchiveObject(v13);
      [(NPKProtoCatalog *)v14 setCatalogData:v15];

      [v12 setCompanionCatalog:v14];
    }

    v16 = [(NPKPassSyncService *)self watchCatalogToSendWithStateChange];
    if (v16)
    {
      v17 = objc_alloc_init(NPKProtoCatalog);
      v18 = NPKSecureArchiveObject(v16);
      [(NPKProtoCatalog *)v17 setCatalogData:v18];

      [v12 setWatchCatalog:v17];
    }

    v19 = objc_autoreleasePoolPush();
    v20 = v19;
    if (v11)
    {
      if ([v11 length] > 0x500000)
      {
        objc_autoreleasePoolPop(v20);
LABEL_15:
        v31 = v6;
        v25 = NPKSegmentsForLargePassDataNoCopy(v11, 0x400000uLL);
        v26 = [v25 count];
        v27 = pk_Sync_log();
        v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);

        if (v28)
        {
          v29 = pk_Sync_log();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            v39 = v26;
            _os_log_impl(&dword_25B300000, v29, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service: splitting state change into %u pieces", buf, 8u);
          }
        }

        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __53__NPKPassSyncService_passSyncEngine_sendStateChange___block_invoke_162;
        v32[3] = &unk_2799450A8;
        v33 = v12;
        v36 = v26;
        v34 = v7;
        v35 = v10;
        [v25 enumerateObjectsUsingBlock:v32];

        v6 = v31;
        goto LABEL_21;
      }

      v21 = [v12 data];
      v22 = v6;
      v23 = [v21 length];

      objc_autoreleasePoolPop(v20);
      v24 = v23 > 0x500000;
      v6 = v22;
      if (v24)
      {
        goto LABEL_15;
      }
    }

    else
    {
      objc_autoreleasePoolPop(v19);
    }

    (*(v10 + 16))(v10, v12, @"passSyncStateChange");
LABEL_21:

LABEL_22:
    goto LABEL_23;
  }

  v8 = pk_Sync_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Sync_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Warning: Dropping state change message", buf, 2u);
    }

    goto LABEL_22;
  }

LABEL_23:

  v30 = *MEMORY[0x277D85DE8];
}

void __53__NPKPassSyncService_passSyncEngine_sendStateChange___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30[4] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = objc_alloc(MEMORY[0x277D189F0]);
  v9 = [v5 data];
  v10 = [v8 initWithProtobufData:v9 type:40 isResponse:0];

  v29[0] = *MEMORY[0x277D18650];
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D18828]];
  v12 = *MEMORY[0x277D18580];
  v30[0] = v11;
  v30[1] = MEMORY[0x277CBEC38];
  v13 = *MEMORY[0x277D18568];
  v29[1] = v12;
  v29[2] = v13;
  v29[3] = *MEMORY[0x277D18630];
  v30[2] = MEMORY[0x277CBEC38];
  v30[3] = v6;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:4];

  v15 = *(*(a1 + 32) + 24);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __53__NPKPassSyncService_passSyncEngine_sendStateChange___block_invoke_2;
  v23[3] = &unk_279945058;
  v16 = v5;
  v24 = v16;
  v17 = NPKProtoSendWithOptions(v15, v10, 200, 0, 0, v23, v14);
  v18 = pk_Sync_log();
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

  if (v19)
  {
    v20 = pk_Sync_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v16 npkDescription];
      *buf = 138412546;
      v26 = v17;
      v27 = 2112;
      v28 = v21;
      _os_log_impl(&dword_25B300000, v20, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service: sent state change IDS message\n\tMessage ID: %@\n\tProtobuf: %@", buf, 0x16u);
    }
  }

  objc_autoreleasePoolPop(v7);
  v22 = *MEMORY[0x277D85DE8];
}

void __53__NPKPassSyncService_passSyncEngine_sendStateChange___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = pk_Sync_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v4 = pk_Sync_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_ERROR, "Error: Failed to send pass sync state change: %@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __53__NPKPassSyncService_passSyncEngine_sendStateChange___block_invoke_162(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setPassData:a2];
  [*(a1 + 32) setPassSegmentIndex:a3];
  [*(a1 + 32) setPassSegmentTotal:*(a1 + 56)];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"passSyncStateChange-%u", a3];
  v6 = pk_Sync_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_Sync_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 56);
      v10 = [*(a1 + 40) changeUUID];
      *buf = 67109634;
      v14 = a3;
      v15 = 1024;
      v16 = v9;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service: sending state change IDS message for segment index %u (%u total segments)\n\tChange UUID: %@", buf, 0x18u);
    }
  }

  v11 = *(a1 + 32);
  (*(*(a1 + 48) + 16))();

  v12 = *MEMORY[0x277D85DE8];
}

void __102__NPKPassSyncService_passSyncEngine_sendStateChangeProcessedWithUUID_changeAccepted_fullPassRequired___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = pk_Sync_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v4 = pk_Sync_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_ERROR, "Error: Failed to send pass sync change accepted: %@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)passSyncEngine:(id)a3 sendReconciledStateUnrecognizedWithHash:(id)a4 version:(unint64_t)a5 currentPassSyncState:(id)a6
{
  v36[4] = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a6;
  if (!self->_dropAllMessages)
  {
    v14 = objc_alloc_init(NPKProtoPassSyncReconciledStateUnrecognized);
    [(NPKProtoPassSyncReconciledStateUnrecognized *)v14 setUnrecognizedReconciledStateHash:v9];
    [(NPKProtoPassSyncReconciledStateUnrecognized *)v14 setUnrecognizedReconciledStateVersion:a5];
    v15 = [v10 protoSyncState];
    [(NPKProtoPassSyncReconciledStateUnrecognized *)v14 setLibraryPassSyncState:v15];

    v16 = objc_alloc(MEMORY[0x277D189F0]);
    v17 = [(NPKProtoPassSyncReconciledStateUnrecognized *)v14 data];
    v18 = [v16 initWithProtobufData:v17 type:42 isResponse:0];

    v35[0] = *MEMORY[0x277D18650];
    v19 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D18828]];
    v20 = *MEMORY[0x277D18580];
    v36[0] = v19;
    v36[1] = MEMORY[0x277CBEC38];
    v21 = *MEMORY[0x277D18568];
    v35[1] = v20;
    v35[2] = v21;
    v35[3] = *MEMORY[0x277D18630];
    v36[2] = MEMORY[0x277CBEC38];
    v36[3] = @"passSyncReconciledStateUnrecognized";
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:4];

    passSyncService = self->_passSyncService;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __106__NPKPassSyncService_passSyncEngine_sendReconciledStateUnrecognizedWithHash_version_currentPassSyncState___block_invoke;
    v29[3] = &unk_279945058;
    v13 = v14;
    v30 = v13;
    v24 = NPKProtoSendWithOptions(passSyncService, v18, 200, 0, 0, v29, v22);
    v25 = pk_Sync_log();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);

    if (v26)
    {
      v27 = pk_Sync_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v32 = v24;
        v33 = 2112;
        v34 = v13;
        _os_log_impl(&dword_25B300000, v27, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service: sent reconciled state unrecognized IDS message\n\tMessage ID: %@\n\tProtobuf: %@", buf, 0x16u);
      }
    }

    goto LABEL_10;
  }

  v11 = pk_Sync_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_Sync_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Warning: Dropping reconciled state unrecognized message", buf, 2u);
    }

LABEL_10:
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __106__NPKPassSyncService_passSyncEngine_sendReconciledStateUnrecognizedWithHash_version_currentPassSyncState___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = pk_Sync_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v4 = pk_Sync_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_ERROR, "Error: Failed to send pass sync reconciled state unrecognized: %@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)passSyncEngine:(id)a3 sendProposedReconciledState:(id)a4
{
  v31[4] = *MEMORY[0x277D85DE8];
  v5 = a4;
  if (!self->_dropAllMessages)
  {
    v9 = objc_alloc_init(NPKProtoPassSyncProposedReconciledState);
    v10 = [v5 protoSyncState];
    [(NPKProtoPassSyncProposedReconciledState *)v9 setProposedReconciledState:v10];

    v11 = objc_alloc(MEMORY[0x277D189F0]);
    v12 = [(NPKProtoPassSyncProposedReconciledState *)v9 data];
    v13 = [v11 initWithProtobufData:v12 type:43 isResponse:0];

    v30[0] = *MEMORY[0x277D18650];
    v14 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D18828]];
    v15 = *MEMORY[0x277D18580];
    v31[0] = v14;
    v31[1] = MEMORY[0x277CBEC38];
    v16 = *MEMORY[0x277D18568];
    v30[1] = v15;
    v30[2] = v16;
    v30[3] = *MEMORY[0x277D18630];
    v31[2] = MEMORY[0x277CBEC38];
    v31[3] = @"passSyncReconciledStateUnrecognized";
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:4];

    passSyncService = self->_passSyncService;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __65__NPKPassSyncService_passSyncEngine_sendProposedReconciledState___block_invoke;
    v24[3] = &unk_279945058;
    v8 = v9;
    v25 = v8;
    v19 = NPKProtoSendWithOptions(passSyncService, v13, 200, 0, 0, v24, v17);
    v20 = pk_Sync_log();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

    if (v21)
    {
      v22 = pk_Sync_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v27 = v19;
        v28 = 2112;
        v29 = v8;
        _os_log_impl(&dword_25B300000, v22, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service: sent proposed reconciled state IDS message\n\tMessage ID: %@\n\tProtobuf: %@", buf, 0x16u);
      }
    }

    goto LABEL_10;
  }

  v6 = pk_Sync_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_Sync_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Warning: Dropping proposed reconciled state message", buf, 2u);
    }

LABEL_10:
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __65__NPKPassSyncService_passSyncEngine_sendProposedReconciledState___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = pk_Sync_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v4 = pk_Sync_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_ERROR, "Error: Failed to send pass sync proposed reconciled state message: %@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)passSyncEngine:(id)a3 sendReconciledStateAcceptedWithHash:(id)a4
{
  v30[4] = *MEMORY[0x277D85DE8];
  v5 = a4;
  if (!self->_dropAllMessages)
  {
    v9 = objc_alloc_init(NPKProtoPassSyncReconciledStateAccepted);
    [(NPKProtoPassSyncReconciledStateAccepted *)v9 setReconciledStateHash:v5];
    v10 = objc_alloc(MEMORY[0x277D189F0]);
    v11 = [(NPKProtoPassSyncReconciledStateAccepted *)v9 data];
    v12 = [v10 initWithProtobufData:v11 type:44 isResponse:0];

    v29[0] = *MEMORY[0x277D18650];
    v13 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D18828]];
    v14 = *MEMORY[0x277D18580];
    v30[0] = v13;
    v30[1] = MEMORY[0x277CBEC38];
    v15 = *MEMORY[0x277D18568];
    v29[1] = v14;
    v29[2] = v15;
    v29[3] = *MEMORY[0x277D18630];
    v30[2] = MEMORY[0x277CBEC38];
    v30[3] = @"passSyncStateChangeProcessed";
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:4];

    passSyncService = self->_passSyncService;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __73__NPKPassSyncService_passSyncEngine_sendReconciledStateAcceptedWithHash___block_invoke;
    v23[3] = &unk_279945058;
    v8 = v9;
    v24 = v8;
    v18 = NPKProtoSendWithOptions(passSyncService, v12, 200, 0, 0, v23, v16);
    v19 = pk_Sync_log();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

    if (v20)
    {
      v21 = pk_Sync_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v26 = v18;
        v27 = 2112;
        v28 = v8;
        _os_log_impl(&dword_25B300000, v21, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service: sent reconciled state accepted IDS message\n\tMessage ID: %@\n\tProtobuf: %@", buf, 0x16u);
      }
    }

    goto LABEL_10;
  }

  v6 = pk_Sync_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_Sync_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Warning: Dropping reconciled state accepted message", buf, 2u);
    }

LABEL_10:
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __73__NPKPassSyncService_passSyncEngine_sendReconciledStateAcceptedWithHash___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = pk_Sync_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v4 = pk_Sync_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_ERROR, "Error: Failed to send pass sync reconciled state accepted: %@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)passSyncEngineStateChanged:(id)a3
{
  v4 = pk_Sync_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_Sync_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service: got pass sync engine state changed", v9, 2u);
    }
  }

  passSyncEngineArchiveTimer = self->_passSyncEngineArchiveTimer;
  v8 = dispatch_time(0, 1000000000);
  dispatch_source_set_timer(passSyncEngineArchiveTimer, v8, 0xFFFFFFFFFFFFFFFFLL, 0);
}

- (void)passSyncEngine:(id)a3 receivedStateChangeProcessed:(id)a4 changeAccepted:(BOOL)a5
{
  v5 = a5;
  v17 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = pk_Sync_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Sync_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412546;
      v14 = v7;
      v15 = 1024;
      v16 = v5;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service: received state change processed delegate method invoked\n\tChange: %@\n\tAccepted: %d", &v13, 0x12u);
    }
  }

  if (![v7 changeType])
  {
    v11 = [v7 uniqueID];
    [(NPKPassSyncService *)self handleSettingsChanged:[(NPKPassSyncService *)self settingsForPassWithUniqueID:v11] forPassWithUniqueID:v11];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)passSyncEngine:(id)a3 finishedProcessingChange:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = pk_Sync_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_Sync_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v5;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service: finished processing change delegate method invoked\n\tChange: %@", buf, 0xCu);
    }
  }

  passSyncQueue = self->_passSyncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__NPKPassSyncService_passSyncEngine_finishedProcessingChange___block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_async(passSyncQueue, block);

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __62__NPKPassSyncService_passSyncEngine_finishedProcessingChange___block_invoke(uint64_t a1)
{
  v2 = pk_Sync_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_Sync_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: Companion pass sync service: syncing when appropriate following change processed", v6, 2u);
    }
  }

  return [*(a1 + 32) _provideUpdatedLibraryStateToSyncEngineAndSyncIfNecessary:1];
}

- (void)passSyncEngine:(id)a3 requestsAddPassData:(id)a4 forSyncStateItem:(id)a5 completion:(id)a6
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = pk_General_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);

  if (v7)
  {
    v8 = pk_General_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 136446722;
      v10 = "[NPKPassSyncService passSyncEngine:requestsAddPassData:forSyncStateItem:completion:]";
      v11 = 2082;
      v12 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKPassSyncService.m";
      v13 = 2048;
      v14 = 686;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Subclasses must override)", &v9, 0x20u);
    }
  }

  _NPKAssertAbort();
}

- (void)passSyncEngine:(id)a3 requestsUpdatePassData:(id)a4 forSyncStateItem:(id)a5 baseManifestHashForPartialUpdate:(id)a6 remoteAssetsForPartialUpdate:(id)a7 completion:(id)a8
{
  v17 = *MEMORY[0x277D85DE8];
  v8 = pk_General_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

  if (v9)
  {
    v10 = pk_General_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = 136446722;
      v12 = "[NPKPassSyncService passSyncEngine:requestsUpdatePassData:forSyncStateItem:baseManifestHashForPartialUpdate:remoteAssetsForPartialUpdate:completion:]";
      v13 = 2082;
      v14 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKPassSyncService.m";
      v15 = 2048;
      v16 = 691;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Subclasses must override)", &v11, 0x20u);
    }
  }

  _NPKAssertAbort();
}

- (void)passSyncEngine:(id)a3 requestsRemovePassWithUniqueID:(id)a4 completion:(id)a5
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446722;
      v9 = "[NPKPassSyncService passSyncEngine:requestsRemovePassWithUniqueID:completion:]";
      v10 = 2082;
      v11 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKPassSyncService.m";
      v12 = 2048;
      v13 = 696;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Subclasses must override)", &v8, 0x20u);
    }
  }

  _NPKAssertAbort();
}

- (id)passSyncEngine:(id)a3 partialDataForPassWithUniqueID:(id)a4 baseManifest:(id)a5 outRemoteAssets:(id *)a6
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = pk_General_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);

  if (v7)
  {
    v8 = pk_General_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 136446722;
      v10 = "[NPKPassSyncService passSyncEngine:partialDataForPassWithUniqueID:baseManifest:outRemoteAssets:]";
      v11 = 2082;
      v12 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKPassSyncService.m";
      v13 = 2048;
      v14 = 703;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Subclasses must override)", &v9, 0x20u);
    }
  }

  _NPKAssertAbort();
}

- (id)passSyncEngine:(id)a3 dataForPassWithUniqueID:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = pk_General_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v6 = pk_General_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136446722;
      v8 = "[NPKPassSyncService passSyncEngine:dataForPassWithUniqueID:]";
      v9 = 2082;
      v10 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKPassSyncService.m";
      v11 = 2048;
      v12 = 709;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Subclasses must override)", &v7, 0x20u);
    }
  }

  _NPKAssertAbort();
}

- (void)handleRequestedAssociatedData:(unint64_t)a3 forPassWithUniqueID:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = pk_General_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v6 = pk_General_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136446722;
      v8 = "[NPKPassSyncService handleRequestedAssociatedData:forPassWithUniqueID:]";
      v9 = 2082;
      v10 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKPassSyncService.m";
      v11 = 2048;
      v12 = 719;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Subclasses must override)", &v7, 0x20u);
    }
  }

  _NPKAssertAbort();
}

- (void)_provideUpdatedLibraryStateToSyncEngineAndSyncIfNecessary:(BOOL)a3
{
  v3 = a3;
  v32 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_passSyncQueue);
  v5 = +[NPKPassSyncState minRemoteDevicePassSyncStateVersionSupport];
  v6 = [NPKOSTransaction transactionWithName:@"provide updated libray state"];
  v7 = [(NPKPassSyncEngine *)self->_passSyncEngine reconciledState];
  v8 = [(NPKPassSyncService *)self currentLibraryPassSyncStateWithReconciledState:v7];
  v9 = [v8 passSyncStateWithVersion:v5];
  v10 = [(NPKPassSyncEngine *)self->_passSyncEngine libraryState];
  v11 = pk_Sync_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_Sync_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = "no";
      if (v3)
      {
        v14 = "yes";
      }

      v28 = 138412546;
      v29 = v9;
      v30 = 2080;
      v31 = v14;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service: Providing updated library state\n\tSync state: %@\n\tWill sync if necessary: %s", &v28, 0x16u);
    }
  }

  [(NPKPassSyncEngine *)self->_passSyncEngine setLibraryState:v9];
  [(NPKPassSyncEngine *)self->_passSyncEngine setMinSyncStateVersion:v5];
  if (v3)
  {
    if ([v9 diffWithBaselineState:v10 representsMaterialDifferenceFromState:v7])
    {
      v15 = [(NPKPassSyncEngine *)self->_passSyncEngine processingChange];
      if (!v15)
      {
LABEL_12:
        v18 = pk_Sync_log();
        v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

        if (v19)
        {
          v20 = pk_Sync_log();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v28) = 0;
            _os_log_impl(&dword_25B300000, v20, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service: requesting sync when appropriate following update to library state", &v28, 2u);
          }
        }

        [(NPKPassSyncService *)self _syncWhenAppropriate];
        goto LABEL_26;
      }

      v16 = v15;
      v17 = [v7 passSyncStateByApplyingChange:v15];
      if ([v9 diffWithBaselineState:v10 representsMaterialDifferenceFromState:v17])
      {

        goto LABEL_12;
      }

      v24 = pk_Sync_log();
      v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);

      if (v25)
      {
        v26 = pk_Sync_log();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v28) = 0;
          _os_log_impl(&dword_25B300000, v26, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service: Not syncing after providing updated library state, since change is already accounted for in processing change on top of reconciled state", &v28, 2u);
        }
      }
    }

    else
    {
      v21 = pk_Sync_log();
      v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);

      if (v22)
      {
        v23 = pk_Sync_log();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v28) = 0;
          _os_log_impl(&dword_25B300000, v23, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service: Not syncing after providing updated library state, since change is already accounted for in reconciled state", &v28, 2u);
        }
      }
    }
  }

LABEL_26:
  [v6 invalidate];

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_archiveTimerFired
{
  v17 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_passSyncQueue);
  v3 = pk_Sync_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_Sync_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service: Archive timer fired; writing pass sync engine archive to disk", buf, 2u);
    }
  }

  v6 = [NPKOSTransaction transactionWithName:@"Archive timer"];
  v7 = NPKSecureArchiveObject(self->_passSyncEngine);
  v8 = NPKPassSyncEngineArchivePath();
  v14 = 0;
  [v7 writeToFile:v8 options:1 error:&v14];
  v9 = v14;

  if (v9)
  {
    v10 = pk_Sync_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);

    if (v11)
    {
      v12 = pk_Sync_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v16 = v9;
        _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_ERROR, "Error: Pass sync service: unable to write pass sync engine archive to disk\n\tError: %@", buf, 0xCu);
      }
    }
  }

  [v6 invalidate];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_syncWhenAppropriate
{
  dispatch_assert_queue_V2(self->_passSyncQueue);
  passSyncStatus = self->_passSyncStatus;
  v4 = [(NPKPassSyncEngine *)self->_passSyncEngine processingChange];
  v5 = [(NPKPassSyncEngine *)self->_passSyncEngine candidateChange];
  v6 = [MEMORY[0x277CBEAA8] date];
  v7 = [(NPKPassSyncServiceSyncStatus *)passSyncStatus shouldSyncWithCurrentIncomingChange:v4 currentOutgoingChange:v5 currentDate:v6];

  v8 = pk_Sync_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    if (v9)
    {
      v10 = pk_Sync_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service: Syncing immediately while appropriate", buf, 2u);
      }
    }

    [(NPKPassSyncService *)self _syncNow];
  }

  else
  {
    if (v9)
    {
      v11 = pk_Sync_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service: Setting sync timer because syncing now is not appropriate", v12, 2u);
      }
    }

    [(NPKPassSyncService *)self _ensureSyncTimerIsSet];
  }
}

- (void)_syncNow
{
  dispatch_assert_queue_V2(self->_passSyncQueue);
  v3 = [NPKOSTransaction transactionWithName:@"Sync now"];
  [(NPKPassSyncServiceSyncStatus *)self->_passSyncStatus reset];
  [(NPKPassSyncEngine *)self->_passSyncEngine syncIfNecessary];
  [v3 invalidate];
}

- (void)_ensureSyncTimerIsSet
{
  v16 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_passSyncQueue);
  passSyncEngineSyncTimer = self->_passSyncEngineSyncTimer;
  v4 = pk_Sync_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (passSyncEngineSyncTimer)
  {
    if (v5)
    {
      v6 = pk_Sync_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service: Sync timer is already set", buf, 2u);
      }
    }
  }

  else
  {
    if (v5)
    {
      v7 = pk_Sync_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v15 = 0x404E000000000000;
        _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service: Setting timer for %.2f seconds before syncing", buf, 0xCu);
      }
    }

    v8 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_passSyncQueue);
    v9 = dispatch_time(0, 0xDF8476000);
    dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0);
    objc_initWeak(buf, self);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __43__NPKPassSyncService__ensureSyncTimerIsSet__block_invoke;
    handler[3] = &unk_279945030;
    objc_copyWeak(&v13, buf);
    dispatch_source_set_event_handler(v8, handler);
    dispatch_resume(v8);
    v10 = self->_passSyncEngineSyncTimer;
    self->_passSyncEngineSyncTimer = v8;

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __43__NPKPassSyncService__ensureSyncTimerIsSet__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _syncTimerFired];
}

- (void)_syncTimerFired
{
  dispatch_assert_queue_V2(self->_passSyncQueue);
  passSyncEngineSyncTimer = self->_passSyncEngineSyncTimer;
  if (passSyncEngineSyncTimer)
  {
    dispatch_source_cancel(passSyncEngineSyncTimer);
    v4 = self->_passSyncEngineSyncTimer;
    self->_passSyncEngineSyncTimer = 0;
  }

  [(NPKPassSyncService *)self _syncWhenAppropriate];
}

- (id)_archivedPassSyncEngine
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEA90];
  v3 = NPKPassSyncEngineArchivePath();
  v13 = 0;
  v4 = [v2 dataWithContentsOfFile:v3 options:0 error:&v13];
  v5 = v13;

  if (v5)
  {
    v6 = pk_Sync_log();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

    if (v7)
    {
      v8 = pk_Sync_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v15 = v5;
        _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Warning: Pass sync service: Unable to read pass sync engine archive. This is expected in the case of a fresh device install.\n\tError: %@", buf, 0xCu);
      }
    }

    v9 = 0;
  }

  else
  {
    v10 = objc_opt_class();
    v9 = NPKSecureUnarchiveObject(v4, v10);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

@end