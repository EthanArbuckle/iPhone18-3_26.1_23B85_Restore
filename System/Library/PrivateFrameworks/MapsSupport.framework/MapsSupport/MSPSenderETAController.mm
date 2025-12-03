@interface MSPSenderETAController
- (BOOL)_validateNavigationState:(id *)state;
- (BOOL)startSharingWith:(id)with capabilityType:(unint64_t)type serviceName:(id)name error:(id *)error;
- (BOOL)stopSharingWith:(id)with reason:(unint64_t)reason error:(id *)error;
- (BOOL)stopSharingWithReason:(unint64_t)reason error:(id *)error;
- (MSPSenderETAController)initWithRelay:(id)relay;
- (MSPSenderETAControllerDelegate)delegate;
- (NSDictionary)serviceNamesByActiveHandle;
- (void)_cleanObjects;
- (void)_createGroupSessionIfNeededWithIdentifier:(id)identifier;
- (void)_invalidateActiveHandles;
- (void)_invalidateSharedTripWithError:(id)error;
- (void)_restoreLastSession;
- (void)_setState:(id)state forEvent:(unint64_t)event;
- (void)_startLiveForVirtualReceiver:(id)receiver;
- (void)_startNavigationListener;
- (void)_startingGroupSession;
- (void)_stopLiveForVirtualReceiver:(id)receiver;
- (void)_stopNavigationListener;
- (void)_updateStorage;
- (void)dealloc;
- (void)groupSession:(id)session participantDidJoin:(id)join;
- (void)groupSession:(id)session participantDidLeave:(id)leave;
- (void)groupSessionEnded:(id)ended withError:(id)error;
- (void)navigationListenerArrived:(id)arrived;
- (void)navigationListenerETAUpdated:(id)updated;
- (void)navigationListenerIsReady:(id)ready;
- (void)navigationListenerLocationUpdated:(id)updated;
- (void)navigationListenerResumed:(id)resumed;
- (void)navigationListenerRouteUpdated:(id)updated;
- (void)navigationListenerStopped:(id)stopped;
- (void)navigationListenerTrafficUpdated:(id)updated;
- (void)navigationListenerWaypointsUpdated:(id)updated;
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

- (MSPSenderETAController)initWithRelay:(id)relay
{
  relayCopy = relay;
  v18.receiver = self;
  v18.super_class = MSPSenderETAController;
  v5 = [(MSPSenderETAController *)&v18 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_idsRelay, relayCopy);
    storageController = [relayCopy storageController];
    storageController = v6->_storageController;
    v6->_storageController = storageController;

    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
    destinations = v6->_destinations;
    v6->_destinations = v9;

    v11 = objc_alloc_init(MSPNavigationListener);
    navigationListener = v6->_navigationListener;
    v6->_navigationListener = v11;

    [(MSPSenderETAController *)v6 _restoreLastSession];
    mEMORY[0x277D0EC70] = [MEMORY[0x277D0EC70] sharedPlatform];
    isInternalInstall = [mEMORY[0x277D0EC70] isInternalInstall];

    if (isInternalInstall)
    {
      defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
      [defaultCenter addObserver:v6 selector:sel__startLiveForVirtualReceiver_ name:@"MSPSharedTripVirtualReceiverStartLiveUpdates" object:0 suspensionBehavior:4];

      defaultCenter2 = [MEMORY[0x277CCA9A0] defaultCenter];
      [defaultCenter2 addObserver:v6 selector:sel__stopLiveForVirtualReceiver_ name:@"MSPSharedTripVirtualReceiverStopLiveUpdates" object:0 suspensionBehavior:4];
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
  currentState = [(MSPNavigationListener *)self->_navigationListener currentState];
  v5 = [currentState copy];

  identifier = [(MSPSharedTripGroupSession *)self->_groupSession identifier];
  [v5 setGroupIdentifier:identifier];

  [(MSPGroupSessionStorage *)self->_sessionStorage updateWithState:v5];
  [(MSPSharedTripStorageController *)self->_storageController setSenderSessionStorage:self->_sessionStorage];
}

- (void)_restoreLastSession
{
  v28 = *MEMORY[0x277D85DE8];
  senderSessionStorage = [(MSPSharedTripStorageController *)self->_storageController senderSessionStorage];
  v4 = senderSessionStorage;
  if (senderSessionStorage)
  {
    state = [senderSessionStorage state];
    array = [MEMORY[0x277CBEB18] array];
    if ([v4 minimalStrategyIdentifiersCount])
    {
      minimalStrategyIdentifiers = [v4 minimalStrategyIdentifiers];
      [array addObjectsFromArray:minimalStrategyIdentifiers];
    }

    if ([v4 messageStrategyIdentifiersCount])
    {
      messageStrategyIdentifiers = [v4 messageStrategyIdentifiers];
      [array addObjectsFromArray:messageStrategyIdentifiers];
    }

    if ([v4 smsStrategyIdentifiersCount])
    {
      smsStrategyIdentifiers = [v4 smsStrategyIdentifiers];
      [array addObjectsFromArray:smsStrategyIdentifiers];
    }

    v10 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      mspDescription = [state mspDescription];
      *buf = 138412546;
      v25 = mspDescription;
      v26 = 2112;
      v27 = array;
      _os_log_impl(&dword_25813A000, v10, OS_LOG_TYPE_DEFAULT, "[Sender] _restoreLastSession restoring state %@ to %@", buf, 0x16u);
    }

    if ([array count] && objc_msgSend(state, "hasGroupIdentifier"))
    {
      groupIdentifier = [state groupIdentifier];
      [(MSPSenderETAController *)self _createGroupSessionIfNeededWithIdentifier:groupIdentifier];

      v13 = [MEMORY[0x277D18778] _msp_IDSIdentifiersFor:array];
      [(NSMutableSet *)self->_destinations addObjectsFromArray:v13];
      [(MSPSharedTripGroupSession *)self->_groupSession addSharingWith:v13];
      [(MSPSharedTripSenderStrategyController *)self->_senderStrategyController restoreFromGroupSessionStorage:v4];
      [(MSPSenderETAController *)self _setState:state forEvent:1];
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

- (void)_createGroupSessionIfNeededWithIdentifier:(id)identifier
{
  v20 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (!self->_groupSession)
  {
    v5 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138543362;
      v19 = identifierCopy;
      _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_DEFAULT, "MSPSenderETAController creating group session for uuid %{public}@", &v18, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_idsRelay);
    v7 = [WeakRetained startSharingGroupSessionWithTripIdentifer:identifierCopy];
    groupSession = self->_groupSession;
    self->_groupSession = v7;

    [(MSPSharedTripGroupSession *)self->_groupSession setDelegate:self];
    v9 = [[MSPSharedTripSenderStrategyController alloc] initWithGroupSession:self->_groupSession messageStrategyDelegate:self];
    senderStrategyController = self->_senderStrategyController;
    self->_senderStrategyController = v9;

    v11 = objc_alloc_init(MSPGroupSessionStorage);
    sessionStorage = self->_sessionStorage;
    self->_sessionStorage = v11;

    identifier = [(MSPSharedTripGroupSession *)self->_groupSession identifier];
    [(MSPGroupSessionStorage *)self->_sessionStorage setGroupIdentifier:identifier];

    initiatorIdentifier = [(MSPSharedTripGroupSession *)self->_groupSession initiatorIdentifier];
    [(MSPGroupSessionStorage *)self->_sessionStorage setOriginatorIdentifier:initiatorIdentifier];

    [(MSPSenderETAController *)self _startNavigationListener];
    delegate = [(MSPSenderETAController *)self delegate];
    groupIdentifier = [(MSPGroupSessionStorage *)self->_sessionStorage groupIdentifier];
    [delegate senderController:self didStartSharingWithGroupIdentifier:groupIdentifier];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_startingGroupSession
{
  v3 = os_transaction_create();
  transaction = self->_transaction;
  self->_transaction = v3;

  navigationSessionIdentifier = [(MSPNavigationListener *)self->_navigationListener navigationSessionIdentifier];
  [(MSPSenderETAController *)self _createGroupSessionIfNeededWithIdentifier:navigationSessionIdentifier];
}

- (BOOL)startSharingWith:(id)with capabilityType:(unint64_t)type serviceName:(id)name error:(id *)error
{
  v55[1] = *MEMORY[0x277D85DE8];
  withCopy = with;
  nameCopy = name;
  if ([(MSPSenderETAController *)self _validateNavigationState:error])
  {
    if (type <= 1)
    {
      v55[0] = *MEMORY[0x277CCA068];
      *buf = @"Unknown";
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v55 count:1];
      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Maps.SharedTrip" code:0 userInfo:v12];

      if (error)
      {
        v14 = v13;
        v15 = 0;
        *error = v13;
      }

      else
      {
        v15 = 0;
      }

LABEL_33:

      goto LABEL_34;
    }

    if (![withCopy count])
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
        if (type - 2 > 2)
        {
          v36 = @"Unknown";
        }

        else
        {
          v36 = off_279868628[type - 2];
        }

        *buf = 138478083;
        *&buf[4] = destinations;
        v53 = 2114;
        v54 = v36;
        _os_log_impl(&dword_25813A000, v34, OS_LOG_TYPE_DEFAULT, "[Sender] destinations is now %{private}@ (startSharingWith %{public}@)", buf, 0x16u);
      }

      if (error)
      {
        v37 = v13;
        *error = v13;
      }

      v15 = v13 == 0;
      goto LABEL_33;
    }

    v16 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      if (type - 2 > 2)
      {
        v17 = @"Unknown";
      }

      else
      {
        v17 = off_279868628[type - 2];
      }

      *buf = 138412546;
      *&buf[4] = withCopy;
      v53 = 2114;
      v54 = v17;
      _os_log_impl(&dword_25813A000, v16, OS_LOG_TYPE_DEFAULT, "[Sender] startSharingWith identifiers: %@, via %{public}@", buf, 0x16u);
    }

    [(MSPSenderETAController *)self _startingGroupSession];
    v19 = [MEMORY[0x277D18778] _msp_IDSIdentifiersFor:withCopy];
    [(NSMutableSet *)self->_destinations addObjectsFromArray:v19];
    [(MSPSharedTripGroupSession *)self->_groupSession addSharingWith:v19];
    v20 = nameCopy;
    if (!nameCopy)
    {
      if (type - 2 > 2)
      {
        v21 = 0;
        goto LABEL_18;
      }

      v20 = *off_279868610[type - 2];
    }

    v21 = v20;
LABEL_18:
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __76__MSPSenderETAController_startSharingWith_capabilityType_serviceName_error___block_invoke;
    v49[3] = &unk_279868550;
    v22 = v21;
    v50 = v22;
    typeCopy = type;
    v23 = MEMORY[0x259C7AD60](v49);
    mEMORY[0x277D0EC70] = [MEMORY[0x277D0EC70] sharedPlatform];
    isInternalInstall = [mEMORY[0x277D0EC70] isInternalInstall];

    if (isInternalInstall)
    {
      v26 = MSPSharedTripGetVirtualReceivers(withCopy);
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

- (BOOL)stopSharingWith:(id)with reason:(unint64_t)reason error:(id *)error
{
  v52 = *MEMORY[0x277D85DE8];
  withCopy = with;
  v36 = withCopy;
  if ([withCopy count])
  {
    [MEMORY[0x277D18778] _msp_IDSIdentifiersFor:withCopy];
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
          mEMORY[0x277D0EC70] = [MEMORY[0x277D0EC70] sharedPlatform];
          isInternalInstall = [mEMORY[0x277D0EC70] isInternalInstall];

          if (isInternalInstall && (MSPSharedTripVirtualReceiverIsValid(v11) & 1) != 0)
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
            v40[6] = reason;
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
            v41[6] = reason;
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

  if (error && (v7 & 1) == 0)
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
    *error = v30;
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

- (BOOL)stopSharingWithReason:(unint64_t)reason error:(id *)error
{
  allObjects = [(NSMutableSet *)self->_destinations allObjects];
  v8 = [(MSPSenderETAController *)self stopSharingWith:allObjects reason:reason error:error];

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

- (void)_startLiveForVirtualReceiver:(id)receiver
{
  object = [receiver object];
  v5 = object;
  if (object)
  {
    senderStrategyController = self->_senderStrategyController;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __55__MSPSenderETAController__startLiveForVirtualReceiver___block_invoke;
    v7[3] = &unk_2798685F0;
    v8 = object;
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

- (void)_stopLiveForVirtualReceiver:(id)receiver
{
  object = [receiver object];
  v5 = object;
  if (object)
  {
    senderStrategyController = self->_senderStrategyController;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __54__MSPSenderETAController__stopLiveForVirtualReceiver___block_invoke;
    v7[3] = &unk_2798685F0;
    v8 = object;
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

- (void)_invalidateSharedTripWithError:(id)error
{
  errorCopy = error;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__MSPSenderETAController__invalidateSharedTripWithError___block_invoke;
  block[3] = &unk_279865F48;
  objc_copyWeak(&v8, &location);
  v7 = errorCopy;
  v5 = errorCopy;
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
  delegate = [(MSPNavigationListener *)self->_navigationListener delegate];

  if (!delegate)
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
  delegate = [(MSPNavigationListener *)self->_navigationListener delegate];

  if (delegate == self)
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

- (BOOL)_validateNavigationState:(id *)state
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

    if (!state)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v5 = 0;
  if (state)
  {
LABEL_10:
    v9 = v5;
    *state = v5;
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

- (void)_setState:(id)state forEvent:(unint64_t)event
{
  if (state)
  {
    [(MSPSharedTripSenderStrategyController *)self->_senderStrategyController setState:state forEvent:event];
  }
}

- (void)navigationListenerWaypointsUpdated:(id)updated
{
  currentState = [updated currentState];
  if (currentState)
  {
    [(MSPSenderETAController *)self _setState:currentState forEvent:3];
    [(MSPSenderETAController *)self _updateStorage];
  }

  MEMORY[0x2821F96F8]();
}

- (void)navigationListenerIsReady:(id)ready
{
  currentState = [ready currentState];
  if (currentState)
  {
    [(MSPSenderETAController *)self _setState:currentState forEvent:0];
    [(MSPSenderETAController *)self _updateStorage];
  }

  MEMORY[0x2821F96F8]();
}

- (void)navigationListenerETAUpdated:(id)updated
{
  currentState = [updated currentState];
  [(MSPSenderETAController *)self _setState:currentState forEvent:2];
}

- (void)navigationListenerLocationUpdated:(id)updated
{
  currentState = [updated currentState];
  [(MSPSenderETAController *)self _setState:currentState forEvent:4];
}

- (void)navigationListenerRouteUpdated:(id)updated
{
  currentState = [updated currentState];
  [(MSPSenderETAController *)self _setState:currentState forEvent:5];
}

- (void)navigationListenerTrafficUpdated:(id)updated
{
  currentState = [updated currentState];
  [(MSPSenderETAController *)self _setState:currentState forEvent:6];
}

- (void)navigationListenerArrived:(id)arrived
{
  currentState = [arrived currentState];
  [(MSPSenderETAController *)self _setState:currentState forEvent:7];
}

- (void)navigationListenerResumed:(id)resumed
{
  currentState = [resumed currentState];
  [(MSPSenderETAController *)self _setState:currentState forEvent:8];
}

- (void)navigationListenerStopped:(id)stopped
{
  currentState = [stopped currentState];
  [(MSPSenderETAController *)self _setState:currentState forEvent:9];
  [(MSPSenderETAController *)self stopSharingWithReason:0 error:0];
}

- (void)groupSession:(id)session participantDidJoin:(id)join
{
  v13 = *MEMORY[0x277D85DE8];
  joinCopy = join;
  v6 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = joinCopy;
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEFAULT, "[Sender] live participant did join %@", buf, 0xCu);
  }

  if (joinCopy)
  {
    senderStrategyController = self->_senderStrategyController;
    v10 = joinCopy;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
    [(MSPSharedTripSenderStrategyController *)senderStrategyController addLiveParticipants:v8];

    [(MSPSenderETAController *)self _updateStorage];
    [(MSPSenderETAController *)self _invalidateActiveHandles];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)groupSession:(id)session participantDidLeave:(id)leave
{
  v10 = *MEMORY[0x277D85DE8];
  leaveCopy = leave;
  v6 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = leaveCopy;
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEFAULT, "[Sender] live participant did leave %@", &v8, 0xCu);
  }

  if (leaveCopy)
  {
    [(MSPSharedTripSenderStrategyController *)self->_senderStrategyController removeLiveParticipant:leaveCopy];
    [(MSPSenderETAController *)self _updateStorage];
    [(MSPSenderETAController *)self _invalidateActiveHandles];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)groupSessionEnded:(id)ended withError:(id)error
{
  errorCopy = error;
  [(MSPSenderETAController *)self stopSharingWithReason:0 error:0];
  [(MSPSenderETAController *)self _invalidateSharedTripWithError:errorCopy];
}

- (MSPSenderETAControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end