@interface NTKDSyncController
+ (id)sharedInstance;
+ (void)cleanupOrphanedSyncDirectoriesWithCurrentDeviceUUIDs:(id)ds;
- (BOOL)_queue_applyDeltaMessageList:(id)list collectionStore:(id)store complicationStores:(id)stores;
- (BOOL)_queue_applyResetMessageList:(id)list collectionStore:(id)store complicationStores:(id)stores;
- (BOOL)companionSyncWrapperCanSendData;
- (BOOL)incomingSyncSessionApplyMessage:(id)message;
- (BOOL)incomingSyncSessionResetDataStoreWithError:(id *)error;
- (BOOL)shouldEnableSyncPrintingLogs:(BOOL)logs;
- (NTKDSyncController)init;
- (id)_queue_checkoutComplicationStoresForDeviceUUID:(id)d;
- (id)_queue_checkoutLibraryStoreForDeviceUUID:(id)d;
- (id)_queue_complicationStoreStatusForDeviceUUID:(id)d identifier:(id)identifier;
- (id)_queue_complicationStoreStatusesForDeviceUUID:(id)d withIdentifiers:(id)identifiers;
- (id)_queue_incomingMessageListForDeviceUUID:(id)d;
- (id)_queue_outgoingMessageListForDeviceUUID:(id)d;
- (id)_queue_storeStatusForDeviceUUID:(id)d;
- (id)outgoingSyncSessionGetNextMessage;
- (void)_onQueue_async:(id)queue_async;
- (void)_queue_addPayloadToMessage:(id)message withFaceStore:(id)store complicationStores:(id)stores;
- (void)_queue_applyIncomingMessageList:(id)list collectionStore:(id)store complicationStores:(id)stores storeStatus:(id)status;
- (void)_queue_applyIncomingMessageLists;
- (void)_queue_beginGuardingOutgoingSessionRequest;
- (void)_queue_endGuardingOutgoingSessionRequest;
- (void)_queue_executeIfSyncQueuesAreEmpty:(id)empty;
- (void)_queue_requestSyncIfNecessaryAndForceDeltaRequestOtherwise:(BOOL)otherwise;
- (void)collectionStore:(id)store didAddFace:(id)face forUUID:(id)d seqId:(id)id;
- (void)collectionStore:(id)store didRemoveFaceOfStyle:(int64_t)style forUUID:(id)d seqId:(id)id acknowledge:(id)acknowledge;
- (void)collectionStore:(id)store didSuppressNotificationForSeqId:(id)id;
- (void)collectionStore:(id)store didUpdateFaceForUUID:(id)d withConfiguration:(id)configuration seqId:(id)id;
- (void)collectionStore:(id)store didUpdateFaceForUUID:(id)d withResourceDirectory:(id)directory seqId:(id)id acknowledge:(id)acknowledge;
- (void)collectionStore:(id)store didUpdateOrderedUUIDs:(id)ds seqId:(id)id;
- (void)collectionStore:(id)store didUpdateSelectedUUID:(id)d seqId:(id)id;
- (void)collectionStore:(id)store didUpgradeFace:(id)face forUUID:(id)d seqId:(id)id;
- (void)collectionStore:(id)store loadOrderedUUIDs:(id)ds selectedUUID:(id)d facesByUUID:(id)iD seqId:(id)id acknowledge:(id)acknowledge;
- (void)collectionStoreHasBeenCreated:(id)created;
- (void)collectionStoreWillBePurged:(id)purged;
- (void)complicationCollectionStoreHasBeenCreated:(id)created;
- (void)complicationCollectionStoreWillBePurged:(id)purged;
- (void)complicationStore:(id)store didRemoveComplicationSampleTemplatesForClientIdentifier:(id)identifier descriptor:(id)descriptor seqId:(id)id;
- (void)complicationStore:(id)store didSuppressNotificationForSeqId:(id)id;
- (void)complicationStore:(id)store didUpdateComplicationDescriptors:(id)descriptors forClientIdentifier:(id)identifier seqId:(id)id;
- (void)complicationStore:(id)store didUpdateSampleTemplateReference:(id)reference forClientIdentifier:(id)identifier descriptor:(id)descriptor family:(int64_t)family seqId:(id)id;
- (void)complicationStore:(id)store loadFullCollectionWithLocalizableSampleTemplates:(id)templates complicationDescriptors:(id)descriptors seqId:(id)id;
- (void)ensureSyncIsActive:(id)active;
- (void)handleActiveDeviceChangedNotification;
- (void)handleDeviceTinkerStateChangedNotification;
- (void)incomingLibraryValidationMessage:(id)message;
- (void)incomingSyncSessionDidEnd:(BOOL)end withError:(id)error;
- (void)incomingSyncSessionDidStart:(BOOL)start;
- (void)outgoingSyncSessionDidEnd:(BOOL)end withError:(id)error;
- (void)outgoingSyncSessionDidStart:(BOOL)start;
- (void)registry:(id)registry changed:(id)changed properties:(id)properties;
- (void)requestResetSyncForComplicationStore:(id)store;
- (void)setUp;
- (void)syncCoordinator:(id)coordinator beginSyncSession:(id)session;
- (void)syncCoordinator:(id)coordinator didInvalidateSyncSession:(id)session;
- (void)syncCoordinatorDidChangeSyncRestriction:(id)restriction;
- (void)syncProviderDidRequiresDeltaSync:(id)sync;
- (void)tearDown;
@end

@implementation NTKDSyncController

+ (id)sharedInstance
{
  if (qword_100066CE8 != -1)
  {
    sub_10003FBDC();
  }

  v3 = qword_100066CE0;

  return v3;
}

+ (void)cleanupOrphanedSyncDirectoriesWithCurrentDeviceUUIDs:(id)ds
{
  dsCopy = ds;
  v4 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Cleaning up orphaned sync directories...", buf, 2u);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = sub_100031AE4();
  v5 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v24;
    *&v6 = 138412290;
    v21 = v6;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        if (([dsCopy containsObject:{v10, v21}] & 1) == 0)
        {
          v11 = _NTKLoggingObjectForDomain();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v21;
            v28 = v10;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "...deleting sync data for device uuid %@", buf, 0xCu);
          }

          v12 = v10;
          v13 = [_MessageList alloc];
          v14 = sub_100038E2C(v12);
          v15 = [(_MessageList *)v13 initWithPersistencePath:v14];

          v16 = [_MessageList alloc];
          v17 = sub_100038D00(v12);
          v18 = [(_MessageList *)v16 initWithPersistencePath:v17];

          [(_MessageList *)v15 clearAllMessages];
          [(_MessageList *)v18 clearAllMessages];
          v19 = +[NSFileManager defaultManager];
          v20 = sub_10003D6D0(v12);

          [v19 removeItemAtPath:v20 error:0];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v7);
  }
}

- (NTKDSyncController)init
{
  v12.receiver = self;
  v12.super_class = NTKDSyncController;
  v2 = [(NTKDSyncController *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.ntkd.synccontroller", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = +[CLKDevice currentDevice];
    device = v2->_device;
    v2->_device = v5;

    v7 = [PSYSyncCoordinator syncCoordinatorWithServiceName:@"com.apple.pairedsync.clockface"];
    syncCoordinator = v2->_syncCoordinator;
    v2->_syncCoordinator = v7;

    [(PSYSyncCoordinator *)v2->_syncCoordinator setDelegate:v2];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100031D70;
    v10[3] = &unk_10005CA70;
    v11 = v2;
    [(NTKDSyncController *)v11 _onQueue_async:v10];
  }

  return v2;
}

- (BOOL)shouldEnableSyncPrintingLogs:(BOOL)logs
{
  logsCopy = logs;
  supportsCompanionSync = [(CLKDevice *)self->_device supportsCompanionSync];
  v6 = [(CLKDevice *)self->_device isPaired]& supportsCompanionSync;
  isTinker = [(CLKDevice *)self->_device isTinker];
  v8 = v6 & (isTinker ^ 1);
  if (logsCopy)
  {
    v9 = isTinker;
    pdrDevice = [(CLKDevice *)self->_device pdrDevice];
    pairingID = [pdrDevice pairingID];

    v12 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      if (v8)
      {
        v13 = @"ENABLED";
      }

      else
      {
        v13 = @"DISABLED";
      }

      isPaired = [(CLKDevice *)self->_device isPaired];
      v16 = 138544642;
      v17 = v13;
      v18 = 2048;
      v19 = 0;
      v20 = 2048;
      v21 = v9 & 1;
      v22 = 2048;
      v23 = supportsCompanionSync & 1;
      v24 = 2048;
      v25 = isPaired;
      v26 = 2114;
      v27 = pairingID;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "SYNC SHOULD BE %{public}@. isDemoMode: %lu, altdv: %lu, deviceSupportsCapability: %lu, paired: %lu, deviceUUID: %{public}@", &v16, 0x3Eu);
    }
  }

  return v8;
}

- (void)handleDeviceTinkerStateChangedNotification
{
  v3 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "NTKDSyncController received CLKActiveDeviceChangedTinkerState", buf, 2u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000320CC;
  block[3] = &unk_10005CA70;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)handleActiveDeviceChangedNotification
{
  v3 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "NTKDSyncController received CLKActiveDeviceChangedNotification", buf, 2u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000321FC;
  block[3] = &unk_10005CA70;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)setUp
{
  dispatch_assert_queue_V2(self->_queue);
  isSetup = [(NTKDSyncController *)self isSetup];
  v4 = _NTKLoggingObjectForDomain();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (isSetup)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Requested to setup NTKDSyncController but it is already setup", buf, 2u);
    }
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SYNC ENABLED. Setting up NTKDSyncController.", buf, 2u);
    }

    v6 = [[NTKDCompanionSyncWrapper alloc] initAsPrimary:0];
    companionSyncWrapper = self->_companionSyncWrapper;
    self->_companionSyncWrapper = v6;

    selfCopy = self;
    [(NTKDCompanionSyncWrapper *)self->_companionSyncWrapper setDelegate:self];
    +[NSMutableDictionary dictionary];
    *&v63 = _NSConcreteStackBlock;
    *(&v63 + 1) = 3221225472;
    *&v64 = sub_10003DAF4;
    v8 = *(&v64 + 1) = &unk_10005E498;
    *&v65 = v8;
    v9 = objc_retainBlock(&v63);
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v10 = sub_100031AE4();
    v11 = [v10 countByEnumeratingWithState:&v69 objects:buf count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v70;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v70 != v13)
          {
            objc_enumerationMutation(v10);
          }

          (*(v9 + 2))(v9, *(*(&v69 + 1) + 8 * i));
        }

        v12 = [v10 countByEnumeratingWithState:&v69 objects:buf count:16];
      }

      while (v12);
    }

    (*(v9 + 2))(v9, 0);
    v15 = v8;

    outgoingMessageLists = selfCopy->_outgoingMessageLists;
    selfCopy->_outgoingMessageLists = v15;

    v17 = +[NSMutableDictionary dictionary];
    *&v63 = _NSConcreteStackBlock;
    *(&v63 + 1) = 3221225472;
    *&v64 = sub_10003DA2C;
    *(&v64 + 1) = &unk_10005E498;
    v18 = v17;
    *&v65 = v18;
    v19 = objc_retainBlock(&v63);
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v20 = sub_100031AE4();
    v21 = [v20 countByEnumeratingWithState:&v69 objects:buf count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v70;
      do
      {
        for (j = 0; j != v22; j = j + 1)
        {
          if (*v70 != v23)
          {
            objc_enumerationMutation(v20);
          }

          (*(v19 + 2))(v19, *(*(&v69 + 1) + 8 * j));
        }

        v22 = [v20 countByEnumeratingWithState:&v69 objects:buf count:16];
      }

      while (v22);
    }

    (*(v19 + 2))(v19, 0);
    v25 = v18;

    incomingMessageLists = selfCopy->_incomingMessageLists;
    selfCopy->_incomingMessageLists = v25;

    v27 = +[NSMutableDictionary dictionary];
    *&v63 = _NSConcreteStackBlock;
    *(&v63 + 1) = 3221225472;
    *&v64 = sub_10003D894;
    *(&v64 + 1) = &unk_10005E498;
    v28 = v27;
    *&v65 = v28;
    v29 = objc_retainBlock(&v63);
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v30 = sub_100031AE4();
    v31 = [v30 countByEnumeratingWithState:&v69 objects:buf count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v70;
      do
      {
        for (k = 0; k != v32; k = k + 1)
        {
          if (*v70 != v33)
          {
            objc_enumerationMutation(v30);
          }

          (*(v29 + 2))(v29, *(*(&v69 + 1) + 8 * k));
        }

        v32 = [v30 countByEnumeratingWithState:&v69 objects:buf count:16];
      }

      while (v32);
    }

    (*(v29 + 2))(v29, 0);
    v35 = v28;

    storeStatuses = selfCopy->_storeStatuses;
    selfCopy->_storeStatuses = v35;

    v37 = +[NSMutableDictionary dictionary];
    v67[0] = _NSConcreteStackBlock;
    v67[1] = 3221225472;
    v67[2] = sub_10003D95C;
    v67[3] = &unk_10005E4C0;
    v55 = v37;
    v68 = v55;
    v38 = objc_retainBlock(v67);
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    obj = sub_100038AF4();
    v39 = [obj countByEnumeratingWithState:&v63 objects:buf count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v64;
      do
      {
        for (m = 0; m != v40; m = m + 1)
        {
          if (*v64 != v41)
          {
            objc_enumerationMutation(obj);
          }

          v43 = *(*(&v63 + 1) + 8 * m);
          v59 = 0u;
          v60 = 0u;
          v61 = 0u;
          v62 = 0u;
          v44 = sub_100031AE4();
          v45 = [v44 countByEnumeratingWithState:&v59 objects:&v69 count:{16, v55}];
          if (v45)
          {
            v46 = v45;
            v47 = *v60;
            do
            {
              for (n = 0; n != v46; n = n + 1)
              {
                if (*v60 != v47)
                {
                  objc_enumerationMutation(v44);
                }

                (v38[2])(v38, *(*(&v59 + 1) + 8 * n), v43);
              }

              v46 = [v44 countByEnumeratingWithState:&v59 objects:&v69 count:16];
            }

            while (v46);
          }

          (v38[2])(v38, 0, v43);
        }

        v40 = [obj countByEnumeratingWithState:&v63 objects:buf count:16];
      }

      while (v40);
    }

    v49 = v55;
    complicationStoreStatuses = selfCopy->_complicationStoreStatuses;
    selfCopy->_complicationStoreStatuses = v49;

    v51 = objc_alloc_init(NSMutableDictionary);
    stores = selfCopy->_stores;
    selfCopy->_stores = v51;

    v53 = +[NTKDCollectionCoordinator sharedInstance];
    [v53 addCollectionLifecycleObserver:selfCopy];

    v54 = +[NTKDComplicationStoreCoordinator sharedInstance];
    [v54 addComplicationCollectionLifecycleObserver:selfCopy];

    v58[0] = _NSConcreteStackBlock;
    v58[1] = 3221225472;
    v58[2] = sub_1000329D4;
    v58[3] = &unk_10005CA70;
    v58[4] = selfCopy;
    [(NTKDSyncController *)selfCopy _onQueue_async:v58];
  }
}

- (void)tearDown
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SYNC DISABLED. Tearing down NTKDSyncController.", buf, 2u);
  }

  activeSyncSession = [(PSYSyncCoordinator *)self->_syncCoordinator activeSyncSession];
  [activeSyncSession syncDidComplete];

  [(NTKDCompanionSyncWrapper *)self->_companionSyncWrapper suspend];
  [(NTKDCompanionSyncWrapper *)self->_companionSyncWrapper setDelegate:0];
  companionSyncWrapper = self->_companionSyncWrapper;
  self->_companionSyncWrapper = 0;

  outgoingMessageLists = self->_outgoingMessageLists;
  self->_outgoingMessageLists = 0;

  incomingMessageLists = self->_incomingMessageLists;
  self->_incomingMessageLists = 0;

  storeStatuses = self->_storeStatuses;
  self->_storeStatuses = 0;

  complicationStoreStatuses = self->_complicationStoreStatuses;
  self->_complicationStoreStatuses = 0;

  pigmentSyncReceiver = self->_pigmentSyncReceiver;
  self->_pigmentSyncReceiver = 0;

  pigmentSyncProvider = self->_pigmentSyncProvider;
  self->_pigmentSyncProvider = 0;

  v12 = +[NTKDCollectionCoordinator sharedInstance];
  [v12 removeCollectionLifecycleObserver:self];

  v13 = +[NTKDComplicationStoreCoordinator sharedInstance];
  [v13 removeComplicationCollectionLifecycleObserver:self];

  incomingSessionTransactionCount = self->_incomingSessionTransactionCount;
  if (incomingSessionTransactionCount >= 1)
  {
    do
    {
      self->_incomingSessionTransactionCount = incomingSessionTransactionCount - 1;
      sub_1000074E0(@"com.apple.ntkd.synccontroller.incomingsession");
      incomingSessionTransactionCount = self->_incomingSessionTransactionCount;
    }

    while (incomingSessionTransactionCount > 0);
  }

  outgoingSessionTransactionCount = self->_outgoingSessionTransactionCount;
  if (outgoingSessionTransactionCount >= 1)
  {
    do
    {
      self->_outgoingSessionTransactionCount = outgoingSessionTransactionCount - 1;
      sub_1000074E0(@"com.apple.ntkd.synccontroller.outgoingsession");
      outgoingSessionTransactionCount = self->_outgoingSessionTransactionCount;
    }

    while (outgoingSessionTransactionCount > 0);
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100032C3C;
  v16[3] = &unk_10005CA70;
  v16[4] = self;
  [(NTKDSyncController *)self _onQueue_async:v16];
}

- (void)syncCoordinator:(id)coordinator beginSyncSession:(id)session
{
  coordinatorCopy = coordinator;
  sessionCopy = session;
  v8 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if ([sessionCopy syncSessionType])
    {
      v9 = "QWS";
    }

    else
    {
      v9 = "RESET";
    }

    sessionIdentifier = [sessionCopy sessionIdentifier];
    *buf = 136315394;
    v18 = v9;
    v19 = 2112;
    v20 = sessionIdentifier;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "enqueueing - starting paired sync %s session with ID = %@", buf, 0x16u);
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100032E5C;
  v13[3] = &unk_10005CC38;
  v14 = sessionCopy;
  selfCopy = self;
  v16 = coordinatorCopy;
  v11 = coordinatorCopy;
  v12 = sessionCopy;
  [(NTKDSyncController *)self _onQueue_async:v13];
}

- (void)syncCoordinator:(id)coordinator didInvalidateSyncSession:(id)session
{
  sessionCopy = session;
  v5 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if ([sessionCopy syncSessionType])
    {
      v6 = "QWS";
    }

    else
    {
      v6 = "RESET";
    }

    sessionIdentifier = [sessionCopy sessionIdentifier];
    v8 = 136315394;
    v9 = v6;
    v10 = 2112;
    v11 = sessionIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "paired sync %s session was invalidated with ID = %@", &v8, 0x16u);
  }
}

- (void)syncCoordinatorDidChangeSyncRestriction:(id)restriction
{
  restrictionCopy = restriction;
  v5 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    syncRestriction = [(PSYSyncCoordinator *)self->_syncCoordinator syncRestriction];
    v7 = "in place";
    if (!syncRestriction)
    {
      v7 = "lifted";
    }

    *buf = 136315138;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "enqueueing - paired sync restriction %s", buf, 0xCu);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100033234;
  v9[3] = &unk_10005CA98;
  v9[4] = self;
  v10 = restrictionCopy;
  v8 = restrictionCopy;
  [(NTKDSyncController *)self _onQueue_async:v9];
}

- (void)ensureSyncIsActive:(id)active
{
  activeCopy = active;
  syncRestriction = [(PSYSyncCoordinator *)self->_syncCoordinator syncRestriction];
  v6 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "in place";
    if (!syncRestriction)
    {
      v7 = "lifted";
    }

    *buf = 136315138;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "paired sync restriction %s", buf, 0xCu);
  }

  if (syncRestriction || (-[CLKDevice pdrDevice](self->_device, "pdrDevice"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 isPaired], v8, (v9 & 1) != 0))
  {
    activeCopy[2](activeCopy);
  }

  else
  {
    v10 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10003FBF0(v10);
    }

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000334BC;
    v11[3] = &unk_10005CAC0;
    v11[4] = self;
    v12 = activeCopy;
    [(NTKDSyncController *)self _onQueue_async:v11];
  }
}

- (void)syncProviderDidRequiresDeltaSync:(id)sync
{
  syncCopy = sync;
  if ([(NTKDSyncController *)self companionSyncWrapperCanSendData])
  {
    objc_initWeak(location, self);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100033688;
    v6[3] = &unk_10005CA48;
    objc_copyWeak(&v7, location);
    [(NTKDSyncController *)self _onQueue_async:v6];
    objc_destroyWeak(&v7);
    objc_destroyWeak(location);
  }

  else
  {
    v5 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Pigment data won't be synced at this moment, waiting for full sync session", location, 2u);
    }
  }
}

- (void)collectionStoreHasBeenCreated:(id)created
{
  createdCopy = created;
  collectionIdentifier = [createdCopy collectionIdentifier];
  v6 = [collectionIdentifier isEqualToString:NTKCollectionIdentifierLibraryFaces];

  if (v6)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100033794;
    v7[3] = &unk_10005CA98;
    v8 = createdCopy;
    selfCopy = self;
    [(NTKDSyncController *)self _onQueue_async:v7];
  }
}

- (void)collectionStoreWillBePurged:(id)purged
{
  purgedCopy = purged;
  collectionIdentifier = [purgedCopy collectionIdentifier];
  v6 = [collectionIdentifier isEqualToString:NTKCollectionIdentifierLibraryFaces];

  if (v6)
  {
    queue = self->_queue;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10003397C;
    v8[3] = &unk_10005CA98;
    v9 = purgedCopy;
    selfCopy = self;
    dispatch_sync(queue, v8);
  }
}

- (void)complicationCollectionStoreHasBeenCreated:(id)created
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100033A84;
  v5[3] = &unk_10005CA98;
  createdCopy = created;
  selfCopy = self;
  v4 = createdCopy;
  [(NTKDSyncController *)self _onQueue_async:v5];
}

- (void)complicationCollectionStoreWillBePurged:(id)purged
{
  purgedCopy = purged;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100033C88;
  v7[3] = &unk_10005CA98;
  v8 = purgedCopy;
  selfCopy = self;
  v6 = purgedCopy;
  dispatch_sync(queue, v7);
}

- (void)collectionStore:(id)store loadOrderedUUIDs:(id)ds selectedUUID:(id)d facesByUUID:(id)iD seqId:(id)id acknowledge:(id)acknowledge
{
  storeCopy = store;
  idCopy = id;
  acknowledgeCopy = acknowledge;
  v14 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = idCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "collectionStore (seqId = %@) did full reload -- will request reset sync", buf, 0xCu);
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100033E70;
  v18[3] = &unk_10005CAE8;
  v18[4] = self;
  v19 = storeCopy;
  v20 = idCopy;
  v21 = acknowledgeCopy;
  v15 = acknowledgeCopy;
  v16 = idCopy;
  v17 = storeCopy;
  [(NTKDSyncController *)self _onQueue_async:v18];
}

- (void)collectionStore:(id)store didUpdateSelectedUUID:(id)d seqId:(id)id
{
  storeCopy = store;
  dCopy = d;
  idCopy = id;
  v11 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v18 = idCopy;
    v19 = 2112;
    v20 = dCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "collectionStore (seqId = %@) did update selected uuid: %@", buf, 0x16u);
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10003407C;
  v14[3] = &unk_10005CC38;
  v14[4] = self;
  v15 = storeCopy;
  v16 = idCopy;
  v12 = idCopy;
  v13 = storeCopy;
  [(NTKDSyncController *)self _onQueue_async:v14];
}

- (void)collectionStore:(id)store didUpdateOrderedUUIDs:(id)ds seqId:(id)id
{
  storeCopy = store;
  idCopy = id;
  v9 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = idCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "collectionStore (seqId = %@) did update ordered uuids", buf, 0xCu);
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10003429C;
  v12[3] = &unk_10005CC38;
  v12[4] = self;
  v13 = storeCopy;
  v14 = idCopy;
  v10 = idCopy;
  v11 = storeCopy;
  [(NTKDSyncController *)self _onQueue_async:v12];
}

- (void)collectionStore:(id)store didUpdateFaceForUUID:(id)d withConfiguration:(id)configuration seqId:(id)id
{
  storeCopy = store;
  dCopy = d;
  configurationCopy = configuration;
  idCopy = id;
  v14 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v23 = idCopy;
    v24 = 2112;
    v25 = dCopy;
    v26 = 2112;
    v27 = configurationCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "collectionStore (seqId = %@) did update face for uuid '%@' with configuration: %@", buf, 0x20u);
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100034508;
  v18[3] = &unk_10005CFC0;
  v18[4] = self;
  v19 = storeCopy;
  v20 = dCopy;
  v21 = idCopy;
  v15 = idCopy;
  v16 = dCopy;
  v17 = storeCopy;
  [(NTKDSyncController *)self _onQueue_async:v18];
}

- (void)collectionStore:(id)store didUpdateFaceForUUID:(id)d withResourceDirectory:(id)directory seqId:(id)id acknowledge:(id)acknowledge
{
  storeCopy = store;
  dCopy = d;
  directoryCopy = directory;
  idCopy = id;
  acknowledgeCopy = acknowledge;
  v17 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v28 = idCopy;
    v29 = 2112;
    v30 = dCopy;
    v31 = 2112;
    v32 = directoryCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "collectionStore (seqId = %@) did update face for uuid '%@' with resource directory: %@", buf, 0x20u);
  }

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000347A4;
  v22[3] = &unk_10005CD90;
  v22[4] = self;
  v23 = storeCopy;
  v24 = dCopy;
  v25 = idCopy;
  v26 = acknowledgeCopy;
  v18 = acknowledgeCopy;
  v19 = idCopy;
  v20 = dCopy;
  v21 = storeCopy;
  [(NTKDSyncController *)self _onQueue_async:v22];
}

- (void)collectionStore:(id)store didUpgradeFace:(id)face forUUID:(id)d seqId:(id)id
{
  storeCopy = store;
  faceCopy = face;
  dCopy = d;
  idCopy = id;
  v14 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v23 = idCopy;
    v24 = 2112;
    v25 = dCopy;
    v26 = 2112;
    v27 = faceCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "collectionStore (seqId = %@) did upgrade face for uuid '%@': %@", buf, 0x20u);
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100034A24;
  v18[3] = &unk_10005CFC0;
  v18[4] = self;
  v19 = storeCopy;
  v20 = dCopy;
  v21 = idCopy;
  v15 = idCopy;
  v16 = dCopy;
  v17 = storeCopy;
  [(NTKDSyncController *)self _onQueue_async:v18];
}

- (void)collectionStore:(id)store didAddFace:(id)face forUUID:(id)d seqId:(id)id
{
  storeCopy = store;
  faceCopy = face;
  dCopy = d;
  idCopy = id;
  v14 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v23 = idCopy;
    v24 = 2112;
    v25 = dCopy;
    v26 = 2112;
    v27 = faceCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "collectionStore (seqId = %@) did add face for uuid '%@': %@", buf, 0x20u);
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100034C94;
  v18[3] = &unk_10005CFC0;
  v18[4] = self;
  v19 = storeCopy;
  v20 = dCopy;
  v21 = idCopy;
  v15 = idCopy;
  v16 = dCopy;
  v17 = storeCopy;
  [(NTKDSyncController *)self _onQueue_async:v18];
}

- (void)collectionStore:(id)store didRemoveFaceOfStyle:(int64_t)style forUUID:(id)d seqId:(id)id acknowledge:(id)acknowledge
{
  storeCopy = store;
  dCopy = d;
  idCopy = id;
  acknowledgeCopy = acknowledge;
  v15 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = NTKFaceStyleDescription();
    *buf = 138412802;
    v27 = idCopy;
    v28 = 2112;
    v29 = v16;
    v30 = 2112;
    v31 = dCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "collectionStore (seqId = %@) did remove face of style %@ for uuid '%@'", buf, 0x20u);
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100034F5C;
  v21[3] = &unk_10005CD90;
  v21[4] = self;
  v22 = storeCopy;
  v23 = dCopy;
  v24 = idCopy;
  v25 = acknowledgeCopy;
  v17 = acknowledgeCopy;
  v18 = idCopy;
  v19 = dCopy;
  v20 = storeCopy;
  [(NTKDSyncController *)self _onQueue_async:v21];
}

- (void)collectionStore:(id)store didSuppressNotificationForSeqId:(id)id
{
  storeCopy = store;
  idCopy = id;
  v8 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    collectionIdentifier = [storeCopy collectionIdentifier];
    *buf = 138412546;
    v16 = collectionIdentifier;
    v17 = 2112;
    v18 = idCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "collectionStore %@ seqId = %@", buf, 0x16u);
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000351B8;
  v12[3] = &unk_10005CC38;
  v12[4] = self;
  v13 = storeCopy;
  v14 = idCopy;
  v10 = idCopy;
  v11 = storeCopy;
  [(NTKDSyncController *)self _onQueue_async:v12];
}

- (void)complicationStore:(id)store loadFullCollectionWithLocalizableSampleTemplates:(id)templates complicationDescriptors:(id)descriptors seqId:(id)id
{
  storeCopy = store;
  idCopy = id;
  v10 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    collectionIdentifier = [storeCopy collectionIdentifier];
    *buf = 138412290;
    v18 = collectionIdentifier;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "complicationStore %@ did full reload -- will request reset sync", buf, 0xCu);
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100035398;
  v14[3] = &unk_10005CC38;
  v14[4] = self;
  v15 = storeCopy;
  v16 = idCopy;
  v12 = idCopy;
  v13 = storeCopy;
  [(NTKDSyncController *)self _onQueue_async:v14];
}

- (void)complicationStore:(id)store didUpdateSampleTemplateReference:(id)reference forClientIdentifier:(id)identifier descriptor:(id)descriptor family:(int64_t)family seqId:(id)id
{
  storeCopy = store;
  identifierCopy = identifier;
  descriptorCopy = descriptor;
  idCopy = id;
  v17 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    collectionIdentifier = [storeCopy collectionIdentifier];
    v19 = CLKComplicationFamilyDescription();
    *buf = 138412802;
    v31 = collectionIdentifier;
    v32 = 2112;
    v33 = v19;
    v34 = 2112;
    v35 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "complicationStore %@ did update template of family %@ for client '%@'", buf, 0x20u);
  }

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100035624;
  v24[3] = &unk_10005DA78;
  v24[4] = self;
  v25 = storeCopy;
  v26 = identifierCopy;
  v27 = descriptorCopy;
  v28 = idCopy;
  familyCopy = family;
  v20 = idCopy;
  v21 = descriptorCopy;
  v22 = identifierCopy;
  v23 = storeCopy;
  [(NTKDSyncController *)self _onQueue_async:v24];
}

- (void)complicationStore:(id)store didUpdateComplicationDescriptors:(id)descriptors forClientIdentifier:(id)identifier seqId:(id)id
{
  storeCopy = store;
  identifierCopy = identifier;
  idCopy = id;
  v12 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    collectionIdentifier = [storeCopy collectionIdentifier];
    *buf = 138412546;
    v22 = collectionIdentifier;
    v23 = 2112;
    v24 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "complicationStore %@ did update complication descriptors for client '%@'", buf, 0x16u);
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000358F4;
  v17[3] = &unk_10005CFC0;
  v17[4] = self;
  v18 = storeCopy;
  v19 = identifierCopy;
  v20 = idCopy;
  v14 = idCopy;
  v15 = identifierCopy;
  v16 = storeCopy;
  [(NTKDSyncController *)self _onQueue_async:v17];
}

- (void)complicationStore:(id)store didRemoveComplicationSampleTemplatesForClientIdentifier:(id)identifier descriptor:(id)descriptor seqId:(id)id
{
  storeCopy = store;
  identifierCopy = identifier;
  descriptorCopy = descriptor;
  idCopy = id;
  v14 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    collectionIdentifier = [storeCopy collectionIdentifier];
    *buf = 138412546;
    v26 = collectionIdentifier;
    v27 = 2112;
    v28 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "complicationStore %@ did remove complication for client '%@'", buf, 0x16u);
  }

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100035BC0;
  v20[3] = &unk_10005D060;
  v20[4] = self;
  v21 = storeCopy;
  v22 = identifierCopy;
  v23 = descriptorCopy;
  v24 = idCopy;
  v16 = idCopy;
  v17 = descriptorCopy;
  v18 = identifierCopy;
  v19 = storeCopy;
  [(NTKDSyncController *)self _onQueue_async:v20];
}

- (void)complicationStore:(id)store didSuppressNotificationForSeqId:(id)id
{
  storeCopy = store;
  idCopy = id;
  v8 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    collectionIdentifier = [storeCopy collectionIdentifier];
    *buf = 138412546;
    v16 = collectionIdentifier;
    v17 = 2112;
    v18 = idCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "complicationStore %@ seqId is now %@", buf, 0x16u);
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100035E44;
  v12[3] = &unk_10005CC38;
  v12[4] = self;
  v13 = storeCopy;
  v14 = idCopy;
  v10 = idCopy;
  v11 = storeCopy;
  [(NTKDSyncController *)self _onQueue_async:v12];
}

- (void)requestResetSyncForComplicationStore:(id)store
{
  storeCopy = store;
  v5 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    collectionIdentifier = [storeCopy collectionIdentifier];
    *buf = 138412290;
    v11 = collectionIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "complicationStore %@ requested reset sync", buf, 0xCu);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100036010;
  v8[3] = &unk_10005CA98;
  v8[4] = self;
  v9 = storeCopy;
  v7 = storeCopy;
  [(NTKDSyncController *)self _onQueue_async:v8];
}

- (void)registry:(id)registry changed:(id)changed properties:(id)properties
{
  if ([properties containsObject:{PDRDevicePropertyKeySystemBuildVersion, changed}])
  {
    v6 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PDRDevicePropertySystemBuildVersion did change. enqueuing sync request", buf, 2u);
    }

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10003617C;
    v7[3] = &unk_10005CA70;
    v7[4] = self;
    [(NTKDSyncController *)self _onQueue_async:v7];
  }
}

- (void)outgoingSyncSessionDidStart:(BOOL)start
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000361FC;
  v4[3] = &unk_10005D758;
  v4[4] = self;
  startCopy = start;
  dispatch_sync(queue, v4);
}

- (id)outgoingSyncSessionGetNextMessage
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_100036AB4;
  v12 = sub_100036AC4;
  v13 = 0;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100036ACC;
  v7[3] = &unk_10005D470;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(queue, v7);
  v3 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = v9[5];
    *buf = 138412290;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "outgoing session get next message: %@", buf, 0xCu);
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (void)outgoingSyncSessionDidEnd:(BOOL)end withError:(id)error
{
  errorCopy = error;
  v7 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = LogBool();
    *buf = 138412290;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "outgoing session end (success=%@)", buf, 0xCu);
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100036EA0;
  v12[3] = &unk_10005CFE8;
  endCopy = end;
  v12[4] = self;
  v13 = errorCopy;
  v9 = errorCopy;
  [(NTKDSyncController *)self _onQueue_async:v12];
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100037148;
  v11[3] = &unk_10005CA70;
  v11[4] = self;
  dispatch_sync(queue, v11);
}

- (void)incomingSyncSessionDidStart:(BOOL)start
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100037208;
  v4[3] = &unk_10005D758;
  v4[4] = self;
  startCopy = start;
  dispatch_sync(queue, v4);
}

- (BOOL)incomingSyncSessionResetDataStoreWithError:(id *)error
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100037464;
  block[3] = &unk_10005CA70;
  block[4] = self;
  dispatch_sync(queue, block);
  return 1;
}

- (BOOL)incomingSyncSessionApplyMessage:(id)message
{
  messageCopy = message;
  v5 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v13 = messageCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "incoming session, enqueuing message: %@", buf, 0xCu);
  }

  queue = self->_queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10003763C;
  v9[3] = &unk_10005CA98;
  v10 = messageCopy;
  selfCopy = self;
  v7 = messageCopy;
  dispatch_sync(queue, v9);

  return 1;
}

- (void)incomingSyncSessionDidEnd:(BOOL)end withError:(id)error
{
  v6 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = LogBool();
    *buf = 138412290;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "incoming session end (success=%@)", buf, 0xCu);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000378DC;
  v10[3] = &unk_10005D758;
  v10[4] = self;
  endCopy = end;
  [(NTKDSyncController *)self _onQueue_async:v10];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100037BB4;
  block[3] = &unk_10005CA70;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)incomingLibraryValidationMessage:(id)message
{
  messageCopy = message;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100037C94;
  v7[3] = &unk_10005CA98;
  v7[4] = self;
  v8 = messageCopy;
  v6 = messageCopy;
  dispatch_sync(queue, v7);
}

- (BOOL)companionSyncWrapperCanSendData
{
  syncRestriction = [(PSYSyncCoordinator *)self->_syncCoordinator syncRestriction];
  v4 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134218240;
    shouldEnableSync = [(NTKDSyncController *)self shouldEnableSync];
    v8 = 2048;
    v9 = syncRestriction == 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Can send data? shouldEnableSync: %lu, syncUnrestricted: %lu", &v6, 0x16u);
  }

  result = [(NTKDSyncController *)self shouldEnableSync];
  if (syncRestriction)
  {
    return 0;
  }

  return result;
}

- (void)_onQueue_async:(id)queue_async
{
  queue_asyncCopy = queue_async;
  sub_100007294(@"com.apple.ntkd.synccontroller.busy");
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100038374;
  block[3] = &unk_10005CB10;
  v8 = queue_asyncCopy;
  v6 = queue_asyncCopy;
  dispatch_async(queue, block);
}

- (void)_queue_beginGuardingOutgoingSessionRequest
{
  if (!self->_guardingOutgoingSessionRequest)
  {
    sub_100007294(@"com.apple.ntkd.synccontroller.outgoingsessionrequested");
    v3 = +[NTKDActivityTracker sharedInstance];
    [v3 beginActivity:@"outgoing-sync-session-activity"];

    self->_guardingOutgoingSessionRequest = 1;
  }
}

- (void)_queue_endGuardingOutgoingSessionRequest
{
  if (self->_guardingOutgoingSessionRequest)
  {
    sub_1000074E0(@"com.apple.ntkd.synccontroller.outgoingsessionrequested");
    v3 = +[NTKDActivityTracker sharedInstance];
    [v3 endActivity:@"outgoing-sync-session-activity"];

    self->_guardingOutgoingSessionRequest = 0;
  }
}

- (id)_queue_checkoutLibraryStoreForDeviceUUID:(id)d
{
  dCopy = d;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_100036AB4;
  v26 = sub_100036AC4;
  stores = self->_stores;
  v6 = sub_100033858(dCopy);
  v27 = [(NSMutableDictionary *)stores objectForKey:v6];

  if (v23[5])
  {
    v7 = +[NTKDCollectionCoordinator sharedInstance];
    [v7 checkoutStore:v23[5]];
  }

  else
  {
    v8 = dispatch_semaphore_create(0);
    v9 = +[NTKDCollectionCoordinator sharedInstance];
    v10 = NTKCollectionIdentifierLibraryFaces;
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_100038688;
    v19 = &unk_10005CC60;
    v21 = &v22;
    v7 = v8;
    v20 = v7;
    [v9 checkoutStoreForCollectionIdentifier:v10 deviceUUID:dCopy withHandler:&v16];

    dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
    v11 = self->_stores;
    v12 = v23[5];
    v13 = sub_100033858(dCopy);
    [(NSMutableDictionary *)v11 setObject:v12 forKey:v13, v16, v17, v18, v19];
  }

  v14 = v23[5];
  _Block_object_dispose(&v22, 8);

  return v14;
}

- (id)_queue_checkoutComplicationStoresForDeviceUUID:(id)d
{
  dCopy = d;
  complicationStores = self->_complicationStores;
  v6 = sub_100033858(dCopy);
  v7 = [(NSMutableDictionary *)complicationStores objectForKey:v6];

  if (v7)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    allValues = [v7 allValues];
    v9 = [allValues countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v36;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v36 != v11)
          {
            objc_enumerationMutation(allValues);
          }

          v13 = *(*(&v35 + 1) + 8 * i);
          v14 = +[NTKDComplicationStoreCoordinator sharedInstance];
          [v14 checkoutStore:v13];
        }

        v10 = [allValues countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v15 = dispatch_group_create();
    v16 = objc_opt_new();
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1000389C4;
    v31[3] = &unk_10005E2B0;
    v32 = v15;
    v17 = dCopy;
    v33 = v17;
    v34 = v16;
    v18 = v16;
    allValues = v15;
    v19 = objc_retainBlock(v31);
    v20 = sub_100038AF4();
    v26 = _NSConcreteStackBlock;
    v27 = 3221225472;
    v28 = sub_100038B90;
    v29 = &unk_10005E2D8;
    v30 = v19;
    v21 = v19;
    [v20 enumerateObjectsUsingBlock:&v26];

    dispatch_group_wait(allValues, 0xFFFFFFFFFFFFFFFFLL);
    v22 = self->_complicationStores;
    v23 = [v18 copy];
    v24 = sub_100033858(v17);
    [(NSMutableDictionary *)v22 setObject:v23 forKey:v24];

    v7 = [v18 copy];
  }

  return v7;
}

- (id)_queue_outgoingMessageListForDeviceUUID:(id)d
{
  dCopy = d;
  outgoingMessageLists = self->_outgoingMessageLists;
  v6 = sub_100033858(dCopy);
  v7 = [(NSMutableDictionary *)outgoingMessageLists objectForKey:v6];

  if (!v7)
  {
    sub_100038C78(dCopy);
    v8 = [_MessageList alloc];
    v9 = sub_100038D00(dCopy);
    v7 = [(_MessageList *)v8 initWithPersistencePath:v9];

    v10 = self->_outgoingMessageLists;
    v11 = sub_100033858(dCopy);
    [(NSMutableDictionary *)v10 setObject:v7 forKey:v11];
  }

  return v7;
}

- (id)_queue_incomingMessageListForDeviceUUID:(id)d
{
  dCopy = d;
  incomingMessageLists = self->_incomingMessageLists;
  v6 = sub_100033858(dCopy);
  v7 = [(NSMutableDictionary *)incomingMessageLists objectForKey:v6];

  if (!v7)
  {
    sub_100038C78(dCopy);
    v8 = [_MessageList alloc];
    v9 = sub_100038E2C(dCopy);
    v7 = [(_MessageList *)v8 initWithPersistencePath:v9];

    v10 = self->_incomingMessageLists;
    v11 = sub_100033858(dCopy);
    [(NSMutableDictionary *)v10 setObject:v7 forKey:v11];
  }

  return v7;
}

- (id)_queue_storeStatusForDeviceUUID:(id)d
{
  dCopy = d;
  storeStatuses = self->_storeStatuses;
  v6 = sub_100033858(dCopy);
  v7 = [(NSMutableDictionary *)storeStatuses objectForKey:v6];

  if (!v7)
  {
    sub_100038C78(dCopy);
    v8 = [_StoreStatus alloc];
    v9 = sub_100038F58(dCopy);
    v7 = [(_StoreStatus *)v8 initWithPersistencePath:v9];

    v10 = self->_storeStatuses;
    v11 = sub_100033858(dCopy);
    [(NSMutableDictionary *)v10 setObject:v7 forKey:v11];
  }

  return v7;
}

- (id)_queue_complicationStoreStatusForDeviceUUID:(id)d identifier:(id)identifier
{
  dCopy = d;
  identifierCopy = identifier;
  complicationStoreStatuses = self->_complicationStoreStatuses;
  v9 = sub_100039100(dCopy, identifierCopy);
  v10 = [(NSMutableDictionary *)complicationStoreStatuses objectForKey:v9];

  if (!v10)
  {
    sub_100038C78(dCopy);
    v11 = dCopy;
    v12 = +[NSFileManager defaultManager];
    v13 = sub_10003D840(v11);

    [v12 createDirectoryAtPath:v13 withIntermediateDirectories:1 attributes:0 error:0];
    v14 = [_StoreStatus alloc];
    v15 = sub_100039188(v11, identifierCopy);
    v10 = [(_StoreStatus *)v14 initWithPersistencePath:v15];

    v16 = self->_complicationStoreStatuses;
    v17 = sub_100039100(v11, identifierCopy);
    [(NSMutableDictionary *)v16 setObject:v10 forKey:v17];
  }

  return v10;
}

- (id)_queue_complicationStoreStatusesForDeviceUUID:(id)d withIdentifiers:(id)identifiers
{
  dCopy = d;
  identifiersCopy = identifiers;
  v8 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = identifiersCopy;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = [(NTKDSyncController *)self _queue_complicationStoreStatusForDeviceUUID:dCopy identifier:v14, v18];
        [v8 setObject:v15 forKeyedSubscript:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v16 = [v8 copy];

  return v16;
}

- (void)_queue_requestSyncIfNecessaryAndForceDeltaRequestOtherwise:(BOOL)otherwise
{
  otherwiseCopy = otherwise;
  v5 = +[CLKDevice currentDevice];
  pdrDeviceVersion = [v5 pdrDeviceVersion];

  if (HIWORD(pdrDeviceVersion) <= 2u)
  {
    v7 = +[PDRRegistry sharedInstance];
    [v7 addDelegate:self];

    v8 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v31) = pdrDeviceVersion;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "sync request ignored because active gizmo is older than Daytona - watchOS=%u", buf, 8u);
    }

    goto LABEL_26;
  }

  v24 = otherwiseCopy;
  v8 = sub_1000059C8();
  v9 = [(NTKDSyncController *)self _queue_storeStatusForDeviceUUID:v8];
  needsResetSync = [v9 needsResetSync];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = sub_100038AF4();
  v11 = [v10 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v27;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v26 + 1) + 8 * i);
        v17 = [(NTKDSyncController *)self _queue_complicationStoreStatusForDeviceUUID:v8 identifier:v16];
        if ([v17 needsResetSync])
        {
          v18 = _NTKLoggingObjectForDomain();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v31 = v16;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "reset sync needed for complication collection: %@", buf, 0xCu);
          }

          v13 = 1;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  if (((needsResetSync | v13) & 1) == 0)
  {
    v22 = [(NTKDSyncController *)self _queue_outgoingMessageListForDeviceUUID:v8];
    hasMessages = [v22 hasMessages];

    if ((hasMessages & 1) == 0 && !v24)
    {
      goto LABEL_26;
    }

    [(NTKDCompanionSyncWrapper *)self->_companionSyncWrapper requestDeltaSync];
LABEL_25:
    [(NTKDSyncController *)self _queue_beginGuardingOutgoingSessionRequest];
    goto LABEL_26;
  }

  v19 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = LogBool();
    v21 = LogBool();
    *buf = 138412546;
    v31 = v20;
    v32 = 2112;
    v33 = v21;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "requesting reset sync (needed for collection: %@, complication: %@)", buf, 0x16u);
  }

  [(NTKDCompanionSyncWrapper *)self->_companionSyncWrapper requestResetSync];
  if ([(NTKDCompanionSyncWrapper *)self->_companionSyncWrapper isPrimary])
  {
    goto LABEL_25;
  }

LABEL_26:
}

- (void)_queue_applyIncomingMessageLists
{
  v3 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "applying incoming message lists", buf, 2u);
  }

  incomingMessageLists = self->_incomingMessageLists;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000397D8;
  v5[3] = &unk_10005E300;
  v5[4] = self;
  [(NSMutableDictionary *)incomingMessageLists enumerateKeysAndObjectsUsingBlock:v5];
}

- (void)_queue_applyIncomingMessageList:(id)list collectionStore:(id)store complicationStores:(id)stores storeStatus:(id)status
{
  statusCopy = status;
  storesCopy = stores;
  storeCopy = store;
  listCopy = list;
  firstMessage = [listCopy firstMessage];
  messageType = [firstMessage messageType];

  if (messageType == -1)
  {
    v15 = [(NTKDSyncController *)self _queue_applyResetMessageList:listCopy collectionStore:storeCopy complicationStores:storesCopy];

    if ((v15 & 1) == 0)
    {
      [statusCopy setNeedsResetSync:1];
      [(NTKDSyncController *)self _queue_requestSyncIfNecessary];
    }
  }

  else
  {
    [(NTKDSyncController *)self _queue_applyDeltaMessageList:listCopy collectionStore:storeCopy complicationStores:storesCopy];
  }
}

- (BOOL)_queue_applyResetMessageList:(id)list collectionStore:(id)store complicationStores:(id)stores
{
  listCopy = list;
  storeCopy = store;
  storesCopy = stores;
  v7 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "building up reset state from reset message list", &buf, 2u);
  }

  v59 = +[NSMutableDictionary dictionary];
  v8 = +[NSMutableDictionary dictionary];
  v9 = +[NSMutableDictionary dictionary];
  allKeys = [storesCopy allKeys];
  v81[0] = _NSConcreteStackBlock;
  v81[1] = 3221225472;
  v81[2] = sub_10003A554;
  v81[3] = &unk_10005D510;
  v55 = v8;
  v82 = v55;
  v56 = v9;
  v83 = v56;
  [allKeys enumerateObjectsUsingBlock:v81];

  v60 = +[NSMutableArray array];
  [listCopy suspendCoalescing];
  messageEnumerator = [listCopy messageEnumerator];
  v11 = objc_autoreleasePoolPush();
  nextObject = [messageEnumerator nextObject];
  if (nextObject)
  {
    v63 = 0;
    v64 = 0;
    while (1)
    {
      v13 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = nextObject;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "processing incoming message (part of reset): %@", &buf, 0xCu);
      }

      messageType = [nextObject messageType];
      if (messageType > 4)
      {
        break;
      }

      if (messageType == -1)
      {
        goto LABEL_45;
      }

      if (messageType)
      {
        if (messageType != 4)
        {
LABEL_20:
          payloadData = _NTKLoggingObjectForDomain();
          if (os_log_type_enabled(payloadData, OS_LOG_TYPE_ERROR))
          {
            sub_10003FF10(v88, nextObject, &v89, payloadData);
          }

          goto LABEL_44;
        }

        payloadData = [nextObject payloadData];
        v16 = NTKDSelectedUUIDFromPayloadData();

        v63 = v16;
LABEL_44:

        goto LABEL_45;
      }

      faceUUID = [nextObject faceUUID];
      v22 = +[NSUUID UUID];
      uUIDString = [v22 UUIDString];
      complicationDescriptor = [NSString stringWithFormat:@"In-%@.zip", uUIDString];

      v25 = sub_10003A5E8();
      v26 = [v25 stringByAppendingPathComponent:complicationDescriptor];

      if ([nextObject getPayloadDataIntoFile:v26])
      {
        deviceUUID = [storeCopy deviceUUID];
        v80 = 0;
        complicationClientID2 = NTKDFaceFromPayloadPath();
        payloadData = v80;
      }

      else
      {
        complicationClientID2 = 0;
        payloadData = 0;
      }

      v37 = +[NSFileManager defaultManager];
      [v37 removeItemAtPath:v26 error:0];

      if (faceUUID && complicationClientID2)
      {
        [v59 setObject:complicationClientID2 forKey:faceUUID];
      }

LABEL_42:
      if (payloadData)
      {
        [v60 addObject:payloadData];
        goto LABEL_44;
      }

LABEL_45:

      objc_autoreleasePoolPop(v11);
      v11 = objc_autoreleasePoolPush();
      nextObject = [messageEnumerator nextObject];
      if (!nextObject)
      {
        goto LABEL_48;
      }
    }

    if (messageType == 5)
    {
      payloadData = [nextObject payloadData];
      v21 = NTKDOrderedUUIDsFromPayloadData();

      v64 = v21;
      goto LABEL_44;
    }

    if (messageType != 6)
    {
      if (messageType == 10)
      {
        payloadData = [nextObject complicationCollectionIdentifier];
        complicationClientID = [nextObject complicationClientID];
        payloadData2 = [nextObject payloadData];
        v19 = NTKDComplicationDescriptorsFromPayloadData();

        if (complicationClientID && v19)
        {
          v20 = [v56 objectForKeyedSubscript:payloadData];
          [v20 setObject:v19 forKey:complicationClientID];
        }

        goto LABEL_44;
      }

      goto LABEL_20;
    }

    faceUUID = [nextObject complicationCollectionIdentifier];
    complicationClientID2 = [nextObject complicationClientID];
    complicationDescriptor = [nextObject complicationDescriptor];
    context = objc_autoreleasePoolPush();
    payloadData3 = [nextObject payloadData];
    v65 = NTKDClientSampleDataFromPayloadData();

    v30 = NSTemporaryDirectory();
    v31 = [v30 stringByAppendingPathComponent:@"sync"];
    v32 = +[NSUUID UUID];
    uUIDString2 = [v32 UUIDString];
    payloadData = [v31 stringByAppendingPathComponent:uUIDString2];

    v34 = +[NSFileManager defaultManager];
    v79 = 0;
    LOBYTE(v30) = [v34 createDirectoryAtPath:payloadData withIntermediateDirectories:1 attributes:0 error:&v79];
    v35 = v79;

    if (v30)
    {
      v36 = [v65 copyEncodedToDirectoryPath:payloadData];
      if (v36)
      {
LABEL_38:
        if (complicationClientID2 && v36)
        {
          v40 = [[NTKComplicationKey alloc] initWithClientIdentifier:complicationClientID2 descriptor:complicationDescriptor];
          v41 = [v55 objectForKeyedSubscript:faceUUID];
          [v41 setObject:v36 forKey:v40];
        }

        objc_autoreleasePoolPop(context);
        goto LABEL_42;
      }
    }

    else
    {
      v38 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v35;
        _os_log_fault_impl(&_mh_execute_header, v38, OS_LOG_TYPE_FAULT, "Failed to make temporary reset sync sample data directory: %@", &buf, 0xCu);
      }
    }

    v36 = v65;
    v39 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      sub_10003FED4(&v77, v78);
    }

    goto LABEL_38;
  }

  v63 = 0;
  v64 = 0;
LABEL_48:
  objc_autoreleasePoolPop(v11);
  [listCopy resumeCoalescing];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v86 = 0x2020000000;
  v87 = 0;
  if ([v59 count] && v64)
  {
    [storeCopy withoutNotifyingSyncObserverResetWithFaces:v59 orderedUUIDs:v64 selectedUUID:v63];
    [storeCopy synchronize];
    *(*(&buf + 1) + 24) = 1;
  }

  allKeys2 = [storesCopy allKeys];
  v72[0] = _NSConcreteStackBlock;
  v72[1] = 3221225472;
  v72[2] = sub_10003A62C;
  v72[3] = &unk_10005E378;
  v43 = v56;
  v73 = v43;
  v44 = v55;
  v74 = v44;
  v45 = storesCopy;
  v75 = v45;
  p_buf = &buf;
  [allKeys2 enumerateObjectsUsingBlock:v72];

  if ((*(*(&buf + 1) + 24) & 1) == 0)
  {
    v46 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      sub_10003FF9C(v46);
    }
  }

  [listCopy clearAllMessages];
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v47 = v60;
  v48 = [v47 countByEnumeratingWithState:&v68 objects:v84 count:16];
  if (v48)
  {
    v49 = *v69;
    do
    {
      for (i = 0; i != v48; i = i + 1)
      {
        if (*v69 != v49)
        {
          objc_enumerationMutation(v47);
        }

        v51 = *(*(&v68 + 1) + 8 * i);
        v52 = +[NSFileManager defaultManager];
        [v52 removeItemAtPath:v51 error:0];
      }

      v48 = [v47 countByEnumeratingWithState:&v68 objects:v84 count:16];
    }

    while (v48);
  }

  v53 = *(*(&buf + 1) + 24);
  _Block_object_dispose(&buf, 8);

  return v53 & 1;
}

- (BOOL)_queue_applyDeltaMessageList:(id)list collectionStore:(id)store complicationStores:(id)stores
{
  listCopy = list;
  storeCopy = store;
  storesCopy = stores;
  v10 = objc_autoreleasePoolPush();
  firstMessage = [listCopy firstMessage];
  if (firstMessage)
  {
    firstMessage2 = firstMessage;
    v13 = &CLKComplicationFamilyDescription_ptr;
    v67 = storeCopy;
    v68 = storesCopy;
    do
    {
      v14 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v72 = firstMessage2;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "applying incoming message: %@", buf, 0xCu);
      }

      messageType = [firstMessage2 messageType];
      v16 = 0;
      if (messageType > 4)
      {
        if (messageType <= 7)
        {
          if (messageType != 5)
          {
            if (messageType != 6)
            {
              complicationCollectionIdentifier = [firstMessage2 complicationCollectionIdentifier];
              v20 = [storesCopy objectForKeyedSubscript:complicationCollectionIdentifier];
              complicationClientID = [firstMessage2 complicationClientID];
              complicationDescriptor = [firstMessage2 complicationDescriptor];
              if (complicationClientID)
              {
                [v20 withoutNotifyingSyncObserverRemoveComplicationSampleTemplatesForClientIdentifier:complicationClientID descriptor:complicationDescriptor];
              }

              goto LABEL_32;
            }

            complicationCollectionIdentifier = [firstMessage2 complicationCollectionIdentifier];
            v35 = [storesCopy objectForKeyedSubscript:complicationCollectionIdentifier];
            complicationClientID2 = [firstMessage2 complicationClientID];
            complicationDescriptor2 = [firstMessage2 complicationDescriptor];
            payloadData = [firstMessage2 payloadData];
            v50 = NTKDClientSampleDataFromPayloadData();

            if (complicationClientID2 && v50)
            {
              [v35 withoutNotifyingSyncObserverSetComplicationSampleData:v50 forClientIdentifier:complicationClientID2 descriptor:complicationDescriptor2];
            }

LABEL_50:
            v16 = 0;
LABEL_72:
            storesCopy = v68;
            goto LABEL_73;
          }

          payloadData2 = [firstMessage2 payloadData];
          complicationCollectionIdentifier = NTKDOrderedUUIDsFromPayloadData();

          if (complicationCollectionIdentifier)
          {
            [storeCopy withoutNotifyingSyncObserverSetOrderedUUIDs:complicationCollectionIdentifier];
          }

LABEL_53:
          v16 = 0;
          goto LABEL_74;
        }

        switch(messageType)
        {
          case 8:
            complicationCollectionIdentifier = [firstMessage2 complicationCollectionIdentifier];
            v35 = [storesCopy objectForKeyedSubscript:complicationCollectionIdentifier];
            complicationClientID2 = [firstMessage2 complicationClientID];
            complicationDescriptor2 = [firstMessage2 complicationDescriptor];
            payloadData3 = [firstMessage2 payloadData];
            v39 = NTKDClientSampleTemplateFromPayloadData();

            complicationFamily = [firstMessage2 complicationFamily];
            v41 = complicationFamily;
            if (complicationClientID2 && v39 && complicationFamily)
            {
              [v35 withoutNotifyingUpdateLocalizableSampleDataTemplate:v39 forClientIdentifier:complicationClientID2 descriptor:complicationDescriptor2 family:{objc_msgSend(complicationFamily, "integerValue")}];
            }

            goto LABEL_50;
          case 9:
            complicationCollectionIdentifier = [firstMessage2 faceUUID];
            v51 = +[NSUUID UUID];
            uUIDString = [v51 UUIDString];
            v53 = [NSString stringWithFormat:@"In-%@.zip", uUIDString];

            v54 = sub_10003A5E8();
            v55 = [v54 stringByAppendingPathComponent:v53];

            if ([firstMessage2 getPayloadDataIntoFile:v55])
            {
              deviceUUID = [storeCopy deviceUUID];
              v57 = NTKDFaceFromPayloadPath();
              v16 = 0;
            }

            else
            {
              v57 = 0;
              v16 = 0;
            }

            v63 = +[NSFileManager defaultManager];
            [v63 removeItemAtPath:v55 error:0];

            if (complicationCollectionIdentifier && v57)
            {
              faceUUID = [firstMessage2 faceUUID];
              [storeCopy withoutNotifyingSyncObserverUpgradeFace:v57 forUUID:faceUUID];
            }

            goto LABEL_72;
          case 10:
            complicationCollectionIdentifier = [firstMessage2 complicationCollectionIdentifier];
            v20 = [storesCopy objectForKeyedSubscript:complicationCollectionIdentifier];
            complicationClientID3 = [firstMessage2 complicationClientID];
            payloadData4 = [firstMessage2 payloadData];
            v27 = NTKDComplicationDescriptorsFromPayloadData();

            if (complicationClientID3 && v27)
            {
              [v20 withoutNotifyingUpdateComplicationDescriptors:v27 forClientIdentifier:complicationClientID3];
            }

LABEL_32:
            v16 = 0;
LABEL_73:
            v13 = &CLKComplicationFamilyDescription_ptr;
LABEL_74:

            break;
        }
      }

      else
      {
        if (messageType > 1)
        {
          if (messageType == 2)
          {
            complicationCollectionIdentifier = [firstMessage2 faceUUID];
            v29 = +[NSUUID UUID];
            uUIDString2 = [v29 UUIDString];
            v31 = [NSString stringWithFormat:@"In-%@.zip", uUIDString2];

            v32 = sub_10003A5E8();
            v33 = [v32 stringByAppendingPathComponent:v31];

            if ([firstMessage2 getPayloadDataIntoFile:v33])
            {
              v34 = NTKDFaceResourceDirectoryFromPayloadPath();
            }

            else
            {
              v34 = 0;
            }

            v58 = +[NSFileManager defaultManager];
            [v58 removeItemAtPath:v33 error:0];

            if (complicationCollectionIdentifier)
            {
              [v67 withoutNotifyingSyncObserverUpdateFaceForUUID:complicationCollectionIdentifier withResourceDirectory:v34];
              [v67 synchronize];
              v59 = +[NSFileManager defaultManager];
              [v59 removeItemAtPath:v34 error:0];
            }

            v16 = 0;
            v13 = &CLKComplicationFamilyDescription_ptr;
            storeCopy = v67;
            goto LABEL_74;
          }

          if (messageType == 3)
          {
            complicationCollectionIdentifier = [firstMessage2 faceUUID];
            if (complicationCollectionIdentifier)
            {
              [storeCopy withoutNotifyingSyncObserverRemoveFaceForUUID:complicationCollectionIdentifier];
            }
          }

          else
          {
            payloadData5 = [firstMessage2 payloadData];
            complicationCollectionIdentifier = NTKDSelectedUUIDFromPayloadData();

            if (complicationCollectionIdentifier)
            {
              [storeCopy withoutNotifyingSyncObserverSetSelectedUUID:complicationCollectionIdentifier];
            }
          }

          goto LABEL_53;
        }

        switch(messageType)
        {
          case -1:
            complicationCollectionIdentifier = _NTKLoggingObjectForDomain();
            if (os_log_type_enabled(complicationCollectionIdentifier, OS_LOG_TYPE_ERROR))
            {
              sub_10003FFF4(&v69, v70);
            }

            goto LABEL_53;
          case 0:
            complicationCollectionIdentifier = [firstMessage2 faceUUID];
            v42 = +[NSUUID UUID];
            uUIDString3 = [v42 UUIDString];
            v44 = [NSString stringWithFormat:@"In-%@.zip", uUIDString3];

            v45 = sub_10003A5E8();
            v46 = [v45 stringByAppendingPathComponent:v44];

            if ([firstMessage2 getPayloadDataIntoFile:v46])
            {
              deviceUUID2 = [storeCopy deviceUUID];
              v48 = NTKDFaceFromPayloadPath();
              v16 = 0;
            }

            else
            {
              v48 = 0;
              v16 = 0;
            }

            v60 = +[NSFileManager defaultManager];
            [v60 removeItemAtPath:v46 error:0];

            v61 = _NTKLoggingObjectForDomain();
            if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
            {
              *buf = 138543618;
              v72 = complicationCollectionIdentifier;
              v73 = 2114;
              v74 = v48;
              _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_INFO, "incoming - %{public}@ - added face %{public}@", buf, 0x16u);
            }

            if (complicationCollectionIdentifier && v48)
            {
              faceUUID2 = [firstMessage2 faceUUID];
              [storeCopy withoutNotifyingSyncObserverAddFace:v48 forUUID:faceUUID2];
            }

            goto LABEL_72;
          case 1:
            complicationCollectionIdentifier = [firstMessage2 faceUUID];
            payloadData6 = [firstMessage2 payloadData];
            deviceUUID3 = [storeCopy deviceUUID];
            v20 = NTKDFaceConfigurationFromPayloadData();

            v21 = _NTKLoggingObjectForDomain();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              *buf = 138543618;
              v72 = complicationCollectionIdentifier;
              v73 = 2114;
              v74 = v20;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "incoming - %{public}@ - updated face config %{public}@", buf, 0x16u);
            }

            if (complicationCollectionIdentifier && v20)
            {
              [storeCopy withoutNotifyingSyncObserverUpdateFaceForUUID:complicationCollectionIdentifier withConfiguration:v20];
            }

            goto LABEL_32;
        }
      }

      [storeCopy synchronize];
      [storesCopy enumerateKeysAndObjectsUsingBlock:&stru_10005E398];
      [listCopy dequeueFirstMessage];
      if (v16)
      {
        defaultManager = [v13[265] defaultManager];
        [defaultManager removeItemAtPath:v16 error:0];
      }

      objc_autoreleasePoolPop(v10);
      v10 = objc_autoreleasePoolPush();
      firstMessage2 = [listCopy firstMessage];
    }

    while (firstMessage2);
  }

  objc_autoreleasePoolPop(v10);

  return 1;
}

- (void)_queue_addPayloadToMessage:(id)message withFaceStore:(id)store complicationStores:(id)stores
{
  messageCopy = message;
  storeCopy = store;
  storesCopy = stores;
  v10 = objc_autoreleasePoolPush();
  messageType = [messageCopy messageType];
  if (messageType <= 4)
  {
    if (messageType <= 1)
    {
      if (!messageType)
      {
        faceUUID = [messageCopy faceUUID];
        resourceDirectory = [storeCopy faceForUUID:faceUUID];

        v27 = +[NSUUID UUID];
        uUIDString = [v27 UUIDString];
        complicationDescriptor = [NSString stringWithFormat:@"Out-%@.zip", uUIDString];

        v29 = sub_10003A5E8();
        faceUUID4 = [v29 stringByAppendingPathComponent:complicationDescriptor];

        if (sub_10000610C(resourceDirectory, 0, faceUUID4))
        {
          [messageCopy setPayloadDataFromFile:faceUUID4];
        }

        v30 = +[NSFileManager defaultManager];
        [v30 removeItemAtPath:faceUUID4 error:0];

        v31 = _NTKLoggingObjectForDomain();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          faceUUID2 = [messageCopy faceUUID];
          *buf = 138543618;
          v51 = faceUUID2;
          v52 = 2114;
          v53 = resourceDirectory;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Outgoing - %{public}@ - added face %{public}@", buf, 0x16u);
        }

        goto LABEL_25;
      }

      if (messageType != 1)
      {
        goto LABEL_32;
      }

      faceUUID3 = [messageCopy faceUUID];
      resourceDirectory = [storeCopy faceForUUID:faceUUID3];

      v18 = NTKDPayloadDataFromFaceConfiguration();
      [messageCopy setPayloadData:v18];

      complicationDescriptor = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(complicationDescriptor, OS_LOG_TYPE_INFO))
      {
        faceUUID4 = [messageCopy faceUUID];
        *buf = 138543618;
        v51 = faceUUID4;
        v52 = 2114;
        v53 = resourceDirectory;
        _os_log_impl(&_mh_execute_header, complicationDescriptor, OS_LOG_TYPE_INFO, "Outgoing - %{public}@ - updated face %{public}@", buf, 0x16u);
LABEL_26:
      }

LABEL_30:

      goto LABEL_31;
    }

    if (messageType == 2)
    {
      faceUUID5 = [messageCopy faceUUID];
      v34 = [storeCopy faceForUUID:faceUUID5];
      resourceDirectory = [v34 resourceDirectory];

      v35 = +[NSUUID UUID];
      uUIDString2 = [v35 UUIDString];
      complicationDescriptor = [NSString stringWithFormat:@"Out-%@.zip", uUIDString2];

      v37 = sub_10003A5E8();
      faceUUID4 = [v37 stringByAppendingPathComponent:complicationDescriptor];

      v38 = +[NTKDZIPArchivist sharedArchivist];
      v39 = [v38 zippedDataForPath:resourceDirectory toZipFile:faceUUID4];

      if (!v39)
      {
LABEL_24:
        v31 = +[NSFileManager defaultManager];
        [v31 removeItemAtPath:faceUUID4 error:0];
LABEL_25:

        goto LABEL_26;
      }

LABEL_23:
      [messageCopy setPayloadDataFromFile:faceUUID4];
      goto LABEL_24;
    }

    if (messageType != 4)
    {
      goto LABEL_32;
    }

    resourceDirectory = [storeCopy selectedUUID];
    v21 = NTKDPayloadDataFromSelectedUUID();
LABEL_29:
    complicationDescriptor = v21;
    [messageCopy setPayloadData:v21];
    goto LABEL_30;
  }

  if (messageType <= 7)
  {
    if (messageType != 5)
    {
      if (messageType != 6)
      {
        goto LABEL_32;
      }

      resourceDirectory = [messageCopy complicationClientID];
      complicationDescriptor = [messageCopy complicationDescriptor];
      complicationCollectionIdentifier = [messageCopy complicationCollectionIdentifier];
      v23 = [storesCopy objectForKeyedSubscript:complicationCollectionIdentifier];

      v24 = [v23 complicationSampleDataForClientID:resourceDirectory descriptor:complicationDescriptor shouldInflate:1];
      v25 = NTKDPayloadDataFromComplicationSampleData();
      [messageCopy setPayloadData:v25];

      goto LABEL_30;
    }

    resourceDirectory = [storeCopy orderedUUIDs];
    v21 = NTKDPayloadDataFromOrderedUUIDs();
    goto LABEL_29;
  }

  switch(messageType)
  {
    case 8:
      resourceDirectory = [messageCopy complicationClientID];
      complicationDescriptor = [messageCopy complicationDescriptor];
      complicationFamily = [messageCopy complicationFamily];
      integerValue = [complicationFamily integerValue];

      complicationCollectionIdentifier2 = [messageCopy complicationCollectionIdentifier];
      v43 = [storesCopy objectForKeyedSubscript:complicationCollectionIdentifier2];

      v44 = [v43 sampleTemplateForClientIdentifier:resourceDirectory descriptor:complicationDescriptor family:integerValue];
      v45 = NTKDPayloadDataFromComplicationTemplate();
      [messageCopy setPayloadData:v45];

      goto LABEL_30;
    case 9:
      faceUUID6 = [messageCopy faceUUID];
      resourceDirectory = [storeCopy faceForUUID:faceUUID6];

      v47 = +[NSUUID UUID];
      uUIDString3 = [v47 UUIDString];
      complicationDescriptor = [NSString stringWithFormat:@"Out-%@.zip", uUIDString3];

      v49 = sub_10003A5E8();
      faceUUID4 = [v49 stringByAppendingPathComponent:complicationDescriptor];

      if (!sub_10000610C(resourceDirectory, 0, faceUUID4))
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    case 10:
      resourceDirectory = [messageCopy complicationClientID];
      complicationCollectionIdentifier3 = [messageCopy complicationCollectionIdentifier];
      v14 = [storesCopy objectForKeyedSubscript:complicationCollectionIdentifier3];

      v15 = [v14 complicationDescriptorsForClientIdentifier:resourceDirectory];
      v16 = NTKDPayloadDataFromComplicationDescriptors();
      [messageCopy setPayloadData:v16];

LABEL_31:
      break;
  }

LABEL_32:
  objc_autoreleasePoolPop(v10);
}

- (void)_queue_executeIfSyncQueuesAreEmpty:(id)empty
{
  emptyCopy = empty;
  v5 = sub_1000059C8();
  v6 = [(NTKDSyncController *)self _queue_outgoingMessageListForDeviceUUID:v5];
  if ([v6 hasMessages])
  {
  }

  else
  {
    v7 = sub_1000059C8();
    v8 = [(NTKDSyncController *)self _queue_incomingMessageListForDeviceUUID:v7];
    hasMessages = [v8 hasMessages];

    if ((hasMessages & 1) == 0)
    {
      emptyCopy[2](emptyCopy);
      goto LABEL_8;
    }
  }

  v10 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "ignoring library store validation attempt -- sync messages currently enqueued", v11, 2u);
  }

LABEL_8:
}

@end