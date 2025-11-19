@interface MSPSenderETAController
- (BOOL)_validateNavigationState:(id *)a3;
- (BOOL)startSharingWith:(id)a3 capabilityType:(unint64_t)a4 serviceName:(id)a5 error:(id *)a6;
- (BOOL)stopSharingWith:(id)a3 reason:(unint64_t)a4 error:(id *)a5;
- (BOOL)stopSharingWithReason:(unint64_t)a3 error:(id *)a4;
- (MSPSenderETAController)initWithRelay:(id)a3;
- (MSPSenderETAControllerDelegate)delegate;
- (NSDictionary)serviceNamesByActiveHandle;
- (void)_cleanObjects;
- (void)_createGroupSessionIfNeededWithIdentifier:(id)a3;
- (void)_invalidateActiveHandles;
- (void)_invalidateSharedTripWithError:(id)a3;
- (void)_restoreLastSession;
- (void)_setState:(id)a3 forEvent:(unint64_t)a4;
- (void)_startLiveForVirtualReceiver:(id)a3;
- (void)_startNavigationListener;
- (void)_startingGroupSession;
- (void)_stopLiveForVirtualReceiver:(id)a3;
- (void)_stopNavigationListener;
- (void)_updateStorage;
- (void)dealloc;
- (void)groupSession:(id)a3 participantDidJoin:(id)a4;
- (void)groupSession:(id)a3 participantDidLeave:(id)a4;
- (void)groupSessionEnded:(id)a3 withError:(id)a4;
- (void)navigationListenerArrived:(id)a3;
- (void)navigationListenerETAUpdated:(id)a3;
- (void)navigationListenerIsReady:(id)a3;
- (void)navigationListenerLocationUpdated:(id)a3;
- (void)navigationListenerResumed:(id)a3;
- (void)navigationListenerRouteUpdated:(id)a3;
- (void)navigationListenerStopped:(id)a3;
- (void)navigationListenerTrafficUpdated:(id)a3;
- (void)navigationListenerWaypointsUpdated:(id)a3;
@end

@implementation MSPSenderETAController

- (NSDictionary)serviceNamesByActiveHandle
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  senderStrategyController = self->_senderStrategyController;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__MSPSenderETAController_serviceNamesByActiveHandle__block_invoke;
  v8[3] = &unk_2798685C8;
  v9 = v3;
  v5 = v3;
  [(MSPSharedTripSenderStrategyController *)senderStrategyController performWithAllMinimalSenders:v8];
  v6 = [v5 copy];

  return v6;
}

- (MSPSenderETAController)initWithRelay:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = MSPSenderETAController;
  v5 = [(MSPSenderETAController *)&v18 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_idsRelay, v4);
    v7 = [v4 storageController];
    storageController = v6->_storageController;
    v6->_storageController = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
    destinations = v6->_destinations;
    v6->_destinations = v9;

    v11 = objc_alloc_init(MSPNavigationListener);
    navigationListener = v6->_navigationListener;
    v6->_navigationListener = v11;

    [(MSPSenderETAController *)v6 _restoreLastSession];
    v13 = [MEMORY[0x277D0EC70] sharedPlatform];
    v14 = [v13 isInternalInstall];

    if (v14)
    {
      v15 = [MEMORY[0x277CCA9A0] defaultCenter];
      [v15 addObserver:v6 selector:sel__startLiveForVirtualReceiver_ name:@"MSPSharedTripVirtualReceiverStartLiveUpdates" object:0 suspensionBehavior:4];

      v16 = [MEMORY[0x277CCA9A0] defaultCenter];
      [v16 addObserver:v6 selector:sel__stopLiveForVirtualReceiver_ name:@"MSPSharedTripVirtualReceiverStopLiveUpdates" object:0 suspensionBehavior:4];
    }
  }

  return v6;
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136380675;
    v7 = "[MSPSenderETAController dealloc]";
    _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_DEBUG, "[Sender] %{private}s", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = MSPSenderETAController;
  [(MSPSenderETAController *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_updateStorage
{
  [MSPSharedTripSenderStrategyController updateGroupSessionStorage:self->_sessionStorage fromController:self->_senderStrategyController];
  v3 = [(MSPNavigationListener *)self->_navigationListener currentState];
  v5 = [v3 copy];

  v4 = [(MSPSharedTripGroupSession *)self->_groupSession identifier];
  [v5 setGroupIdentifier:v4];

  [(MSPGroupSessionStorage *)self->_sessionStorage updateWithState:v5];
  [(MSPSharedTripStorageController *)self->_storageController setSenderSessionStorage:self->_sessionStorage];
}

- (void)_restoreLastSession
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [(MSPSharedTripStorageController *)self->_storageController senderSessionStorage];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 state];
    v6 = [MEMORY[0x277CBEB18] array];
    if ([v4 minimalStrategyIdentifiersCount])
    {
      v7 = [v4 minimalStrategyIdentifiers];
      [v6 addObjectsFromArray:v7];
    }

    if ([v4 messageStrategyIdentifiersCount])
    {
      v8 = [v4 messageStrategyIdentifiers];
      [v6 addObjectsFromArray:v8];
    }

    if ([v4 smsStrategyIdentifiersCount])
    {
      v9 = [v4 smsStrategyIdentifiers];
      [v6 addObjectsFromArray:v9];
    }

    v10 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v5 mspDescription];
      *buf = 138412546;
      v25 = v11;
      v26 = 2112;
      v27 = v6;
      _os_log_impl(&dword_25813A000, v10, OS_LOG_TYPE_DEFAULT, "[Sender] _restoreLastSession restoring state %@ to %@", buf, 0x16u);
    }

    if ([v6 count] && objc_msgSend(v5, "hasGroupIdentifier"))
    {
      v12 = [v5 groupIdentifier];
      [(MSPSenderETAController *)self _createGroupSessionIfNeededWithIdentifier:v12];

      v13 = [MEMORY[0x277D18778] _msp_IDSIdentifiersFor:v6];
      [(NSMutableSet *)self->_destinations addObjectsFromArray:v13];
      [(MSPSharedTripGroupSession *)self->_groupSession addSharingWith:v13];
      [(MSPSharedTripSenderStrategyController *)self->_senderStrategyController restoreFromGroupSessionStorage:v4];
      [(MSPSenderETAController *)self _setState:v5 forEvent:1];
      objc_initWeak(buf, self);
      v14 = self->_navigationListener;
      v15 = dispatch_time(0, 3000000000);
      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __45__MSPSenderETAController__restoreLastSession__block_invoke;
      v21 = &unk_279868528;
      v22 = v14;
      v16 = v14;
      objc_copyWeak(&v23, buf);
      dispatch_after(v15, MEMORY[0x277D85CD0], &v18);
      objc_destroyWeak(&v23);

      objc_destroyWeak(buf);
    }

    [(MSPSenderETAController *)self _invalidateActiveHandles:v18];
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __45__MSPSenderETAController__restoreLastSession__block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isInNavigatingState] & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained stopSharingWithReason:0 error:0];
  }
}

- (void)_createGroupSessionIfNeededWithIdentifier:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!self->_groupSession)
  {
    v5 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138543362;
      v19 = v4;
      _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_DEFAULT, "MSPSenderETAController creating group session for uuid %{public}@", &v18, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_idsRelay);
    v7 = [WeakRetained startSharingGroupSessionWithTripIdentifer:v4];
    groupSession = self->_groupSession;
    self->_groupSession = v7;

    [(MSPSharedTripGroupSession *)self->_groupSession setDelegate:self];
    v9 = [[MSPSharedTripSenderStrategyController alloc] initWithGroupSession:self->_groupSession messageStrategyDelegate:self];
    senderStrategyController = self->_senderStrategyController;
    self->_senderStrategyController = v9;

    v11 = objc_alloc_init(MSPGroupSessionStorage);
    sessionStorage = self->_sessionStorage;
    self->_sessionStorage = v11;

    v13 = [(MSPSharedTripGroupSession *)self->_groupSession identifier];
    [(MSPGroupSessionStorage *)self->_sessionStorage setGroupIdentifier:v13];

    v14 = [(MSPSharedTripGroupSession *)self->_groupSession initiatorIdentifier];
    [(MSPGroupSessionStorage *)self->_sessionStorage setOriginatorIdentifier:v14];

    [(MSPSenderETAController *)self _startNavigationListener];
    v15 = [(MSPSenderETAController *)self delegate];
    v16 = [(MSPGroupSessionStorage *)self->_sessionStorage groupIdentifier];
    [v15 senderController:self didStartSharingWithGroupIdentifier:v16];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_startingGroupSession
{
  v3 = os_transaction_create();
  transaction = self->_transaction;
  self->_transaction = v3;

  v5 = [(MSPNavigationListener *)self->_navigationListener navigationSessionIdentifier];
  [(MSPSenderETAController *)self _createGroupSessionIfNeededWithIdentifier:v5];
}

- (BOOL)startSharingWith:(id)a3 capabilityType:(unint64_t)a4 serviceName:(id)a5 error:(id *)a6
{
  v55[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  if ([(MSPSenderETAController *)self _validateNavigationState:a6])
  {
    if (a4 <= 1)
    {
      v55[0] = *MEMORY[0x277CCA068];
      *buf = @"Unknown";
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v55 count:1];
      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Maps.SharedTrip" code:0 userInfo:v12];

      if (a6)
      {
        v14 = v13;
        v15 = 0;
        *a6 = v13;
      }

      else
      {
        v15 = 0;
      }

LABEL_33:

      goto LABEL_34;
    }

    if (![v10 count])
    {
      v55[0] = *MEMORY[0x277CCA068];
      *buf = @"No contact handles provided";
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v55 count:1];
      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Maps.SharedTrip" code:11 userInfo:v18];

LABEL_25:
      v34 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        destinations = self->_destinations;
        if (a4 - 2 > 2)
        {
          v36 = @"Unknown";
        }

        else
        {
          v36 = off_279868628[a4 - 2];
        }

        *buf = 138478083;
        *&buf[4] = destinations;
        v53 = 2114;
        v54 = v36;
        _os_log_impl(&dword_25813A000, v34, OS_LOG_TYPE_DEFAULT, "[Sender] destinations is now %{private}@ (startSharingWith %{public}@)", buf, 0x16u);
      }

      if (a6)
      {
        v37 = v13;
        *a6 = v13;
      }

      v15 = v13 == 0;
      goto LABEL_33;
    }

    v16 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      if (a4 - 2 > 2)
      {
        v17 = @"Unknown";
      }

      else
      {
        v17 = off_279868628[a4 - 2];
      }

      *buf = 138412546;
      *&buf[4] = v10;
      v53 = 2114;
      v54 = v17;
      _os_log_impl(&dword_25813A000, v16, OS_LOG_TYPE_DEFAULT, "[Sender] startSharingWith identifiers: %@, via %{public}@", buf, 0x16u);
    }

    [(MSPSenderETAController *)self _startingGroupSession];
    v19 = [MEMORY[0x277D18778] _msp_IDSIdentifiersFor:v10];
    [(NSMutableSet *)self->_destinations addObjectsFromArray:v19];
    [(MSPSharedTripGroupSession *)self->_groupSession addSharingWith:v19];
    v20 = v11;
    if (!v11)
    {
      if (a4 - 2 > 2)
      {
        v21 = 0;
        goto LABEL_18;
      }

      v20 = *off_279868610[a4 - 2];
    }

    v21 = v20;
LABEL_18:
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __76__MSPSenderETAController_startSharingWith_capabilityType_serviceName_error___block_invoke;
    v49[3] = &unk_279868550;
    v22 = v21;
    v50 = v22;
    v51 = a4;
    v23 = MEMORY[0x259C7AD60](v49);
    v24 = [MEMORY[0x277D0EC70] sharedPlatform];
    v25 = [v24 isInternalInstall];

    if (v25)
    {
      v26 = MSPSharedTripGetVirtualReceivers(v10);
      if ([(__CFString *)v26 count])
      {
        v27 = MSPGetSharedTripLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = [(__CFString *)v26 count];
          *buf = 134218242;
          *&buf[4] = v28;
          v53 = 2114;
          v54 = v26;
          _os_log_impl(&dword_25813A000, v27, OS_LOG_TYPE_DEFAULT, "[Sender] found %lu virtual receivers: %{public}@", buf, 0x16u);
        }

        senderStrategyController = self->_senderStrategyController;
        v46[0] = MEMORY[0x277D85DD0];
        v46[1] = 3221225472;
        v46[2] = __76__MSPSenderETAController_startSharingWith_capabilityType_serviceName_error___block_invoke_23;
        v46[3] = &unk_279868578;
        v48 = v23;
        v47 = v26;
        [(MSPSharedTripSenderStrategyController *)senderStrategyController performWithVirtualSenders:1 block:v46];
        v30 = MSPSharedTripGetRealReceivers(v19);

        v19 = v30;
      }
    }

    v31 = self->_senderStrategyController;
    v40 = MEMORY[0x277D85DD0];
    v41 = 3221225472;
    v42 = __76__MSPSenderETAController_startSharingWith_capabilityType_serviceName_error___block_invoke_2;
    v43 = &unk_279868578;
    v44 = v19;
    v45 = v23;
    v32 = v19;
    v33 = v23;
    [(MSPSharedTripSenderStrategyController *)v31 performWithVirtualSenders:0 block:&v40];
    [(MSPSenderETAController *)self _updateStorage:v40];
    [(MSPSenderETAController *)self _invalidateActiveHandles];

    v13 = 0;
    goto LABEL_25;
  }

  v15 = 0;
LABEL_34:

  v38 = *MEMORY[0x277D85DE8];
  return v15;
}

void __76__MSPSenderETAController_startSharingWith_capabilityType_serviceName_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  [v8 addParticipants:v5 forServiceName:*(a1 + 32)];
  if (*(a1 + 40) == 4)
  {
    v6 = [MEMORY[0x277D0EC70] sharedPlatform];
    if ([v6 isInternalInstall])
    {
      BOOL = GEOConfigGetBOOL();

      if (BOOL)
      {
        [v8 addLiveParticipants:v5];
      }
    }

    else
    {
    }
  }
}

- (BOOL)stopSharingWith:(id)a3 reason:(unint64_t)a4 error:(id *)a5
{
  v52 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v36 = v6;
  if ([v6 count])
  {
    [MEMORY[0x277D18778] _msp_IDSIdentifiersFor:v6];
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    obj = v43 = 0u;
    v7 = 0;
    v8 = [obj countByEnumeratingWithState:&v42 objects:v51 count:16];
    if (v8)
    {
      v9 = *v43;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v43 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v42 + 1) + 8 * i);
          v12 = [MEMORY[0x277D0EC70] sharedPlatform];
          v13 = [v12 isInternalInstall];

          if (v13 && (MSPSharedTripVirtualReceiverIsValid(v11) & 1) != 0)
          {
            *v49 = 0;
            *&v49[8] = v49;
            *&v49[16] = 0x2020000000;
            v50 = 0;
            senderStrategyController = self->_senderStrategyController;
            v40[0] = MEMORY[0x277D85DD0];
            v40[1] = 3221225472;
            v40[2] = __55__MSPSenderETAController_stopSharingWith_reason_error___block_invoke_25;
            v40[3] = &unk_2798685A0;
            v40[5] = v49;
            v40[6] = a4;
            v40[4] = v11;
            [(MSPSharedTripSenderStrategyController *)senderStrategyController performWithVirtualSenders:1 block:v40];
            v15 = MSPGetSharedTripLog();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              v16 = @"NO";
              if (*(*&v49[8] + 24))
              {
                v16 = @"YES";
              }

              v17 = v16;
              *buf = 138543618;
              *&buf[4] = v11;
              v47 = 2114;
              v48 = v17;
              _os_log_impl(&dword_25813A000, v15, OS_LOG_TYPE_INFO, "stopSharingWith (virtual): %{public}@ wasSharing: %{public}@", buf, 0x16u);
            }
          }

          else
          {
            *v49 = 0;
            *&v49[8] = v49;
            *&v49[16] = 0x2020000000;
            v50 = 0;
            v18 = self->_senderStrategyController;
            v41[0] = MEMORY[0x277D85DD0];
            v41[1] = 3221225472;
            v41[2] = __55__MSPSenderETAController_stopSharingWith_reason_error___block_invoke;
            v41[3] = &unk_2798685A0;
            v41[5] = v49;
            v41[6] = a4;
            v41[4] = v11;
            [(MSPSharedTripSenderStrategyController *)v18 performWithVirtualSenders:0 block:v41];
            v15 = MSPGetSharedTripLog();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              v19 = @"NO";
              if (*(*&v49[8] + 24))
              {
                v19 = @"YES";
              }

              v20 = v19;
              *buf = 138543618;
              *&buf[4] = v11;
              v47 = 2114;
              v48 = v20;
              _os_log_impl(&dword_25813A000, v15, OS_LOG_TYPE_INFO, "stopSharingWith: %{public}@ wasSharing: %{public}@", buf, 0x16u);
            }
          }

          if (v7)
          {
            v7 = 1;
          }

          else
          {
            v7 = *(*&v49[8] + 24);
          }

          _Block_object_dispose(v49, 8);
        }

        v8 = [obj countByEnumeratingWithState:&v42 objects:v51 count:16];
      }

      while (v8);
    }

    v21 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = [obj count];
      *v49 = 134218243;
      *&v49[4] = v22;
      *&v49[12] = 2113;
      *&v49[14] = obj;
      _os_log_impl(&dword_25813A000, v21, OS_LOG_TYPE_INFO, "Removing %lu identifiers from sharing: %{private}@", v49, 0x16u);
    }

    destinations = self->_destinations;
    v24 = [MEMORY[0x277CBEB98] setWithArray:obj];
    [(NSMutableSet *)destinations minusSet:v24];

    WeakRetained = objc_loadWeakRetained(&self->_idsRelay);
    v26 = [WeakRetained removeSharingWith:obj];
    groupSession = self->_groupSession;
    self->_groupSession = v26;

    [(MSPSenderETAController *)self _updateStorage];
    if (![(NSMutableSet *)self->_destinations count])
    {
      [(MSPSenderETAController *)self _cleanObjects];
    }

    [(MSPSenderETAController *)self _invalidateActiveHandles];
  }

  else
  {
    v7 = 0;
  }

  if (a5 && (v7 & 1) == 0)
  {
    v28 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *v49 = 0;
      _os_log_impl(&dword_25813A000, v28, OS_LOG_TYPE_ERROR, "[Sender] Asked to stop sharing but we didn't match with any of the handles", v49, 2u);
    }

    *buf = *MEMORY[0x277CCA068];
    *v49 = @"Not currently sharing with contacts";
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:buf count:1];
    v30 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Maps.SharedTrip" code:13 userInfo:v29];

    v31 = v30;
    *a5 = v30;
  }

  v32 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = self->_destinations;
    *v49 = 138477827;
    *&v49[4] = v33;
    _os_log_impl(&dword_25813A000, v32, OS_LOG_TYPE_DEFAULT, "[Sender] destinations is now %{private}@ (stopSharingWith)", v49, 0xCu);
  }

  v34 = *MEMORY[0x277D85DE8];
  return v7 & 1;
}

void __55__MSPSenderETAController_stopSharingWith_reason_error___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[6];
  v5 = a2;
  LOBYTE(v3) = [v5 removeParticipant:v3 reason:v4];
  LOBYTE(v4) = [v5 removeLiveParticipant:a1[4]];

  *(*(a1[5] + 8) + 24) = (v3 | v4) & 1;
}

void __55__MSPSenderETAController_stopSharingWith_reason_error___block_invoke_25(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[6];
  v5 = a2;
  LOBYTE(v3) = [v5 removeParticipant:v3 reason:v4];
  LOBYTE(v4) = [v5 removeLiveParticipant:a1[4]];

  *(*(a1[5] + 8) + 24) = (v3 | v4) & 1;
}

- (BOOL)stopSharingWithReason:(unint64_t)a3 error:(id *)a4
{
  v7 = [(NSMutableSet *)self->_destinations allObjects];
  v8 = [(MSPSenderETAController *)self stopSharingWith:v7 reason:a3 error:a4];

  if ([(NSMutableSet *)self->_destinations count])
  {
    v9 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_25813A000, v9, OS_LOG_TYPE_FAULT, "[Sender] stopSharing didn't clear all destinations, forcing it now", v11, 2u);
    }

    [(MSPSenderETAController *)self _updateStorage];
    [(MSPSenderETAController *)self _cleanObjects];
    [(MSPSenderETAController *)self _invalidateActiveHandles];
  }

  return v8;
}

void __52__MSPSenderETAController_serviceNamesByActiveHandle__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [a2 participants];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(a1 + 32) setObject:v5 forKeyedSubscript:*(*(&v12 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_startLiveForVirtualReceiver:(id)a3
{
  v4 = [a3 object];
  v5 = v4;
  if (v4)
  {
    senderStrategyController = self->_senderStrategyController;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __55__MSPSenderETAController__startLiveForVirtualReceiver___block_invoke;
    v7[3] = &unk_2798685F0;
    v8 = v4;
    [(MSPSharedTripSenderStrategyController *)senderStrategyController performWithVirtualSenders:1 block:v7];
  }
}

void __55__MSPSenderETAController__startLiveForVirtualReceiver___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v2 = MEMORY[0x277CBEA60];
  v3 = a2;
  v4 = [v2 arrayWithObjects:&v6 count:1];
  [v3 addLiveParticipants:{v4, v6, v7}];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_stopLiveForVirtualReceiver:(id)a3
{
  v4 = [a3 object];
  v5 = v4;
  if (v4)
  {
    senderStrategyController = self->_senderStrategyController;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __54__MSPSenderETAController__stopLiveForVirtualReceiver___block_invoke;
    v7[3] = &unk_2798685F0;
    v8 = v4;
    [(MSPSharedTripSenderStrategyController *)senderStrategyController performWithVirtualSenders:1 block:v7];
  }
}

- (void)_cleanObjects
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[MSPSenderETAController _cleanObjects]";
    _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_DEFAULT, "[Sender] %s", &v10, 0xCu);
  }

  sessionStorage = self->_sessionStorage;
  self->_sessionStorage = 0;

  [(MSPSharedTripStorageController *)self->_storageController setSenderSessionStorage:0];
  senderStrategyController = self->_senderStrategyController;
  self->_senderStrategyController = 0;

  [(NSMutableSet *)self->_destinations removeAllObjects];
  [(MSPSenderETAController *)self _stopNavigationListener];
  WeakRetained = objc_loadWeakRetained(&self->_idsRelay);
  [WeakRetained stopSharing];

  groupSession = self->_groupSession;
  self->_groupSession = 0;

  transaction = self->_transaction;
  self->_transaction = 0;

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_invalidateSharedTripWithError:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__MSPSenderETAController__invalidateSharedTripWithError___block_invoke;
  block[3] = &unk_279865F48;
  objc_copyWeak(&v8, &location);
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __57__MSPSenderETAController__invalidateSharedTripWithError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained delegate];
    [v3 senderController:v4 didInvalidateSharedTripWithError:*(a1 + 32)];

    WeakRetained = v4;
  }
}

- (void)_invalidateActiveHandles
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__MSPSenderETAController__invalidateActiveHandles__block_invoke;
  block[3] = &unk_279866158;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __50__MSPSenderETAController__invalidateActiveHandles__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 invalidateActiveHandlesForSenderController:*(a1 + 32)];
}

- (void)_startNavigationListener
{
  v3 = [(MSPNavigationListener *)self->_navigationListener delegate];

  if (!v3)
  {
    v4 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_25813A000, v4, OS_LOG_TYPE_INFO, "MSPSenderETAController start listening to navigation", v5, 2u);
    }

    [(MSPNavigationListener *)self->_navigationListener setDelegate:self];
  }
}

- (void)_stopNavigationListener
{
  v3 = [(MSPNavigationListener *)self->_navigationListener delegate];

  if (v3 == self)
  {
    v4 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_25813A000, v4, OS_LOG_TYPE_INFO, "MSPSenderETAController stop listening to navigation", v5, 2u);
    }

    [(MSPNavigationListener *)self->_navigationListener setDelegate:0];
  }
}

- (BOOL)_validateNavigationState:(id *)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  if (![(MSPNavigationListener *)self->_navigationListener isInNavigatingState])
  {
    v17[0] = *MEMORY[0x277CCA068];
    *v14 = @"Not navigating";
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v17 count:1];
    v7 = MEMORY[0x277CCA9B8];
    v8 = 7;
    goto LABEL_9;
  }

  if (![(MSPNavigationListener *)self->_navigationListener isCompatibleTransportType])
  {
    v17[0] = *MEMORY[0x277CCA068];
    *v14 = @"Incompatible transport type";
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v17 count:1];
    v7 = MEMORY[0x277CCA9B8];
    v8 = 8;
    goto LABEL_9;
  }

  if (![(MSPNavigationListener *)self->_navigationListener isCompatibleNavigationType])
  {
    v17[0] = *MEMORY[0x277CCA068];
    *v14 = @"Incompatible navigation type";
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v17 count:1];
    v7 = MEMORY[0x277CCA9B8];
    v8 = 9;
LABEL_9:
    v5 = [v7 errorWithDomain:@"com.apple.Maps.SharedTrip" code:v8 userInfo:v6];

    if (!a3)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v5 = 0;
  if (a3)
  {
LABEL_10:
    v9 = v5;
    *a3 = v5;
  }

LABEL_11:
  if (v5)
  {
    v10 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      navigationListener = self->_navigationListener;
      *v14 = 138412546;
      *&v14[4] = v5;
      v15 = 2112;
      v16 = navigationListener;
      _os_log_impl(&dword_25813A000, v10, OS_LOG_TYPE_ERROR, "[Sender] invalid navigation state for sharing: %@ | listener: %@", v14, 0x16u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5 == 0;
}

- (void)_setState:(id)a3 forEvent:(unint64_t)a4
{
  if (a3)
  {
    [(MSPSharedTripSenderStrategyController *)self->_senderStrategyController setState:a3 forEvent:a4];
  }
}

- (void)navigationListenerWaypointsUpdated:(id)a3
{
  v4 = [a3 currentState];
  if (v4)
  {
    [(MSPSenderETAController *)self _setState:v4 forEvent:3];
    [(MSPSenderETAController *)self _updateStorage];
  }

  MEMORY[0x2821F96F8]();
}

- (void)navigationListenerIsReady:(id)a3
{
  v4 = [a3 currentState];
  if (v4)
  {
    [(MSPSenderETAController *)self _setState:v4 forEvent:0];
    [(MSPSenderETAController *)self _updateStorage];
  }

  MEMORY[0x2821F96F8]();
}

- (void)navigationListenerETAUpdated:(id)a3
{
  v4 = [a3 currentState];
  [(MSPSenderETAController *)self _setState:v4 forEvent:2];
}

- (void)navigationListenerLocationUpdated:(id)a3
{
  v4 = [a3 currentState];
  [(MSPSenderETAController *)self _setState:v4 forEvent:4];
}

- (void)navigationListenerRouteUpdated:(id)a3
{
  v4 = [a3 currentState];
  [(MSPSenderETAController *)self _setState:v4 forEvent:5];
}

- (void)navigationListenerTrafficUpdated:(id)a3
{
  v4 = [a3 currentState];
  [(MSPSenderETAController *)self _setState:v4 forEvent:6];
}

- (void)navigationListenerArrived:(id)a3
{
  v4 = [a3 currentState];
  [(MSPSenderETAController *)self _setState:v4 forEvent:7];
}

- (void)navigationListenerResumed:(id)a3
{
  v4 = [a3 currentState];
  [(MSPSenderETAController *)self _setState:v4 forEvent:8];
}

- (void)navigationListenerStopped:(id)a3
{
  v4 = [a3 currentState];
  [(MSPSenderETAController *)self _setState:v4 forEvent:9];
  [(MSPSenderETAController *)self stopSharingWithReason:0 error:0];
}

- (void)groupSession:(id)a3 participantDidJoin:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v5;
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEFAULT, "[Sender] live participant did join %@", buf, 0xCu);
  }

  if (v5)
  {
    senderStrategyController = self->_senderStrategyController;
    v10 = v5;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
    [(MSPSharedTripSenderStrategyController *)senderStrategyController addLiveParticipants:v8];

    [(MSPSenderETAController *)self _updateStorage];
    [(MSPSenderETAController *)self _invalidateActiveHandles];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)groupSession:(id)a3 participantDidLeave:(id)a4
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEFAULT, "[Sender] live participant did leave %@", &v8, 0xCu);
  }

  if (v5)
  {
    [(MSPSharedTripSenderStrategyController *)self->_senderStrategyController removeLiveParticipant:v5];
    [(MSPSenderETAController *)self _updateStorage];
    [(MSPSenderETAController *)self _invalidateActiveHandles];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)groupSessionEnded:(id)a3 withError:(id)a4
{
  v5 = a4;
  [(MSPSenderETAController *)self stopSharingWithReason:0 error:0];
  [(MSPSenderETAController *)self _invalidateSharedTripWithError:v5];
}

- (MSPSenderETAControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end