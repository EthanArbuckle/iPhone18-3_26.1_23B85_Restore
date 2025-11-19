@interface SGDCloudKitSync
+ (id)_callbackQueue;
+ (id)_sharedInstanceConfigurationQueue;
+ (id)apsEnvironmentStringForContainer:(id)a3;
+ (id)sharedInstance;
+ (void)setSharedInstanceConfigurationBlock:(id)a3;
- (BOOL)pauseIfNeededAndReturnRetryEligibilityForError:(id)a3;
- (BOOL)shouldRecreateZoneForRecordError:(id)a3 operationError:(id)a4;
- (SGDCloudKitSync)init;
- (id)_ckErrorForId:(id)a3 inError:(id)a4;
- (id)accountInfo;
- (id)addCreateZoneAttemptOperationWithRetries:(unint64_t)a3;
- (id)addCreateZoneOperation;
- (id)addDeleteAndRecreateZoneOperation;
- (id)addDeleteZoneAttemptOperationWithRetries:(unint64_t)a3;
- (id)addDeleteZoneOperation;
- (id)addFetchNewEntitiesAttemptOperationWithRetries:(unint64_t)a3;
- (id)addFetchNewEntitiesOperation;
- (id)addManateeSanityCheckOperation;
- (id)addOperation;
- (id)addOperation:(id)a3;
- (id)addProcureSaltAttemptOperationWithRetries:(unint64_t)a3;
- (id)addProcureSaltOperation;
- (id)addWriteOperationForRecordGetter:(id)a3 deleteGetter:(id)a4 withRetries:(unint64_t)a5;
- (id)addWriteOperationForRecordGetter:(id)a3 deleteGetter:(id)a4 withRetries:(unint64_t)a5 isFirstTry:(BOOL)a6;
- (id)getUnderlyingError:(id)a3;
- (id)invokeNewEntitiesCallbackWithEntity:(id)a3;
- (id)privacySalt;
- (id)recordZoneId;
- (id)shouldRemoveEventsFromEventKit;
- (void)_addDependency:(id)a3 toTrain:(id)a4;
- (void)_coupleOperationTrainWithStart:(id)a3 end:(id)a4;
- (void)accountChanged:(id)a3;
- (void)addEnrichment:(id)a3 withParentEntity:(id)a4;
- (void)clearErrors;
- (void)connection:(id)a3 didChangeConnectedStatus:(BOOL)a4;
- (void)connection:(id)a3 didFailToSendOutgoingMessage:(id)a4 error:(id)a5;
- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4;
- (void)connection:(id)a3 didReceivePublicToken:(id)a4;
- (void)connection:(id)a3 didReceiveToken:(id)a4 forTopic:(id)a5 identifier:(id)a6;
- (void)connection:(id)a3 didSendOutgoingMessage:(id)a4;
- (void)connectionDidReconnect:(id)a3;
- (void)createSubscriptionWithRetries:(unint64_t)a3;
- (void)dealloc;
- (void)deleteGroupId:(id)a3;
- (void)deleteStorageEvent:(id)a3;
- (void)deleteZoneWithCompletion:(id)a3;
- (void)disable;
- (void)failSalt;
- (void)processStateChanges;
- (void)resume;
- (void)setDatabase:(id)a3;
- (void)setDeleteAllSyncedItemsCallback:(id)a3;
- (void)setNewEntitiesCallback:(id)a3;
- (void)setReadyForNewEntities:(BOOL)a3;
- (void)suspend;
- (void)suspendAndResumeAfter:(double)a3;
@end

@implementation SGDCloudKitSync

void __23__SGDCloudKitSync_init__block_invoke_245(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277D02098];
  v3 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a2 requiringSecureCoding:1 error:0];
  [v2 setCloudKitPersistedState:v3];
}

void __38__SGDCloudKitSync_processStateChanges__block_invoke_2(uint64_t a1)
{
  if (atomic_fetch_add((*(*(a1 + 40) + 8) + 24), 1u))
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    [v4 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"SGDCloudKitSync.m" lineNumber:1354 description:@"This block should not be run more than once"];
  }

  dispatch_assert_queue_V2(*(*(a1 + 32) + 56));
  *(*(a1 + 32) + 192) = 0;
  v2 = *(a1 + 32);
  if (*(v2 + 193) == 1)
  {
    *(v2 + 193) = 0;
    v3 = sgLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *v5 = 0;
      _os_log_debug_impl(&dword_231E60000, v3, OS_LOG_TYPE_DEBUG, "SGCK Re-processing state changes because a request came in while this one was in progress...", v5, 2u);
    }

    [*(a1 + 32) processStateChanges];
  }
}

- (id)shouldRemoveEventsFromEventKit
{
  v17[1] = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v3 = +[SGAccountsAdapter sharedInstance];
  v4 = [v3 primaryICloudCalendarAccount];

  v5 = sgLogHandle();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_debug_impl(&dword_231E60000, v5, OS_LOG_TYPE_DEBUG, "SGCK Going to request account info to determine whether events should be removed from EK...", buf, 2u);
    }

    v7 = [(SGDCloudKitSync *)self accountInfo];
    v8 = MEMORY[0x277D01FE8];
    v17[0] = v7;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __49__SGDCloudKitSync_shouldRemoveEventsFromEventKit__block_invoke;
    v14[3] = &unk_27894E910;
    v14[4] = self;
    v15 = v7;
    v10 = v7;
    v11 = [v8 createAfter:v9 onCreate:v14];
  }

  else
  {
    if (v6)
    {
      *buf = 0;
      _os_log_debug_impl(&dword_231E60000, v5, OS_LOG_TYPE_DEBUG, "SGCK should remove events from EK because there is no primary iCloud Calendar account", buf, 2u);
    }

    v11 = [MEMORY[0x277D01FE8] createWithImmediateResult:MEMORY[0x277CBEC38] error:0];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

void __23__SGDCloudKitSync_init__block_invoke_250(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 56);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __23__SGDCloudKitSync_init__block_invoke_2;
  block[3] = &unk_278955AC0;
  objc_copyWeak(&v3, (a1 + 40));
  dispatch_async(v1, block);
  objc_destroyWeak(&v3);
}

void __23__SGDCloudKitSync_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained processStateChanges];
}

- (void)processStateChanges
{
  v18[2] = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_processingStateChanges)
  {
    self->_processingStateChanges = 1;
    v7 = [(SGDCloudKitSync *)self accountInfo];
    v8 = [(SGDCloudKitSync *)self shouldRemoveEventsFromEventKit];
    v9 = MEMORY[0x277D01FE8];
    v18[0] = v8;
    v18[1] = v7;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __38__SGDCloudKitSync_processStateChanges__block_invoke;
    v13[3] = &unk_278954C50;
    v13[4] = self;
    v14 = v7;
    v15 = v8;
    v16 = a2;
    v11 = v8;
    v5 = v7;
    [v9 waitForFuturesToComplete:v10 withCallback:v13];

LABEL_6:
    goto LABEL_10;
  }

  pendingProcessStateChanges = self->_pendingProcessStateChanges;
  v5 = sgLogHandle();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (pendingProcessStateChanges)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_debug_impl(&dword_231E60000, v5, OS_LOG_TYPE_DEBUG, "SGCK Already processing state changes and re-processing once complete already scheduled as well.", buf, 2u);
    }

    goto LABEL_6;
  }

  if (v6)
  {
    *buf = 0;
    _os_log_debug_impl(&dword_231E60000, v5, OS_LOG_TYPE_DEBUG, "SGCK Already processing state changes -- will re-process again once complete.", buf, 2u);
  }

  self->_pendingProcessStateChanges = 1;
LABEL_10:
  v12 = *MEMORY[0x277D85DE8];
}

- (id)accountInfo
{
  v24 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if (self->_accountInfoFuture)
  {
    v3 = sgLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_231E60000, v3, OS_LOG_TYPE_DEBUG, "SGCK accountInfo - returning existing SGFuture", buf, 2u);
    }

    v4 = self->_accountInfoFuture;
  }

  else
  {
    v5 = objc_opt_new();
    [v5 setTargetQueue:self->_queue useAfterCompletion:0];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __30__SGDCloudKitSync_accountInfo__block_invoke;
    v20[3] = &unk_27894E8C0;
    v20[4] = self;
    v6 = v5;
    v21 = v6;
    v7 = [v20 copy];
    v8 = sgLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      if (self->_accountInfoInFlight)
      {
        v17 = @"YES";
      }

      else
      {
        v17 = @"NO";
      }

      *buf = 138412290;
      v23 = v17;
      _os_log_debug_impl(&dword_231E60000, v8, OS_LOG_TYPE_DEBUG, "SGCK accountInfo - Scheduling call to CloudKit (already one in flight: %@)", buf, 0xCu);
    }

    if (self->_accountInfoInFlight)
    {
      v9 = 1000000000;
    }

    else
    {
      v9 = 0;
    }

    v10 = dispatch_time(0, v9);
    self->_accountInfoInFlight = 0;
    queue = self->_queue;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __30__SGDCloudKitSync_accountInfo__block_invoke_268;
    v18[3] = &unk_278955EE8;
    v18[4] = self;
    v19 = v7;
    v12 = v7;
    dispatch_after(v10, queue, v18);
    accountInfoFuture = self->_accountInfoFuture;
    self->_accountInfoFuture = v6;
    v14 = v6;

    v4 = self->_accountInfoFuture;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v4;
}

void __38__SGDCloudKitSync_processStateChanges__block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(*(*(a1 + 32) + 56));
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LODWORD(v47) = 0;
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __38__SGDCloudKitSync_processStateChanges__block_invoke_2;
  v45[3] = &unk_278954E28;
  v2 = *(a1 + 56);
  v45[5] = buf;
  v45[6] = v2;
  v45[4] = *(a1 + 32);
  v3 = MEMORY[0x2383809F0](v45);
  v4 = MEMORY[0x2383809F0]();

  _Block_object_dispose(buf, 8);
  v5 = [*(a1 + 40) result];
  if (v5)
  {
    v6 = [*(a1 + 40) result];
    if ([v6 accountStatus])
    {
      v7 = [*(a1 + 40) result];
      v8 = [v7 supportsDeviceToDeviceEncryption];

      if ((v8 & 1) == 0)
      {
        v9 = sgLogHandle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_231E60000, v9, OS_LOG_TYPE_INFO, "SGCK processStateChanges -- failing salt because !supportsDeviceToDeviceEncryption", buf, 2u);
        }

        [*(a1 + 32) failSalt];
      }
    }

    else
    {
    }
  }

  v10 = [*(a1 + 48) error];
  v11 = v10 == 0;

  if (!v11)
  {
    goto LABEL_31;
  }

  v12 = [*(a1 + 48) result];
  v13 = [v12 BOOLValue];

  v14 = [*(*(a1 + 32) + 104) eventsWereRemovedFromEventKit];
  v15 = [v14 BOOLValue];

  if (v13 == v15)
  {
    goto LABEL_31;
  }

  v16 = sgLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = [*(*(a1 + 32) + 104) eventsWereRemovedFromEventKit];
    v18 = [v17 BOOLValue];
    v19 = @"ENABLED";
    if (v18)
    {
      v20 = @"DISABLED";
    }

    else
    {
      v20 = @"ENABLED";
    }

    if (v13)
    {
      v19 = @"DISABLED";
    }

    *buf = 138412546;
    *&buf[4] = v20;
    *&buf[12] = 2112;
    *&buf[14] = v19;
    _os_log_impl(&dword_231E60000, v16, OS_LOG_TYPE_INFO, "SGCK System State Change: Sync %@ --> %@", buf, 0x16u);
  }

  v21 = [SGXpcTransaction transactionWithName:"SGDCloudKitSync.processStateChanges"];
  if (!v13)
  {
    v30 = [*(*(a1 + 32) + 104) hasSubscription];
    v31 = [v30 BOOLValue];

    if ((v31 & 1) == 0)
    {
      v32 = sgLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_231E60000, v32, OS_LOG_TYPE_INFO, "SGCK Creating subscription in response to state change", buf, 2u);
      }

      [*(a1 + 32) createSubscriptionWithRetries:3];
    }

    v33 = sgLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_231E60000, v33, OS_LOG_TYPE_INFO, "SGCK Will fetch new entities in response to state change", buf, 2u);
    }

    v34 = [*(a1 + 32) addFetchNewEntitiesOperation];
    [*(*(a1 + 32) + 104) setEventsWereRemovedFromEventKit:MEMORY[0x277CBEC28]];
    v35 = sgLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_231E60000, v35, OS_LOG_TYPE_INFO, "SGCK Set new persisted state.", buf, 2u);
    }

LABEL_31:
    v4[2](v4);
    goto LABEL_32;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v47 = __Block_byref_object_copy__262;
  v48 = __Block_byref_object_dispose__263;
  v49 = 0;
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x2020000000;
  v44 = 0;
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __38__SGDCloudKitSync_processStateChanges__block_invoke_264;
  v42[3] = &unk_278953F60;
  v23 = *(a1 + 32);
  v22 = (a1 + 32);
  v42[4] = v23;
  v42[5] = v43;
  v42[6] = buf;
  v24 = MEMORY[0x2383809F0](v42);
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __38__SGDCloudKitSync_processStateChanges__block_invoke_265;
  v39[3] = &unk_27894E898;
  v25 = *v22;
  v41 = v43;
  v39[4] = v25;
  v40 = v4;
  v26 = MEMORY[0x2383809F0](v39);
  v27 = *(*&buf[8] + 40);
  *(*&buf[8] + 40) = v26;

  if (*(*v22 + 40) == 1)
  {
    v28 = sgLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *v38 = 0;
      _os_log_impl(&dword_231E60000, v28, OS_LOG_TYPE_INFO, "SGCK About to hop on to background queue to invoke _deleteAllSyncedItemsCallback", v38, 2u);
    }

    v29 = +[SGDCloudKitSync _callbackQueue];
    dispatch_async(v29, v24);
  }

  else
  {
    v37 = sgLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      *v38 = 0;
      _os_log_impl(&dword_231E60000, v37, OS_LOG_TYPE_INFO, "SGCK Skipping background queue block because _readyForNewEntities is false.", v38, 2u);
    }

    (*(*(*&buf[8] + 40) + 16))();
  }

  _Block_object_dispose(v43, 8);
  _Block_object_dispose(buf, 8);

LABEL_32:
  v36 = *MEMORY[0x277D85DE8];
}

- (void)failSalt
{
  [(_SGDCloudKitSyncPersistedState *)self->_persistedState setSalt:0];
  [(_SGDCloudKitSyncPersistedState *)self->_persistedState setSaltAtomicReferenceId:0];
  persistedState = self->_persistedState;

  [(_SGDCloudKitSyncPersistedState *)persistedState setSaltUsesManatee:0];
}

- (void)connectionDidReconnect:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = sgLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_debug_impl(&dword_231E60000, v4, OS_LOG_TYPE_DEBUG, "SGCK connectionDidReconnect:%@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)connection:(id)a3 didChangeConnectedStatus:(BOOL)a4
{
  v4 = a4;
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = sgLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = @"NO";
    if (v4)
    {
      v8 = @"YES";
    }

    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v8;
    _os_log_debug_impl(&dword_231E60000, v6, OS_LOG_TYPE_DEBUG, "SGCK connection:%@ didChangeConnectedStatus:%@", &v9, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)connection:(id)a3 didFailToSendOutgoingMessage:(id)a4 error:(id)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = sgLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412802;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    _os_log_debug_impl(&dword_231E60000, v10, OS_LOG_TYPE_DEBUG, "SGCK connection:%@ didFailToSendOutgoingMessage:%@ error:%@", &v12, 0x20u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)connection:(id)a3 didSendOutgoingMessage:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = sgLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_debug_impl(&dword_231E60000, v7, OS_LOG_TYPE_DEBUG, "SGCK connection:%@ didSendOutgoingMessage:%@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = sgLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v18 = v7;
    v19 = 2112;
    v20 = v8;
    _os_log_debug_impl(&dword_231E60000, v9, OS_LOG_TYPE_DEBUG, "SGCK connection:%@ didReceiveIncomingMessage:%@", buf, 0x16u);
  }

  v10 = MEMORY[0x277CBC4C0];
  v11 = [v8 userInfo];
  v12 = [v10 notificationFromRemoteNotificationDictionary:v11];

  if ([v12 notificationType] == 4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v15 = [MEMORY[0x277CCA890] currentHandler];
      [v15 handleFailureInMethod:a2 object:self file:@"SGDCloudKitSync.m" lineNumber:1996 description:{@"Invalid parameter not satisfying: %@", @"[notification isKindOfClass:[CKDatabaseNotification class]]"}];
    }

    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__SGDCloudKitSync_connection_didReceiveIncomingMessage___block_invoke;
    block[3] = &unk_278954A30;
    block[4] = self;
    dispatch_async(queue, block);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __56__SGDCloudKitSync_connection_didReceiveIncomingMessage___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 104) eventsWereRemovedFromEventKit];
  v3 = [v2 BOOLValue];

  v4 = sgLogHandle();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_debug_impl(&dword_231E60000, v4, OS_LOG_TYPE_DEBUG, "SGCK Got an APNS notification, but not syncing because sync is currently disabled.", buf, 2u);
    }
  }

  else
  {
    if (v5)
    {
      *v7 = 0;
      _os_log_debug_impl(&dword_231E60000, v4, OS_LOG_TYPE_DEBUG, "SGCK Will fetch new entities for incoming message", v7, 2u);
    }

    v6 = [*(a1 + 32) addFetchNewEntitiesOperation];
  }
}

- (void)connection:(id)a3 didReceivePublicToken:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = sgLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_debug_impl(&dword_231E60000, v7, OS_LOG_TYPE_DEBUG, "SGCK connection:%@ didReceivePublicToken:%@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)connection:(id)a3 didReceiveToken:(id)a4 forTopic:(id)a5 identifier:(id)a6
{
  v23 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = sgLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v15 = 138413058;
    v16 = v9;
    v17 = 2112;
    v18 = v10;
    v19 = 2112;
    v20 = v11;
    v21 = 2112;
    v22 = v12;
    _os_log_debug_impl(&dword_231E60000, v13, OS_LOG_TYPE_DEBUG, "SGCK connection:%@ didReceiveToken:%@ forTopic:%@ identifier:%@", &v15, 0x2Au);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)privacySalt
{
  v3 = sgLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_231E60000, v3, OS_LOG_TYPE_DEBUG, "SGCK privacySalt ensuring not already on _queue...", buf, 2u);
  }

  dispatch_assert_queue_not_V2(self->_queue);
  if ([MEMORY[0x277D02098] useManateeSaltForHistory])
  {
    *buf = 0;
    v18 = buf;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__19227;
    v21 = __Block_byref_object_dispose__19228;
    v22 = 0;
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v4 = sgLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *v12 = 0;
      _os_log_debug_impl(&dword_231E60000, v4, OS_LOG_TYPE_DEBUG, "SGCK privacySalt about to dispatch_sync to _queue", v12, 2u);
    }

    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __30__SGDCloudKitSync_privacySalt__block_invoke_333;
    block[3] = &unk_278953F60;
    block[4] = self;
    block[5] = buf;
    block[6] = &v13;
    dispatch_sync(queue, block);
    if (*(v14 + 24) == 1)
    {
      v6 = *(v18 + 5);
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __30__SGDCloudKitSync_privacySalt__block_invoke_337;
      v10[3] = &unk_27894EAF0;
      v10[4] = self;
      [v6 wait:v10];
    }

    v7 = *(v18 + 5);
    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v8 = sgLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_231E60000, v8, OS_LOG_TYPE_DEFAULT, "SGCK privacySalt immediately returning empty NSData because [SGPreferenceStorage useManateeSaltForHistory] is false", buf, 2u);
    }

    if (privacySalt__pasOnceToken177 != -1)
    {
      dispatch_once(&privacySalt__pasOnceToken177, &__block_literal_global_332);
    }

    v7 = privacySalt__pasExprOnceResult;
  }

  return v7;
}

void __30__SGDCloudKitSync_privacySalt__block_invoke_333(void *a1)
{
  v2 = sgLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_231E60000, v2, OS_LOG_TYPE_DEBUG, "SGCK privacySalt is now on _queue", buf, 2u);
  }

  if (*(a1[4] + 208))
  {
    v3 = sgLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_231E60000, v3, OS_LOG_TYPE_DEBUG, "SGCK privacySalt reusing existing future", buf, 2u);
    }

    objc_storeStrong((*(a1[5] + 8) + 40), *(a1[4] + 208));
  }

  else
  {
    v4 = objc_opt_new();
    v5 = *(a1[5] + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    *(*(a1[6] + 8) + 24) = 1;
    v7 = a1[4];
    if (v7[121] == 1)
    {
      v8 = sgLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_231E60000, v8, OS_LOG_TYPE_DEFAULT, "SGCK privacySalt is resolving to empty data because CKErrorIncompatibleVersion was previously encountered, indicating that the server no longer supports syncing with this software version", buf, 2u);
      }

      [*(*(a1[5] + 8) + 40) succeed:*MEMORY[0x277D42680]];
    }

    else
    {
      v9 = [v7 accountInfo];
      v10 = sgLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_231E60000, v10, OS_LOG_TYPE_DEBUG, "SGCK privacySalt about to wait on accountInfoFuture", buf, 2u);
      }

      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __30__SGDCloudKitSync_privacySalt__block_invoke_334;
      v14[3] = &unk_27894EAC8;
      v15 = *(a1 + 2);
      [v9 wait:v14];
      if (([*(*(a1[5] + 8) + 40) isComplete] & 1) == 0)
      {
        v11 = sgLogHandle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_231E60000, v11, OS_LOG_TYPE_INFO, "SGCK privacySalt future did not complete synchronously; will store future in _privacySaltFuture for reuse", buf, 2u);
        }

        objc_storeStrong((a1[4] + 208), *(*(a1[5] + 8) + 40));
        v12 = *(*(a1[5] + 8) + 40);
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __30__SGDCloudKitSync_privacySalt__block_invoke_335;
        v13[3] = &unk_27894EAF0;
        v13[4] = a1[4];
        [v12 wait:v13];
      }
    }
  }
}

void __30__SGDCloudKitSync_privacySalt__block_invoke_337(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *(*(a1 + 32) + 56);
  v7 = a2;
  dispatch_assert_queue_not_V2(v6);
  v8 = [v7 length];

  v9 = sgLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = @"0-length";
    v12 = @"nil";
    if (!v7)
    {
      v11 = @"nil";
    }

    if (v8)
    {
      v11 = @"successful";
    }

    if (v5)
    {
      v12 = v5;
    }

    v13 = 138412546;
    v14 = v11;
    v15 = 2112;
    v16 = v12;
    _os_log_debug_impl(&dword_231E60000, v9, OS_LOG_TYPE_DEBUG, "SGCK privacySalt outcome: %@ result, %@ error", &v13, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __30__SGDCloudKitSync_privacySalt__block_invoke_334(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 56));
  v7 = sgLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v18) = 0;
    _os_log_debug_impl(&dword_231E60000, v7, OS_LOG_TYPE_DEBUG, "SGCK privacySalt finished waiting on accountInfoFuture", &v18, 2u);
  }

  if (v6)
  {
    v8 = sgLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v18 = 138412290;
      v19 = v6;
      _os_log_error_impl(&dword_231E60000, v8, OS_LOG_TYPE_ERROR, "SGCK privacySalt error retrieving account info: %@", &v18, 0xCu);
    }

    [*(*(*(a1 + 40) + 8) + 40) fail:v6];
    goto LABEL_23;
  }

  if ([v5 accountStatus] == 2)
  {
    v9 = sgLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LOWORD(v18) = 0;
      v10 = "SGCK privacySalt resolving to empty data because iCloud account is restricted (parental controls, etc)";
LABEL_21:
      _os_log_impl(&dword_231E60000, v9, OS_LOG_TYPE_INFO, v10, &v18, 2u);
      goto LABEL_22;
    }

    goto LABEL_22;
  }

  if ([v5 accountStatus] == 3)
  {
    v9 = sgLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LOWORD(v18) = 0;
      v10 = "SGCK privacySalt resolving to empty data because there is no iCloud account";
      goto LABEL_21;
    }

LABEL_22:

    [*(*(*(a1 + 40) + 8) + 40) succeed:*MEMORY[0x277D42680]];
    goto LABEL_23;
  }

  if (([v5 supportsDeviceToDeviceEncryption] & 1) == 0)
  {
    v9 = sgLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LOWORD(v18) = 0;
      v10 = "SGCK privacySalt resolving to empty data because device-to-device encryption is not supported";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v11 = [*(*(a1 + 32) + 104) saltUsesManatee];
  if (([v11 BOOLValue] & 1) == 0)
  {

LABEL_25:
    v9 = sgLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v18) = 0;
      _os_log_debug_impl(&dword_231E60000, v9, OS_LOG_TYPE_DEBUG, "SGCK privacySalt resolving to empty data because no salt has been generated yet", &v18, 2u);
    }

    goto LABEL_22;
  }

  v12 = [*(*(a1 + 32) + 104) salt];

  if (!v12)
  {
    goto LABEL_25;
  }

  v13 = sgLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v18) = 0;
    _os_log_debug_impl(&dword_231E60000, v13, OS_LOG_TYPE_DEBUG, "SGCK privacySalt succeeded (using existing known salt)", &v18, 2u);
  }

  v14 = *(a1 + 32);
  v15 = *(*(*(a1 + 40) + 8) + 40);
  v16 = [*(v14 + 104) salt];
  [v15 succeed:v16];

LABEL_23:
  v17 = *MEMORY[0x277D85DE8];
}

void __30__SGDCloudKitSync_privacySalt__block_invoke_335(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 56);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__SGDCloudKitSync_privacySalt__block_invoke_2;
  block[3] = &unk_278954A30;
  block[4] = v1;
  dispatch_sync(v2, block);
}

void __30__SGDCloudKitSync_privacySalt__block_invoke_2(uint64_t a1)
{
  v2 = sgLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_231E60000, v2, OS_LOG_TYPE_INFO, "SGCK privacySalt future asynchronously completed, will set _privacySaltFuture to nil", v5, 2u);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 208);
  *(v3 + 208) = 0;
}

void __30__SGDCloudKitSync_privacySalt__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277D01FE8] createWithImmediateResult:*MEMORY[0x277D42680]];
  v2 = privacySalt__pasExprOnceResult;
  privacySalt__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

- (void)deleteZoneWithCompletion:(id)a3
{
  v4 = [a3 copy];
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__SGDCloudKitSync_deleteZoneWithCompletion___block_invoke;
  v7[3] = &unk_278955EE8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __44__SGDCloudKitSync_deleteZoneWithCompletion___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CCA8C8];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __44__SGDCloudKitSync_deleteZoneWithCompletion___block_invoke_2;
  v11 = &unk_278955EE8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v12 = *(a1 + 32);
  v13 = v4;
  v5 = [v2 blockOperationWithBlock:&v8];
  v6 = [v3 addOperation:{v5, v8, v9, v10, v11}];
  v7 = [*(a1 + 32) addDeleteZoneOperation];
  [v6 addDependency:v7];
}

void __44__SGDCloudKitSync_deleteZoneWithCompletion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = [*(*(a1 + 32) + 176) copy];
    v3 = +[SGDCloudKitSync _callbackQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __44__SGDCloudKitSync_deleteZoneWithCompletion___block_invoke_3;
    v6[3] = &unk_278955EE8;
    v4 = *(a1 + 40);
    v7 = v2;
    v8 = v4;
    v5 = v2;
    dispatch_async(v3, v6);
  }
}

- (void)deleteStorageEvent:(id)a3
{
  v4 = [a3 opaqueKey];
  if (v4)
  {
    [(SGDCloudKitSync *)self deleteGroupId:v4];
  }

  else
  {
    v5 = sgLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_231E60000, v5, OS_LOG_TYPE_ERROR, "SGCK deleteStorageEvent failed because no group id", v6, 2u);
    }
  }
}

- (id)recordZoneId
{
  if (recordZoneId__pasOnceToken173 != -1)
  {
    dispatch_once(&recordZoneId__pasOnceToken173, &__block_literal_global_326);
  }

  v3 = recordZoneId__pasExprOnceResult;

  return v3;
}

void __31__SGDCloudKitSync_recordZoneId__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc(MEMORY[0x277CBC5F8]);
  v2 = [v1 initWithZoneName:@"events" ownerName:*MEMORY[0x277CBBF28]];
  v3 = recordZoneId__pasExprOnceResult;
  recordZoneId__pasExprOnceResult = v2;

  objc_autoreleasePoolPop(v0);
}

- (id)invokeNewEntitiesCallbackWithEntity:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [(_SGDCloudKitSyncPersistedState *)self->_persistedState eventsWereRemovedFromEventKit];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v7 = [MEMORY[0x277D01FE8] createWithImmediateResult:MEMORY[0x277CBEC38]];
  }

  else
  {
    v8 = objc_opt_new();
    [v8 setTargetQueue:self->_queue useAfterCompletion:0];
    v9 = +[SGDCloudKitSync _callbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__SGDCloudKitSync_invokeNewEntitiesCallbackWithEntity___block_invoke;
    block[3] = &unk_278956130;
    v10 = v8;
    v14 = v10;
    v15 = self;
    v16 = v4;
    dispatch_async(v9, block);

    v11 = v16;
    v7 = v10;
  }

  return v7;
}

void __55__SGDCloudKitSync_invokeNewEntitiesCallbackWithEntity___block_invoke(void *a1)
{
  v1 = a1[4];
  v2 = [MEMORY[0x277CCABB0] numberWithBool:{(*(*(a1[5] + 24) + 16))(*(a1[5] + 24), a1[6])}];
  [v1 succeed:v2];
}

- (void)setDeleteAllSyncedItemsCallback:(id)a3
{
  v5 = a3;
  if (self->_deleteAllSyncedItemsCallback)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"SGDCloudKitSync.m" lineNumber:1816 description:{@"Invalid parameter not satisfying: %@", @"_deleteAllSyncedItemsCallback == nil"}];
  }

  v6 = [v5 copy];

  v7 = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __51__SGDCloudKitSync_setDeleteAllSyncedItemsCallback___block_invoke;
  v13[3] = &unk_278955418;
  v14 = v7;
  v15 = v6;
  v8 = v6;
  v9 = v7;
  v10 = [v13 copy];
  deleteAllSyncedItemsCallback = self->_deleteAllSyncedItemsCallback;
  self->_deleteAllSyncedItemsCallback = v10;
}

uint64_t __51__SGDCloudKitSync_setDeleteAllSyncedItemsCallback___block_invoke(uint64_t a1)
{
  dispatch_assert_queue_not_V2(*(a1 + 32));
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)setNewEntitiesCallback:(id)a3
{
  v5 = a3;
  if (self->_callback)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"SGDCloudKitSync.m" lineNumber:1805 description:{@"Invalid parameter not satisfying: %@", @"_callback == nil"}];
  }

  v6 = [v5 copy];

  v7 = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __42__SGDCloudKitSync_setNewEntitiesCallback___block_invoke;
  v13[3] = &unk_27894EAA0;
  v14 = v7;
  v15 = v6;
  v8 = v6;
  v9 = v7;
  v10 = [v13 copy];
  callback = self->_callback;
  self->_callback = v10;
}

uint64_t __42__SGDCloudKitSync_setNewEntitiesCallback___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  dispatch_assert_queue_not_V2(v3);
  v5 = (*(*(a1 + 40) + 16))();

  return v5;
}

- (void)setReadyForNewEntities:(BOOL)a3
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__SGDCloudKitSync_setReadyForNewEntities___block_invoke;
  v4[3] = &unk_2789515D0;
  v5 = a3;
  v4[4] = self;
  dispatch_sync(queue, v4);
}

void __42__SGDCloudKitSync_setReadyForNewEntities___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = sgLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 40))
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    v17 = 138412290;
    v18 = v3;
    _os_log_impl(&dword_231E60000, v2, OS_LOG_TYPE_INFO, "SGCK setReadyForNewEntities:%@", &v17, 0xCu);
  }

  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  if (v4 == *(v5 + 40))
  {
    v6 = sgLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_231E60000, v6, OS_LOG_TYPE_INFO, "SGCK ignoring because readyForNewEntities == _readyForNewEntities", &v17, 2u);
    }
  }

  else
  {
    *(v5 + 40) = v4;
    if (*(a1 + 40) == 1)
    {
      v7 = [*(*(a1 + 32) + 104) hasDeferredProcessStateChanges];
      v8 = [v7 BOOLValue];

      v9 = sgLogHandle();
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
      if (v8)
      {
        if (v10)
        {
          LOWORD(v17) = 0;
          _os_log_impl(&dword_231E60000, v9, OS_LOG_TYPE_INFO, "SGCK processing deferred state changes...", &v17, 2u);
        }

        [*(*(a1 + 32) + 104) setHasDeferredProcessStateChanges:MEMORY[0x277CBEC28]];
        [*(a1 + 32) processStateChanges];
      }

      else
      {
        if (v10)
        {
          LOWORD(v17) = 0;
          _os_log_impl(&dword_231E60000, v9, OS_LOG_TYPE_INFO, "SGCK no deferred state changes", &v17, 2u);
        }
      }

      v11 = [*(*(a1 + 32) + 104) hasDeferredSync];
      v12 = [v11 BOOLValue];

      v13 = sgLogHandle();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
      if (v12)
      {
        if (v14)
        {
          LOWORD(v17) = 0;
          _os_log_impl(&dword_231E60000, v13, OS_LOG_TYPE_INFO, "SGCK processing deferred sync...", &v17, 2u);
        }

        [*(*(a1 + 32) + 104) setHasDeferredSync:MEMORY[0x277CBEC28]];
        v15 = [*(a1 + 32) addFetchNewEntitiesOperation];
      }

      else
      {
        if (v14)
        {
          LOWORD(v17) = 0;
          _os_log_impl(&dword_231E60000, v13, OS_LOG_TYPE_INFO, "SGCK no deferred sync", &v17, 2u);
        }
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)deleteGroupId:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = sgLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v17 = v4;
    _os_log_debug_impl(&dword_231E60000, v5, OS_LOG_TYPE_DEBUG, "SGCK deleteGroupId:%@", buf, 0xCu);
  }

  if (v4)
  {
    v6 = [(SGDCloudKitSync *)self recordZoneId];
    v7 = [SGXpcTransaction transactionWithName:"com.apple.suggestions.sgckDeleteGroupId"];
    queue = self->_queue;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __33__SGDCloudKitSync_deleteGroupId___block_invoke;
    v12[3] = &unk_2789560E0;
    v12[4] = self;
    v13 = v4;
    v14 = v6;
    v15 = v7;
    v9 = v7;
    v10 = v6;
    dispatch_async(queue, v12);
  }

  else
  {
    v10 = sgLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_231E60000, v10, OS_LOG_TYPE_INFO, "SGCK deleteGroupId: passed nil groupId...returning...", buf, 2u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __33__SGDCloudKitSync_deleteGroupId___block_invoke(id *a1)
{
  v2 = [*(a1[4] + 13) eventsWereRemovedFromEventKit];
  v3 = [v2 BOOLValue];

  if (v3)
  {
    v4 = sgLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_231E60000, v4, OS_LOG_TYPE_INFO, "SGCK Not deleting entity from CloudKit because current state prohibits syncing", buf, 2u);
    }
  }

  else
  {
    v5 = *(a1[4] + 25);
    v6 = getCTGreenTeaOsLogHandle();
    v7 = v6;
    if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_231E60000, v7, OS_LOG_TYPE_INFO, "Begin: Transmitting Confirm/Reject Of Calendar Event", buf, 2u);
    }

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __33__SGDCloudKitSync_deleteGroupId___block_invoke_315;
    v20[3] = &unk_27894EA78;
    v8 = a1[4];
    v21 = a1[5];
    v22 = a1[6];
    v9 = [v8 addWriteOperationForRecordGetter:0 deleteGetter:v20 withRetries:3];
    v10 = objc_autoreleasePoolPush();
    v11 = MEMORY[0x277CCA8C8];
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __33__SGDCloudKitSync_deleteGroupId___block_invoke_2;
    v17 = &unk_278955830;
    v18 = a1[4];
    v19 = a1[7];
    v12 = [v11 blockOperationWithBlock:&v14];

    objc_autoreleasePoolPop(v10);
    [v12 addDependency:{v9, v14, v15, v16, v17, v18}];
    v13 = [a1[4] addOperation:v12];

    v4 = v21;
  }
}

id __33__SGDCloudKitSync_deleteGroupId___block_invoke_315(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [*(a1 + 32) dataUsingEncoding:4];
  objc_autoreleasePoolPop(v4);
  v6 = SGSha256HMACData(v5, v3);

  v7 = objc_alloc(MEMORY[0x277CBC5D0]);
  v8 = [v6 base64EncodedStringWithOptions:0];
  v9 = [v7 initWithRecordName:v8 zoneID:*(a1 + 40)];

  v13[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

uint64_t __33__SGDCloudKitSync_deleteGroupId___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 200);
  v3 = getCTGreenTeaOsLogHandle();
  v4 = v3;
  if (v3 && os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_231E60000, v4, OS_LOG_TYPE_INFO, "End: Transmitting Confirm/Reject Of Calendar Event", v6, 2u);
  }

  return [*(a1 + 40) done];
}

- (void)addEnrichment:(id)a3 withParentEntity:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 duplicateKey];
  v9 = [v8 entityKey];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v9 groupId];
  }

  else
  {
    v10 = 0;
  }

  v11 = sgLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v25 = v9;
    v26 = 2112;
    v27 = v10;
    _os_log_debug_impl(&dword_231E60000, v11, OS_LOG_TYPE_DEBUG, "SGCK addEntity:%@ %@", buf, 0x16u);
  }

  if (v10)
  {
    v12 = [(SGDCloudKitSync *)self recordZoneId];
    v13 = [SGXpcTransaction transactionWithName:"com.apple.suggestions.sgckAddEntity"];
    queue = self->_queue;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __50__SGDCloudKitSync_addEnrichment_withParentEntity___block_invoke;
    v18[3] = &unk_27894EA50;
    v18[4] = self;
    v19 = v10;
    v20 = v12;
    v21 = v6;
    v22 = v7;
    v23 = v13;
    v15 = v13;
    v16 = v12;
    dispatch_async(queue, v18);
  }

  else
  {
    v16 = sgLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_231E60000, v16, OS_LOG_TYPE_DEBUG, "SGCK addEntity: - ignoring because groupId is nil", buf, 2u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __50__SGDCloudKitSync_addEnrichment_withParentEntity___block_invoke(id *a1)
{
  v2 = [*(a1[4] + 13) eventsWereRemovedFromEventKit];
  v3 = [v2 BOOLValue];

  if (v3)
  {
    v4 = sgLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_231E60000, v4, OS_LOG_TYPE_INFO, "SGCK Not adding entity to CloudKit because current state prohibits syncing", buf, 2u);
    }
  }

  else
  {
    v5 = *(a1[4] + 25);
    v6 = getCTGreenTeaOsLogHandle();
    v7 = v6;
    if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_231E60000, v7, OS_LOG_TYPE_INFO, "Begin: Transmitting Calendar Event", buf, 2u);
    }

    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __50__SGDCloudKitSync_addEnrichment_withParentEntity___block_invoke_308;
    v26[3] = &unk_27894EA28;
    v8 = a1[4];
    v9 = a1[5];
    v10 = a1[6];
    v11 = a1[7];
    v12 = a1[8];
    *&v13 = v11;
    *(&v13 + 1) = v12;
    *&v14 = v9;
    *(&v14 + 1) = v10;
    v27 = v14;
    v28 = v13;
    v15 = [v8 addWriteOperationForRecordGetter:v26 deleteGetter:0 withRetries:3];
    v16 = objc_autoreleasePoolPush();
    v17 = MEMORY[0x277CCA8C8];
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __50__SGDCloudKitSync_addEnrichment_withParentEntity___block_invoke_2;
    v23 = &unk_278955830;
    v24 = a1[4];
    v25 = a1[9];
    v18 = [v17 blockOperationWithBlock:&v20];

    objc_autoreleasePoolPop(v16);
    [v18 addDependency:{v15, v20, v21, v22, v23, v24}];
    v19 = [a1[4] addOperation:v18];

    v4 = v27;
  }
}

id __50__SGDCloudKitSync_addEnrichment_withParentEntity___block_invoke_308(uint64_t a1, void *a2, void *a3)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [*(a1 + 32) dataUsingEncoding:4];
  objc_autoreleasePoolPop(v7);
  v9 = SGSha256HMACData(v8, v5);

  v10 = objc_alloc(MEMORY[0x277CBC5D0]);
  v11 = [v9 base64EncodedStringWithOptions:0];
  v12 = [v10 initWithRecordName:v11 zoneID:*(a1 + 40)];

  v13 = *(a1 + 48);
  v14 = [*(a1 + 56) duplicateKey];
  v15 = [v13 toCloudKitRecordWithId:v12 parentEntityType:{objc_msgSend(v14, "entityType")}];

  v16 = objc_alloc(MEMORY[0x277CBC620]);
  v17 = [v16 initWithRecordID:v6 action:*MEMORY[0x277CBC070]];
  [v15 setObject:v17 forKeyedSubscript:@"r"];

  v21[0] = v15;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

uint64_t __50__SGDCloudKitSync_addEnrichment_withParentEntity___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 200);
  v3 = getCTGreenTeaOsLogHandle();
  v4 = v3;
  if (v3 && os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_231E60000, v4, OS_LOG_TYPE_INFO, "End: Transmitting Calendar Event", v6, 2u);
  }

  return [*(a1 + 40) done];
}

- (void)setDatabase:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (self->_database)
  {
    v23 = [MEMORY[0x277CCA890] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"SGDCloudKitSync.m" lineNumber:1620 description:{@"Invalid parameter not satisfying: %@", @"_database == nil"}];
  }

  if (!self->_callback)
  {
    v24 = [MEMORY[0x277CCA890] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"SGDCloudKitSync.m" lineNumber:1621 description:{@"Invalid parameter not satisfying: %@", @"_callback"}];
  }

  v7 = [v6 container];
  container = self->_container;
  self->_container = v7;

  objc_storeStrong(&self->_database, a3);
  v9 = sgLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v22 = self->_container;
    *buf = 138412546;
    v35 = v6;
    v36 = 2112;
    v37 = v22;
    _os_log_debug_impl(&dword_231E60000, v9, OS_LOG_TYPE_DEBUG, "SGCK Got database: %@, container: %@", buf, 0x16u);
  }

  dispatch_resume(self->_queue);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__SGDCloudKitSync_setDatabase___block_invoke;
  block[3] = &unk_278954A30;
  block[4] = self;
  dispatch_async(queue, block);
  objc_initWeak(&location, self);
  if (self->_container)
  {
    v11 = [SGDCloudKitSync apsEnvironmentStringForContainer:?];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __31__SGDCloudKitSync_setDatabase___block_invoke_289;
    v30[3] = &unk_27894E9D8;
    v30[4] = self;
    objc_copyWeak(&v31, &location);
    [v11 wait:v30];

    objc_destroyWeak(&v31);
  }

  else
  {
    v12 = sgLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v35 = v6;
      _os_log_error_impl(&dword_231E60000, v12, OS_LOG_TYPE_ERROR, "CloudKit database %@ has nil container, therefore cannot get APS environment strong and APNS will not work.", buf, 0xCu);
    }
  }

  v13 = [MEMORY[0x277CCAB98] defaultCenter];
  [v13 addObserver:self selector:sel_accountChanged_ name:*MEMORY[0x277CBBF00] object:0];

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __31__SGDCloudKitSync_setDatabase___block_invoke_302;
  v29[3] = &unk_278954A30;
  v29[4] = self;
  v14 = [v29 copy];
  kvoHandler = self->_kvoHandler;
  v16 = NSStringFromSelector(sel_primaryICloudCalendarAccount);
  v17 = +[SGAccountsAdapter sharedInstance];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __31__SGDCloudKitSync_setDatabase___block_invoke_303;
  v27[3] = &unk_27894EA00;
  v27[4] = self;
  v18 = v14;
  v28 = v18;
  [(_PASKVOHandler *)kvoHandler reactAfterChangesToKeyPath:v16 ofObject:v17 usingBlock:v27];

  v19 = self->_queue;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __31__SGDCloudKitSync_setDatabase___block_invoke_2_305;
  v25[3] = &unk_27894E850;
  v26 = v18;
  v20 = v18;
  dispatch_async(v19, v25);

  objc_destroyWeak(&location);
  v21 = *MEMORY[0x277D85DE8];
}

void __31__SGDCloudKitSync_setDatabase___block_invoke(uint64_t a1)
{
  [*(a1 + 32) resume];
  v2 = [*(*(a1 + 32) + 104) hasSubscription];
  v3 = [v2 BOOLValue];

  if ((v3 & 1) == 0)
  {
    v4 = sgLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_231E60000, v4, OS_LOG_TYPE_DEBUG, "SGCK device does not have a subscription. Checking eligibility before creating one...", buf, 2u);
    }

    v5 = [*(a1 + 32) shouldRemoveEventsFromEventKit];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __31__SGDCloudKitSync_setDatabase___block_invoke_288;
    v6[3] = &unk_27894E8E8;
    v6[4] = *(a1 + 32);
    [v5 wait:v6];
  }
}

void __31__SGDCloudKitSync_setDatabase___block_invoke_289(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 56);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __31__SGDCloudKitSync_setDatabase___block_invoke_2;
  v11[3] = &unk_27894E9B0;
  v12 = v6;
  v13 = v5;
  v14 = v7;
  v9 = v5;
  v10 = v6;
  objc_copyWeak(&v15, (a1 + 40));
  dispatch_async(v8, v11);
  objc_destroyWeak(&v15);
}

void __31__SGDCloudKitSync_setDatabase___block_invoke_302(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 104) primaryICloudCalendarAccount];
  v3 = +[SGAccountsAdapter sharedInstance];
  v4 = [v3 primaryICloudCalendarAccount];

  if (v4 != v2 && ([v4 isEqualToString:v2] & 1) == 0)
  {
    v5 = sgLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = 138412546;
      v9 = v2;
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&dword_231E60000, v5, OS_LOG_TYPE_INFO, "SGCK Handling primary iCloud Calendar account change (%@ --> %@)", &v8, 0x16u);
    }

    [*(*(a1 + 32) + 104) setSyncToken:0];
    [*(*(a1 + 32) + 104) setHasSubscription:MEMORY[0x277CBEC28]];
    v6 = [*(a1 + 32) addFetchNewEntitiesOperation];
    [*(*(a1 + 32) + 104) setPrimaryICloudCalendarAccount:v4];
    [*(a1 + 32) processStateChanges];
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __31__SGDCloudKitSync_setDatabase___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = sgLogHandle();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      *buf = 138412290;
      v15 = v5;
      _os_log_error_impl(&dword_231E60000, v4, OS_LOG_TYPE_ERROR, "SGCK Error getting APS environment string -- APNS will not work!: %@", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v12 = *(a1 + 40);
      *buf = 138412290;
      v15 = v12;
      _os_log_debug_impl(&dword_231E60000, v4, OS_LOG_TYPE_DEBUG, "SGCK APS (APNS) Environment: %@", buf, 0xCu);
    }

    v6 = [objc_alloc(MEMORY[0x277CEEA10]) initWithEnvironmentName:*(a1 + 40) namedDelegatePort:@"com.apple.aps.suggestd" queue:*(*(a1 + 48) + 56)];
    v7 = *(a1 + 48);
    v8 = *(v7 + 48);
    *(v7 + 48) = v6;

    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [*(*(a1 + 48) + 48) setDelegate:WeakRetained];

    v4 = [@"com.apple.icloud-container." stringByAppendingString:@"com.apple.suggestd"];
    v13 = v4;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
    [*(*(a1 + 48) + 48) _setEnabledTopics:v10];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __31__SGDCloudKitSync_setDatabase___block_invoke_288(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 56);
  v4 = a2;
  dispatch_assert_queue_V2(v3);
  v5 = [v4 BOOLValue];

  v6 = sgLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v7)
    {
      *v14 = 0;
      _os_log_debug_impl(&dword_231E60000, v6, OS_LOG_TYPE_DEBUG, "SGCK device account (or lack thereof) is not eligible -- not creating subscription", v14, 2u);
    }
  }

  else
  {
    if (v7)
    {
      *buf = 0;
      _os_log_debug_impl(&dword_231E60000, v6, OS_LOG_TYPE_DEBUG, "SGCK Device is eligible. Creating subscription via setDatabase: path...", buf, 2u);
    }

    v8 = [*(*(a1 + 32) + 104) hasSubscription];
    v9 = [v8 BOOLValue];

    v10 = sgLogHandle();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
    if (v9)
    {
      if (v11)
      {
        *v16 = 0;
        _os_log_debug_impl(&dword_231E60000, v10, OS_LOG_TYPE_DEBUG, "SGCK setDatabase: not going to create subscription because something else created it...", v16, 2u);
      }
    }

    else
    {
      if (v11)
      {
        *v17 = 0;
        _os_log_debug_impl(&dword_231E60000, v10, OS_LOG_TYPE_DEBUG, "SGCK actually creating subscription via setDatabase path...", v17, 2u);
      }

      [*(a1 + 32) createSubscriptionWithRetries:3];
    }

    v12 = sgLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *v15 = 0;
      _os_log_debug_impl(&dword_231E60000, v12, OS_LOG_TYPE_DEBUG, "SGCK backfill via setDatabase: path...", v15, 2u);
    }

    v13 = [*(a1 + 32) addFetchNewEntitiesOperation];
  }
}

- (void)createSubscriptionWithRetries:(unint64_t)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  [v5 setRecordType:@"com_apple_suggestions_ck_event"];
  v6 = objc_opt_new();
  [v6 setShouldSendContentAvailable:1];
  v7 = sgLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v12 = a3;
    _os_log_impl(&dword_231E60000, v7, OS_LOG_TYPE_INFO, "SGCK Going to create subscription (retries: %lu)", buf, 0xCu);
  }

  database = self->_database;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __49__SGDCloudKitSync_createSubscriptionWithRetries___block_invoke;
  v10[3] = &unk_27894E988;
  v10[4] = self;
  v10[5] = a3;
  [(CKDatabase *)database saveSubscription:v5 completionHandler:v10];

  v9 = *MEMORY[0x277D85DE8];
}

void __49__SGDCloudKitSync_createSubscriptionWithRetries___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(v6 + 56);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__SGDCloudKitSync_createSubscriptionWithRetries___block_invoke_2;
  block[3] = &unk_278955958;
  v10 = v4;
  v11 = v6;
  v12 = v5;
  v8 = v4;
  dispatch_async(v7, block);
}

void __49__SGDCloudKitSync_createSubscriptionWithRetries___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) getUnderlyingError:?];
    v3 = [v2 code];
    v4 = sgLogHandle();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
    if (v3 == 2032)
    {
      if (v5)
      {
        *buf = 0;
        _os_log_error_impl(&dword_231E60000, v4, OS_LOG_TYPE_ERROR, "SGCK Setting hasSubscription persisted flag because duplicate subscription already exists on server. This should only happen after a suggest_tool reset.", buf, 2u);
      }

      [*(*(a1 + 40) + 104) setHasSubscription:MEMORY[0x277CBEC38]];
    }

    else
    {
      if (v5)
      {
        *buf = 138412290;
        v17 = v2;
        _os_log_error_impl(&dword_231E60000, v4, OS_LOG_TYPE_ERROR, "SGCK Error while attempting to create subscription: %@", buf, 0xCu);
      }

      if ([*(a1 + 40) pauseIfNeededAndReturnRetryEligibilityForError:v2] && *(a1 + 48))
      {
        v7 = sgLogHandle();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_231E60000, v7, OS_LOG_TYPE_ERROR, "SGCK Will re-attempt subscription creation", buf, 2u);
        }

        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __49__SGDCloudKitSync_createSubscriptionWithRetries___block_invoke_280;
        v13[3] = &unk_278955468;
        v8 = *(a1 + 48);
        v14 = *(a1 + 40);
        v9 = v14;
        v15 = v8;
        v10 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:v13];
        v11 = [v9 addOperation:v10];
      }
    }
  }

  else
  {
    v6 = sgLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_231E60000, v6, OS_LOG_TYPE_INFO, "SGCK Setting hasSubscription persisted flag because new subscription was created successfully", buf, 2u);
    }

    [*(*(a1 + 40) + 104) setHasSubscription:MEMORY[0x277CBEC38]];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __49__SGDCloudKitSync_shouldRemoveEventsFromEventKit__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 56));
  [v3 setTargetQueue:*(*(a1 + 32) + 56) useAfterCompletion:0];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__SGDCloudKitSync_shouldRemoveEventsFromEventKit__block_invoke_2;
  v8[3] = &unk_27894E8E8;
  v8[4] = *(a1 + 32);
  [v3 wait:v8];
  v4 = [*(a1 + 40) error];

  v5 = *(a1 + 40);
  if (v4)
  {
    v6 = [v5 error];
    [v3 fail:v6];
  }

  else
  {
    v6 = [v5 result];
    if ([v6 supportsDeviceToDeviceEncryption])
    {
      v7 = MEMORY[0x277CBEC28];
    }

    else
    {
      v7 = MEMORY[0x277CBEC38];
    }

    [v3 succeed:v7];
  }
}

void __49__SGDCloudKitSync_shouldRemoveEventsFromEventKit__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 56));
  v7 = sgLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_debug_impl(&dword_231E60000, v7, OS_LOG_TYPE_DEBUG, "SGCK Received account info, decision on whether to remove events from EK: %@ (error: %@)", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __30__SGDCloudKitSync_accountInfo__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 56);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __30__SGDCloudKitSync_accountInfo__block_invoke_2;
  v12[3] = &unk_2789560E0;
  v13 = v5;
  v14 = v6;
  v8 = *(a1 + 40);
  v9 = *(a1 + 32);
  v15 = v8;
  v16 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, v12);
}

uint64_t __30__SGDCloudKitSync_accountInfo__block_invoke_268(uint64_t a1)
{
  v2 = sgLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_231E60000, v2, OS_LOG_TYPE_DEBUG, "SGCK accountInfo - Calling CloudKit ([CKContainer accountInfoWithCompletionHandler:])", v4, 2u);
  }

  *(*(a1 + 32) + 96) = 1;
  return [*(*(a1 + 32) + 80) accountInfoWithCompletionHandler:*(a1 + 40)];
}

void __30__SGDCloudKitSync_accountInfo__block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = sgLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v17 = 138412546;
    v18 = v13;
    v19 = 2112;
    v20 = v14;
    _os_log_debug_impl(&dword_231E60000, v2, OS_LOG_TYPE_DEBUG, "SGCK accountInfo - completionHandler - %@, %@", &v17, 0x16u);
  }

  if (!*(a1 + 32) || *(a1 + 40))
  {
    v3 = sgLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 32);
      v16 = *(a1 + 40);
      v17 = 138412546;
      v18 = v15;
      v19 = 2112;
      v20 = v16;
      _os_log_error_impl(&dword_231E60000, v3, OS_LOG_TYPE_ERROR, "SGCK accountInfo - completionHandler - received error and/or failed to get account info: %@, %@", &v17, 0x16u);
    }
  }

  v4 = *(a1 + 48);
  v5 = *(*(a1 + 56) + 88);
  v6 = sgLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (v4 == v5)
  {
    if (v7)
    {
      LOWORD(v17) = 0;
      _os_log_debug_impl(&dword_231E60000, v6, OS_LOG_TYPE_DEBUG, "SGCK accountInfo - completionHandler - completing future", &v17, 2u);
    }

    *(*(a1 + 56) + 96) = 0;
    v8 = *(a1 + 40);
    v9 = *(a1 + 32);
    if (v9 | v8)
    {
      v6 = v8;
    }

    else
    {
      v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D02208] code:-1 userInfo:0];
      v9 = *(a1 + 32);
    }

    [*(*(a1 + 56) + 88) completeWithResult:v9 error:v6];
    if (!*(a1 + 32))
    {
      v10 = *(a1 + 56);
      v11 = *(v10 + 88);
      *(v10 + 88) = 0;
    }
  }

  else if (v7)
  {
    LOWORD(v17) = 0;
    _os_log_debug_impl(&dword_231E60000, v6, OS_LOG_TYPE_DEBUG, "SGCK accountInfo - completionHandler - ignoring result because a newer request is in flight", &v17, 2u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)accountChanged:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__SGDCloudKitSync_accountChanged___block_invoke;
  v7[3] = &unk_278955830;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

uint64_t __34__SGDCloudKitSync_accountChanged___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = sgLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v14 = *(a1 + 32);
    v15 = 138412290;
    v16 = v14;
    _os_log_debug_impl(&dword_231E60000, v2, OS_LOG_TYPE_DEBUG, "SGCK accountChanged:%@", &v15, 0xCu);
  }

  v3 = *(a1 + 40);
  if (*(v3 + 88))
  {
    if ([*(v3 + 88) isComplete])
    {
      v4 = sgLogHandle();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v15) = 0;
        _os_log_debug_impl(&dword_231E60000, v4, OS_LOG_TYPE_DEBUG, "SGCK accountChanged: - existing future is complete. Setting to nil.", &v15, 2u);
      }

      v5 = *(a1 + 40);
      v6 = *(v5 + 88);
      *(v5 + 88) = 0;
LABEL_12:

      v3 = *(a1 + 40);
      goto LABEL_13;
    }

    v3 = *(a1 + 40);
    if (*(v3 + 96) == 1)
    {
      v7 = sgLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v15) = 0;
        _os_log_debug_impl(&dword_231E60000, v7, OS_LOG_TYPE_DEBUG, "SGCK accountChanged: - existing future is in-flight. Creating a new request...", &v15, 2u);
      }

      v8 = *(a1 + 40);
      v9 = *(v8 + 88);
      *(v8 + 88) = 0;
      v10 = v9;

      v6 = [*(a1 + 40) accountInfo];
      v11 = [v10 completer];

      [v6 wait:v11];
      goto LABEL_12;
    }
  }

LABEL_13:
  result = [v3 processStateChanges];
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void __38__SGDCloudKitSync_processStateChanges__block_invoke_264(void *a1)
{
  v2 = sgLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_231E60000, v2, OS_LOG_TYPE_INFO, "SGCK About to invoke _deleteAllSyncedItemsCallback from background queue...", buf, 2u);
  }

  *(*(a1[5] + 8) + 24) = (*(*(a1[4] + 32) + 16))();
  v3 = sgLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_231E60000, v3, OS_LOG_TYPE_INFO, "SGCK Finished invoking _deleteAllSyncedItemsCallback on background queue. Now hopping back onto _queue...", v4, 2u);
  }

  dispatch_async(*(a1[4] + 56), *(*(a1[6] + 8) + 40));
}

uint64_t __38__SGDCloudKitSync_processStateChanges__block_invoke_265(void *a1)
{
  v2 = sgLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_231E60000, v2, OS_LOG_TYPE_INFO, "SGCK Entering sgckQueueBlock.", buf, 2u);
  }

  v3 = *(*(a1[6] + 8) + 24);
  v4 = sgLogHandle();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v3 == 1)
  {
    if (v5)
    {
      *v10 = 0;
      _os_log_impl(&dword_231E60000, v4, OS_LOG_TYPE_INFO, "SGCK deleteAllSyncedItemsSucceeded == YES", v10, 2u);
    }

    [*(a1[4] + 104) setSyncToken:0];
    [*(a1[4] + 104) setEventsWereRemovedFromEventKit:MEMORY[0x277CBEC38]];
    v6 = sgLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_231E60000, v6, OS_LOG_TYPE_INFO, "SGCK Set new persisted state.", v9, 2u);
    }
  }

  else
  {
    if (v5)
    {
      *v8 = 0;
      _os_log_impl(&dword_231E60000, v4, OS_LOG_TYPE_INFO, "SGCK deleteAllSyncedItemsSucceeded == NO. Will defer a processStateChanges.", v8, 2u);
    }

    [*(a1[4] + 104) setHasDeferredProcessStateChanges:MEMORY[0x277CBEC38]];
  }

  return (*(a1[5] + 16))();
}

- (void)dealloc
{
  greenTeaLogger = self->_greenTeaLogger;
  ct_green_tea_logger_destroy();
  v4.receiver = self;
  v4.super_class = SGDCloudKitSync;
  [(SGDCloudKitSync *)&v4 dealloc];
}

- (SGDCloudKitSync)init
{
  v35.receiver = self;
  v35.super_class = SGDCloudKitSync;
  v2 = [(SGDCloudKitSync *)&v35 init];
  if (!v2)
  {
    return v2;
  }

  v3 = objc_opt_new();
  v4 = *(v2 + 1);
  *(v2 + 1) = v3;

  *(v2 + 25) = ct_green_tea_logger_create();
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_create("com.apple.suggestd.aps", v5);
  v7 = *(v2 + 7);
  *(v2 + 7) = v6;

  v8 = objc_opt_new();
  v9 = *(v2 + 8);
  *(v2 + 8) = v8;

  [*(v2 + 8) setUnderlyingQueue:*(v2 + 7)];
  v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:100];
  v11 = *(v2 + 9);
  *(v2 + 9) = v10;

  v12 = *(v2 + 7);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __23__SGDCloudKitSync_init__block_invoke;
  block[3] = &unk_278954A30;
  v13 = v2;
  v34 = v13;
  dispatch_sync(v12, block);
  dispatch_suspend(*(v2 + 7));
  *(v13 + 40) = 0;
  *(v13 + 96) = 0;
  v14 = [MEMORY[0x277D02098] cloudKitPersistedState];
  if (![v14 length])
  {
    v19 = sgLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_231E60000, v19, OS_LOG_TYPE_INFO, "SGCK No persisted state exists for this user.", &buf, 2u);
    }

    goto LABEL_9;
  }

  v15 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v14 error:0];
  v16 = v13[13];
  v13[13] = v15;

  v17 = v13[13];
  if (!v17)
  {
    v19 = sgLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&dword_231E60000, v19, OS_LOG_TYPE_ERROR, "SGCK Existing persisted state was saved but could not be deserialized.", &buf, 2u);
    }

LABEL_9:

    v18 = v13 + 13;
    v17 = v13[13];
    if (!v17)
    {
      v20 = sgLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_231E60000, v20, OS_LOG_TYPE_INFO, "SGCK Creating new persisted state.", &buf, 2u);
      }

      v21 = objc_opt_new();
      v22 = *v18;
      *v18 = v21;

      v17 = *v18;
    }

    goto LABEL_13;
  }

  v18 = v13 + 13;
LABEL_13:
  [v17 setChangeCallback:&__block_literal_global_248_19380];
  v23 = [*v18 salt];

  if (v23)
  {
    v24 = [*v18 saltUsesManatee];
    v25 = [v24 BOOLValue];

    if ((v25 & 1) == 0)
    {
      v26 = sgLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_231E60000, v26, OS_LOG_TYPE_INFO, "SGCK Discarding non-manatee salt", &buf, 2u);
      }

      [v13 failSalt];
    }
  }

  objc_initWeak(&buf, v13);
  v27 = MEMORY[0x277D02098];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __23__SGDCloudKitSync_init__block_invoke_250;
  v29[3] = &unk_278950F68;
  v30 = v13;
  objc_copyWeak(&v31, &buf);
  [v27 registerBlockOnSuggestionsSettingsChange:v29];
  objc_destroyWeak(&v31);

  objc_destroyWeak(&buf);
  return v2;
}

- (id)addOperation
{
  v3 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:&__block_literal_global_237_19385];
  v4 = [(SGDCloudKitSync *)self addOperation:v3];

  return v4;
}

- (id)addOperation:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    [v5 setDatabase:self->_database];
    [v5 setCallbackQueue:self->_queue];
    v6 = sgLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v12 = v5;
      _os_log_debug_impl(&dword_231E60000, v6, OS_LOG_TYPE_DEBUG, "SGCK Will add CK operation to queue: %@", buf, 0xCu);
    }
  }

  [(NSMutableArray *)self->_operationsToAddToOpQueue addObject:v4];
  if ([(NSMutableArray *)self->_operationsToAddToOpQueue count]== 1)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __32__SGDCloudKitSync_addOperation___block_invoke;
    block[3] = &unk_278954A30;
    block[4] = self;
    dispatch_async(queue, block);
  }

  v8 = *MEMORY[0x277D85DE8];

  return v4;
}

uint64_t __32__SGDCloudKitSync_addOperation___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 64) addOperations:*(*(a1 + 32) + 72) waitUntilFinished:0];
  v2 = sgLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v5 = [*(*(a1 + 32) + 72) count];
    v6 = [*(*(a1 + 32) + 64) operationCount];
    v7 = 134218240;
    v8 = v5;
    v9 = 2048;
    v10 = v6;
    _os_log_debug_impl(&dword_231E60000, v2, OS_LOG_TYPE_DEBUG, "SGCK added %lu operations to queue (pending operation count: %lu)", &v7, 0x16u);
  }

  result = [*(*(a1 + 32) + 72) removeAllObjects];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)addWriteOperationForRecordGetter:(id)a3 deleteGetter:(id)a4 withRetries:(unint64_t)a5 isFirstTry:(BOOL)a6
{
  v6 = a6;
  v11 = a3;
  v12 = a4;
  v13 = [(SGDCloudKitSync *)self addOperation];
  v14 = [(SGDCloudKitSync *)self addOperation];
  [(SGDCloudKitSync *)self _coupleOperationTrainWithStart:v13 end:v14];
  objc_initWeak(&location, v14);
  v15 = MEMORY[0x277CCA8C8];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __88__SGDCloudKitSync_addWriteOperationForRecordGetter_deleteGetter_withRetries_isFirstTry___block_invoke;
  v26[3] = &unk_27894E828;
  objc_copyWeak(v29, &location);
  v29[1] = a2;
  v26[4] = self;
  v30 = v6;
  v16 = v11;
  v27 = v16;
  v17 = v12;
  v28 = v17;
  v29[2] = a5;
  v18 = [v15 blockOperationWithBlock:v26];
  v19 = [(SGDCloudKitSync *)self addOperation:v18];

  [v19 addDependency:v13];
  [v14 addDependency:v19];
  if (self->_inProgressProcureSaltOperation)
  {
    v20 = sgLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_231E60000, v20, OS_LOG_TYPE_DEBUG, "SGCK Will wait for in-progress procure salt operation before writing or deleting an entity", buf, 2u);
    }

    [v13 addDependency:self->_inProgressProcureSaltOperation];
  }

  if (self->_inProgressCreateZoneOperation)
  {
    v21 = sgLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_231E60000, v21, OS_LOG_TYPE_DEBUG, "SGCK Will wait for in-progress create zone operation before writing or deleting an entity", buf, 2u);
    }

    [v13 addDependency:self->_inProgressCreateZoneOperation];
  }

  if (v6)
  {
    v22 = [(SGDCloudKitSync *)self addManateeSanityCheckOperation];
    [v13 addDependency:v22];
  }

  v23 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"WriteRecord operation attempt completion [retries: %lu]", a5];
  [v14 setName:v23];

  objc_destroyWeak(v29);
  objc_destroyWeak(&location);

  return v14;
}

void __88__SGDCloudKitSync_addWriteOperationForRecordGetter_deleteGetter_withRetries_isFirstTry___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!WeakRetained)
  {
    v30 = [MEMORY[0x277CCA890] currentHandler];
    [v30 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"SGDCloudKitSync.m" lineNumber:1055 description:{@"Invalid parameter not satisfying: %@", @"strongEndOperation"}];
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 168);
  if (*(a1 + 80) == 1)
  {
    *(v3 + 168) = 0;

    v5 = *(a1 + 32);
    v6 = *(v5 + 184);
    *(v5 + 184) = 0;

    v3 = *(a1 + 32);
    goto LABEL_5;
  }

  if (!v4)
  {
    v4 = *(v3 + 184);
    if (!v4)
    {
LABEL_5:
      if (*(v3 + 120) == 1)
      {
        v7 = sgLogHandle();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_231E60000, v7, OS_LOG_TYPE_DEBUG, "SGCK Adding and waiting for zone creation before writing entity.", buf, 2u);
        }

        v8 = [*(a1 + 32) addCreateZoneOperation];
        v9 = [*(a1 + 32) addWriteOperationForRecordGetter:*(a1 + 40) deleteGetter:*(a1 + 48) withRetries:*(a1 + 72) isFirstTry:0];
        [*(a1 + 32) _addDependency:v8 toTrain:v9];
        [WeakRetained addDependency:v9];
      }

      else
      {
        v10 = [*(v3 + 104) salt];

        if (v10)
        {
          v11 = *(a1 + 32);
          v12 = objc_opt_new();
          v8 = [v11 addOperation:v12];

          if (*(a1 + 40))
          {
            v13 = objc_autoreleasePoolPush();
            v14 = *(a1 + 40);
            v15 = [*(*(a1 + 32) + 104) salt];
            v16 = [*(*(a1 + 32) + 104) saltAtomicReferenceId];
            v17 = (*(v14 + 16))(v14, v15, v16);

            objc_autoreleasePoolPop(v13);
          }

          else
          {
            v17 = 0;
          }

          if (*(a1 + 48))
          {
            v19 = objc_autoreleasePoolPush();
            v20 = *(a1 + 48);
            v21 = [*(*(a1 + 32) + 104) salt];
            v22 = (*(v20 + 16))(v20, v21);

            objc_autoreleasePoolPop(v19);
          }

          else
          {
            v22 = 0;
          }

          v23 = sgLogHandle();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            v28 = sgMapSelector();
            v29 = *(a1 + 72);
            *buf = 138412802;
            v38 = v28;
            v39 = 2112;
            v40 = v22;
            v41 = 2048;
            v42 = v29;
            _os_log_debug_impl(&dword_231E60000, v23, OS_LOG_TYPE_DEBUG, "SGCK Will write entity records: %@, delete entity records: %@, retries remaining: %lu", buf, 0x20u);
          }

          [v8 setRecordsToSave:v17];
          [v8 setRecordIDsToDelete:v22];
          [v8 setAtomic:0];
          [v8 setSavePolicy:2];
          v31[0] = MEMORY[0x277D85DD0];
          v31[1] = 3221225472;
          v31[2] = __88__SGDCloudKitSync_addWriteOperationForRecordGetter_deleteGetter_withRetries_isFirstTry___block_invoke_225;
          v31[3] = &unk_27894E800;
          objc_copyWeak(v36, (a1 + 56));
          v24 = *(a1 + 32);
          v36[1] = *(a1 + 64);
          v31[4] = v24;
          v9 = v17;
          v32 = v9;
          v25 = v22;
          v26 = *(a1 + 72);
          v33 = v25;
          v36[2] = v26;
          v34 = *(a1 + 40);
          v35 = *(a1 + 48);
          [v8 setModifyRecordsCompletionBlock:v31];
          [WeakRetained addDependency:v8];

          objc_destroyWeak(v36);
        }

        else
        {
          v18 = sgLogHandle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_231E60000, v18, OS_LOG_TYPE_DEBUG, "SGCK Adding and waiting for salt procurement before writing entity.", buf, 2u);
          }

          v8 = [*(a1 + 32) addProcureSaltOperation];
          v9 = [*(a1 + 32) addWriteOperationForRecordGetter:*(a1 + 40) deleteGetter:*(a1 + 48) withRetries:*(a1 + 72) isFirstTry:0];
          [*(a1 + 32) _addDependency:v8 toTrain:v9];
          [WeakRetained addDependency:v9];
        }
      }

      goto LABEL_26;
    }
  }

  v8 = v4;
  v9 = sgLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v38 = v8;
    _os_log_error_impl(&dword_231E60000, v9, OS_LOG_TYPE_ERROR, "SGCK Failing to write entity due to unrecoverable error: %@", buf, 0xCu);
  }

LABEL_26:

  v27 = *MEMORY[0x277D85DE8];
}

void __88__SGDCloudKitSync_addWriteOperationForRecordGetter_deleteGetter_withRetries_isFirstTry___block_invoke_225(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (!WeakRetained)
  {
    v34 = [MEMORY[0x277CCA890] currentHandler];
    [v34 handleFailureInMethod:*(a1 + 80) object:*(a1 + 32) file:@"SGDCloudKitSync.m" lineNumber:1112 description:{@"Invalid parameter not satisfying: %@", @"muscularEndOperation"}];

    if (!v5)
    {
      goto LABEL_51;
    }

LABEL_3:
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v7 = *(a1 + 40);
    v8 = [v7 countByEnumeratingWithState:&v39 objects:v46 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v40;
LABEL_5:
      v11 = 0;
      while (1)
      {
        if (*v40 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(a1 + 32);
        v13 = [*(*(&v39 + 1) + 8 * v11) recordID];
        v14 = [v12 ckErrorForRecordId:v13 inError:v5];

        if (v14)
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [v7 countByEnumeratingWithState:&v39 objects:v46 count:16];
          if (v9)
          {
            goto LABEL_5;
          }

          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:

      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v7 = *(a1 + 48);
      v15 = [v7 countByEnumeratingWithState:&v35 objects:v45 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v36;
        while (2)
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v36 != v17)
            {
              objc_enumerationMutation(v7);
            }

            v19 = [*(a1 + 32) ckErrorForRecordId:*(*(&v35 + 1) + 8 * i) inError:v5];
            if (v19)
            {
              v14 = v19;
              goto LABEL_21;
            }
          }

          v16 = [v7 countByEnumeratingWithState:&v35 objects:v45 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }
      }

      v14 = 0;
    }

LABEL_21:

    if (([*(a1 + 32) pauseIfNeededAndReturnRetryEligibilityForError:v14] & 1) != 0 || objc_msgSend(*(a1 + 32), "pauseIfNeededAndReturnRetryEligibilityForError:", v5))
    {
      v20 = *(a1 + 88);
      if (v20)
      {
        v21 = [*(a1 + 32) addWriteOperationForRecordGetter:*(a1 + 56) deleteGetter:*(a1 + 64) withRetries:v20 - 1 isFirstTry:0];
        [WeakRetained addDependency:v21];
        v22 = v5;
LABEL_49:

        goto LABEL_50;
      }
    }

    v22 = [*(a1 + 32) getUnderlyingError:v5];

    if (*(a1 + 88) && [*(a1 + 32) shouldRecreateZoneForRecordError:v14 operationError:v22])
    {
      v23 = sgLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        if (v14)
        {
          v33 = v14;
        }

        else
        {
          v33 = v22;
        }

        *buf = 138412290;
        v44 = v33;
        _os_log_error_impl(&dword_231E60000, v23, OS_LOG_TYPE_ERROR, "SGCK Will recreate zone and salt and try to write record again (error: %@)", buf, 0xCu);
      }

      v21 = [*(a1 + 32) addWriteOperationForRecordGetter:*(a1 + 56) deleteGetter:*(a1 + 64) withRetries:*(a1 + 88) - 1 isFirstTry:0];
      v24 = *(a1 + 32);
      v25 = [v24 addDeleteAndRecreateZoneOperation];
      [v24 _addDependency:v25 toTrain:v21];

      goto LABEL_48;
    }

    v26 = [v14 code];
    if (!v26)
    {
      v26 = [v22 code];
    }

    if (v26 != 26)
    {
      if (v26 == 31)
      {
        [*(a1 + 32) failSalt];
        v30 = sgLogHandle();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_231E60000, v30, OS_LOG_TYPE_ERROR, "SGCK Salt atomic reference check failed while trying to write record. Calling failSalt.", buf, 2u);
        }

        if (!*(a1 + 88))
        {
          goto LABEL_50;
        }

        v31 = sgLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_231E60000, v31, OS_LOG_TYPE_ERROR, "SGCK Retrying after salt missing reference error.", buf, 2u);
        }

LABEL_47:
        v21 = [*(a1 + 32) addWriteOperationForRecordGetter:*(a1 + 56) deleteGetter:*(a1 + 64) withRetries:*(a1 + 88) - 1 isFirstTry:0];
LABEL_48:
        [WeakRetained addDependency:v21];
        goto LABEL_49;
      }

      if (v26 != 28)
      {
LABEL_50:

        goto LABEL_51;
      }
    }

    *(*(a1 + 32) + 120) = 1;
    v27 = sgLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_231E60000, v27, OS_LOG_TYPE_ERROR, "SGCK Zone missing while trying to write or delete record. Setting _noZone flag.", buf, 2u);
    }

    if (!*(a1 + 88))
    {
      goto LABEL_50;
    }

    v28 = [*(a1 + 40) count];
    v21 = sgLogHandle();
    v29 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (!v28)
    {
      if (v29)
      {
        *buf = 0;
        _os_log_error_impl(&dword_231E60000, v21, OS_LOG_TYPE_ERROR, "SGCK Not retrying because there is nothing to write.", buf, 2u);
      }

      goto LABEL_49;
    }

    if (v29)
    {
      *buf = 0;
      _os_log_error_impl(&dword_231E60000, v21, OS_LOG_TYPE_ERROR, "SGCK Retrying after zone missing error", buf, 2u);
    }

    goto LABEL_47;
  }

  if (v5)
  {
    goto LABEL_3;
  }

LABEL_51:

  v32 = *MEMORY[0x277D85DE8];
}

- (id)addWriteOperationForRecordGetter:(id)a3 deleteGetter:(id)a4 withRetries:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  dispatch_assert_queue_V2(self->_queue);
  if (self->_disabledBecauseOutOfDateSoftware)
  {
    v10 = sgLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_231E60000, v10, OS_LOG_TYPE_DEFAULT, "SGCK addWriteOperationForRecordGetter - Skipping because of out of date software", v14, 2u);
    }

    v11 = [(SGDCloudKitSync *)self addOperation];
  }

  else
  {
    v11 = [(SGDCloudKitSync *)self addWriteOperationForRecordGetter:v8 deleteGetter:v9 withRetries:a5 isFirstTry:1];
  }

  v12 = v11;

  return v12;
}

- (id)addDeleteAndRecreateZoneOperation
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = [(SGDCloudKitSync *)self addOperation];
  v4 = [(SGDCloudKitSync *)self addOperation];
  [(SGDCloudKitSync *)self _coupleOperationTrainWithStart:v3 end:v4];
  v5 = [(SGDCloudKitSync *)self addDeleteZoneOperation];
  [(SGDCloudKitSync *)self _addDependency:v3 toTrain:v5];
  v6 = [(SGDCloudKitSync *)self addCreateZoneOperation];
  [(SGDCloudKitSync *)self _addDependency:v5 toTrain:v6];
  v7 = [(SGDCloudKitSync *)self addProcureSaltOperation];
  [(SGDCloudKitSync *)self _addDependency:v6 toTrain:v7];
  [v4 addDependency:v7];

  return v4;
}

- (BOOL)shouldRecreateZoneForRecordError:(id)a3 operationError:(id)a4
{
  queue = self->_queue;
  v7 = a4;
  v8 = a3;
  dispatch_assert_queue_V2(queue);
  v9 = [(SGDCloudKitSync *)self getUnderlyingError:v7];

  v10 = [v8 code];
  if (!v10)
  {
    v10 = [v9 code];
  }

  v11 = (v10 - 5000) < 5 || v10 == 112;

  return v11;
}

- (id)addFetchNewEntitiesAttemptOperationWithRetries:(unint64_t)a3
{
  location[2] = *MEMORY[0x277D85DE8];
  v4 = sgLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(location[0]) = 134217984;
    *(location + 4) = a3;
    _os_log_debug_impl(&dword_231E60000, v4, OS_LOG_TYPE_DEBUG, "SGCK addFetchNewEntitiesAttemptOperationWithRetries:%lu", location, 0xCu);
  }

  self->_requestedFetchNewEntitiesWhileRequestAlreadyInFlight = 0;
  v5 = [(SGDCloudKitSync *)self addOperation];
  v6 = [(SGDCloudKitSync *)self addOperation];
  [(SGDCloudKitSync *)self _coupleOperationTrainWithStart:v5 end:v6];
  v26 = [(_SGDCloudKitSyncPersistedState *)self->_persistedState syncToken];
  v7 = [(SGDCloudKitSync *)self recordZoneId];
  v8 = objc_opt_new();
  [v8 setPreviousServerChangeToken:v26];
  v9 = objc_alloc(MEMORY[0x277CBC3B8]);
  v36 = v7;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
  v34 = v7;
  v35 = v8;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
  v12 = [v9 initWithRecordZoneIDs:v10 configurationsByRecordZoneID:v11];
  v13 = [(SGDCloudKitSync *)self addOperation:v12];

  [v13 addDependency:v5];
  [v13 setFetchAllChanges:0];
  v14 = objc_opt_new();
  v15 = [(CKDatabase *)self->_database container];
  [v14 setContainer:v15];

  [v13 setConfiguration:v14];
  v16 = objc_opt_new();
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __66__SGDCloudKitSync_addFetchNewEntitiesAttemptOperationWithRetries___block_invoke;
  v32[3] = &unk_27894E788;
  v32[4] = self;
  v17 = v16;
  v33 = v17;
  [v13 setRecordChangedBlock:v32];
  v18 = objc_opt_new();
  [v6 addDependency:v18];
  objc_initWeak(location, v6);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __66__SGDCloudKitSync_addFetchNewEntitiesAttemptOperationWithRetries___block_invoke_213;
  v27[3] = &unk_27894E7D8;
  objc_copyWeak(v31, location);
  v31[1] = a2;
  v27[4] = self;
  v19 = v18;
  v28 = v19;
  v20 = v17;
  v29 = v20;
  v31[2] = a3;
  v21 = v7;
  v30 = v21;
  [v13 setRecordZoneFetchCompletionBlock:v27];
  [v6 addDependency:v13];

  objc_destroyWeak(v31);
  objc_destroyWeak(location);

  v22 = *MEMORY[0x277D85DE8];

  return v6;
}

void __66__SGDCloudKitSync_addFetchNewEntitiesAttemptOperationWithRetries___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 104) eventsWereRemovedFromEventKit];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = sgLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *v14 = 0;
      _os_log_debug_impl(&dword_231E60000, v6, OS_LOG_TYPE_DEBUG, "SGCK ignoring fetched new entities because we are not in a sync enabled state", v14, 2u);
    }
  }

  else
  {
    v7 = [v3 recordType];
    v8 = [v7 isEqualToString:@"com_apple_suggestions_ck_event"];

    if (v8)
    {
      v9 = [SGPipelineEntity fromCloudKitRecord:v3];
      v10 = [v9 enrichments];
      v11 = [v10 count];

      if (v11)
      {
        v12 = *(a1 + 40);
        v13 = [*(a1 + 32) invokeNewEntitiesCallbackWithEntity:v9];
        [v12 addObject:v13];
      }
    }
  }
}

void __66__SGDCloudKitSync_addFetchNewEntitiesAttemptOperationWithRetries___block_invoke_213(uint64_t a1, void *a2, void *a3, void *a4, char a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (!WeakRetained)
  {
    v25 = [MEMORY[0x277CCA890] currentHandler];
    [v25 handleFailureInMethod:*(a1 + 72) object:*(a1 + 32) file:@"SGDCloudKitSync.m" lineNumber:914 description:{@"Invalid parameter not satisfying: %@", @"strongEndOperation"}];
  }

  v16 = [*(*(a1 + 32) + 104) eventsWereRemovedFromEventKit];
  v17 = [v16 BOOLValue];

  if (v17)
  {
    v18 = sgLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_231E60000, v18, OS_LOG_TYPE_DEBUG, "SGCK ignoring record zone completion block because we are not in a sync enabled state", buf, 2u);
    }

    [WeakRetained removeDependency:*(a1 + 40)];
  }

  else
  {
    v19 = MEMORY[0x277D01FE8];
    v20 = *(a1 + 48);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __66__SGDCloudKitSync_addFetchNewEntitiesAttemptOperationWithRetries___block_invoke_215;
    v26[3] = &unk_27894E7B0;
    objc_copyWeak(v33, (a1 + 64));
    v21 = *(a1 + 32);
    v22 = *(a1 + 40);
    v33[1] = *(a1 + 72);
    v26[4] = v21;
    v27 = v22;
    v28 = *(a1 + 48);
    v23 = v14;
    v24 = *(a1 + 80);
    v29 = v23;
    v33[2] = v24;
    v30 = *(a1 + 56);
    v31 = v11;
    v32 = v12;
    v34 = a5;
    [v19 waitForFuturesToComplete:v20 withCallback:v26];

    objc_destroyWeak(v33);
  }
}

void __66__SGDCloudKitSync_addFetchNewEntitiesAttemptOperationWithRetries___block_invoke_215(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  if (!WeakRetained)
  {
    v32 = [MEMORY[0x277CCA890] currentHandler];
    [v32 handleFailureInMethod:*(a1 + 96) object:*(a1 + 32) file:@"SGDCloudKitSync.m" lineNumber:926 description:{@"Invalid parameter not satisfying: %@", @"muscularEndOperation"}];
  }

  [WeakRetained removeDependency:*(a1 + 40)];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v3 = *(a1 + 48);
  v4 = [v3 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (!v4)
  {
LABEL_11:

    v10 = (a1 + 56);
    if (*(a1 + 56))
    {
      if ([*(a1 + 32) pauseIfNeededAndReturnRetryEligibilityForError:?])
      {
        v11 = *(a1 + 104);
        if (!v11)
        {
          v17 = sgLogHandle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v27 = *v10;
            *buf = 138412290;
            v39 = v27;
            _os_log_error_impl(&dword_231E60000, v17, OS_LOG_TYPE_ERROR, "SGCK Giving up on fetching new changes because out of retries for error: %@", buf, 0xCu);
          }

          goto LABEL_39;
        }

        v12 = *(a1 + 32);
        v13 = v11 - 1;
        goto LABEL_36;
      }

      v15 = *v10;
      v16 = 1;
LABEL_20:
      v17 = [*(a1 + 32) ckErrorForRecordZoneId:*(a1 + 64) inError:v15];
      v18 = [v17 code];
      if (!v18)
      {
        v18 = [*v10 code];
      }

      v19 = sgLogHandle();
      v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
      if (v18 != 21)
      {
        if (v20)
        {
          v29 = v17;
          if (!v17)
          {
            v29 = *v10;
          }

          *buf = 138412290;
          v39 = v29;
          _os_log_error_impl(&dword_231E60000, v19, OS_LOG_TYPE_ERROR, "SGCK Giving up on fetching changes due to unrecoverable error %@", buf, 0xCu);
        }

        goto LABEL_39;
      }

      if (v20)
      {
        v28 = v17;
        if (!v17)
        {
          v28 = *v10;
        }

        *buf = 138412290;
        v39 = v28;
        _os_log_error_impl(&dword_231E60000, v19, OS_LOG_TYPE_ERROR, "SGCK Change token expired (error: %@)", buf, 0xCu);
      }

      [*(*(a1 + 32) + 104) setSyncToken:0];
      if (!v16)
      {
LABEL_39:

        goto LABEL_40;
      }

      if (*(a1 + 104))
      {
        v21 = sgLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_231E60000, v21, OS_LOG_TYPE_ERROR, "SGCK Will try fetching again without change token", buf, 2u);
        }

        v22 = [*(a1 + 32) addFetchNewEntitiesAttemptOperationWithRetries:*(a1 + 104) - 1];
        [WeakRetained addDependency:v22];
      }

      if (*v10)
      {
        goto LABEL_40;
      }
    }

    v23 = *(a1 + 72);
    v24 = [*(a1 + 32) recordZoneId];
    LOBYTE(v23) = [v23 isEqual:v24];

    if ((v23 & 1) == 0)
    {
      v33 = [MEMORY[0x277CCA890] currentHandler];
      [v33 handleFailureInMethod:*(a1 + 96) object:*(a1 + 32) file:@"SGDCloudKitSync.m" lineNumber:972 description:{@"Invalid parameter not satisfying: %@", @"[recordZoneID isEqual:[self recordZoneId]]"}];
    }

    [*(*(a1 + 32) + 104) setSyncToken:*(a1 + 80)];
    if ((*(a1 + 112) & 1) == 0 && *(*(a1 + 32) + 160) != 1)
    {
      v17 = sgLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_231E60000, v17, OS_LOG_TYPE_DEBUG, "SGCK Finished requesting more entities from server.", buf, 2u);
      }

      goto LABEL_39;
    }

    v25 = sgLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v30 = @"NO";
      if (*(a1 + 112))
      {
        v31 = @"YES";
      }

      else
      {
        v31 = @"NO";
      }

      if (*(*(a1 + 32) + 160))
      {
        v30 = @"YES";
      }

      *buf = 138412546;
      v39 = v31;
      v40 = 2112;
      v41 = v30;
      _os_log_debug_impl(&dword_231E60000, v25, OS_LOG_TYPE_DEBUG, "SGCK Fetching more entities from server for these reasons: [%@] Server indicated more entities are coming, [%@] Client was asked again to fetch more entities while this request was already in-flight", buf, 0x16u);
    }

    v12 = *(a1 + 32);
    v13 = *(a1 + 104);
LABEL_36:
    v17 = [v12 addFetchNewEntitiesAttemptOperationWithRetries:v13];
    [WeakRetained addDependency:v17];
    goto LABEL_39;
  }

  v5 = v4;
  v6 = *v35;
LABEL_5:
  v7 = 0;
  while (1)
  {
    if (*v35 != v6)
    {
      objc_enumerationMutation(v3);
    }

    v8 = [*(*(&v34 + 1) + 8 * v7) result];
    v9 = [v8 BOOLValue];

    if (!v9)
    {
      break;
    }

    if (v5 == ++v7)
    {
      v5 = [v3 countByEnumeratingWithState:&v34 objects:v42 count:16];
      if (v5)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  v14 = sgLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_231E60000, v14, OS_LOG_TYPE_INFO, "SGCK Storage was not ready. Will sync again when it's purportedly available.", buf, 2u);
  }

  [*(*(a1 + 32) + 104) setHasDeferredSync:MEMORY[0x277CBEC38]];
  v10 = (a1 + 56);
  v15 = *(a1 + 56);
  if (v15)
  {
    v16 = 0;
    goto LABEL_20;
  }

LABEL_40:

  v26 = *MEMORY[0x277D85DE8];
}

- (id)addFetchNewEntitiesOperation
{
  v23 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if (self->_disabledBecauseOutOfDateSoftware)
  {
    v3 = sgLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_231E60000, v3, OS_LOG_TYPE_DEFAULT, "SGCK addFetchNewEntitiesOperation - Skipping because of out of date software", buf, 2u);
    }

    v4 = MEMORY[0x277CCA8C8];
    v5 = &__block_literal_global_191;
LABEL_12:
    v11 = [v4 blockOperationWithBlock:v5];
    v9 = [(SGDCloudKitSync *)self addOperation:v11];
LABEL_13:

    goto LABEL_14;
  }

  if (!self->_readyForNewEntities)
  {
    v10 = sgLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_231E60000, v10, OS_LOG_TYPE_INFO, "SGCK addFetchNewEntitiesOperation - Deferring because not ready for new entities.", buf, 2u);
    }

    [(_SGDCloudKitSyncPersistedState *)self->_persistedState setHasDeferredSync:MEMORY[0x277CBEC38]];
    v4 = MEMORY[0x277CCA8C8];
    v5 = &__block_literal_global_194_19435;
    goto LABEL_12;
  }

  inProgressFetchNewEntitiesOperation = self->_inProgressFetchNewEntitiesOperation;
  v7 = sgLogHandle();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (!inProgressFetchNewEntitiesOperation)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_debug_impl(&dword_231E60000, v7, OS_LOG_TYPE_DEBUG, "SGCK addFetchNewEntitiesOperation - Adding new operation to operation queue", buf, 2u);
    }

    [(SGDCloudKitSync *)self clearErrors];
    v14 = objc_autoreleasePoolPush();
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __47__SGDCloudKitSync_addFetchNewEntitiesOperation__block_invoke_201;
    v20[3] = &unk_278954A30;
    v20[4] = self;
    v15 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:v20];
    v16 = [(SGDCloudKitSync *)self addOperation:v15];

    objc_autoreleasePoolPop(v14);
    v17 = self->_inProgressFetchNewEntitiesOperation;
    self->_inProgressFetchNewEntitiesOperation = v16;

    v11 = [(SGDCloudKitSync *)self addOperation];
    v18 = [(SGDCloudKitSync *)self addFetchNewEntitiesAttemptOperationWithRetries:3];
    [(SGDCloudKitSync *)self _addDependency:v11 toTrain:v18];
    [(SGDCloudKitSync *)self _coupleOperationTrainWithStart:v11 end:self->_inProgressFetchNewEntitiesOperation];
    [(NSOperation *)self->_inProgressFetchNewEntitiesOperation addDependency:v18];
    v9 = self->_inProgressFetchNewEntitiesOperation;

    goto LABEL_13;
  }

  if (v8)
  {
    if (self->_requestedFetchNewEntitiesWhileRequestAlreadyInFlight)
    {
      v19 = @"YES";
    }

    else
    {
      v19 = @"NO";
    }

    *buf = 138412290;
    v22 = v19;
    _os_log_debug_impl(&dword_231E60000, v7, OS_LOG_TYPE_DEBUG, "SGCK addFetchNewEntitiesOperation - Returning operation already in flight, changing value of _requestedFetchNewEntitiesWhileRequestAlreadyInFlight from %@ to YES", buf, 0xCu);
  }

  self->_requestedFetchNewEntitiesWhileRequestAlreadyInFlight = 1;
  v9 = self->_inProgressFetchNewEntitiesOperation;
LABEL_14:
  v12 = *MEMORY[0x277D85DE8];

  return v9;
}

void __47__SGDCloudKitSync_addFetchNewEntitiesOperation__block_invoke_201(uint64_t a1)
{
  v2 = sgLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_debug_impl(&dword_231E60000, v2, OS_LOG_TYPE_DEBUG, "SGCK addFetchNewEntitiesOperation - Operation completed", v5, 2u);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 152);
  *(v3 + 152) = 0;
}

- (id)addProcureSaltAttemptOperationWithRetries:(unint64_t)a3
{
  location[2] = *MEMORY[0x277D85DE8];
  v5 = sgLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(location[0]) = 134217984;
    *(location + 4) = a3;
    _os_log_debug_impl(&dword_231E60000, v5, OS_LOG_TYPE_DEBUG, "SGCK addProcureSaltAttemptOperationWithRetries:%lu", location, 0xCu);
  }

  v6 = [(SGDCloudKitSync *)self addOperation];
  v7 = [(SGDCloudKitSync *)self addOperation];
  [(SGDCloudKitSync *)self _coupleOperationTrainWithStart:v6 end:v7];
  createZoneError = self->_createZoneError;
  if (createZoneError)
  {
    objc_storeStrong(&self->_procureSaltError, createZoneError);
    [v7 addDependency:v6];
  }

  else
  {
    context = objc_autoreleasePoolPush();
    v9 = SGRandomDataOfLength(0x10uLL);
    v10 = [v9 base64EncodedStringWithOptions:0];

    v11 = objc_alloc(MEMORY[0x277CBC5D0]);
    v12 = [@"salt_" stringByAppendingString:v10];
    v13 = [(SGDCloudKitSync *)self recordZoneId];
    v14 = [v11 initWithRecordName:v12 zoneID:v13];

    v30 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"salt_atomic_reference" recordID:v14];
    v15 = SGRandomDataOfLength(0x20uLL);
    v16 = objc_alloc(MEMORY[0x277CBC5D0]);
    v17 = [(SGDCloudKitSync *)self recordZoneId];
    v18 = [v16 initWithRecordName:@"salt-manatee" zoneID:v17];

    v19 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"salt" recordID:v18];
    v20 = [v19 encryptedValuesByKey];
    [v20 setObject:v15 forKeyedSubscript:@"se"];

    v21 = [v14 recordName];
    [v19 setObject:v21 forKeyedSubscript:@"a"];

    objc_autoreleasePoolPop(context);
    v22 = objc_opt_new();
    v23 = [(SGDCloudKitSync *)self addOperation:v22];

    [v23 addDependency:v6];
    v35[0] = v19;
    v35[1] = v30;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
    [v23 setRecordsToSave:v24];

    [v23 setAtomic:1];
    [v23 setSavePolicy:0];
    objc_initWeak(location, v7);
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __61__SGDCloudKitSync_addProcureSaltAttemptOperationWithRetries___block_invoke;
    v32[3] = &unk_27894E760;
    objc_copyWeak(v34, location);
    v34[1] = a2;
    v32[4] = self;
    v25 = v19;
    v33 = v25;
    v34[2] = a3;
    [v23 setModifyRecordsCompletionBlock:v32];
    [v7 addDependency:v23];

    objc_destroyWeak(v34);
    objc_destroyWeak(location);
  }

  v26 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"ProcureSalt operation attempt completion [retries: %lu]", a3];
  [v7 setName:v26];

  v27 = *MEMORY[0x277D85DE8];

  return v7;
}

void __61__SGDCloudKitSync_addProcureSaltAttemptOperationWithRetries___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v67 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!WeakRetained)
  {
    v35 = [MEMORY[0x277CCA890] currentHandler];
    [v35 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"SGDCloudKitSync.m" lineNumber:757 description:{@"Invalid parameter not satisfying: %@", @"strongEndOperation"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_48:
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v13 = v7;
    v36 = [(__CFString *)v13 countByEnumeratingWithState:&v58 objects:v66 count:16];
    if (v36)
    {
      v37 = v36;
      v56 = WeakRetained;
      v57 = v8;
      v38 = v7;
      v39 = *v59;
      while (2)
      {
        for (i = 0; i != v37; ++i)
        {
          if (*v59 != v39)
          {
            objc_enumerationMutation(v13);
          }

          v41 = *(*(&v58 + 1) + 8 * i);
          v42 = [v41 recordType];
          v43 = [v42 isEqualToString:@"salt"];

          if (v43)
          {
            v25 = v41;
            v17 = 0;
            v7 = v38;
            WeakRetained = v56;
            v8 = v57;
            goto LABEL_58;
          }
        }

        v37 = [(__CFString *)v13 countByEnumeratingWithState:&v58 objects:v66 count:16];
        if (v37)
        {
          continue;
        }

        break;
      }

      v17 = 0;
      v7 = v38;
      WeakRetained = v56;
      v8 = v57;
    }

    else
    {
      v17 = 0;
    }

    goto LABEL_72;
  }

  if (!v9)
  {
    goto LABEL_48;
  }

LABEL_3:
  v11 = *(a1 + 32);
  v12 = [*(a1 + 40) recordID];
  v13 = [v11 ckErrorForRecordId:v12 inError:v9];

  if (([*(a1 + 32) pauseIfNeededAndReturnRetryEligibilityForError:v13] & 1) != 0 || objc_msgSend(*(a1 + 32), "pauseIfNeededAndReturnRetryEligibilityForError:", v9))
  {
    v14 = *(a1 + 64);
    if (v14)
    {
      v15 = [*(a1 + 32) addProcureSaltAttemptOperationWithRetries:v14 - 1];
      [WeakRetained addDependency:v15];
    }

    else
    {
      if (v13)
      {
        v16 = v13;
      }

      else
      {
        v16 = v9;
      }

      objc_storeStrong((*(a1 + 32) + 184), v16);
    }

    v17 = v9;
LABEL_72:

    goto LABEL_73;
  }

  v17 = [*(a1 + 32) getUnderlyingError:v9];

  if (*(a1 + 64) && [*(a1 + 32) shouldRecreateZoneForRecordError:v13 operationError:v17])
  {
    v18 = sgLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      if (v13)
      {
        v33 = v13;
      }

      else
      {
        v33 = v17;
      }

      *buf = 138412290;
      v63 = v33;
      _os_log_error_impl(&dword_231E60000, v18, OS_LOG_TYPE_ERROR, "SGCK Will recreate zone and try to procure salt again (error: %@)", buf, 0xCu);
    }

    v19 = [*(a1 + 32) addProcureSaltAttemptOperationWithRetries:*(a1 + 64) - 1];
    v20 = *(a1 + 32);
    v21 = [v20 addDeleteAndRecreateZoneOperation];
    [v20 _addDependency:v21 toTrain:v19];

    [WeakRetained addDependency:v19];
    goto LABEL_72;
  }

  v22 = [(__CFString *)v13 code];
  if (!v22)
  {
    v22 = [(__CFString *)v17 code];
  }

  if (v22 == 28 || v22 == 26)
  {
    *(*(a1 + 32) + 120) = 1;
    v26 = sgLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      if (v13)
      {
        v32 = v13;
      }

      else
      {
        v32 = v17;
      }

      *buf = 138412290;
      v63 = v32;
      _os_log_error_impl(&dword_231E60000, v26, OS_LOG_TYPE_ERROR, "SGCK Zone missing while procuring salt: %@", buf, 0xCu);
    }

    if (!*(a1 + 64))
    {
      goto LABEL_72;
    }

    v27 = sgLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_231E60000, v27, OS_LOG_TYPE_ERROR, "SGCK Will attempt to create zone and then try procuring salt again", buf, 2u);
    }

    v24 = [*(a1 + 32) addProcureSaltAttemptOperationWithRetries:*(a1 + 64) - 1];
    v28 = *(a1 + 32);
    v29 = [v28 addCreateZoneOperation];
    [v28 _addDependency:v29 toTrain:v24];

    [WeakRetained addDependency:v24];
    v25 = 0;
  }

  else
  {
    if (v22 != 14)
    {
      v30 = sgLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        if (v13)
        {
          v34 = v13;
        }

        else
        {
          v34 = v17;
        }

        *buf = 138412290;
        v63 = v34;
        _os_log_error_impl(&dword_231E60000, v30, OS_LOG_TYPE_ERROR, "SGCK Unrecoverable error while procuring salt: %@", buf, 0xCu);
      }

      if (v13)
      {
        v31 = v13;
      }

      else
      {
        v31 = v17;
      }

      objc_storeStrong((*(a1 + 32) + 184), v31);
      goto LABEL_72;
    }

    v23 = sgLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_231E60000, v23, OS_LOG_TYPE_DEBUG, "SGCK Using existing salt record found on server", buf, 2u);
    }

    v24 = [(__CFString *)v13 userInfo];
    v25 = [v24 objectForKeyedSubscript:*MEMORY[0x277CBBFE8]];
  }

LABEL_58:
  if (v25)
  {
    v44 = [(__CFString *)v25 encryptedValuesByKey];
    v45 = [v44 objectForKeyedSubscript:@"se"];

    v46 = [(__CFString *)v25 objectForKeyedSubscript:@"a"];
    v47 = sgLogHandle();
    v48 = v47;
    if (v45)
    {
      v49 = v46 == 0;
    }

    else
    {
      v49 = 1;
    }

    if (v49)
    {
      if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
      {
        v55 = @"non-nil";
        if (!v45)
        {
          v55 = 0;
        }

        *buf = 138412546;
        v63 = v55;
        v64 = 2112;
        v65 = v46;
        _os_log_fault_impl(&dword_231E60000, v48, OS_LOG_TYPE_FAULT, "SGCK procuredSaltRecord missing critical fields (se=%@, a=%@)! This should not be possible and no recovery path is implemented. CloudKit writes will fail.", buf, 0x16u);
      }

      if (_PASEvaluateLogFaultAndProbCrashCriteria())
      {
        abort();
      }
    }

    else
    {
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v63 = v46;
        _os_log_impl(&dword_231E60000, v48, OS_LOG_TYPE_INFO, "SGCK Successfully procured Manatee salt with atomic reference name %@", buf, 0xCu);
      }

      [*(*(a1 + 32) + 104) setSalt:v45];
      v51 = objc_alloc(MEMORY[0x277CBC5D0]);
      v52 = [*(a1 + 32) recordZoneId];
      v53 = [v51 initWithRecordName:v46 zoneID:v52];
      [*(*(a1 + 32) + 104) setSaltAtomicReferenceId:v53];

      [*(*(a1 + 32) + 104) setSaltUsesManatee:MEMORY[0x277CBEC38]];
    }

    v13 = v25;
    goto LABEL_72;
  }

LABEL_73:

  v54 = *MEMORY[0x277D85DE8];
}

- (id)_ckErrorForId:(id)a3 inError:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 code] == 2)
  {
    v8 = [v7 userInfo];
    v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];
    v10 = [v9 objectForKeyedSubscript:v6];

    if ([v10 code] == 22)
    {
      v11 = 0;
    }

    else
    {
      v11 = [(SGDCloudKitSync *)self getUnderlyingError:v10];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)addProcureSaltOperation
{
  if (self->_disabledBecauseOutOfDateSoftware)
  {
    v3 = sgLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_231E60000, v3, OS_LOG_TYPE_DEFAULT, "SGCK addProcureSaltOperation - Skipping because of out of date software", buf, 2u);
    }

    v4 = [(SGDCloudKitSync *)self addOperation];
LABEL_9:
    v8 = v4;
    goto LABEL_10;
  }

  inProgressProcureSaltOperation = self->_inProgressProcureSaltOperation;
  v6 = sgLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (inProgressProcureSaltOperation)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_debug_impl(&dword_231E60000, v6, OS_LOG_TYPE_DEBUG, "SGCK addProcureSaltOperation - Returning operation already in flight", buf, 2u);
    }

    v4 = self->_inProgressProcureSaltOperation;
    goto LABEL_9;
  }

  if (v7)
  {
    *buf = 0;
    _os_log_debug_impl(&dword_231E60000, v6, OS_LOG_TYPE_DEBUG, "SGCK addProcureSaltOperation - Adding new operation to operation queue", buf, 2u);
  }

  [(SGDCloudKitSync *)self clearErrors];
  v10 = objc_autoreleasePoolPush();
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __42__SGDCloudKitSync_addProcureSaltOperation__block_invoke;
  v16[3] = &unk_278954A30;
  v16[4] = self;
  v11 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:v16];
  v12 = [(SGDCloudKitSync *)self addOperation:v11];

  objc_autoreleasePoolPop(v10);
  v13 = self->_inProgressProcureSaltOperation;
  self->_inProgressProcureSaltOperation = v12;

  v14 = [(SGDCloudKitSync *)self addOperation];
  v15 = [(SGDCloudKitSync *)self addProcureSaltAttemptOperationWithRetries:3];
  [(SGDCloudKitSync *)self _addDependency:v14 toTrain:v15];
  [(SGDCloudKitSync *)self _coupleOperationTrainWithStart:v14 end:self->_inProgressProcureSaltOperation];
  [(NSOperation *)self->_inProgressProcureSaltOperation addDependency:v15];
  v8 = self->_inProgressProcureSaltOperation;

LABEL_10:

  return v8;
}

void __42__SGDCloudKitSync_addProcureSaltOperation__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 184);
  v3 = sgLogHandle();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = *(*(a1 + 32) + 184);
      v9 = 138412290;
      v10 = v5;
      _os_log_error_impl(&dword_231E60000, v4, OS_LOG_TYPE_ERROR, "SGCK addProcureSaltOperation - Operation completed with error: %@", &v9, 0xCu);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v9) = 0;
    _os_log_debug_impl(&dword_231E60000, v4, OS_LOG_TYPE_DEBUG, "SGCK addProcureSaltOperation - Operation completed successfully", &v9, 2u);
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 128);
  *(v6 + 128) = 0;

  v8 = *MEMORY[0x277D85DE8];
}

- (id)addManateeSanityCheckOperation
{
  v19[1] = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  disabledBecauseOutOfDateSoftware = self->_disabledBecauseOutOfDateSoftware;
  v5 = sgLogHandle();
  v6 = v5;
  if (disabledBecauseOutOfDateSoftware)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_231E60000, v6, OS_LOG_TYPE_DEFAULT, "SGCK addManateeSanityCheckOperation - Skipping because of out of date software", buf, 2u);
    }

    v7 = [(SGDCloudKitSync *)self addOperation];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf[0]) = 0;
      _os_log_debug_impl(&dword_231E60000, v6, OS_LOG_TYPE_DEBUG, "SGCK Creating Manatee health check operation...", buf, 2u);
    }

    v8 = [(SGDCloudKitSync *)self addOperation];
    v7 = [(SGDCloudKitSync *)self addOperation];
    [(SGDCloudKitSync *)self _coupleOperationTrainWithStart:v8 end:v7];
    v9 = objc_alloc(MEMORY[0x277CBC3D0]);
    v10 = [(SGDCloudKitSync *)self recordZoneId];
    v19[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    v12 = [v9 initWithRecordZoneIDs:v11];
    v13 = [(SGDCloudKitSync *)self addOperation:v12];

    [v13 addDependency:v8];
    [v7 addDependency:v13];
    objc_initWeak(buf, v7);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __49__SGDCloudKitSync_addManateeSanityCheckOperation__block_invoke;
    v16[3] = &unk_27894E738;
    objc_copyWeak(v17, buf);
    v17[1] = a2;
    v16[4] = self;
    [v13 setFetchRecordZonesCompletionBlock:v16];
    objc_destroyWeak(v17);
    objc_destroyWeak(buf);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

void __49__SGDCloudKitSync_addManateeSanityCheckOperation__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"SGDCloudKitSync.m" lineNumber:653 description:{@"Invalid parameter not satisfying: %@", @"strongEndOperation"}];
  }

  v6 = sgLogHandle();
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v4;
      _os_log_error_impl(&dword_231E60000, v7, OS_LOG_TYPE_ERROR, "SGCK Operation error during Manatee sanity check: %@", buf, 0xCu);
    }

    v8 = *(a1 + 32);
    v9 = [v8 recordZoneId];
    v7 = [v8 ckErrorForRecordZoneId:v9 inError:v4];

    if (v7 && [v7 code]== 112)
    {
      v10 = sgLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v15 = v7;
        _os_log_error_impl(&dword_231E60000, v10, OS_LOG_TYPE_ERROR, "SGCK Missing Manatee identity detected during sanity check. Deleting-and-then-re-creating zone... (record zone error: %@)", buf, 0xCu);
      }

      v11 = [*(a1 + 32) addDeleteAndRecreateZoneOperation];
      [WeakRetained addDependency:v11];
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_231E60000, v7, OS_LOG_TYPE_DEBUG, "SGCK Manatee health check returned without errors", buf, 2u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)addCreateZoneAttemptOperationWithRetries:(unint64_t)a3
{
  location[3] = *MEMORY[0x277D85DE8];
  v6 = sgLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(location[0]) = 134217984;
    *(location + 4) = a3;
    _os_log_debug_impl(&dword_231E60000, v6, OS_LOG_TYPE_DEBUG, "SGCK addCreateZoneAttemptOperationWithRetries:%lu", location, 0xCu);
  }

  v7 = [(SGDCloudKitSync *)self addOperation];
  v8 = [(SGDCloudKitSync *)self addOperation];
  [(SGDCloudKitSync *)self _coupleOperationTrainWithStart:v7 end:v8];
  deleteZoneError = self->_deleteZoneError;
  if (deleteZoneError)
  {
    objc_storeStrong(&self->_createZoneError, deleteZoneError);
    [v8 addDependency:v7];
  }

  else
  {
    v10 = objc_alloc(MEMORY[0x277CBC5E8]);
    v11 = [(SGDCloudKitSync *)self recordZoneId];
    v12 = [v10 initWithZoneID:v11];

    v13 = objc_opt_new();
    v14 = [(SGDCloudKitSync *)self addOperation:v13];

    [v14 addDependency:v7];
    v21 = v12;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
    [v14 setRecordZonesToSave:v15];

    objc_initWeak(location, v8);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __60__SGDCloudKitSync_addCreateZoneAttemptOperationWithRetries___block_invoke;
    v19[3] = &unk_27894E710;
    objc_copyWeak(v20, location);
    v20[1] = a2;
    v20[2] = a3;
    v19[4] = self;
    [v14 setModifyRecordZonesCompletionBlock:v19];
    [v8 addDependency:v14];
    objc_destroyWeak(v20);
    objc_destroyWeak(location);
  }

  v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"CreateZone operation attempt completion [retries: %lu]", a3];
  [v8 setName:v16];

  v17 = *MEMORY[0x277D85DE8];

  return v8;
}

void __60__SGDCloudKitSync_addCreateZoneAttemptOperationWithRetries___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"SGDCloudKitSync.m" lineNumber:574 description:{@"Invalid parameter not satisfying: %@", @"strongEndOperation"}];

    if (v6)
    {
LABEL_3:
      v8 = *(a1 + 32);
      v9 = [v8 recordZoneId];
      v10 = [v8 ckErrorForRecordZoneId:v9 inError:v6];

      v11 = [*(a1 + 32) getUnderlyingError:v10];
      if ([v11 code] == 2053)
      {
        v12 = sgLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_231E60000, v12, OS_LOG_TYPE_DEBUG, "SGCK got PCS user identity unknown error while creating zone. Running processStateChanges just to be sure we didn't miss anything.", buf, 2u);
        }

        [*(a1 + 32) processStateChanges];
      }

      if (([*(a1 + 32) pauseIfNeededAndReturnRetryEligibilityForError:v10] & 1) != 0 || objc_msgSend(*(a1 + 32), "pauseIfNeededAndReturnRetryEligibilityForError:", v6))
      {
        v13 = *(a1 + 56);
        if (v13)
        {
          v14 = [*(a1 + 32) addCreateZoneAttemptOperationWithRetries:v13 - 1];
          [WeakRetained addDependency:v14];
LABEL_17:

          goto LABEL_18;
        }

        v15 = sgLogHandle();
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
LABEL_16:

          v17 = *(a1 + 32);
          v18 = v6;
          v14 = *(v17 + 168);
          *(v17 + 168) = v18;
          goto LABEL_17;
        }

        *buf = 138412290;
        v24 = v6;
        v16 = "SGCK aborting create zone because out of retries for retry-able error: %@";
      }

      else
      {
        if ([v6 code] == 18)
        {
          objc_storeStrong((*(a1 + 32) + 168), a4);
          [*(a1 + 32) disable];
LABEL_18:

          goto LABEL_25;
        }

        v15 = sgLogHandle();
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_16;
        }

        *buf = 138412290;
        v24 = v6;
        v16 = "SGCK Unrecoverable error for create zone operation: %@";
      }

      _os_log_error_impl(&dword_231E60000, v15, OS_LOG_TYPE_ERROR, v16, buf, 0xCu);
      goto LABEL_16;
    }
  }

  v20 = sgLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v22 = *(a1 + 56);
    *buf = 134217984;
    v24 = v22;
    _os_log_debug_impl(&dword_231E60000, v20, OS_LOG_TYPE_DEBUG, "SGCK addCreateZoneAttemptOperationWithRetries:%lu - SUCCESS (zone created or already exists)", buf, 0xCu);
  }

  *(*(a1 + 32) + 120) = 0;
LABEL_25:

  v21 = *MEMORY[0x277D85DE8];
}

- (id)addCreateZoneOperation
{
  if (self->_disabledBecauseOutOfDateSoftware)
  {
    v3 = sgLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_231E60000, v3, OS_LOG_TYPE_DEFAULT, "SGCK addCreateZoneOperation - Skipping because of out of date software", buf, 2u);
    }

    v4 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:&__block_literal_global_156];
    v5 = [(SGDCloudKitSync *)self addOperation:v4];
LABEL_12:

    goto LABEL_13;
  }

  inProgressCreateZoneOperation = self->_inProgressCreateZoneOperation;
  v7 = sgLogHandle();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (!inProgressCreateZoneOperation)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_debug_impl(&dword_231E60000, v7, OS_LOG_TYPE_DEBUG, "SGCK addCreateZoneOperation - Adding new operation to operation queue", buf, 2u);
    }

    [(SGDCloudKitSync *)self clearErrors];
    v9 = objc_autoreleasePoolPush();
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __41__SGDCloudKitSync_addCreateZoneOperation__block_invoke_157;
    v15[3] = &unk_278954A30;
    v15[4] = self;
    v10 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:v15];
    v11 = [(SGDCloudKitSync *)self addOperation:v10];

    objc_autoreleasePoolPop(v9);
    v12 = self->_inProgressCreateZoneOperation;
    self->_inProgressCreateZoneOperation = v11;

    v4 = [(SGDCloudKitSync *)self addOperation];
    v13 = [(SGDCloudKitSync *)self addCreateZoneAttemptOperationWithRetries:3];
    [(SGDCloudKitSync *)self _addDependency:v4 toTrain:v13];
    [(SGDCloudKitSync *)self _coupleOperationTrainWithStart:v4 end:self->_inProgressCreateZoneOperation];
    [(NSOperation *)self->_inProgressCreateZoneOperation addDependency:v13];
    v5 = self->_inProgressCreateZoneOperation;

    goto LABEL_12;
  }

  if (v8)
  {
    *buf = 0;
    _os_log_debug_impl(&dword_231E60000, v7, OS_LOG_TYPE_DEBUG, "SGCK addCreateZoneOperation - Returning operation already in flight", buf, 2u);
  }

  v5 = self->_inProgressCreateZoneOperation;
LABEL_13:

  return v5;
}

void __41__SGDCloudKitSync_addCreateZoneOperation__block_invoke_157(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 168);
  v3 = sgLogHandle();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
  if (v2)
  {
    if (v4)
    {
      v5 = *(*(a1 + 32) + 168);
      v12 = 138412290;
      v13 = v5;
      v6 = "SGCK addCreateZoneOperation - Operation completed with error: %@";
      v7 = v3;
      v8 = 12;
LABEL_7:
      _os_log_debug_impl(&dword_231E60000, v7, OS_LOG_TYPE_DEBUG, v6, &v12, v8);
    }
  }

  else if (v4)
  {
    LOWORD(v12) = 0;
    v6 = "SGCK addCreateZoneOperation - Operation completed successfully";
    v7 = v3;
    v8 = 2;
    goto LABEL_7;
  }

  v9 = *(a1 + 32);
  v10 = *(v9 + 136);
  *(v9 + 136) = 0;

  v11 = *MEMORY[0x277D85DE8];
}

- (id)addDeleteZoneAttemptOperationWithRetries:(unint64_t)a3
{
  location[3] = *MEMORY[0x277D85DE8];
  v6 = sgLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(location[0]) = 134217984;
    *(location + 4) = a3;
    _os_log_debug_impl(&dword_231E60000, v6, OS_LOG_TYPE_DEBUG, "SGCK addDeleteZoneAttemptOperationWithRetries:%lu", location, 0xCu);
  }

  v7 = [(SGDCloudKitSync *)self addOperation];
  v8 = [(SGDCloudKitSync *)self addOperation];
  [(SGDCloudKitSync *)self _coupleOperationTrainWithStart:v7 end:v8];
  v9 = objc_opt_new();
  v10 = [(SGDCloudKitSync *)self addOperation:v9];

  [v10 addDependency:v7];
  v11 = [(SGDCloudKitSync *)self recordZoneId];
  v23 = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
  [v10 setRecordZoneIDsToDelete:v12];

  objc_initWeak(location, v8);
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __60__SGDCloudKitSync_addDeleteZoneAttemptOperationWithRetries___block_invoke;
  v20 = &unk_27894E710;
  objc_copyWeak(v22, location);
  v22[1] = a2;
  v22[2] = a3;
  v21 = self;
  [v10 setModifyRecordZonesCompletionBlock:&v17];
  v13 = objc_alloc(MEMORY[0x277CCACA8]);
  v14 = [v13 initWithFormat:@"DeleteZone operation attempt completion [retries: %lu]", a3, v17, v18, v19, v20];
  [v8 setName:v14];

  [v8 addDependency:v10];
  objc_destroyWeak(v22);
  objc_destroyWeak(location);

  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

void __60__SGDCloudKitSync_addDeleteZoneAttemptOperationWithRetries___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"SGDCloudKitSync.m" lineNumber:482 description:{@"Invalid parameter not satisfying: %@", @"strongEndOperation"}];
  }

  v8 = *(a1 + 32);
  if (v6)
  {
    if ([v8 pauseIfNeededAndReturnRetryEligibilityForError:v6])
    {
      v9 = *(a1 + 56);
      v10 = *(a1 + 32);
      if (!v9)
      {
        v11 = v10 + 22;
LABEL_18:
        objc_storeStrong(v11, a4);
        goto LABEL_19;
      }

      goto LABEL_13;
    }

    v12 = [v6 code];
    if (v12 == 4)
    {
      v9 = *(a1 + 56);
      if (v9)
      {
        v10 = *(a1 + 32);
LABEL_13:
        v13 = [v10 addDeleteZoneAttemptOperationWithRetries:v9 - 1];
        [WeakRetained addDependency:v13];

        goto LABEL_19;
      }

      v14 = sgLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v19 = v6;
        v15 = "SGCK Ran out of retries for delete zone operation with network failure: %@";
        goto LABEL_21;
      }
    }

    else
    {
      if (v12 == 18)
      {
        objc_storeStrong((*(a1 + 32) + 176), a4);
        [*(a1 + 32) disable];
        goto LABEL_19;
      }

      v14 = sgLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v19 = v6;
        v15 = "SGCK Unrecoverable error for delete zone operation: %@";
LABEL_21:
        _os_log_error_impl(&dword_231E60000, v14, OS_LOG_TYPE_ERROR, v15, buf, 0xCu);
      }
    }

    v11 = (*(a1 + 32) + 176);
    goto LABEL_18;
  }

  [v8[13] setSyncToken:0];
  [*(a1 + 32) failSalt];
LABEL_19:

  v16 = *MEMORY[0x277D85DE8];
}

- (id)addDeleteZoneOperation
{
  if (self->_disabledBecauseOutOfDateSoftware)
  {
    v3 = sgLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_231E60000, v3, OS_LOG_TYPE_DEFAULT, "SGCK addDeleteZoneOperation - Skipping because of out of date software", buf, 2u);
    }

    v4 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:&__block_literal_global_145];
    v5 = [(SGDCloudKitSync *)self addOperation:v4];
LABEL_12:

    goto LABEL_13;
  }

  inProgressDeleteZoneOperation = self->_inProgressDeleteZoneOperation;
  v7 = sgLogHandle();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (!inProgressDeleteZoneOperation)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_debug_impl(&dword_231E60000, v7, OS_LOG_TYPE_DEBUG, "SGCK addDeleteZoneOperation - Adding new operation to operation queue", buf, 2u);
    }

    [(SGDCloudKitSync *)self clearErrors];
    v9 = objc_autoreleasePoolPush();
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __41__SGDCloudKitSync_addDeleteZoneOperation__block_invoke_146;
    v15[3] = &unk_278954A30;
    v15[4] = self;
    v10 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:v15];
    v11 = [(SGDCloudKitSync *)self addOperation:v10];

    objc_autoreleasePoolPop(v9);
    v12 = self->_inProgressDeleteZoneOperation;
    self->_inProgressDeleteZoneOperation = v11;

    v4 = [(SGDCloudKitSync *)self addOperation];
    v13 = [(SGDCloudKitSync *)self addDeleteZoneAttemptOperationWithRetries:3];
    [(NSOperation *)self->_inProgressDeleteZoneOperation addDependency:v13];
    [(SGDCloudKitSync *)self _addDependency:v4 toTrain:v13];
    [(SGDCloudKitSync *)self _coupleOperationTrainWithStart:v4 end:self->_inProgressDeleteZoneOperation];
    [(SGDCloudKitSync *)self failSalt];
    self->_noZone = 1;
    v5 = self->_inProgressDeleteZoneOperation;

    goto LABEL_12;
  }

  if (v8)
  {
    *buf = 0;
    _os_log_debug_impl(&dword_231E60000, v7, OS_LOG_TYPE_DEBUG, "SGCK addDeleteZoneOperation - Returning operation already in flight", buf, 2u);
  }

  v5 = self->_inProgressDeleteZoneOperation;
LABEL_13:

  return v5;
}

void __41__SGDCloudKitSync_addDeleteZoneOperation__block_invoke_146(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 176);
  v3 = sgLogHandle();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
  if (v2)
  {
    if (v4)
    {
      v5 = *(*(a1 + 32) + 176);
      v12 = 138412290;
      v13 = v5;
      v6 = "SGCK addDeleteZoneOperation - Operation completed with error: %@";
      v7 = v3;
      v8 = 12;
LABEL_7:
      _os_log_debug_impl(&dword_231E60000, v7, OS_LOG_TYPE_DEBUG, v6, &v12, v8);
    }
  }

  else if (v4)
  {
    LOWORD(v12) = 0;
    v6 = "SGCK addDeleteZoneOperation - Operation completed successfully";
    v7 = v3;
    v8 = 2;
    goto LABEL_7;
  }

  v9 = *(a1 + 32);
  v10 = *(v9 + 144);
  *(v9 + 144) = 0;

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)pauseIfNeededAndReturnRetryEligibilityForError:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = [(SGDCloudKitSync *)self getUnderlyingError:a3];
  if ([v4 code] == 111 || objc_msgSend(v4, "code") == 5008)
  {
    v5 = sgLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v4;
      _os_log_error_impl(&dword_231E60000, v5, OS_LOG_TYPE_ERROR, "SGCK Suspending sync due to unsynced keychain: %@", buf, 0xCu);
    }

    [(SGDCloudKitSync *)self suspend];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v20 = __Block_byref_object_copy__19227;
    v21 = __Block_byref_object_dispose__19228;
    v22 = 0;
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    v7 = *MEMORY[0x277CBBF90];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __66__SGDCloudKitSync_pauseIfNeededAndReturnRetryEligibilityForError___block_invoke;
    v18[3] = &unk_27894E6E8;
    v18[4] = self;
    v18[5] = buf;
    v8 = [v6 addObserverForName:v7 object:0 queue:0 usingBlock:v18];
    v9 = *(*&buf[8] + 40);
    *(*&buf[8] + 40) = v8;

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v13 = [v4 userInfo];

    if (v13 && ([v4 userInfo], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "objectForKeyedSubscript:", *MEMORY[0x277CBBF68]), v15 = objc_claimAutoreleasedReturnValue(), v14, v15))
    {
      v16 = sgLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *&buf[4] = v15;
        *&buf[12] = 2112;
        *&buf[14] = v4;
        _os_log_error_impl(&dword_231E60000, v16, OS_LOG_TYPE_ERROR, "SGCK Delaying for %@ seconds (error: %@)", buf, 0x16u);
      }

      [v15 doubleValue];
      [(SGDCloudKitSync *)self suspendAndResumeAfter:?];
    }

    else
    {
      if (!CKCanRetryForError())
      {
        v10 = 0;
        goto LABEL_7;
      }

      v17 = sgLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v4;
        _os_log_error_impl(&dword_231E60000, v17, OS_LOG_TYPE_ERROR, "SGCK CloudKit framework recommends retry without delay for error: %@", buf, 0xCu);
      }
    }
  }

  v10 = 1;
LABEL_7:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

void __66__SGDCloudKitSync_pauseIfNeededAndReturnRetryEligibilityForError___block_invoke(uint64_t a1)
{
  v2 = sgLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_231E60000, v2, OS_LOG_TYPE_ERROR, "SGCK Resuming sync after suspension due to unsynced keychain", buf, 2u);
  }

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:*(*(*(a1 + 40) + 8) + 40)];

  v4 = *(a1 + 32);
  v5 = *(v4 + 56);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__SGDCloudKitSync_pauseIfNeededAndReturnRetryEligibilityForError___block_invoke_141;
  block[3] = &unk_278954A30;
  block[4] = v4;
  dispatch_async(v5, block);
}

- (id)getUnderlyingError:(id)a3
{
  v3 = a3;
  if ([v3 code] != 1 && objc_msgSend(v3, "code") != 15 || (objc_msgSend(v3, "userInfo"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "objectForKeyedSubscript:", *MEMORY[0x277CCA7E8]), v5 = objc_claimAutoreleasedReturnValue(), v4, !v5))
  {
    v5 = v3;
  }

  return v5;
}

- (void)resume
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = self->_suspendCount - 1;
  self->_suspendCount = v3;
  if (!v3)
  {
    v4 = sgLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_231E60000, v4, OS_LOG_TYPE_INFO, "SGCK Resuming operation queue", v5, 2u);
    }

    [(NSOperationQueue *)self->_opQueue setSuspended:0];
  }
}

- (void)suspendAndResumeAfter:(double)a3
{
  v11 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v5 = sgLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v10 = a3;
    _os_log_impl(&dword_231E60000, v5, OS_LOG_TYPE_INFO, "SGCK Will suspend operation queue for delay: %f", buf, 0xCu);
  }

  [(SGDCloudKitSync *)self suspend];
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__SGDCloudKitSync_suspendAndResumeAfter___block_invoke;
  v8[3] = &unk_278954A30;
  v8[4] = self;
  [MEMORY[0x277D425A0] runAsyncOnQueue:queue afterDelaySeconds:v8 block:a3];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)suspend
{
  dispatch_assert_queue_V2(self->_queue);
  suspendCount = self->_suspendCount;
  self->_suspendCount = suspendCount + 1;
  if (!suspendCount)
  {
    v4 = sgLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_231E60000, v4, OS_LOG_TYPE_INFO, "SGCK Operation queue suspended", v5, 2u);
    }

    [(NSOperationQueue *)self->_opQueue setSuspended:1];
  }
}

- (void)disable
{
  v3 = sgLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_231E60000, v3, OS_LOG_TYPE_DEFAULT, "SGCK Disabling due to incompatible version", v4, 2u);
  }

  self->_disabledBecauseOutOfDateSoftware = 1;
  [(NSOperationQueue *)self->_opQueue cancelAllOperations];
}

- (void)clearErrors
{
  createZoneError = self->_createZoneError;
  self->_createZoneError = 0;

  deleteZoneError = self->_deleteZoneError;
  self->_deleteZoneError = 0;

  procureSaltError = self->_procureSaltError;
  self->_procureSaltError = 0;
}

- (void)_addDependency:(id)a3 toTrain:(id)a4
{
  object = a4;
  v5 = a3;
  v6 = objc_getAssociatedObject(object, sel__coupleOperationTrainWithStart_end_);
  if (!v6)
  {
    v6 = object;
  }

  [v6 addDependency:v5];
}

- (void)_coupleOperationTrainWithStart:(id)a3 end:(id)a4
{
  if (a3 != a4)
  {
    objc_setAssociatedObject(a4, sel__coupleOperationTrainWithStart_end_, a3, 1);
  }
}

+ (id)apsEnvironmentStringForContainer:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D01FE8];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__SGDCloudKitSync_apsEnvironmentStringForContainer___block_invoke;
  v9[3] = &unk_27894E960;
  v10 = v4;
  v6 = v4;
  v7 = [v5 futureForObject:v6 withKey:a2 onCreate:v9];

  return v7;
}

void __52__SGDCloudKitSync_apsEnvironmentStringForContainer___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__SGDCloudKitSync_apsEnvironmentStringForContainer___block_invoke_2;
  v11[3] = &unk_27894E938;
  v12 = *(a1 + 32);
  [v3 wait:v11];
  v4 = xpc_copy_entitlement_for_self();
  if (!v4)
  {
    v6 = 0;
LABEL_6:
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SGCKAPSEnvironmentDomain" code:0 userInfo:0];
    [v3 fail:v8];
    goto LABEL_7;
  }

  v5 = _CFXPCCreateCFObjectFromXPCObject();
  v6 = v5;
  if (!v5 || [v5 compare:*MEMORY[0x277CBBFB8] options:1])
  {
    goto LABEL_6;
  }

  v7 = *(a1 + 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__SGDCloudKitSync_apsEnvironmentStringForContainer___block_invoke_274;
  v9[3] = &unk_27894E938;
  v10 = v3;
  [v7 serverPreferredPushEnvironmentWithCompletionHandler:v9];
  v8 = v10;
LABEL_7:
}

void __52__SGDCloudKitSync_apsEnvironmentStringForContainer___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = sgLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a1 + 32);
    v10 = 138412802;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v9;
    _os_log_debug_impl(&dword_231E60000, v7, OS_LOG_TYPE_DEBUG, "SGCK Got APS environment string: %@ (error: %@, container: %@)", &v10, 0x20u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __52__SGDCloudKitSync_apsEnvironmentStringForContainer___block_invoke_274(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = sgLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_error_impl(&dword_231E60000, v6, OS_LOG_TYPE_ERROR, "SGCK Error when getting preferred push env. Defaulting to prod instead. Error: %@", &v10, 0xCu);
    }

    v7 = *(a1 + 32);
    v8 = *MEMORY[0x277CEE9F0];
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = a2;
  }

  [v7 succeed:v8];

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)setSharedInstanceConfigurationBlock:(id)a3
{
  v4 = a3;
  v5 = [a1 _sharedInstanceConfigurationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__SGDCloudKitSync_setSharedInstanceConfigurationBlock___block_invoke;
  block[3] = &unk_27894E850;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, block);
}

void __55__SGDCloudKitSync_setSharedInstanceConfigurationBlock___block_invoke(uint64_t a1)
{
  v2 = sgLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v11 = 0;
    _os_log_debug_impl(&dword_231E60000, v2, OS_LOG_TYPE_DEBUG, "SGCK Setting configuration block...", v11, 2u);
  }

  v3 = _SGDCloudKitSyncSharedInstance;
  v4 = sgLogHandle();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v5)
    {
      *v10 = 0;
      _os_log_debug_impl(&dword_231E60000, v4, OS_LOG_TYPE_DEBUG, "SGCK The shared instance already exists, so the configuration block will run immediately.", v10, 2u);
    }

    (*(*(a1 + 32) + 16))();
    v6 = sgLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_231E60000, v6, OS_LOG_TYPE_DEBUG, "SGCK Done running the completion block immediately from +[SGCK setSharedInstanceConfigurationBlock:]", buf, 2u);
    }
  }

  else
  {
    if (v5)
    {
      *v8 = 0;
      _os_log_debug_impl(&dword_231E60000, v4, OS_LOG_TYPE_DEBUG, "SGCK The shared instance doesn't exist yet, so the configuration block won't run until it's instantiated.", v8, 2u);
    }

    v7 = MEMORY[0x2383809F0](*(a1 + 32));
    v6 = _SGDCloudKitSyncSharedInstanceConfigurationBlock;
    _SGDCloudKitSyncSharedInstanceConfigurationBlock = v7;
  }
}

+ (id)sharedInstance
{
  v2 = [a1 _sharedInstanceConfigurationQueue];
  dispatch_sync(v2, &__block_literal_global_233_19536);

  v3 = _SGDCloudKitSyncSharedInstance;

  return v3;
}

void __33__SGDCloudKitSync_sharedInstance__block_invoke()
{
  if (!_SGDCloudKitSyncSharedInstance)
  {
    v0 = sgLogHandle();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_231E60000, v0, OS_LOG_TYPE_DEBUG, "SGCK Instantiating +[SGCK sharedInstance]", buf, 2u);
    }

    v1 = objc_opt_new();
    v2 = _SGDCloudKitSyncSharedInstance;
    _SGDCloudKitSyncSharedInstance = v1;

    v3 = _SGDCloudKitSyncSharedInstanceConfigurationBlock;
    v4 = sgLogHandle();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
    if (v3)
    {
      if (v5)
      {
        *v9 = 0;
        _os_log_debug_impl(&dword_231E60000, v4, OS_LOG_TYPE_DEBUG, "SGCK Running configuration block via +[SGCK sharedInstance] (the configuration block was specified prior to sharedInstance being called for the first time)", v9, 2u);
      }

      (*(_SGDCloudKitSyncSharedInstanceConfigurationBlock + 16))(_SGDCloudKitSyncSharedInstanceConfigurationBlock, _SGDCloudKitSyncSharedInstance);
      v6 = sgLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *v8 = 0;
        _os_log_debug_impl(&dword_231E60000, v6, OS_LOG_TYPE_DEBUG, "SGCK Configuration block has completed from within +[SGCK sharedInstance]'s first invocation. Setting the block to nil.", v8, 2u);
      }

      v4 = _SGDCloudKitSyncSharedInstanceConfigurationBlock;
      _SGDCloudKitSyncSharedInstanceConfigurationBlock = 0;
    }

    else if (v5)
    {
      *v7 = 0;
      _os_log_debug_impl(&dword_231E60000, v4, OS_LOG_TYPE_DEBUG, "SGCK No configuration block has been specified before the first invocation of +[SGCK sharedInstance]. If a configuration block is set later on, it will be run immediately.", v7, 2u);
    }
  }
}

+ (id)_sharedInstanceConfigurationQueue
{
  if (_sharedInstanceConfigurationQueue__pasOnceToken87 != -1)
  {
    dispatch_once(&_sharedInstanceConfigurationQueue__pasOnceToken87, &__block_literal_global_230);
  }

  v3 = _sharedInstanceConfigurationQueue__pasExprOnceResult;

  return v3;
}

void __52__SGDCloudKitSync__sharedInstanceConfigurationQueue__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("SGDCloudKitSync_sharedInstanceConfigurationQueue", v1);
  v3 = _sharedInstanceConfigurationQueue__pasExprOnceResult;
  _sharedInstanceConfigurationQueue__pasExprOnceResult = v2;

  objc_autoreleasePoolPop(v0);
}

+ (id)_callbackQueue
{
  if (_callbackQueue__pasOnceToken6 != -1)
  {
    dispatch_once(&_callbackQueue__pasOnceToken6, &__block_literal_global_135);
  }

  v3 = _callbackQueue__pasExprOnceResult;

  return v3;
}

void __33__SGDCloudKitSync__callbackQueue__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"SGDCloudKitSync-callbacks" qosClass:9];
  v2 = _callbackQueue__pasExprOnceResult;
  _callbackQueue__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

@end