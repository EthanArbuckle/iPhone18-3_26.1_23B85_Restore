@interface HDNanoSyncManager
- (HDNanoSyncManager)initWithProfile:(id)profile isMaster:(BOOL)master;
- (id)_queue_eligibleInactiveSyncStores;
- (id)_queue_syncStoreForIDSDevice:(uint64_t)device updateIfNecessary:(void *)necessary;
- (id)_queue_validatedSyncStore:(void *)store device:(void *)device message:(uint64_t)message error:;
- (id)diagnosticDescription;
- (uint64_t)_queue_finishInitializationAfterFirstUnlockIfNecessaryWithError:(uint64_t)error;
- (uint64_t)_queue_isRestoreCompleteForSyncStore:(uint64_t)store error:;
- (void)_deviceDidBecomeActive:(id)active;
- (void)_deviceDidPair:(id)pair;
- (void)_deviceDidUnpair:(id)unpair;
- (void)_handleIncomingRequest:(void *)request usingBlock:;
- (void)_handleIncomingResponse:(void *)response usingBlock:;
- (void)_handleOutgoingMessageError:(void *)error usingBlock:;
- (void)_invalidate;
- (void)_logIncomingRequest:(uint64_t)request;
- (void)_logOutgoingMessageError:(uint64_t)error;
- (void)_notifyObserversPairedDevicesChanged:(uint64_t)changed;
- (void)_queue_generateWatchActivationSamples;
- (void)_queue_handleTinkerOptInNotification:(uint64_t)notification;
- (void)_queue_performNextProactiveSyncWithRemainingDevices:(void *)devices accessibilityAssertion:(void *)assertion completion:;
- (void)_queue_sendChangeSet:(void *)set status:(void *)status session:(void *)session completion:;
- (void)_queue_sendRequest:(uint64_t)request syncStore:;
- (void)_queue_sendResponse:(void *)response syncStore:;
- (void)_queue_setUpMessageCentersIfNecessary;
- (void)_queue_syncImmediatelyWithReason:(uint64_t)reason options:(void *)options accessibilityAssertion:(void *)assertion completion:;
- (void)_queue_synchronizeWithOptions:(void *)options restoreMessagesSentHandler:(void *)handler targetSyncStore:(void *)store reason:(void *)reason accessibilityAssertion:(void *)assertion completion:;
- (void)_queue_transitionToRestoreCompleteWithSyncStore:(uint64_t)store;
- (void)_queue_transitionToRestoreIncompleteWithSyncStore:(void *)store error:;
- (void)_queue_updateDeviceNameIfNecessaryWithSyncStore:(uint64_t)store;
- (void)_queue_updateSyncStores;
- (void)_queue_updateSyncStoresWithCompletion:(uint64_t)completion;
- (void)_queue_updateTinkerSyncStore;
- (void)_scheduleResetReceivedNanoSyncAnchorsForHFD;
- (void)_sendFinalMessageForSyncSession:(void *)session status:(uint64_t)status success:(void *)success error:;
- (void)_sendFinalStatusMessageForSyncSession:(char)session didFinishSuccessfully:(void *)successfully error:;
- (void)_syncImmediatelyWithReason:(uint64_t)reason options:;
- (void)_userCharacteristicsDidChange:(id)change;
- (void)_userPreferencesDidChange:(id)change;
- (void)_workoutSamplesWereAssociated:(id)associated;
- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available;
- (void)dealloc;
- (void)foregroundClientProcessesDidChange:(id)change previouslyForegroundBundleIdentifiers:(id)identifiers;
- (void)initializeMessageCenterIfNeeded;
- (void)invalidateAndWait;
- (void)messageCenter:(id)center activeDeviceDidChange:(id)change acknowledgementHandler:(id)handler;
- (void)messageCenter:(id)center didResolveIDSIdentifierForRequest:(id)request;
- (void)messageCenter:(id)center didResolveIDSIdentifierForResponse:(id)response;
- (void)messageCenterChangesError:(id)error;
- (void)messageCenterDidReceiveAuthorizationCompleteRequest:(id)request;
- (void)messageCenterDidReceiveAuthorizationError:(id)error;
- (void)messageCenterDidReceiveAuthorizationRequest:(id)request;
- (void)messageCenterDidReceiveAuthorizationResponse:(id)response;
- (void)messageCenterDidReceiveChangesRequest:(id)request;
- (void)messageCenterDidReceiveChangesResponse:(id)response;
- (void)messageCenterDidReceiveCompanionUserNotificationError:(id)error;
- (void)messageCenterDidReceiveCompanionUserNotificationRequest:(id)request;
- (void)messageCenterDidReceiveCompanionUserNotificationResponse:(id)response;
- (void)messageCenterDidReceiveNotificationInstructionRequest:(id)request;
- (void)messageCenterDidReceiveRestoreRequest:(id)request;
- (void)messageCenterDidReceiveRestoreResponse:(id)response;
- (void)messageCenterDidReceiveRoutineRequest:(id)request;
- (void)messageCenterDidReceiveStartWorkoutAppError:(id)error;
- (void)messageCenterDidReceiveStartWorkoutAppRequest:(id)request;
- (void)messageCenterDidReceiveStartWorkoutAppResponse:(id)response;
- (void)messageCenterDidReceiveTinkerEndToEndCloudSyncError:(id)error;
- (void)messageCenterDidReceiveTinkerEndToEndCloudSyncRequest:(id)request;
- (void)messageCenterDidReceiveTinkerEndToEndCloudSyncResponse:(id)response;
- (void)messageCenterDidReceiveTinkerOptInError:(id)error;
- (void)messageCenterDidReceiveTinkerOptInRequest:(id)request;
- (void)messageCenterDidReceiveTinkerOptInResponse:(id)response;
- (void)messageCenterDidReceiveTinkerPairingError:(id)error;
- (void)messageCenterDidReceiveTinkerPairingRequest:(id)request;
- (void)messageCenterDidReceiveTinkerPairingResponse:(id)response;
- (void)nanoSyncStore:(id)store deviceNameDidChange:(id)change;
- (void)nanoSyncStore:(id)store remoteSystemBuildVersionDidChange:(id)change;
- (void)nanoSyncStore:(id)store restoreStateDidChange:(int64_t)change;
- (void)obliterateWithOptions:(unint64_t)options reason:(id)reason;
- (void)pairedSyncDidBeginForDevice:(id)device messagesSentHandler:(id)handler completion:(id)completion;
- (void)persistChildIdentityFromCodable:(uint64_t)codable;
- (void)profileDidBecomeReady:(id)ready;
- (void)requestAuthorizationForRequestRecord:(id)record requestSentHandler:(id)handler completion:(id)completion;
- (void)resetSyncWithCompletion:(id)completion;
- (void)samplesAdded:(id)added anchor:(id)anchor;
- (void)sendCompanionUserNotificationRequest:(id)request completion:(id)completion;
- (void)sendNotificationInstructionMessageRequest:(id)request completion:(id)completion;
- (void)sendStartWorkoutAppRequest:(id)request completion:(id)completion;
- (void)sendTinkerEndToEndCloudSyncRequestForNRDeviceUUID:(id)d completion:(id)completion;
- (void)sendTinkerSharingOptInRequest:(id)request forNRDeviceUUID:(id)d completion:(id)completion;
- (void)sendTinkerWatchPairingRequest:(id)request forNRDeviceUUID:(id)d completion:(id)completion;
- (void)syncHealthDataWithOptions:(unint64_t)options completion:(id)completion;
- (void)syncHealthDataWithOptions:(unint64_t)options reason:(id)reason accessibilityAssertion:(id)assertion completion:(id)completion;
- (void)syncSession:(id)session sendChanges:(id)changes completion:(id)completion;
- (void)unitTest_performWithActiveSyncStore:(id)store;
- (void)updatePairedDevicesWithCompletion:(id)completion;
- (void)waitForLastChanceSyncWithDevicePairingID:(id)d timeout:(double)timeout completion:(id)completion;
@end

@implementation HDNanoSyncManager

void __61__HDNanoSyncManager__queue_startPeriodicSyncTimerIfNecessary__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    dispatch_assert_queue_V2(WeakRetained[7]);
    v2 = [MEMORY[0x277CBEAA8] date];
    v3 = v4[18];
    v4[18] = v2;

    [(HDNanoSyncManager *)v4 _queue_syncImmediatelyWithReason:0 options:0 accessibilityAssertion:0 completion:?];
    WeakRetained = v4;
  }
}

- (void)_queue_updateSyncStores
{
  v63[1] = *MEMORY[0x277D85DE8];
  if (self)
  {
    if (*(self + 24))
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:sel__queue_updateSyncStores object:self file:@"HDNanoSyncManager.m" lineNumber:1504 description:{@"Invalid parameter not satisfying: %@", @"_waitingForFirstUnlock == NO"}];
    }

    dispatch_assert_queue_V2(*(self + 56));
    v2 = *(self + 120);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v4 = *(self + 120);
    *(self + 120) = dictionary;

    obj = [MEMORY[0x277CBEB18] array];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    nanoSyncDevices = [*(self + 72) nanoSyncDevices];
    v6 = [nanoSyncDevices countByEnumeratingWithState:&v53 objects:v59 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v54;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v54 != v8)
          {
            objc_enumerationMutation(nanoSyncDevices);
          }

          v10 = *(*(&v53 + 1) + 8 * i);
          if ([v10 isLocallyPaired])
          {
            [obj addObject:v10];
          }
        }

        v7 = [nanoSyncDevices countByEnumeratingWithState:&v53 objects:v59 count:16];
      }

      while (v7);
    }

    objc_storeStrong((self + 128), obj);
    array = [MEMORY[0x277CBEB18] array];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v45 = *(self + 128);
    v11 = [v45 countByEnumeratingWithState:&v49 objects:v58 count:16];
    if (v11)
    {
      v12 = v11;
      v47 = 0;
      v13 = *v50;
      do
      {
        for (j = 0; j != v12; ++j)
        {
          if (*v50 != v13)
          {
            objc_enumerationMutation(v45);
          }

          v15 = *(*(&v49 + 1) + 8 * j);
          hd_deviceIdentifier = [v15 hd_deviceIdentifier];
          v17 = [v2 objectForKeyedSubscript:hd_deviceIdentifier];
          isActive = [v17 isActive];
          if (isActive != [v15 isActive])
          {
            [v17 invalidate];
          }

          if (v17 && ![v17 isInvalidated] || (WeakRetained = objc_loadWeakRetained((self + 48)), +[HDNanoSyncStore nanoSyncStoreWithProfile:device:delegate:tinkerPaired:](HDNanoSyncStore, "nanoSyncStoreWithProfile:device:delegate:tinkerPaired:", WeakRetained, v15, self, 0), v20 = objc_claimAutoreleasedReturnValue(), v17, WeakRetained, (v17 = v20) != 0))
          {
            if ([v17 isActive])
            {
              v21 = v47 == 0;
            }

            else
            {
              v21 = 1;
            }

            if (!v21)
            {
              currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
              [currentHandler2 handleFailureInMethod:sel__queue_updateSyncStores object:self file:@"HDNanoSyncManager.m" lineNumber:1542 description:{@"Invalid parameter not satisfying: %@", @"![syncStore isActive] || (activeSyncStore == nil)"}];
            }

            if ([v17 isActive])
            {
              if (v47)
              {
                _HKInitializeLogging();
                v22 = *MEMORY[0x277CCC328];
                if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
                {
                  v23 = *(self + 128);
                  LODWORD(buf) = 138412290;
                  *(&buf + 4) = v23;
                  _os_log_error_impl(&dword_228986000, v22, OS_LOG_TYPE_ERROR, "multiple active sync stores for IDS devices: %@", &buf, 0xCu);
                }
              }

              else
              {
                v47 = v17;
              }
            }

            [*(self + 120) setObject:v17 forKeyedSubscript:hd_deviceIdentifier];
            deviceInfo = [v17 deviceInfo];
            [array addObject:deviceInfo];
          }
        }

        v12 = [v45 countByEnumeratingWithState:&v49 objects:v58 count:16];
      }

      while (v12);
    }

    else
    {
      v47 = 0;
    }

    v26 = *(self + 40);
    v27 = [objc_alloc(MEMORY[0x277CCD6B8]) initWithPairedDeviceInfos:array];
    objc_setProperty_atomic(self, v28, v27, 40);
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __44__HDNanoSyncManager__queue_updateSyncStores__block_invoke;
    v48[3] = &unk_278617508;
    v48[4] = self;
    [v2 enumerateKeysAndObjectsUsingBlock:v48];

    if (*(self + 96) != v47)
    {
      _HKInitializeLogging();
      v29 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v47;
        _os_log_impl(&dword_228986000, v29, OS_LOG_TYPE_DEFAULT, "got new active paired device %{public}@", &buf, 0xCu);
      }

      objc_storeStrong((self + 96), v47);
      if (v47)
      {
        dispatch_assert_queue_V2(*(self + 56));
        if (!*(self + 136) && [self enablePeriodicSyncTimer])
        {
          v30 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(self + 56));
          v31 = *(self + 136);
          *(self + 136) = v30;

          v32 = *(self + 136);
          v33 = dispatch_walltime(0, 0);
          dispatch_source_set_timer(v32, v33, 0x1A3185C5000uLL, 0x45D964B800uLL);
          objc_initWeak(&location, self);
          v34 = *(self + 136);
          *&buf = MEMORY[0x277D85DD0];
          *(&buf + 1) = 3221225472;
          v61 = __61__HDNanoSyncManager__queue_startPeriodicSyncTimerIfNecessary__block_invoke;
          v62 = &unk_278616F38;
          objc_copyWeak(v63, &location);
          dispatch_source_set_event_handler(v34, &buf);
          dispatch_resume(*(self + 136));
          objc_destroyWeak(v63);
          objc_destroyWeak(&location);
        }

        if (!CFPreferencesGetAppBooleanValue(@"SBIconVisibility", @"com.apple.Fitness", 0) || !CFPreferencesGetAppBooleanValue(@"SBIconVisibility", @"com.apple.Fitness.activity-widget", 0))
        {
          _HKInitializeLogging();
          v35 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_228986000, v35, OS_LOG_TYPE_DEFAULT, "Showing fitness app. Setting defaults and notifying Springboard.", &buf, 2u);
          }

          v36 = *MEMORY[0x277CBED28];
          v37 = *MEMORY[0x277CBF040];
          v38 = *MEMORY[0x277CBF010];
          CFPreferencesSetValue(@"SBIconVisibility", *MEMORY[0x277CBED28], @"com.apple.Fitness", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
          CFPreferencesSetValue(@"SBIconVisibility", v36, @"com.apple.Fitness.activity-widget", v37, v38);
          CFPreferencesSynchronize(@"com.apple.Fitness", v37, v38);
          CFPreferencesSynchronize(@"com.apple.Fitness.activity-widget", v37, v38);
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.springboard.appIconVisibilityPreferencesChanged", 0, 0, 1u);
        }

        [(HDNanoSyncManager *)self _queue_updateDeviceNameIfNecessaryWithSyncStore:v47];
      }

      else
      {
        dispatch_assert_queue_V2(*(self + 56));
        v40 = *(self + 136);
        if (v40)
        {
          dispatch_source_cancel(v40);
          v41 = *(self + 136);
          *(self + 136) = 0;
        }
      }

      [(HDNanoSyncManager *)self _queue_generateWatchActivationSamples];
    }

    if (!v26 || ([v27 isEqual:v26] & 1) == 0)
    {
      [(HDNanoSyncManager *)self _notifyObserversPairedDevicesChanged:v27];
    }
  }

  v42 = *MEMORY[0x277D85DE8];
}

void __44__HDNanoSyncManager__queue_updateSyncStores__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = [*(*(a1 + 32) + 120) objectForKeyedSubscript:a2];

  v6 = v7;
  if (v5 != v7)
  {
    [v7 invalidate];
    v6 = v7;
  }
}

- (id)_queue_eligibleInactiveSyncStores
{
  v20 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(*(self + 56));
  date = [MEMORY[0x277CBEAA8] date];
  v3 = [date dateByAddingTimeInterval:-604800.0];

  array = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  allValues = [*(self + 120) allValues];
  v6 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if (([v10 isActive] & 1) == 0)
        {
          if ([v10 isRestoreComplete])
          {
            lastInactiveDate = [v10 lastInactiveDate];
            v12 = [lastInactiveDate hk_isAfterDate:v3];

            if (v12)
            {
              [array addObject:v10];
            }
          }
        }
      }

      v7 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];

  return array;
}

- (void)_queue_setUpMessageCentersIfNecessary
{
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 56));
    v2 = atomic_load((self + 9));
    if ((v2 & 1) == 0)
    {
      WeakRetained = objc_loadWeakRetained((self + 48));
      if (WeakRetained && !*(self + 72))
      {
        v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.private.alloy.health.sync.db"];
        directoryURL = [WeakRetained directoryURL];
        v6 = [directoryURL URLByAppendingPathComponent:@"NanoSync" isDirectory:1];

        v7 = [v6 URLByAppendingPathComponent:v4 isDirectory:0];
        v8 = [HDIDSMessageCenter createPersistentDictionaryWithURL:v7];
        v9 = HKCreateSerialDispatchQueue();
        if (v8)
        {
          v31 = v9;
          v10 = [HDIDSMessageCenter alloc];
          v11 = objc_loadWeakRetained((self + 48));
          daemon = [v11 daemon];
          v13 = [(HDIDSMessageCenter *)v10 initWithIDSServiceIdentifier:@"com.apple.private.alloy.health.sync.classc" persistentDictionary:v8 queue:v31 daemon:daemon];
          v14 = *(self + 72);
          *(self + 72) = v13;

          v15 = *(self + 72);
          [v15 addRequestHandler:sel_messageCenterDidReceiveRestoreRequest_ forMessageID:1];
          [v15 addResponseHandler:sel_messageCenterDidReceiveRestoreResponse_ forMessageID:1];
          [v15 addErrorHandler:sel_messageCenterRestoreError_ forMessageID:1];
          v16 = objc_opt_class();
          [v15 mapPBRequest:v16 toResponse:objc_opt_class() messageID:1];
          [v15 addRequestHandler:sel_messageCenterDidReceiveChangesRequest_ forMessageID:2];
          [v15 addResponseHandler:sel_messageCenterDidReceiveChangesResponse_ forMessageID:2];
          [v15 addErrorHandler:sel_messageCenterChangesError_ forMessageID:2];
          v30 = v4;
          v17 = objc_opt_class();
          [v15 mapPBRequest:v17 toResponse:objc_opt_class() messageID:2];
          [v15 addResponseHandler:sel_messageCenterDidReceiveAuthorizationResponse_ forMessageID:3];
          [v15 addRequestHandler:sel_messageCenterDidReceiveAuthorizationRequest_ forMessageID:3];
          [v15 addErrorHandler:sel_messageCenterDidReceiveAuthorizationError_ forMessageID:3];
          v18 = objc_opt_class();
          [v15 mapPBRequest:v18 toResponse:objc_opt_class() messageID:3];
          [v15 addRequestHandler:sel_messageCenterDidReceiveAuthorizationCompleteRequest_ forMessageID:4];
          [v15 mapPBRequest:objc_opt_class() toResponse:0 messageID:4];
          [v15 addRequestHandler:sel_messageCenterDidReceiveRoutineRequest_ forMessageID:5];
          v19 = objc_opt_class();
          [v15 mapPBRequest:v19 toResponse:objc_opt_class() messageID:5];
          [v15 addRequestHandler:sel_messageCenterDidReceiveChangesRequest_ forMessageID:7];
          [v15 addErrorHandler:sel_messageCenterChangesError_ forMessageID:7];
          v20 = objc_opt_class();
          [v15 mapPBRequest:v20 toResponse:objc_opt_class() messageID:7];
          [v15 addRequestHandler:sel_messageCenterDidReceiveStartWorkoutAppRequest_ forMessageID:8];
          [v15 addResponseHandler:sel_messageCenterDidReceiveStartWorkoutAppResponse_ forMessageID:8];
          [v15 addErrorHandler:sel_messageCenterDidReceiveStartWorkoutAppError_ forMessageID:8];
          v21 = objc_opt_class();
          [v15 mapPBRequest:v21 toResponse:objc_opt_class() messageID:8];
          [v15 addRequestHandler:sel_messageCenterDidReceiveCompanionUserNotificationRequest_ forMessageID:9];
          [v15 addResponseHandler:sel_messageCenterDidReceiveCompanionUserNotificationResponse_ forMessageID:9];
          [v15 addErrorHandler:sel_messageCenterDidReceiveCompanionUserNotificationError_ forMessageID:9];
          v22 = objc_opt_class();
          [v15 mapPBRequest:v22 toResponse:objc_opt_class() messageID:9];

          v23 = *(self + 72);
          [v23 addRequestHandler:sel_messageCenterDidReceiveTinkerOptInRequest_ forMessageID:11];
          [v23 addResponseHandler:sel_messageCenterDidReceiveTinkerOptInResponse_ forMessageID:11];
          [v23 addErrorHandler:sel_messageCenterDidReceiveTinkerOptInError_ forMessageID:11];
          v24 = objc_opt_class();
          [v23 mapPBRequest:v24 toResponse:objc_opt_class() messageID:11];
          [v23 addRequestHandler:sel_messageCenterDidReceiveTinkerPairingRequest_ forMessageID:10];
          [v23 addResponseHandler:sel_messageCenterDidReceiveTinkerPairingResponse_ forMessageID:10];
          [v23 addErrorHandler:sel_messageCenterDidReceiveTinkerPairingError_ forMessageID:10];
          v25 = objc_opt_class();
          [v23 mapPBRequest:v25 toResponse:objc_opt_class() messageID:10];
          [v23 addRequestHandler:sel_messageCenterDidReceiveTinkerEndToEndCloudSyncRequest_ forMessageID:12];
          [v23 addResponseHandler:sel_messageCenterDidReceiveTinkerEndToEndCloudSyncResponse_ forMessageID:12];
          [v23 addErrorHandler:sel_messageCenterDidReceiveTinkerEndToEndCloudSyncError_ forMessageID:12];
          v26 = objc_opt_class();
          v27 = objc_opt_class();
          v28 = v26;
          v4 = v30;
          [v23 mapPBRequest:v28 toResponse:v27 messageID:12];
          [v23 addRequestHandler:sel_messageCenterDidReceiveNotificationInstructionRequest_ forMessageID:13];
          [v23 mapPBRequest:objc_opt_class() toResponse:0 messageID:13];

          v9 = v31;
          [*(self + 72) setDelegate:self];
          [*(self + 72) resume];
        }

        else
        {
          _HKInitializeLogging();
          v29 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_228986000, v29, OS_LOG_TYPE_ERROR, "failed to create persistent dictionary", buf, 2u);
          }
        }
      }
    }
  }
}

- (void)_queue_generateWatchActivationSamples
{
  v40 = *MEMORY[0x277D85DE8];
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 56));
    if (*(self + 8))
    {
      dispatch_assert_queue_V2(*(self + 56));
      v2 = *(self + 88);
      if (!v2)
      {
        v3 = [HDKeyValueDomain alloc];
        WeakRetained = objc_loadWeakRetained((self + 48));
        v5 = [(HDKeyValueDomain *)v3 initWithCategory:0 domainName:@"NanoSync" profile:WeakRetained];
        v6 = *(self + 88);
        *(self + 88) = v5;

        v2 = *(self + 88);
      }

      v7 = v2;
      v34 = 0;
      v8 = [v7 numberForKey:@"WatchSwitchIndex" error:&v34];
      v9 = v34;
      v10 = v9;
      if (v8 || !v9)
      {
        v12 = objc_loadWeakRetained((self + 48));
        daemon = [v12 daemon];
        nanoPairedDeviceRegistry = [daemon nanoPairedDeviceRegistry];

        unsignedIntValue = [v8 unsignedIntValue];
        switchIndex = [nanoPairedDeviceRegistry switchIndex];
        if (unsignedIntValue > switchIndex)
        {
          _HKInitializeLogging();
          v17 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf) = 67109376;
            DWORD1(buf) = unsignedIntValue;
            WORD4(buf) = 1024;
            *(&buf + 10) = switchIndex;
            _os_log_error_impl(&dword_228986000, v17, OS_LOG_TYPE_ERROR, "current switch index %u is greater than %u", &buf, 0xEu);
          }
        }

        if (unsignedIntValue >= switchIndex)
        {
          v22 = v10;
        }

        else
        {
          watchActivationType = [MEMORY[0x277CCD0C0] watchActivationType];
          dictionary = [MEMORY[0x277CBEB38] dictionary];
          *&buf = 0;
          *(&buf + 1) = &buf;
          v38 = 0x2020000000;
          v39 = unsignedIntValue;
          v29[0] = MEMORY[0x277D85DD0];
          v29[1] = 3221225472;
          v29[2] = __58__HDNanoSyncManager__queue_generateWatchActivationSamples__block_invoke;
          v29[3] = &unk_2786175D0;
          v33 = unsignedIntValue;
          v20 = watchActivationType;
          v30 = v20;
          v21 = dictionary;
          v31 = v21;
          p_buf = &buf;
          [nanoPairedDeviceRegistry getSwitchEventsFromIndex:unsignedIntValue inlineCallback:v29];
          v28[0] = MEMORY[0x277D85DD0];
          v28[1] = 3221225472;
          v28[2] = __58__HDNanoSyncManager__queue_generateWatchActivationSamples__block_invoke_552;
          v28[3] = &unk_2786175F8;
          v28[4] = self;
          [v21 enumerateKeysAndObjectsUsingBlock:v28];
          if (*(*(&buf + 1) + 24) == unsignedIntValue)
          {
            v22 = v10;
          }

          else
          {
            v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
            v27 = v10;
            v24 = [v7 setNumber:v23 forKey:@"WatchSwitchIndex" error:&v27];
            v22 = v27;

            if ((v24 & 1) == 0)
            {
              _HKInitializeLogging();
              v25 = *MEMORY[0x277CCC328];
              if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
              {
                *v35 = 138543362;
                v36 = v22;
                _os_log_error_impl(&dword_228986000, v25, OS_LOG_TYPE_ERROR, "failed to set switch index: %{public}@", v35, 0xCu);
              }
            }
          }

          _Block_object_dispose(&buf, 8);
        }

        v10 = v22;
      }

      else
      {
        _HKInitializeLogging();
        v11 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v10;
          _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, "failed to get switch index: %{public}@", &buf, 0xCu);
        }
      }
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (HDNanoSyncManager)initWithProfile:(id)profile isMaster:(BOOL)master
{
  profileCopy = profile;
  v26.receiver = self;
  v26.super_class = HDNanoSyncManager;
  v7 = [(HDNanoSyncManager *)&v26 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_profile, profileCopy);
    v9 = HKCreateSerialDispatchQueue();
    queue = v8->_queue;
    v8->_queue = v9;

    v11 = HKCreateSerialDispatchQueue();
    syncQueue = v8->_syncQueue;
    v8->_syncQueue = v11;

    v8->_isMaster = master;
    v8->_waitingForFirstUnlock = 1;
    atomic_store(0, &v8->_invalidated);
    v13 = objc_alloc(MEMORY[0x277CCD738]);
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = [v13 initWithName:v15 loggingCategory:*MEMORY[0x277CCC328]];
    observers = v8->_observers;
    v8->_observers = v16;

    v18 = [[HDPairedSyncManager alloc] initWithProfile:profileCopy queue:v8->_queue];
    pairedSyncManager = v8->_pairedSyncManager;
    v8->_pairedSyncManager = v18;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    syncStoresByDeviceIdentifier = v8->_syncStoresByDeviceIdentifier;
    v8->_syncStoresByDeviceIdentifier = dictionary;

    v8->_restoreTimeout = 60.0;
    v8->_enablePeriodicSyncTimer = 1;
    userContext = [MEMORY[0x277CFE318] userContext];
    context = v8->_context;
    v8->_context = userContext;

    mEMORY[0x277D10AF8] = [MEMORY[0x277D10AF8] sharedDiagnosticManager];
    [mEMORY[0x277D10AF8] addObject:v8];

    [profileCopy registerProfileReadyObserver:v8 queue:0];
  }

  return v8;
}

- (void)invalidateAndWait
{
  dispatch_assert_queue_not_V2(self->_queue);
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__HDNanoSyncManager_invalidateAndWait__block_invoke;
  block[3] = &unk_278613990;
  block[4] = self;
  block[5] = &v7;
  dispatch_sync(queue, block);
  if ((v8[3] & 1) == 0)
  {
    [(HDIDSMessageCenter *)self->_messageCenter invalidate];
    v4 = self->_queue;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __38__HDNanoSyncManager_invalidateAndWait__block_invoke_2;
    v5[3] = &unk_278613968;
    v5[4] = self;
    dispatch_sync(v4, v5);
  }

  _Block_object_dispose(&v7, 8);
}

- (void)_invalidate
{
  v20 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v2 = *(self + 136);
    if (v2)
    {
      dispatch_source_cancel(v2);
      v3 = *(self + 136);
      *(self + 136) = 0;
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self name:@"HDUserCharacteristicsShouldSyncNotification" object:0];
    [defaultCenter removeObserver:self name:@"HDHealthStoreServerUserPreferencesDidChangeNotification" object:0];
    WeakRetained = objc_loadWeakRetained((self + 48));
    dataManager = [WeakRetained dataManager];

    calorieGoal = [MEMORY[0x277CCD720] calorieGoal];
    [dataManager removeObserver:self forDataType:calorieGoal];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 removeObserver:self name:*MEMORY[0x277D2BC88] object:0];
    [defaultCenter2 removeObserver:self name:*MEMORY[0x277D2BC78] object:0];
    [defaultCenter2 removeObserver:self name:*MEMORY[0x277D2BC48] object:0];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    allValues = [*(self + 120) allValues];
    v10 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        v13 = 0;
        do
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(allValues);
          }

          [*(*(&v15 + 1) + 8 * v13++) invalidate];
        }

        while (v11 != v13);
        v11 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)obliterateWithOptions:(unint64_t)options reason:(id)reason
{
  optionsCopy = options;
  reasonCopy = reason;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__HDNanoSyncManager_obliterateWithOptions_reason___block_invoke;
  block[3] = &unk_278617358;
  v11 = optionsCopy & 1;
  block[4] = self;
  v10 = reasonCopy;
  v12 = (optionsCopy & 2) != 0;
  v8 = reasonCopy;
  dispatch_sync(queue, block);
}

uint64_t __50__HDNanoSyncManager_obliterateWithOptions_reason___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(v2 + 8) == 1 && *(a1 + 48) == 1)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = [*(v2 + 120) allValues];
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        v7 = 0;
        do
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v10 + 1) + 8 * v7++) prepareForObliteration];
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }

    v2 = *(a1 + 32);
  }

  result = [*(v2 + 72) obliterateWithReason:*(a1 + 40) preserveCopy:*(a1 + 49)];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)initializeMessageCenterIfNeeded
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HDNanoSyncManager_initializeMessageCenterIfNeeded__block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)dealloc
{
  if ((atomic_exchange(&self->_invalidated, 1u) & 1) == 0)
  {
    [(HDIDSMessageCenter *)self->_messageCenter invalidate];
    [(HDNanoSyncManager *)self _invalidate];
  }

  v3.receiver = self;
  v3.super_class = HDNanoSyncManager;
  [(HDNanoSyncManager *)&v3 dealloc];
}

- (void)profileDidBecomeReady:(id)ready
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__HDNanoSyncManager_profileDidBecomeReady___block_invoke;
  v7[3] = &unk_278613968;
  v7[4] = self;
  [database performWhenDataProtectedByFirstUnlockIsAvailableOnQueue:queue block:v7];
}

void __43__HDNanoSyncManager_profileDidBecomeReady___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = MEMORY[0x277CCC328];
  v3 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_228986000, v3, OS_LOG_TYPE_DEBUG, "data protected by first unlock available", buf, 2u);
  }

  v4 = *(a1 + 32);
  v9 = 0;
  v5 = [(HDNanoSyncManager *)v4 _queue_finishInitializationAfterFirstUnlockIfNecessaryWithError:?];
  v6 = v9;
  if ((v5 & 1) == 0)
  {
    _HKInitializeLogging();
    v7 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v11 = v6;
      _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "failed to initialize NanoSync after first unlock: %{public}@", buf, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_queue_finishInitializationAfterFirstUnlockIfNecessaryWithError:(uint64_t)error
{
  if (!error)
  {
    return 0;
  }

  dispatch_assert_queue_V2(*(error + 56));
  if (!*(error + 24))
  {
    return 1;
  }

  v4 = atomic_load((error + 9));
  if (v4)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a2 code:100 format:{@"%@ invalidated", objc_opt_class()}];
    return 0;
  }

  WeakRetained = objc_loadWeakRetained((error + 48));
  daemon = [WeakRetained daemon];

  contentProtectionManager = [daemon contentProtectionManager];
  deviceUnlockedSinceBoot = [contentProtectionManager deviceUnlockedSinceBoot];

  if (deviceUnlockedSinceBoot)
  {
    if (*(error + 8) == 1)
    {
      v9 = objc_loadWeakRetained((error + 48));
      database = [v9 database];
      [database addProtectedDataObserver:error queue:*(error + 56)];
    }

    *(error + 24) = 0;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v12 = objc_loadWeakRetained((error + 48));
    daemon2 = [v12 daemon];
    nanoPairedDeviceRegistry = [daemon2 nanoPairedDeviceRegistry];

    [defaultCenter addObserver:error selector:sel__deviceDidPair_ name:*MEMORY[0x277D2BC88] object:nanoPairedDeviceRegistry];
    [defaultCenter addObserver:error selector:sel__deviceDidUnpair_ name:*MEMORY[0x277D2BC78] object:nanoPairedDeviceRegistry];
    [defaultCenter addObserver:error selector:sel__deviceDidBecomeActive_ name:*MEMORY[0x277D2BC48] object:nanoPairedDeviceRegistry];
    v15 = objc_loadWeakRetained((error + 48));
    daemon3 = [v15 daemon];
    processStateManager = [daemon3 processStateManager];
    [processStateManager registerForegroundClientProcessObserver:error];

    [(HDNanoSyncManager *)error _queue_setUpMessageCentersIfNecessary];
    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:error selector:sel__userCharacteristicsDidChange_ name:@"HDUserCharacteristicsShouldSyncNotification" object:0];
    [defaultCenter2 addObserver:error selector:sel__userPreferencesDidChange_ name:@"HDHealthStoreServerUserPreferencesDidChangeNotification" object:0];
    [defaultCenter2 addObserver:error selector:sel__workoutSamplesWereAssociated_ name:@"HDHealthStoreServerDidAssociateWorkoutSamples" object:0];
    v19 = objc_loadWeakRetained((error + 48));
    dataManager = [v19 dataManager];

    calorieGoal = [MEMORY[0x277CCD720] calorieGoal];
    [dataManager addObserver:error forDataType:calorieGoal];

    v22 = *(error + 96);
    *(error + 96) = 0;

    [(HDNanoSyncManager *)error _queue_updateSyncStores];
  }

  else
  {
    nanoPairedDeviceRegistry = [MEMORY[0x277CCA9B8] hk_databaseInaccessibleBeforeFirstUnlockError];
    if (nanoPairedDeviceRegistry)
    {
      if (a2)
      {
        v23 = nanoPairedDeviceRegistry;
        *a2 = nanoPairedDeviceRegistry;
      }

      else
      {
        _HKLogDroppedError();
      }

      defaultCenter = nanoPairedDeviceRegistry;
    }

    else
    {
      defaultCenter = 0;
    }
  }

  return deviceUnlockedSinceBoot;
}

- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available
{
  dispatch_assert_queue_V2(self->_queue);
  if ([(HDNanoSyncStore *)self->_activeSyncStore needsSyncOnUnlock])
  {
    [(HDNanoSyncStore *)self->_activeSyncStore setNeedsSyncOnUnlock:0];

    [(HDNanoSyncManager *)self _queue_syncImmediatelyWithReason:1 options:0 accessibilityAssertion:&__block_literal_global_34 completion:?];
  }
}

void __62__HDNanoSyncManager_database_protectedDataDidBecomeAvailable___block_invoke(uint64_t a1, char a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if ((a2 & 1) == 0 && ([v4 hk_isDatabaseAccessibilityError] & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v8 = 138543362;
      v9 = v5;
      _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "post-unlock sync failed: %{public}@", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_queue_syncImmediatelyWithReason:(uint64_t)reason options:(void *)options accessibilityAssertion:(void *)assertion completion:
{
  v82 = *MEMORY[0x277D85DE8];
  v9 = a2;
  optionsCopy = options;
  assertionCopy = assertion;
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 56));
    v67 = 0;
    v12 = [(HDNanoSyncManager *)self _queue_finishInitializationAfterFirstUnlockIfNecessaryWithError:?];
    v13 = v67;
    _HKInitializeLogging();
    v14 = *MEMORY[0x277CCC328];
    v15 = *MEMORY[0x277CCC328];
    if (v12)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v48 = v14;
        v49 = _StringFromSyncOptions(reason);
        *buf = 138412546;
        v79 = v9;
        v80 = 2112;
        v81 = v49;
        _os_log_debug_impl(&dword_228986000, v48, OS_LOG_TYPE_DEBUG, "syncing immediately with reason %@ options:'%@'", buf, 0x16u);
      }

      v16 = [HDKeyValueDomain alloc];
      selfCopy = self;
      WeakRetained = objc_loadWeakRetained((self + 48));
      v18 = [(HDKeyValueDomain *)v16 initWithCategory:0 domainName:@"CloudSync" profile:WeakRetained];

      v19 = *MEMORY[0x277CCE388];
      v73 = 0;
      v60 = v19;
      v61 = v18;
      v20 = [HDKeyValueDomain numberForKey:v18 error:"numberForKey:error:"];
      v21 = v73;
      v22 = v21;
      if (v20 || !v21)
      {
        if (([v20 BOOLValue] & 1) == 0)
        {
          v52 = v20;
          reasonCopy = reason;
          v54 = v13;
          v55 = assertionCopy;
          v56 = optionsCopy;
          v57 = v9;
          v24 = objc_loadWeakRetained((selfCopy + 48));
          daemon = [v24 daemon];
          nanoPairedDeviceRegistry = [daemon nanoPairedDeviceRegistry];

          v51 = nanoPairedDeviceRegistry;
          getPairedDevices = [nanoPairedDeviceRegistry getPairedDevices];
          v69 = 0u;
          v70 = 0u;
          v71 = 0u;
          v72 = 0u;
          v28 = getPairedDevices;
          v29 = [v28 countByEnumeratingWithState:&v69 objects:buf count:16];
          if (v29)
          {
            v31 = v29;
            v32 = *v70;
            v33 = @"21R0";
            *&v30 = 138543618;
            v50 = v30;
            v59 = v28;
            while (2)
            {
              for (i = 0; i != v31; ++i)
              {
                if (*v70 != v32)
                {
                  objc_enumerationMutation(v28);
                }

                v35 = *(*(&v69 + 1) + 8 * i);
                hd_productType = [v35 hd_productType];
                v37 = [hd_productType hasPrefix:@"Watch"];

                if (v37)
                {
                  hd_systemBuildVersion = [v35 hd_systemBuildVersion];
                  if ([hd_systemBuildVersion hk_compareBuildVersionWithString:v33] == -1)
                  {
                    v40 = v33;
                    v41 = [objc_alloc(MEMORY[0x277CCABB0]) initWithBool:1];
                    v68 = v22;
                    v42 = [(HDKeyValueDomain *)v61 setNumber:v41 forKey:v60 error:&v68];
                    v39 = v68;

                    if (v42)
                    {

                      v22 = v39;
                      v28 = v59;
                      goto LABEL_33;
                    }

                    _HKInitializeLogging();
                    v43 = *MEMORY[0x277CCC328];
                    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
                    {
                      *v74 = v50;
                      v75 = selfCopy;
                      v76 = 2114;
                      v77 = v39;
                      _os_log_error_impl(&dword_228986000, v43, OS_LOG_TYPE_ERROR, "%{public}@: Failed to set flag for old watch paired to Dawn+ phone %{public}@.", v74, 0x16u);
                    }

                    v33 = v40;
                    v28 = v59;
                  }

                  else
                  {
                    v39 = v22;
                  }

                  v22 = v39;
                }
              }

              v31 = [v28 countByEnumeratingWithState:&v69 objects:buf count:16];
              if (v31)
              {
                continue;
              }

              break;
            }
          }

LABEL_33:

          optionsCopy = v56;
          v9 = v57;
          v13 = v54;
          assertionCopy = v55;
          v20 = v52;
          reason = reasonCopy;
        }
      }

      else
      {
        _HKInitializeLogging();
        v23 = *MEMORY[0x277CCC2A0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v79 = selfCopy;
          v80 = 2114;
          v81 = v22;
          _os_log_impl(&dword_228986000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@: Could not read key for whether device was ever paired to old watch %{public}@.", buf, 0x16u);
        }
      }

      Current = CFAbsoluteTimeGetCurrent();
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __96__HDNanoSyncManager__queue_syncImmediatelyWithReason_options_accessibilityAssertion_completion___block_invoke;
      aBlock[3] = &unk_2786177A8;
      v65 = Current;
      aBlock[4] = selfCopy;
      v45 = v9;
      v63 = v45;
      reasonCopy2 = reason;
      v64 = assertionCopy;
      v46 = _Block_copy(aBlock);
      [(HDNanoSyncManager *)selfCopy _queue_synchronizeWithOptions:reason restoreMessagesSentHandler:0 targetSyncStore:*(selfCopy + 96) reason:v45 accessibilityAssertion:optionsCopy completion:v46];
    }

    else
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v79 = v9;
        v80 = 2114;
        v81 = v13;
        _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_DEFAULT, "failed to sync immediately for reason %{public}@: %{public}@", buf, 0x16u);
      }

      if (assertionCopy)
      {
        if (!v13)
        {
          v13 = [MEMORY[0x277CCA9B8] hk_error:122 format:@"Sync failed without reporting an error."];
        }

        (*(assertionCopy + 2))(assertionCopy, 0, v13);
      }
    }
  }

  v47 = *MEMORY[0x277D85DE8];
}

- (void)pairedSyncDidBeginForDevice:(id)device messagesSentHandler:(id)handler completion:(id)completion
{
  deviceCopy = device;
  handlerCopy = handler;
  completionCopy = completion;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __80__HDNanoSyncManager_pairedSyncDidBeginForDevice_messagesSentHandler_completion___block_invoke;
  v15[3] = &unk_2786173A0;
  v15[4] = self;
  v16 = deviceCopy;
  v17 = handlerCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = handlerCopy;
  v14 = deviceCopy;
  dispatch_async(queue, v15);
}

void __80__HDNanoSyncManager_pairedSyncDidBeginForDevice_messagesSentHandler_completion___block_invoke(void *a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v29 = 0;
  v3 = [(HDNanoSyncManager *)v2 _queue_finishInitializationAfterFirstUnlockIfNecessaryWithError:?];
  v4 = v29;
  if (v3)
  {
    v6 = a1[4];
    v5 = a1[5];
    v7 = a1[6];
    v8 = a1[7];
    v9 = v5;
    v10 = v7;
    v11 = v8;
    if (v6)
    {
      dispatch_assert_queue_V2(*(v6 + 56));
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __87__HDNanoSyncManager__queue_pairedSyncDidBeginForDevice_messagesSentHandler_completion___block_invoke;
      aBlock[3] = &unk_2786130D8;
      v31 = v11;
      v11 = _Block_copy(aBlock);
      if (v9)
      {
        [(HDNanoSyncManager *)v6 _queue_updateSyncStores];
        v28 = v9;
        v12 = [v9 hd_pairingID];
        dispatch_assert_queue_V2(*(v6 + 56));
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v13 = [*(v6 + 120) allValues];
        v14 = [v13 countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v14)
        {
          v26 = v10;
          v27 = v4;
          v15 = *v33;
          while (2)
          {
            for (i = 0; i != v14; i = i + 1)
            {
              if (*v33 != v15)
              {
                objc_enumerationMutation(v13);
              }

              v17 = *(*(&v32 + 1) + 8 * i);
              v18 = [v17 nanoRegistryUUID];
              v19 = [v18 isEqual:v12];

              if (v19)
              {
                v14 = v17;
                goto LABEL_16;
              }
            }

            v14 = [v13 countByEnumeratingWithState:&v32 objects:v36 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }

LABEL_16:
          v10 = v26;
          v4 = v27;
        }

        if (v14)
        {
          v36[0] = MEMORY[0x277D85DD0];
          v36[1] = 3221225472;
          v36[2] = __87__HDNanoSyncManager__queue_pairedSyncDidBeginForDevice_messagesSentHandler_completion___block_invoke_2;
          v36[3] = &unk_278613150;
          v9 = v28;
          v37 = v28;
          v21 = v14;
          v38 = v21;
          v39 = v11;
          [(HDNanoSyncManager *)v6 _queue_synchronizeWithOptions:v10 restoreMessagesSentHandler:v21 targetSyncStore:@"PairedSync session began" reason:0 accessibilityAssertion:v36 completion:?];

          v22 = v37;
        }

        else
        {
          v23 = MEMORY[0x277CCA9B8];
          v9 = v28;
          v22 = [v28 hd_shortDescription];
          v24 = [v23 hk_error:100 format:{@"failed to find sync store for device %@", v22}];
          (*(v11 + 2))(v11, 0, v24);
        }
      }

      else
      {
        v14 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"no device specified"];
        (*(v11 + 2))(v11, 0, v14);
      }
    }
  }

  else
  {
    v20 = a1[7];
    if (v20)
    {
      (*(v20 + 16))(v20, 0, v4);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)syncHealthDataWithOptions:(unint64_t)options completion:(id)completion
{
  completionCopy = completion;
  v8 = NSStringFromSelector(a2);
  [(HDNanoSyncManager *)self syncHealthDataWithOptions:options reason:v8 completion:completionCopy];
}

- (void)syncHealthDataWithOptions:(unint64_t)options reason:(id)reason accessibilityAssertion:(id)assertion completion:(id)completion
{
  v40 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  completionCopy = completion;
  if (assertion)
  {
    assertionCopy = assertion;
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    database = [WeakRetained database];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v35 = 0;
    assertion = [database cloneAccessibilityAssertion:assertionCopy ownerIdentifier:v16 error:&v35];

    v17 = v35;
    if (!assertion)
    {
      _HKInitializeLogging();
      v18 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy = self;
        v38 = 2114;
        v39 = v17;
        _os_log_error_impl(&dword_228986000, v18, OS_LOG_TYPE_ERROR, "%{public}@: Unable to clone assertion error: %{public}@", buf, 0x16u);
      }
    }
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __88__HDNanoSyncManager_syncHealthDataWithOptions_reason_accessibilityAssertion_completion___block_invoke;
  aBlock[3] = &unk_2786173C8;
  assertionCopy2 = assertion;
  v33 = assertionCopy2;
  v34 = completionCopy;
  v20 = completionCopy;
  v21 = _Block_copy(aBlock);
  queue = self->_queue;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __88__HDNanoSyncManager_syncHealthDataWithOptions_reason_accessibilityAssertion_completion___block_invoke_2;
  v27[3] = &unk_2786173F0;
  v27[4] = self;
  v28 = reasonCopy;
  v30 = v21;
  optionsCopy = options;
  v29 = assertionCopy2;
  v23 = v21;
  v24 = assertionCopy2;
  v25 = reasonCopy;
  dispatch_async(queue, v27);

  v26 = *MEMORY[0x277D85DE8];
}

void __88__HDNanoSyncManager_syncHealthDataWithOptions_reason_accessibilityAssertion_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  [*(a1 + 32) invalidate];
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, a2, v6);
  }
}

void __88__HDNanoSyncManager_syncHealthDataWithOptions_reason_accessibilityAssertion_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5 = 0;
  v3 = [(HDNanoSyncManager *)v2 _queue_finishInitializationAfterFirstUnlockIfNecessaryWithError:?];
  v4 = v5;
  if (v3)
  {
    [(HDNanoSyncManager *)*(a1 + 32) _queue_syncImmediatelyWithReason:*(a1 + 64) options:*(a1 + 48) accessibilityAssertion:*(a1 + 56) completion:?];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

- (void)waitForLastChanceSyncWithDevicePairingID:(id)d timeout:(double)timeout completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __81__HDNanoSyncManager_waitForLastChanceSyncWithDevicePairingID_timeout_completion___block_invoke;
  v13[3] = &unk_278617418;
  v13[4] = self;
  v14 = dCopy;
  timeoutCopy = timeout;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = dCopy;
  dispatch_async(queue, v13);
}

void __81__HDNanoSyncManager_waitForLastChanceSyncWithDevicePairingID_timeout_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v24 = 0;
  v3 = [(HDNanoSyncManager *)v2 _queue_finishInitializationAfterFirstUnlockIfNecessaryWithError:?];
  v4 = v24;
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 56);
    v7 = *(a1 + 48);
    v8 = *(a1 + 40);
    v9 = v7;
    if (v5)
    {
      dispatch_assert_queue_V2(*(v5 + 56));
      if (v9)
      {
        if (v8)
        {
          v10 = *(v5 + 96);
          if (v10 && ([v10 nanoRegistryUUID], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v8, "isEqual:", v11), v11, (v12 & 1) != 0))
          {
            objc_initWeak(&location, *(v5 + 96));
            v13 = *(v5 + 56);
            v14 = *(v5 + 96);
            v25[0] = MEMORY[0x277D85DD0];
            v25[1] = 3221225472;
            v25[2] = __82__HDNanoSyncManager__queue_waitForLastChanceSyncWithPairingID_timeout_completion___block_invoke;
            v25[3] = &unk_2786177F8;
            v15 = v13;
            v26 = v15;
            objc_copyWeak(&v27, &location);
            [v14 addIncomingSyncObserverWithTimeout:v25 timeoutHandler:v9 completion:v6];
            v16 = [[HDNanoSyncSession alloc] initWithSyncStore:*(v5 + 96) options:3 reason:@"Last chance sync request" delegate:v5 completion:&__block_literal_global_771];
            [(HDNanoSyncManager *)v5 _sendFinalStatusMessageForSyncSession:v16 didFinishSuccessfully:1 error:0];

            objc_destroyWeak(&v27);
            objc_destroyWeak(&location);
          }

          else
          {
            v18 = MEMORY[0x277CCA9B8];
            v19 = objc_opt_class();
            v20 = [v8 UUIDString];
            v21 = [v18 hk_errorForInvalidArgument:@"@" class:v19 selector:sel__queue_waitForLastChanceSyncWithPairingID_timeout_completion_ format:{@"Device with pairing ID %@ is not active", v20}];
            v9[2](v9, 0, v21);
          }
        }

        else
        {
          v22 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:sel__queue_waitForLastChanceSyncWithPairingID_timeout_completion_ format:@"pairingID cannot be nil"];
          v9[2](v9, 0, v22);
        }
      }

      else
      {
        v23 = [MEMORY[0x277CCA890] currentHandler];
        [v23 handleFailureInMethod:sel__queue_waitForLastChanceSyncWithPairingID_timeout_completion_ object:v5 file:@"HDNanoSyncManager.m" lineNumber:3129 description:{@"Invalid parameter not satisfying: %@", @"completion != NULL"}];
      }
    }
  }

  else
  {
    v17 = *(a1 + 48);
    if (v17)
    {
      (*(v17 + 16))(v17, 0, v4);
    }
  }
}

- (void)resetSyncWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__HDNanoSyncManager_resetSyncWithCompletion___block_invoke;
  v7[3] = &unk_278614E28;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

void __45__HDNanoSyncManager_resetSyncWithCompletion___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v16 = 0;
  v3 = [(HDNanoSyncManager *)v2 _queue_finishInitializationAfterFirstUnlockIfNecessaryWithError:?];
  v4 = v16;
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    if (v5)
    {
      dispatch_assert_queue_V2(*(v5 + 56));
      if (*(v5 + 24))
      {
        v15 = [MEMORY[0x277CCA890] currentHandler];
        [v15 handleFailureInMethod:sel__queue_resetSyncWithCompletion_ object:v5 file:@"HDNanoSyncManager.m" lineNumber:1793 description:{@"Invalid parameter not satisfying: %@", @"_waitingForFirstUnlock == NO"}];
      }

      v7 = *(v5 + 96);
      if (v7)
      {
        if ([v7 restoreState] != 1)
        {
          v8 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Restore cancelled by reset"];
          [(HDNanoSyncManager *)v5 _queue_transitionToRestoreIncompleteWithSyncStore:v8 error:?];
        }

        WeakRetained = objc_loadWeakRetained((v5 + 48));
        v10 = [WeakRetained syncEngine];
        [v10 resetStore:*(v5 + 96)];

        _HKInitializeLogging();
        v11 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
        {
          v12 = *(v5 + 96);
          *buf = 138543362;
          v18 = v12;
          _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_DEFAULT, "resetting sync store %{public}@", buf, 0xCu);
        }
      }

      if (v6)
      {
        v6[2](v6, 1, 0);
      }
    }
  }

  else
  {
    v13 = *(a1 + 40);
    if (v13)
    {
      (*(v13 + 16))(v13, 0, v4);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)updatePairedDevicesWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__HDNanoSyncManager_updatePairedDevicesWithCompletion___block_invoke;
  v7[3] = &unk_278614E28;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

void __55__HDNanoSyncManager_updatePairedDevicesWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = 0;
  v3 = [(HDNanoSyncManager *)v2 _queue_finishInitializationAfterFirstUnlockIfNecessaryWithError:?];
  v4 = v6;
  if (v3)
  {
    [(HDNanoSyncManager *)*(a1 + 32) _queue_updateSyncStoresWithCompletion:?];
  }

  else
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      (*(v5 + 16))(v5, 0, v4);
    }
  }
}

- (void)_queue_updateSyncStoresWithCompletion:(uint64_t)completion
{
  v3 = a2;
  if (completion)
  {
    v4 = v3;
    dispatch_assert_queue_V2(*(completion + 56));
    [(HDNanoSyncManager *)completion _queue_updateSyncStores];
    v3 = v4;
    if (v4)
    {
      (*(v4 + 2))(v4, *(completion + 40), 0);
      v3 = v4;
    }
  }
}

- (void)unitTest_performWithActiveSyncStore:(id)store
{
  storeCopy = store;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__HDNanoSyncManager_unitTest_performWithActiveSyncStore___block_invoke;
  v7[3] = &unk_278614008;
  v7[4] = self;
  v8 = storeCopy;
  v6 = storeCopy;
  dispatch_async(queue, v7);
}

- (void)requestAuthorizationForRequestRecord:(id)record requestSentHandler:(id)handler completion:(id)completion
{
  recordCopy = record;
  handlerCopy = handler;
  completionCopy = completion;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __88__HDNanoSyncManager_requestAuthorizationForRequestRecord_requestSentHandler_completion___block_invoke;
  v15[3] = &unk_2786173A0;
  v15[4] = self;
  v16 = recordCopy;
  v17 = handlerCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = handlerCopy;
  v14 = recordCopy;
  dispatch_async(queue, v15);
}

void __88__HDNanoSyncManager_requestAuthorizationForRequestRecord_requestSentHandler_completion___block_invoke(void *a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v27 = 0;
  v3 = [(HDNanoSyncManager *)v2 _queue_finishInitializationAfterFirstUnlockIfNecessaryWithError:?];
  v4 = v27;
  if (v3)
  {
    v6 = a1[4];
    v5 = a1[5];
    v7 = *(v6 + 96);
    v8 = a1[6];
    v9 = a1[7];
    v10 = v5;
    v11 = v7;
    v12 = v8;
    v13 = v9;
    dispatch_assert_queue_V2(*(v6 + 56));
    _HKInitializeLogging();
    v14 = HKLogAuthorization();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);

    if (v15)
    {
      v16 = HKLogAuthorization();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_228986000, v16, OS_LOG_TYPE_DEBUG, "Requesting authorization from companion.", buf, 2u);
      }
    }

    v17 = [v11 createRequestWithMessageID:3];
    v18 = [HDCodableAuthorizationRequestMessage codableAuthorizationRequestWithRecord:v10];
    [v17 setPbRequest:v18];

    v28 = @"auth-identifier";
    v19 = [v10 sessionIdentifier];
    *buf = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v28 count:1];
    [v17 setPersistentUserInfo:v20];

    [(HDNanoSyncManager *)v6 _queue_sendRequest:v17 syncStore:v11];
    v21 = objc_alloc_init(HDRemoteAuthorizationRequestContext);
    v22 = v21;
    if (v21)
    {
      objc_storeStrong(&v21->_requestRecord, v5);
      objc_setProperty_nonatomic_copy(v22, v23, v12, 16);
      objc_setProperty_nonatomic_copy(v22, v24, v13, 24);
    }

    v25 = [v10 sessionIdentifier];
    [v11 addPendingRequestContext:v22 forUUID:v25];
  }

  else
  {
    (*(a1[7] + 16))();
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)sendStartWorkoutAppRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__HDNanoSyncManager_sendStartWorkoutAppRequest_completion___block_invoke;
  block[3] = &unk_278616D18;
  v12 = requestCopy;
  v13 = completionCopy;
  block[4] = self;
  v9 = requestCopy;
  v10 = completionCopy;
  dispatch_async(queue, block);
}

void __59__HDNanoSyncManager_sendStartWorkoutAppRequest_completion___block_invoke(void *a1)
{
  v28[1] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v26 = 0;
  v3 = [(HDNanoSyncManager *)v2 _queue_finishInitializationAfterFirstUnlockIfNecessaryWithError:?];
  v4 = v26;
  if (v3)
  {
    v5 = a1[4];
    v6 = *(v5 + 96);
    if (v6)
    {
      v8 = a1[5];
      v7 = a1[6];
      v9 = v8;
      v10 = v6;
      v11 = v7;
      dispatch_assert_queue_V2(*(v5 + 56));
      v12 = [v10 createRequestWithMessageID:8];
      [v12 setPbRequest:v9];
      v13 = objc_alloc(MEMORY[0x277CCAD78]);
      v14 = [v9 requestIdentifier];
      v15 = [v13 initWithUUIDString:v14];

      if (v15)
      {
        v27 = @"workout-launch";
        v28[0] = v15;
        v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
        [v12 setPersistentUserInfo:v16];

        [v12 setPriority:1];
        [(HDNanoSyncManager *)v5 _queue_sendRequest:v12 syncStore:v10];
        v17 = objc_alloc_init(HDRemoteStartWorkoutAppRequestContext);
        v18 = v17;
        if (v17)
        {
          objc_storeStrong(&v17->_request, v8);
          objc_setProperty_nonatomic_copy(v18, v19, v11, 16);
        }

        [v10 addPendingRequestContext:v18 forUUID:v15];
      }

      else
      {
        v22 = MEMORY[0x277CCA9B8];
        v23 = objc_opt_class();
        v18 = [v9 requestIdentifier];
        v24 = [v22 hk_errorForInvalidArgument:@"@" class:v23 selector:sel__queue_sendStartWorkoutAppRequest_syncStore_completion_ format:{@"Invalid request identifier %@", v18}];
        (*(v11 + 2))(v11, 0, v24);
      }
    }

    else
    {
      v21 = [MEMORY[0x277CCA9B8] hk_error:550 description:@"Unable to launch watch app"];
      (*(a1[6] + 16))();
    }
  }

  else
  {
    v20 = a1[6];
    if (v20)
    {
      (*(v20 + 16))(v20, 0, v4);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)sendCompanionUserNotificationRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__HDNanoSyncManager_sendCompanionUserNotificationRequest_completion___block_invoke;
  block[3] = &unk_278616D18;
  v12 = requestCopy;
  v13 = completionCopy;
  block[4] = self;
  v9 = requestCopy;
  v10 = completionCopy;
  dispatch_async(queue, block);
}

void __69__HDNanoSyncManager_sendCompanionUserNotificationRequest_completion___block_invoke(void *a1)
{
  v28[1] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v26 = 0;
  v3 = [(HDNanoSyncManager *)v2 _queue_finishInitializationAfterFirstUnlockIfNecessaryWithError:?];
  v4 = v26;
  if (v3)
  {
    v5 = a1[4];
    v6 = *(v5 + 96);
    if (v6)
    {
      v8 = a1[5];
      v7 = a1[6];
      v9 = v8;
      v10 = v6;
      v11 = v7;
      dispatch_assert_queue_V2(*(v5 + 56));
      v12 = [v10 createRequestWithMessageID:9];
      [v12 setPbRequest:v9];
      v13 = [v9 requestIdentifier];

      if (v13)
      {
        v14 = objc_alloc(MEMORY[0x277CCAD78]);
        v15 = [v9 requestIdentifier];
        v16 = [v14 initWithUUIDString:v15];

        v27 = @"companion-user-notification";
        v28[0] = v16;
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
        [v12 setPersistentUserInfo:v17];

        [v12 setPriority:1];
        [(HDNanoSyncManager *)v5 _queue_sendRequest:v12 syncStore:v10];
        v11[2](v11, 1, 0);
        v18 = objc_alloc_init(HDRemoteCompanionUserNotificationRequestContext);
        v19 = v18;
        if (v18)
        {
          objc_storeStrong(&v18->_request, v8);
          objc_setProperty_nonatomic_copy(v19, v20, &__block_literal_global_805, 16);
        }

        [v10 addPendingRequestContext:v19 forUUID:v16];
      }

      else
      {
        v23 = MEMORY[0x277CCA9B8];
        v24 = objc_opt_class();
        v16 = [v9 requestIdentifier];
        v19 = [v23 hk_errorForInvalidArgument:@"@" class:v24 selector:sel__queue_sendCompanionUserNotificationRequest_syncStore_completion_ format:{@"Invalid request identifier %@", v16}];
        (v11)[2](v11, 0, v19);
      }
    }

    else
    {
      v22 = [MEMORY[0x277CCA9B8] hk_error:110 description:@"Cannot send a message without an active sync store. There is likely not a paired watch."];
      (*(a1[6] + 16))();
    }
  }

  else
  {
    v21 = a1[6];
    if (v21)
    {
      (*(v21 + 16))(v21, 0, v4);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)sendNotificationInstructionMessageRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__HDNanoSyncManager_sendNotificationInstructionMessageRequest_completion___block_invoke;
  block[3] = &unk_278616D18;
  v12 = requestCopy;
  v13 = completionCopy;
  block[4] = self;
  v9 = requestCopy;
  v10 = completionCopy;
  dispatch_async(queue, block);
}

void __74__HDNanoSyncManager_sendNotificationInstructionMessageRequest_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v19 = 0;
  v3 = [(HDNanoSyncManager *)v2 _queue_finishInitializationAfterFirstUnlockIfNecessaryWithError:?];
  v4 = v19;
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = *(v5 + 96);
    if (v6)
    {
      v7 = *(a1 + 48);
      v8 = *(a1 + 40);
      v9 = v6;
      v10 = v7;
      dispatch_assert_queue_V2(*(v5 + 56));
      v11 = [v9 createRequestWithMessageID:13];
      [v11 setPbRequest:v8];
      v12 = [v8 requestIdentifier];

      if (v12)
      {
        [v11 setPriority:1];
        [(HDNanoSyncManager *)v5 _queue_sendRequest:v11 syncStore:v9];
        v10[2](v10, 1, 0);
      }

      else
      {
        v15 = MEMORY[0x277CCA9B8];
        v16 = objc_opt_class();
        v17 = [v8 requestIdentifier];
        v18 = [v15 hk_errorForInvalidArgument:@"@" class:v16 selector:sel__queue_sendNotificationInstructionRequest_syncStore_completion_ format:{@"Invalid request identifier %@", v17}];
        (v10)[2](v10, 0, v18);
      }
    }

    else
    {
      v14 = [MEMORY[0x277CCA9B8] hk_error:110 description:@"Cannot send a message without an active sync store. There is likely not a paired watch."];
      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    v13 = *(a1 + 48);
    if (v13)
    {
      (*(v13 + 16))(v13, 0, v4);
    }
  }
}

- (void)sendTinkerSharingOptInRequest:(id)request forNRDeviceUUID:(id)d completion:(id)completion
{
  requestCopy = request;
  dCopy = d;
  completionCopy = completion;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __78__HDNanoSyncManager_sendTinkerSharingOptInRequest_forNRDeviceUUID_completion___block_invoke;
  v15[3] = &unk_278617440;
  v15[4] = self;
  v16 = dCopy;
  v17 = requestCopy;
  v18 = completionCopy;
  v12 = requestCopy;
  v13 = dCopy;
  v14 = completionCopy;
  dispatch_async(queue, v15);
}

void __78__HDNanoSyncManager_sendTinkerSharingOptInRequest_forNRDeviceUUID_completion___block_invoke(uint64_t *a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v32 = 0;
  v3 = [(HDNanoSyncManager *)v2 _queue_finishInitializationAfterFirstUnlockIfNecessaryWithError:?];
  v4 = v32;
  if (v3)
  {
    [(HDNanoSyncManager *)a1[4] _queue_updateTinkerSyncStore];
    v5 = *(a1[4] + 104);
    if (v5)
    {
      v6 = [v5 nanoRegistryUUID];
      if ([v6 isEqual:a1[5]])
      {
        v7 = a1[4];
        v8 = *(v7 + 104);
        v10 = a1[6];
        v9 = a1[7];
        v11 = v10;
        v12 = v8;
        v13 = v9;
        dispatch_assert_queue_V2(*(v7 + 56));
        _HKInitializeLogging();
        v14 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
        {
          v15 = v14;
          v16 = [v11 requestIdentifier];
          *buf = 138543874;
          *&buf[4] = v7;
          v35 = 2114;
          v36 = v16;
          v37 = 2114;
          v38 = v12;
          _os_log_impl(&dword_228986000, v15, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@ Will send Tinker opt in request %{public}@, syncStore %{public}@ (#t0)", buf, 0x20u);
        }

        v17 = [v12 createRequestWithMessageID:11];
        [v17 setPbRequest:v11];
        v18 = [v11 requestIdentifier];

        if (v18)
        {
          v19 = objc_alloc(MEMORY[0x277CCAD78]);
          v20 = [v11 requestIdentifier];
          v21 = [v19 initWithUUIDString:v20];

          v33 = @"tinker-optin";
          *buf = v21;
          v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v33 count:1];
          [v17 setPersistentUserInfo:v22];

          [v17 setPriority:1];
          [(HDNanoSyncManager *)v7 _queue_sendRequest:v17 syncStore:v12];
          v23 = objc_alloc_init(HDRemoteTinkerOptInRequestContext);
          v24 = v23;
          if (v23)
          {
            objc_storeStrong(&v23->_request, v10);
            objc_setProperty_nonatomic_copy(v24, v25, v13, 16);
          }

          [v12 addPendingRequestContext:v24 forUUID:v21];
        }

        else
        {
          v29 = MEMORY[0x277CCA9B8];
          v30 = objc_opt_class();
          v21 = [v11 requestIdentifier];
          v24 = [v29 hk_errorForInvalidArgument:@"@" class:v30 selector:sel__queue_sendTinkerOptInRequest_syncStore_completion_ format:{@"Invalid request identifier %@", v21}];
          (*(v13 + 2))(v13, 0, v24);
        }
      }

      else
      {
        v28 = a1[7];
        v11 = [MEMORY[0x277CCA9B8] hk_error:100 format:{@"Active device (%@) is not same as the device we want to pair to (%@).", v6, a1[5]}];
        (*(v28 + 16))(v28, 0, v11);
      }
    }

    else
    {
      v26 = a1[7];
      v27 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Unable to complete Tinker health sharing opt in because active sync store is nil"];
      (*(v26 + 16))(v26, 0, v27);
    }
  }

  else
  {
    (*(a1[7] + 16))();
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)_queue_updateTinkerSyncStore
{
  v29 = *MEMORY[0x277D85DE8];
  if (self)
  {
    if (*(self + 24))
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:sel__queue_updateTinkerSyncStore object:self file:@"HDNanoSyncManager.m" lineNumber:764 description:{@"Invalid parameter not satisfying: %@", @"_waitingForFirstUnlock == NO"}];
    }

    dispatch_assert_queue_V2(*(self + 56));
    WeakRetained = objc_loadWeakRetained((self + 48));
    daemon = [WeakRetained daemon];
    nanoPairedDeviceRegistry = [daemon nanoPairedDeviceRegistry];

    activeDeviceSelectorBlock = [MEMORY[0x277D2BCF8] activeDeviceSelectorBlock];
    v6 = [nanoPairedDeviceRegistry getAllDevicesWithArchivedAltAccountDevicesMatching:activeDeviceSelectorBlock];
    firstObject = [v6 firstObject];

    idsService = [*(self + 72) idsService];
    v9 = [idsService linkedDevicesWithRelationship:2];

    v10 = [nanoPairedDeviceRegistry deviceForNRDevice:firstObject fromIDSDevices:v9];
    _HKInitializeLogging();
    v11 = MEMORY[0x277CCC328];
    v12 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      hd_pairingID = [firstObject hd_pairingID];
      hd_deviceIdentifier = [v10 hd_deviceIdentifier];
      *buf = 138412802;
      selfCopy2 = self;
      v25 = 2112;
      v26 = hd_pairingID;
      v27 = 2112;
      v28 = hd_deviceIdentifier;
      _os_log_impl(&dword_228986000, v13, OS_LOG_TYPE_DEFAULT, "%@ Active tinker NR device %@, IDS device %@ (#t0)", buf, 0x20u);
    }

    v16 = objc_loadWeakRetained((self + 48));
    v17 = [HDNanoSyncStore nanoSyncStoreWithProfile:v16 device:v10 delegate:self tinkerPaired:1];

    hd_deviceIdentifier2 = [v10 hd_deviceIdentifier];
    [*(self + 120) setObject:v17 forKeyedSubscript:hd_deviceIdentifier2];
    [*(self + 104) invalidate];
    objc_storeStrong((self + 104), v17);
    _HKInitializeLogging();
    v19 = *v11;
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(self + 104);
      *buf = 138543618;
      selfCopy2 = self;
      v25 = 2114;
      v26 = v20;
      _os_log_impl(&dword_228986000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ Active tinker store %{public}@ (#t0)", buf, 0x16u);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)sendTinkerWatchPairingRequest:(id)request forNRDeviceUUID:(id)d completion:(id)completion
{
  requestCopy = request;
  dCopy = d;
  completionCopy = completion;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __78__HDNanoSyncManager_sendTinkerWatchPairingRequest_forNRDeviceUUID_completion___block_invoke;
  v15[3] = &unk_278617440;
  v15[4] = self;
  v16 = dCopy;
  v17 = requestCopy;
  v18 = completionCopy;
  v12 = requestCopy;
  v13 = dCopy;
  v14 = completionCopy;
  dispatch_async(queue, v15);
}

void __78__HDNanoSyncManager_sendTinkerWatchPairingRequest_forNRDeviceUUID_completion___block_invoke(uint64_t *a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v28 = 0;
  v3 = [(HDNanoSyncManager *)v2 _queue_finishInitializationAfterFirstUnlockIfNecessaryWithError:?];
  v4 = v28;
  if (v3)
  {
    [(HDNanoSyncManager *)a1[4] _queue_updateTinkerSyncStore];
    v5 = *(a1[4] + 104);
    if (v5)
    {
      v6 = [v5 nanoRegistryUUID];
      if ([v6 isEqual:a1[5]])
      {
        v7 = a1[4];
        v8 = *(v7 + 104);
        v10 = a1[6];
        v9 = a1[7];
        v11 = v10;
        v12 = v8;
        v13 = v9;
        dispatch_assert_queue_V2(*(v7 + 56));
        _HKInitializeLogging();
        v14 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_DEFAULT, "[sharing-setup] Guardian requesting health sharing with Tinker watch. (#t0)", buf, 2u);
        }

        v15 = [v12 createRequestWithMessageID:10];
        [v15 setPbRequest:v11];
        v16 = [v11 requestIdentifier];

        if (v16)
        {
          v17 = objc_alloc(MEMORY[0x277CCAD78]);
          v18 = [v11 requestIdentifier];
          v19 = [v17 initWithUUIDString:v18];

          v29 = @"tinker-pairing";
          *buf = v19;
          v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v29 count:1];
          [v15 setPersistentUserInfo:v20];

          [v15 setPriority:1];
          [(HDNanoSyncManager *)v7 _queue_sendRequest:v15 syncStore:v12];
          v21 = objc_alloc_init(HDRemoteTinkerPairingRequestContext);
          v22 = v21;
          if (v21)
          {
            objc_storeStrong(&v21->_request, v10);
            objc_setProperty_nonatomic_copy(v22, v23, v13, 16);
          }

          [v12 addPendingRequestContext:v22 forUUID:v19];
        }

        else
        {
          v25 = MEMORY[0x277CCA9B8];
          v26 = objc_opt_class();
          v19 = [v11 requestIdentifier];
          v22 = [v25 hk_errorForInvalidArgument:@"@" class:v26 selector:sel__queue_sendTinkerPairingRequest_syncStore_completion_ format:{@"Invalid request identifier %@", v19}];
          (*(v13 + 2))(v13, 0, v22);
        }
      }

      else
      {
        v24 = [MEMORY[0x277CCA9B8] hk_error:100 format:{@"Active device (%@) is not same as the device we want to pair to (%@).", v6, a1[5]}];
        (*(a1[7] + 16))();
      }
    }

    else
    {
      v6 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Unable to complete Tinker health sharing because active sync store is nil"];
      (*(a1[7] + 16))();
    }
  }

  else
  {
    (*(a1[7] + 16))();
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)sendTinkerEndToEndCloudSyncRequestForNRDeviceUUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__HDNanoSyncManager_sendTinkerEndToEndCloudSyncRequestForNRDeviceUUID_completion___block_invoke;
  block[3] = &unk_278616D18;
  v12 = dCopy;
  v13 = completionCopy;
  block[4] = self;
  v9 = dCopy;
  v10 = completionCopy;
  dispatch_async(queue, block);
}

void __82__HDNanoSyncManager_sendTinkerEndToEndCloudSyncRequestForNRDeviceUUID_completion___block_invoke(uint64_t *a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v30 = 0;
  v3 = [(HDNanoSyncManager *)v2 _queue_finishInitializationAfterFirstUnlockIfNecessaryWithError:?];
  v4 = v30;
  if (v3)
  {
    [(HDNanoSyncManager *)a1[4] _queue_updateTinkerSyncStore];
    v5 = *(a1[4] + 104);
    if (v5)
    {
      v6 = [v5 nanoRegistryUUID];
      if ([v6 isEqual:a1[5]])
      {
        v7 = a1[4];
        v8 = a1[6];
        v9 = *(v7 + 104);
        v10 = v8;
        dispatch_assert_queue_V2(*(v7 + 56));
        v11 = [MEMORY[0x277CCAD78] UUID];
        v12 = objc_alloc_init(HDCodableTinkerEndToEndCloudSyncRequest);
        v13 = [v11 UUIDString];
        [(HDCodableTinkerEndToEndCloudSyncRequest *)v12 setRequestIdentifier:v13];

        _HKInitializeLogging();
        v14 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
        {
          v15 = v14;
          v16 = [(HDCodableTinkerEndToEndCloudSyncRequest *)v12 requestIdentifier];
          *buf = 138543874;
          v32 = v7;
          v33 = 2114;
          v34 = v16;
          v35 = 2114;
          v36 = v9;
          _os_log_impl(&dword_228986000, v15, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@ Will send Tinker end to end Cloud Sync request %{public}@, syncStore %{public}@ (#t0)", buf, 0x20u);
        }

        v17 = [v9 createRequestWithMessageID:12];
        [v17 setPbRequest:v12];
        v18 = [(HDCodableTinkerEndToEndCloudSyncRequest *)v12 requestIdentifier];

        if (v18)
        {
          v19 = objc_alloc_init(HDRemoteTinkerEndToEndCloudSyncRequestContext);
          v20 = v19;
          if (v19)
          {
            objc_storeStrong(&v19->_request, v12);
            objc_setProperty_nonatomic_copy(v20, v21, v10, 16);
          }

          [v9 addPendingRequestContext:v20 forUUID:v11];
          [v17 setPriority:1];
          [(HDNanoSyncManager *)v7 _queue_sendRequest:v17 syncStore:v9];
        }

        else
        {
          v29 = v11;
          v25 = MEMORY[0x277CCA9B8];
          v26 = objc_opt_class();
          v20 = [(HDCodableTinkerEndToEndCloudSyncRequest *)v12 requestIdentifier];
          v27 = [v25 hk_errorForInvalidArgument:@"@" class:v26 selector:sel__queue_sendTinkerEndToEndCloudSyncRequestWithSyncStore_completion_ format:{@"Invalid request identifier %@", v20}];
          (*(v10 + 2))(v10, 0, v27);

          v11 = v29;
        }
      }

      else
      {
        v24 = a1[6];
        v9 = [MEMORY[0x277CCA9B8] hk_error:100 format:{@"Active device (%@) is not same as the device we want to pair to (%@).", v6, a1[5]}];
        (*(v24 + 16))(v24, 0, v9);
      }
    }

    else
    {
      v22 = a1[6];
      v23 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Unable to complete Tinker end to end Cloud Sync because active sync store is nil"];
      (*(v22 + 16))(v22, 0, v23);
    }
  }

  else
  {
    (*(a1[6] + 16))();
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_queue_sendRequest:(uint64_t)request syncStore:
{
  v8 = a2;
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 56));
    v5 = v8;
    if (v8)
    {
      if (request)
      {
LABEL_4:
        [*(self + 72) sendRequest:v5];
        goto LABEL_5;
      }
    }

    else
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:sel__queue_sendRequest_syncStore_ object:self file:@"HDNanoSyncManager.m" lineNumber:995 description:{@"Invalid parameter not satisfying: %@", @"request != nil"}];

      v5 = 0;
      if (request)
      {
        goto LABEL_4;
      }
    }

    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:sel__queue_sendRequest_syncStore_ object:self file:@"HDNanoSyncManager.m" lineNumber:996 description:{@"Invalid parameter not satisfying: %@", @"syncStore != nil"}];

    v5 = v8;
    goto LABEL_4;
  }

LABEL_5:
}

- (void)_queue_sendResponse:(void *)response syncStore:
{
  v13 = a2;
  responseCopy = response;
  if (!self)
  {
    goto LABEL_7;
  }

  dispatch_assert_queue_V2(*(self + 56));
  if (!v13)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:sel__queue_sendResponse_syncStore_ object:self file:@"HDNanoSyncManager.m" lineNumber:1003 description:{@"Invalid parameter not satisfying: %@", @"response != nil"}];

    if (responseCopy)
    {
      goto LABEL_4;
    }

LABEL_11:
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:sel__queue_sendResponse_syncStore_ object:self file:@"HDNanoSyncManager.m" lineNumber:1004 description:{@"Invalid parameter not satisfying: %@", @"syncStore != nil"}];

    goto LABEL_4;
  }

  if (!responseCopy)
  {
    goto LABEL_11;
  }

LABEL_4:
  device = [responseCopy device];
  toParticipant = [v13 toParticipant];
  device2 = [toParticipant device];
  v9 = [device hd_isEquivalentToDevice:device2];

  if ((v9 & 1) == 0)
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:sel__queue_sendResponse_syncStore_ object:self file:@"HDNanoSyncManager.m" lineNumber:1007 description:{@"Invalid parameter not satisfying: %@", @"[[syncStore device] hd_isEquivalentToDevice:[response.toParticipant device]]"}];
  }

  [responseCopy configureOutgoingResponse:v13];
  [v13 send];
LABEL_7:
}

- (id)_queue_syncStoreForIDSDevice:(uint64_t)device updateIfNecessary:(void *)necessary
{
  necessaryCopy = necessary;
  if (device && (dispatch_assert_queue_V2(*(device + 56)), necessaryCopy))
  {
    hd_deviceIdentifier = [necessaryCopy hd_deviceIdentifier];
    v5 = [*(device + 120) objectForKeyedSubscript:hd_deviceIdentifier];
    if (!v5)
    {
      [(HDNanoSyncManager *)device _queue_updateSyncStores];
      v5 = [*(device + 120) objectForKeyedSubscript:hd_deviceIdentifier];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_queue_validatedSyncStore:(void *)store device:(void *)device message:(uint64_t)message error:
{
  v32 = *MEMORY[0x277D85DE8];
  v9 = a2;
  storeCopy = store;
  deviceCopy = device;
  dispatch_assert_queue_V2(*(self + 56));
  if (([deviceCopy hasVersion] & 1) == 0)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:message code:3 format:{@"Incoming message has no sync version information.", v21, v22, v23}];
LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  version = [deviceCopy version];
  protocolVersion = [v9 protocolVersion];
  if (version == protocolVersion)
  {
    v14 = v9;
    goto LABEL_6;
  }

  v17 = protocolVersion;
  if (version > 17 || version <= protocolVersion)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:message code:3 format:{@"Incoming message has unexpected version %d (expected %d, current is %d).", version, protocolVersion, 17}];
    goto LABEL_5;
  }

  _HKInitializeLogging();
  v18 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    selfCopy = self;
    v26 = 1024;
    v27 = version;
    v28 = 1024;
    v29 = v17;
    v30 = 1024;
    v31 = version;
    _os_log_impl(&dword_228986000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: Incoming message has sync protocol version %d, but we were only expecting %d. Adjusting expected version to %d", buf, 0x1Eu);
  }

  v14 = [v9 nanoSyncStoreForProtocolVersion:version];
  [v9 invalidate];
  v19 = *(self + 120);
  hd_deviceIdentifier = [storeCopy hd_deviceIdentifier];
  [v19 setObject:v14 forKeyedSubscript:hd_deviceIdentifier];

LABEL_6:
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)_handleIncomingRequest:(void *)request usingBlock:
{
  v5 = a2;
  requestCopy = request;
  v7 = requestCopy;
  if (self)
  {
    if (v5)
    {
      if (requestCopy)
      {
LABEL_4:
        [(HDNanoSyncManager *)self _logIncomingRequest:v5];
        v8 = *(self + 56);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __55__HDNanoSyncManager__handleIncomingRequest_usingBlock___block_invoke;
        block[3] = &unk_278614160;
        block[4] = self;
        v12 = v5;
        v13 = v7;
        dispatch_async(v8, block);

        goto LABEL_5;
      }
    }

    else
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:sel__handleIncomingRequest_usingBlock_ object:self file:@"HDNanoSyncManager.m" lineNumber:1078 description:{@"Invalid parameter not satisfying: %@", @"request != nil"}];

      if (v7)
      {
        goto LABEL_4;
      }
    }

    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:sel__handleIncomingRequest_usingBlock_ object:self file:@"HDNanoSyncManager.m" lineNumber:1079 description:{@"Invalid parameter not satisfying: %@", @"block != NULL"}];

    goto LABEL_4;
  }

LABEL_5:
}

- (void)_logIncomingRequest:(uint64_t)request
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (request)
  {
    fromParticipant = [v3 fromParticipant];
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      nanoSyncDescription = [v4 nanoSyncDescription];
      v9 = [fromParticipant description];
      v11 = 138543618;
      v12 = nanoSyncDescription;
      v13 = 2114;
      v14 = v9;
      _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "received %{public}@ from %{public}@", &v11, 0x16u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __55__HDNanoSyncManager__handleIncomingRequest_usingBlock___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) fromParticipant];
  v4 = [v3 device];
  v5 = [HDNanoSyncManager _queue_syncStoreForIDSDevice:v2 updateIfNecessary:v4];

  if (v5)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v8 = v6;
      v9 = [v7 fromParticipant];
      v10 = [v9 device];
      v11 = [v10 description];
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "unable to find sync store for request from device %{public}@", &v13, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_handleIncomingResponse:(void *)response usingBlock:
{
  v5 = a2;
  responseCopy = response;
  v7 = responseCopy;
  if (self)
  {
    if (v5)
    {
      if (responseCopy)
      {
LABEL_4:
        [(HDNanoSyncManager *)self _logIncomingRequest:v5];
        v8 = *(self + 56);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __56__HDNanoSyncManager__handleIncomingResponse_usingBlock___block_invoke;
        block[3] = &unk_278614160;
        block[4] = self;
        v12 = v5;
        v13 = v7;
        dispatch_async(v8, block);

        goto LABEL_5;
      }
    }

    else
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:sel__handleIncomingResponse_usingBlock_ object:self file:@"HDNanoSyncManager.m" lineNumber:1096 description:{@"Invalid parameter not satisfying: %@", @"response != nil"}];

      if (v7)
      {
        goto LABEL_4;
      }
    }

    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:sel__handleIncomingResponse_usingBlock_ object:self file:@"HDNanoSyncManager.m" lineNumber:1097 description:{@"Invalid parameter not satisfying: %@", @"block != NULL"}];

    goto LABEL_4;
  }

LABEL_5:
}

void __56__HDNanoSyncManager__handleIncomingResponse_usingBlock___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) fromParticipant];
  v4 = [v3 device];
  v5 = [HDNanoSyncManager _queue_syncStoreForIDSDevice:v2 updateIfNecessary:v4];

  if (v5)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v8 = v6;
      v9 = [v7 fromParticipant];
      v10 = [v9 device];
      v11 = [v10 description];
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "unable to find sync store for response from device %{public}@", &v13, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __67__HDNanoSyncManager__syncronouslyHandleIncomingRequest_usingBlock___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) fromParticipant];
  v4 = [v3 device];
  v5 = [HDNanoSyncManager _queue_syncStoreForIDSDevice:v2 updateIfNecessary:v4];

  if (v5)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __67__HDNanoSyncManager__syncronouslyHandleIncomingRequest_usingBlock___block_invoke_2;
    v14[3] = &unk_278613968;
    v6 = *(a1 + 56);
    v15 = *(a1 + 48);
    (*(v6 + 16))(v6, v5, v14);
  }

  else
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v9 = v7;
      v10 = [v8 fromParticipant];
      v11 = [v10 device];
      v12 = [v11 description];
      *buf = 138543362;
      v17 = v12;
      _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "unable to find sync store for request from device %{public}@", buf, 0xCu);
    }

    dispatch_semaphore_signal(*(a1 + 48));
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_handleOutgoingMessageError:(void *)error usingBlock:
{
  v5 = a2;
  errorCopy = error;
  v7 = errorCopy;
  if (self)
  {
    if (v5)
    {
      if (errorCopy)
      {
LABEL_4:
        [(HDNanoSyncManager *)self _logOutgoingMessageError:v5];
        v8 = *(self + 56);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __60__HDNanoSyncManager__handleOutgoingMessageError_usingBlock___block_invoke;
        block[3] = &unk_278614160;
        block[4] = self;
        v12 = v5;
        v13 = v7;
        dispatch_async(v8, block);

        goto LABEL_5;
      }
    }

    else
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:sel__handleOutgoingMessageError_usingBlock_ object:self file:@"HDNanoSyncManager.m" lineNumber:1149 description:{@"Invalid parameter not satisfying: %@", @"error != nil"}];

      if (v7)
      {
        goto LABEL_4;
      }
    }

    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:sel__handleOutgoingMessageError_usingBlock_ object:self file:@"HDNanoSyncManager.m" lineNumber:1150 description:{@"Invalid parameter not satisfying: %@", @"block != NULL"}];

    goto LABEL_4;
  }

LABEL_5:
}

- (void)_logOutgoingMessageError:(uint64_t)error
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (error)
  {
    hd_messageID = [v3 hd_messageID];
    hd_isFromRequest = [v4 hd_isFromRequest];
    hd_messageIDSIdentifier = [v4 hd_messageIDSIdentifier];
    hd_messageIDSDeviceIdentifier = [v4 hd_messageIDSDeviceIdentifier];
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v11 = v9;
      v12 = HDNanoSyncMessageIDString(hd_messageID);
      v16 = 2080;
      v13 = "response";
      v14 = 138544386;
      v15 = v12;
      if (hd_isFromRequest)
      {
        v13 = "request";
      }

      v17 = v13;
      v18 = 2114;
      v19 = hd_messageIDSIdentifier;
      v20 = 2114;
      v21 = hd_messageIDSDeviceIdentifier;
      v22 = 2114;
      v23 = v4;
      _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, "%{public}@ %s %{public}@ to device %{public}@ error: %{public}@", &v14, 0x34u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __60__HDNanoSyncManager__handleOutgoingMessageError_usingBlock___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = v3;
  if (v2)
  {
    if (!v3)
    {
      v7 = [MEMORY[0x277CCA890] currentHandler];
      [v7 handleFailureInMethod:sel__queue_syncStoreForMessageCenterError_ object:v2 file:@"HDNanoSyncManager.m" lineNumber:1137 description:{@"Invalid parameter not satisfying: %@", @"error != nil"}];
    }

    dispatch_assert_queue_V2(*(v2 + 56));
    v5 = [v4 hd_messageIDSDeviceIdentifier];
    if (v5)
    {
      v6 = [*(v2 + 120) objectForKeyedSubscript:v5];
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      (*(*(a1 + 48) + 16))();
      goto LABEL_13;
    }
  }

  else
  {
  }

  _HKInitializeLogging();
  v8 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 40);
    v10 = v8;
    v11 = [v9 hd_messageIDSIdentifier];
    v12 = [*(a1 + 40) hd_messageIDSDeviceIdentifier];
    *buf = 138543618;
    v15 = v11;
    v16 = 2114;
    v17 = v12;
    _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "unable to find sync store for error from message %{public}@ to device %{public}@", buf, 0x16u);
  }

  v6 = 0;
LABEL_13:

  v13 = *MEMORY[0x277D85DE8];
}

- (void)messageCenter:(id)center didResolveIDSIdentifierForRequest:(id)request
{
  v15 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  toParticipant = [requestCopy toParticipant];
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    nanoSyncDescription = [requestCopy nanoSyncDescription];
    v9 = [toParticipant description];
    v11 = 138543618;
    v12 = nanoSyncDescription;
    v13 = 2114;
    v14 = v9;
    _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "resolved %{public}@ to %{public}@", &v11, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)messageCenter:(id)center didResolveIDSIdentifierForResponse:(id)response
{
  v15 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  toParticipant = [responseCopy toParticipant];
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    nanoSyncDescription = [responseCopy nanoSyncDescription];
    v9 = [toParticipant description];
    v11 = 138543618;
    v12 = nanoSyncDescription;
    v13 = 2114;
    v14 = v9;
    _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "resolved %{public}@ to %{public}@", &v11, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)messageCenter:(id)center activeDeviceDidChange:(id)change acknowledgementHandler:(id)handler
{
  v26 = *MEMORY[0x277D85DE8];
  centerCopy = center;
  changeCopy = change;
  handlerCopy = handler;
  if (([changeCopy isActive] & 1) == 0)
  {
    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v17 = v11;
      hd_shortDescription = [changeCopy hd_shortDescription];
      *buf = 138543362;
      v25 = hd_shortDescription;
      _os_log_error_impl(&dword_228986000, v17, OS_LOG_TYPE_ERROR, "IDS bug: active device isActive=NO %{public}@", buf, 0xCu);
    }
  }

  queue = self->_queue;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __80__HDNanoSyncManager_messageCenter_activeDeviceDidChange_acknowledgementHandler___block_invoke;
  v19[3] = &unk_278617468;
  v20 = centerCopy;
  selfCopy = self;
  v22 = changeCopy;
  v23 = handlerCopy;
  v13 = changeCopy;
  v14 = handlerCopy;
  v15 = centerCopy;
  dispatch_async(queue, v19);

  v16 = *MEMORY[0x277D85DE8];
}

void __80__HDNanoSyncManager_messageCenter_activeDeviceDidChange_acknowledgementHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(a1 + 32) == *(v2 + 72))
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __80__HDNanoSyncManager_messageCenter_activeDeviceDidChange_acknowledgementHandler___block_invoke_2;
    v7[3] = &unk_278617490;
    v5 = *(a1 + 48);
    v6 = *(a1 + 40);
    v8 = v5;
    v9 = v6;
    v10 = *(a1 + 56);
    [(HDNanoSyncManager *)v2 _queue_updateSyncStoresWithCompletion:v7];
  }

  else
  {
    v3 = *(a1 + 56);
    v4 = *(*(a1 + 56) + 16);

    v4();
  }
}

void __80__HDNanoSyncManager_messageCenter_activeDeviceDidChange_acknowledgementHandler___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) hd_deviceIdentifier];
  v3 = [*(*(a1 + 40) + 96) device];
  v4 = [v3 hd_deviceIdentifier];

  if (v2 != v4 && (!v4 || ([v2 isEqualToString:v4] & 1) == 0))
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = *(*(a1 + 40) + 96);
      v9 = 138543618;
      v10 = v8;
      v11 = 2114;
      v12 = v7;
      _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "unexpected active store %{public}@ after switch to device %{public}@", &v9, 0x16u);
    }
  }

  (*(*(a1 + 48) + 16))();

  v6 = *MEMORY[0x277D85DE8];
}

- (void)messageCenterDidReceiveRestoreRequest:(id)request
{
  requestCopy = request;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__HDNanoSyncManager_messageCenterDidReceiveRestoreRequest___block_invoke;
  v6[3] = &unk_2786174B8;
  v6[4] = self;
  v7 = requestCopy;
  v5 = requestCopy;
  [(HDNanoSyncManager *)self _handleIncomingRequest:v5 usingBlock:v6];
}

void __59__HDNanoSyncManager_messageCenterDidReceiveRestoreRequest___block_invoke(uint64_t a1, void *a2)
{
  v71 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = v5;
  if (!v3)
  {
    v11 = v5;
    goto LABEL_34;
  }

  dispatch_assert_queue_V2(*(v3 + 56));
  if (v4)
  {
    if (v6)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v35 = [MEMORY[0x277CCA890] currentHandler];
    [v35 handleFailureInMethod:sel__queue_handleRestoreRequest_syncStore_ object:v3 file:@"HDNanoSyncManager.m" lineNumber:2134 description:{@"Invalid parameter not satisfying: %@", @"request != nil"}];

    if (v6)
    {
      goto LABEL_4;
    }
  }

  v36 = [MEMORY[0x277CCA890] currentHandler];
  [v36 handleFailureInMethod:sel__queue_handleRestoreRequest_syncStore_ object:v3 file:@"HDNanoSyncManager.m" lineNumber:2135 description:{@"Invalid parameter not satisfying: %@", @"syncStore != nil"}];

LABEL_4:
  v7 = [v4 pbRequest];
  v8 = [v7 activationRestore];
  v53 = [v8 decodedRestoreUUID];
  v51 = [v8 sequenceNumber];
  v9 = [v4 fromParticipant];
  v10 = [v9 device];
  v57 = 0;
  v11 = [(HDNanoSyncManager *)v3 _queue_validatedSyncStore:v6 device:v10 message:v7 error:&v57];
  v50 = v57;

  if (!v11)
  {
    _HKInitializeLogging();
    v20 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v21 = v20;
      v22 = [v4 idsIdentifier];
      *buf = 138543618;
      *&buf[4] = v22;
      *&buf[12] = 2114;
      *&buf[14] = v50;
      _os_log_impl(&dword_228986000, v21, OS_LOG_TYPE_DEFAULT, "ignoring restore request %{public}@: %{public}@", buf, 0x16u);
    }

    goto LABEL_33;
  }

  v12 = *MEMORY[0x277CCC328];
  v13 = _HKLogSignpostIDGenerate();
  _HKInitializeLogging();
  v14 = *MEMORY[0x277CCC328];
  if (os_signpost_enabled(*MEMORY[0x277CCC328]))
  {
    v15 = v14;
    v16 = v15;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      v17 = [v4 idsIdentifier];
      *buf = 138543362;
      *&buf[4] = v17;
      _os_signpost_emit_with_name_impl(&dword_228986000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v13, "nano-sync-restore-request", "request %{public}@", buf, 0xCu);
    }
  }

  v18 = [(HKDaemonTransaction *)HDDaemonTransaction transactionWithOwner:v3 activityName:@"ReceiveRestoreRequest"];
  v55[0] = 0;
  v55[1] = v55;
  v55[2] = 0x3032000000;
  v55[3] = __Block_byref_object_copy__30;
  v55[4] = __Block_byref_object_dispose__30;
  v56 = 0;
  obj = 0;
  v19 = v4;
  v52 = v11;
  dispatch_assert_queue_V2(*(v3 + 56));
  if (*(v3 + 8) != 1)
  {
    v23 = [v19 pbRequest];
    v45 = [v23 decodedPersistentPairingUUID];
    v44 = [v23 decodedHealthPairingUUID];
    if (v45)
    {
      if (v44)
      {
        v24 = [v23 activationRestore];
        v43 = v24;
        if (v24)
        {
          if ([v24 hasRequiredFields])
          {
            if ([v43 sequenceNumber] == 1)
            {
              if ([v43 statusCode] == 3)
              {
                [MEMORY[0x277CCA9B8] hk_assignError:&obj code:100 description:@"remote requested abort"];
                v46 = 2;
              }

              else
              {
                v41 = [v52 persistentUUID];
                v42 = [v52 healthUUID];
                if (v42 && ([v43 decodedObliteratedHealthPairingUUIDs], v47 = objc_claimAutoreleasedReturnValue(), v39 = objc_msgSend(v47, "containsObject:", v42), v47, (v39 & 1) != 0))
                {
                  v33 = 4;
                }

                else if (v41 && ![v41 isEqual:v45] || v42 && (objc_msgSend(v42, "isEqual:", v44) & 1) == 0)
                {
                  _HKInitializeLogging();
                  v48 = *MEMORY[0x277CCC328];
                  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
                  {
                    v38 = v48;
                    v49 = [v19 idsIdentifier];
                    v40 = [v45 UUIDString];
                    v34 = [v41 UUIDString];
                    *buf = 138543874;
                    *&buf[4] = v49;
                    *&buf[12] = 2114;
                    *&buf[14] = v40;
                    *&buf[22] = 2114;
                    v59 = v34;
                    v37 = v34;
                    _os_log_impl(&dword_228986000, v38, OS_LOG_TYPE_DEFAULT, "received restore message %{public}@ with unknown persistent pairing UUID %{public}@ (expected %{public}@)", buf, 0x20u);
                  }

                  v33 = 3;
                }

                else
                {
                  v33 = 1;
                }

                v46 = v33;
              }

              goto LABEL_28;
            }

            v26 = @"restore request has invalid sequence number";
          }

          else
          {
            v26 = @"restore request missing required fields";
          }
        }

        else
        {
          v26 = @"missing restore request content";
        }

        [MEMORY[0x277CCA9B8] hk_assignError:&obj code:100 description:v26];
        v46 = 0;
LABEL_28:

        goto LABEL_29;
      }

      v25 = @"missing health UUID";
    }

    else
    {
      v25 = @"missing persistent UUID";
    }

    [MEMORY[0x277CCA9B8] hk_assignError:&obj code:100 description:v25];
    v46 = 0;
LABEL_29:

    goto LABEL_30;
  }

  [MEMORY[0x277CCA9B8] hk_assignError:&obj code:100 description:@"unexpected restore request on master device"];
  v46 = 0;
LABEL_30:

  objc_storeStrong(&v56, obj);
  v27 = [v52 restoreSession];
  if (v46 == 1)
  {
    v28 = [v52 beginRestoreSessionWithUUID:v53 timeout:0 timeoutHandler:0.0];

    v27 = v28;
  }

  [v27 setSequenceNumber:v51];
  v29 = *(v3 + 64);
  *buf = MEMORY[0x277D85DD0];
  *&buf[8] = 3221225472;
  *&buf[16] = __59__HDNanoSyncManager__queue_handleRestoreRequest_syncStore___block_invoke;
  v59 = &unk_278617690;
  v60 = v52;
  v30 = v7;
  v68 = v46;
  v61 = v30;
  v62 = v3;
  v63 = v8;
  v64 = v19;
  v67 = v55;
  v65 = v53;
  v66 = v18;
  v69 = v51;
  v70 = v13;
  v31 = v18;
  dispatch_async(v29, buf);

  _Block_object_dispose(v55, 8);
LABEL_33:

LABEL_34:
  v32 = *MEMORY[0x277D85DE8];
}

- (void)messageCenterDidReceiveRestoreResponse:(id)response
{
  responseCopy = response;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__HDNanoSyncManager_messageCenterDidReceiveRestoreResponse___block_invoke;
  v6[3] = &unk_2786174B8;
  v6[4] = self;
  v7 = responseCopy;
  v5 = responseCopy;
  [(HDNanoSyncManager *)self _handleIncomingResponse:v5 usingBlock:v6];
}

void __60__HDNanoSyncManager_messageCenterDidReceiveRestoreResponse___block_invoke(uint64_t a1, void *a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = v5;
  if (!v3)
  {
    v13 = v5;
    goto LABEL_32;
  }

  dispatch_assert_queue_V2(*(v3 + 56));
  if (v4)
  {
    if (v6)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v35 = [MEMORY[0x277CCA890] currentHandler];
    [v35 handleFailureInMethod:sel__queue_handleRestoreResponse_syncStore_ object:v3 file:@"HDNanoSyncManager.m" lineNumber:2229 description:{@"Invalid parameter not satisfying: %@", @"response != nil"}];

    if (v6)
    {
      goto LABEL_4;
    }
  }

  v36 = [MEMORY[0x277CCA890] currentHandler];
  [v36 handleFailureInMethod:sel__queue_handleRestoreResponse_syncStore_ object:v3 file:@"HDNanoSyncManager.m" lineNumber:2230 description:{@"Invalid parameter not satisfying: %@", @"syncStore != nil"}];

LABEL_4:
  v7 = [v4 pbResponse];
  v8 = [v7 activationRestore];
  v40 = [v8 decodedRestoreUUID];
  v9 = [v8 sequenceNumber];
  v10 = [v8 statusCode];
  v41 = [v6 restoreSession];
  v11 = [v4 fromParticipant];
  v12 = [v11 device];
  v42 = 0;
  v13 = [(HDNanoSyncManager *)v3 _queue_validatedSyncStore:v6 device:v12 message:v7 error:&v42];
  v39 = v42;

  if (v13)
  {
    if (*(v3 + 8) == 1)
    {
      v14 = v40;
      if (v8)
      {
        if ([v13 validatePairingUUIDsWithIncomingMessage:v7])
        {
          if ([v8 hasRequiredFields])
          {
            if (v41)
            {
              v15 = [v41 sessionUUID];
              v16 = [v40 isEqual:v15];

              if (v16)
              {
                *aBlock = MEMORY[0x277D85DD0];
                *&aBlock[8] = 3221225472;
                *&aBlock[16] = __60__HDNanoSyncManager__queue_handleRestoreResponse_syncStore___block_invoke;
                v48 = &unk_2786176B8;
                v17 = v4;
                v51 = v10;
                v49 = v17;
                v50 = v9;
                v18 = _Block_copy(aBlock);
                v19 = v18;
                v20 = v18[2];
                if (v10 != 1)
                {
                  if (v10 == 3)
                  {
                    (v20)(v18, 16, @"aborting restore");
                    v25 = @"abort requested by remote";
LABEL_34:

                    _HKInitializeLogging();
                    v34 = *MEMORY[0x277CCC328];
                    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
                    {
                      v37 = v34;
                      v38 = [v17 idsIdentifier];
                      *buf = 138543618;
                      v44 = v38;
                      v45 = 2114;
                      v46 = v25;
                      _os_log_error_impl(&dword_228986000, v37, OS_LOG_TYPE_ERROR, "aborted restore with message %{public}@: %{public}@", buf, 0x16u);
                    }

                    v24 = v39;
                    v14 = v40;
                    if (!v39)
                    {
                      v24 = [MEMORY[0x277CCA9B8] hk_error:100 description:v25];
                    }

                    [(HDNanoSyncManager *)v3 _queue_transitionToRestoreIncompleteWithSyncStore:v13 error:v24];
LABEL_26:

                    goto LABEL_31;
                  }

                  if (v10 == 2)
                  {
                    (v20)(v18, 0, @"finishing restore");
                    if (v9 == [v41 sequenceNumber])
                    {
                      [(HDNanoSyncManager *)v3 _queue_transitionToRestoreCompleteWithSyncStore:v13];
LABEL_29:

                      goto LABEL_30;
                    }

                    v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"unxpected finish sequence number %lld (expected %lld)", v9, objc_msgSend(v41, "sequenceNumber")];
                    goto LABEL_34;
                  }
                }

                v20();
                goto LABEL_29;
              }

              v26 = MEMORY[0x277CCACA8];
              v27 = [v40 UUIDString];
              v28 = [v41 sessionUUID];
              v29 = [v28 UUIDString];
              v25 = [v26 stringWithFormat:@"unexpected restore UUID %@ (expected %@)", v27, v29];
            }

            else
            {
              v25 = @"no active restore session";
            }
          }

          else
          {
            v25 = @"restore response missing required fields";
          }
        }

        else
        {
          v25 = @"invalid pairing UUIDs";
        }
      }

      else
      {
        v25 = @"missing restore response content";
      }
    }

    else
    {
      v25 = @"unexpected restore response on slave";
      v14 = v40;
    }

    _HKInitializeLogging();
    v30 = *MEMORY[0x277CCC328];
    v24 = v39;
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v31 = v30;
      v32 = [v4 idsIdentifier];
      *aBlock = 138543618;
      *&aBlock[4] = v32;
      *&aBlock[12] = 2114;
      *&aBlock[14] = v25;
      _os_log_impl(&dword_228986000, v31, OS_LOG_TYPE_DEFAULT, "ignoring restore response %{public}@: %{public}@", aBlock, 0x16u);
    }

    goto LABEL_26;
  }

  _HKInitializeLogging();
  v21 = *MEMORY[0x277CCC328];
  if (!os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
LABEL_30:
    v24 = v39;
    v14 = v40;
    goto LABEL_31;
  }

  v22 = v21;
  v23 = [v4 idsIdentifier];
  *aBlock = 138543618;
  *&aBlock[4] = v23;
  *&aBlock[12] = 2114;
  v24 = v39;
  *&aBlock[14] = v39;
  _os_log_impl(&dword_228986000, v22, OS_LOG_TYPE_DEFAULT, "ignoring restore response %{public}@: %{public}@", aBlock, 0x16u);

  v14 = v40;
LABEL_31:

LABEL_32:
  v33 = *MEMORY[0x277D85DE8];
}

- (void)messageCenterDidReceiveChangesRequest:(id)request
{
  requestCopy = request;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59__HDNanoSyncManager_messageCenterDidReceiveChangesRequest___block_invoke;
  v12[3] = &unk_2786174E0;
  v12[4] = self;
  v13 = requestCopy;
  v5 = requestCopy;
  v6 = v12;
  if (self)
  {
    if (!v5)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:sel__syncronouslyHandleIncomingRequest_usingBlock_ object:self file:@"HDNanoSyncManager.m" lineNumber:1113 description:{@"Invalid parameter not satisfying: %@", @"request != nil"}];
    }

    [(HDNanoSyncManager *)self _logIncomingRequest:v5];
    v7 = dispatch_semaphore_create(0);
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__HDNanoSyncManager__syncronouslyHandleIncomingRequest_usingBlock___block_invoke;
    block[3] = &unk_278617468;
    block[4] = self;
    v15 = v5;
    v9 = v6;
    v16 = v7;
    v17 = v9;
    v10 = v7;
    dispatch_sync(queue, block);
    dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  }
}

void __59__HDNanoSyncManager_messageCenterDidReceiveChangesRequest___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v58 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a2;
  v39 = a3;
  if (!v5)
  {
    v40 = v7;
    goto LABEL_27;
  }

  dispatch_assert_queue_V2(*(v5 + 56));
  if (v6)
  {
    if (v7)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v34 = [MEMORY[0x277CCA890] currentHandler];
    [v34 handleFailureInMethod:sel__queue_receiveChangeRequest_syncStore_completion_ object:v5 file:@"HDNanoSyncManager.m" lineNumber:2484 description:{@"Invalid parameter not satisfying: %@", @"request != nil"}];

    if (v7)
    {
      goto LABEL_4;
    }
  }

  v35 = [MEMORY[0x277CCA890] currentHandler];
  [v35 handleFailureInMethod:sel__queue_receiveChangeRequest_syncStore_completion_ object:v5 file:@"HDNanoSyncManager.m" lineNumber:2485 description:{@"Invalid parameter not satisfying: %@", @"syncStore != nil"}];

LABEL_4:
  HDSetHealthInUseDefaultWithReason(@"Received sync data.");
  v8 = [v6 pbRequest];
  v38 = [v8 changeSet];
  v41 = [v8 status];
  v9 = [v41 statusCode];
  [(HDNanoSyncManager *)v5 persistChildIdentityFromCodable:v8];
  v10 = [v6 fromParticipant];
  v11 = [v10 device];
  v44 = 0;
  v40 = [(HDNanoSyncManager *)v5 _queue_validatedSyncStore:v7 device:v11 message:v8 error:&v44];
  v37 = v44;

  if (!v40)
  {
    _HKInitializeLogging();
    v19 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
      v21 = [v6 idsIdentifier];
      *buf = 138543618;
      *&buf[4] = v21;
      *&buf[12] = 2114;
      *&buf[14] = v37;
      _os_log_impl(&dword_228986000, v20, OS_LOG_TYPE_DEFAULT, "ignoring change request %{public}@: %{public}@", buf, 0x16u);
    }

    v39[2]();
    goto LABEL_26;
  }

  v36 = [(HKDaemonTransaction *)HDDaemonTransaction transactionWithOwner:v5 activityName:@"ReceiveChangeRequest"];
  v12 = v8;
  v13 = v40;
  dispatch_assert_queue_V2(*(v5 + 56));
  v14 = [v12 decodedHealthPairingUUID];
  *buf = 0;
  if (![(HDNanoSyncManager *)v5 _queue_isRestoreCompleteForSyncStore:v13 error:buf])
  {
    v17 = @"restore incomplete";
    goto LABEL_14;
  }

  if (([v12 hasChangeSet] & 1) != 0 || objc_msgSend(v12, "hasStatus"))
  {
    v15 = [v13 obliteratedDatabaseUUIDs];
    v16 = [v15 containsObject:v14];

    if (v16)
    {
      v17 = @"remote requires obliteration";
      v18 = 3;
      goto LABEL_15;
    }

    if ([v13 validatePairingUUIDsWithIncomingMessage:v12])
    {
      v17 = 0;
      v18 = 1;
      goto LABEL_15;
    }

    v17 = @"invalid pairing UUIDs";
LABEL_14:
    v18 = 2;
    goto LABEL_15;
  }

  v18 = 0;
  v17 = @"missing changeset and status content";
LABEL_15:

  v22 = v17;
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x2020000000;
  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v23 = 3;
    }

    else
    {
      v23 = 6;
    }

    goto LABEL_22;
  }

  if (!v18)
  {
    v23 = 0;
LABEL_22:
    v43 = v23;
    _HKInitializeLogging();
    v26 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v33 = [v6 idsIdentifier];
      *buf = 138543618;
      *&buf[4] = v33;
      *&buf[12] = 2114;
      *&buf[14] = v22;
      _os_log_error_impl(&dword_228986000, v26, OS_LOG_TYPE_ERROR, "will not apply change request %{public}@: %{public}@", buf, 0x16u);
    }

    v25 = v9;
    v24 = 0;
    goto LABEL_25;
  }

  v43 = 1;
  v24 = [(HDNanoSyncManager *)v5 _queue_eligibleInactiveSyncStores];
  v25 = v9;
LABEL_25:
  v27 = *(v5 + 64);
  *buf = MEMORY[0x277D85DD0];
  *&buf[8] = 3221225472;
  *&buf[16] = __70__HDNanoSyncManager__queue_receiveChangeRequest_syncStore_completion___block_invoke;
  v46 = &unk_278617758;
  v47 = v5;
  v56 = v18;
  v48 = v38;
  v49 = v13;
  v28 = v6;
  v55 = v42;
  v50 = v28;
  v51 = v24;
  v29 = v41;
  v57 = v25;
  v52 = v29;
  v53 = v36;
  v54 = v39;
  v30 = v36;
  v31 = v24;
  dispatch_async(v27, buf);

  _Block_object_dispose(v42, 8);
LABEL_26:

LABEL_27:
  v32 = *MEMORY[0x277D85DE8];
}

- (void)messageCenterDidReceiveChangesResponse:(id)response
{
  responseCopy = response;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__HDNanoSyncManager_messageCenterDidReceiveChangesResponse___block_invoke;
  v6[3] = &unk_2786174B8;
  v6[4] = self;
  v7 = responseCopy;
  v5 = responseCopy;
  [(HDNanoSyncManager *)self _handleIncomingResponse:v5 usingBlock:v6];
}

void __60__HDNanoSyncManager_messageCenterDidReceiveChangesResponse___block_invoke(uint64_t a1, void *a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = v5;
  if (!v3)
  {
    v12 = v5;
    goto LABEL_26;
  }

  dispatch_assert_queue_V2(*(v3 + 56));
  if (v4)
  {
    if (v6)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v36 = [MEMORY[0x277CCA890] currentHandler];
    [v36 handleFailureInMethod:sel__queue_receiveChangeResponse_syncStore_ object:v3 file:@"HDNanoSyncManager.m" lineNumber:2724 description:{@"Invalid parameter not satisfying: %@", @"response != nil"}];

    if (v6)
    {
      goto LABEL_4;
    }
  }

  v37 = [MEMORY[0x277CCA890] currentHandler];
  [v37 handleFailureInMethod:sel__queue_receiveChangeResponse_syncStore_ object:v3 file:@"HDNanoSyncManager.m" lineNumber:2725 description:{@"Invalid parameter not satisfying: %@", @"syncStore != nil"}];

LABEL_4:
  v7 = [v4 pbResponse];
  v8 = [v7 status];
  v9 = [v8 statusCode];
  [(HDNanoSyncManager *)v3 persistChildIdentityFromCodable:v7];
  v10 = [v4 fromParticipant];
  v11 = [v10 device];
  v40 = 0;
  v12 = [(HDNanoSyncManager *)v3 _queue_validatedSyncStore:v6 device:v11 message:v7 error:&v40];
  v13 = v40;

  if (!v12)
  {
    _HKInitializeLogging();
    v20 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v21 = v20;
      v22 = [v4 idsIdentifier];
      *buf = 138543618;
      *&buf[4] = v22;
      *&buf[12] = 2114;
      *&buf[14] = v13;
      _os_log_impl(&dword_228986000, v21, OS_LOG_TYPE_DEFAULT, "ignoring change response %{public}@: %{public}@", buf, 0x16u);
    }

    goto LABEL_25;
  }

  v39 = v13;
  v38 = [(HKDaemonTransaction *)HDDaemonTransaction transactionWithOwner:v3 activityName:@"ReceiveChangeResponse"];
  v14 = v7;
  v15 = v12;
  dispatch_assert_queue_V2(*(v3 + 56));
  *buf = 0;
  v16 = [(HDNanoSyncManager *)v3 _queue_isRestoreCompleteForSyncStore:v15 error:buf];
  v17 = *buf;
  v18 = v17;
  if ((v16 & 1) == 0)
  {
    v23 = [v17 description];
    goto LABEL_16;
  }

  if (![v14 hasStatus])
  {
    v19 = @"missing status content";
    goto LABEL_19;
  }

  if (v9 <= 2)
  {
    if ((v9 - 1) < 2)
    {
      if ([v15 validatePairingUUIDsWithIncomingMessage:v14])
      {

        v29 = *(v3 + 64);
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __60__HDNanoSyncManager__queue_receiveChangeResponse_syncStore___block_invoke;
        v42 = &unk_278617780;
        v47 = v9;
        v43 = v3;
        v44 = v8;
        v45 = v15;
        v27 = v38;
        v46 = v38;
        dispatch_async(v29, buf);

        v25 = 0;
        v13 = v39;
        goto LABEL_24;
      }

      v19 = @"invalid pairing UUIDs";
      goto LABEL_19;
    }

    if (v9)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  if ((v9 - 4) < 2)
  {
LABEL_31:
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"unhandled status code %d", v9];
LABEL_16:
    v19 = v23;
    if (!v23)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v9 == 3)
  {

    WeakRetained = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Remote requested reactivation"];
    [(HDNanoSyncManager *)v3 _queue_transitionToRestoreIncompleteWithSyncStore:v15 error:WeakRetained];
    goto LABEL_38;
  }

  if (v9 != 6)
  {
LABEL_32:

    v19 = 0;
LABEL_21:
    v25 = v19;
    _HKInitializeLogging();
    v26 = *MEMORY[0x277CCC328];
    v13 = v39;
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v30 = v26;
      v31 = [v4 idsIdentifier];
      *buf = 138543618;
      *&buf[4] = v31;
      *&buf[12] = 2114;
      *&buf[14] = v25;
      _os_log_error_impl(&dword_228986000, v30, OS_LOG_TYPE_ERROR, "ignoring status response %{public}@: %{public}@", buf, 0x16u);
    }

    goto LABEL_23;
  }

  if (*(v3 + 8))
  {
    v19 = @"illegal obliteration request";
LABEL_19:
    v24 = v19;
LABEL_20:

    goto LABEL_21;
  }

  _HKInitializeLogging();
  v33 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v34 = v33;
    v35 = [v4 idsIdentifier];
    *buf = 138543362;
    *&buf[4] = v35;
    _os_log_impl(&dword_228986000, v34, OS_LOG_TYPE_DEFAULT, "Obliterating in response to request %{public}@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((v3 + 48));
  [WeakRetained obliterateAndTerminateWithOptions:1 reason:@"Requested by NanoSync remote" completion:0];
LABEL_38:

  v25 = 0;
  v13 = v39;
LABEL_23:
  v27 = v38;
  [v38 invalidate];
LABEL_24:

LABEL_25:
LABEL_26:

  v28 = *MEMORY[0x277D85DE8];
}

- (void)messageCenterChangesError:(id)error
{
  errorCopy = error;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__HDNanoSyncManager_messageCenterChangesError___block_invoke;
  v6[3] = &unk_2786174B8;
  v7 = errorCopy;
  selfCopy = self;
  v5 = errorCopy;
  [(HDNanoSyncManager *)self _handleOutgoingMessageError:v5 usingBlock:v6];
}

void __47__HDNanoSyncManager_messageCenterChangesError___block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v30 = a2;
  v4 = [v3 hd_isFromRequest];
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (v4)
  {
    v7 = v5;
    v8 = v30;
    if (!v6)
    {
      goto LABEL_20;
    }

    dispatch_assert_queue_V2(*(v6 + 56));
    if (![v7 hd_isResponseTimeout])
    {
      v23 = [v7 hd_persistentMessage];
      _HKInitializeLogging();
      v24 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        v25 = v24;
        v26 = [v7 hd_messageIDSIdentifier];
        v27 = [v23 nanoSyncDescription];
        *buf = 138543618;
        *&buf[4] = v26;
        *&buf[12] = 2114;
        *&buf[14] = v27;
        _os_log_impl(&dword_228986000, v25, OS_LOG_TYPE_DEFAULT, "resetting anchors for failed change request %{public}@: %{public}@", buf, 0x16u);
      }

      v28 = *(v6 + 64);
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __74__HDNanoSyncManager__queue_changeRequestDidFailToSendWithError_syncStore___block_invoke;
      v32 = &unk_278613830;
      v33 = v6;
      v34 = v23;
      v35 = v8;
      v10 = v23;
      dispatch_async(v28, buf);

      goto LABEL_19;
    }

    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC328];
    if (!os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    v10 = v9;
    v11 = [v7 hd_messageIDSIdentifier];
    *buf = 138543362;
    *&buf[4] = v11;
    _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "timeout waiting for response to change request %{public}@", buf, 0xCu);
  }

  else
  {
    v7 = v5;
    v8 = v30;
    if (!v6)
    {
      goto LABEL_20;
    }

    dispatch_assert_queue_V2(*(v6 + 56));
    v12 = [v7 hd_persistentMessage];
    v10 = [v12 status];
    v13 = [v10 statusCode];
    v14 = MEMORY[0x277CCC328];
    if (v13 == 2 && ([v8 needsSyncOnUnlock] & 1) == 0)
    {
      _HKInitializeLogging();
      v15 = *v14;
      if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v15;
        v17 = [v7 hd_messageIDSIdentifier];
        *buf = 138543362;
        *&buf[4] = v17;
        _os_log_impl(&dword_228986000, v16, OS_LOG_TYPE_DEFAULT, "failed to send Resend response %{public}@; will attempt to send at next unlock", buf, 0xCu);
      }

      [v8 setNeedsSyncOnUnlock:1];
    }

    _HKInitializeLogging();
    v18 = *v14;
    if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v18;
      v20 = [v7 hd_messageIDSIdentifier];
      v21 = [v12 nanoSyncDescription];
      *buf = 138543618;
      *&buf[4] = v20;
      *&buf[12] = 2114;
      *&buf[14] = v21;
      _os_log_impl(&dword_228986000, v19, OS_LOG_TYPE_DEFAULT, "resetting anchors for failed change request %{public}@: %{public}@", buf, 0x16u);
    }

    v22 = *(v6 + 64);
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __75__HDNanoSyncManager__queue_changeResponseDidFailToSendWithError_syncStore___block_invoke;
    v32 = &unk_278613830;
    v33 = v6;
    v34 = v12;
    v35 = v8;
    v11 = v12;
    dispatch_async(v22, buf);
  }

LABEL_19:
LABEL_20:

  v29 = *MEMORY[0x277D85DE8];
}

- (void)messageCenterDidReceiveAuthorizationRequest:(id)request
{
  requestCopy = request;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__HDNanoSyncManager_messageCenterDidReceiveAuthorizationRequest___block_invoke;
  v6[3] = &unk_2786174B8;
  v6[4] = self;
  v7 = requestCopy;
  v5 = requestCopy;
  [(HDNanoSyncManager *)self _handleIncomingRequest:v5 usingBlock:v6];
}

void __65__HDNanoSyncManager_messageCenterDidReceiveAuthorizationRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  if (!v3)
  {
    goto LABEL_8;
  }

  dispatch_assert_queue_V2(*(v3 + 56));
  if (!v4)
  {
    v25 = [MEMORY[0x277CCA890] currentHandler];
    [v25 handleFailureInMethod:sel__queue_receiveAuthorizationRequest_syncStore_ object:v3 file:@"HDNanoSyncManager.m" lineNumber:4171 description:{@"Invalid parameter not satisfying: %@", @"request != nil"}];

    if (v5)
    {
      goto LABEL_4;
    }

LABEL_10:
    v26 = [MEMORY[0x277CCA890] currentHandler];
    [v26 handleFailureInMethod:sel__queue_receiveAuthorizationRequest_syncStore_ object:v3 file:@"HDNanoSyncManager.m" lineNumber:4172 description:{@"Invalid parameter not satisfying: %@", @"syncStore != nil"}];

    goto LABEL_4;
  }

  if (!v5)
  {
    goto LABEL_10;
  }

LABEL_4:
  v6 = [v4 pbRequest];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__HDNanoSyncManager__queue_receiveAuthorizationRequest_syncStore___block_invoke;
  aBlock[3] = &unk_278617A20;
  aBlock[4] = v3;
  v7 = v6;
  v42 = v7;
  v8 = v5;
  v43 = v8;
  v9 = _Block_copy(aBlock);
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __66__HDNanoSyncManager__queue_receiveAuthorizationRequest_syncStore___block_invoke_2;
  v36[3] = &unk_278617A48;
  v37 = v4;
  v10 = v7;
  v38 = v10;
  v39 = v3;
  v40 = v8;
  v11 = _Block_copy(v36);
  v12 = [v10 appBundleIdentifier];
  v13 = v12;
  if (v12)
  {
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __66__HDNanoSyncManager__queue_receiveAuthorizationRequest_syncStore___block_invoke_2_916;
    v30[3] = &unk_278617A70;
    v27 = v12;
    v31 = v27;
    v32 = v3;
    v14 = v9;
    v33 = v14;
    v34 = v11;
    v35 = sel__queue_receiveAuthorizationRequest_syncStore_;
    v15 = _Block_copy(v30);
    WeakRetained = objc_loadWeakRetained((v3 + 48));
    [WeakRetained authorizationManager];
    v17 = v29 = v5;
    [v10 decodedWriteTypes];
    v28 = v13;
    v19 = v18 = v9;
    [v10 decodedReadTypes];
    v20 = v10;
    v21 = v11;
    v23 = v22 = v4;
    v24 = [v17 enqueueAuthorizationRequestForBundleIdentifier:v27 writeTypes:v19 readTypes:v23 authorizationNeededHandler:v15 completion:v14];

    v4 = v22;
    v11 = v21;
    v10 = v20;

    v9 = v18;
    v13 = v28;

    v5 = v29;
  }

  else
  {
    (*(v11 + 2))(v11, 0, 0, 0);
  }

LABEL_8:
}

- (void)messageCenterDidReceiveAuthorizationResponse:(id)response
{
  responseCopy = response;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__HDNanoSyncManager_messageCenterDidReceiveAuthorizationResponse___block_invoke;
  v6[3] = &unk_2786174B8;
  v6[4] = self;
  v7 = responseCopy;
  v5 = responseCopy;
  [(HDNanoSyncManager *)self _handleIncomingResponse:v5 usingBlock:v6];
}

void __66__HDNanoSyncManager_messageCenterDidReceiveAuthorizationResponse___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  if (!v3)
  {
    goto LABEL_18;
  }

  dispatch_assert_queue_V2(*(v3 + 56));
  if (!v4)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:sel__queue_receiveAuthorizationResponse_syncStore_ object:v3 file:@"HDNanoSyncManager.m" lineNumber:4275 description:{@"Invalid parameter not satisfying: %@", @"response != nil"}];

    if (v5)
    {
      goto LABEL_4;
    }

LABEL_20:
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:sel__queue_receiveAuthorizationResponse_syncStore_ object:v3 file:@"HDNanoSyncManager.m" lineNumber:4276 description:{@"Invalid parameter not satisfying: %@", @"syncStore != nil"}];

    goto LABEL_4;
  }

  if (!v5)
  {
    goto LABEL_20;
  }

LABEL_4:
  v6 = [v4 requestPersistentUserInfo];
  v7 = [v6 objectForKeyedSubscript:@"auth-identifier"];
  if (v7)
  {
    v8 = [v5 pendingRequestContextForUUID:v7];
    if (v8)
    {
      v9 = [v4 pbResponse];
      v19 = [v9 shouldPrompt];
      v10 = [v9 errorDescription];
      v11 = [v9 hostAppName];
      _HKInitializeLogging();
      v12 = HKLogAuthorization();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);

      if (v13)
      {
        v14 = HKLogAuthorization();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412802;
          *&buf[4] = v11;
          *&buf[12] = 1024;
          *&buf[14] = v19;
          *&buf[18] = 2114;
          *&buf[20] = v10;
          _os_log_debug_impl(&dword_228986000, v14, OS_LOG_TYPE_DEBUG, "Received response to authorization request; host app is %@ and should prompt is %d; error: %{public}@", buf, 0x1Cu);
        }
      }

      if (v10)
      {
        v15 = [MEMORY[0x277CCA9B8] hk_error:5 description:v10];
      }

      else
      {
        v15 = 0;
      }

      if (v8[2])
      {
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __67__HDNanoSyncManager__queue_receiveAuthorizationResponse_syncStore___block_invoke;
        *&buf[24] = &unk_278617A98;
        v21 = v8;
        v24 = v19;
        v22 = v11;
        v23 = v15;
        HKDispatchAsyncOnGlobalConcurrentQueue();
      }
    }
  }

LABEL_18:
  v16 = *MEMORY[0x277D85DE8];
}

- (void)messageCenterDidReceiveAuthorizationError:(id)error
{
  errorCopy = error;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__HDNanoSyncManager_messageCenterDidReceiveAuthorizationError___block_invoke;
  v6[3] = &unk_2786174B8;
  v7 = errorCopy;
  selfCopy = self;
  v5 = errorCopy;
  [(HDNanoSyncManager *)self _handleOutgoingMessageError:v5 usingBlock:v6];
}

void __63__HDNanoSyncManager_messageCenterDidReceiveAuthorizationError___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v12 = a2;
  if ([*(a1 + 32) hd_isFromRequest])
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 32);
    v5 = v12;
    if (v3)
    {
      dispatch_assert_queue_V2(*(v3 + 56));
      _HKInitializeLogging();
      v6 = HKLogAuthorization();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v4;
        _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "Error sending authorization request: %{public}@", &buf, 0xCu);
      }

      v7 = [v4 hd_persistentUserInfo];
      v8 = [v7 objectForKeyedSubscript:@"auth-identifier"];
      if (v8)
      {
        v9 = [v5 pendingRequestContextForUUID:v8];
        v10 = v9;
        if (v9)
        {
          if (v9[2])
          {
            *&buf = MEMORY[0x277D85DD0];
            *(&buf + 1) = 3221225472;
            v16 = __81__HDNanoSyncManager__queue_authorizationRequestDidFailToSendWithError_syncStore___block_invoke;
            v17 = &unk_278613920;
            v18 = v9;
            v19 = v4;
            HKDispatchAsyncOnGlobalConcurrentQueue();
          }

          if (v10[3])
          {
            v13 = v10;
            v14 = v4;
            HKDispatchAsyncOnGlobalConcurrentQueue();
          }

          [v5 removePendingRequestContextForUUID:v8];
        }
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)messageCenterDidReceiveAuthorizationCompleteRequest:(id)request
{
  requestCopy = request;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __73__HDNanoSyncManager_messageCenterDidReceiveAuthorizationCompleteRequest___block_invoke;
  v6[3] = &unk_2786174B8;
  v6[4] = self;
  v7 = requestCopy;
  v5 = requestCopy;
  [(HDNanoSyncManager *)self _handleIncomingRequest:v5 usingBlock:v6];
}

void __73__HDNanoSyncManager_messageCenterDidReceiveAuthorizationCompleteRequest___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  if (v3)
  {
    dispatch_assert_queue_V2(*(v3 + 56));
    if (v4)
    {
      if (v5)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v23 = [MEMORY[0x277CCA890] currentHandler];
      [v23 handleFailureInMethod:sel__queue_receiveAuthorizationCompleteRequest_syncStore_ object:v3 file:@"HDNanoSyncManager.m" lineNumber:4339 description:{@"Invalid parameter not satisfying: %@", @"request != nil"}];

      if (v5)
      {
        goto LABEL_4;
      }
    }

    v24 = [MEMORY[0x277CCA890] currentHandler];
    [v24 handleFailureInMethod:sel__queue_receiveAuthorizationCompleteRequest_syncStore_ object:v3 file:@"HDNanoSyncManager.m" lineNumber:4340 description:{@"Invalid parameter not satisfying: %@", @"syncStore != nil"}];

LABEL_4:
    v6 = [v4 pbRequest];
    v7 = MEMORY[0x277CCAD78];
    v8 = [v6 requestIdentifier];
    v9 = [v7 hk_UUIDWithData:v8];

    v10 = [v5 pendingRequestContextForUUID:v9];
    if (!v10)
    {
      _HKInitializeLogging();
      v17 = HKLogAuthorization();
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);

      if (!v18)
      {
LABEL_26:

        goto LABEL_27;
      }

      v13 = HKLogAuthorization();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        *&buf[4] = v9;
        _os_log_debug_impl(&dword_228986000, v13, OS_LOG_TYPE_DEBUG, "Received authorization complete from companion for request UUID: %@, but no request context was found; dropping", buf, 0xCu);
      }

LABEL_25:

      goto LABEL_26;
    }

    v11 = [v6 errorDescription];
    if (v11 && ([MEMORY[0x277CCA9B8] hk_error:5 description:v11], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v13 = v12;
      _HKInitializeLogging();
      v14 = HKLogAuthorization();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *&buf[4] = v9;
        *&buf[12] = 2114;
        *&buf[14] = v11;
        _os_log_error_impl(&dword_228986000, v14, OS_LOG_TYPE_ERROR, "Received authorization error from companion for request UUID: %@; error: %{public}@", buf, 0x16u);
      }
    }

    else
    {
      _HKInitializeLogging();
      v15 = HKLogAuthorization();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);

      if (!v16)
      {
        v13 = 0;
LABEL_18:
        if (v10[3])
        {
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __74__HDNanoSyncManager__queue_receiveAuthorizationCompleteRequest_syncStore___block_invoke;
          v26 = &unk_278613920;
          v27 = v10;
          v28 = v13;
          HKDispatchAsyncOnGlobalConcurrentQueue();

          v19 = v27;
        }

        else
        {
          _HKInitializeLogging();
          v20 = HKLogAuthorization();
          v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);

          if (!v21)
          {
LABEL_24:
            [v5 removePendingRequestContextForUUID:v9];

            goto LABEL_25;
          }

          v19 = HKLogAuthorization();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_228986000, v19, OS_LOG_TYPE_DEBUG, "No completion handler found for authorization complete message; dropping.", buf, 2u);
          }
        }

        goto LABEL_24;
      }

      v14 = HKLogAuthorization();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        *&buf[4] = v9;
        _os_log_debug_impl(&dword_228986000, v14, OS_LOG_TYPE_DEBUG, "Received authorization complete from companion for request UUID: %@", buf, 0xCu);
      }

      v13 = 0;
    }

    goto LABEL_18;
  }

LABEL_27:

  v22 = *MEMORY[0x277D85DE8];
}

- (void)messageCenterDidReceiveRoutineRequest:(id)request
{
  requestCopy = request;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__HDNanoSyncManager_messageCenterDidReceiveRoutineRequest___block_invoke;
  v6[3] = &unk_2786174B8;
  v6[4] = self;
  v7 = requestCopy;
  v5 = requestCopy;
  [(HDNanoSyncManager *)self _handleIncomingRequest:v5 usingBlock:v6];
}

void __59__HDNanoSyncManager_messageCenterDidReceiveRoutineRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v14 = *(a1 + 40);
  if (v3)
  {
    v4 = *(v3 + 56);
    v5 = a2;
    dispatch_assert_queue_V2(v4);
    v6 = v14;
    if (v14)
    {
      if (v5)
      {
LABEL_4:
        v7 = v6;
        v8 = objc_alloc_init(HDCodableRoutineResponseMessage);
        v9 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"request not supported"];
        v10 = [v9 localizedDescription];
        [(HDCodableRoutineResponseMessage *)v8 setErrorDescription:v10];

        v11 = [v7 response];

        [v11 setPbResponse:v8];
        [(HDNanoSyncManager *)v3 _queue_sendResponse:v11 syncStore:v5];

        goto LABEL_5;
      }
    }

    else
    {
      v12 = [MEMORY[0x277CCA890] currentHandler];
      [v12 handleFailureInMethod:sel__queue_receiveRoutineRequest_syncStore_ object:v3 file:@"HDNanoSyncManager.m" lineNumber:3176 description:{@"Invalid parameter not satisfying: %@", @"request != nil"}];

      v6 = 0;
      if (v5)
      {
        goto LABEL_4;
      }
    }

    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:sel__queue_receiveRoutineRequest_syncStore_ object:v3 file:@"HDNanoSyncManager.m" lineNumber:3177 description:{@"Invalid parameter not satisfying: %@", @"syncStore != nil"}];

    v6 = v14;
    goto LABEL_4;
  }

LABEL_5:
}

- (void)messageCenterDidReceiveStartWorkoutAppRequest:(id)request
{
  requestCopy = request;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__HDNanoSyncManager_messageCenterDidReceiveStartWorkoutAppRequest___block_invoke;
  v6[3] = &unk_2786174B8;
  v6[4] = self;
  v7 = requestCopy;
  v5 = requestCopy;
  [(HDNanoSyncManager *)self _handleIncomingRequest:v5 usingBlock:v6];
}

void __67__HDNanoSyncManager_messageCenterDidReceiveStartWorkoutAppRequest___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  if (v3)
  {
    dispatch_assert_queue_V2(*(v3 + 56));
    v6 = [v4 pbRequest];
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEBUG))
    {
      v14 = v7;
      v15 = [v6 requestIdentifier];
      LODWORD(aBlock) = 138412290;
      *(&aBlock + 4) = v15;
      _os_log_debug_impl(&dword_228986000, v14, OS_LOG_TYPE_DEBUG, "Received start workout app request %@", &aBlock, 0xCu);
    }

    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x3032000000;
    v16[3] = __Block_byref_object_copy__30;
    v16[4] = __Block_byref_object_dispose__30;
    v8 = v4;
    v17 = v8;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 3221225472;
    v19 = __68__HDNanoSyncManager__queue_recieveStartWorkoutAppRequest_syncStore___block_invoke;
    v20 = &unk_278617848;
    v9 = v6;
    v21 = v9;
    v22 = v8;
    v23 = v3;
    v24 = v5;
    v25 = v16;
    v10 = _Block_copy(&aBlock);
    WeakRetained = objc_loadWeakRetained((v3 + 48));
    v12 = [WeakRetained workoutManager];
    [v12 receivedStartWorkoutAppRequest:v9 completion:v10];

    _Block_object_dispose(v16, 8);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)messageCenterDidReceiveStartWorkoutAppResponse:(id)response
{
  responseCopy = response;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__HDNanoSyncManager_messageCenterDidReceiveStartWorkoutAppResponse___block_invoke;
  v6[3] = &unk_2786174B8;
  v6[4] = self;
  v7 = responseCopy;
  v5 = responseCopy;
  [(HDNanoSyncManager *)self _handleIncomingResponse:v5 usingBlock:v6];
}

void __68__HDNanoSyncManager_messageCenterDidReceiveStartWorkoutAppResponse___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  if (v2)
  {
    v5 = *(v2 + 56);
    v6 = v3;
    dispatch_assert_queue_V2(v5);
    v7 = [v6 requestPersistentUserInfo];
    v8 = [v6 pbResponse];

    if ([v8 hasLaunchError])
    {
      v9 = [v8 launchError];
      v10 = [MEMORY[0x277CCA9B8] hk_errorWithCodableError:v9];
    }

    else
    {
      v10 = 0;
    }

    _HKInitializeLogging();
    v11 = MEMORY[0x277CCC330];
    v12 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEBUG))
    {
      v22 = v12;
      v23 = [v8 requestIdentifier];
      *v24 = 138412546;
      *&v24[4] = v23;
      *&v24[12] = 2114;
      *&v24[14] = v10;
      _os_log_debug_impl(&dword_228986000, v22, OS_LOG_TYPE_DEBUG, "Received response to start workout app request %@, error: %{public}@", v24, 0x16u);
    }

    v13 = [v7 objectForKeyedSubscript:@"workout-launch"];
    if (v13)
    {
      v14 = [v4 pendingRequestContextForUUID:v13];
      v15 = v14;
      if (v14)
      {
        v16 = *(v14 + 16);
        v17 = v16;
        if (v16)
        {
          *v24 = MEMORY[0x277D85DD0];
          *&v24[8] = 3221225472;
          *&v24[16] = __69__HDNanoSyncManager__queue_recieveStartWorkoutAppResponse_syncStore___block_invoke;
          v25 = &unk_278616488;
          v28 = v16;
          v26 = v8;
          v27 = v10;
          HKDispatchAsyncOnGlobalConcurrentQueue();
        }
      }

      else
      {
        _HKInitializeLogging();
        v19 = *v11;
        if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
LABEL_16:

          goto LABEL_17;
        }

        v17 = v19;
        v20 = [v13 UUIDString];
        *v24 = 138412290;
        *&v24[4] = v20;
        _os_log_impl(&dword_228986000, v17, OS_LOG_TYPE_INFO, "Ignoring response: no context for %@", v24, 0xCu);
      }
    }

    else
    {
      _HKInitializeLogging();
      v18 = *v11;
      if (!os_log_type_enabled(*v11, OS_LOG_TYPE_INFO))
      {
LABEL_17:

        goto LABEL_18;
      }

      v15 = v18;
      v17 = [v8 requestIdentifier];
      *v24 = 138412290;
      *&v24[4] = v17;
      _os_log_impl(&dword_228986000, v15, OS_LOG_TYPE_INFO, "Ignoring response: no request identifier for %@", v24, 0xCu);
    }

    goto LABEL_16;
  }

LABEL_18:

  v21 = *MEMORY[0x277D85DE8];
}

- (void)messageCenterDidReceiveStartWorkoutAppError:(id)error
{
  errorCopy = error;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__HDNanoSyncManager_messageCenterDidReceiveStartWorkoutAppError___block_invoke;
  v6[3] = &unk_2786174B8;
  v7 = errorCopy;
  selfCopy = self;
  v5 = errorCopy;
  [(HDNanoSyncManager *)self _handleOutgoingMessageError:v5 usingBlock:v6];
}

void __65__HDNanoSyncManager_messageCenterDidReceiveStartWorkoutAppError___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v15 = a2;
  if ([*(a1 + 32) hd_isFromRequest])
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 32);
    v5 = v15;
    if (v3)
    {
      dispatch_assert_queue_V2(*(v3 + 56));
      v6 = [v4 hd_persistentUserInfo];
      v7 = [v6 objectForKeyedSubscript:@"workout-launch"];
      if (v7)
      {
        v8 = [v5 pendingRequestContextForUUID:v7];
        v9 = v8;
        if (v8)
        {
          v10 = *(v8 + 16);
          v11 = v10;
          if (v10)
          {
            *&buf = MEMORY[0x277D85DD0];
            *(&buf + 1) = 3221225472;
            v17 = __83__HDNanoSyncManager__queue_startWorkoutAppRequestDidFailToSendWithError_syncStore___block_invoke;
            v18 = &unk_278614008;
            v20 = v10;
            v19 = v4;
            HKDispatchAsyncOnGlobalConcurrentQueue();
          }

          [v5 removePendingRequestContextForUUID:v7];
        }

        else
        {
          _HKInitializeLogging();
          v13 = *MEMORY[0x277CCC330];
          if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_INFO))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v7;
            _os_log_impl(&dword_228986000, v13, OS_LOG_TYPE_INFO, "Ignoring error: no context for %@", &buf, 0xCu);
          }
        }
      }

      else
      {
        _HKInitializeLogging();
        v12 = *MEMORY[0x277CCC330];
        if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_INFO))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_INFO, "Ignoring error: no request identifier", &buf, 2u);
        }
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)messageCenterDidReceiveCompanionUserNotificationRequest:(id)request
{
  requestCopy = request;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __77__HDNanoSyncManager_messageCenterDidReceiveCompanionUserNotificationRequest___block_invoke;
  v6[3] = &unk_2786174B8;
  v6[4] = self;
  v7 = requestCopy;
  v5 = requestCopy;
  [(HDNanoSyncManager *)self _handleIncomingRequest:v5 usingBlock:v6];
}

void __77__HDNanoSyncManager_messageCenterDidReceiveCompanionUserNotificationRequest___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  if (v3)
  {
    dispatch_assert_queue_V2(*(v3 + 56));
    v6 = [v4 pbRequest];
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC300];
    if (os_log_type_enabled(*MEMORY[0x277CCC300], OS_LOG_TYPE_DEBUG))
    {
      v14 = v7;
      v15 = [v6 requestIdentifier];
      LODWORD(aBlock) = 138412290;
      *(&aBlock + 4) = v15;
      _os_log_debug_impl(&dword_228986000, v14, OS_LOG_TYPE_DEBUG, "Received display notification request %@", &aBlock, 0xCu);
    }

    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x3032000000;
    v16[3] = __Block_byref_object_copy__30;
    v16[4] = __Block_byref_object_dispose__30;
    v8 = v4;
    v17 = v8;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 3221225472;
    v19 = __78__HDNanoSyncManager__queue_recieveCompanionUserNotificationRequest_syncStore___block_invoke;
    v20 = &unk_278617890;
    v9 = v6;
    v21 = v9;
    v22 = v8;
    v23 = v3;
    v24 = v5;
    v25 = v16;
    v10 = _Block_copy(&aBlock);
    WeakRetained = objc_loadWeakRetained((v3 + 48));
    v12 = [WeakRetained notificationManager];
    [v12 receivedCompanionUserNotificationRequest:v9 completion:v10];

    _Block_object_dispose(v16, 8);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)messageCenterDidReceiveCompanionUserNotificationResponse:(id)response
{
  responseCopy = response;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __78__HDNanoSyncManager_messageCenterDidReceiveCompanionUserNotificationResponse___block_invoke;
  v6[3] = &unk_2786174B8;
  v6[4] = self;
  v7 = responseCopy;
  v5 = responseCopy;
  [(HDNanoSyncManager *)self _handleIncomingResponse:v5 usingBlock:v6];
}

void __78__HDNanoSyncManager_messageCenterDidReceiveCompanionUserNotificationResponse___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  if (v2)
  {
    v5 = *(v2 + 56);
    v6 = v3;
    dispatch_assert_queue_V2(v5);
    v7 = [v6 requestPersistentUserInfo];
    v8 = [v6 pbResponse];

    if ([v8 hasError])
    {
      v9 = [v8 error];
      v10 = [MEMORY[0x277CCA9B8] hk_errorWithCodableError:v9];
    }

    else
    {
      v10 = 0;
    }

    _HKInitializeLogging();
    v11 = MEMORY[0x277CCC300];
    v12 = *MEMORY[0x277CCC300];
    if (os_log_type_enabled(*MEMORY[0x277CCC300], OS_LOG_TYPE_DEBUG))
    {
      v22 = v12;
      v23 = [v8 requestIdentifier];
      *v24 = 138412546;
      *&v24[4] = v23;
      *&v24[12] = 2112;
      *&v24[14] = v10;
      _os_log_debug_impl(&dword_228986000, v22, OS_LOG_TYPE_DEBUG, "Received response to display notification request %@, error: %@", v24, 0x16u);
    }

    v13 = [v7 objectForKeyedSubscript:@"companion-user-notification"];
    if (v13)
    {
      v14 = [v4 pendingRequestContextForUUID:v13];
      v15 = v14;
      if (v14)
      {
        v16 = *(v14 + 16);
        v17 = v16;
        if (v16)
        {
          *v24 = MEMORY[0x277D85DD0];
          *&v24[8] = 3221225472;
          *&v24[16] = __79__HDNanoSyncManager__queue_recieveCompanionUserNotificationResponse_syncStore___block_invoke;
          v25 = &unk_278616488;
          v28 = v16;
          v26 = v8;
          v27 = v10;
          HKDispatchAsyncOnGlobalConcurrentQueue();
        }
      }

      else
      {
        _HKInitializeLogging();
        v19 = *v11;
        if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
LABEL_16:

          goto LABEL_17;
        }

        v17 = v19;
        v20 = [v13 UUIDString];
        *v24 = 138412290;
        *&v24[4] = v20;
        _os_log_impl(&dword_228986000, v17, OS_LOG_TYPE_INFO, "Ignoring response: no context for %@", v24, 0xCu);
      }
    }

    else
    {
      _HKInitializeLogging();
      v18 = *v11;
      if (!os_log_type_enabled(*v11, OS_LOG_TYPE_INFO))
      {
LABEL_17:

        goto LABEL_18;
      }

      v15 = v18;
      v17 = [v8 requestIdentifier];
      *v24 = 138412290;
      *&v24[4] = v17;
      _os_log_impl(&dword_228986000, v15, OS_LOG_TYPE_INFO, "Ignoring response: no request identifier for %@", v24, 0xCu);
    }

    goto LABEL_16;
  }

LABEL_18:

  v21 = *MEMORY[0x277D85DE8];
}

- (void)messageCenterDidReceiveCompanionUserNotificationError:(id)error
{
  errorCopy = error;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __75__HDNanoSyncManager_messageCenterDidReceiveCompanionUserNotificationError___block_invoke;
  v6[3] = &unk_2786174B8;
  v7 = errorCopy;
  selfCopy = self;
  v5 = errorCopy;
  [(HDNanoSyncManager *)self _handleOutgoingMessageError:v5 usingBlock:v6];
}

void __75__HDNanoSyncManager_messageCenterDidReceiveCompanionUserNotificationError___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v15 = a2;
  if ([*(a1 + 32) hd_isFromRequest])
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 32);
    v5 = v15;
    if (v3)
    {
      dispatch_assert_queue_V2(*(v3 + 56));
      v6 = [v4 hd_persistentUserInfo];
      v7 = [v6 objectForKeyedSubscript:@"companion-user-notification"];
      if (v7)
      {
        v8 = [v5 pendingRequestContextForUUID:v7];
        v9 = v8;
        if (v8)
        {
          v10 = *(v8 + 16);
          v11 = v10;
          if (v10)
          {
            *&buf = MEMORY[0x277D85DD0];
            *(&buf + 1) = 3221225472;
            v17 = __93__HDNanoSyncManager__queue_companionUserNotificationRequestDidFailToSendWithError_syncStore___block_invoke;
            v18 = &unk_278614008;
            v20 = v10;
            v19 = v4;
            HKDispatchAsyncOnGlobalConcurrentQueue();
          }

          [v5 removePendingRequestContextForUUID:v7];
        }

        else
        {
          _HKInitializeLogging();
          v13 = *MEMORY[0x277CCC300];
          if (os_log_type_enabled(*MEMORY[0x277CCC300], OS_LOG_TYPE_INFO))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v7;
            _os_log_impl(&dword_228986000, v13, OS_LOG_TYPE_INFO, "Ignoring error: no context for %@", &buf, 0xCu);
          }
        }
      }

      else
      {
        _HKInitializeLogging();
        v12 = *MEMORY[0x277CCC300];
        if (os_log_type_enabled(*MEMORY[0x277CCC300], OS_LOG_TYPE_INFO))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_INFO, "Ignoring error: no request identifier", &buf, 2u);
        }
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)messageCenterDidReceiveNotificationInstructionRequest:(id)request
{
  requestCopy = request;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __75__HDNanoSyncManager_messageCenterDidReceiveNotificationInstructionRequest___block_invoke;
  v6[3] = &unk_2786174B8;
  v6[4] = self;
  v7 = requestCopy;
  v5 = requestCopy;
  [(HDNanoSyncManager *)self _handleIncomingRequest:v5 usingBlock:v6];
}

void __75__HDNanoSyncManager_messageCenterDidReceiveNotificationInstructionRequest___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v1)
  {
    dispatch_assert_queue_V2(*(v1 + 56));
    v3 = [v2 pbRequest];
    _HKInitializeLogging();
    v4 = *MEMORY[0x277CCC300];
    if (os_log_type_enabled(*MEMORY[0x277CCC300], OS_LOG_TYPE_DEBUG))
    {
      v19 = v4;
      v20 = objc_opt_class();
      v21 = v20;
      v22 = [v3 requestIdentifier];
      *v23 = 138543618;
      *&v23[4] = v20;
      *&v23[12] = 2112;
      *&v23[14] = v22;
      _os_log_debug_impl(&dword_228986000, v19, OS_LOG_TYPE_DEBUG, "[%{public}@] Received notification instruction request %@", v23, 0x16u);
    }

    v5 = [MEMORY[0x277CBEAA8] now];
    v6 = [v2 fromParticipant];
    v7 = [v6 device];
    v8 = [v7 hd_shortDescription];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v11 = [v2 fromParticipant];
      v12 = [v11 deviceIdentifier];
      v13 = v12;
      v14 = @"Unknown fromParticipant";
      if (v12)
      {
        v14 = v12;
      }

      v10 = v14;
    }

    WeakRetained = objc_loadWeakRetained((v1 + 48));
    v16 = [WeakRetained notificationSyncManager];
    *v23 = MEMORY[0x277D85DD0];
    *&v23[8] = 3221225472;
    *&v23[16] = __76__HDNanoSyncManager__queue_receiveNotificationInstructionRequest_syncStore___block_invoke;
    v24 = &unk_278616020;
    v25 = v1;
    v26 = v3;
    v17 = v3;
    [v16 nanoSyncManagerDidReceiveNotificationInstructionRequest:v17 receivedDate:v5 sendingDeviceName:v10 completion:v23];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)messageCenterDidReceiveTinkerOptInRequest:(id)request
{
  requestCopy = request;
  [(HDNanoSyncManager *)self _logIncomingRequest:requestCopy];
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__HDNanoSyncManager_messageCenterDidReceiveTinkerOptInRequest___block_invoke;
  v7[3] = &unk_278613920;
  v7[4] = self;
  v8 = requestCopy;
  v6 = requestCopy;
  dispatch_async(queue, v7);
}

void __63__HDNanoSyncManager_messageCenterDidReceiveTinkerOptInRequest___block_invoke(uint64_t a1)
{
  v68 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  [*(*(a1 + 32) + 104) invalidate];
  WeakRetained = objc_loadWeakRetained(*v2 + 6);
  v4 = [v2[1] fromParticipant];
  v5 = [v4 device];
  v6 = [HDNanoSyncStore nanoSyncStoreWithProfile:WeakRetained device:v5 delegate:*v2 tinkerPaired:1];
  v7 = *(*v2 + 13);
  *(*v2 + 13) = v6;

  v8 = *(*v2 + 13);
  _HKInitializeLogging();
  v9 = MEMORY[0x277CCC328];
  v10 = *MEMORY[0x277CCC328];
  v11 = os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v11)
    {
      v12 = *(*(a1 + 32) + 104);
      *buf = 138543362;
      *&buf[4] = v12;
      _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "[sharing-setup] Created _activeTinkerSyncStore for new pairing request %{public}@ (#t0)", buf, 0xCu);
    }

    v13 = *(a1 + 32);
    v14 = *(v13 + 104);
    v15 = *(a1 + 40);
    v16 = v14;
    dispatch_assert_queue_V2(*(v13 + 56));
    if (!v15)
    {
      v54 = [MEMORY[0x277CCA890] currentHandler];
      [v54 handleFailureInMethod:sel__queue_receiveTinkerOptInRequest_syncStore_ object:v13 file:@"HDNanoSyncManager.m" lineNumber:3509 description:{@"Invalid parameter not satisfying: %@", @"request != nil"}];
    }

    if (!v16)
    {
      v55 = [MEMORY[0x277CCA890] currentHandler];
      [v55 handleFailureInMethod:sel__queue_receiveTinkerOptInRequest_syncStore_ object:v13 file:@"HDNanoSyncManager.m" lineNumber:3510 description:{@"Invalid parameter not satisfying: %@", @"syncStore != nil"}];
    }

    v17 = [v15 pbRequest];
    _HKInitializeLogging();
    v18 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v18;
      v20 = [v17 requestIdentifier];
      v21 = [v16 nanoRegistryUUID];
      v22 = [v16 device];
      *buf = 138544130;
      *&buf[4] = v13;
      *&buf[12] = 2114;
      *&buf[14] = v20;
      *&buf[22] = 2114;
      v64 = v21;
      LOWORD(v65) = 2114;
      *(&v65 + 2) = v22;
      _os_log_impl(&dword_228986000, v19, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@ Did receive Tinker opt in request from guardian %{public}@, active NR device ID %{public}@, active IDS device %{public}@ (#t0)", buf, 0x2Au);
    }

    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __64__HDNanoSyncManager__queue_receiveTinkerOptInRequest_syncStore___block_invoke;
    v64 = &unk_2786178B8;
    *&v65 = v13;
    v23 = v15;
    *(&v65 + 1) = v23;
    v24 = v17;
    v66 = v24;
    v25 = v16;
    v67 = v25;
    v26 = _Block_copy(buf);
    v27 = objc_loadWeakRetained((v13 + 48));
    v28 = [v27 daemon];

    v29 = [v28 contentProtectionManager];
    LOBYTE(v27) = [v29 isProtectedDataAvailable];

    if (v27)
    {
      if ([v25 isAltAccount])
      {
        v30 = v26;
        dispatch_assert_queue_V2(*(v13 + 56));
        v31 = *(v13 + 112);
        if (v31)
        {
          v32 = [v30 copy];
          v33 = _Block_copy(v32);
          [v31 addObject:v33];
        }

        else
        {
          v40 = objc_alloc(MEMORY[0x277CBEB18]);
          v41 = [v30 copy];
          v42 = [v40 initWithObjects:{v41, 0}];
          v43 = *(v13 + 112);
          *(v13 + 112) = v42;

          objc_initWeak(&location, v13);
          v44 = *(v13 + 56);
          handler[0] = MEMORY[0x277D85DD0];
          handler[1] = 3221225472;
          handler[2] = __75__HDNanoSyncManager__queue_registerForTinkerOptInNotificationWithResponse___block_invoke;
          handler[3] = &unk_278613BF0;
          objc_copyWeak(&v61, &location);
          notify_register_dispatch(*MEMORY[0x277CCCE10], (v13 + 28), v44, handler);
          v45 = *(v13 + 56);
          v58[0] = MEMORY[0x277D85DD0];
          v58[1] = 3221225472;
          v58[2] = __75__HDNanoSyncManager__queue_registerForTinkerOptInNotificationWithResponse___block_invoke_2;
          v58[3] = &unk_278613BF0;
          objc_copyWeak(&v59, &location);
          notify_register_dispatch(*MEMORY[0x277CCCE18], (v13 + 32), v45, v58);
          objc_destroyWeak(&v59);
          objc_destroyWeak(&v61);
          objc_destroyWeak(&location);
        }

        v46 = objc_loadWeakRetained((v13 + 48));
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          v56 = [MEMORY[0x277CCA890] currentHandler];
          v57 = objc_loadWeakRetained((v13 + 48));
          [v56 handleFailureInMethod:sel__queue_receiveTinkerOptInRequest_syncStore_ object:v13 file:@"HDNanoSyncManager.m" lineNumber:3556 description:{@"[sharing-setup] Profile %@ is not an instance of type HDPrimaryProfile (#t0)", v57}];
        }

        v48 = [HDNotificationManager alloc];
        v49 = objc_loadWeakRetained((v13 + 48));
        v39 = [(HDNotificationManager *)v48 initWithProfile:v49 bundle:1];

        v50 = [HDSharedDataOptInNotification alloc];
        v51 = [v24 guardianDisplayName];
        v52 = [(HDSharedDataOptInNotification *)v50 initWithNotificationManager:v39 guardianDisplayName:v51];

        [(HDNanoHealthNotification *)v52 triggerNotification];
      }

      else
      {
        v39 = [MEMORY[0x277CCA9B8] hk_error:100 format:{@"Watch is not in Tinker pairing mode, ignoring opt in request: %@", v23}];
        (*(v26 + 2))(v26, 0, v39);
      }
    }

    else
    {
      _HKInitializeLogging();
      v38 = *v9;
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
      {
        LOWORD(handler[0]) = 0;
        _os_log_error_impl(&dword_228986000, v38, OS_LOG_TYPE_ERROR, "[sharing-setup] Apple Watch is locked, sending setup error to guardian (#t0)", handler, 2u);
      }

      v39 = [MEMORY[0x277CCA9B8] hk_error:6 format:{@"Apple Watch needs to be unlocked for sharing setup, ignoring opt in request: %@", v23}];
      (*(v26 + 2))(v26, 0, v39);
    }
  }

  else if (v11)
  {
    v34 = *(a1 + 40);
    v35 = v10;
    v36 = [v34 fromParticipant];
    v37 = [v36 description];
    *buf = 138543362;
    *&buf[4] = v37;
    _os_log_impl(&dword_228986000, v35, OS_LOG_TYPE_DEFAULT, "[sharing-setup] Unable to create sync store for request from device %{public}@ (#t0)", buf, 0xCu);
  }

  v53 = *MEMORY[0x277D85DE8];
}

- (void)messageCenterDidReceiveTinkerOptInResponse:(id)response
{
  responseCopy = response;
  [(HDNanoSyncManager *)self _logIncomingRequest:responseCopy];
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__HDNanoSyncManager_messageCenterDidReceiveTinkerOptInResponse___block_invoke;
  v7[3] = &unk_278613920;
  v7[4] = self;
  v8 = responseCopy;
  v6 = responseCopy;
  dispatch_async(queue, v7);
}

void __64__HDNanoSyncManager_messageCenterDidReceiveTinkerOptInResponse___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(v2 + 104);
  if (v3)
  {
    goto LABEL_3;
  }

  WeakRetained = objc_loadWeakRetained((v2 + 48));
  v5 = [*(a1 + 40) fromParticipant];
  v6 = [v5 device];
  v7 = [HDNanoSyncStore nanoSyncStoreWithProfile:WeakRetained device:v6 delegate:*(a1 + 32) tinkerPaired:1];
  v8 = *(a1 + 32);
  v9 = *(v8 + 104);
  *(v8 + 104) = v7;

  v2 = *(a1 + 32);
  v3 = *(v2 + 104);
  if (v3)
  {
LABEL_3:
    v10 = *(a1 + 40);
    v11 = v3;
    v12 = *(v2 + 56);
    v13 = v10;
    dispatch_assert_queue_V2(v12);
    if (!v13)
    {
      v36 = [MEMORY[0x277CCA890] currentHandler];
      [v36 handleFailureInMethod:sel__queue_receiveTinkerOptInResponse_syncStore_ object:v2 file:@"HDNanoSyncManager.m" lineNumber:3611 description:{@"Invalid parameter not satisfying: %@", @"response != nil"}];
    }

    v14 = [v13 requestPersistentUserInfo];
    v15 = [v13 pbResponse];

    if ([v15 hasError])
    {
      v16 = [v15 error];
      v17 = [MEMORY[0x277CCA9B8] hk_errorWithCodableError:v16];
    }

    else
    {
      v17 = 0;
    }

    _HKInitializeLogging();
    v18 = MEMORY[0x277CCC328];
    v19 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
      v21 = [v15 requestIdentifier];
      *buf = 138543874;
      *&buf[4] = v2;
      *&buf[12] = 2112;
      *&buf[14] = v21;
      *&buf[22] = 2112;
      v38 = v17;
      _os_log_impl(&dword_228986000, v20, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@ Did receive Tinker opt in response from watch %@, error: %@ (#t0)", buf, 0x20u);
    }

    v22 = [v14 objectForKeyedSubscript:@"tinker-optin"];
    if (v22)
    {
      v23 = [v11 pendingRequestContextForUUID:v22];
      v24 = v23;
      if (v23)
      {
        v25 = *(v23 + 16);
        v26 = v25;
        if (v25)
        {
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __65__HDNanoSyncManager__queue_receiveTinkerOptInResponse_syncStore___block_invoke;
          v38 = &unk_278616488;
          v41 = v25;
          v39 = v15;
          v40 = v17;
          HKDispatchAsyncOnGlobalConcurrentQueue();
        }
      }

      else
      {
        _HKInitializeLogging();
        v28 = *v18;
        if (!os_log_type_enabled(*v18, OS_LOG_TYPE_DEFAULT))
        {
LABEL_19:

          goto LABEL_20;
        }

        v26 = v28;
        v29 = [v22 UUIDString];
        *buf = 138412290;
        *&buf[4] = v29;
        _os_log_impl(&dword_228986000, v26, OS_LOG_TYPE_DEFAULT, "[sharing-setup] Ignoring response: no context for %@ (#t0)", buf, 0xCu);
      }
    }

    else
    {
      _HKInitializeLogging();
      v27 = *v18;
      if (!os_log_type_enabled(*v18, OS_LOG_TYPE_DEFAULT))
      {
LABEL_20:

        goto LABEL_21;
      }

      v24 = v27;
      v26 = [v15 requestIdentifier];
      *buf = 138412290;
      *&buf[4] = v26;
      _os_log_impl(&dword_228986000, v24, OS_LOG_TYPE_DEFAULT, "[sharing-setup] Ignoring response: no request identifier for %@ (#t0)", buf, 0xCu);
    }

    goto LABEL_19;
  }

  _HKInitializeLogging();
  v31 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v32 = *(a1 + 40);
    v33 = v31;
    v34 = [v32 fromParticipant];
    v35 = [v34 description];
    *buf = 138543362;
    *&buf[4] = v35;
    _os_log_impl(&dword_228986000, v33, OS_LOG_TYPE_DEFAULT, "[sharing-setup] Unable to create sync store for response from device %{public}@ (#t0)", buf, 0xCu);
  }

LABEL_21:
  v30 = *MEMORY[0x277D85DE8];
}

- (void)messageCenterDidReceiveTinkerOptInError:(id)error
{
  errorCopy = error;
  [(HDNanoSyncManager *)self _logOutgoingMessageError:errorCopy];
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__HDNanoSyncManager_messageCenterDidReceiveTinkerOptInError___block_invoke;
  v7[3] = &unk_278613920;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_async(queue, v7);
}

void __61__HDNanoSyncManager_messageCenterDidReceiveTinkerOptInError___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 104))
  {
    if ([*(a1 + 40) hd_isFromRequest])
    {
      v2 = *(a1 + 32);
      v3 = *(v2 + 104);
      v4 = *(a1 + 40);
      v5 = v3;
      dispatch_assert_queue_V2(*(v2 + 56));
      _HKInitializeLogging();
      v6 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *v19 = 138543362;
        *&v19[4] = v4;
        _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "[sharing-setup] Error sending health sharing opt in request %{public}@ (#t0)", v19, 0xCu);
      }

      v7 = [v4 hd_persistentUserInfo];
      v8 = [v7 objectForKeyedSubscript:@"tinker-optin"];
      if (v8)
      {
        v9 = [v5 pendingRequestContextForUUID:v8];
        v10 = v9;
        if (v9)
        {
          v11 = *(v9 + 16);
          v12 = v11;
          if (v11)
          {
            *v19 = MEMORY[0x277D85DD0];
            *&v19[8] = 3221225472;
            *&v19[16] = __79__HDNanoSyncManager__queue_tinkerOptInRequestDidFailToSendWithError_syncStore___block_invoke;
            v20 = &unk_278614008;
            v22 = v11;
            v21 = v4;
            HKDispatchAsyncOnGlobalConcurrentQueue();
          }

          [v5 removePendingRequestContextForUUID:v8];
        }
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 40);
      v15 = v13;
      v16 = [v14 hd_messageIDSIdentifier];
      v17 = [*(a1 + 40) hd_messageIDSDeviceIdentifier];
      *v19 = 138543618;
      *&v19[4] = v16;
      *&v19[12] = 2114;
      *&v19[14] = v17;
      _os_log_impl(&dword_228986000, v15, OS_LOG_TYPE_DEFAULT, "[sharing-setup] Unable to find sync store for error from message %{public}@ to device %{public}@ (#t0)", v19, 0x16u);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)messageCenterDidReceiveTinkerPairingRequest:(id)request
{
  requestCopy = request;
  [(HDNanoSyncManager *)self _logIncomingRequest:requestCopy];
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__HDNanoSyncManager_messageCenterDidReceiveTinkerPairingRequest___block_invoke;
  v7[3] = &unk_278613920;
  v7[4] = self;
  v8 = requestCopy;
  v6 = requestCopy;
  dispatch_async(queue, v7);
}

void __65__HDNanoSyncManager_messageCenterDidReceiveTinkerPairingRequest___block_invoke(uint64_t a1)
{
  v94 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  [*(*(a1 + 32) + 104) invalidate];
  WeakRetained = objc_loadWeakRetained(*v2 + 6);
  v4 = [v2[1] fromParticipant];
  v5 = [v4 device];
  v6 = [HDNanoSyncStore nanoSyncStoreWithProfile:WeakRetained device:v5 delegate:*v2 tinkerPaired:1];
  v7 = *(*v2 + 13);
  *(*v2 + 13) = v6;

  v8 = *(*v2 + 13);
  _HKInitializeLogging();
  v9 = *MEMORY[0x277CCC328];
  v10 = os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      v11 = *(*(a1 + 32) + 104);
      *buf = 138543362;
      *&buf[4] = v11;
      _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "[sharing-setup] Created _activeTinkerSyncStore for new pairing request %{public}@ (#t0)", buf, 0xCu);
    }

    v12 = *(a1 + 32);
    v13 = *(v12 + 104);
    v14 = *(a1 + 40);
    v15 = v13;
    dispatch_assert_queue_V2(*(v12 + 56));
    if (!v14)
    {
      v54 = [MEMORY[0x277CCA890] currentHandler];
      [v54 handleFailureInMethod:sel__queue_receiveTinkerPairingRequest_syncStore_ object:v12 file:@"HDNanoSyncManager.m" lineNumber:3711 description:{@"Invalid parameter not satisfying: %@", @"request != nil"}];
    }

    if (!v15)
    {
      v55 = [MEMORY[0x277CCA890] currentHandler];
      [v55 handleFailureInMethod:sel__queue_receiveTinkerPairingRequest_syncStore_ object:v12 file:@"HDNanoSyncManager.m" lineNumber:3712 description:{@"Invalid parameter not satisfying: %@", @"syncStore != nil"}];
    }

    v16 = [v14 pbRequest];
    _HKInitializeLogging();
    v17 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      v19 = [v16 requestIdentifier];
      v20 = [v15 nanoRegistryUUID];
      v21 = [v15 device];
      *buf = 138543874;
      *&buf[4] = v19;
      *&buf[12] = 2114;
      *&buf[14] = v20;
      *&buf[22] = 2114;
      v88 = v21;
      _os_log_impl(&dword_228986000, v18, OS_LOG_TYPE_DEFAULT, "[sharing-setup] Received health sharing request from guardian %{public}@, active NR device ID %{public}@, active IDS device %{public}@ (#t0)", buf, 0x20u);
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __66__HDNanoSyncManager__queue_receiveTinkerPairingRequest_syncStore___block_invoke;
    aBlock[3] = &unk_2786178E0;
    v22 = v14;
    v83 = v22;
    v23 = v16;
    v84 = v23;
    v85 = v12;
    v24 = v15;
    v86 = v24;
    v25 = _Block_copy(aBlock);
    v26 = [v23 guardianIcloudIdentifier];
    if (v26)
    {
      if ([v24 isAltAccount])
      {
        v27 = objc_alloc_init(HDMutableDatabaseTransactionContext);
        v28 = objc_loadWeakRetained((v12 + 48));
        v29 = [v28 database];
        v81 = 0;
        v30 = [v29 takeAccessibilityAssertionWithOwnerIdentifier:@"Tinker Setup" timeout:&v81 error:600.0];
        v58 = v81;

        v57 = v27;
        if (v30)
        {
          [(HDMutableDatabaseTransactionContext *)v27 addAccessibilityAssertion:v30];
        }

        else
        {
          _HKInitializeLogging();
          v39 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            *&buf[4] = v12;
            *&buf[12] = 2114;
            *&buf[14] = v58;
            _os_log_error_impl(&dword_228986000, v39, OS_LOG_TYPE_ERROR, "%{public}@: Failed to take tinker setup accessibility assertion (#t0): %{public}@", buf, 0x16u);
          }
        }

        v79[0] = 0;
        v79[1] = v79;
        v79[2] = 0x3032000000;
        v79[3] = __Block_byref_object_copy__30;
        v79[4] = __Block_byref_object_dispose__30;
        v80 = 0;
        v77[0] = 0;
        v77[1] = v77;
        v77[2] = 0x3032000000;
        v77[3] = __Block_byref_object_copy__30;
        v77[4] = __Block_byref_object_dispose__30;
        v78 = 0;
        v40 = objc_alloc(MEMORY[0x277D10AC8]);
        v73[0] = MEMORY[0x277D85DD0];
        v73[1] = 3221225472;
        v73[2] = __66__HDNanoSyncManager__queue_receiveTinkerPairingRequest_syncStore___block_invoke_863;
        v73[3] = &unk_278617908;
        v75 = v25;
        v76 = v77;
        v56 = v30;
        v74 = v56;
        v41 = [v40 initWithDescription:@"Setup Tinker sharing." completion:v73];
        v42 = *(v12 + 56);
        v72[0] = MEMORY[0x277D85DD0];
        v72[1] = 3221225472;
        v72[2] = __66__HDNanoSyncManager__queue_receiveTinkerPairingRequest_syncStore___block_invoke_865;
        v72[3] = &unk_278617930;
        v72[4] = v12;
        [v41 addTaskOnQueue:v42 task:v72];
        v43 = *(v12 + 56);
        v69[0] = MEMORY[0x277D85DD0];
        v69[1] = 3221225472;
        v69[2] = __66__HDNanoSyncManager__queue_receiveTinkerPairingRequest_syncStore___block_invoke_2;
        v69[3] = &unk_278617958;
        v44 = v23;
        v70 = v44;
        v71 = v12;
        [v41 addTaskOnQueue:v43 task:v69];
        v45 = *(v12 + 56);
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __66__HDNanoSyncManager__queue_receiveTinkerPairingRequest_syncStore___block_invoke_868;
        v88 = &unk_2786179A8;
        v46 = v44;
        v89 = v46;
        v90 = v12;
        v91 = v22;
        v92 = v77;
        v93 = v79;
        [v41 addTaskOnQueue:v45 task:buf];
        v47 = *(v12 + 56);
        v64[0] = MEMORY[0x277D85DD0];
        v64[1] = 3221225472;
        v64[2] = __66__HDNanoSyncManager__queue_receiveTinkerPairingRequest_syncStore___block_invoke_873;
        v64[3] = &unk_2786179F8;
        v68 = v79;
        v65 = v46;
        v66 = v12;
        v48 = v57;
        v67 = v48;
        [v41 addTaskOnQueue:v47 task:v64];
        v49 = *(v12 + 56);
        v62[0] = MEMORY[0x277D85DD0];
        v62[1] = 3221225472;
        v62[2] = __66__HDNanoSyncManager__queue_receiveTinkerPairingRequest_syncStore___block_invoke_2_876;
        v62[3] = &unk_278617958;
        v62[4] = v12;
        v38 = v48;
        v63 = v38;
        [v41 addTaskOnQueue:v49 task:v62];
        v50 = *(v12 + 56);
        v61[0] = MEMORY[0x277D85DD0];
        v61[1] = 3221225472;
        v61[2] = __66__HDNanoSyncManager__queue_receiveTinkerPairingRequest_syncStore___block_invoke_2_878;
        v61[3] = &unk_278617930;
        v61[4] = v12;
        [v41 addTaskOnQueue:v50 task:v61];
        v51 = *(v12 + 56);
        v60[0] = MEMORY[0x277D85DD0];
        v60[1] = 3221225472;
        v60[2] = __66__HDNanoSyncManager__queue_receiveTinkerPairingRequest_syncStore___block_invoke_2_880;
        v60[3] = &unk_278617930;
        v60[4] = v12;
        [v41 addTaskOnQueue:v51 task:v60];
        v52 = *(v12 + 56);
        v59[0] = MEMORY[0x277D85DD0];
        v59[1] = 3221225472;
        v59[2] = __66__HDNanoSyncManager__queue_receiveTinkerPairingRequest_syncStore___block_invoke_2_882;
        v59[3] = &unk_278617930;
        v59[4] = v12;
        [v41 addTaskOnQueue:v52 task:v59];
        [v41 begin];

        _Block_object_dispose(v77, 8);
        _Block_object_dispose(v79, 8);
      }

      else
      {
        v38 = [MEMORY[0x277CCA9B8] hk_error:100 format:{@"Watch is not in Tinker pairing mode, ignoring request: %@", v22}];
        (*(v25 + 2))(v25, 0, v38);
      }
    }

    else
    {
      v35 = MEMORY[0x277CCA9B8];
      v36 = objc_opt_class();
      v37 = [v23 requestIdentifier];
      v38 = [v35 hk_errorForInvalidArgument:@"@" class:v36 selector:sel__queue_receiveTinkerPairingRequest_syncStore_ format:{@"Guardian icloud ID not found %@", v37}];

      (*(v25 + 2))(v25, 0, v38);
    }
  }

  else if (v10)
  {
    v31 = *(a1 + 40);
    v32 = v9;
    v33 = [v31 fromParticipant];
    v34 = [v33 description];
    *buf = 138543362;
    *&buf[4] = v34;
    _os_log_impl(&dword_228986000, v32, OS_LOG_TYPE_DEFAULT, "[sharing-setup] Unable to create sync store for request from device %{public}@ (#t0)", buf, 0xCu);
  }

  v53 = *MEMORY[0x277D85DE8];
}

- (void)messageCenterDidReceiveTinkerPairingResponse:(id)response
{
  responseCopy = response;
  [(HDNanoSyncManager *)self _logIncomingRequest:responseCopy];
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__HDNanoSyncManager_messageCenterDidReceiveTinkerPairingResponse___block_invoke;
  v7[3] = &unk_278613920;
  v7[4] = self;
  v8 = responseCopy;
  v6 = responseCopy;
  dispatch_async(queue, v7);
}

void __66__HDNanoSyncManager_messageCenterDidReceiveTinkerPairingResponse___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(v2 + 104);
  if (v3)
  {
    goto LABEL_3;
  }

  WeakRetained = objc_loadWeakRetained((v2 + 48));
  v5 = [*(a1 + 40) fromParticipant];
  v6 = [v5 device];
  v7 = [HDNanoSyncStore nanoSyncStoreWithProfile:WeakRetained device:v6 delegate:*(a1 + 32) tinkerPaired:1];
  v8 = *(a1 + 32);
  v9 = *(v8 + 104);
  *(v8 + 104) = v7;

  v2 = *(a1 + 32);
  v3 = *(v2 + 104);
  if (v3)
  {
LABEL_3:
    v10 = *(a1 + 40);
    v11 = v3;
    v12 = *(v2 + 56);
    v13 = v10;
    dispatch_assert_queue_V2(v12);
    if (!v13)
    {
      v36 = [MEMORY[0x277CCA890] currentHandler];
      [v36 handleFailureInMethod:sel__queue_receiveTinkerPairingResponse_syncStore_ object:v2 file:@"HDNanoSyncManager.m" lineNumber:3935 description:{@"Invalid parameter not satisfying: %@", @"response != nil"}];
    }

    v14 = [v13 requestPersistentUserInfo];
    v15 = [v13 pbResponse];

    if ([v15 hasError])
    {
      v16 = [v15 error];
      v17 = [MEMORY[0x277CCA9B8] hk_errorWithCodableError:v16];
    }

    else
    {
      v17 = 0;
    }

    _HKInitializeLogging();
    v18 = MEMORY[0x277CCC328];
    v19 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
      v21 = [v15 requestIdentifier];
      *buf = 138412546;
      *&buf[4] = v21;
      *&buf[12] = 2112;
      *&buf[14] = v17;
      _os_log_impl(&dword_228986000, v20, OS_LOG_TYPE_DEFAULT, "[sharing-setup] Received health sharing response from tinker watch %@, error: %@ (#t0)", buf, 0x16u);
    }

    v22 = [v14 objectForKeyedSubscript:@"tinker-pairing"];
    if (v22)
    {
      v23 = [v11 pendingRequestContextForUUID:v22];
      v24 = v23;
      if (v23)
      {
        v25 = *(v23 + 16);
        v26 = v25;
        if (v25)
        {
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __67__HDNanoSyncManager__queue_receiveTinkerPairingResponse_syncStore___block_invoke;
          v38 = &unk_278616488;
          v41 = v25;
          v39 = v15;
          v40 = v17;
          HKDispatchAsyncOnGlobalConcurrentQueue();
        }
      }

      else
      {
        _HKInitializeLogging();
        v28 = *v18;
        if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
LABEL_19:

          goto LABEL_20;
        }

        v26 = v28;
        v29 = [v22 UUIDString];
        *buf = 138412290;
        *&buf[4] = v29;
        _os_log_impl(&dword_228986000, v26, OS_LOG_TYPE_DEFAULT, "[sharing-setup] Ignoring response: no context for %@ (#t0)", buf, 0xCu);
      }
    }

    else
    {
      _HKInitializeLogging();
      v27 = *v18;
      if (!os_log_type_enabled(*v18, OS_LOG_TYPE_DEFAULT))
      {
LABEL_20:

        goto LABEL_21;
      }

      v24 = v27;
      v26 = [v15 requestIdentifier];
      *buf = 138412290;
      *&buf[4] = v26;
      _os_log_impl(&dword_228986000, v24, OS_LOG_TYPE_DEFAULT, "[sharing-setup] Ignoring response: no request identifier for %@ (#t0)", buf, 0xCu);
    }

    goto LABEL_19;
  }

  _HKInitializeLogging();
  v31 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v32 = *(a1 + 40);
    v33 = v31;
    v34 = [v32 fromParticipant];
    v35 = [v34 description];
    *buf = 138543362;
    *&buf[4] = v35;
    _os_log_impl(&dword_228986000, v33, OS_LOG_TYPE_DEFAULT, "[sharing-setup] Unable to create sync store for response from device %{public}@ (#t0)", buf, 0xCu);
  }

LABEL_21:
  v30 = *MEMORY[0x277D85DE8];
}

- (void)messageCenterDidReceiveTinkerPairingError:(id)error
{
  errorCopy = error;
  [(HDNanoSyncManager *)self _logOutgoingMessageError:errorCopy];
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__HDNanoSyncManager_messageCenterDidReceiveTinkerPairingError___block_invoke;
  v7[3] = &unk_278613920;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_async(queue, v7);
}

void __63__HDNanoSyncManager_messageCenterDidReceiveTinkerPairingError___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 104))
  {
    if ([*(a1 + 40) hd_isFromRequest])
    {
      v2 = *(a1 + 32);
      v3 = *(v2 + 104);
      v4 = *(a1 + 40);
      v5 = v3;
      dispatch_assert_queue_V2(*(v2 + 56));
      _HKInitializeLogging();
      v6 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *v17 = 138543362;
        *&v17[4] = v4;
        _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "[sharing-setup] Error sending health sharing request %{public}@ (#t0)", v17, 0xCu);
      }

      v7 = [v4 hd_persistentUserInfo];
      v8 = [v7 objectForKeyedSubscript:@"tinker-pairing"];
      if (v8)
      {
        v9 = [v5 pendingRequestContextForUUID:v8];
        v10 = v9;
        if (v9)
        {
          if (v9[2])
          {
            *v17 = MEMORY[0x277D85DD0];
            *&v17[8] = 3221225472;
            *&v17[16] = __81__HDNanoSyncManager__queue_tinkerPairingRequestDidFailToSendWithError_syncStore___block_invoke;
            v18 = &unk_278613920;
            v19 = v9;
            v20 = v4;
            HKDispatchAsyncOnGlobalConcurrentQueue();
          }

          [v5 removePendingRequestContextForUUID:v8];
        }
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 40);
      v13 = v11;
      v14 = [v12 hd_messageIDSIdentifier];
      v15 = [*(a1 + 40) hd_messageIDSDeviceIdentifier];
      *v17 = 138543618;
      *&v17[4] = v14;
      *&v17[12] = 2114;
      *&v17[14] = v15;
      _os_log_impl(&dword_228986000, v13, OS_LOG_TYPE_DEFAULT, "[sharing-setup] Unable to find sync store for error from message %{public}@ to device %{public}@ (#t0)", v17, 0x16u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)messageCenterDidReceiveTinkerEndToEndCloudSyncRequest:(id)request
{
  requestCopy = request;
  [(HDNanoSyncManager *)self _logIncomingRequest:requestCopy];
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__HDNanoSyncManager_messageCenterDidReceiveTinkerEndToEndCloudSyncRequest___block_invoke;
  v7[3] = &unk_278613920;
  v7[4] = self;
  v8 = requestCopy;
  v6 = requestCopy;
  dispatch_async(queue, v7);
}

void __75__HDNanoSyncManager_messageCenterDidReceiveTinkerEndToEndCloudSyncRequest___block_invoke(uint64_t a1)
{
  v49 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 104) invalidate];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  v3 = [*(a1 + 40) fromParticipant];
  v4 = [v3 device];
  v5 = [HDNanoSyncStore nanoSyncStoreWithProfile:WeakRetained device:v4 delegate:*(a1 + 32) tinkerPaired:1];
  v6 = *(a1 + 32);
  v7 = *(v6 + 104);
  *(v6 + 104) = v5;

  v8 = *(*(a1 + 32) + 104);
  _HKInitializeLogging();
  v9 = MEMORY[0x277CCC328];
  v10 = *MEMORY[0x277CCC328];
  v11 = os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v11)
    {
      v12 = *(*(a1 + 32) + 104);
      *buf = 138543362;
      *&buf[4] = v12;
      _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "[sharing-setup] Created _activeTinkerSyncStore for new end to end Cloud Sync request %{public}@ (#t0)", buf, 0xCu);
    }

    v14 = *(a1 + 32);
    v13 = *(a1 + 40);
    v15 = *(v14 + 104);
    v16 = v13;
    v17 = v15;
    dispatch_assert_queue_V2(*(v14 + 56));
    if (v16)
    {
      if (v17)
      {
LABEL_6:
        v18 = [v16 pbRequest];
        _HKInitializeLogging();
        v19 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
        {
          v20 = v19;
          v21 = [v18 requestIdentifier];
          v22 = [v17 nanoRegistryUUID];
          v23 = [v17 device];
          *buf = 138544130;
          *&buf[4] = v14;
          *&buf[12] = 2114;
          *&buf[14] = v21;
          *&buf[22] = 2114;
          v45 = v22;
          LOWORD(v46) = 2114;
          *(&v46 + 2) = v23;
          _os_log_impl(&dword_228986000, v20, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@ Did receive Tinker end to end Cloud Sync request from guardian %{public}@, active NR device ID %{public}@, active IDS device %{public}@ (#t0)", buf, 0x2Au);
        }

        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __76__HDNanoSyncManager__queue_receiveTinkerEndToEndCloudSyncRequest_syncStore___block_invoke;
        v45 = &unk_2786178B8;
        *&v46 = v14;
        v24 = v16;
        *(&v46 + 1) = v24;
        v25 = v18;
        v47 = v25;
        v26 = v17;
        v48 = v26;
        v27 = _Block_copy(buf);
        if ([v26 isAltAccount])
        {
          v28 = v27;
          dispatch_assert_queue_V2(*(v14 + 56));
          v29 = [[HDCloudSyncContext alloc] initForPurpose:0 options:0 reason:20];
          v30 = objc_loadWeakRetained((v14 + 48));
          v31 = [v30 cloudSyncManager];
          v42[0] = MEMORY[0x277D85DD0];
          v42[1] = 3221225472;
          v42[2] = __80__HDNanoSyncManager__queue_performSyncForTinkerEndToEndCloudSyncWithCompletion___block_invoke;
          v42[3] = &unk_2786130D8;
          v32 = v28;
          v43 = v32;
          v33 = [v31 syncWithContext:v29 completion:v42];
        }

        else
        {
          v38 = [MEMORY[0x277CCA9B8] hk_error:100 format:{@"Watch is not in Tinker pairing mode, ignoring end to end Cloud Sync request: %@", v24}];
          (*(v27 + 2))(v27, 0, v38);
        }

        goto LABEL_14;
      }
    }

    else
    {
      v40 = [MEMORY[0x277CCA890] currentHandler];
      [v40 handleFailureInMethod:sel__queue_receiveTinkerEndToEndCloudSyncRequest_syncStore_ object:v14 file:@"HDNanoSyncManager.m" lineNumber:4032 description:{@"Invalid parameter not satisfying: %@", @"request != nil"}];

      if (v17)
      {
        goto LABEL_6;
      }
    }

    v41 = [MEMORY[0x277CCA890] currentHandler];
    [v41 handleFailureInMethod:sel__queue_receiveTinkerEndToEndCloudSyncRequest_syncStore_ object:v14 file:@"HDNanoSyncManager.m" lineNumber:4033 description:{@"Invalid parameter not satisfying: %@", @"syncStore != nil"}];

    goto LABEL_6;
  }

  if (v11)
  {
    v34 = *(a1 + 40);
    v35 = v10;
    v36 = [v34 fromParticipant];
    v37 = [v36 description];
    *buf = 138543362;
    *&buf[4] = v37;
    _os_log_impl(&dword_228986000, v35, OS_LOG_TYPE_DEFAULT, "[sharing-setup] Unable to create sync store for end to end Cloud Sync request from device %{public}@ (#t0)", buf, 0xCu);
  }

LABEL_14:
  v39 = *MEMORY[0x277D85DE8];
}

- (void)messageCenterDidReceiveTinkerEndToEndCloudSyncResponse:(id)response
{
  responseCopy = response;
  [(HDNanoSyncManager *)self _logIncomingRequest:responseCopy];
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__HDNanoSyncManager_messageCenterDidReceiveTinkerEndToEndCloudSyncResponse___block_invoke;
  v7[3] = &unk_278613920;
  v7[4] = self;
  v8 = responseCopy;
  v6 = responseCopy;
  dispatch_async(queue, v7);
}

void __76__HDNanoSyncManager_messageCenterDidReceiveTinkerEndToEndCloudSyncResponse___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(v2 + 104);
  if (v3)
  {
    goto LABEL_3;
  }

  WeakRetained = objc_loadWeakRetained((v2 + 48));
  v5 = [*(a1 + 40) fromParticipant];
  v6 = [v5 device];
  v7 = [HDNanoSyncStore nanoSyncStoreWithProfile:WeakRetained device:v6 delegate:*(a1 + 32) tinkerPaired:1];
  v8 = *(a1 + 32);
  v9 = *(v8 + 104);
  *(v8 + 104) = v7;

  v2 = *(a1 + 32);
  v3 = *(v2 + 104);
  if (v3)
  {
LABEL_3:
    v10 = *(a1 + 40);
    v11 = *(v2 + 56);
    v12 = v3;
    dispatch_assert_queue_V2(v11);
    if (!v10)
    {
      v34 = [MEMORY[0x277CCA890] currentHandler];
      [v34 handleFailureInMethod:sel__queue_receiveTinkerEndToEndCloudSyncResponse_syncStore_ object:v2 file:@"HDNanoSyncManager.m" lineNumber:4086 description:{@"Invalid parameter not satisfying: %@", @"response != nil"}];
    }

    v13 = [v10 pbResponse];
    if ([v13 hasError])
    {
      v14 = [v13 error];
      v15 = [MEMORY[0x277CCA9B8] hk_errorWithCodableError:v14];
    }

    else
    {
      v15 = 0;
    }

    _HKInitializeLogging();
    v16 = MEMORY[0x277CCC328];
    v17 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      v19 = [v13 requestIdentifier];
      *buf = 138543874;
      *&buf[4] = v2;
      *&buf[12] = 2112;
      *&buf[14] = v19;
      *&buf[22] = 2112;
      v36 = v15;
      _os_log_impl(&dword_228986000, v18, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@ Did receive Tinker end to end Cloud Sync response from watch %@, error: %@ (#t0)", buf, 0x20u);
    }

    v20 = objc_alloc(MEMORY[0x277CCAD78]);
    v21 = [v13 requestIdentifier];
    v22 = [v20 initWithUUIDString:v21];

    v23 = [v12 pendingRequestContextForUUID:v22];

    if (v23)
    {
      v24 = v23[2];
      v25 = v24;
      if (v24)
      {
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __77__HDNanoSyncManager__queue_receiveTinkerEndToEndCloudSyncResponse_syncStore___block_invoke;
        v36 = &unk_278616488;
        v39 = v24;
        v37 = v13;
        v38 = v15;
        HKDispatchAsyncOnGlobalConcurrentQueue();
      }
    }

    else
    {
      _HKInitializeLogging();
      v26 = *v16;
      if (!os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
      {
LABEL_16:

        goto LABEL_17;
      }

      v25 = v26;
      v27 = [v22 UUIDString];
      *buf = 138412290;
      *&buf[4] = v27;
      _os_log_impl(&dword_228986000, v25, OS_LOG_TYPE_DEFAULT, "[sharing-setup] Ignoring response: no context for %@ (#t0)", buf, 0xCu);
    }

    goto LABEL_16;
  }

  _HKInitializeLogging();
  v29 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v30 = *(a1 + 40);
    v31 = v29;
    v32 = [v30 fromParticipant];
    v33 = [v32 description];
    *buf = 138543362;
    *&buf[4] = v33;
    _os_log_impl(&dword_228986000, v31, OS_LOG_TYPE_DEFAULT, "[sharing-setup] Unable to create sync store for end to end Cloud Sync response from device %{public}@ (#t0)", buf, 0xCu);
  }

LABEL_17:
  v28 = *MEMORY[0x277D85DE8];
}

- (void)messageCenterDidReceiveTinkerEndToEndCloudSyncError:(id)error
{
  errorCopy = error;
  [(HDNanoSyncManager *)self _logOutgoingMessageError:errorCopy];
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__HDNanoSyncManager_messageCenterDidReceiveTinkerEndToEndCloudSyncError___block_invoke;
  v7[3] = &unk_278613920;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_async(queue, v7);
}

void __73__HDNanoSyncManager_messageCenterDidReceiveTinkerEndToEndCloudSyncError___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 104))
  {
    if ([*(a1 + 40) hd_isFromRequest])
    {
      v2 = *(a1 + 32);
      v3 = *(v2 + 104);
      v4 = *(a1 + 40);
      v5 = v3;
      dispatch_assert_queue_V2(*(v2 + 56));
      _HKInitializeLogging();
      v6 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *v19 = 138543362;
        *&v19[4] = v4;
        _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "[sharing-setup] Error sending Tinker end to end Cloud Sync request %{public}@ (#t0)", v19, 0xCu);
      }

      v7 = [v4 hd_persistentUserInfo];
      v8 = [v7 objectForKeyedSubscript:@"tinker-optin"];
      if (v8)
      {
        v9 = [v5 pendingRequestContextForUUID:v8];
        v10 = v9;
        if (v9)
        {
          v11 = *(v9 + 16);
          v12 = v11;
          if (v11)
          {
            *v19 = MEMORY[0x277D85DD0];
            *&v19[8] = 3221225472;
            *&v19[16] = __91__HDNanoSyncManager__queue_tinkerEndToEndCloudSyncRequestDidFailToSendWithError_syncStore___block_invoke;
            v20 = &unk_278614008;
            v22 = v11;
            v21 = v4;
            HKDispatchAsyncOnGlobalConcurrentQueue();
          }

          [v5 removePendingRequestContextForUUID:v8];
        }
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 40);
      v15 = v13;
      v16 = [v14 hd_messageIDSIdentifier];
      v17 = [*(a1 + 40) hd_messageIDSDeviceIdentifier];
      *v19 = 138543618;
      *&v19[4] = v16;
      *&v19[12] = 2114;
      *&v19[14] = v17;
      _os_log_impl(&dword_228986000, v15, OS_LOG_TYPE_DEFAULT, "[sharing-setup] Unable to find sync store for end to end Cloud Sync error from message %{public}@ to device %{public}@ (#t0)", v19, 0x16u);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_queue_updateDeviceNameIfNecessaryWithSyncStore:(uint64_t)store
{
  v3 = a2;
  if (store)
  {
    dispatch_assert_queue_V2(*(store + 56));
    sourceBundleIdentifier = [v3 sourceBundleIdentifier];
    deviceName = [v3 deviceName];
    v6 = deviceName;
    if (sourceBundleIdentifier && deviceName)
    {
      v7 = sourceBundleIdentifier;
      v8 = v3;
      v9 = v6;
      HKDispatchAsyncOnGlobalConcurrentQueue();
    }
  }
}

- (void)_notifyObserversPairedDevicesChanged:(uint64_t)changed
{
  v3 = a2;
  v4 = v3;
  if (changed)
  {
    v5 = *(changed + 80);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __58__HDNanoSyncManager__notifyObserversPairedDevicesChanged___block_invoke;
    v6[3] = &unk_278617B30;
    v6[4] = changed;
    v7 = v3;
    [v5 notifyObservers:v6];
  }
}

- (void)_queue_synchronizeWithOptions:(void *)options restoreMessagesSentHandler:(void *)handler targetSyncStore:(void *)store reason:(void *)reason accessibilityAssertion:(void *)assertion completion:
{
  v75[2] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  handlerCopy = handler;
  storeCopy = store;
  reasonCopy = reason;
  assertionCopy = assertion;
  dispatch_assert_queue_V2(*(self + 56));
  v55 = [MEMORY[0x277CCD288] transactionWithOwner:self activityName:@"NanoSyncManager#_queue_synchronizeWithOptions"];
  [(HDNanoSyncManager *)self _queue_updateSyncStores];
  v15 = *(self + 8);
  v66 = 0;
  dispatch_assert_queue_V2(*(self + 56));
  if ([*(self + 160) permitSynchronization])
  {
    if (handlerCopy || (handlerCopy = *(self + 96)) != 0)
    {
      v16 = MEMORY[0x277CCC328];
      v17 = *MEMORY[0x277CCC328];
      v18 = _HKLogSignpostIDGenerate();
      _HKInitializeLogging();
      v19 = *v16;
      if (os_signpost_enabled(*v16))
      {
        v20 = v19;
        v21 = v20;
        if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
        {
          v22 = _StringFromSyncOptions(a2);
          *buf = 138543618;
          *&buf[4] = storeCopy;
          *&buf[12] = 2114;
          *&buf[14] = v22;
          _os_signpost_emit_with_name_impl(&dword_228986000, v21, OS_SIGNPOST_INTERVAL_BEGIN, v18, "nano-sync-with-options", "reason=%{public}@ options=%{public}@", buf, 0x16u);
        }
      }

      restoreState = [handlerCopy restoreState];
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __135__HDNanoSyncManager__queue_synchronizeWithOptions_restoreMessagesSentHandler_targetSyncStore_reason_accessibilityAssertion_completion___block_invoke;
      aBlock[3] = &unk_2786175A8;
      v65 = ((a2 & 4) == 0) & v15;
      v61 = optionsCopy;
      aBlock[4] = self;
      v57 = reasonCopy;
      v62 = assertionCopy;
      v63 = v18;
      v58 = v55;
      handlerCopy = handlerCopy;
      v59 = handlerCopy;
      v64 = a2;
      v60 = storeCopy;
      assertionCopy = _Block_copy(aBlock);
      if (restoreState != 3 && *(self + 8) == 1)
      {
        if (restoreState == 1)
        {
          _HKInitializeLogging();
          v24 = *v16;
          if (os_log_type_enabled(*v16, OS_LOG_TYPE_INFO))
          {
            *buf = 138543362;
            *&buf[4] = handlerCopy;
            _os_log_impl(&dword_228986000, v24, OS_LOG_TYPE_INFO, "will attempt restore for paired device %{public}@", buf, 0xCu);
          }

          v25 = handlerCopy;
          dispatch_assert_queue_V2(*(self + 56));
          if ([v25 restoreState] == 1)
          {
            if ((*(self + 8) & 1) == 0)
            {
              currentHandler = [MEMORY[0x277CCA890] currentHandler];
              [currentHandler handleFailureInMethod:sel__queue_transitionToRestoreInProgressWithSyncStore_ object:self file:@"HDNanoSyncManager.m" lineNumber:1771 description:{@"Invalid parameter not satisfying: %@", @"_isMaster"}];
            }

            persistentUUID = [v25 persistentUUID];
            v27 = persistentUUID == 0;

            if (v27)
            {
              currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
              [currentHandler2 handleFailureInMethod:sel__queue_transitionToRestoreInProgressWithSyncStore_ object:self file:@"HDNanoSyncManager.m" lineNumber:1772 description:{@"Invalid parameter not satisfying: %@", @"[syncStore persistentUUID] != nil"}];
            }

            v28 = [(HKDaemonTransaction *)HDDaemonTransaction transactionWithOwner:self activityName:@"Restore"];
            v67[0] = MEMORY[0x277D85DD0];
            v67[1] = 3221225472;
            v68 = __71__HDNanoSyncManager__queue_transitionToRestoreInProgressWithSyncStore___block_invoke;
            v69 = &unk_2786130B0;
            v70 = v28;
            v49 = v28;
            v29 = v25;
            v51 = v67;
            dispatch_assert_queue_V2(*(self + 56));
            if ([v29 restoreState] == 1)
            {
              objc_initWeak(&location, self);
              uUID = [MEMORY[0x277CCAD78] UUID];
              [self restoreTimeout];
              v32 = v31;
              *buf = MEMORY[0x277D85DD0];
              *&buf[8] = 3221225472;
              *&buf[16] = __61__HDNanoSyncManager__queue_beginRestoreWithStore_completion___block_invoke;
              v73 = &unk_278617620;
              objc_copyWeak(v75, &location);
              v33 = v29;
              v74 = v33;
              v47 = [v33 beginRestoreSessionWithUUID:uUID timeout:buf timeoutHandler:v32];

              sessionUUID = [v47 sessionUUID];
              v35 = *(self + 56);
              v48 = sessionUUID;
              v36 = v33;
              dispatch_assert_queue_V2(v35);
              v50 = [HDCodableNanoSyncActivationRestore activationRestoreWithRestoreUUID:v48 sequenceNumber:1 statusCode:2];

              sourceBundleIdentifier = [v36 sourceBundleIdentifier];
              [v50 setDefaultSourceBundleIdentifier:sourceBundleIdentifier];

              obliteratedDatabaseUUIDs = [v36 obliteratedDatabaseUUIDs];
              [v50 encodeObliteratedHealthPairingUUIDs:obliteratedDatabaseUUIDs];

              WeakRetained = objc_loadWeakRetained((self + 48));
              v40 = [HDIDSOutgoingRequest activationRequestWithRestore:v50 syncStore:v36 profile:WeakRetained];

              [(HDNanoSyncManager *)self _queue_sendRequest:v40 syncStore:v36];
              [v47 setSequenceNumber:1];
              (v68)(v51, 1, 0);

              objc_destroyWeak(v75);
              objc_destroyWeak(&location);
            }

            else
            {
              v42 = [MEMORY[0x277CCA9B8] hk_error:100 format:{@"Unexpected restore state %ld", objc_msgSend(v29, "restoreState")}];
              (v68)(v51, 0, v42);
            }
          }
        }

        restoreSession = [handlerCopy restoreSession];
        [restoreSession addCompletionHandler:assertionCopy];

        assertionCopy = 0;
      }

      if (assertionCopy)
      {
        (*(assertionCopy + 2))(assertionCopy, restoreState == 3, 0);
      }

      v41 = 0;
    }

    else
    {
      v41 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"no active paired device"];
      if (assertionCopy)
      {
        (*(assertionCopy + 2))(assertionCopy, 0, v41);
      }

      [v55 invalidate];
      handlerCopy = 0;
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:&v66 code:100 description:@"sync is restricted by PairedSync"];
    v41 = v66;
    if (assertionCopy)
    {
      (*(assertionCopy + 2))(assertionCopy, 0, v41);
    }

    [v55 invalidate];
  }

  v44 = *MEMORY[0x277D85DE8];
}

void __135__HDNanoSyncManager__queue_synchronizeWithOptions_restoreMessagesSentHandler_targetSyncStore_reason_accessibilityAssertion_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __135__HDNanoSyncManager__queue_synchronizeWithOptions_restoreMessagesSentHandler_targetSyncStore_reason_accessibilityAssertion_completion___block_invoke_2;
  aBlock[3] = &unk_278617530;
  v6 = *(a1 + 72);
  v31 = *(a1 + 104);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v28 = v6;
  aBlock[4] = v7;
  v26 = v8;
  v9 = *(a1 + 80);
  v10 = *(a1 + 88);
  v29 = v9;
  v30 = v10;
  v27 = *(a1 + 48);
  v11 = _Block_copy(aBlock);
  v12 = v11;
  if (a2)
  {
    v13 = *(*(a1 + 32) + 64);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __135__HDNanoSyncManager__queue_synchronizeWithOptions_restoreMessagesSentHandler_targetSyncStore_reason_accessibilityAssertion_completion___block_invoke_506;
    block[3] = &unk_278617580;
    v14 = *(a1 + 56);
    v24 = *(a1 + 96);
    v15 = *(a1 + 64);
    v19 = *(a1 + 32);
    v23 = v12;
    v16 = *(a1 + 40);
    *&v17 = v19;
    *(&v17 + 1) = v16;
    *&v18 = v14;
    *(&v18 + 1) = v15;
    v21 = v18;
    v22 = v17;
    dispatch_async(v13, block);
  }

  else
  {
    (*(v11 + 2))(v11, 0, v5);
  }
}

void __135__HDNanoSyncManager__queue_synchronizeWithOptions_restoreMessagesSentHandler_targetSyncStore_reason_accessibilityAssertion_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *(a1 + 56);
  if (v6)
  {
    (*(v6 + 16))(v6, a2, v5);
  }

  if (a2 && *(a1 + 80) == 1)
  {
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = *(v8 + 56);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __135__HDNanoSyncManager__queue_synchronizeWithOptions_restoreMessagesSentHandler_targetSyncStore_reason_accessibilityAssertion_completion___block_invoke_3;
    block[3] = &unk_278614160;
    block[4] = v8;
    v18 = v7;
    v19 = *(a1 + 64);
    dispatch_async(v9, block);
  }

  else
  {
    v10 = *(a1 + 64);
    if (v10)
    {
      if (!v5 && (a2 & 1) == 0)
      {
        v5 = [MEMORY[0x277CCA9B8] hk_error:122 format:@"Sync failed without reporting an error."];
        v10 = *(a1 + 64);
      }

      (*(v10 + 16))(v10, a2, v5);
    }
  }

  _HKInitializeLogging();
  v11 = *MEMORY[0x277CCC328];
  if (os_signpost_enabled(*MEMORY[0x277CCC328]))
  {
    v12 = v11;
    v13 = v12;
    v14 = *(a1 + 72);
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      v15 = "NO";
      if (a2)
      {
        v15 = "YES";
      }

      *buf = 136315138;
      v21 = v15;
      _os_signpost_emit_with_name_impl(&dword_228986000, v13, OS_SIGNPOST_INTERVAL_END, v14, "nano-sync-with-options", "success=%s", buf, 0xCu);
    }
  }

  [*(a1 + 48) invalidate];

  v16 = *MEMORY[0x277D85DE8];
}

void __135__HDNanoSyncManager__queue_synchronizeWithOptions_restoreMessagesSentHandler_targetSyncStore_reason_accessibilityAssertion_completion___block_invoke_3(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v4 = v2;
  if (!v1)
  {
    goto LABEL_18;
  }

  dispatch_assert_queue_V2(*(v1 + 56));
  if ((*(v1 + 8) & 1) == 0)
  {
    if (!v4)
    {
      goto LABEL_18;
    }

    v15 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"proactive sync is unavailable on this device"];
LABEL_17:
    v16 = v15;
    v4[2](v4, 0, v15);

    goto LABEL_18;
  }

  if (!v3)
  {
    WeakRetained = objc_loadWeakRetained((v1 + 48));
    v6 = [WeakRetained database];
    v7 = [v6 isProtectedDataAvailable];

    if ((v7 & 1) == 0)
    {
      if (!v4)
      {
        goto LABEL_18;
      }

      v15 = [MEMORY[0x277CCA9B8] hk_protectedDataInaccessibilityError];
      goto LABEL_17;
    }
  }

  v8 = [MEMORY[0x277CBEB18] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = [(HDNanoSyncManager *)v1 _queue_eligibleInactiveSyncStores];
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v18 + 1) + 8 * v13) device];
        [v8 addObject:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  [(HDNanoSyncManager *)v1 _queue_performNextProactiveSyncWithRemainingDevices:v8 accessibilityAssertion:v3 completion:v4];
LABEL_18:

  v17 = *MEMORY[0x277D85DE8];
}

void __135__HDNanoSyncManager__queue_synchronizeWithOptions_restoreMessagesSentHandler_targetSyncStore_reason_accessibilityAssertion_completion___block_invoke_506(uint64_t a1)
{
  v2 = [[HDNanoSyncSession alloc] initWithSyncStore:*(a1 + 32) options:*(a1 + 72) reason:*(a1 + 40) delegate:*(a1 + 48) completion:*(a1 + 64)];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__30;
  v24 = __Block_byref_object_dispose__30;
  v25 = 0;
  WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 48));
  v4 = [WeakRetained syncEngine];
  v5 = *(a1 + 32);
  v6 = objc_loadWeakRetained((*(a1 + 48) + 48));
  v7 = (v21 + 5);
  obj = v21[5];
  [v4 resetNextAnchorsForStore:v5 profile:v6 minimumElapsedTime:&obj error:86400.0];
  objc_storeStrong(v7, obj);

  v8 = [(HDSyncSession *)v2 syncStore];
  v9 = MEMORY[0x277CCACA8];
  v10 = [v8 syncStoreIdentifier];
  v11 = [v9 stringWithFormat:@"%@.nano-sync.%@", *MEMORY[0x277CCE408], v10];

  v12 = objc_loadWeakRetained((*(a1 + 48) + 48));
  v13 = [v12 daemon];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __135__HDNanoSyncManager__queue_synchronizeWithOptions_restoreMessagesSentHandler_targetSyncStore_reason_accessibilityAssertion_completion___block_invoke_514;
  v15[3] = &unk_278617558;
  v15[4] = *(a1 + 48);
  v14 = v2;
  v16 = v14;
  v17 = *(a1 + 56);
  v18 = &v20;
  [v13 performBlockWithPowerAssertionIdentifier:v11 transactionName:@"NanoSyncSession" powerAssertionInterval:v15 block:30.0];

  _Block_object_dispose(&v20, 8);
}

void __135__HDNanoSyncManager__queue_synchronizeWithOptions_restoreMessagesSentHandler_targetSyncStore_reason_accessibilityAssertion_completion___block_invoke_514(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 48));
  v3 = [WeakRetained syncEngine];
  v4 = a1[5];
  v5 = a1[6];
  v6 = *(a1[7] + 8);
  obj = *(v6 + 40);
  [v3 performSyncSession:v4 accessibilityAssertion:v5 error:&obj];
  objc_storeStrong((v6 + 40), obj);
}

- (void)_queue_transitionToRestoreIncompleteWithSyncStore:(void *)store error:
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  storeCopy = store;
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 56));
    if (storeCopy)
    {
      if (!v5)
      {
        goto LABEL_8;
      }
    }

    else
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:sel__queue_transitionToRestoreIncompleteWithSyncStore_error_ object:self file:@"HDNanoSyncManager.m" lineNumber:1741 description:{@"Invalid parameter not satisfying: %@", @"error != nil"}];

      if (!v5)
      {
        goto LABEL_8;
      }
    }

    if ([v5 restoreState] != 1)
    {
      _HKInitializeLogging();
      v7 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
      {
        *buf = 138543618;
        v11 = v5;
        v12 = 2114;
        v13 = storeCopy;
        _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_INFO, "resetting restore state to incomplete for paired device %{public}@, error: %{public}@", buf, 0x16u);
      }

      [v5 finishRestoreSessionWithError:storeCopy];
    }
  }

LABEL_8:

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_queue_transitionToRestoreCompleteWithSyncStore:(uint64_t)store
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (store)
  {
    dispatch_assert_queue_V2(*(store + 56));
    if (v3)
    {
      _HKInitializeLogging();
      v4 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
      {
        LODWORD(v9) = 138543362;
        *(&v9 + 4) = v3;
        _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_INFO, "finished restore for paired device %{public}@", &v9, 0xCu);
      }

      v5 = v3;
      v6 = *(store + 64);
      *&v9 = MEMORY[0x277D85DD0];
      *(&v9 + 1) = 3221225472;
      v10 = __47__HDNanoSyncManager__resetSyncAnchorsForStore___block_invoke;
      v11 = &unk_278613920;
      storeCopy = store;
      v7 = v5;
      v13 = v7;
      dispatch_async(v6, &v9);

      [v7 finishRestoreSessionWithError:0];
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __51__HDNanoSyncManager__restoreTimedOutWithSyncStore___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) restoreState] == 2)
  {
    v2 = [MEMORY[0x277CCA9B8] hk_error:103 description:@"Restore timed out"];
    [(HDNanoSyncManager *)*(a1 + 40) _queue_transitionToRestoreIncompleteWithSyncStore:v2 error:?];
  }
}

- (void)_deviceDidPair:(id)pair
{
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_228986000, v4, OS_LOG_TYPE_DEBUG, "did pair notification", buf, 2u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__HDNanoSyncManager__deviceDidPair___block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_deviceDidUnpair:(id)unpair
{
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_228986000, v4, OS_LOG_TYPE_DEBUG, "did unpair notification", buf, 2u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__HDNanoSyncManager__deviceDidUnpair___block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_deviceDidBecomeActive:(id)active
{
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_228986000, v4, OS_LOG_TYPE_DEBUG, "did become active notification", buf, 2u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__HDNanoSyncManager__deviceDidBecomeActive___block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_async(queue, block);
}

void __44__HDNanoSyncManager__deviceDidBecomeActive___block_invoke(uint64_t a1)
{
  [(HDNanoSyncManager *)*(a1 + 32) _queue_generateWatchActivationSamples];
  v2 = *(a1 + 32);

  [(HDNanoSyncManager *)v2 _notifyObserversPairedDevicesChanged:?];
}

void __58__HDNanoSyncManager__queue_generateWatchActivationSamples__block_invoke(uint64_t a1, unsigned int a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7 && v8 && *(a1 + 56) < a2)
  {
    v10 = [MEMORY[0x277CCD0B0] categorySampleWithType:*(a1 + 32) value:1 startDate:v7 endDate:v7];
    if (v10)
    {
      v11 = [*(a1 + 40) objectForKeyedSubscript:v9];
      if (!v11)
      {
        v11 = [MEMORY[0x277CBEB18] array];
        [*(a1 + 40) setObject:v11 forKeyedSubscript:v9];
      }

      [v11 addObject:v10];
    }

    *(*(*(a1 + 48) + 8) + 24) = a2;
  }

  else
  {
    _HKInitializeLogging();
    v12 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
    {
      v14[0] = 67109634;
      v14[1] = a2;
      v15 = 2112;
      v16 = v9;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_INFO, "got index %u pairingID %@ and date %@ from getSwitchEventsFromIndex", v14, 0x1Cu);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __58__HDNanoSyncManager__queue_generateWatchActivationSamples__block_invoke_552(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  v27 = 0;
  v8 = [HDNanoPairingEntity sourceEntityForRegistryUUID:v5 profile:WeakRetained error:&v27];
  v9 = v27;

  if (v8)
  {
    v10 = objc_loadWeakRetained((*(a1 + 32) + 48));
    v11 = [v10 dataManager];
    v26 = v9;
    v12 = [v11 insertDataObjects:v6 sourceEntity:v8 deviceEntity:0 sourceVersion:0 creationDate:&v26 error:2.22507386e-308];
    v13 = v26;

    _HKInitializeLogging();
    v14 = *MEMORY[0x277CCC328];
    v15 = *MEMORY[0x277CCC328];
    if (v12)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v16 = v14;
        v17 = [v6 count];
        v18 = [v5 UUIDString];
        *buf = 134218242;
        v29 = v17;
        v30 = 2112;
        v31 = v18;
        _os_log_debug_impl(&dword_228986000, v16, OS_LOG_TYPE_DEBUG, "inserted %lu activation samples for pairing ID %@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v29 = v13;
      _os_log_error_impl(&dword_228986000, v14, OS_LOG_TYPE_ERROR, "failed to insert watch activation samples: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    _HKInitializeLogging();
    v19 = *MEMORY[0x277CCC328];
    v20 = *MEMORY[0x277CCC328];
    if (v9)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v24 = v19;
        v25 = [v5 UUIDString];
        *buf = 138543618;
        v29 = v25;
        v30 = 2114;
        v31 = v9;
        _os_log_error_impl(&dword_228986000, v24, OS_LOG_TYPE_ERROR, "failed to get source for watch activation with pairing ID %{public}@: %{public}@", buf, 0x16u);
      }

      v13 = v9;
    }

    else
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v19;
        v22 = [v5 UUIDString];
        *buf = 138543362;
        v29 = v22;
        _os_log_impl(&dword_228986000, v21, OS_LOG_TYPE_DEFAULT, "no source exists for watch activation with pairing ID %{public}@", buf, 0xCu);
      }

      v13 = 0;
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

uint64_t __87__HDNanoSyncManager__queue_pairedSyncDidBeginForDevice_messagesSentHandler_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __87__HDNanoSyncManager__queue_pairedSyncDidBeginForDevice_messagesSentHandler_completion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if ((a2 & 1) == 0 && [v5 hk_isDatabaseAccessibilityError])
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = v7;
      v10 = [v8 hd_shortDescription];
      v12 = 138543362;
      v13 = v10;
      _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "PairedSync for device %{public}@ postponed until unlock", &v12, 0xCu);
    }

    [*(a1 + 40) setNeedsSyncOnUnlock:1];

    v6 = 0;
  }

  (*(*(a1 + 48) + 16))();

  v11 = *MEMORY[0x277D85DE8];
}

void __61__HDNanoSyncManager__queue_beginRestoreWithStore_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = *(a1 + 32);
  if (WeakRetained)
  {
    v3 = WeakRetained[7];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__HDNanoSyncManager__restoreTimedOutWithSyncStore___block_invoke;
    block[3] = &unk_278613920;
    v6 = v2;
    v7 = WeakRetained;
    dispatch_async(v3, block);
  }
}

uint64_t __73__HDNanoSyncManager__syncQueue_prepareForCompanionChangeWithStore_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) resetProvenanceWithError:?])
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v5 = [*(a1 + 32) orderedSyncEntities];
    v6 = [v5 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v6)
    {
      v7 = v6;
      v23 = a3;
      v8 = *v26;
      v9 = &selRef_client;
      while (2)
      {
        v10 = 0;
        v11 = v9[294];
        do
        {
          if (*v26 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v12 = *(*(&v25 + 1) + 8 * v10);
          if (objc_opt_respondsToSelector())
          {
            WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 48));
            v24 = 0;
            v14 = [v12 companionDidChangeForProfile:WeakRetained error:&v24];
            v15 = v24;

            if ((v14 & 1) == 0)
            {
              _HKInitializeLogging();
              v17 = *MEMORY[0x277CCC328];
              if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
              {
                *buf = 138543618;
                v30 = v12;
                v31 = 2114;
                v32 = v15;
                _os_log_error_impl(&dword_228986000, v17, OS_LOG_TYPE_ERROR, "%{public}@: failed to apply companion change: %{public}@", buf, 0x16u);
              }

              v18 = v15;
              v19 = v18;
              if (v18)
              {
                if (v23)
                {
                  v20 = v18;
                  *v23 = v19;
                }

                else
                {
                  _HKLogDroppedError();
                }
              }

              v16 = 0;
              goto LABEL_21;
            }
          }

          ++v10;
        }

        while (v7 != v10);
        v7 = [v5 countByEnumeratingWithState:&v25 objects:v33 count:16];
        v9 = &selRef_client;
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v16 = 1;
LABEL_21:
  }

  else
  {
    v16 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v16;
}

void __59__HDNanoSyncManager__queue_handleRestoreRequest_syncStore___block_invoke(uint64_t a1)
{
  v72 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) decodedPersistentPairingUUID];
  [v2 setPersistentUUID:v3];

  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) decodedHealthPairingUUID];
  [v4 setHealthUUID:v5];

  v6 = 0;
  v7 = *(a1 + 96);
  v8 = &unk_229165000;
  if (v7 <= 2)
  {
    if (v7 != 1)
    {
      LOBYTE(v9) = 0;
      if (v7 != 2)
      {
        goto LABEL_29;
      }

      goto LABEL_7;
    }

    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v12 = *(a1 + 32);
    v13 = *(*(a1 + 88) + 8);
    v16 = *(v13 + 40);
    v14 = (v13 + 40);
    v15 = v16;
    v17 = *(a1 + 64);
    if (v10)
    {
      v9 = *(v10 + 64);
      v18 = v12;
      v19 = v11;
      dispatch_assert_queue_V2(v9);
      v20 = [v18 persistentUUID];

      v21 = [v19 defaultSourceBundleIdentifier];

      LOBYTE(v9) = 1;
      if (v20 && v21)
      {
        v53 = v17;
        WeakRetained = objc_loadWeakRetained((v10 + 48));
        v23 = [WeakRetained sourceManager];
        v67 = 0;
        LODWORD(v9) = [v23 setLocalDeviceSourceUUID:v20 bundleIdentifier:v21 error:&v67];
        v24 = v67;

        if (v9)
        {
          v52 = v24;
          v25 = objc_loadWeakRetained((v10 + 48));
          v26 = [v25 daemon];
          v27 = [v26 behavior];
          v28 = [v27 isAppleInternalInstall];

          if (v28)
          {
            _HKInitializeLogging();
            v29 = *MEMORY[0x277CCC328];
            v17 = v53;
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
            {
              v30 = v29;
              v31 = [v53 idsIdentifier];
              *buf = 138543618;
              *&buf[4] = v21;
              *&buf[12] = 2114;
              *&buf[14] = v31;
              _os_log_impl(&dword_228986000, v30, OS_LOG_TYPE_INFO, "set local device source bundle identifier to %{public}@ with message %{public}@", buf, 0x16u);
            }

            v8 = &unk_229165000;
            v24 = v52;
          }

          else
          {
            v8 = &unk_229165000;
            v24 = v52;
            v17 = v53;
          }
        }

        else
        {
          _HKInitializeLogging();
          v42 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            *&buf[4] = v24;
            _os_log_error_impl(&dword_228986000, v42, OS_LOG_TYPE_ERROR, "failed to set local device source bundle identifier: %{public}@", buf, 0xCu);
          }

          v43 = v24;
          v17 = v53;
          if (v43)
          {
            v43 = v43;
            v15 = v43;
          }

          v8 = &unk_229165000;
        }
      }
    }

    else
    {
      LOBYTE(v9) = 0;
    }

    v41 = v14;
    v40 = v15;
LABEL_28:
    objc_storeStrong(v41, v40);
    v6 = v9 ^ 1;
    goto LABEL_29;
  }

  if (v7 == 3)
  {
    v9 = *(a1 + 48);
    v32 = *(a1 + 32);
    v33 = *(*(a1 + 88) + 8);
    v35 = *(v33 + 40);
    v34 = (v33 + 40);
    v66 = v35;
    v36 = v32;
    if (v9)
    {
      dispatch_assert_queue_V2(*(v9 + 64));
      v37 = objc_loadWeakRetained((v9 + 48));
      v38 = [v37 database];
      v39 = +[HDDatabaseTransactionContext contextForWritingProtectedData];
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __73__HDNanoSyncManager__syncQueue_prepareForCompanionChangeWithStore_error___block_invoke;
      v69 = &unk_278613218;
      v70 = v36;
      v71 = v9;
      LOBYTE(v9) = [v38 performTransactionWithContext:v39 error:&v66 block:buf inaccessibilityHandler:&__block_literal_global_599];
    }

    v40 = v66;
    v41 = v34;
    goto LABEL_28;
  }

  LOBYTE(v9) = 0;
  if (v7 == 4)
  {
LABEL_7:
    LOBYTE(v9) = 0;
    v6 = 1;
  }

LABEL_29:
  v44 = *(*(a1 + 48) + 56);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = v8[323];
  block[2] = __59__HDNanoSyncManager__queue_handleRestoreRequest_syncStore___block_invoke_2;
  block[3] = &unk_278617668;
  v45 = *(a1 + 56);
  v64 = v9;
  v46 = *(a1 + 48);
  v55 = v45;
  v56 = v46;
  v57 = *(a1 + 32);
  v65 = v6;
  v47 = *(a1 + 64);
  v48 = *(a1 + 88);
  v58 = v47;
  v61 = v48;
  v59 = *(a1 + 72);
  v62 = vextq_s8(*(a1 + 96), *(a1 + 96), 8uLL);
  v49 = *(a1 + 80);
  v50 = *(a1 + 112);
  v60 = v49;
  v63 = v50;
  dispatch_async(v44, block);

  v51 = *MEMORY[0x277D85DE8];
}

void __59__HDNanoSyncManager__queue_handleRestoreRequest_syncStore___block_invoke_2(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) statusCode];
  v3 = [*(a1 + 32) statusCode];
  v4 = MEMORY[0x277CCC328];
  if (*(a1 + 112) == 1)
  {
    if (v2 == 2)
    {
      [(HDNanoSyncManager *)*(a1 + 40) _queue_transitionToRestoreCompleteWithSyncStore:?];
    }
  }

  else
  {
    v5 = *(a1 + 113);
    _HKInitializeLogging();
    v6 = *v4;
    v7 = *v4;
    if (v5 == 1)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v30 = *(a1 + 48);
        v31 = v6;
        v32 = [v30 restoreSession];
        v33 = [v32 sessionUUID];
        v34 = [v33 UUIDString];
        v35 = [*(a1 + 56) idsIdentifier];
        v36 = *(*(*(a1 + 80) + 8) + 40);
        v37 = 138543874;
        *v38 = v34;
        *&v38[8] = 2114;
        *&v38[10] = v35;
        v39 = 2114;
        v40 = v36;
        _os_log_error_impl(&dword_228986000, v31, OS_LOG_TYPE_ERROR, "aborting restore %{public}@ after message %{public}@: %{public}@", &v37, 0x20u);
      }

      v3 = 3;
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 56);
      v9 = v6;
      v10 = [v8 idsIdentifier];
      v11 = *(*(*(a1 + 80) + 8) + 40);
      v37 = 138543618;
      *v38 = v10;
      *&v38[8] = 2114;
      *&v38[10] = v11;
      _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "unhandled restore message %{public}@: %{public}@", &v37, 0x16u);
    }
  }

  v12 = [*(a1 + 56) response];
  v13 = [HDCodableNanoSyncActivationRestore activationRestoreWithRestoreUUID:*(a1 + 64) sequenceNumber:*(a1 + 88) statusCode:v3];
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  if (v14)
  {
    WeakRetained = objc_loadWeakRetained((v14 + 48));
  }

  else
  {
    WeakRetained = 0;
  }

  [v12 configureWithActivationRestore:v13 syncStore:v15 profile:WeakRetained];

  [(HDNanoSyncManager *)*(a1 + 40) _queue_sendResponse:v12 syncStore:*(a1 + 48)];
  if (*(a1 + 96) == 4)
  {
    _HKInitializeLogging();
    v17 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 56);
      v19 = v17;
      v20 = [v18 idsIdentifier];
      v37 = 138543362;
      *v38 = v20;
      _os_log_impl(&dword_228986000, v19, OS_LOG_TYPE_DEFAULT, "obliterating in response to restore message %{public}@", &v37, 0xCu);
    }

    v21 = *(a1 + 40);
    if (v21)
    {
      v22 = objc_loadWeakRetained((v21 + 48));
    }

    else
    {
      v22 = 0;
    }

    [v22 obliterateAndTerminateWithOptions:1 reason:@"Requested by NanoSync remote" completion:0];
  }

  [*(a1 + 72) invalidate];
  _HKInitializeLogging();
  v23 = *v4;
  if (os_signpost_enabled(*v4))
  {
    v24 = v23;
    v25 = v24;
    v26 = *(a1 + 104);
    if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      v27 = *(a1 + 112);
      v28 = *(a1 + 96);
      v37 = 67109376;
      *v38 = v27;
      *&v38[4] = 2048;
      *&v38[6] = v28;
      _os_signpost_emit_with_name_impl(&dword_228986000, v25, OS_SIGNPOST_INTERVAL_END, v26, "nano-sync-restore-request", "didApply=%d action=%ld", &v37, 0x12u);
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __60__HDNanoSyncManager__queue_handleRestoreResponse_syncStore___block_invoke(uint64_t a1, os_log_type_t a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], a2))
  {
    v7 = *(a1 + 32);
    v8 = v6;
    v9 = [v7 idsIdentifier];
    v10 = *(a1 + 48);
    v11 = *(a1 + 40);
    v13 = 138413058;
    v14 = v5;
    v15 = 2114;
    v16 = v9;
    v17 = 1024;
    v18 = v10;
    v19 = 2048;
    v20 = v11;
    _os_log_impl(&dword_228986000, v8, a2, "%@ with response %{public}@ statusCode:%d seq:%lld", &v13, 0x26u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_queue_sendChangeSet:(void *)set status:(void *)status session:(void *)session completion:
{
  v9 = a2;
  setCopy = set;
  statusCopy = status;
  sessionCopy = session;
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 56));
    syncStore = [statusCopy syncStore];
    v20 = 0;
    v14 = [(HDNanoSyncManager *)self _queue_isRestoreCompleteForSyncStore:syncStore error:&v20];
    v15 = v20;
    if (v14)
    {
      v16 = v9 | setCopy;
      if (v9 | setCopy)
      {
        WeakRetained = objc_loadWeakRetained((self + 48));
        v18 = [HDIDSOutgoingRequest changeRequestWithChangeSet:v9 status:setCopy syncStore:syncStore profile:WeakRetained];

        if ([statusCopy isLastChance])
        {
          [v18 setPriority:1];
        }

        if ([setCopy statusCode] == 1)
        {
          [v18 setNonWaking:1];
        }

        [(HDNanoSyncManager *)self _queue_sendRequest:v18 syncStore:syncStore];
        [statusCopy incrementMessageCount];

        v16 = 1;
      }
    }

    else
    {
      v16 = 0;
    }

    if (sessionCopy)
    {
      v19 = v16;
      if ((v16 & 1) == 0 && !v15)
      {
        v15 = [MEMORY[0x277CCA9B8] hk_error:122 format:@"Failed to send change set without reporting an error."];
      }

      sessionCopy[2](sessionCopy, v19, v15);
    }
  }
}

- (uint64_t)_queue_isRestoreCompleteForSyncStore:(uint64_t)store error:
{
  v5 = a2;
  dispatch_assert_queue_V2(*(self + 56));
  if (!*(self + 24))
  {
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_9:
    v7 = @"missing sync store";
    goto LABEL_10;
  }

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:sel__queue_isRestoreCompleteForSyncStore_error_ object:self file:@"HDNanoSyncManager.m" lineNumber:2815 description:{@"Invalid parameter not satisfying: %@", @"_waitingForFirstUnlock == NO"}];

  if (!v5)
  {
    goto LABEL_9;
  }

LABEL_3:
  restoreState = [v5 restoreState];
  if ((restoreState - 1) < 2)
  {
    v7 = @"restore is incomplete";
LABEL_10:
    [MEMORY[0x277CCA9B8] hk_assignError:store code:100 description:v7];
    v8 = 0;
    goto LABEL_11;
  }

  if (restoreState != 3)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v8 = 1;
LABEL_11:

  return v8;
}

- (void)persistChildIdentityFromCodable:(uint64_t)codable
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 hasCurrentSyncIdentity])
  {
    currentSyncIdentity = [v3 currentSyncIdentity];
    v19 = 0;
    v5 = [HDSyncIdentity syncIdentityWithCodable:currentSyncIdentity error:&v19];
    v6 = v19;

    if (v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6 == 0;
    }

    if (v7)
    {
      WeakRetained = objc_loadWeakRetained((codable + 48));
      database = [WeakRetained database];
      v18 = v6;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __53__HDNanoSyncManager_persistChildIdentityFromCodable___block_invoke;
      v16[3] = &unk_278613218;
      v16[4] = codable;
      v17 = v5;
      v10 = [(HDHealthEntity *)HDSyncIdentityEntity performWriteTransactionWithHealthDatabase:database error:&v18 block:v16];
      v11 = v18;

      if (!v10)
      {
        _HKInitializeLogging();
        v12 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v21 = v11;
          _os_log_error_impl(&dword_228986000, v12, OS_LOG_TYPE_ERROR, "Could not persist child sync identity from HDCodableNanoSyncMessage, %{public}@", buf, 0xCu);
        }
      }
    }

    else
    {
      _HKInitializeLogging();
      v13 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v21 = v6;
        _os_log_error_impl(&dword_228986000, v13, OS_LOG_TYPE_ERROR, "Could not extract sync identity from HDCodableNanoSyncMessage, %@", buf, 0xCu);
      }

      v11 = v6;
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __53__HDNanoSyncManager_persistChildIdentityFromCodable___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  if (v6)
  {
    WeakRetained = objc_loadWeakRetained((v6 + 48));
  }

  else
  {
    WeakRetained = 0;
  }

  v8 = [WeakRetained syncIdentityManager];
  v9 = [v8 concreteIdentityForIdentity:*(a1 + 40) shouldCreate:1 transaction:v5 error:a3];

  if ([v9 isChild])
  {
    v10 = v9 != 0;
  }

  else
  {
    v11 = objc_loadWeakRetained((*(a1 + 32) + 48));
    v12 = [v11 daemon];
    v13 = [v12 analyticsSubmissionCoordinator];
    [v13 cloudSync_newChildAdded:1];

    v14 = *(a1 + 32);
    if (v14)
    {
      v15 = objc_loadWeakRetained((v14 + 48));
    }

    else
    {
      v15 = 0;
    }

    v16 = [v15 syncIdentityManager];
    v10 = [v16 updateIsChild:1 concreteIdentity:v9 error:a3];
  }

  return v10;
}

void __70__HDNanoSyncManager__queue_receiveChangeRequest_syncStore_completion___block_invoke(uint64_t a1)
{
  v63 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  v32 = [WeakRetained syncEngine];

  v58[0] = 0;
  v58[1] = v58;
  v58[2] = 0x2020000000;
  v59 = 0;
  v56[0] = 0;
  v56[1] = v56;
  v56[2] = 0x2020000000;
  v57 = 0;
  if (*(a1 + 104) == 1)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v4 = objc_alloc_init(HDMutableDatabaseTransactionContext);
    [(HDMutableDatabaseTransactionContext *)v4 setCacheScope:1];
    v5 = objc_loadWeakRetained((*(a1 + 32) + 48));
    v6 = [v5 database];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __70__HDNanoSyncManager__queue_receiveChangeRequest_syncStore_completion___block_invoke_2;
    v43[3] = &unk_278617708;
    v44 = *(a1 + 40);
    v45 = v32;
    v46 = *(a1 + 48);
    v7 = v3;
    v47 = v7;
    v8 = *(a1 + 56);
    v52 = *(a1 + 96);
    v9 = *(a1 + 32);
    v48 = v8;
    v49 = v9;
    v50 = *(a1 + 64);
    v10 = *(a1 + 72);
    v55 = *(a1 + 112);
    v51 = v10;
    v53 = v58;
    v54 = v56;
    [v6 performWithTransactionContext:v4 error:0 block:v43];
  }

  v11 = *(a1 + 32);
  v12 = *(a1 + 48);
  v13 = *(*(*(a1 + 96) + 8) + 24);
  v14 = *(a1 + 56);
  v15 = v12;
  if (v11 && (dispatch_assert_queue_V2(*(v11 + 64)), [v14 expectsResponse]))
  {
    v16 = [HDCodableNanoSyncStatus statusWithStatusCode:v13];
    v17 = objc_loadWeakRetained((v11 + 48));
    v18 = [v17 syncEngine];
    v60 = 0;
    v19 = [v18 getReceivedAnchorMap:v16 forStore:v15 error:&v60];
    v31 = v60;

    if ((v19 & 1) == 0)
    {
      _HKInitializeLogging();
      v20 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v62 = v31;
        _os_log_error_impl(&dword_228986000, v20, OS_LOG_TYPE_ERROR, "failed to get received anchors: %{public}@", buf, 0xCu);
      }

      [v16 clearAnchors];
      [v16 setStatusCode:0];
    }

    v21 = objc_loadWeakRetained((v11 + 48));
    v22 = [v21 daemon];
    v23 = [v22 analyticsSubmissionCoordinator];
    v24 = [v16 statusCode];
    v25 = objc_loadWeakRetained((v11 + 48));
    [v23 nanoSync_reportResponseStatusCode:v24 profileType:{objc_msgSend(v25, "profileType")}];

    v26 = [v14 response];
    v27 = objc_loadWeakRetained((v11 + 48));
    [v26 configureWithStatus:v16 syncStore:v15 profile:v27];
  }

  else
  {
    v26 = 0;
  }

  v28 = *(*(a1 + 32) + 56);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__HDNanoSyncManager__queue_receiveChangeRequest_syncStore_completion___block_invoke_671;
  block[3] = &unk_278617730;
  v34 = *(a1 + 56);
  v35 = *(a1 + 48);
  v36 = *(a1 + 40);
  v37 = v26;
  v38 = *(a1 + 32);
  v41 = v58;
  v42 = v56;
  v39 = *(a1 + 80);
  v40 = *(a1 + 88);
  v29 = v26;
  dispatch_async(v28, block);

  _Block_object_dispose(v56, 8);
  _Block_object_dispose(v58, 8);

  v30 = *MEMORY[0x277D85DE8];
}

uint64_t __70__HDNanoSyncManager__queue_receiveChangeRequest_syncStore_completion___block_invoke_2(uint64_t a1)
{
  v68 = *MEMORY[0x277D85DE8];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v2 = [*(a1 + 32) changes];
  v3 = [v2 countByEnumeratingWithState:&v51 objects:v63 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v52;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v52 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v51 + 1) + 8 * i);
        v44[1] = MEMORY[0x277D85DD0];
        v44[2] = 3221225472;
        v44[3] = __70__HDNanoSyncManager__queue_receiveChangeRequest_syncStore_completion___block_invoke_3;
        v44[4] = &unk_2786176E0;
        v45 = *(a1 + 40);
        v46 = v7;
        v47 = *(a1 + 48);
        v48 = *(a1 + 56);
        v8 = *(a1 + 64);
        v9 = *(a1 + 96);
        v49 = v8;
        v50 = v9;
        HKWithAutoreleasePool();
      }

      v4 = [v2 countByEnumeratingWithState:&v51 objects:v63 count:16];
    }

    while (v4);
  }

  if ([*(a1 + 56) count])
  {
    v11 = *(a1 + 72);
    v10 = *(a1 + 80);
    v12 = *(a1 + 48);
    v13 = *(a1 + 56);
    v14 = v10;
    v15 = v12;
    if (!v11)
    {
LABEL_29:

      goto LABEL_30;
    }

    dispatch_assert_queue_V2(*(v11 + 64));
    if (v13)
    {
      if (v15)
      {
LABEL_12:
        if (*(v11 + 8) && [v13 count] && objc_msgSend(v14, "count"))
        {
          v41 = v14;
          [MEMORY[0x277CBEB18] array];
          v43 = v42 = v13;
          v59 = 0u;
          v60 = 0u;
          v61 = 0u;
          v62 = 0u;
          v16 = v13;
          v17 = [v16 countByEnumeratingWithState:&v59 objects:buf count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v60;
            do
            {
              for (j = 0; j != v18; ++j)
              {
                if (*v60 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v21 = *(*(&v59 + 1) + 8 * j);
                WeakRetained = objc_loadWeakRetained((v11 + 48));
                v23 = [v21 syncEntityClassForProfile:WeakRetained];

                if ([v15 supportsSpeculativeChangesForSyncEntityClass:v23])
                {
                  v24 = [v21 speculativeCopy];
                  if (v24)
                  {
                    [v43 addObject:v24];
                  }
                }
              }

              v18 = [v16 countByEnumeratingWithState:&v59 objects:buf count:16];
            }

            while (v18);
          }

          v14 = v41;
          if ([v43 count])
          {
            v25 = *(v11 + 56);
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __119__HDNanoSyncManager__syncQueue_forwardSpeculativeChangeSetIfNecessaryForChanges_destinationSyncStores_originSyncStore___block_invoke;
            block[3] = &unk_278613830;
            v56 = v41;
            v57 = v43;
            v58 = v11;
            dispatch_async(v25, block);
          }

          v13 = v42;
        }

        goto LABEL_29;
      }
    }

    else
    {
      v39 = [MEMORY[0x277CCA890] currentHandler];
      [v39 handleFailureInMethod:sel__syncQueue_forwardSpeculativeChangeSetIfNecessaryForChanges_destinationSyncStores_originSyncStore_ object:v11 file:@"HDNanoSyncManager.m" lineNumber:2980 description:{@"Invalid parameter not satisfying: %@", @"changes != nil"}];

      if (v15)
      {
        goto LABEL_12;
      }
    }

    v40 = [MEMORY[0x277CCA890] currentHandler];
    [v40 handleFailureInMethod:sel__syncQueue_forwardSpeculativeChangeSetIfNecessaryForChanges_destinationSyncStores_originSyncStore_ object:v11 file:@"HDNanoSyncManager.m" lineNumber:2981 description:{@"Invalid parameter not satisfying: %@", @"originSyncStore != nil"}];

    goto LABEL_12;
  }

LABEL_30:
  v26 = *(a1 + 88);
  if (v26)
  {
    v27 = *(a1 + 40);
    v28 = *(a1 + 48);
    v44[0] = 0;
    v29 = [v27 applyAcknowledgedAnchorMap:v26 forStore:v28 resetNext:1 resetInvalid:1 error:v44];
    v30 = v44[0];
    if ((v29 & 1) == 0)
    {
      _HKInitializeLogging();
      v33 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v34 = *(a1 + 64);
        v35 = v33;
        v36 = [v34 idsIdentifier];
        *buf = 138543618;
        v65 = v36;
        v66 = 2114;
        v67 = v30;
        _os_log_error_impl(&dword_228986000, v35, OS_LOG_TYPE_ERROR, "failed to apply acknowledged anchors for request %{public}@: %{public}@", buf, 0x16u);
      }

      goto LABEL_39;
    }

    v31 = *(a1 + 120);
    if (v31 == 5)
    {
      *(*(*(a1 + 104) + 8) + 24) = 1;
      v32 = *(*(a1 + 112) + 8);
    }

    else
    {
      if (v31 != 4)
      {
LABEL_39:

        goto LABEL_40;
      }

      v32 = *(*(a1 + 104) + 8);
    }

    *(v32 + 24) = 1;
    goto LABEL_39;
  }

LABEL_40:
  v37 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __70__HDNanoSyncManager__queue_receiveChangeRequest_syncStore_completion___block_invoke_3(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v14 = 0;
  v5 = [v2 applySyncChange:v3 forStore:v4 error:&v14];
  v6 = v14;
  if (v5)
  {
    [*(a1 + 56) addObject:*(a1 + 40)];
  }

  else
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 64);
      v11 = v7;
      v12 = [v10 idsIdentifier];
      v13 = [*(a1 + 40) nanoSyncDescription];
      *buf = 138543874;
      v16 = v12;
      v17 = 2114;
      v18 = v13;
      v19 = 2114;
      v20 = v6;
      _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, "failed to apply request %{public}@ change %{public}@: %{public}@", buf, 0x20u);
    }

    *(*(*(a1 + 72) + 8) + 24) = 2;
  }

  v8 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __70__HDNanoSyncManager__queue_receiveChangeRequest_syncStore_completion___block_invoke_671(uint64_t a1)
{
  if ([*(a1 + 32) messageID] == 2)
  {
    [*(a1 + 40) didReceiveRequestWithChangeSet:*(a1 + 48)];
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    [(HDNanoSyncManager *)*(a1 + 64) _queue_sendResponse:v2 syncStore:*(a1 + 40)];
  }

  if (*(*(*(a1 + 88) + 8) + 24) == 1)
  {
    if (*(*(*(a1 + 96) + 8) + 24))
    {
      v3 = 10;
    }

    else
    {
      v3 = 8;
    }

    if (*(*(*(a1 + 96) + 8) + 24))
    {
      v4 = @"Remote requested last chance sync";
    }

    else
    {
      v4 = @"Remote requested sync";
    }

    [(HDNanoSyncManager *)*(a1 + 64) _queue_syncImmediatelyWithReason:v4 options:v3 accessibilityAssertion:0 completion:0];
  }

  [*(a1 + 72) invalidate];
  v5 = *(*(a1 + 80) + 16);

  return v5();
}

void __74__HDNanoSyncManager__queue_changeRequestDidFailToSendWithError_syncStore___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  v2 = [WeakRetained syncEngine];
  v3 = [*(a1 + 40) changeSet];
  v4 = [v3 changes];
  [v2 resetAnchorsWithFailedChanges:v4 store:*(a1 + 48)];
}

void __75__HDNanoSyncManager__queue_changeResponseDidFailToSendWithError_syncStore___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  v2 = [WeakRetained syncEngine];
  v3 = [*(a1 + 40) changeSet];
  v4 = [v3 changes];
  [v2 resetAnchorsWithFailedChanges:v4 store:*(a1 + 48)];
}

void __60__HDNanoSyncManager__queue_receiveChangeResponse_syncStore___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 64) == 2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  v4 = [WeakRetained syncEngine];
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v11 = 0;
  v7 = [v4 applyAcknowledgedAnchorMap:v5 forStore:v6 resetNext:v2 resetInvalid:1 error:&v11];
  v8 = v11;

  if ((v7 & 1) == 0)
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v13 = v8;
      _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "failed to apply received anchors: %{public}@", buf, 0xCu);
    }
  }

  [*(a1 + 56) invalidate];

  v10 = *MEMORY[0x277D85DE8];
}

void __96__HDNanoSyncManager__queue_syncImmediatelyWithReason_options_accessibilityAssertion_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = CFAbsoluteTimeGetCurrent() - *(a1 + 56);
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  v8 = [WeakRetained daemon];
  v9 = [v8 analyticsSubmissionCoordinator];
  v10 = *(a1 + 64);
  v11 = *(a1 + 40);
  v12 = objc_loadWeakRetained((*(a1 + 32) + 48));
  v13 = [v12 profileType];
  if (a2)
  {
    [v9 nanoSync_reportSyncSuccessWithReason:v11 options:v10 duration:v13 profileType:v6];
  }

  else
  {
    [v9 nanoSync_reportSyncFailureWithReason:v11 options:v10 duration:v13 profileType:v5 error:v6];
  }

  _HKInitializeLogging();
  v14 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEBUG))
  {
    v17 = *(a1 + 40);
    v18 = *(a1 + 64);
    v19 = v14;
    v20 = _StringFromSyncOptions(v18);
    v21 = 138413314;
    v22 = v17;
    v23 = 2048;
    v24 = v6;
    v25 = 2112;
    v26 = v20;
    v27 = 1024;
    v28 = a2;
    v29 = 2114;
    v30 = v5;
    _os_log_debug_impl(&dword_228986000, v19, OS_LOG_TYPE_DEBUG, "Finished sync (%@) in %lfs options='%@' success=%d error=%{public}@", &v21, 0x30u);
  }

  v15 = *(a1 + 48);
  if (v15)
  {
    (*(v15 + 16))(v15, a2, v5);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_queue_performNextProactiveSyncWithRemainingDevices:(void *)devices accessibilityAssertion:(void *)assertion completion:
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a2;
  devicesCopy = devices;
  assertionCopy = assertion;
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 56));
    if ([v7 count])
    {
      _HKInitializeLogging();
      v10 = MEMORY[0x277CCC328];
      v11 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
      {
        v12 = v11;
        *buf = 134217984;
        v28 = [v7 count];
        _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_INFO, "performing proactive sync with %lu remaining device(s)", buf, 0xCu);
      }

      firstObject = [v7 firstObject];
      [v7 removeObjectAtIndex:0];
      v14 = *(self + 120);
      hd_deviceIdentifier = [firstObject hd_deviceIdentifier];
      v16 = [v14 objectForKeyedSubscript:hd_deviceIdentifier];

      if (v16 && ([v16 isActive] & 1) == 0 && objc_msgSend(v16, "isRestoreComplete"))
      {
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __107__HDNanoSyncManager__queue_performNextProactiveSyncWithRemainingDevices_accessibilityAssertion_completion___block_invoke;
        v21[3] = &unk_2786177D0;
        v22 = v16;
        selfCopy = self;
        v24 = v7;
        v25 = devicesCopy;
        v26 = assertionCopy;
        [(HDNanoSyncManager *)self _queue_synchronizeWithOptions:0 restoreMessagesSentHandler:v22 targetSyncStore:@"proactive sync" reason:v25 accessibilityAssertion:v21 completion:?];
      }

      else
      {
        _HKInitializeLogging();
        v17 = *v10;
        if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
        {
          v18 = v17;
          hd_shortDescription = [firstObject hd_shortDescription];
          *buf = 138543618;
          v28 = v16;
          v29 = 2114;
          v30 = hd_shortDescription;
          _os_log_impl(&dword_228986000, v18, OS_LOG_TYPE_DEFAULT, "skipping proactive sync for store %{public}@ for device %{public}@", buf, 0x16u);
        }

        [(HDNanoSyncManager *)self _queue_performNextProactiveSyncWithRemainingDevices:v7 accessibilityAssertion:devicesCopy completion:assertionCopy];
      }
    }

    else if (assertionCopy)
    {
      (*(assertionCopy + 2))(assertionCopy, 1, 0);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __107__HDNanoSyncManager__queue_performNextProactiveSyncWithRemainingDevices_accessibilityAssertion_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      *buf = 138543618;
      v19 = v13;
      v20 = 2114;
      v21 = v5;
      _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "failed proactive sync for store %{public}@: %{public}@", buf, 0x16u);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __107__HDNanoSyncManager__queue_performNextProactiveSyncWithRemainingDevices_accessibilityAssertion_completion___block_invoke_714;
  block[3] = &unk_278613680;
  v14 = *(a1 + 40);
  v7 = *(v14 + 56);
  v8 = *(&v14 + 1);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  v16 = v14;
  v17 = v11;
  dispatch_async(v7, block);

  v12 = *MEMORY[0x277D85DE8];
}

void __119__HDNanoSyncManager__syncQueue_forwardSpeculativeChangeSetIfNecessaryForChanges_destinationSyncStores_originSyncStore___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = *(a1 + 32);
  v26 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v26)
  {
    v25 = *v33;
    do
    {
      v2 = 0;
      do
      {
        if (*v33 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = v2;
        v3 = *(*(&v32 + 1) + 8 * v2);
        v4 = objc_alloc_init(HDCodableNanoSyncChangeSet);
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v5 = *(a1 + 40);
        v6 = [v5 countByEnumeratingWithState:&v28 objects:v39 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v29;
          do
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v29 != v8)
              {
                objc_enumerationMutation(v5);
              }

              v10 = *(*(&v28 + 1) + 8 * i);
              WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 48));
              v12 = [v10 syncEntityClassForProfile:WeakRetained];

              if ([v3 supportsSpeculativeChangesForSyncEntityClass:v12])
              {
                [(HDCodableNanoSyncChangeSet *)v4 addChanges:v10];
              }
            }

            v7 = [v5 countByEnumeratingWithState:&v28 objects:v39 count:16];
          }

          while (v7);
        }

        if ([(HDCodableNanoSyncChangeSet *)v4 changesCount])
        {
          _HKInitializeLogging();
          v13 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
          {
            v14 = v13;
            v15 = [(HDCodableNanoSyncChangeSet *)v4 nanoSyncDescription];
            *buf = 138543618;
            *&buf[4] = v15;
            v37 = 2114;
            v38 = v3;
            _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_DEFAULT, "forwarding speculative change set %{public}@ to %{public}@", buf, 0x16u);
          }

          v16 = *(a1 + 48);
          v17 = v4;
          v18 = v3;
          if (v16)
          {
            dispatch_assert_queue_V2(*(v16 + 56));
            *buf = 0;
            v19 = [(HDNanoSyncManager *)v16 _queue_isRestoreCompleteForSyncStore:v18 error:buf];
            v20 = *buf;
            if (v17 && v19)
            {
              v21 = objc_loadWeakRetained((v16 + 48));
              v22 = [HDIDSOutgoingRequest speculativeChangeRequestWithChangeSet:v17 syncStore:v18 profile:v21];

              [v22 setNonWaking:1];
              [(HDNanoSyncManager *)v16 _queue_sendRequest:v22 syncStore:v18];
            }
          }
        }

        v2 = v27 + 1;
      }

      while (v27 + 1 != v26);
      v26 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v26);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_syncImmediatelyWithReason:(uint64_t)reason options:
{
  v5 = a2;
  v6 = v5;
  if (self)
  {
    v7 = *(self + 56);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__HDNanoSyncManager__syncImmediatelyWithReason_options___block_invoke;
    block[3] = &unk_278614E78;
    block[4] = self;
    v9 = v5;
    reasonCopy = reason;
    dispatch_async(v7, block);
  }
}

void __47__HDNanoSyncManager__resetSyncAnchorsForStore___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  v2 = [WeakRetained syncEngine];
  [v2 resetStore:*(a1 + 40)];
}

- (void)_userCharacteristicsDidChange:(id)change
{
  if (self)
  {
    [(HDNanoSyncManager *)self _syncImmediatelyWithReason:0 options:?];
  }
}

- (void)_userPreferencesDidChange:(id)change
{
  if (self)
  {
    [(HDNanoSyncManager *)self _syncImmediatelyWithReason:0 options:?];
  }
}

- (void)_workoutSamplesWereAssociated:(id)associated
{
  if (self)
  {
    [(HDNanoSyncManager *)self _syncImmediatelyWithReason:0 options:?];
  }
}

- (void)samplesAdded:(id)added anchor:(id)anchor
{
  if (self)
  {
    [(HDNanoSyncManager *)self _syncImmediatelyWithReason:0 options:?];
  }
}

void __82__HDNanoSyncManager__queue_waitForLastChanceSyncWithPairingID_timeout_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__HDNanoSyncManager__queue_waitForLastChanceSyncWithPairingID_timeout_completion___block_invoke_2;
  block[3] = &unk_278616F38;
  objc_copyWeak(&v3, (a1 + 40));
  dispatch_async(v1, block);
  objc_destroyWeak(&v3);
}

void __82__HDNanoSyncManager__queue_waitForLastChanceSyncWithPairingID_timeout_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained removeExpiredIncomingSyncObservers];
}

void __82__HDNanoSyncManager__queue_waitForLastChanceSyncWithPairingID_timeout_completion___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v7 = 138543362;
      v8 = v4;
      _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "error occurred during last-chance sync request: %{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_sendFinalStatusMessageForSyncSession:(char)session didFinishSuccessfully:(void *)successfully error:
{
  v7 = a2;
  successfullyCopy = successfully;
  if (self)
  {
    v9 = *(self + 64);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __87__HDNanoSyncManager__sendFinalStatusMessageForSyncSession_didFinishSuccessfully_error___block_invoke;
    v10[3] = &unk_278617A98;
    v11 = v7;
    selfCopy = self;
    sessionCopy = session;
    v13 = successfullyCopy;
    dispatch_async(v9, v10);
  }
}

void __68__HDNanoSyncManager__queue_recieveStartWorkoutAppRequest_syncStore___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEBUG))
  {
    v19 = @"with response";
    if (!v5)
    {
      v19 = @"with nil response";
    }

    *buf = 138412546;
    v27 = v19;
    v28 = 2114;
    v29 = v6;
    _os_log_debug_impl(&dword_228986000, v7, OS_LOG_TYPE_DEBUG, "Start workout app request complete %@, error: %{public}@", buf, 0x16u);
  }

  v8 = [*(a1 + 32) requestIdentifier];
  [v5 setRequestIdentifier:v8];

  if (v6)
  {
    v9 = [v6 hk_codableError];
    [v5 setLaunchError:v9];
  }

  v10 = [*(a1 + 40) response];
  [v10 setPbResponse:v5];
  v11 = *(*(a1 + 48) + 56);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__HDNanoSyncManager__queue_recieveStartWorkoutAppRequest_syncStore___block_invoke_796;
  block[3] = &unk_278617820;
  v12 = *(a1 + 32);
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v21 = v12;
  v22 = v13;
  v23 = v10;
  v15 = v14;
  v16 = *(a1 + 64);
  v24 = v15;
  v25 = v16;
  v17 = v10;
  dispatch_async(v11, block);

  v18 = *MEMORY[0x277D85DE8];
}

void __68__HDNanoSyncManager__queue_recieveStartWorkoutAppRequest_syncStore___block_invoke_796(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 32);
    v7 = v2;
    v8 = [v6 requestIdentifier];
    v9 = 138412290;
    v10 = v8;
    _os_log_debug_impl(&dword_228986000, v7, OS_LOG_TYPE_DEBUG, "Sending response to start app request %@", &v9, 0xCu);
  }

  [(HDNanoSyncManager *)*(a1 + 40) _queue_sendResponse:*(a1 + 56) syncStore:?];
  v3 = *(*(a1 + 64) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  v5 = *MEMORY[0x277D85DE8];
}

void __86__HDNanoSyncManager__queue_sendCompanionUserNotificationRequest_syncStore_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (!a2)
  {
    if (v4)
    {
      _HKInitializeLogging();
      v6 = *MEMORY[0x277CCC300];
      if (os_log_type_enabled(*MEMORY[0x277CCC300], OS_LOG_TYPE_ERROR))
      {
        v8 = 138412290;
        v9 = v5;
        _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "Request to display companion user notification failed: %@", &v8, 0xCu);
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __78__HDNanoSyncManager__queue_recieveCompanionUserNotificationRequest_syncStore___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC300];
  if (os_log_type_enabled(*MEMORY[0x277CCC300], OS_LOG_TYPE_DEBUG))
  {
    v19 = @"with response";
    if (!v5)
    {
      v19 = @"with nil response";
    }

    *buf = 138412546;
    v27 = v19;
    v28 = 2112;
    v29 = v6;
    _os_log_debug_impl(&dword_228986000, v7, OS_LOG_TYPE_DEBUG, "Display notification request complete %@, error: %@", buf, 0x16u);
  }

  v8 = [*(a1 + 32) requestIdentifier];
  [v5 setRequestIdentifier:v8];

  if (v6)
  {
    v9 = [v6 hk_codableError];
    [v5 setError:v9];
  }

  v10 = [*(a1 + 40) response];
  [v10 setPbResponse:v5];
  v11 = *(*(a1 + 48) + 56);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__HDNanoSyncManager__queue_recieveCompanionUserNotificationRequest_syncStore___block_invoke_807;
  block[3] = &unk_278617820;
  v12 = *(a1 + 32);
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v21 = v12;
  v22 = v13;
  v23 = v10;
  v15 = v14;
  v16 = *(a1 + 64);
  v24 = v15;
  v25 = v16;
  v17 = v10;
  dispatch_async(v11, block);

  v18 = *MEMORY[0x277D85DE8];
}

void __78__HDNanoSyncManager__queue_recieveCompanionUserNotificationRequest_syncStore___block_invoke_807(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC300];
  if (os_log_type_enabled(*MEMORY[0x277CCC300], OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 32);
    v7 = v2;
    v8 = [v6 requestIdentifier];
    v9 = 138412290;
    v10 = v8;
    _os_log_debug_impl(&dword_228986000, v7, OS_LOG_TYPE_DEBUG, "Sending response to start app request %@", &v9, 0xCu);
  }

  [(HDNanoSyncManager *)*(a1 + 40) _queue_sendResponse:*(a1 + 56) syncStore:?];
  v3 = *(*(a1 + 64) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  v5 = *MEMORY[0x277D85DE8];
}

void __76__HDNanoSyncManager__queue_receiveNotificationInstructionRequest_syncStore___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC300];
  if (os_log_type_enabled(*MEMORY[0x277CCC300], OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 32);
    v8 = v5;
    v9 = objc_opt_class();
    v10 = *(a1 + 40);
    v11 = v9;
    v12 = [v10 requestIdentifier];
    v13 = 138543874;
    v14 = v9;
    v15 = 2112;
    v16 = v12;
    v17 = 2112;
    v18 = v4;
    _os_log_debug_impl(&dword_228986000, v8, OS_LOG_TYPE_DEBUG, "[%{public}@] Processed Notification instruction request %@, error: %@", &v13, 0x20u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __64__HDNanoSyncManager__queue_receiveTinkerOptInRequest_syncStore___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    *buf = 138543618;
    v21 = v7;
    v22 = 2114;
    v23 = v5;
    _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@ Preparing response to Tinker opt in request; error: %{public}@ (#t0)", buf, 0x16u);
  }

  v8 = [*(a1 + 40) response];
  v9 = objc_alloc_init(HDCodableTinkerOptInResponse);
  v10 = [*(a1 + 48) requestIdentifier];
  [(HDCodableTinkerOptInResponse *)v9 setRequestIdentifier:v10];

  [(HDCodableTinkerOptInResponse *)v9 setAccepted:a2];
  if (v5)
  {
    v11 = [v5 hk_codableError];
    [(HDCodableTinkerOptInResponse *)v9 setError:v11];
  }

  [v8 setPbResponse:v9];
  v12 = *(a1 + 32);
  v13 = *(v12 + 56);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __64__HDNanoSyncManager__queue_receiveTinkerOptInRequest_syncStore___block_invoke_821;
  v16[3] = &unk_278616D68;
  v16[4] = v12;
  v17 = *(a1 + 48);
  v18 = v8;
  v19 = *(a1 + 56);
  v14 = v8;
  dispatch_async(v13, v16);

  v15 = *MEMORY[0x277D85DE8];
}

void __64__HDNanoSyncManager__queue_receiveTinkerOptInRequest_syncStore___block_invoke_821(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = v2;
    v6 = [v3 requestIdentifier];
    v8 = 138543618;
    v9 = v4;
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@ Will send Tinker opt in response to request %{public}@ (#t0)", &v8, 0x16u);
  }

  [(HDNanoSyncManager *)*(a1 + 32) _queue_sendResponse:*(a1 + 56) syncStore:?];
  v7 = *MEMORY[0x277D85DE8];
}

void __75__HDNanoSyncManager__queue_registerForTinkerOptInNotificationWithResponse___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(HDNanoSyncManager *)WeakRetained _queue_handleTinkerOptInNotification:?];
}

- (void)_queue_handleTinkerOptInNotification:(uint64_t)notification
{
  v34 = *MEMORY[0x277D85DE8];
  if (notification)
  {
    dispatch_assert_queue_V2(*(notification + 56));
    notify_cancel(*(notification + 28));
    notify_cancel(*(notification + 32));
    _HKInitializeLogging();
    v4 = *MEMORY[0x277CCC328];
    v5 = os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT);
    if (a2)
    {
      if (v5)
      {
        v6 = *(notification + 112);
        v7 = v4;
        *buf = 134349056;
        v33 = [v6 count];
        _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "[sharing-setup] Tinker opt in accepted for the previous %{public}lu requests. Sending answer to companion (#t0)", buf, 0xCu);
      }

      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v8 = *(notification + 112);
      v9 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v27;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v27 != v11)
            {
              objc_enumerationMutation(v8);
            }

            (*(*(*(&v26 + 1) + 8 * i) + 16))();
          }

          v10 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
        }

        while (v10);
      }
    }

    else
    {
      if (v5)
      {
        v13 = *(notification + 112);
        v14 = v4;
        *buf = 134349056;
        v33 = [v13 count];
        _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_DEFAULT, "[sharing-setup] Tinker opt in declined for the previous %{public}lu requests. Sending answer to companion (#t0)", buf, 0xCu);
      }

      v8 = [MEMORY[0x277CCA9B8] hk_error:4 format:@"Tinker user declined Health sharing opt-in"];
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v15 = *(notification + 112);
      v16 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v23;
        do
        {
          for (j = 0; j != v17; ++j)
          {
            if (*v23 != v18)
            {
              objc_enumerationMutation(v15);
            }

            (*(*(*(&v22 + 1) + 8 * j) + 16))(*(*(&v22 + 1) + 8 * j));
          }

          v17 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
        }

        while (v17);
      }
    }

    v20 = *(notification + 112);
    *(notification + 112) = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __75__HDNanoSyncManager__queue_registerForTinkerOptInNotificationWithResponse___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(HDNanoSyncManager *)WeakRetained _queue_handleTinkerOptInNotification:?];
}

uint64_t __65__HDNanoSyncManager__queue_receiveTinkerOptInResponse_syncStore___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) accepted];
  v4 = *(a1 + 40);
  v5 = *(v2 + 16);

  return v5(v2, v3, v4);
}

void __66__HDNanoSyncManager__queue_receiveTinkerPairingRequest_syncStore___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v24 = v5;
    v25 = 2114;
    v26 = v6;
    _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "[sharing-setup] Preparing response %{public}@ to Tinker pairing request; error: %{public}@ (#t0)", buf, 0x16u);
  }

  v8 = [*(a1 + 32) response];
  v9 = objc_alloc_init(HDCodableTinkerPairingResponse);
  v10 = [*(a1 + 40) requestIdentifier];
  [(HDCodableTinkerPairingResponse *)v9 setRequestIdentifier:v10];

  [(HDCodableTinkerPairingResponse *)v9 setSetupMetadata:v5];
  if (v6)
  {
    v11 = [v6 hk_codableError];
    [(HDCodableTinkerPairingResponse *)v9 setError:v11];
  }

  [v8 setPbResponse:v9];
  v12 = *(*(a1 + 48) + 56);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __66__HDNanoSyncManager__queue_receiveTinkerPairingRequest_syncStore___block_invoke_848;
  v18[3] = &unk_278616D68;
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v19 = v13;
  v20 = v14;
  v21 = v8;
  v22 = v15;
  v16 = v8;
  dispatch_async(v12, v18);

  v17 = *MEMORY[0x277D85DE8];
}

void __66__HDNanoSyncManager__queue_receiveTinkerPairingRequest_syncStore___block_invoke_848(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 requestIdentifier];
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "[sharing-setup] Sending response to Tinker pairing request %{public}@ (#t0)", &v7, 0xCu);
  }

  [(HDNanoSyncManager *)*(a1 + 40) _queue_sendResponse:*(a1 + 56) syncStore:?];
  v6 = *MEMORY[0x277D85DE8];
}

void __66__HDNanoSyncManager__queue_receiveTinkerPairingRequest_syncStore___block_invoke_863(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a4;
  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC328];
  v8 = *MEMORY[0x277CCC328];
  if (a3)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = 138543362;
      v13 = v6;
      _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "[sharing-setup] Failed health sharing set up process: %{public}@ (#t0)", &v12, 0xCu);
    }

    v9 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "[sharing-setup] Successfully finished health sharing set up process, sending response (#t0)", &v12, 2u);
    }

    v10 = *(*(*(a1 + 48) + 8) + 40);
    v9 = *(*(a1 + 40) + 16);
  }

  v9();
  [*(a1 + 32) invalidate];

  v11 = *MEMORY[0x277D85DE8];
}

void __66__HDNanoSyncManager__queue_receiveTinkerPairingRequest_syncStore___block_invoke_865(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "[sharing-setup] Ensuring that sync is enabled locally. (#t0)", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  v7 = [WeakRetained daemon];
  v8 = [v7 cloudSyncCoordinator];
  [v8 cloudSyncSupportStatusDidChange];

  v9 = objc_loadWeakRetained((*(a1 + 32) + 48));
  v10 = [v9 daemon];
  v11 = [v10 cloudSyncCoordinator];
  v12 = [v11 accountProvider];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __66__HDNanoSyncManager__queue_receiveTinkerPairingRequest_syncStore___block_invoke_866;
  v14[3] = &unk_2786130D8;
  v15 = v4;
  v13 = v4;
  [v12 enableSyncLocallyWithCompletion:v14];
}

uint64_t __66__HDNanoSyncManager__queue_receiveTinkerPairingRequest_syncStore___block_invoke_866(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = 2;
  }

  return (*(v2 + 16))(v2, v3);
}

void __66__HDNanoSyncManager__queue_receiveTinkerPairingRequest_syncStore___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) tinkerFirstName];

  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC328];
  v7 = os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "[sharing-setup] Updating profile name for local device. (#t0)", buf, 2u);
    }

    v8 = *(a1 + 40);
    if (v8)
    {
      WeakRetained = objc_loadWeakRetained((v8 + 48));
    }

    else
    {
      WeakRetained = 0;
    }

    v10 = [*(a1 + 32) tinkerFirstName];
    v11 = [*(a1 + 32) tinkerLastName];
    v17 = 0;
    v12 = [WeakRetained setDisplayFirstName:v10 lastName:v11 error:&v17];
    v13 = v17;

    if (v12)
    {
      v14 = 0;
      v15 = 0;
    }

    else
    {
      v14 = 1;
      v15 = v13;
    }

    (v4)[2](v4, v14, v15);
  }

  else
  {
    if (v7)
    {
      v16 = 0;
      _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "[sharing-setup] No first/last name present; not saving in local profile. (#t0)", &v16, 2u);
    }

    v4[2](v4, 0, 0);
  }
}

void __66__HDNanoSyncManager__queue_receiveTinkerPairingRequest_syncStore___block_invoke_868(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277CBC7C8]);
  v6 = [*(a1 + 32) guardianIcloudIdentifier];
  v7 = [v5 initWithEmailAddress:v6];

  _HKInitializeLogging();
  v8 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v20 = v7;
    _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "[sharing-setup] Starting sharing setup with lookupInfo %{public}@ (#t0)", buf, 0xCu);
  }

  v9 = [*(a1 + 32) setupType] == 1;
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 48));
  v11 = [WeakRetained cloudSyncManager];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __66__HDNanoSyncManager__queue_receiveTinkerPairingRequest_syncStore___block_invoke_871;
  v15[3] = &unk_278617980;
  v17 = v4;
  v16 = *(a1 + 48);
  v18 = *(a1 + 56);
  v12 = v4;
  v13 = [v11 setupSharingToAccountWithIdentityLookupInfo:v7 requireExistingRelationship:v9 requireZoneDeviceMode:&unk_283CB08B8 completion:v15];

  v14 = *MEMORY[0x277D85DE8];
}

void __66__HDNanoSyncManager__queue_receiveTinkerPairingRequest_syncStore___block_invoke_871(void *a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  _HKInitializeLogging();
  v8 = MEMORY[0x277CCC328];
  v9 = *MEMORY[0x277CCC328];
  v10 = *MEMORY[0x277CCC328];
  if (v6)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = a1[4];
      *buf = 138543362;
      v21 = v11;
      _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "[sharing-setup] Set up shares in response to Tinker pairing request %{public}@ (#t0)", buf, 0xCu);
    }

    v19 = 0;
    v12 = [v6 codableSharingSetupMetadataWithError:&v19];
    v13 = v19;
    v14 = *(a1[6] + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v12;

    if (*(*(a1[6] + 8) + 40))
    {
      objc_storeStrong((*(a1[7] + 8) + 40), a2);
      v16 = *(a1[5] + 16);
    }

    else
    {
      _HKInitializeLogging();
      v17 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v21 = v13;
        _os_log_error_impl(&dword_228986000, v17, OS_LOG_TYPE_ERROR, "[sharing-setup] Encoding sharing setup metadata failed %{public}@ (#t0)", buf, 0xCu);
      }

      v16 = *(a1[5] + 16);
    }

    v16();
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v21 = v7;
      _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "[sharing-setup] Share setup failed %{public}@ (#t0)", buf, 0xCu);
    }

    (*(a1[5] + 16))();
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __66__HDNanoSyncManager__queue_receiveTinkerPairingRequest_syncStore___block_invoke_873(uint64_t a1, uint64_t a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(*(*(a1 + 56) + 8) + 40);
    v7 = v5;
    v8 = [v6 shareParticipant];
    *buf = 138543362;
    v25 = v8;
    _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "[sharing-setup] Sharing set up successful to %{public}@. Save guardian details for transparency alert (#t0)", buf, 0xCu);
  }

  v9 = objc_alloc_init(HDTinkerPairedUserInfo);
  v10 = [*(a1 + 32) guardianFirstName];
  [(HDTinkerPairedUserInfo *)v9 setFirstName:v10];

  v11 = [*(a1 + 32) guardianLastName];
  [(HDTinkerPairedUserInfo *)v9 setLastName:v11];

  v12 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(*(a1 + 32), "guardianDSID")}];
  [(HDTinkerPairedUserInfo *)v9 setDsid:v12];

  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 48));
  v14 = [WeakRetained database];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __66__HDNanoSyncManager__queue_receiveTinkerPairingRequest_syncStore___block_invoke_875;
  v20[3] = &unk_2786179D0;
  v15 = *(a1 + 48);
  v20[4] = *(a1 + 40);
  v21 = v9;
  v22 = *(a1 + 56);
  v23 = 0;
  v16 = v9;
  LODWORD(v9) = [v14 performWithTransactionContext:v15 error:&v23 block:v20];
  v17 = v23;

  if (v9)
  {
    v18 = 0;
  }

  else
  {
    v18 = 2;
  }

  v4[2](v4, v18, v17);

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __66__HDNanoSyncManager__queue_receiveTinkerPairingRequest_syncStore___block_invoke_875(void *a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a1[4];
  v3 = a1[5];
  v5 = [*(*(a1[6] + 8) + 40) shareParticipant];
  v6 = v3;
  v7 = v5;
  if (!v4)
  {
    goto LABEL_6;
  }

  _HKInitializeLogging();
  v8 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543618;
    v16 = v6;
    v17 = 2114;
    v18 = v7;
    _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "[sharing-setup] Saving guardian info %{public}@, guardianParticipant %{public}@ (#t0)", &v15, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((v4 + 48));
  v10 = [WeakRetained setPairedGuardianUserInfo:v6 error:a2];

  if (v10)
  {
    v11 = objc_loadWeakRetained((v4 + 48));
    v12 = [v11 setPairedGuardianParticipant:v7 error:a2];
  }

  else
  {
LABEL_6:
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

void __66__HDNanoSyncManager__queue_receiveTinkerPairingRequest_syncStore___block_invoke_2_876(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "[sharing-setup] Scheduling buddy flow transparency alert(#t0)", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  v7 = [WeakRetained database];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__HDNanoSyncManager__queue_receiveTinkerPairingRequest_syncStore___block_invoke_877;
  v12[3] = &unk_278616D40;
  v8 = *(a1 + 40);
  v12[4] = *(a1 + 32);
  v13 = 0;
  v9 = [v7 performWithTransactionContext:v8 error:&v13 block:v12];
  v10 = v13;

  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = 2;
  }

  v4[2](v4, v11, v10);
}

uint64_t __66__HDNanoSyncManager__queue_receiveTinkerPairingRequest_syncStore___block_invoke_877(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (!v2)
  {
    v19 = 0;
    goto LABEL_12;
  }

  _HKInitializeLogging();
  v4 = MEMORY[0x277CCC328];
  v5 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    *v22 = 0;
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "[sharing-setup] Set up transparency alert to fire after buddy flow (#t0)", v22, 2u);
  }

  v6 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v7 = [v6 objectForKey:*MEMORY[0x277CCBC10]];

  v8 = [MEMORY[0x277CBEAA8] date];
  v9 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = [v9 dateByAddingUnit:128 value:objc_msgSend(v7 toDate:"integerValue") options:{v8, 0}];
    _HKInitializeLogging();
    v11 = *v4;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = NSStringFromSelector(sel__scheduleTransparencyAlert_);
      *v22 = 138543618;
      *&v22[4] = v13;
      *&v22[12] = 2114;
      *&v22[14] = v10;
      v14 = "[sharing-setup] %{public}@ Found user defaults, scheduling alert for %{public}@ (#t0)";
LABEL_10:
      _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, v14, v22, 0x16u);
    }
  }

  else
  {
    v10 = [v9 dateByAddingUnit:16 value:2 toDate:v8 options:0];
    _HKInitializeLogging();
    v15 = *v4;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v15;
      v13 = NSStringFromSelector(sel__scheduleTransparencyAlert_);
      *v22 = 138543618;
      *&v22[4] = v13;
      *&v22[12] = 2114;
      *&v22[14] = v10;
      v14 = "[sharing-setup] %{public}@ Did not find any user defaults. Scheduling alert for %{public}@ (#t0)";
      goto LABEL_10;
    }
  }

  v16 = [v9 components:62 fromDate:{v10, *v22, *&v22[16], v23}];
  [v16 setCalendar:v9];
  WeakRetained = objc_loadWeakRetained((v2 + 48));
  v18 = [WeakRetained tinkerPrivacyAlertCoordinator];
  v19 = [v18 scheduleEventIfRequiredForDateComponents:v16 eventIdentifier:@"TinkerPrivacyAlertEventSharingSetUp" error:a2];

LABEL_12:
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

void __66__HDNanoSyncManager__queue_receiveTinkerPairingRequest_syncStore___block_invoke_2_878(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "[sharing-setup] Subscribing to data upload requests (#t0)", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  v7 = [WeakRetained cloudSyncManager];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__HDNanoSyncManager__queue_receiveTinkerPairingRequest_syncStore___block_invoke_879;
  v9[3] = &unk_2786130D8;
  v10 = v4;
  v8 = v4;
  [v7 subscribeToDataUploadRequestsWithCompletion:v9];
}

uint64_t __66__HDNanoSyncManager__queue_receiveTinkerPairingRequest_syncStore___block_invoke_879(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = 2;
  }

  return (*(v2 + 16))(v2, v3);
}

void __66__HDNanoSyncManager__queue_receiveTinkerPairingRequest_syncStore___block_invoke_2_880(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "[sharing-setup] Subscribing to data download available notifications (#t0)", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  v7 = [WeakRetained cloudSyncManager];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__HDNanoSyncManager__queue_receiveTinkerPairingRequest_syncStore___block_invoke_881;
  v9[3] = &unk_2786130D8;
  v10 = v4;
  v8 = v4;
  [v7 subscribeToDataAvailableNotificationsWithCompletion:v9];
}

uint64_t __66__HDNanoSyncManager__queue_receiveTinkerPairingRequest_syncStore___block_invoke_881(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = 2;
  }

  return (*(v2 + 16))(v2, v3);
}

void __66__HDNanoSyncManager__queue_receiveTinkerPairingRequest_syncStore___block_invoke_2_882(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [HDKeyValueDomain alloc];
  v6 = *MEMORY[0x277CCE3B8];
  v7 = *(a1 + 32);
  if (v7)
  {
    WeakRetained = objc_loadWeakRetained((v7 + 48));
  }

  else
  {
    WeakRetained = 0;
  }

  v9 = [(HDKeyValueDomain *)v5 initWithCategory:100 domainName:v6 profile:WeakRetained];

  v10 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CCE3B0]];
  v15 = 0;
  v11 = [(HDKeyValueDomain *)v9 removeValuesForKeys:v10 error:&v15];
  v12 = v15;

  if (!v11)
  {
    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v17 = v12;
      _os_log_error_impl(&dword_228986000, v13, OS_LOG_TYPE_ERROR, "[sharing-setup] Failed to purge sharing state cache with error: %{public}@ (#t0)", buf, 0xCu);
    }
  }

  (*(v4 + 2))(v4, 0, 0);

  v14 = *MEMORY[0x277D85DE8];
}

void __67__HDNanoSyncManager__queue_receiveTinkerPairingResponse_syncStore___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) setupMetadata];
  (*(v2 + 16))(v2, v3, *(a1 + 40));
}

uint64_t __81__HDNanoSyncManager__queue_tinkerPairingRequestDidFailToSendWithError_syncStore___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v1 = *(v1 + 16);
  }

  return (*(v1 + 16))(v1, 0, *(a1 + 40));
}

void __76__HDNanoSyncManager__queue_receiveTinkerEndToEndCloudSyncRequest_syncStore___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    *buf = 138543618;
    v21 = v7;
    v22 = 2114;
    v23 = v5;
    _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@ Preparing response to Tinker end to end Cloud Sync request; error: %{public}@ (#t0)", buf, 0x16u);
  }

  v8 = [*(a1 + 40) response];
  v9 = objc_alloc_init(HDCodableTinkerEndToEndCloudSyncResponse);
  v10 = [*(a1 + 48) requestIdentifier];
  [(HDCodableTinkerEndToEndCloudSyncResponse *)v9 setRequestIdentifier:v10];

  [(HDCodableTinkerEndToEndCloudSyncResponse *)v9 setSuccess:a2];
  if (v5)
  {
    v11 = [v5 hk_codableError];
    [(HDCodableTinkerEndToEndCloudSyncResponse *)v9 setError:v11];
  }

  [v8 setPbResponse:v9];
  v12 = *(a1 + 32);
  v13 = *(v12 + 56);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __76__HDNanoSyncManager__queue_receiveTinkerEndToEndCloudSyncRequest_syncStore___block_invoke_895;
  v16[3] = &unk_278616D68;
  v16[4] = v12;
  v17 = *(a1 + 48);
  v18 = v8;
  v19 = *(a1 + 56);
  v14 = v8;
  dispatch_async(v13, v16);

  v15 = *MEMORY[0x277D85DE8];
}

void __76__HDNanoSyncManager__queue_receiveTinkerEndToEndCloudSyncRequest_syncStore___block_invoke_895(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = v2;
    v6 = [v3 requestIdentifier];
    v8 = 138543618;
    v9 = v4;
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@ Will send Tinker end to end Cloud Sync response to request %{public}@ (#t0)", &v8, 0x16u);
  }

  [(HDNanoSyncManager *)*(a1 + 32) _queue_sendResponse:*(a1 + 56) syncStore:?];
  v7 = *MEMORY[0x277D85DE8];
}

void __80__HDNanoSyncManager__queue_performSyncForTinkerEndToEndCloudSyncWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = [a3 hk_sanitizedError];
  (*(v4 + 16))(v4, a2, v5);
}

uint64_t __77__HDNanoSyncManager__queue_receiveTinkerEndToEndCloudSyncResponse_syncStore___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) success];
  v4 = *(a1 + 40);
  v5 = *(v2 + 16);

  return v5(v2, v3, v4);
}

void __66__HDNanoSyncManager__queue_receiveAuthorizationRequest_syncStore___block_invoke(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a4;
  _HKInitializeLogging();
  v7 = HKLogAuthorization();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);

  if (v8)
  {
    v9 = HKLogAuthorization();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109378;
      v21 = a3;
      v22 = 2114;
      v23 = v6;
      _os_log_debug_impl(&dword_228986000, v9, OS_LOG_TYPE_DEBUG, "Authorization request complete with success: %d, error: %{public}@.", buf, 0x12u);
    }
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __66__HDNanoSyncManager__queue_receiveAuthorizationRequest_syncStore___block_invoke_911;
  v15[3] = &unk_2786178B8;
  v16 = v6;
  v10 = *(a1 + 32);
  v17 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 32);
  v18 = v11;
  v19 = v12;
  v13 = v6;
  [v10 syncHealthDataWithOptions:0 reason:@"Remote authorization request complete" completion:v15];

  v14 = *MEMORY[0x277D85DE8];
}

void __66__HDNanoSyncManager__queue_receiveAuthorizationRequest_syncStore___block_invoke_911(uint64_t a1, int a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = HKLogAuthorization();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);

  if (v7)
  {
    v8 = HKLogAuthorization();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v20 = *(a1 + 32);
      *buf = 67109378;
      v25 = a2;
      v26 = 2114;
      v27 = v20;
      _os_log_debug_impl(&dword_228986000, v8, OS_LOG_TYPE_DEBUG, "Post-authorization sync complete with success: %d, error: %{public}@.", buf, 0x12u);
    }
  }

  v9 = objc_alloc_init(HDCodableAuthorizationCompleteMessage);
  v10 = [*(a1 + 40) appBundleIdentifier];
  [(HDCodableAuthorizationCompleteMessage *)v9 setAppBundleIdentifier:v10];

  v11 = [*(a1 + 40) requestIdentifier];
  [(HDCodableAuthorizationCompleteMessage *)v9 setRequestIdentifier:v11];

  v12 = *(a1 + 32);
  if (v12 || (v12 = v5) != 0)
  {
    v13 = [v12 localizedDescription];
    [(HDCodableAuthorizationCompleteMessage *)v9 setErrorDescription:v13];
  }

  v14 = [*(a1 + 48) createRequestWithMessageID:4];
  [v14 setPbRequest:v9];
  v15 = *(a1 + 48);
  v16 = *(a1 + 56);
  v17 = *(v16 + 56);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__HDNanoSyncManager__queue_receiveAuthorizationRequest_syncStore___block_invoke_912;
  block[3] = &unk_278613830;
  block[4] = v16;
  v22 = v14;
  v23 = v15;
  v18 = v14;
  dispatch_async(v17, block);

  v19 = *MEMORY[0x277D85DE8];
}

void __66__HDNanoSyncManager__queue_receiveAuthorizationRequest_syncStore___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  _HKInitializeLogging();
  v9 = HKLogAuthorization();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);

  if (v10)
  {
    v11 = HKLogAuthorization();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v26 = v7;
      v27 = 1024;
      v28 = a2;
      v29 = 2114;
      v30 = v8;
      _os_log_debug_impl(&dword_228986000, v11, OS_LOG_TYPE_DEBUG, "Sending response to authorization request; host app is %@ and should prompt is %d; error: %{public}@", buf, 0x1Cu);
    }
  }

  v12 = [*(a1 + 32) response];
  v13 = objc_alloc_init(HDCodableAuthorizationResponseMessage);
  v14 = [*(a1 + 40) appBundleIdentifier];
  [(HDCodableAuthorizationResponseMessage *)v13 setAppBundleIdentifier:v14];

  v15 = [*(a1 + 40) requestIdentifier];
  [(HDCodableAuthorizationResponseMessage *)v13 setRequestIdentifier:v15];

  [(HDCodableAuthorizationResponseMessage *)v13 setShouldPrompt:a2];
  [(HDCodableAuthorizationResponseMessage *)v13 setHostAppName:v7];
  if (v8)
  {
    v16 = [v8 localizedDescription];
    [(HDCodableAuthorizationResponseMessage *)v13 setErrorDescription:v16];
  }

  [v12 setPbResponse:v13];
  v18 = *(a1 + 48);
  v17 = *(a1 + 56);
  v19 = *(v18 + 56);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__HDNanoSyncManager__queue_receiveAuthorizationRequest_syncStore___block_invoke_914;
  block[3] = &unk_278613830;
  block[4] = v18;
  v23 = v12;
  v24 = v17;
  v20 = v12;
  dispatch_async(v19, block);

  v21 = *MEMORY[0x277D85DE8];
}

void __66__HDNanoSyncManager__queue_receiveAuthorizationRequest_syncStore___block_invoke_2_916(uint64_t a1, void *a2, int a3, void *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  if (!a3)
  {
    (*(*(a1 + 56) + 16))();
    (*(*(a1 + 48) + 16))();
    goto LABEL_7;
  }

  v9 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:*(a1 + 32)];
  v10 = [v9 localizedName];
  if (!v10)
  {
    v10 = [v9 localizedShortName];
    if (!v10)
    {
      _HKInitializeLogging();
      v16 = HKLogAuthorization();
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
      if (v9)
      {
        if (v17)
        {
          v18 = *(a1 + 32);
          *buf = 138412290;
          v27 = v18;
          v19 = "Failed to lookup name for bundle '%@': got a proxy, but didn't find a localizedName or localizedShortName.";
LABEL_14:
          _os_log_error_impl(&dword_228986000, v16, OS_LOG_TYPE_ERROR, v19, buf, 0xCu);
        }
      }

      else if (v17)
      {
        v22 = *(a1 + 32);
        *buf = 138412290;
        v27 = v22;
        v19 = "Failed to lookup name for bundle '%@': failed to get an application proxy object from LSApplicationProxy.";
        goto LABEL_14;
      }

      v20 = *(a1 + 56);
      v21 = *(a1 + 40);
      v11 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:*(a1 + 64) format:@"Unable to look up host app with requested bundle identifier."];
      (*(v20 + 16))(v20, 0, 0, v11);
      goto LABEL_5;
    }
  }

  v11 = v10;
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 48));
  v13 = [WeakRetained authorizationManager];
  v14 = *(a1 + 32);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __66__HDNanoSyncManager__queue_receiveAuthorizationRequest_syncStore___block_invoke_3;
  v23[3] = &unk_278616CC8;
  v25 = *(a1 + 48);
  v24 = v7;
  [v13 openAppForAuthorization:v14 sessionIdentifier:v24 completion:v23];

  (*(*(a1 + 56) + 16))(*(a1 + 56), 1, v11, 0);
LABEL_5:

LABEL_7:
  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __66__HDNanoSyncManager__queue_receiveAuthorizationRequest_syncStore___block_invoke_3(uint64_t result, char a2, uint64_t a3)
{
  if ((a2 & 1) == 0)
  {
    return (*(*(result + 40) + 16))(*(result + 40), *(result + 32), 0, a3);
  }

  return result;
}

uint64_t __67__HDNanoSyncManager__queue_receiveAuthorizationResponse_syncStore___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v1 = *(v1 + 16);
  }

  return (*(v1 + 16))(v1, *(a1 + 56), *(a1 + 40), *(a1 + 48));
}

uint64_t __81__HDNanoSyncManager__queue_authorizationRequestDidFailToSendWithError_syncStore___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v1 = *(v1 + 16);
  }

  return (*(v1 + 16))(v1, 0, 0, *(a1 + 40));
}

uint64_t __81__HDNanoSyncManager__queue_authorizationRequestDidFailToSendWithError_syncStore___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v1 = *(v1 + 24);
  }

  return (*(v1 + 16))(v1, *(a1 + 40));
}

uint64_t __74__HDNanoSyncManager__queue_receiveAuthorizationCompleteRequest_syncStore___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v1 = *(v1 + 24);
  }

  return (*(v1 + 16))(v1, *(a1 + 40));
}

- (void)_scheduleResetReceivedNanoSyncAnchorsForHFD
{
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__HDNanoSyncManager__scheduleResetReceivedNanoSyncAnchorsForHFD__block_invoke;
  v8[3] = &unk_278613968;
  v8[4] = self;
  v4 = [HDMaintenanceOperation maintenanceOperationWithName:@"Reset Received Nanosync Anchors" queue:queue synchronousBlock:v8];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  daemon = [WeakRetained daemon];
  maintenanceWorkCoordinator = [daemon maintenanceWorkCoordinator];
  [maintenanceWorkCoordinator enqueueMaintenanceOperation:v4];
}

void __64__HDNanoSyncManager__scheduleResetReceivedNanoSyncAnchorsForHFD__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = MEMORY[0x277CCC2A0];
  v3 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_228986000, v3, OS_LOG_TYPE_DEFAULT, "Attempting reset of sync anchors", buf, 2u);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained((v4 + 48));
  }

  else
  {
    WeakRetained = 0;
  }

  v6 = [WeakRetained database];
  v7 = +[HDDatabaseTransactionContext contextForWriting];
  v14 = 0;
  v8 = [v6 performTransactionWithContext:v7 error:&v14 block:&__block_literal_global_931 inaccessibilityHandler:0];
  v9 = v14;

  _HKInitializeLogging();
  v10 = *v2;
  v11 = *v2;
  if (v8)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "Reset of sync anchors completed", buf, 2u);
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v13 = *(a1 + 32);
    *buf = 138543362;
    v16 = v13;
    _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "%{public}@: Failed to reset sync anchors as requested after HFD rebuild step.", buf, 0xCu);
  }

  v12 = *MEMORY[0x277D85DE8];
}

BOOL __64__HDNanoSyncManager__scheduleResetReceivedNanoSyncAnchorsForHFD__block_invoke_929(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = [HDSyncStoreEntity allSyncStoreEntitiesOfType:1 transaction:v4 error:a3];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 hk_map:&__block_literal_global_935];
    v8 = [HDSyncAnchorEntity resetAllSyncAnchorsOfType:3 syncProvenances:v7 transaction:v4 error:a3];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __64__HDNanoSyncManager__scheduleResetReceivedNanoSyncAnchorsForHFD__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 syncProvenance];

  return [v2 numberWithLongLong:v3];
}

- (void)syncSession:(id)session sendChanges:(id)changes completion:(id)completion
{
  sessionCopy = session;
  completionCopy = completion;
  v10 = [sessionCopy changeSetWithChanges:changes statusCode:1 error:0];
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __56__HDNanoSyncManager_syncSession_sendChanges_completion___block_invoke;
  v15[3] = &unk_278613680;
  v15[4] = self;
  v16 = v10;
  v17 = sessionCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = sessionCopy;
  v14 = v10;
  dispatch_async(queue, v15);
}

- (void)_sendFinalMessageForSyncSession:(void *)session status:(uint64_t)status success:(void *)success error:
{
  v9 = a2;
  sessionCopy = session;
  successCopy = success;
  if (self)
  {
    if ([v9 messageCount] || (objc_msgSend(v9, "isPullRequest") & 1) != 0 || (objc_msgSend(v9, "isRequestedByRemote") & 1) != 0)
    {
      v12 = *(self + 56);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __74__HDNanoSyncManager__sendFinalMessageForSyncSession_status_success_error___block_invoke;
      block[3] = &unk_278617B08;
      statusCopy = status;
      v14 = v9;
      v15 = successCopy;
      selfCopy = self;
      v17 = sessionCopy;
      dispatch_async(v12, block);
    }

    else
    {
      [v9 invokeCompletionWithSuccess:status error:successCopy];
    }
  }
}

void __87__HDNanoSyncManager__sendFinalStatusMessageForSyncSession_didFinishSuccessfully_error___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) isLastChance])
  {
    v2 = 5;
  }

  else
  {
    v2 = 4;
  }

  v3 = [HDCodableNanoSyncStatus statusWithStatusCode:v2];
  v4 = [*(a1 + 32) syncStore];
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 48));
  v6 = [WeakRetained syncEngine];
  v16 = 0;
  v7 = [v6 getReceivedAnchorMap:v3 forStore:v4 error:&v16];
  v8 = v16;

  if (v7)
  {
    v10 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11 = *(a1 + 56);
    v12 = *(a1 + 48);
    v13 = v3;
  }

  else
  {
    _HKInitializeLogging();
    v14 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v18 = v8;
      _os_log_error_impl(&dword_228986000, v14, OS_LOG_TYPE_ERROR, "failed to get received anchors for outgoing change pull request: %{public}@", buf, 0xCu);
    }

    v10 = *(a1 + 32);
    v9 = *(a1 + 40);
    if (*(a1 + 48))
    {
      v12 = *(a1 + 48);
    }

    else
    {
      v12 = v8;
    }

    v13 = v3;
    v11 = 0;
  }

  [(HDNanoSyncManager *)v9 _sendFinalMessageForSyncSession:v10 status:v13 success:v11 error:v12];

  v15 = *MEMORY[0x277D85DE8];
}

void __74__HDNanoSyncManager__sendFinalMessageForSyncSession_status_success_error___block_invoke(uint64_t a1)
{
  if (*(a1 + 64))
  {
    v2 = 2;
  }

  else
  {
    v2 = 3;
  }

  v3 = [*(a1 + 32) changeSetWithChanges:0 statusCode:v2 error:*(a1 + 40)];
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__HDNanoSyncManager__sendFinalMessageForSyncSession_status_success_error___block_invoke_2;
  v7[3] = &unk_278617AE0;
  v8 = v6;
  v10 = *(a1 + 64);
  v9 = *(a1 + 40);
  [(HDNanoSyncManager *)v4 _queue_sendChangeSet:v3 status:v5 session:v8 completion:v7];
}

uint64_t __74__HDNanoSyncManager__sendFinalMessageForSyncSession_status_success_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (*(a1 + 40))
  {
    a3 = *(a1 + 40);
  }

  return [*(a1 + 32) invokeCompletionWithSuccess:(a2 != 0) & *(a1 + 48) error:a3];
}

- (void)nanoSyncStore:(id)store remoteSystemBuildVersionDidChange:(id)change
{
  storeCopy = store;
  changeCopy = change;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__HDNanoSyncManager_nanoSyncStore_remoteSystemBuildVersionDidChange___block_invoke;
  block[3] = &unk_278613830;
  v12 = storeCopy;
  v13 = changeCopy;
  selfCopy = self;
  v9 = changeCopy;
  v10 = storeCopy;
  dispatch_async(queue, block);
}

void __69__HDNanoSyncManager_nanoSyncStore_remoteSystemBuildVersionDidChange___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138543618;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_228986000, v2, OS_LOG_TYPE_DEFAULT, "store %{public}@ remote system build version changed to %{public}@", &v6, 0x16u);
  }

  [*(a1 + 32) invalidate];
  [(HDNanoSyncManager *)*(a1 + 48) _queue_updateSyncStores];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)nanoSyncStore:(id)store deviceNameDidChange:(id)change
{
  storeCopy = store;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__HDNanoSyncManager_nanoSyncStore_deviceNameDidChange___block_invoke;
  v8[3] = &unk_278613920;
  v9 = storeCopy;
  selfCopy = self;
  v7 = storeCopy;
  dispatch_async(queue, v8);
}

void __55__HDNanoSyncManager_nanoSyncStore_deviceNameDidChange___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&dword_228986000, v2, OS_LOG_TYPE_DEFAULT, "store %{public}@ device name did change", &v7, 0xCu);
  }

  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v5 == *(v4 + 96))
  {
    [(HDNanoSyncManager *)v4 _queue_updateDeviceNameIfNecessaryWithSyncStore:v5];
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __69__HDNanoSyncManager__queue_updateDeviceNameIfNecessaryWithSyncStore___block_invoke(void *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1[4] + 48));
  v3 = [WeakRetained sourceManager];
  v4 = a1[5];
  v20 = 0;
  v5 = [v3 localSourceForBundleIdentifier:v4 error:&v20];
  v6 = v20;

  if (v5)
  {
    v7 = a1[7];
    v8 = objc_loadWeakRetained((a1[4] + 48));
    v19 = v6;
    v9 = [v5 setName:v7 profile:v8 error:&v19];
    v10 = v19;

    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC328];
    v12 = *MEMORY[0x277CCC328];
    if (v9)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v14 = a1[6];
        v13 = a1[7];
        *buf = 138412546;
        v22 = v13;
        v23 = 2112;
        v24 = v14;
        _os_log_debug_impl(&dword_228986000, v11, OS_LOG_TYPE_DEBUG, "updated device name to %@ for %@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v18 = a1[6];
      *buf = 138543618;
      v22 = v18;
      v23 = 2114;
      v24 = v10;
      _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, "failed to set device name for %{public}@: %{public}@", buf, 0x16u);
    }

    v6 = v10;
  }

  else
  {
    _HKInitializeLogging();
    v15 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v16 = a1[6];
      *buf = 138543618;
      v22 = v16;
      v23 = 2114;
      v24 = v6;
      _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "failed to look up source for %{public}@: %{public}@", buf, 0x16u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)nanoSyncStore:(id)store restoreStateDidChange:(int64_t)change
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__HDNanoSyncManager_nanoSyncStore_restoreStateDidChange___block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_async(queue, block);
}

- (id)diagnosticDescription
{
  v31 = *MEMORY[0x277D85DE8];
  string = [MEMORY[0x277CCAB68] string];
  v4 = string;
  if (self->_isMaster)
  {
    v5 = "YES";
  }

  else
  {
    v5 = "NO";
  }

  [string appendFormat:@"\n\tMaster: %s", v5];
  v6 = self->_activeSyncStore;
  if (v6)
  {
    [v4 appendString:@"\n\tActive Store:\n\t"];
    diagnosticDescription = [(HDNanoSyncStore *)v6 diagnosticDescription];
    v8 = [diagnosticDescription stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
    [v4 appendString:v8];
  }

  allValues = [(NSMutableDictionary *)self->_syncStoresByDeviceIdentifier allValues];
  v10 = [allValues count];
  if (!v6 || v10 >= 2)
  {
    v25 = v6;
    [v4 appendString:@"\n\n\tInactive Stores:\n\t"];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = allValues;
    v11 = allValues;
    v12 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v27;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v27 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v26 + 1) + 8 * i);
          if (v16 != self->_activeSyncStore)
          {
            diagnosticDescription2 = [(HDNanoSyncStore *)v16 diagnosticDescription];
            v18 = [diagnosticDescription2 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
            [v4 appendString:v18];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v13);
    }

    allValues = v24;
    v6 = v25;
  }

  if (self->_periodicSyncTimer)
  {
    v19 = "ON";
  }

  else
  {
    v19 = "OFF";
  }

  [v4 appendFormat:@"\n\tPeriodic sync timer: %s", v19];
  lastPeriodicSyncDate = self->_lastPeriodicSyncDate;
  v21 = HKDiagnosticStringFromDate();
  [v4 appendFormat:@"\n\tLast periodic sync: %@", v21];

  v22 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)foregroundClientProcessesDidChange:(id)change previouslyForegroundBundleIdentifiers:(id)identifiers
{
  v34 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  identifiersCopy = identifiers;
  _HKInitializeLogging();
  v8 = MEMORY[0x277CCC328];
  v9 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v28 = 138412546;
    v29 = changeCopy;
    v30 = 2112;
    v31 = identifiersCopy;
    _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "CoreDuet: Attempt to add new foregroundClientBundleIds: %@ \n and remove previouslyForegroundBundleIds: %@", &v28, 0x16u);
  }

  keyPathForServicesAppearingForeground = [MEMORY[0x277CFE338] keyPathForServicesAppearingForeground];
  if ([identifiersCopy count])
  {
    context = self->_context;
    allObjects = [identifiersCopy allObjects];
    LOBYTE(context) = [(_CDLocalContext *)context removeObjects:allObjects fromArrayAtKeyPath:keyPathForServicesAppearingForeground];

    if ((context & 1) == 0)
    {
      _HKInitializeLogging();
      v13 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
      {
        v25 = self->_context;
        v26 = v13;
        v27 = [(_CDLocalContext *)v25 objectForContextualKeyPath:keyPathForServicesAppearingForeground];
        v28 = 138412802;
        v29 = v25;
        v30 = 2112;
        v31 = keyPathForServicesAppearingForeground;
        v32 = 2112;
        v33 = v27;
        _os_log_error_impl(&dword_228986000, v26, OS_LOG_TYPE_ERROR, "CoreDuet: Unsuccessful attempt to remove previously foreground bundleIDs from context %@ at keypath %@. Existing foreground bundleIDs: %@", &v28, 0x20u);
      }
    }
  }

  if ([(_CDLocalContext *)changeCopy count])
  {
    v14 = self->_context;
    allObjects2 = [(_CDLocalContext *)changeCopy allObjects];
    LOBYTE(v14) = [(_CDLocalContext *)v14 addObjects:allObjects2 toArrayAtKeyPath:keyPathForServicesAppearingForeground];

    if ((v14 & 1) == 0)
    {
      _HKInitializeLogging();
      v16 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
      {
        v17 = self->_context;
        v18 = v16;
        v19 = [(_CDLocalContext *)v17 objectForContextualKeyPath:keyPathForServicesAppearingForeground];
        v28 = 138412802;
        v29 = v17;
        v30 = 2112;
        v31 = keyPathForServicesAppearingForeground;
        v32 = 2112;
        v33 = v19;
        _os_log_impl(&dword_228986000, v18, OS_LOG_TYPE_INFO, "CoreDuet: Unsuccessful attempt to add new foreground bundle ids to context %@ at keypath %@. Existing foreground bundleIDs: %@", &v28, 0x20u);
      }
    }

    WeakRetained = objc_loadWeakRetained(&self->_profile);
    daemon = [WeakRetained daemon];
    behavior = [daemon behavior];
    isAppleWatch = [behavior isAppleWatch];

    if ((isAppleWatch & 1) == 0)
    {
      [(HDNanoSyncManager *)self _syncImmediatelyWithReason:1 options:?];
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

@end