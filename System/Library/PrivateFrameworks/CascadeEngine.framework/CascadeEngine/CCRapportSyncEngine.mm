@interface CCRapportSyncEngine
- (BOOL)currentPlatformHasSetsSupportingSync:(id *)a3;
- (BOOL)didRemoteDeviceInitiateSyncWithMessage:(id)a3 beforeLocalInteraction:(id)a4;
- (BOOL)rapportManager:(id)a3 isDeviceSupported:(id)a4;
- (CCRapportSyncEngine)initWithQueue:(id)a3 error:(id *)a4;
- (CCRapportSyncEngine)initWithQueue:(id)a3 rapportManager:(id)a4 readAccess:(id)a5 donateServiceProvider:(id)a6 localDeviceUUID:(id)a7;
- (NSString)description;
- (id)buildBasePeerToPeerMessageForInteraction:(id)a3;
- (id)buildDoneFetchingMergeableDeltasMessageForInteraction:(id)a3;
- (id)doneFetchingMergeableDeltasRequestHandler;
- (id)fetchMergeableDeltasRequestHandler;
- (id)readSetForDiscovery:(id)a3 senderDeviceUUID:(id)a4;
- (id)setDiscoveryRequestHandler;
- (id)setIdentifiersSupportingInboundSync;
- (id)setIdentifiersSupportingOutboundSync;
- (id)setUUIDsSupportingInboundSync;
- (id)setUUIDsSupportingOutboundSync;
- (id)validateInRequest:(id)a3 inOptions:(id)a4 inResponseHandler:(id)a5 isInitiatingRequest:(BOOL)a6 outPlatform:(int64_t *)a7;
- (unint64_t)syncErrorCodeFromReadAccessError:(id)a3;
- (unsigned)determineSyncOperationForDiscoveredSet:(id)a3 forInteraction:(id)a4 outFetchRequest:(id *)a5;
- (unsigned)syncOperationForDiscoveredSet:(id)a3 withDevice:(id)a4 versionedMergeable:(id)a5 readAccessError:(id)a6;
- (void)_deactivateSession;
- (void)_failToActivateSessionWithError:(id)a3 activationHandler:(id)a4 sessionCompletionHandler:(id)a5;
- (void)activateClientWithReason:(unsigned __int8)a3 activity:(id)a4 completionHandler:(id)a5;
- (void)activateServerWithReason:(unsigned __int8)a3 activationHandler:(id)a4;
- (void)addOmittedSetsFromSetDiscovery:(id)a3 forInteraction:(id)a4;
- (void)continueAfterHandlingAllSetsToSyncForInteraction:(id)a3;
- (void)continueToDiscoverSetsToSyncForInteraction:(id)a3;
- (void)continueToHandleNextSetToSyncAtIndex:(unint64_t)a3 forInteraction:(id)a4;
- (void)expireDevice:(id)a3 fromSet:(id)a4;
- (void)handleIncomingMergeableDeltaFileTransfer:(id)a3 fromDevice:(id)a4;
- (void)rapportManager:(id)a3 didLoseNearbyCCRapportDevice:(id)a4;
- (void)recordDiscoveredSetResources:(id)a3 forInteraction:(id)a4;
- (void)sendDoneFetchingMergeableDeltasRequest:(id)a3 forInteraction:(id)a4;
- (void)sendFetchMergeableDeltasRequest:(id)a3 forInteraction:(id)a4 continueSync:(id)a5;
- (void)sendSetDiscoveryRequest:(id)a3 forInteraction:(id)a4 continueSync:(id)a5;
@end

@implementation CCRapportSyncEngine

- (CCRapportSyncEngine)initWithQueue:(id)a3 error:(id *)a4
{
  v5 = a3;
  v13 = 0;
  v6 = [MEMORY[0x1E6993A90] readDefaultLocalDeviceUUID:&v13];
  v7 = v13;
  if (v6)
  {
    v8 = [[CCRapportManager alloc] initWithQueue:v5 forSharedUse:0];
    v9 = [MEMORY[0x1E69939B0] defaultInstanceWithUseCase:*MEMORY[0x1E698E958]];
    self = [(CCRapportSyncEngine *)self initWithQueue:v5 rapportManager:v8 readAccess:v9 donateServiceProvider:0 localDeviceUUID:v6];

    v10 = self;
  }

  else
  {
    v11 = __biome_log_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CCRapportSyncEngine initWithQueue:error:];
    }

    CCSetError();
    v10 = 0;
  }

  return v10;
}

- (CCRapportSyncEngine)initWithQueue:(id)a3 rapportManager:(id)a4 readAccess:(id)a5 donateServiceProvider:(id)a6 localDeviceUUID:(id)a7
{
  v21 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v22.receiver = self;
  v22.super_class = CCRapportSyncEngine;
  v17 = [(CCRapportSyncEngine *)&v22 init];
  if (v17)
  {
    v18 = [MEMORY[0x1E698E9D0] currentPersonaIdentifier];
    personaIdentifier = v17->_personaIdentifier;
    v17->_personaIdentifier = v18;

    objc_storeStrong(&v17->_queue, a3);
    objc_storeStrong(&v17->_rapportManager, a4);
    [(CCRapportManager *)v17->_rapportManager setDelegate:v17];
    objc_storeStrong(&v17->_readAcccess, a5);
    objc_storeStrong(&v17->_donateServiceProvider, a6);
    objc_storeStrong(&v17->_localDeviceUUID, a7);
  }

  return v17;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(CCRapportSyncEngine *)self siteSuffix];
  v6 = v5;
  currentSession = self->_currentSession;
  if (!currentSession)
  {
    currentSession = &stru_1F55F1328;
  }

  v8 = [v3 stringWithFormat:@"%@[%@] %@", v4, v5, currentSession];

  return v8;
}

- (void)activateClientWithReason:(unsigned __int8)a3 activity:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__CCRapportSyncEngine_activateClientWithReason_activity_completionHandler___block_invoke;
  block[3] = &unk_1E85C2AB8;
  v12 = a3;
  block[4] = self;
  v11 = v7;
  v9 = v7;
  dispatch_async(queue, block);
}

- (void)activateServerWithReason:(unsigned __int8)a3 activationHandler:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__CCRapportSyncEngine_activateServerWithReason_activationHandler___block_invoke;
  block[3] = &unk_1E85C2AB8;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(queue, block);
}

void __116__CCRapportSyncEngine__activateSyncSessionWithReason_forInteractionType_activationHandler_sessionCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 type] == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [v3 detailedDescription];
        v8 = 138412546;
        v9 = WeakRetained;
        v10 = 2112;
        v11 = v6;
        _os_log_impl(&dword_1DA444000, v5, OS_LOG_TYPE_DEFAULT, "%@: starting sync interaction: %@", &v8, 0x16u);
      }

      [WeakRetained continueToDiscoverSetsToSyncForInteraction:v3];
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __116__CCRapportSyncEngine__activateSyncSessionWithReason_forInteractionType_activationHandler_sessionCompletionHandler___block_invoke_27(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _deactivateSession];
    v8 = *(a1 + 32);
    if (v8)
    {
      (*(v8 + 16))(v8, v9, v5);
    }
  }
}

void __116__CCRapportSyncEngine__activateSyncSessionWithReason_forInteractionType_activationHandler_sessionCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_loadWeakRetained((a1 + 48));
  if (v3)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412802;
      v10 = WeakRetained;
      v11 = 2112;
      v12 = v5;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_1DA444000, v6, OS_LOG_TYPE_DEFAULT, "%@: cancelling sync session (%@) after activation error: %@", &v9, 0x20u);
    }

    [v5 cancel:v3];
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_failToActivateSessionWithError:(id)a3 activationHandler:(id)a4 sessionCompletionHandler:(id)a5
{
  v13[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = __biome_log_for_category();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [CCRapportSyncEngine _failToActivateSessionWithError:activationHandler:sessionCompletionHandler:];
  }

  if (v8)
  {
    v8[2](v8, v7);
  }

  if (v9)
  {
    if (v7)
    {
      v13[0] = v7;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
      v9[2](v9, MEMORY[0x1E695E0F0], v11);
    }

    else
    {
      v9[2](v9, MEMORY[0x1E695E0F0], 0);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_deactivateSession
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_currentSession)
  {
    [(CCRapportManager *)self->_rapportManager stop];
    currentSession = self->_currentSession;
    self->_currentSession = 0;
  }
}

- (void)continueToDiscoverSetsToSyncForInteraction:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = __biome_log_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = self;
    _os_log_impl(&dword_1DA444000, v5, OS_LOG_TYPE_DEFAULT, "%@: discovering sets to sync", buf, 0xCu);
  }

  v6 = [(CCRapportSyncEngine *)self setUUIDsSupportingInboundSync];
  v7 = [(CCRapportSyncEngine *)self buildBasePeerToPeerMessageForInteraction:v4];
  v8 = [v4 options];
  v9 = [v4 repeatDiscoveryAfterSet];
  v10 = [CCSetDiscoveryRequest setDiscoveryRequestFromPeerToPeerMessage:v7 setUUIDsToDiscover:v6 requestOptions:v8 startAfterSet:v9 sizeThreshold:&unk_1F55F5A88];

  objc_initWeak(buf, self);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __66__CCRapportSyncEngine_continueToDiscoverSetsToSyncForInteraction___block_invoke;
  v13[3] = &unk_1E85C2B58;
  objc_copyWeak(&v15, buf);
  v11 = v4;
  v14 = v11;
  [(CCRapportSyncEngine *)self sendSetDiscoveryRequest:v10 forInteraction:v11 continueSync:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);

  v12 = *MEMORY[0x1E69E9840];
}

void __66__CCRapportSyncEngine_continueToDiscoverSetsToSyncForInteraction___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) setsToSync];
    v4 = [v3 count];

    if (v4)
    {
      [WeakRetained continueToHandleNextSetToSyncAtIndex:0 forInteraction:*(a1 + 32)];
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 138412290;
        v8 = WeakRetained;
        _os_log_impl(&dword_1DA444000, v5, OS_LOG_TYPE_DEFAULT, "%@: zero discovered sets to sync", &v7, 0xCu);
      }

      [WeakRetained continueAfterHandlingAllSetsToSyncForInteraction:*(a1 + 32)];
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)continueToHandleNextSetToSyncAtIndex:(unint64_t)a3 forInteraction:(id)a4
{
  v34[2] = *MEMORY[0x1E69E9840];
  v6 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v7 = [v6 setsToSync];
  v8 = [v7 objectAtIndexedSubscript:a3];

  v9 = __biome_log_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v6 setsToSync];
    *buf = 138413058;
    v31 = self;
    v32 = 1024;
    *v33 = a3 + 1;
    *&v33[4] = 1024;
    *&v33[6] = [v10 count];
    LOWORD(v34[0]) = 2112;
    *(v34 + 2) = v8;
    _os_log_impl(&dword_1DA444000, v9, OS_LOG_TYPE_DEFAULT, "%@: handling set (%u / %u): %@", buf, 0x22u);
  }

  v29 = 0;
  v11 = [(CCRapportSyncEngine *)self determineSyncOperationForDiscoveredSet:v8 forInteraction:v6 outFetchRequest:&v29];
  v12 = v29;
  v13 = __biome_log_for_category();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    if (v11 - 1 > 2)
    {
      v14 = @"FullFetch";
    }

    else
    {
      v14 = off_1E85C2F20[(v11 - 1)];
    }

    *buf = 138412802;
    v31 = self;
    v32 = 2112;
    *v33 = v14;
    *&v33[8] = 2112;
    v34[0] = v8;
    _os_log_impl(&dword_1DA444000, v13, OS_LOG_TYPE_DEFAULT, "%@: resolved sync operation (%@) for set: %@", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __75__CCRapportSyncEngine_continueToHandleNextSetToSyncAtIndex_forInteraction___block_invoke;
  v26 = &unk_1E85C2D78;
  objc_copyWeak(v28, buf);
  v28[1] = a3;
  v15 = v6;
  v27 = v15;
  v16 = MEMORY[0x1DA74EA40](&v23);
  if (v11 >= 2)
  {
    if (v11 == 2)
    {
      v17 = [CCSetVersionedMergeable writeOnlyInstanceForSet:v8 donateServiceProvider:self->_donateServiceProvider, v23, v24, v25, v26];
      v18 = [v15 device];
      v19 = [v18 cascadeDeviceUUID];
      v20 = [v8 deviceSite];
      v21 = [v8 relayedDeviceSites];
      [v17 attestInSyncPeerDeviceUUID:v19 deviceSite:v20 relayedDeviceSites:v21];
    }

    v16[2](v16);
  }

  else
  {
    [(CCRapportSyncEngine *)self sendFetchMergeableDeltasRequest:v12 forInteraction:v15 continueSync:v16, v23, v24, v25, v26];
  }

  objc_destroyWeak(v28);
  objc_destroyWeak(buf);

  v22 = *MEMORY[0x1E69E9840];
}

void __75__CCRapportSyncEngine_continueToHandleNextSetToSyncAtIndex_forInteraction___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 48) + 1;
    v4 = [*(a1 + 32) setsToSync];
    v5 = [v4 count];

    if (v3 >= v5)
    {
      v6 = __biome_log_for_category();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [*(a1 + 32) setsToSync];
        v9 = 138412546;
        v10 = WeakRetained;
        v11 = 2048;
        v12 = [v7 count];
        _os_log_impl(&dword_1DA444000, v6, OS_LOG_TYPE_DEFAULT, "%@: all sync operations for %lu set(s) completed", &v9, 0x16u);
      }

      [WeakRetained continueAfterHandlingAllSetsToSyncForInteraction:*(a1 + 32)];
    }

    else
    {
      [WeakRetained continueToHandleNextSetToSyncAtIndex:v3 forInteraction:*(a1 + 32)];
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)continueAfterHandlingAllSetsToSyncForInteraction:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [v4 repeatDiscoveryAfterSet];

  if (v5)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = self;
      _os_log_impl(&dword_1DA444000, v6, OS_LOG_TYPE_DEFAULT, "%@: repeating set discovery to sync additional sets", &v12, 0xCu);
    }

    [(CCRapportSyncEngine *)self continueToDiscoverSetsToSyncForInteraction:v4];
  }

  else
  {
    v7 = [(CCRapportSyncEngine *)self buildDoneFetchingMergeableDeltasMessageForInteraction:v4];
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v7 isReciprocalRequest];
      v10 = &stru_1F55F1328;
      if (v9)
      {
        v10 = @"NOT ";
      }

      v12 = 138412546;
      v13 = self;
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&dword_1DA444000, v8, OS_LOG_TYPE_DEFAULT, "%@: done syncing sets and %@expecting reciprocation", &v12, 0x16u);
    }

    [(CCRapportSyncEngine *)self sendDoneFetchingMergeableDeltasRequest:v7 forInteraction:v4];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)sendSetDiscoveryRequest:(id)a3 forInteraction:(id)a4 continueSync:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(self->_queue);
  objc_initWeak(&location, self);
  v11 = [v9 device];
  [v9 setTimeoutForRapportRequest:@"com.apple.biomesyncd.cascade.setDiscoveryRequest"];
  v12 = [v8 startAfterSet];

  if (!v12)
  {
    [v8 walltime];
    [v9 setInitiatingRequestSentWalltime:?];
  }

  v13 = [v8 dictionaryRepresentation];
  rapportManager = self->_rapportManager;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __75__CCRapportSyncEngine_sendSetDiscoveryRequest_forInteraction_continueSync___block_invoke;
  v19[3] = &unk_1E85C2DA0;
  objc_copyWeak(&v25, &location);
  v15 = v9;
  v20 = v15;
  v16 = v11;
  v21 = v16;
  v17 = v8;
  v22 = v17;
  v18 = v10;
  v23 = self;
  v24 = v18;
  [(CCRapportManager *)rapportManager sendRequest:@"com.apple.biomesyncd.cascade.setDiscoveryRequest" request:v13 toDevice:v16 responseHandler:v19];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

void __75__CCRapportSyncEngine_sendSetDiscoveryRequest_forInteraction_continueSync___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  [*(a1 + 32) cancelRapportRequestTimeout];
  if ([*(a1 + 32) isRunning])
  {
    if (v7)
    {
      v9 = [v7 domain];
      if ([v9 isEqual:0x1F55F1468])
      {
        v10 = [v7 code];

        if (v10 == 11)
        {
          v11 = __biome_log_for_category();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = *(a1 + 40);
            *buf = 138412802;
            v36 = WeakRetained;
            v37 = 2112;
            *v38 = v7;
            *&v38[8] = 2112;
            *&v38[10] = v12;
            _os_log_impl(&dword_1DA444000, v11, OS_LOG_TYPE_DEFAULT, "%@: Response from set discovery request (%@) - yielding to remote device: %@", buf, 0x20u);
          }

          [WeakRetained[8] submitInteractionType:0 withDevice:*(a1 + 40) reason:8];
LABEL_23:
          [*(a1 + 32) setError:v7];
          [*(a1 + 32) complete];
          goto LABEL_30;
        }
      }

      else
      {
      }

      v27 = __biome_log_for_category();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v32 = *(a1 + 40);
        *buf = 138412802;
        v36 = WeakRetained;
        v37 = 2112;
        *v38 = v7;
        *&v38[8] = 2112;
        *&v38[10] = v32;
        _os_log_error_impl(&dword_1DA444000, v27, OS_LOG_TYPE_ERROR, "%@: failed to discover remote sets due to error: %@, cannot proceed to sync with device %@", buf, 0x20u);
      }

      goto LABEL_23;
    }

    v13 = __biome_log_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v36 = WeakRetained;
      v37 = 2112;
      *v38 = v6;
      *&v38[8] = 2112;
      *&v38[10] = &stru_1F55F1328;
      _os_log_impl(&dword_1DA444000, v13, OS_LOG_TYPE_DEFAULT, "%@: received response from set discovery %@ %@", buf, 0x20u);
    }

    v14 = [[CCSetDiscoveryResponse alloc] initFromDictionary:v6];
    v15 = [v14 senderDeviceUUID];
    [*(a1 + 40) setCascadeDeviceUUID:v15];

    if (([*(a1 + 48) requestOptions] & 2) != 0)
    {
      v28 = __biome_log_for_category();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = CCRapportSyncOptionsDescription([*(a1 + 48) requestOptions]);
        *buf = 138412546;
        v36 = WeakRetained;
        v37 = 2112;
        *v38 = v29;
        _os_log_impl(&dword_1DA444000, v28, OS_LOG_TYPE_DEFAULT, "%@: Skipping set discovery based on request options: %@", buf, 0x16u);
      }

      [*(a1 + 32) setSetsToSync:0];
      (*(*(a1 + 64) + 16))();
    }

    else
    {
      v16 = MEMORY[0x1E695DF70];
      v17 = [v14 discoveredSets];
      v18 = [v16 arrayWithArray:v17];

      v19 = __biome_log_for_category();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [v18 count];
        *buf = 138412802;
        v36 = WeakRetained;
        v37 = 1024;
        *v38 = v20;
        *&v38[4] = 2112;
        *&v38[6] = v18;
        _os_log_impl(&dword_1DA444000, v19, OS_LOG_TYPE_DEFAULT, "%@: discovered %u set(s) eligible for inbound sync: %@", buf, 0x1Cu);
      }

      v21 = [CCDiscoveredSet removeOptions:1 fromSets:v18];
      [*(a1 + 56) recordDiscoveredSetResources:v21 forInteraction:*(a1 + 32)];
      v22 = [v14 responseOptions];
      v23 = __biome_log_for_category();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = @"ADDITIONAL";
        if ((v22 & 4) == 0)
        {
          v24 = @"no remaining";
        }

        [*(a1 + 48) sizeThreshold];
        v25 = v34 = v18;
        v26 = CCRapportSyncOptionsDescription([v14 responseOptions]);
        *buf = 138413058;
        v36 = WeakRetained;
        v37 = 2112;
        *v38 = v33;
        *&v38[8] = 2112;
        *&v38[10] = v25;
        v39 = 2112;
        v40 = v26;
        _os_log_impl(&dword_1DA444000, v23, OS_LOG_TYPE_DEFAULT, "%@: set discovery response indicates %@ sets to discover (size threshold: %@): %@", buf, 0x2Au);

        v18 = v34;
      }

      if ((v22 & 4) != 0)
      {
        v30 = [v18 lastObject];
        [*(a1 + 32) setRepeatDiscoveryAfterSet:v30];
      }

      else
      {
        [*(a1 + 32) setRepeatDiscoveryAfterSet:0];
        [WeakRetained addOmittedSetsFromSetDiscovery:v21 forInteraction:*(a1 + 32)];
      }

      [*(a1 + 32) setSetsToSync:v21];
      (*(*(a1 + 64) + 16))();
    }
  }

LABEL_30:

  v31 = *MEMORY[0x1E69E9840];
}

- (void)sendFetchMergeableDeltasRequest:(id)a3 forInteraction:(id)a4 continueSync:(id)a5
{
  v43 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(self->_queue);
  v11 = [v9 device];
  rapportManager = self->_rapportManager;
  v38 = 0;
  v13 = [(CCRapportManager *)rapportManager initiateFileTransferSessionWithServerDevice:v11 error:&v38];
  v24 = v38;
  if (v13)
  {
    [v9 setTimeoutForRapportRequest:@"com.apple.biomesyncd.cascade.fetchMergeableDeltas"];
    v14 = [MEMORY[0x1E698E9D0] currentPersonaIdentifier];
    v23 = [v13 selfPublicKey];
    objc_initWeak(&location, self);
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __83__CCRapportSyncEngine_sendFetchMergeableDeltasRequest_forInteraction_continueSync___block_invoke;
    v31[3] = &unk_1E85C2E18;
    objc_copyWeak(&v36, &location);
    v22 = v14;
    v32 = v22;
    v33 = v9;
    v15 = v11;
    v34 = v15;
    v16 = v10;
    v35 = v16;
    [v13 setReceivedItemHandler:v31];
    v17 = __biome_log_for_category();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v40 = self;
      v41 = 2112;
      v42 = v23;
      _os_log_impl(&dword_1DA444000, v17, OS_LOG_TYPE_DEFAULT, "%@: client registering to receive incoming files with peer key %@", buf, 0x16u);
    }

    [v8 setPeerPublicKey:v23];
    v18 = [v8 dictionaryRepresentation];
    v19 = self->_rapportManager;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __83__CCRapportSyncEngine_sendFetchMergeableDeltasRequest_forInteraction_continueSync___block_invoke_49;
    v25[3] = &unk_1E85C2E40;
    objc_copyWeak(&v30, &location);
    v26 = v8;
    v27 = v15;
    v29 = v16;
    v28 = v13;
    [(CCRapportManager *)v19 sendRequest:@"com.apple.biomesyncd.cascade.fetchMergeableDeltas" request:v18 toDevice:v27 responseHandler:v25];

    objc_destroyWeak(&v30);
    objc_destroyWeak(&v36);
    objc_destroyWeak(&location);
  }

  else
  {
    v20 = __biome_log_for_category();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [CCRapportSyncEngine sendFetchMergeableDeltasRequest:forInteraction:continueSync:];
    }

    v10[2](v10);
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __83__CCRapportSyncEngine_sendFetchMergeableDeltasRequest_forInteraction_continueSync___block_invoke(id *a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 8);
  v8 = __biome_log_for_category();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v5 itemURL];
    *buf = 138412546;
    v23 = WeakRetained;
    v24 = 2112;
    v25 = v9;
    _os_log_impl(&dword_1DA444000, v8, OS_LOG_TYPE_DEFAULT, "%@: received item over file transfer session with url: %@", buf, 0x16u);
  }

  v10 = WeakRetained[5];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__CCRapportSyncEngine_sendFetchMergeableDeltasRequest_forInteraction_continueSync___block_invoke_47;
  block[3] = &unk_1E85C2DF0;
  v15 = a1[4];
  v16 = a1[5];
  v17 = WeakRetained;
  v20 = v6;
  v18 = v5;
  v19 = a1[6];
  v21 = a1[7];
  v11 = v5;
  v12 = v6;
  dispatch_async(v10, block);

  v13 = *MEMORY[0x1E69E9840];
}

void __83__CCRapportSyncEngine_sendFetchMergeableDeltasRequest_forInteraction_continueSync___block_invoke_47(uint64_t a1)
{
  v2 = MEMORY[0x1E698E9D0];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __83__CCRapportSyncEngine_sendFetchMergeableDeltasRequest_forInteraction_continueSync___block_invoke_2;
  v11[3] = &unk_1E85C2DC8;
  v3 = (a1 + 48);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v14 = *(a1 + 72);
  *&v6 = v5;
  *(&v6 + 1) = *v3;
  v10 = v6;
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  v12 = v10;
  v13 = v9;
  v15 = *(a1 + 80);
  [v2 runAsPersonaIdentifier:v4 block:v11];
}

void __83__CCRapportSyncEngine_sendFetchMergeableDeltasRequest_forInteraction_continueSync___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) cancelRapportRequestTimeout];
  if ([*(a1 + 32) isRunning])
  {
    if ([v3 code] == 1)
    {
      v4 = __biome_log_for_category();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __83__CCRapportSyncEngine_sendFetchMergeableDeltasRequest_forInteraction_continueSync___block_invoke_2_cold_1(a1);
      }
    }

    else
    {
      [*(a1 + 40) handleIncomingMergeableDeltaFileTransfer:*(a1 + 48) fromDevice:*(a1 + 56)];
    }

    (*(*(a1 + 64) + 16))();
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    (*(*(a1 + 64) + 16))();
  }
}

void __83__CCRapportSyncEngine_sendFetchMergeableDeltasRequest_forInteraction_continueSync___block_invoke_49(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (v7)
  {
    v9 = [v7 domain];
    v10 = [v9 isEqual:0x1F55F1468];

    if (v10 && ([v7 code] - 14) <= 2)
    {
      v11 = __biome_log_for_category();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = CCRapportSyncErrorDescription([v7 code]);
        v13 = [*(a1 + 32) set];
        v23 = 138412802;
        v24 = WeakRetained;
        v25 = 2112;
        v26 = v12;
        v27 = 2112;
        v28 = v13;
        _os_log_impl(&dword_1DA444000, v11, OS_LOG_TYPE_DEFAULT, "%@: fetch mergeable deltas response error code (%@) requires immediate expiration for any active contents stored in set: %@", &v23, 0x20u);
      }

      v14 = *(a1 + 40);
      v15 = [*(a1 + 32) set];
      [WeakRetained expireDevice:v14 fromSet:v15];
    }

    else
    {
      v16 = __biome_log_for_category();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v22 = *(a1 + 40);
        v23 = 138412802;
        v24 = WeakRetained;
        v25 = 2112;
        v26 = v7;
        v27 = 2112;
        v28 = v22;
        _os_log_error_impl(&dword_1DA444000, v16, OS_LOG_TYPE_ERROR, "%@: fetch mergeable deltas failed with error: %@ from device: %@", &v23, 0x20u);
      }
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v17 = [[CCFetchMergeableDeltasResponse alloc] initFromDictionary:v6];
    v18 = __biome_log_for_category();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 48);
      v23 = 138412802;
      v24 = WeakRetained;
      v25 = 2112;
      v26 = v19;
      v27 = 2112;
      v28 = v6;
      _os_log_impl(&dword_1DA444000, v18, OS_LOG_TYPE_DEFAULT, "%@: client activating file transfer session %@ after receiving fetch mergeable deltas response: %@", &v23, 0x20u);
    }

    v20 = [v17 peerPublicKey];
    [*(a1 + 48) setPeerPublicKey:v20];

    [*(a1 + 48) activate];
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)sendDoneFetchingMergeableDeltasRequest:(id)a3 forInteraction:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v8 = [v7 device];
  [v7 setTimeoutForRapportRequest:@"com.apple.biomesyncd.cascade.doneFetchingMergeableDeltas"];
  objc_initWeak(&location, self);
  v9 = [v6 dictionaryRepresentation];
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = [v6 isReciprocalRequest] ^ 1;
  rapportManager = self->_rapportManager;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__CCRapportSyncEngine_sendDoneFetchingMergeableDeltasRequest_forInteraction___block_invoke;
  v13[3] = &unk_1E85C2E68;
  objc_copyWeak(&v17, &location);
  v11 = v7;
  v14 = v11;
  v12 = v8;
  v15 = v12;
  v16 = v18;
  [(CCRapportManager *)rapportManager sendRequest:@"com.apple.biomesyncd.cascade.doneFetchingMergeableDeltas" request:v9 toDevice:v12 responseHandler:v13];

  objc_destroyWeak(&v17);
  _Block_object_dispose(v18, 8);

  objc_destroyWeak(&location);
}

void __77__CCRapportSyncEngine_sendDoneFetchingMergeableDeltasRequest_forInteraction___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [*(a1 + 32) cancelRapportRequestTimeout];
  if ([*(a1 + 32) isRunning])
  {
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = &stru_1F55F1328;
      *v16 = 138412802;
      if (v7)
      {
        v10 = v7;
      }

      *&v16[4] = WeakRetained;
      v17 = 2112;
      v18 = v6;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&dword_1DA444000, v9, OS_LOG_TYPE_DEFAULT, "%@: received response from signalling end of fetching %@ %@", v16, 0x20u);
    }

    if (v7)
    {
      [*(a1 + 32) setError:v7];
      v11 = __biome_log_for_category();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v15 = *(a1 + 40);
        *v16 = 138412802;
        *&v16[4] = WeakRetained;
        v17 = 2112;
        v18 = v7;
        v19 = 2112;
        v20 = v15;
        _os_log_error_impl(&dword_1DA444000, v11, OS_LOG_TYPE_ERROR, "%@: failed to send done fetching deltas: %@ with device: %@", v16, 0x20u);
      }

      *(*(*(a1 + 48) + 8) + 24) = 0;
    }

    else
    {
      v12 = __biome_log_for_category();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        if (*(*(*(a1 + 48) + 8) + 24))
        {
          v13 = @" and submitting reciprocal interaction";
        }

        else
        {
          v13 = &stru_1F55F1328;
        }

        *v16 = 138412546;
        *&v16[4] = WeakRetained;
        v17 = 2112;
        v18 = v13;
        _os_log_impl(&dword_1DA444000, v12, OS_LOG_TYPE_DEFAULT, "%@: signalled remote device we are done fetching%@", v16, 0x16u);
      }
    }

    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      [WeakRetained[8] submitInteractionType:0 withDevice:*(a1 + 40) reason:4];
    }

    [*(a1 + 32) complete];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)handleIncomingMergeableDeltaFileTransfer:(id)a3 fromDevice:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 itemURL];
  v9 = [CCMergeableDeltaFileTransferMessageMetadata alloc];
  v10 = [v6 metadata];
  v11 = [(CCMergeableDeltaFileTransferMessageMetadata *)v9 initFromDictionary:v10];

  v12 = [v11 set];
  v13 = __biome_log_for_category();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v6 metadata];
    *buf = 138412546;
    v31 = self;
    v32 = 2112;
    v33 = v14;
    _os_log_impl(&dword_1DA444000, v13, OS_LOG_TYPE_DEFAULT, "%@: handling mergeable delta file transfer with metadata: %@", buf, 0x16u);
  }

  v15 = [v11 deviceSite];
  v16 = v15;
  if (v12 && v15)
  {
    if ([v11 fileFormatVersion] == 1)
    {
      v17 = [CCSetVersionedMergeable writeOnlyInstanceForSet:v12 donateServiceProvider:self->_donateServiceProvider];
      v18 = MEMORY[0x1E695B990];
      v19 = [v11 mergeableDeltaMetadataVectors];
      v29 = 0;
      v20 = [v18 decodeMergeableDeltaMetadata:v19 withError:&v29];

      v28 = v20;
      v21 = [objc_alloc(MEMORY[0x1E695B988]) initWithFileURL:v8 metadata:v20];
      v22 = [v7 cascadeDeviceUUID];

      if (!v22)
      {
        v23 = [v16 device];
        v24 = [v23 deviceUUID];
        [v7 setCascadeDeviceUUID:v24];
      }

      v25 = [v7 cascadeDeviceUUID];
      v26 = [v11 relayedDeviceSites];
      [v17 mergeUpdateFromPeerDeviceUUID:v25 deviceSite:v16 relayedDeviceSites:v26 mergeableDelta:v21];
    }

    else
    {
      v17 = __biome_log_for_category();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [CCRapportSyncEngine handleIncomingMergeableDeltaFileTransfer:v11 fromDevice:?];
      }
    }
  }

  else
  {
    v17 = __biome_log_for_category();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [CCRapportSyncEngine handleIncomingMergeableDeltaFileTransfer:v6 fromDevice:?];
    }
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)expireDevice:(id)a3 fromSet:(id)a4
{
  donateServiceProvider = self->_donateServiceProvider;
  v6 = a3;
  v8 = [CCSetVersionedMergeable writeOnlyInstanceForSet:a4 donateServiceProvider:donateServiceProvider];
  v7 = [v6 cascadeDeviceUUID];

  [v8 expirePeerDeviceUUID:v7];
}

- (id)buildBasePeerToPeerMessageForInteraction:(id)a3
{
  v4 = a3;
  v5 = [CCPeerToPeerMessage alloc];
  v6 = [v4 reason];

  v7 = [(CCPeerToPeerMessage *)v5 initWithSyncReason:v6 senderDeviceUUID:self->_localDeviceUUID protocolVersion:[(CCRapportSyncEngine *)self protocolVersion] wallTime:CFAbsoluteTimeGetCurrent()];

  return v7;
}

- (void)addOmittedSetsFromSetDiscovery:(id)a3 forInteraction:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  v9 = [objc_alloc(MEMORY[0x1E69939C8]) initWithReadAccess:self->_readAcccess];
  v26 = 0;
  v10 = [(CCRapportSyncEngine *)self setIdentifiersSupportingInboundSync];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __69__CCRapportSyncEngine_addOmittedSetsFromSetDiscovery_forInteraction___block_invoke;
  v22 = &unk_1E85C2E90;
  v11 = v6;
  v23 = v11;
  v24 = self;
  v12 = v8;
  v25 = v12;
  v13 = [v9 enumerateAllSets:&v26 withOptions:1 setIdentifiers:v10 descriptors:0 startAfterSet:0 usingBlock:&v19];
  v14 = v26;

  if (!v13 || v14)
  {
    v15 = __biome_log_for_category();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [CCRapportSyncEngine addOmittedSetsFromSetDiscovery:forInteraction:];
    }
  }

  v16 = __biome_log_for_category();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v12 count];
    *buf = 138412802;
    v28 = self;
    v29 = 1024;
    v30 = v17;
    v31 = 2112;
    v32 = v12;
    _os_log_impl(&dword_1DA444000, v16, OS_LOG_TYPE_DEFAULT, "%@: local set enumeration found %u eligible candidate set(s) omitted from set discovery response: %@", buf, 0x1Cu);
  }

  [v7 addObjectsFromArray:v12];
  v18 = *MEMORY[0x1E69E9840];
}

void __69__CCRapportSyncEngine_addOmittedSetsFromSetDiscovery_forInteraction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) discoveredResources];
  v5 = [v3 toResourceSpecifier];
  v6 = [v4 containsObject:v5];

  if ((v6 & 1) == 0)
  {
    v10 = 0;
    v7 = [[CCDiscoveredSet alloc] initWithSet:v3 deviceSite:0 relayedDeviceSites:0 discoveryErrorCode:17 error:&v10];
    v8 = v10;
    if (v7)
    {
      [*(a1 + 48) addObject:v7];
    }

    else
    {
      v9 = __biome_log_for_category();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __69__CCRapportSyncEngine_addOmittedSetsFromSetDiscovery_forInteraction___block_invoke_cold_1(a1);
      }
    }
  }
}

- (void)recordDiscoveredSetResources:(id)a3 forInteraction:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        v12 = [v6 discoveredResources];
        v13 = [v11 toResourceSpecifier];
        [v12 addObject:v13];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (unsigned)determineSyncOperationForDiscoveredSet:(id)a3 forInteraction:(id)a4 outFetchRequest:(id *)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  readAcccess = self->_readAcccess;
  v25 = 0;
  v10 = [(CCDataResourceReadAccess *)readAcccess databaseReadAccessForSet:v7 error:&v25];
  v11 = v25;
  if (v10)
  {
    v12 = [(CCRapportManager *)self->_rapportManager fileTransferDirectory];
    v13 = [CCSetVersionedMergeable readOnlyInstanceForSet:v7 mergeableDeltasFileURL:v12 database:v10];
  }

  else
  {
    v12 = __biome_log_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v27 = self;
      v28 = 2112;
      v29 = v7;
      v30 = 2112;
      v31 = v11;
      _os_log_impl(&dword_1DA444000, v12, OS_LOG_TYPE_DEFAULT, "%@: No database access for discovered set: %@ (error: %@)", buf, 0x20u);
    }

    v13 = 0;
  }

  v14 = [v8 device];
  v15 = [(CCRapportSyncEngine *)self syncOperationForDiscoveredSet:v7 withDevice:v14 versionedMergeable:v13 readAccessError:v11];

  if ((v15 - 2) >= 2)
  {
    if (v15 == 1)
    {
      goto LABEL_10;
    }

    if (v15)
    {
      v17 = 0;
      goto LABEL_13;
    }

    if (v13)
    {
LABEL_10:
      v16 = [v13 stateVector];
    }

    else
    {
      v16 = +[CCSetVersionedMergeable emptyStateVector];
    }

    v17 = v16;
LABEL_13:

    v24 = 0;
    v18 = [objc_alloc(MEMORY[0x1E6993A50]) initWithSet:v7 error:&v24];
    v11 = v24;
    if (v18)
    {
      v19 = [(CCRapportSyncEngine *)self buildBasePeerToPeerMessageForInteraction:v8];
      v20 = [CCFetchMergeableDeltasRequest fetchMergableDeltasRequestFromPeerToPeerMessage:v19 set:v18 stateVector:v17 atomBatchVersion:3 requestOptions:0];
      if (a5)
      {
        v20 = v20;
        *a5 = v20;
      }
    }

    else
    {
      v19 = __biome_log_for_category();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v27 = self;
        v28 = 2112;
        v29 = v7;
        v30 = 2112;
        v31 = v11;
        _os_log_error_impl(&dword_1DA444000, v19, OS_LOG_TYPE_ERROR, "%@: Failed to downcast discovered set: %@ error: %@", buf, 0x20u);
      }
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return v15;
}

- (unsigned)syncOperationForDiscoveredSet:(id)a3 withDevice:(id)a4 versionedMergeable:(id)a5 readAccessError:(id)a6
{
  v61 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 discoveryErrorCode];
  if (v14 == 12)
  {
    v15 = __biome_log_for_category();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
LABEL_5:
      v17 = 3;
      goto LABEL_35;
    }

    *buf = 138412546;
    v52 = self;
    v53 = 2112;
    v54 = v10;
    v16 = "%@: will skip sync due to discovery error for set: %@";
LABEL_4:
    _os_log_impl(&dword_1DA444000, v15, OS_LOG_TYPE_DEFAULT, v16, buf, 0x16u);
    goto LABEL_5;
  }

  v18 = v14;
  if (v12)
  {
    v19 = [v11 cascadeDeviceUUID];
    v15 = [v12 storedActiveDeviceSiteWithDeviceUUID:v19];

    if (v15)
    {
      v20 = [v10 deviceSite];
      if (v20)
      {
        v21 = [v15 resourceGeneration];
        v22 = [v20 resourceGeneration];
        v23 = [v21 isEqual:v22];

        if ((v23 & 1) == 0)
        {
          v27 = __biome_log_for_category();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            v36 = [v15 resourceGeneration];
            v37 = [v20 resourceGeneration];
            *buf = 138412802;
            v52 = self;
            v53 = 2112;
            v54 = v36;
            v55 = 2112;
            v56 = v37;
            _os_log_impl(&dword_1DA444000, v27, OS_LOG_TYPE_DEFAULT, "%@: resourceGeneration (%@) is out of sync with discovered (%@)", buf, 0x20u);
          }

          goto LABEL_33;
        }

        v24 = [v15 expirationDate];
        [v24 timeIntervalSinceNow];
        v26 = v25;

        if (v26 >= 3600.0)
        {
          v27 = [v15 deltaGeneration];
          v40 = [v20 deltaGeneration];
          if ([v40 longLongValue]>= 1 && [v40 isEqual:v27])
          {
            v50 = v40;
            v41 = [v20 expirationDate];
            v42 = [v15 expirationDate];
            [v41 timeIntervalSinceDate:v42];
            v44 = v43;

            v45 = __biome_log_for_category();
            v46 = os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT);
            if (v44 >= 86400.0)
            {
              if (v46)
              {
                v49 = [v15 expirationDate];
                *buf = 138412802;
                v52 = self;
                v53 = 2112;
                v54 = v27;
                v55 = 2112;
                v56 = v49;
                _os_log_impl(&dword_1DA444000, v45, OS_LOG_TYPE_DEFAULT, "%@: deltaGeneration (%@) already synced - stored expiration date (%@) to be extended", buf, 0x20u);
              }

              v17 = 2;
            }

            else
            {
              if (v46)
              {
                v47 = [v15 expirationDate];
                [v20 expirationDate];
                *buf = 138413314;
                v52 = self;
                v53 = 2112;
                v54 = v27;
                v55 = 2112;
                v56 = v47;
                v57 = 2048;
                v58 = 0x40F5180000000000;
                v60 = v59 = 2112;
                v48 = v60;
                _os_log_impl(&dword_1DA444000, v45, OS_LOG_TYPE_DEFAULT, "%@: deltaGeneration (%@) already synced - stored expiration date (%@) is within the skip attestation interval (%lfs) of discovered (%@)", buf, 0x34u);
              }

              v17 = 3;
            }

            v40 = v50;
          }

          else
          {
            v45 = __biome_log_for_category();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412802;
              v52 = self;
              v53 = 2112;
              v54 = v27;
              v55 = 2112;
              v56 = v40;
              _os_log_impl(&dword_1DA444000, v45, OS_LOG_TYPE_DEFAULT, "%@: deltaGeneration (%@) out of sync with discovered (%@)", buf, 0x20u);
            }

            v17 = 1;
          }

          goto LABEL_34;
        }

        v27 = __biome_log_for_category();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v52 = self;
          v53 = 2112;
          v54 = v15;
          v28 = "%@: Expiration is imminent for stored device site: %@";
          v29 = v27;
          v30 = 22;
LABEL_30:
          _os_log_impl(&dword_1DA444000, v29, OS_LOG_TYPE_DEFAULT, v28, buf, v30);
        }
      }

      else
      {
        v27 = __biome_log_for_category();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v52 = self;
          v53 = 2112;
          v54 = v15;
          v55 = 2112;
          v56 = v10;
          v28 = "%@: Discovery response missing device site (found active stored site): %@ for set: %@";
          v29 = v27;
          v30 = 32;
          goto LABEL_30;
        }
      }

LABEL_33:
      v17 = 0;
LABEL_34:

      goto LABEL_35;
    }

    v31 = __biome_log_for_category();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [v11 cascadeDeviceUUID];
      *buf = 138412802;
      v52 = self;
      v53 = 2112;
      v54 = v32;
      v55 = 2112;
      v56 = v10;
      _os_log_impl(&dword_1DA444000, v31, OS_LOG_TYPE_DEFAULT, "%@: Found no active stored equivalent for peer deviceUUID: %@ in set: %@", buf, 0x20u);
    }

    if (v18 == 14 || v18 == 17)
    {
      v17 = 3;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    if (v14 == 17)
    {
      v15 = __biome_log_for_category();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_5;
      }

      *buf = 138412546;
      v52 = self;
      v53 = 2112;
      v54 = v10;
      v16 = "%@: will skip omitted set: %@ without local database access";
      goto LABEL_4;
    }

    v34 = [(CCRapportSyncEngine *)self syncErrorCodeFromReadAccessError:v13];
    v15 = __biome_log_for_category();
    v35 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (v18 == 18 && v34 == 14)
    {
      if (!v35)
      {
        goto LABEL_5;
      }

      *buf = 138412546;
      v52 = self;
      v53 = 2112;
      v54 = v10;
      v16 = "%@: will skip empty set: %@ with nonexistent local database";
      goto LABEL_4;
    }

    if (v35)
    {
      *buf = 138412546;
      v52 = self;
      v53 = 2112;
      v54 = v10;
      _os_log_impl(&dword_1DA444000, v15, OS_LOG_TYPE_DEFAULT, "%@: full sync required for set: %@ without local database access", buf, 0x16u);
    }

    v17 = 0;
  }

LABEL_35:

  v38 = *MEMORY[0x1E69E9840];
  return v17;
}

- (id)buildDoneFetchingMergeableDeltasMessageForInteraction:(id)a3
{
  v4 = a3;
  v5 = [(CCRapportSyncEngine *)self buildBasePeerToPeerMessageForInteraction:v4];
  v6 = [v4 reason];

  v7 = [CCSignalDoneFetchingMergeableDeltas doneFetchingMergeableDeltasMessageFromPeerToPeerMessage:v5 isReciprocal:v6 == 4];

  return v7;
}

- (BOOL)didRemoteDeviceInitiateSyncWithMessage:(id)a3 beforeLocalInteraction:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a4;
  [a3 walltime];
  if (v7 <= 0.0)
  {
    v11 = 0;
  }

  else
  {
    v8 = v7;
    [v6 initiatingRequestSentWalltime];
    v10 = v9;
    v11 = v8 < v9;
    v12 = __biome_log_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      if (v8 >= v10)
      {
        v13 = @" NOT";
      }

      else
      {
        v13 = &stru_1F55F1328;
      }

      [v6 initiatingRequestSentWalltime];
      v17 = 138413314;
      v18 = self;
      v19 = 2112;
      v20 = v13;
      v21 = 2048;
      v22 = v8;
      v23 = 2048;
      v24 = v14;
      v25 = 2112;
      v26 = v6;
      _os_log_impl(&dword_1DA444000, v12, OS_LOG_TYPE_DEFAULT, "%@: Remote device DID%@ initiate sync (%lf) prior to our local interaction (%lf): %@", &v17, 0x34u);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)validateInRequest:(id)a3 inOptions:(id)a4 inResponseHandler:(id)a5 isInitiatingRequest:(BOOL)a6 outPlatform:(int64_t *)a7
{
  v8 = a6;
  v44 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  rapportManager = self->_rapportManager;
  v16 = [v13 objectForKeyedSubscript:*MEMORY[0x1E69C6BF0]];
  v17 = [(CCRapportManager *)rapportManager deviceWithIdentifier:v16];

  if (v17)
  {
    v18 = [[CCPeerToPeerMessage alloc] initFromDictionary:v12];
    if (v8)
    {
      v19 = [(CCRapportSyncSession *)self->_currentSession interactionOfType:1 withDevice:v17];
      if ([v19 isRunning])
      {
        v37 = CCRapportSyncError(11);
        v20 = [(CCRapportSyncEngine *)self didRemoteDeviceInitiateSyncWithMessage:v18 beforeLocalInteraction:v19];
        v21 = __biome_log_for_category();
        v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
        if (!v20)
        {
          v26 = v37;
          if (v22)
          {
            *buf = 138412802;
            v39 = self;
            v40 = 2112;
            v41 = v37;
            v42 = 2112;
            v43 = v19;
            _os_log_impl(&dword_1DA444000, v21, OS_LOG_TYPE_DEFAULT, "%@: Responding with %@ due to existing interaction with device: %@", buf, 0x20u);
          }

          (*(v14 + 2))(v14, 0, 0, v37);
          goto LABEL_32;
        }

        if (v22)
        {
          *buf = 138412546;
          v39 = self;
          v40 = 2112;
          v41 = v19;
          _os_log_impl(&dword_1DA444000, v21, OS_LOG_TYPE_DEFAULT, "%@: Yielding to device which started sync before us; canceling client interaction: %@", buf, 0x16u);
        }

        [(CCRapportSyncSession *)self->_currentSession submitInteractionType:0 withDevice:v17];
        [(CCRapportSyncSession *)self->_currentSession cancelInteractionType:1 withDevice:v17 dueToError:v37];
      }

      else
      {
        [(CCRapportSyncSession *)self->_currentSession submitInteractionType:0 withDevice:v17];
      }
    }

    v19 = [(CCRapportSyncSession *)self->_currentSession interactionOfType:0 withDevice:v17];
    if ([v19 isRunning])
    {
      if (a7)
      {
        v25 = [v13 objectForKeyedSubscript:*MEMORY[0x1E69C6BF8]];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v28 = [v13 description];
          v29 = CCRapportSyncErrorWithDetails(5, 0, v28);

          v30 = __biome_log_for_category();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            [CCRapportSyncEngine validateInRequest:inOptions:inResponseHandler:isInitiatingRequest:outPlatform:];
          }

          (*(v14 + 2))(v14, 0, 0, v29);
          goto LABEL_33;
        }

        *a7 = BMDevicePlatformFromModelString();
      }

      if ([v18 protocolVersion] == 4 || objc_msgSend(v18, "protocolVersion") == 5)
      {
        [v19 cancelRapportRequestTimeout];
        v19 = v19;
        v24 = v19;
LABEL_34:

        goto LABEL_35;
      }

      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"mismatched protocol version %lu, expected %d", objc_msgSend(v18, "protocolVersion"), -[CCRapportSyncEngine protocolVersion](self, "protocolVersion")];
      v26 = CCRapportSyncErrorWithDetails(4, 0, v31);

      v32 = __biome_log_for_category();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        [CCRapportSyncEngine validateInRequest:inOptions:inResponseHandler:isInitiatingRequest:outPlatform:];
      }

      v33 = [(CCRapportSyncEngine *)self buildBasePeerToPeerMessageForInteraction:v19];
      v34 = [v33 dictionaryRepresentation];
      (*(v14 + 2))(v14, v34, 0, v26);
    }

    else
    {
      v26 = CCRapportSyncError(8);
      v27 = __biome_log_for_category();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [CCRapportSyncEngine validateInRequest:inOptions:inResponseHandler:isInitiatingRequest:outPlatform:];
      }

      (*(v14 + 2))(v14, 0, 0, v26);
      [(CCRapportSyncSession *)self->_currentSession cancelInteractionType:0 withDevice:v17 dueToError:v26];
    }

LABEL_32:

LABEL_33:
    v24 = 0;
    goto LABEL_34;
  }

  v23 = __biome_log_for_category();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    [CCRapportSyncEngine validateInRequest:inOptions:inResponseHandler:isInitiatingRequest:outPlatform:];
  }

  v18 = CCRapportSyncError(7);
  (*(v14 + 2))(v14, 0, 0, v18);
  v24 = 0;
LABEL_35:

  v35 = *MEMORY[0x1E69E9840];

  return v24;
}

- (id)setDiscoveryRequestHandler
{
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__CCRapportSyncEngine_setDiscoveryRequestHandler__block_invoke;
  v5[3] = &unk_1E85C2EE0;
  objc_copyWeak(&v6, &location);
  v5[4] = self;
  v3 = MEMORY[0x1DA74EA40](v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

void __49__CCRapportSyncEngine_setDiscoveryRequestHandler__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v45 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v28 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  dispatch_assert_queue_V2(WeakRetained[5]);
  v10 = __biome_log_for_category();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    *&buf[4] = WeakRetained;
    *&buf[12] = 2112;
    *&buf[14] = v7;
    *&buf[22] = 2112;
    v44 = v28;
    _os_log_impl(&dword_1DA444000, v10, OS_LOG_TYPE_DEFAULT, "%@: received set discovery request %@ %@", buf, 0x20u);
  }

  v38 = 0;
  v11 = [*(a1 + 32) validateInRequest:v7 inOptions:v28 inResponseHandler:v8 isInitiatingRequest:1 outPlatform:&v38];
  if (v11)
  {
    v27 = [[CCSetDiscoveryRequest alloc] initFromDictionary:v7];
    v26 = [(dispatch_queue_t *)WeakRetained buildBasePeerToPeerMessageForInteraction:v11];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOWORD(v44) = 0;
    v37[0] = 0;
    v37[1] = v37;
    v37[2] = 0x2020000000;
    v37[3] = 0;
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (([v27 requestOptions] & 2) != 0)
    {
      v17 = __biome_log_for_category();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v20 = CCRapportSyncOptionsDescription([v27 requestOptions]);
        *v39 = 138412546;
        v40 = WeakRetained;
        v41 = 2112;
        v42 = v20;
        _os_log_impl(&dword_1DA444000, v17, OS_LOG_TYPE_DEFAULT, "%@: Skipping set enumeration per request options: %@", v39, 0x16u);
      }
    }

    else
    {
      v13 = [objc_alloc(MEMORY[0x1E69939C8]) initWithReadAccess:WeakRetained[3]];
      v36 = 0;
      v14 = [*(a1 + 32) setIdentifiersSupportingOutboundSync];
      v15 = [v27 startAfterSet];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __49__CCRapportSyncEngine_setDiscoveryRequestHandler__block_invoke_70;
      v29[3] = &unk_1E85C2EB8;
      v30 = v27;
      v31 = WeakRetained;
      v33 = v37;
      v34 = buf;
      v35 = v38;
      v32 = v12;
      v16 = [v13 enumerateAllSets:&v36 withOptions:3 setIdentifiers:v14 descriptors:0 startAfterSet:v15 usingBlock:v29];
      v17 = v36;

      if (v17)
      {
        v18 = 0;
      }

      else
      {
        v18 = v16;
      }

      if ((v18 & 1) == 0)
      {
        v19 = __biome_log_for_category();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          __49__CCRapportSyncEngine_setDiscoveryRequestHandler__block_invoke_cold_1();
        }
      }
    }

    v21 = __biome_log_for_category();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [v12 count];
      *v39 = 138412546;
      v40 = WeakRetained;
      v41 = 1024;
      LODWORD(v42) = v22;
      _os_log_impl(&dword_1DA444000, v21, OS_LOG_TYPE_DEFAULT, "%@: Responding to set discovery request with %u set(s) matching request criteria", v39, 0x12u);
    }

    v23 = [CCSetDiscoveryResponse setDiscoveryResponseFromPeerToPeerMessage:v26 discoveredSets:v12 responseOptions:*(*&buf[8] + 24)];
    v24 = [v23 dictionaryRepresentation];
    (*(v8 + 2))(v8, v24, 0, 0);

    [v11 setTimeoutForRapportRequest:@"com.apple.biomesyncd.cascade.setDiscoveryRequest"];
    _Block_object_dispose(v37, 8);
    _Block_object_dispose(buf, 8);
  }

  v25 = *MEMORY[0x1E69E9840];
}

void __49__CCRapportSyncEngine_setDiscoveryRequestHandler__block_invoke_70(uint64_t a1, void *a2, _BYTE *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [MEMORY[0x1E6993A70] setConfigurationForItemType:{objc_msgSend(v5, "itemType")}];
  v7 = [*(a1 + 32) setUUIDsToDiscover];
  v8 = [v6 setUUID];
  v9 = [v7 containsObject:v8];

  if (v9)
  {
    v10 = [v6 syncPolicy];
    if ([v10 supportsSyncingWithPlatform:*(a1 + 72) overTransport:2 inDirection:2])
    {
      v11 = [*(a1 + 32) sizeThreshold];
      if (v11 && (v12 = v11, v13 = *(*(*(a1 + 56) + 8) + 24), [*(a1 + 32) sizeThreshold], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "unsignedLongValue"), v14, v12, v13 > v15))
      {
        v16 = __biome_log_for_category();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = *(*(*(a1 + 56) + 8) + 24);
          v18 = *(a1 + 40);
          v19 = [*(a1 + 32) sizeThreshold];
          v20 = CCRapportSyncOptionsDescription(4);
          v30 = 138413058;
          v31 = v18;
          v32 = 2048;
          v33 = v17;
          v34 = 2112;
          v35 = v19;
          v36 = 2112;
          v37 = v20;
          _os_log_impl(&dword_1DA444000, v16, OS_LOG_TYPE_DEFAULT, "%@: Cumulative response size (%lu) exceeds requested size threshold: %@. Stopping enumeration and setting %@", &v30, 0x2Au);
        }

        *(*(*(a1 + 64) + 8) + 24) |= 4u;
        *a3 = 1;
      }

      else
      {
        v21 = *(a1 + 40);
        v22 = [*(a1 + 32) senderDeviceUUID];
        v23 = [v21 readSetForDiscovery:v5 senderDeviceUUID:v22];

        if (v23)
        {
          v24 = __biome_log_for_category();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v25 = *(a1 + 40);
            v26 = *(a1 + 72);
            v27 = BMDevicePlatformGetDescription();
            v30 = 138412802;
            v31 = v25;
            v32 = 2112;
            v33 = v23;
            v34 = 2112;
            v35 = v27;
            _os_log_impl(&dword_1DA444000, v24, OS_LOG_TYPE_DEFAULT, "%@: discovered syncable set %@ for platform %@", &v30, 0x20u);
          }

          v28 = [v23 relayedDeviceSites];
          *(*(*(a1 + 56) + 8) + 24) += [v28 count] + 1;

          [*(a1 + 48) addObject:v23];
        }
      }
    }
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (id)readSetForDiscovery:(id)a3 senderDeviceUUID:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  readAcccess = self->_readAcccess;
  v25 = 0;
  v9 = [(CCDataResourceReadAccess *)readAcccess databaseReadAccessForSet:v6 error:&v25];
  v10 = v25;
  if (v9)
  {
    v11 = [(CCRapportManager *)self->_rapportManager fileTransferDirectory];
    v12 = [CCSetVersionedMergeable readOnlyInstanceForSet:v6 mergeableDeltasFileURL:v11 database:v9];

    v13 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:1209600.0];
    v14 = [v12 localDeviceSiteAddingExpirationDate:v13];

    if (v14)
    {
      v15 = [v12 relayedDeviceSitesExcludingRequestingDeviceUUID:v7];
      if ([v12 hasNoPresentContent])
      {
        v16 = 18;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v15 = 0;
      v16 = 16;
    }
  }

  else
  {
    v16 = [(CCRapportSyncEngine *)self syncErrorCodeFromReadAccessError:v10];
    v15 = 0;
    v14 = 0;
  }

  v24 = v10;
  v17 = [[CCDiscoveredSet alloc] initWithSet:v6 deviceSite:v14 relayedDeviceSites:v15 discoveryErrorCode:v16 error:&v24];
  v18 = v24;

  if (!v17 || v18)
  {
    v19 = __biome_log_for_category();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"while handling set discovery request for set %@", v6];
      v22 = CCRapportSyncErrorWithDetails(v16, v18, v23);
      *buf = 138412546;
      v27 = self;
      v28 = 2112;
      v29 = v22;
      _os_log_error_impl(&dword_1DA444000, v19, OS_LOG_TYPE_ERROR, "%@: %@", buf, 0x16u);
    }
  }

  v20 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)fetchMergeableDeltasRequestHandler
{
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__CCRapportSyncEngine_fetchMergeableDeltasRequestHandler__block_invoke;
  v5[3] = &unk_1E85C2EE0;
  objc_copyWeak(&v6, &location);
  v5[4] = self;
  v3 = MEMORY[0x1DA74EA40](v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

void __57__CCRapportSyncEngine_fetchMergeableDeltasRequestHandler__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v107 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  dispatch_assert_queue_V2(*(WeakRetained + 5));
  v98 = 0;
  v11 = [*(a1 + 32) validateInRequest:v7 inOptions:v8 inResponseHandler:v9 isInitiatingRequest:0 outPlatform:&v98];
  if (v11)
  {
    v12 = [[CCFetchMergeableDeltasRequest alloc] initFromDictionary:v7];
    v13 = [WeakRetained buildBasePeerToPeerMessageForInteraction:v11];
    v14 = [v12 set];
    v15 = __biome_log_for_category();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v100 = WeakRetained;
      v101 = 2112;
      v102 = v14;
      v103 = 2112;
      v104 = v7;
      v105 = 2112;
      v106 = v8;
      _os_log_impl(&dword_1DA444000, v15, OS_LOG_TYPE_DEFAULT, "%@: received fetch mergeable deltas request for set: %@ %@ %@", buf, 0x2Au);
    }

    v93 = [MEMORY[0x1E6993A70] setConfigurationForItemType:{objc_msgSend(v14, "itemType")}];
    v92 = [v93 syncPolicy];
    if ([v92 supportsSyncingWithPlatform:v98 overTransport:2 inDirection:2])
    {
      v88 = v13;
      v89 = v12;
      v16 = v8;
      v17 = *(WeakRetained + 3);
      v97 = 0;
      v18 = [v17 databaseReadAccessForSet:v14 error:&v97];
      v19 = v97;
      v20 = v14;
      v87 = v18;
      v90 = v19;
      if (v18)
      {
        v21 = [*(WeakRetained + 2) fileTransferDirectory];
        v22 = [CCSetVersionedMergeable readOnlyInstanceForSet:v14 mergeableDeltasFileURL:v21 database:v18];

        v23 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:1209600.0];
        v24 = [v22 localDeviceSiteAddingExpirationDate:v23];

        v84 = v24;
        v85 = v22;
        if (v24)
        {
          v8 = v16;
          v25 = [v16 objectForKeyedSubscript:*MEMORY[0x1E69C6BE0]];
          v13 = v88;
          if (v25)
          {
            v26 = __biome_log_for_category();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412802;
              v100 = WeakRetained;
              v101 = 2112;
              v102 = v14;
              v103 = 2112;
              v104 = v25;
              _os_log_impl(&dword_1DA444000, v26, OS_LOG_TYPE_DEFAULT, "%@: preparing outgoing file transfer session to send deltas for set %@ from device %@", buf, 0x20u);
            }

            v27 = *(WeakRetained + 2);
            v28 = [v11 device];
            v29 = [v89 peerPublicKey];
            v30 = v25;
            v31 = v29;
            v96[1] = 0;
            v81 = v30;
            v32 = [v27 fulfillFileTransferSessionFromClientDevice:v28 withTargetDeviceID:? peerPublicKey:? error:?];
            v82 = 0;

            v33 = __biome_log_for_category();
            v34 = v33;
            v83 = v32;
            if (v32)
            {
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v100 = WeakRetained;
                v101 = 2112;
                v102 = v32;
                _os_log_impl(&dword_1DA444000, v34, OS_LOG_TYPE_DEFAULT, "%@: file transfer session initiated: %@", buf, 0x16u);
              }

              v35 = [v32 peerPublicKey];
              v36 = [CCFetchMergeableDeltasResponse fetchMergeableDeltasResponseFromPeerToPeerMessage:v88 peerPublicKey:v35];

              v77 = v36;
              v37 = [v36 dictionaryRepresentation];
              (*(v9 + 2))(v9, v37, 0, 0);

              v38 = [v89 stateVector];
              v78 = [v89 atomBatchVersion];
              v39 = [v89 senderDeviceUUID];
              v80 = [v85 relayedDeviceSitesExcludingRequestingDeviceUUID:v39];

              v76 = v38;
              v40 = [v85 mergeableDeltaAfterStateVector:v38 atomBatchVersion:v78 options:{objc_msgSend(v89, "requestOptions")}];
              v41 = MEMORY[0x1E695B990];
              v42 = [v40 metadata];
              v96[0] = v90;
              v79 = [v41 encodeMergeableDeltaMetadata:v42 withError:v96];
              v75 = v96[0];

              v43 = objc_opt_new();
              v44 = [v40 fileURL];
              v45 = [v44 lastPathComponent];
              [v43 setFilename:v45];

              v13 = v88;
              v46 = [v40 fileURL];
              [v43 setItemURL:v46];

              v94[0] = MEMORY[0x1E69E9820];
              v94[1] = 3221225472;
              v94[2] = __57__CCRapportSyncEngine_fetchMergeableDeltasRequestHandler__block_invoke_83;
              v94[3] = &unk_1E85C2948;
              v94[4] = WeakRetained;
              v91 = v40;
              v95 = v91;
              [v43 setCompletionHandler:v94];
              v74 = [CCMergeableDeltaFileTransferMessageMetadata mergeableDeltaFileTransferMessageMetadataFromPeerToPeerMessage:v88 set:v14 mergeableDeltaMetadataVectors:v79 fileFormatVersion:1 deviceSite:v84 relayedDeviceSites:v80];
              v47 = [v74 dictionaryRepresentation];
              [v43 setMetadata:v47];

              v48 = __biome_log_for_category();
              if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412802;
                v100 = WeakRetained;
                v101 = 2112;
                v102 = v43;
                v103 = 2112;
                v104 = v83;
                _os_log_impl(&dword_1DA444000, v48, OS_LOG_TYPE_DEFAULT, "%@: adding items %@ to file transfer session %@", buf, 0x20u);
              }

              v49 = v83;
              [v83 addItem:v43];
              [v83 activate];
              [v11 setTimeoutForRapportRequest:@"com.apple.biomesyncd.cascade.fetchMergeableDeltas"];

              v50 = v75;
              v25 = v81;
            }

            else
            {
              v13 = v88;
              if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
              {
                [CCRapportSyncEngine validateInRequest:inOptions:inResponseHandler:isInitiatingRequest:outPlatform:];
              }

              v72 = [v88 dictionaryRepresentation];
              (*(v9 + 2))(v9, v72, 0, v82);

              [v11 setTimeoutForRapportRequest:@"com.apple.biomesyncd.cascade.fetchMergeableDeltas"];
              v50 = v90;
              v25 = v81;
              v49 = 0;
            }

            v65 = v87;
            v71 = v82;
          }

          else
          {
            v67 = [MEMORY[0x1E696AEC0] stringWithFormat:@" missing inOptions[RPOptionSenderFileTransferTargetID] in fetchMergeableDeltas for set %@", v14];
            v68 = CCRapportSyncErrorWithDetails(19, 0, v67);

            v69 = __biome_log_for_category();
            if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
            {
              [CCRapportSyncEngine validateInRequest:inOptions:inResponseHandler:isInitiatingRequest:outPlatform:];
            }

            v70 = [v88 dictionaryRepresentation];
            (*(v9 + 2))(v9, v70, 0, v68);

            [v11 setTimeoutForRapportRequest:@"com.apple.biomesyncd.cascade.fetchMergeableDeltas"];
            v65 = v87;
            v71 = v68;
            v50 = v90;
          }

          v90 = v50;
        }

        else
        {
          v61 = [MEMORY[0x1E696AEC0] stringWithFormat:@"while handling fetchMergeableDeltas for set %@", v14];
          v62 = CCRapportSyncErrorWithDetails(16, 0, v61);

          v63 = __biome_log_for_category();
          v13 = v88;
          v8 = v16;
          v25 = v62;
          if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
          {
            [CCRapportSyncEngine validateInRequest:inOptions:inResponseHandler:isInitiatingRequest:outPlatform:];
          }

          v64 = [v88 dictionaryRepresentation];
          (*(v9 + 2))(v9, v64, 0, v62);

          [v11 setTimeoutForRapportRequest:@"com.apple.biomesyncd.cascade.fetchMergeableDeltas"];
          v65 = v87;
        }

        v58 = v85;
      }

      else
      {
        v55 = v19;
        v56 = [WeakRetained syncErrorCodeFromReadAccessError:v19];
        v86 = v20;
        v57 = [MEMORY[0x1E696AEC0] stringWithFormat:@"while handling fetchMergeableDeltas for set %@", v20];
        v58 = CCRapportSyncErrorWithDetails(v56, v55, v57);

        v59 = __biome_log_for_category();
        v60 = v59;
        if (v56 == 14)
        {
          v13 = v88;
          v8 = v16;
          if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v100 = WeakRetained;
            v101 = 2112;
            v102 = v90;
            _os_log_impl(&dword_1DA444000, v60, OS_LOG_TYPE_DEFAULT, "%@: received fetchMergeableDeltas for nonexistent set: %@", buf, 0x16u);
          }
        }

        else
        {
          v13 = v88;
          v8 = v16;
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            [CCRapportSyncEngine validateInRequest:inOptions:inResponseHandler:isInitiatingRequest:outPlatform:];
          }
        }

        v66 = [v13 dictionaryRepresentation];
        (*(v9 + 2))(v9, v66, 0, v58);

        [v11 setTimeoutForRapportRequest:@"com.apple.biomesyncd.cascade.fetchMergeableDeltas"];
        v14 = v86;
        v65 = 0;
      }

      v12 = v89;

      v52 = v90;
    }

    else
    {
      v51 = BMDevicePlatformGetDescription();
      v52 = CCRapportSyncErrorWithDetails(15, 0, v51);

      v53 = __biome_log_for_category();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        [CCRapportSyncEngine validateInRequest:inOptions:inResponseHandler:isInitiatingRequest:outPlatform:];
      }

      v54 = [v13 dictionaryRepresentation];
      (*(v9 + 2))(v9, v54, 0, v52);

      [v11 setTimeoutForRapportRequest:@"com.apple.biomesyncd.cascade.fetchMergeableDeltas"];
    }
  }

  v73 = *MEMORY[0x1E69E9840];
}

void __57__CCRapportSyncEngine_fetchMergeableDeltasRequestHandler__block_invoke_83(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = __biome_log_for_category();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = @"successfully";
    }

    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) fileURL];
    v12 = 138412802;
    v13 = v6;
    v14 = 2112;
    v15 = v5;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_1DA444000, v4, OS_LOG_TYPE_DEFAULT, "%@: item completion handler invoked %@ for url %@", &v12, 0x20u);
  }

  v8 = *(a1 + 40);
  v9 = *(*(a1 + 32) + 16);
  v10 = [v8 fileURL];
  [v9 deleteMergeableDeltaFileURL:v10];

  v11 = *MEMORY[0x1E69E9840];
}

- (id)doneFetchingMergeableDeltasRequestHandler
{
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__CCRapportSyncEngine_doneFetchingMergeableDeltasRequestHandler__block_invoke;
  v5[3] = &unk_1E85C2EE0;
  objc_copyWeak(&v6, &location);
  v5[4] = self;
  v3 = MEMORY[0x1DA74EA40](v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

void __64__CCRapportSyncEngine_doneFetchingMergeableDeltasRequestHandler__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  dispatch_assert_queue_V2(WeakRetained[5]);
  v11 = __biome_log_for_category();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412802;
    v18 = WeakRetained;
    v19 = 2112;
    v20 = v7;
    v21 = 2112;
    v22 = v8;
    _os_log_impl(&dword_1DA444000, v11, OS_LOG_TYPE_DEFAULT, "%@: received done fetching mergeable deltas message %@ %@", &v17, 0x20u);
  }

  v12 = [*(a1 + 32) validateInRequest:v7 inOptions:v8 inResponseHandler:v9 isInitiatingRequest:1 outPlatform:0];
  if (v12)
  {
    v13 = [[CCSignalDoneFetchingMergeableDeltas alloc] initFromDictionary:v7];
    if (([v13 isReciprocalRequest] & 1) == 0)
    {
      v14 = WeakRetained[8];
      v15 = [v12 device];
      [v14 submitInteractionType:1 withDevice:v15 reason:4];
    }

    (*(v9 + 2))(v9, MEMORY[0x1E695E0F8], 0, 0);
    [v12 complete];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (unint64_t)syncErrorCodeFromReadAccessError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  v5 = [v4 isEqual:*MEMORY[0x1E69939A0]];

  if (v5)
  {
    if ([v3 code] == 4)
    {
      v6 = 14;
    }

    else
    {
      v6 = 12;
    }
  }

  else
  {
    v6 = 12;
  }

  return v6;
}

- (id)setUUIDsSupportingInboundSync
{
  if (setUUIDsSupportingInboundSync_onceToken != -1)
  {
    [CCRapportSyncEngine setUUIDsSupportingInboundSync];
  }

  v3 = setUUIDsSupportingInboundSync_inboundSetUUIDs;

  return v3;
}

void __52__CCRapportSyncEngine_setUUIDsSupportingInboundSync__block_invoke()
{
  v18 = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v1 = [MEMORY[0x1E6993A70] syncableSetConfigurations];
  v2 = [v1 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v14;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v14 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v13 + 1) + 8 * i);
        v7 = [v6 syncPolicy];
        v8 = [v7 supportsTransport:2 direction:1];

        if (v8)
        {
          v9 = [v6 setUUID];
          [v0 addObject:v9];
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v3);
  }

  v10 = [v0 copy];
  v11 = setUUIDsSupportingInboundSync_inboundSetUUIDs;
  setUUIDsSupportingInboundSync_inboundSetUUIDs = v10;

  v12 = *MEMORY[0x1E69E9840];
}

- (id)setIdentifiersSupportingInboundSync
{
  if (setIdentifiersSupportingInboundSync_onceToken != -1)
  {
    [CCRapportSyncEngine setIdentifiersSupportingInboundSync];
  }

  v3 = setIdentifiersSupportingInboundSync_inboundSetIdentifiers;

  return v3;
}

void __58__CCRapportSyncEngine_setIdentifiersSupportingInboundSync__block_invoke()
{
  v18 = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v1 = [MEMORY[0x1E6993A70] syncableSetConfigurations];
  v2 = [v1 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v14;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v14 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v13 + 1) + 8 * i);
        v7 = [v6 syncPolicy];
        v8 = [v7 supportsTransport:2 direction:1];

        if (v8)
        {
          v9 = [v6 setIdentifier];
          [v0 addObject:v9];
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v3);
  }

  v10 = [v0 copy];
  v11 = setIdentifiersSupportingInboundSync_inboundSetIdentifiers;
  setIdentifiersSupportingInboundSync_inboundSetIdentifiers = v10;

  v12 = *MEMORY[0x1E69E9840];
}

- (id)setUUIDsSupportingOutboundSync
{
  if (setUUIDsSupportingOutboundSync_onceToken != -1)
  {
    [CCRapportSyncEngine setUUIDsSupportingOutboundSync];
  }

  v3 = setUUIDsSupportingOutboundSync_outboundSetUUIDs;

  return v3;
}

void __53__CCRapportSyncEngine_setUUIDsSupportingOutboundSync__block_invoke()
{
  v18 = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v1 = [MEMORY[0x1E6993A70] syncableSetConfigurations];
  v2 = [v1 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v14;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v14 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v13 + 1) + 8 * i);
        v7 = [v6 syncPolicy];
        v8 = [v7 supportsTransport:2 direction:2];

        if (v8)
        {
          v9 = [v6 setUUID];
          [v0 addObject:v9];
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v3);
  }

  v10 = [v0 copy];
  v11 = setUUIDsSupportingOutboundSync_outboundSetUUIDs;
  setUUIDsSupportingOutboundSync_outboundSetUUIDs = v10;

  v12 = *MEMORY[0x1E69E9840];
}

- (id)setIdentifiersSupportingOutboundSync
{
  if (setIdentifiersSupportingOutboundSync_onceToken != -1)
  {
    [CCRapportSyncEngine setIdentifiersSupportingOutboundSync];
  }

  v3 = setIdentifiersSupportingOutboundSync_outboundSetIdentifiers;

  return v3;
}

void __59__CCRapportSyncEngine_setIdentifiersSupportingOutboundSync__block_invoke()
{
  v18 = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v1 = [MEMORY[0x1E6993A70] syncableSetConfigurations];
  v2 = [v1 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v14;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v14 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v13 + 1) + 8 * i);
        v7 = [v6 syncPolicy];
        v8 = [v7 supportsTransport:2 direction:2];

        if (v8)
        {
          v9 = [v6 setIdentifier];
          [v0 addObject:v9];
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v3);
  }

  v10 = [v0 copy];
  v11 = setIdentifiersSupportingOutboundSync_outboundSetIdentifiers;
  setIdentifiersSupportingOutboundSync_outboundSetIdentifiers = v10;

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)currentPlatformHasSetsSupportingSync:(id *)a3
{
  v4 = [(CCRapportSyncEngine *)self setUUIDsSupportingInboundSync];
  v5 = [v4 count];
  v6 = v5 != 0;
  if (!v5)
  {
    v7 = [(CCRapportSyncEngine *)self setUUIDsSupportingOutboundSync];
    v8 = [v7 count];

    if (v8)
    {
      return 1;
    }

    v10 = MEMORY[0x1E696AEC0];
    [MEMORY[0x1E698E9A0] platform];
    v11 = BMDevicePlatformToString();
    v12 = [v10 stringWithFormat:@"The current device platform (%@) has no inbound or outbound sets configured for sync", v11];
    v4 = CCRapportSyncErrorWithDetails(15, 0, v12);

    CCSetError();
  }

  return v6;
}

- (BOOL)rapportManager:(id)a3 isDeviceSupported:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a4;
  v5 = [MEMORY[0x1E698E9A0] platform];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [MEMORY[0x1E6993A70] syncableSetConfigurations];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * v10) syncPolicy];
        [v11 supportsSyncingWithPlatform:objc_msgSend(v4 overTransport:"platform") inDirection:2 fromPlatform:{3, v5}];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];
  return 0;
}

- (void)rapportManager:(id)a3 didLoseNearbyCCRapportDevice:(id)a4
{
  currentSession = self->_currentSession;
  v5 = a4;
  v6 = CCRapportSyncError(7);
  [(CCRapportSyncSession *)currentSession cancelInteractionType:1 withDevice:v5 dueToError:v6];
}

- (void)initWithQueue:error:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_0(&dword_1DA444000, v0, v1, "%@ cannot be initialized. Failed to read local device UUID: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_failToActivateSessionWithError:activationHandler:sessionCompletionHandler:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)sendFetchMergeableDeltasRequest:forInteraction:continueSync:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __83__CCRapportSyncEngine_sendFetchMergeableDeltasRequest_forInteraction_continueSync___block_invoke_2_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 40);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)handleIncomingMergeableDeltaFileTransfer:(uint64_t)a1 fromDevice:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [a2 metadata];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_0(&dword_1DA444000, v3, v4, "%@: cannot determine set or device from incoming file transfer metadata %@", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)handleIncomingMergeableDeltaFileTransfer:(uint64_t)a1 fromDevice:(void *)a2 .cold.2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a2, "fileFormatVersion")}];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_0(&dword_1DA444000, v3, v4, "%@: unsupported file format version %@", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)addOmittedSetsFromSetDiscovery:forInteraction:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __69__CCRapportSyncEngine_addOmittedSetsFromSetDiscovery_forInteraction___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 40);
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)validateInRequest:inOptions:inResponseHandler:isInitiatingRequest:outPlatform:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)validateInRequest:inOptions:inResponseHandler:isInitiatingRequest:outPlatform:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)validateInRequest:inOptions:inResponseHandler:isInitiatingRequest:outPlatform:.cold.4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __49__CCRapportSyncEngine_setDiscoveryRequestHandler__block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

@end