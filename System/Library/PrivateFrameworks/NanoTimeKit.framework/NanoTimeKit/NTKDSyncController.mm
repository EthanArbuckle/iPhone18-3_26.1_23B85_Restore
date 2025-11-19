@interface NTKDSyncController
+ (id)sharedInstance;
+ (void)cleanupOrphanedSyncDirectoriesWithCurrentDeviceUUIDs:(id)a3;
- (BOOL)_queue_applyDeltaMessageList:(id)a3 collectionStore:(id)a4 complicationStores:(id)a5;
- (BOOL)_queue_applyResetMessageList:(id)a3 collectionStore:(id)a4 complicationStores:(id)a5;
- (BOOL)companionSyncWrapperCanSendData;
- (BOOL)incomingSyncSessionApplyMessage:(id)a3;
- (BOOL)incomingSyncSessionResetDataStoreWithError:(id *)a3;
- (BOOL)shouldEnableSyncPrintingLogs:(BOOL)a3;
- (NTKDSyncController)init;
- (id)_queue_checkoutComplicationStoresForDeviceUUID:(id)a3;
- (id)_queue_checkoutLibraryStoreForDeviceUUID:(id)a3;
- (id)_queue_complicationStoreStatusForDeviceUUID:(id)a3 identifier:(id)a4;
- (id)_queue_complicationStoreStatusesForDeviceUUID:(id)a3 withIdentifiers:(id)a4;
- (id)_queue_incomingMessageListForDeviceUUID:(id)a3;
- (id)_queue_outgoingMessageListForDeviceUUID:(id)a3;
- (id)_queue_storeStatusForDeviceUUID:(id)a3;
- (id)outgoingSyncSessionGetNextMessage;
- (void)_onQueue_async:(id)a3;
- (void)_queue_addPayloadToMessage:(id)a3 withFaceStore:(id)a4 complicationStores:(id)a5;
- (void)_queue_applyIncomingMessageList:(id)a3 collectionStore:(id)a4 complicationStores:(id)a5 storeStatus:(id)a6;
- (void)_queue_applyIncomingMessageLists;
- (void)_queue_beginGuardingOutgoingSessionRequest;
- (void)_queue_endGuardingOutgoingSessionRequest;
- (void)_queue_executeIfSyncQueuesAreEmpty:(id)a3;
- (void)_queue_requestSyncIfNecessaryAndForceDeltaRequestOtherwise:(BOOL)a3;
- (void)collectionStore:(id)a3 didAddFace:(id)a4 forUUID:(id)a5 seqId:(id)a6;
- (void)collectionStore:(id)a3 didRemoveFaceOfStyle:(int64_t)a4 forUUID:(id)a5 seqId:(id)a6 acknowledge:(id)a7;
- (void)collectionStore:(id)a3 didSuppressNotificationForSeqId:(id)a4;
- (void)collectionStore:(id)a3 didUpdateFaceForUUID:(id)a4 withConfiguration:(id)a5 seqId:(id)a6;
- (void)collectionStore:(id)a3 didUpdateFaceForUUID:(id)a4 withResourceDirectory:(id)a5 seqId:(id)a6 acknowledge:(id)a7;
- (void)collectionStore:(id)a3 didUpdateOrderedUUIDs:(id)a4 seqId:(id)a5;
- (void)collectionStore:(id)a3 didUpdateSelectedUUID:(id)a4 seqId:(id)a5;
- (void)collectionStore:(id)a3 didUpgradeFace:(id)a4 forUUID:(id)a5 seqId:(id)a6;
- (void)collectionStore:(id)a3 loadOrderedUUIDs:(id)a4 selectedUUID:(id)a5 facesByUUID:(id)a6 seqId:(id)a7 acknowledge:(id)a8;
- (void)collectionStoreHasBeenCreated:(id)a3;
- (void)collectionStoreWillBePurged:(id)a3;
- (void)complicationCollectionStoreHasBeenCreated:(id)a3;
- (void)complicationCollectionStoreWillBePurged:(id)a3;
- (void)complicationStore:(id)a3 didRemoveComplicationSampleTemplatesForClientIdentifier:(id)a4 descriptor:(id)a5 seqId:(id)a6;
- (void)complicationStore:(id)a3 didSuppressNotificationForSeqId:(id)a4;
- (void)complicationStore:(id)a3 didUpdateComplicationDescriptors:(id)a4 forClientIdentifier:(id)a5 seqId:(id)a6;
- (void)complicationStore:(id)a3 didUpdateSampleTemplateReference:(id)a4 forClientIdentifier:(id)a5 descriptor:(id)a6 family:(int64_t)a7 seqId:(id)a8;
- (void)complicationStore:(id)a3 loadFullCollectionWithLocalizableSampleTemplates:(id)a4 complicationDescriptors:(id)a5 seqId:(id)a6;
- (void)ensureSyncIsActive:(id)a3;
- (void)handleActiveDeviceChangedNotification;
- (void)handleDeviceTinkerStateChangedNotification;
- (void)incomingLibraryValidationMessage:(id)a3;
- (void)incomingSyncSessionDidEnd:(BOOL)a3 withError:(id)a4;
- (void)incomingSyncSessionDidStart:(BOOL)a3;
- (void)outgoingSyncSessionDidEnd:(BOOL)a3 withError:(id)a4;
- (void)outgoingSyncSessionDidStart:(BOOL)a3;
- (void)registry:(id)a3 changed:(id)a4 properties:(id)a5;
- (void)requestResetSyncForComplicationStore:(id)a3;
- (void)setUp;
- (void)syncCoordinator:(id)a3 beginSyncSession:(id)a4;
- (void)syncCoordinator:(id)a3 didInvalidateSyncSession:(id)a4;
- (void)syncCoordinatorDidChangeSyncRestriction:(id)a3;
- (void)syncProviderDidRequiresDeltaSync:(id)a3;
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

+ (void)cleanupOrphanedSyncDirectoriesWithCurrentDeviceUUIDs:(id)a3
{
  v3 = a3;
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
        if (([v3 containsObject:{v10, v21}] & 1) == 0)
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

- (BOOL)shouldEnableSyncPrintingLogs:(BOOL)a3
{
  v3 = a3;
  v5 = [(CLKDevice *)self->_device supportsCompanionSync];
  v6 = [(CLKDevice *)self->_device isPaired]& v5;
  v7 = [(CLKDevice *)self->_device isTinker];
  v8 = v6 & (v7 ^ 1);
  if (v3)
  {
    v9 = v7;
    v10 = [(CLKDevice *)self->_device pdrDevice];
    v11 = [v10 pairingID];

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

      v14 = [(CLKDevice *)self->_device isPaired];
      v16 = 138544642;
      v17 = v13;
      v18 = 2048;
      v19 = 0;
      v20 = 2048;
      v21 = v9 & 1;
      v22 = 2048;
      v23 = v5 & 1;
      v24 = 2048;
      v25 = v14;
      v26 = 2114;
      v27 = v11;
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
  v3 = [(NTKDSyncController *)self isSetup];
  v4 = _NTKLoggingObjectForDomain();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
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

    v56 = self;
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

    outgoingMessageLists = v56->_outgoingMessageLists;
    v56->_outgoingMessageLists = v15;

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

    incomingMessageLists = v56->_incomingMessageLists;
    v56->_incomingMessageLists = v25;

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

    storeStatuses = v56->_storeStatuses;
    v56->_storeStatuses = v35;

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
    complicationStoreStatuses = v56->_complicationStoreStatuses;
    v56->_complicationStoreStatuses = v49;

    v51 = objc_alloc_init(NSMutableDictionary);
    stores = v56->_stores;
    v56->_stores = v51;

    v53 = +[NTKDCollectionCoordinator sharedInstance];
    [v53 addCollectionLifecycleObserver:v56];

    v54 = +[NTKDComplicationStoreCoordinator sharedInstance];
    [v54 addComplicationCollectionLifecycleObserver:v56];

    v58[0] = _NSConcreteStackBlock;
    v58[1] = 3221225472;
    v58[2] = sub_1000329D4;
    v58[3] = &unk_10005CA70;
    v58[4] = v56;
    [(NTKDSyncController *)v56 _onQueue_async:v58];
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

  v4 = [(PSYSyncCoordinator *)self->_syncCoordinator activeSyncSession];
  [v4 syncDidComplete];

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

- (void)syncCoordinator:(id)a3 beginSyncSession:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if ([v7 syncSessionType])
    {
      v9 = "QWS";
    }

    else
    {
      v9 = "RESET";
    }

    v10 = [v7 sessionIdentifier];
    *buf = 136315394;
    v18 = v9;
    v19 = 2112;
    v20 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "enqueueing - starting paired sync %s session with ID = %@", buf, 0x16u);
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100032E5C;
  v13[3] = &unk_10005CC38;
  v14 = v7;
  v15 = self;
  v16 = v6;
  v11 = v6;
  v12 = v7;
  [(NTKDSyncController *)self _onQueue_async:v13];
}

- (void)syncCoordinator:(id)a3 didInvalidateSyncSession:(id)a4
{
  v4 = a4;
  v5 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if ([v4 syncSessionType])
    {
      v6 = "QWS";
    }

    else
    {
      v6 = "RESET";
    }

    v7 = [v4 sessionIdentifier];
    v8 = 136315394;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "paired sync %s session was invalidated with ID = %@", &v8, 0x16u);
  }
}

- (void)syncCoordinatorDidChangeSyncRestriction:(id)a3
{
  v4 = a3;
  v5 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(PSYSyncCoordinator *)self->_syncCoordinator syncRestriction];
    v7 = "in place";
    if (!v6)
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
  v10 = v4;
  v8 = v4;
  [(NTKDSyncController *)self _onQueue_async:v9];
}

- (void)ensureSyncIsActive:(id)a3
{
  v4 = a3;
  v5 = [(PSYSyncCoordinator *)self->_syncCoordinator syncRestriction];
  v6 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "in place";
    if (!v5)
    {
      v7 = "lifted";
    }

    *buf = 136315138;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "paired sync restriction %s", buf, 0xCu);
  }

  if (v5 || (-[CLKDevice pdrDevice](self->_device, "pdrDevice"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 isPaired], v8, (v9 & 1) != 0))
  {
    v4[2](v4);
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
    v12 = v4;
    [(NTKDSyncController *)self _onQueue_async:v11];
  }
}

- (void)syncProviderDidRequiresDeltaSync:(id)a3
{
  v4 = a3;
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

- (void)collectionStoreHasBeenCreated:(id)a3
{
  v4 = a3;
  v5 = [v4 collectionIdentifier];
  v6 = [v5 isEqualToString:NTKCollectionIdentifierLibraryFaces];

  if (v6)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100033794;
    v7[3] = &unk_10005CA98;
    v8 = v4;
    v9 = self;
    [(NTKDSyncController *)self _onQueue_async:v7];
  }
}

- (void)collectionStoreWillBePurged:(id)a3
{
  v4 = a3;
  v5 = [v4 collectionIdentifier];
  v6 = [v5 isEqualToString:NTKCollectionIdentifierLibraryFaces];

  if (v6)
  {
    queue = self->_queue;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10003397C;
    v8[3] = &unk_10005CA98;
    v9 = v4;
    v10 = self;
    dispatch_sync(queue, v8);
  }
}

- (void)complicationCollectionStoreHasBeenCreated:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100033A84;
  v5[3] = &unk_10005CA98;
  v6 = a3;
  v7 = self;
  v4 = v6;
  [(NTKDSyncController *)self _onQueue_async:v5];
}

- (void)complicationCollectionStoreWillBePurged:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100033C88;
  v7[3] = &unk_10005CA98;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)collectionStore:(id)a3 loadOrderedUUIDs:(id)a4 selectedUUID:(id)a5 facesByUUID:(id)a6 seqId:(id)a7 acknowledge:(id)a8
{
  v11 = a3;
  v12 = a7;
  v13 = a8;
  v14 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = v12;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "collectionStore (seqId = %@) did full reload -- will request reset sync", buf, 0xCu);
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100033E70;
  v18[3] = &unk_10005CAE8;
  v18[4] = self;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  [(NTKDSyncController *)self _onQueue_async:v18];
}

- (void)collectionStore:(id)a3 didUpdateSelectedUUID:(id)a4 seqId:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v18 = v10;
    v19 = 2112;
    v20 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "collectionStore (seqId = %@) did update selected uuid: %@", buf, 0x16u);
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10003407C;
  v14[3] = &unk_10005CC38;
  v14[4] = self;
  v15 = v8;
  v16 = v10;
  v12 = v10;
  v13 = v8;
  [(NTKDSyncController *)self _onQueue_async:v14];
}

- (void)collectionStore:(id)a3 didUpdateOrderedUUIDs:(id)a4 seqId:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "collectionStore (seqId = %@) did update ordered uuids", buf, 0xCu);
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10003429C;
  v12[3] = &unk_10005CC38;
  v12[4] = self;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  [(NTKDSyncController *)self _onQueue_async:v12];
}

- (void)collectionStore:(id)a3 didUpdateFaceForUUID:(id)a4 withConfiguration:(id)a5 seqId:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v23 = v13;
    v24 = 2112;
    v25 = v11;
    v26 = 2112;
    v27 = v12;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "collectionStore (seqId = %@) did update face for uuid '%@' with configuration: %@", buf, 0x20u);
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100034508;
  v18[3] = &unk_10005CFC0;
  v18[4] = self;
  v19 = v10;
  v20 = v11;
  v21 = v13;
  v15 = v13;
  v16 = v11;
  v17 = v10;
  [(NTKDSyncController *)self _onQueue_async:v18];
}

- (void)collectionStore:(id)a3 didUpdateFaceForUUID:(id)a4 withResourceDirectory:(id)a5 seqId:(id)a6 acknowledge:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v28 = v15;
    v29 = 2112;
    v30 = v13;
    v31 = 2112;
    v32 = v14;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "collectionStore (seqId = %@) did update face for uuid '%@' with resource directory: %@", buf, 0x20u);
  }

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000347A4;
  v22[3] = &unk_10005CD90;
  v22[4] = self;
  v23 = v12;
  v24 = v13;
  v25 = v15;
  v26 = v16;
  v18 = v16;
  v19 = v15;
  v20 = v13;
  v21 = v12;
  [(NTKDSyncController *)self _onQueue_async:v22];
}

- (void)collectionStore:(id)a3 didUpgradeFace:(id)a4 forUUID:(id)a5 seqId:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v23 = v13;
    v24 = 2112;
    v25 = v12;
    v26 = 2112;
    v27 = v11;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "collectionStore (seqId = %@) did upgrade face for uuid '%@': %@", buf, 0x20u);
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100034A24;
  v18[3] = &unk_10005CFC0;
  v18[4] = self;
  v19 = v10;
  v20 = v12;
  v21 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v10;
  [(NTKDSyncController *)self _onQueue_async:v18];
}

- (void)collectionStore:(id)a3 didAddFace:(id)a4 forUUID:(id)a5 seqId:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v23 = v13;
    v24 = 2112;
    v25 = v12;
    v26 = 2112;
    v27 = v11;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "collectionStore (seqId = %@) did add face for uuid '%@': %@", buf, 0x20u);
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100034C94;
  v18[3] = &unk_10005CFC0;
  v18[4] = self;
  v19 = v10;
  v20 = v12;
  v21 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v10;
  [(NTKDSyncController *)self _onQueue_async:v18];
}

- (void)collectionStore:(id)a3 didRemoveFaceOfStyle:(int64_t)a4 forUUID:(id)a5 seqId:(id)a6 acknowledge:(id)a7
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = NTKFaceStyleDescription();
    *buf = 138412802;
    v27 = v13;
    v28 = 2112;
    v29 = v16;
    v30 = 2112;
    v31 = v12;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "collectionStore (seqId = %@) did remove face of style %@ for uuid '%@'", buf, 0x20u);
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100034F5C;
  v21[3] = &unk_10005CD90;
  v21[4] = self;
  v22 = v11;
  v23 = v12;
  v24 = v13;
  v25 = v14;
  v17 = v14;
  v18 = v13;
  v19 = v12;
  v20 = v11;
  [(NTKDSyncController *)self _onQueue_async:v21];
}

- (void)collectionStore:(id)a3 didSuppressNotificationForSeqId:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 collectionIdentifier];
    *buf = 138412546;
    v16 = v9;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "collectionStore %@ seqId = %@", buf, 0x16u);
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000351B8;
  v12[3] = &unk_10005CC38;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  [(NTKDSyncController *)self _onQueue_async:v12];
}

- (void)complicationStore:(id)a3 loadFullCollectionWithLocalizableSampleTemplates:(id)a4 complicationDescriptors:(id)a5 seqId:(id)a6
{
  v8 = a3;
  v9 = a6;
  v10 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v8 collectionIdentifier];
    *buf = 138412290;
    v18 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "complicationStore %@ did full reload -- will request reset sync", buf, 0xCu);
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100035398;
  v14[3] = &unk_10005CC38;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v12 = v9;
  v13 = v8;
  [(NTKDSyncController *)self _onQueue_async:v14];
}

- (void)complicationStore:(id)a3 didUpdateSampleTemplateReference:(id)a4 forClientIdentifier:(id)a5 descriptor:(id)a6 family:(int64_t)a7 seqId:(id)a8
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a8;
  v17 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v13 collectionIdentifier];
    v19 = CLKComplicationFamilyDescription();
    *buf = 138412802;
    v31 = v18;
    v32 = 2112;
    v33 = v19;
    v34 = 2112;
    v35 = v14;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "complicationStore %@ did update template of family %@ for client '%@'", buf, 0x20u);
  }

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100035624;
  v24[3] = &unk_10005DA78;
  v24[4] = self;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v29 = a7;
  v20 = v16;
  v21 = v15;
  v22 = v14;
  v23 = v13;
  [(NTKDSyncController *)self _onQueue_async:v24];
}

- (void)complicationStore:(id)a3 didUpdateComplicationDescriptors:(id)a4 forClientIdentifier:(id)a5 seqId:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v9 collectionIdentifier];
    *buf = 138412546;
    v22 = v13;
    v23 = 2112;
    v24 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "complicationStore %@ did update complication descriptors for client '%@'", buf, 0x16u);
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000358F4;
  v17[3] = &unk_10005CFC0;
  v17[4] = self;
  v18 = v9;
  v19 = v10;
  v20 = v11;
  v14 = v11;
  v15 = v10;
  v16 = v9;
  [(NTKDSyncController *)self _onQueue_async:v17];
}

- (void)complicationStore:(id)a3 didRemoveComplicationSampleTemplatesForClientIdentifier:(id)a4 descriptor:(id)a5 seqId:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v10 collectionIdentifier];
    *buf = 138412546;
    v26 = v15;
    v27 = 2112;
    v28 = v11;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "complicationStore %@ did remove complication for client '%@'", buf, 0x16u);
  }

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100035BC0;
  v20[3] = &unk_10005D060;
  v20[4] = self;
  v21 = v10;
  v22 = v11;
  v23 = v12;
  v24 = v13;
  v16 = v13;
  v17 = v12;
  v18 = v11;
  v19 = v10;
  [(NTKDSyncController *)self _onQueue_async:v20];
}

- (void)complicationStore:(id)a3 didSuppressNotificationForSeqId:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 collectionIdentifier];
    *buf = 138412546;
    v16 = v9;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "complicationStore %@ seqId is now %@", buf, 0x16u);
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100035E44;
  v12[3] = &unk_10005CC38;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  [(NTKDSyncController *)self _onQueue_async:v12];
}

- (void)requestResetSyncForComplicationStore:(id)a3
{
  v4 = a3;
  v5 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 collectionIdentifier];
    *buf = 138412290;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "complicationStore %@ requested reset sync", buf, 0xCu);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100036010;
  v8[3] = &unk_10005CA98;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [(NTKDSyncController *)self _onQueue_async:v8];
}

- (void)registry:(id)a3 changed:(id)a4 properties:(id)a5
{
  if ([a5 containsObject:{PDRDevicePropertyKeySystemBuildVersion, a4}])
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

- (void)outgoingSyncSessionDidStart:(BOOL)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000361FC;
  v4[3] = &unk_10005D758;
  v4[4] = self;
  v5 = a3;
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

- (void)outgoingSyncSessionDidEnd:(BOOL)a3 withError:(id)a4
{
  v6 = a4;
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
  v14 = a3;
  v12[4] = self;
  v13 = v6;
  v9 = v6;
  [(NTKDSyncController *)self _onQueue_async:v12];
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100037148;
  v11[3] = &unk_10005CA70;
  v11[4] = self;
  dispatch_sync(queue, v11);
}

- (void)incomingSyncSessionDidStart:(BOOL)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100037208;
  v4[3] = &unk_10005D758;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(queue, v4);
}

- (BOOL)incomingSyncSessionResetDataStoreWithError:(id *)a3
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

- (BOOL)incomingSyncSessionApplyMessage:(id)a3
{
  v4 = a3;
  v5 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "incoming session, enqueuing message: %@", buf, 0xCu);
  }

  queue = self->_queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10003763C;
  v9[3] = &unk_10005CA98;
  v10 = v4;
  v11 = self;
  v7 = v4;
  dispatch_sync(queue, v9);

  return 1;
}

- (void)incomingSyncSessionDidEnd:(BOOL)a3 withError:(id)a4
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
  v11 = a3;
  [(NTKDSyncController *)self _onQueue_async:v10];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100037BB4;
  block[3] = &unk_10005CA70;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)incomingLibraryValidationMessage:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100037C94;
  v7[3] = &unk_10005CA98;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (BOOL)companionSyncWrapperCanSendData
{
  v3 = [(PSYSyncCoordinator *)self->_syncCoordinator syncRestriction];
  v4 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134218240;
    v7 = [(NTKDSyncController *)self shouldEnableSync];
    v8 = 2048;
    v9 = v3 == 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Can send data? shouldEnableSync: %lu, syncUnrestricted: %lu", &v6, 0x16u);
  }

  result = [(NTKDSyncController *)self shouldEnableSync];
  if (v3)
  {
    return 0;
  }

  return result;
}

- (void)_onQueue_async:(id)a3
{
  v4 = a3;
  sub_100007294(@"com.apple.ntkd.synccontroller.busy");
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100038374;
  block[3] = &unk_10005CB10;
  v8 = v4;
  v6 = v4;
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

- (id)_queue_checkoutLibraryStoreForDeviceUUID:(id)a3
{
  v4 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_100036AB4;
  v26 = sub_100036AC4;
  stores = self->_stores;
  v6 = sub_100033858(v4);
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
    [v9 checkoutStoreForCollectionIdentifier:v10 deviceUUID:v4 withHandler:&v16];

    dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
    v11 = self->_stores;
    v12 = v23[5];
    v13 = sub_100033858(v4);
    [(NSMutableDictionary *)v11 setObject:v12 forKey:v13, v16, v17, v18, v19];
  }

  v14 = v23[5];
  _Block_object_dispose(&v22, 8);

  return v14;
}

- (id)_queue_checkoutComplicationStoresForDeviceUUID:(id)a3
{
  v4 = a3;
  complicationStores = self->_complicationStores;
  v6 = sub_100033858(v4);
  v7 = [(NSMutableDictionary *)complicationStores objectForKey:v6];

  if (v7)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v8 = [v7 allValues];
    v9 = [v8 countByEnumeratingWithState:&v35 objects:v39 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v35 + 1) + 8 * i);
          v14 = +[NTKDComplicationStoreCoordinator sharedInstance];
          [v14 checkoutStore:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v35 objects:v39 count:16];
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
    v17 = v4;
    v33 = v17;
    v34 = v16;
    v18 = v16;
    v8 = v15;
    v19 = objc_retainBlock(v31);
    v20 = sub_100038AF4();
    v26 = _NSConcreteStackBlock;
    v27 = 3221225472;
    v28 = sub_100038B90;
    v29 = &unk_10005E2D8;
    v30 = v19;
    v21 = v19;
    [v20 enumerateObjectsUsingBlock:&v26];

    dispatch_group_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
    v22 = self->_complicationStores;
    v23 = [v18 copy];
    v24 = sub_100033858(v17);
    [(NSMutableDictionary *)v22 setObject:v23 forKey:v24];

    v7 = [v18 copy];
  }

  return v7;
}

- (id)_queue_outgoingMessageListForDeviceUUID:(id)a3
{
  v4 = a3;
  outgoingMessageLists = self->_outgoingMessageLists;
  v6 = sub_100033858(v4);
  v7 = [(NSMutableDictionary *)outgoingMessageLists objectForKey:v6];

  if (!v7)
  {
    sub_100038C78(v4);
    v8 = [_MessageList alloc];
    v9 = sub_100038D00(v4);
    v7 = [(_MessageList *)v8 initWithPersistencePath:v9];

    v10 = self->_outgoingMessageLists;
    v11 = sub_100033858(v4);
    [(NSMutableDictionary *)v10 setObject:v7 forKey:v11];
  }

  return v7;
}

- (id)_queue_incomingMessageListForDeviceUUID:(id)a3
{
  v4 = a3;
  incomingMessageLists = self->_incomingMessageLists;
  v6 = sub_100033858(v4);
  v7 = [(NSMutableDictionary *)incomingMessageLists objectForKey:v6];

  if (!v7)
  {
    sub_100038C78(v4);
    v8 = [_MessageList alloc];
    v9 = sub_100038E2C(v4);
    v7 = [(_MessageList *)v8 initWithPersistencePath:v9];

    v10 = self->_incomingMessageLists;
    v11 = sub_100033858(v4);
    [(NSMutableDictionary *)v10 setObject:v7 forKey:v11];
  }

  return v7;
}

- (id)_queue_storeStatusForDeviceUUID:(id)a3
{
  v4 = a3;
  storeStatuses = self->_storeStatuses;
  v6 = sub_100033858(v4);
  v7 = [(NSMutableDictionary *)storeStatuses objectForKey:v6];

  if (!v7)
  {
    sub_100038C78(v4);
    v8 = [_StoreStatus alloc];
    v9 = sub_100038F58(v4);
    v7 = [(_StoreStatus *)v8 initWithPersistencePath:v9];

    v10 = self->_storeStatuses;
    v11 = sub_100033858(v4);
    [(NSMutableDictionary *)v10 setObject:v7 forKey:v11];
  }

  return v7;
}

- (id)_queue_complicationStoreStatusForDeviceUUID:(id)a3 identifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  complicationStoreStatuses = self->_complicationStoreStatuses;
  v9 = sub_100039100(v6, v7);
  v10 = [(NSMutableDictionary *)complicationStoreStatuses objectForKey:v9];

  if (!v10)
  {
    sub_100038C78(v6);
    v11 = v6;
    v12 = +[NSFileManager defaultManager];
    v13 = sub_10003D840(v11);

    [v12 createDirectoryAtPath:v13 withIntermediateDirectories:1 attributes:0 error:0];
    v14 = [_StoreStatus alloc];
    v15 = sub_100039188(v11, v7);
    v10 = [(_StoreStatus *)v14 initWithPersistencePath:v15];

    v16 = self->_complicationStoreStatuses;
    v17 = sub_100039100(v11, v7);
    [(NSMutableDictionary *)v16 setObject:v10 forKey:v17];
  }

  return v10;
}

- (id)_queue_complicationStoreStatusesForDeviceUUID:(id)a3 withIdentifiers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v7;
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
        v15 = [(NTKDSyncController *)self _queue_complicationStoreStatusForDeviceUUID:v6 identifier:v14, v18];
        [v8 setObject:v15 forKeyedSubscript:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v16 = [v8 copy];

  return v16;
}

- (void)_queue_requestSyncIfNecessaryAndForceDeltaRequestOtherwise:(BOOL)a3
{
  v3 = a3;
  v5 = +[CLKDevice currentDevice];
  v6 = [v5 pdrDeviceVersion];

  if (HIWORD(v6) <= 2u)
  {
    v7 = +[PDRRegistry sharedInstance];
    [v7 addDelegate:self];

    v8 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v31) = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "sync request ignored because active gizmo is older than Daytona - watchOS=%u", buf, 8u);
    }

    goto LABEL_26;
  }

  v24 = v3;
  v8 = sub_1000059C8();
  v9 = [(NTKDSyncController *)self _queue_storeStatusForDeviceUUID:v8];
  v25 = [v9 needsResetSync];

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

  if (((v25 | v13) & 1) == 0)
  {
    v22 = [(NTKDSyncController *)self _queue_outgoingMessageListForDeviceUUID:v8];
    v23 = [v22 hasMessages];

    if ((v23 & 1) == 0 && !v24)
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

- (void)_queue_applyIncomingMessageList:(id)a3 collectionStore:(id)a4 complicationStores:(id)a5 storeStatus:(id)a6
{
  v16 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [v12 firstMessage];
  v14 = [v13 messageType];

  if (v14 == -1)
  {
    v15 = [(NTKDSyncController *)self _queue_applyResetMessageList:v12 collectionStore:v11 complicationStores:v10];

    if ((v15 & 1) == 0)
    {
      [v16 setNeedsResetSync:1];
      [(NTKDSyncController *)self _queue_requestSyncIfNecessary];
    }
  }

  else
  {
    [(NTKDSyncController *)self _queue_applyDeltaMessageList:v12 collectionStore:v11 complicationStores:v10];
  }
}

- (BOOL)_queue_applyResetMessageList:(id)a3 collectionStore:(id)a4 complicationStores:(id)a5
{
  v62 = a3;
  v58 = a4;
  v57 = a5;
  v7 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "building up reset state from reset message list", &buf, 2u);
  }

  v59 = +[NSMutableDictionary dictionary];
  v8 = +[NSMutableDictionary dictionary];
  v9 = +[NSMutableDictionary dictionary];
  v10 = [v57 allKeys];
  v81[0] = _NSConcreteStackBlock;
  v81[1] = 3221225472;
  v81[2] = sub_10003A554;
  v81[3] = &unk_10005D510;
  v55 = v8;
  v82 = v55;
  v56 = v9;
  v83 = v56;
  [v10 enumerateObjectsUsingBlock:v81];

  v60 = +[NSMutableArray array];
  [v62 suspendCoalescing];
  v67 = [v62 messageEnumerator];
  v11 = objc_autoreleasePoolPush();
  v12 = [v67 nextObject];
  if (v12)
  {
    v63 = 0;
    v64 = 0;
    while (1)
    {
      v13 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "processing incoming message (part of reset): %@", &buf, 0xCu);
      }

      v14 = [v12 messageType];
      if (v14 > 4)
      {
        break;
      }

      if (v14 == -1)
      {
        goto LABEL_45;
      }

      if (v14)
      {
        if (v14 != 4)
        {
LABEL_20:
          v15 = _NTKLoggingObjectForDomain();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            sub_10003FF10(v88, v12, &v89, v15);
          }

          goto LABEL_44;
        }

        v15 = [v12 payloadData];
        v16 = NTKDSelectedUUIDFromPayloadData();

        v63 = v16;
LABEL_44:

        goto LABEL_45;
      }

      v66 = [v12 faceUUID];
      v22 = +[NSUUID UUID];
      v23 = [v22 UUIDString];
      v24 = [NSString stringWithFormat:@"In-%@.zip", v23];

      v25 = sub_10003A5E8();
      v26 = [v25 stringByAppendingPathComponent:v24];

      if ([v12 getPayloadDataIntoFile:v26])
      {
        v27 = [v58 deviceUUID];
        v80 = 0;
        v28 = NTKDFaceFromPayloadPath();
        v15 = v80;
      }

      else
      {
        v28 = 0;
        v15 = 0;
      }

      v37 = +[NSFileManager defaultManager];
      [v37 removeItemAtPath:v26 error:0];

      if (v66 && v28)
      {
        [v59 setObject:v28 forKey:v66];
      }

LABEL_42:
      if (v15)
      {
        [v60 addObject:v15];
        goto LABEL_44;
      }

LABEL_45:

      objc_autoreleasePoolPop(v11);
      v11 = objc_autoreleasePoolPush();
      v12 = [v67 nextObject];
      if (!v12)
      {
        goto LABEL_48;
      }
    }

    if (v14 == 5)
    {
      v15 = [v12 payloadData];
      v21 = NTKDOrderedUUIDsFromPayloadData();

      v64 = v21;
      goto LABEL_44;
    }

    if (v14 != 6)
    {
      if (v14 == 10)
      {
        v15 = [v12 complicationCollectionIdentifier];
        v17 = [v12 complicationClientID];
        v18 = [v12 payloadData];
        v19 = NTKDComplicationDescriptorsFromPayloadData();

        if (v17 && v19)
        {
          v20 = [v56 objectForKeyedSubscript:v15];
          [v20 setObject:v19 forKey:v17];
        }

        goto LABEL_44;
      }

      goto LABEL_20;
    }

    v66 = [v12 complicationCollectionIdentifier];
    v28 = [v12 complicationClientID];
    v24 = [v12 complicationDescriptor];
    context = objc_autoreleasePoolPush();
    v29 = [v12 payloadData];
    v65 = NTKDClientSampleDataFromPayloadData();

    v30 = NSTemporaryDirectory();
    v31 = [v30 stringByAppendingPathComponent:@"sync"];
    v32 = +[NSUUID UUID];
    v33 = [v32 UUIDString];
    v15 = [v31 stringByAppendingPathComponent:v33];

    v34 = +[NSFileManager defaultManager];
    v79 = 0;
    LOBYTE(v30) = [v34 createDirectoryAtPath:v15 withIntermediateDirectories:1 attributes:0 error:&v79];
    v35 = v79;

    if (v30)
    {
      v36 = [v65 copyEncodedToDirectoryPath:v15];
      if (v36)
      {
LABEL_38:
        if (v28 && v36)
        {
          v40 = [[NTKComplicationKey alloc] initWithClientIdentifier:v28 descriptor:v24];
          v41 = [v55 objectForKeyedSubscript:v66];
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
  [v62 resumeCoalescing];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v86 = 0x2020000000;
  v87 = 0;
  if ([v59 count] && v64)
  {
    [v58 withoutNotifyingSyncObserverResetWithFaces:v59 orderedUUIDs:v64 selectedUUID:v63];
    [v58 synchronize];
    *(*(&buf + 1) + 24) = 1;
  }

  v42 = [v57 allKeys];
  v72[0] = _NSConcreteStackBlock;
  v72[1] = 3221225472;
  v72[2] = sub_10003A62C;
  v72[3] = &unk_10005E378;
  v43 = v56;
  v73 = v43;
  v44 = v55;
  v74 = v44;
  v45 = v57;
  v75 = v45;
  p_buf = &buf;
  [v42 enumerateObjectsUsingBlock:v72];

  if ((*(*(&buf + 1) + 24) & 1) == 0)
  {
    v46 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      sub_10003FF9C(v46);
    }
  }

  [v62 clearAllMessages];
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

- (BOOL)_queue_applyDeltaMessageList:(id)a3 collectionStore:(id)a4 complicationStores:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  v11 = [v7 firstMessage];
  if (v11)
  {
    v12 = v11;
    v13 = &CLKComplicationFamilyDescription_ptr;
    v67 = v8;
    v68 = v9;
    do
    {
      v14 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v72 = v12;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "applying incoming message: %@", buf, 0xCu);
      }

      v15 = [v12 messageType];
      v16 = 0;
      if (v15 > 4)
      {
        if (v15 <= 7)
        {
          if (v15 != 5)
          {
            if (v15 != 6)
            {
              v17 = [v12 complicationCollectionIdentifier];
              v20 = [v9 objectForKeyedSubscript:v17];
              v22 = [v12 complicationClientID];
              v23 = [v12 complicationDescriptor];
              if (v22)
              {
                [v20 withoutNotifyingSyncObserverRemoveComplicationSampleTemplatesForClientIdentifier:v22 descriptor:v23];
              }

              goto LABEL_32;
            }

            v17 = [v12 complicationCollectionIdentifier];
            v35 = [v9 objectForKeyedSubscript:v17];
            v36 = [v12 complicationClientID];
            v37 = [v12 complicationDescriptor];
            v49 = [v12 payloadData];
            v50 = NTKDClientSampleDataFromPayloadData();

            if (v36 && v50)
            {
              [v35 withoutNotifyingSyncObserverSetComplicationSampleData:v50 forClientIdentifier:v36 descriptor:v37];
            }

LABEL_50:
            v16 = 0;
LABEL_72:
            v9 = v68;
            goto LABEL_73;
          }

          v28 = [v12 payloadData];
          v17 = NTKDOrderedUUIDsFromPayloadData();

          if (v17)
          {
            [v8 withoutNotifyingSyncObserverSetOrderedUUIDs:v17];
          }

LABEL_53:
          v16 = 0;
          goto LABEL_74;
        }

        switch(v15)
        {
          case 8:
            v17 = [v12 complicationCollectionIdentifier];
            v35 = [v9 objectForKeyedSubscript:v17];
            v36 = [v12 complicationClientID];
            v37 = [v12 complicationDescriptor];
            v38 = [v12 payloadData];
            v39 = NTKDClientSampleTemplateFromPayloadData();

            v40 = [v12 complicationFamily];
            v41 = v40;
            if (v36 && v39 && v40)
            {
              [v35 withoutNotifyingUpdateLocalizableSampleDataTemplate:v39 forClientIdentifier:v36 descriptor:v37 family:{objc_msgSend(v40, "integerValue")}];
            }

            goto LABEL_50;
          case 9:
            v17 = [v12 faceUUID];
            v51 = +[NSUUID UUID];
            v52 = [v51 UUIDString];
            v53 = [NSString stringWithFormat:@"In-%@.zip", v52];

            v54 = sub_10003A5E8();
            v55 = [v54 stringByAppendingPathComponent:v53];

            if ([v12 getPayloadDataIntoFile:v55])
            {
              v56 = [v8 deviceUUID];
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

            if (v17 && v57)
            {
              v64 = [v12 faceUUID];
              [v8 withoutNotifyingSyncObserverUpgradeFace:v57 forUUID:v64];
            }

            goto LABEL_72;
          case 10:
            v17 = [v12 complicationCollectionIdentifier];
            v20 = [v9 objectForKeyedSubscript:v17];
            v25 = [v12 complicationClientID];
            v26 = [v12 payloadData];
            v27 = NTKDComplicationDescriptorsFromPayloadData();

            if (v25 && v27)
            {
              [v20 withoutNotifyingUpdateComplicationDescriptors:v27 forClientIdentifier:v25];
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
        if (v15 > 1)
        {
          if (v15 == 2)
          {
            v17 = [v12 faceUUID];
            v29 = +[NSUUID UUID];
            v30 = [v29 UUIDString];
            v31 = [NSString stringWithFormat:@"In-%@.zip", v30];

            v32 = sub_10003A5E8();
            v33 = [v32 stringByAppendingPathComponent:v31];

            if ([v12 getPayloadDataIntoFile:v33])
            {
              v34 = NTKDFaceResourceDirectoryFromPayloadPath();
            }

            else
            {
              v34 = 0;
            }

            v58 = +[NSFileManager defaultManager];
            [v58 removeItemAtPath:v33 error:0];

            if (v17)
            {
              [v67 withoutNotifyingSyncObserverUpdateFaceForUUID:v17 withResourceDirectory:v34];
              [v67 synchronize];
              v59 = +[NSFileManager defaultManager];
              [v59 removeItemAtPath:v34 error:0];
            }

            v16 = 0;
            v13 = &CLKComplicationFamilyDescription_ptr;
            v8 = v67;
            goto LABEL_74;
          }

          if (v15 == 3)
          {
            v17 = [v12 faceUUID];
            if (v17)
            {
              [v8 withoutNotifyingSyncObserverRemoveFaceForUUID:v17];
            }
          }

          else
          {
            v24 = [v12 payloadData];
            v17 = NTKDSelectedUUIDFromPayloadData();

            if (v17)
            {
              [v8 withoutNotifyingSyncObserverSetSelectedUUID:v17];
            }
          }

          goto LABEL_53;
        }

        switch(v15)
        {
          case -1:
            v17 = _NTKLoggingObjectForDomain();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              sub_10003FFF4(&v69, v70);
            }

            goto LABEL_53;
          case 0:
            v17 = [v12 faceUUID];
            v42 = +[NSUUID UUID];
            v43 = [v42 UUIDString];
            v44 = [NSString stringWithFormat:@"In-%@.zip", v43];

            v45 = sub_10003A5E8();
            v46 = [v45 stringByAppendingPathComponent:v44];

            if ([v12 getPayloadDataIntoFile:v46])
            {
              v47 = [v8 deviceUUID];
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
              v72 = v17;
              v73 = 2114;
              v74 = v48;
              _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_INFO, "incoming - %{public}@ - added face %{public}@", buf, 0x16u);
            }

            if (v17 && v48)
            {
              v62 = [v12 faceUUID];
              [v8 withoutNotifyingSyncObserverAddFace:v48 forUUID:v62];
            }

            goto LABEL_72;
          case 1:
            v17 = [v12 faceUUID];
            v18 = [v12 payloadData];
            v19 = [v8 deviceUUID];
            v20 = NTKDFaceConfigurationFromPayloadData();

            v21 = _NTKLoggingObjectForDomain();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              *buf = 138543618;
              v72 = v17;
              v73 = 2114;
              v74 = v20;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "incoming - %{public}@ - updated face config %{public}@", buf, 0x16u);
            }

            if (v17 && v20)
            {
              [v8 withoutNotifyingSyncObserverUpdateFaceForUUID:v17 withConfiguration:v20];
            }

            goto LABEL_32;
        }
      }

      [v8 synchronize];
      [v9 enumerateKeysAndObjectsUsingBlock:&stru_10005E398];
      [v7 dequeueFirstMessage];
      if (v16)
      {
        v65 = [v13[265] defaultManager];
        [v65 removeItemAtPath:v16 error:0];
      }

      objc_autoreleasePoolPop(v10);
      v10 = objc_autoreleasePoolPush();
      v12 = [v7 firstMessage];
    }

    while (v12);
  }

  objc_autoreleasePoolPop(v10);

  return 1;
}

- (void)_queue_addPayloadToMessage:(id)a3 withFaceStore:(id)a4 complicationStores:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  v11 = [v7 messageType];
  if (v11 <= 4)
  {
    if (v11 <= 1)
    {
      if (!v11)
      {
        v26 = [v7 faceUUID];
        v12 = [v8 faceForUUID:v26];

        v27 = +[NSUUID UUID];
        v28 = [v27 UUIDString];
        v19 = [NSString stringWithFormat:@"Out-%@.zip", v28];

        v29 = sub_10003A5E8();
        v20 = [v29 stringByAppendingPathComponent:v19];

        if (sub_10000610C(v12, 0, v20))
        {
          [v7 setPayloadDataFromFile:v20];
        }

        v30 = +[NSFileManager defaultManager];
        [v30 removeItemAtPath:v20 error:0];

        v31 = _NTKLoggingObjectForDomain();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = [v7 faceUUID];
          *buf = 138543618;
          v51 = v32;
          v52 = 2114;
          v53 = v12;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Outgoing - %{public}@ - added face %{public}@", buf, 0x16u);
        }

        goto LABEL_25;
      }

      if (v11 != 1)
      {
        goto LABEL_32;
      }

      v17 = [v7 faceUUID];
      v12 = [v8 faceForUUID:v17];

      v18 = NTKDPayloadDataFromFaceConfiguration();
      [v7 setPayloadData:v18];

      v19 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = [v7 faceUUID];
        *buf = 138543618;
        v51 = v20;
        v52 = 2114;
        v53 = v12;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Outgoing - %{public}@ - updated face %{public}@", buf, 0x16u);
LABEL_26:
      }

LABEL_30:

      goto LABEL_31;
    }

    if (v11 == 2)
    {
      v33 = [v7 faceUUID];
      v34 = [v8 faceForUUID:v33];
      v12 = [v34 resourceDirectory];

      v35 = +[NSUUID UUID];
      v36 = [v35 UUIDString];
      v19 = [NSString stringWithFormat:@"Out-%@.zip", v36];

      v37 = sub_10003A5E8();
      v20 = [v37 stringByAppendingPathComponent:v19];

      v38 = +[NTKDZIPArchivist sharedArchivist];
      v39 = [v38 zippedDataForPath:v12 toZipFile:v20];

      if (!v39)
      {
LABEL_24:
        v31 = +[NSFileManager defaultManager];
        [v31 removeItemAtPath:v20 error:0];
LABEL_25:

        goto LABEL_26;
      }

LABEL_23:
      [v7 setPayloadDataFromFile:v20];
      goto LABEL_24;
    }

    if (v11 != 4)
    {
      goto LABEL_32;
    }

    v12 = [v8 selectedUUID];
    v21 = NTKDPayloadDataFromSelectedUUID();
LABEL_29:
    v19 = v21;
    [v7 setPayloadData:v21];
    goto LABEL_30;
  }

  if (v11 <= 7)
  {
    if (v11 != 5)
    {
      if (v11 != 6)
      {
        goto LABEL_32;
      }

      v12 = [v7 complicationClientID];
      v19 = [v7 complicationDescriptor];
      v22 = [v7 complicationCollectionIdentifier];
      v23 = [v9 objectForKeyedSubscript:v22];

      v24 = [v23 complicationSampleDataForClientID:v12 descriptor:v19 shouldInflate:1];
      v25 = NTKDPayloadDataFromComplicationSampleData();
      [v7 setPayloadData:v25];

      goto LABEL_30;
    }

    v12 = [v8 orderedUUIDs];
    v21 = NTKDPayloadDataFromOrderedUUIDs();
    goto LABEL_29;
  }

  switch(v11)
  {
    case 8:
      v12 = [v7 complicationClientID];
      v19 = [v7 complicationDescriptor];
      v40 = [v7 complicationFamily];
      v41 = [v40 integerValue];

      v42 = [v7 complicationCollectionIdentifier];
      v43 = [v9 objectForKeyedSubscript:v42];

      v44 = [v43 sampleTemplateForClientIdentifier:v12 descriptor:v19 family:v41];
      v45 = NTKDPayloadDataFromComplicationTemplate();
      [v7 setPayloadData:v45];

      goto LABEL_30;
    case 9:
      v46 = [v7 faceUUID];
      v12 = [v8 faceForUUID:v46];

      v47 = +[NSUUID UUID];
      v48 = [v47 UUIDString];
      v19 = [NSString stringWithFormat:@"Out-%@.zip", v48];

      v49 = sub_10003A5E8();
      v20 = [v49 stringByAppendingPathComponent:v19];

      if (!sub_10000610C(v12, 0, v20))
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    case 10:
      v12 = [v7 complicationClientID];
      v13 = [v7 complicationCollectionIdentifier];
      v14 = [v9 objectForKeyedSubscript:v13];

      v15 = [v14 complicationDescriptorsForClientIdentifier:v12];
      v16 = NTKDPayloadDataFromComplicationDescriptors();
      [v7 setPayloadData:v16];

LABEL_31:
      break;
  }

LABEL_32:
  objc_autoreleasePoolPop(v10);
}

- (void)_queue_executeIfSyncQueuesAreEmpty:(id)a3
{
  v4 = a3;
  v5 = sub_1000059C8();
  v6 = [(NTKDSyncController *)self _queue_outgoingMessageListForDeviceUUID:v5];
  if ([v6 hasMessages])
  {
  }

  else
  {
    v7 = sub_1000059C8();
    v8 = [(NTKDSyncController *)self _queue_incomingMessageListForDeviceUUID:v7];
    v9 = [v8 hasMessages];

    if ((v9 & 1) == 0)
    {
      v4[2](v4);
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