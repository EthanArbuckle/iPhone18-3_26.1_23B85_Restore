@interface NTKDCollectionStore
+ (id)_sharedCollectionStoreObserverQueue;
+ (id)_sharedCollectionStoreQueue;
+ (void)cleanupOrphanedStoresWithCurrentDeviceUUIDs:(id)a3;
+ (void)enumerateStoreIdentifiersWithBlock:(id)a3;
- (BOOL)_queue_addFace:(id)a3 forUUID:(id)a4;
- (BOOL)_queue_isEmptyExceptForUUID:(id)a3;
- (BOOL)_queue_setOrderedUUIDs:(id)a3;
- (BOOL)_queue_setSelectedUUID:(id)a3;
- (BOOL)isBuildVersionOutdated;
- (BOOL)isEmpty;
- (BOOL)isInitialSetupComplete;
- (BOOL)isStoreVersionPreGrace;
- (BOOL)refusesToDeleteLastFace;
- (NTKDCollectionStore)initWithCollectionIdentifier:(id)a3 deviceUUID:(id)a4;
- (float)version;
- (id)_deviceBuildVersion;
- (id)_queue_computeValidationHash;
- (id)_queue_copyAllFacesByUUID;
- (id)_queue_faceForUUID:(id)a3;
- (id)_storeBuildVersion;
- (id)description;
- (id)faceForMigrationForUUID:(id)a3;
- (id)faceForUUID:(id)a3;
- (id)orderedUUIDs;
- (id)selectedUUID;
- (int64_t)faceStyleForUUID:(id)a3;
- (void)_addFace:(id)a3 forUUID:(id)a4 skipSyncObserver:(BOOL)a5;
- (void)_onObserverQueue_async:(id)a3;
- (void)_onQueue_async:(id)a3;
- (void)_queue_clearRemovalsThroughSeqId:(id)a3;
- (void)_queue_incrementSeqId;
- (void)_queue_loadFullCollectionForObserver:(id)a3 completion:(id)a4;
- (void)_queue_notifyDidAddFace:(id)a3 forUUID:(id)a4 skipSyncObserver:(BOOL)a5;
- (void)_queue_notifyDidRemoveFaceOfStyle:(int64_t)a3 forUUID:(id)a4 skipSyncObserver:(BOOL)a5 completion:(id)a6;
- (void)_queue_notifyDidUpdateFaceForUUID:(id)a3 withConfiguration:(id)a4 skipSyncObserver:(BOOL)a5;
- (void)_queue_notifyDidUpdateFaceForUUID:(id)a3 withResourceDirectory:(id)a4 skipSyncObserver:(BOOL)a5 completion:(id)a6;
- (void)_queue_notifyDidUpdateOrderedUUIDs:(id)a3 skipSyncObserver:(BOOL)a4;
- (void)_queue_notifyDidUpdateSelectedUUID:(id)a3 skipSyncObserver:(BOOL)a4 suppressingCallbackToObserver:(id)a5;
- (void)_queue_notifyDidUpgradeFace:(id)a3 forUUID:(id)a4 skipSyncObserver:(BOOL)a5;
- (void)_queue_playbackChangesForObserver:(id)a3 fromSeqId:(id)a4;
- (void)_queue_reloadFullCollectionForObserver:(id)a3 completion:(id)a4;
- (void)_removeFaceForUUID:(id)a3 skipSyncObserver:(BOOL)a4;
- (void)_resetWithFaces:(id)a3 orderedUUIDs:(id)a4 selectedUUID:(id)a5;
- (void)_setOrderedUUIDs:(id)a3 skipSyncObserver:(BOOL)a4;
- (void)_setSelectedUUID:(id)a3 skipSyncObserver:(BOOL)a4 suppressingCallbackToObserver:(id)a5;
- (void)_updateFaceForUUID:(id)a3 withConfiguration:(id)a4 skipSyncObserver:(BOOL)a5;
- (void)_updateFaceForUUID:(id)a3 withResourceDirectory:(id)a4 skipSyncObserver:(BOOL)a5;
- (void)_upgradeFace:(id)a3 forUUID:(id)a4 skipSyncObserver:(BOOL)a5;
- (void)addObserver:(id)a3;
- (void)addObserver:(id)a3 withSeqId:(id)a4;
- (void)clearSyncObserver;
- (void)flushAndComputeValidationHashWithObserverCallback:(id)a3;
- (void)flushWithObserverCallback:(id)a3;
- (void)markInitialSetupComplete;
- (void)persistCurrentBuildVersion;
- (void)removeObserver:(id)a3;
- (void)removeUnusedResourceDirectories;
- (void)setRefusesToDeleteLastFace:(BOOL)a3;
- (void)setSyncObserver:(id)a3 withSeqId:(id)a4;
- (void)setVersion:(float)a3;
- (void)swapInTheseFaces:(id)a3;
@end

@implementation NTKDCollectionStore

+ (void)enumerateStoreIdentifiersWithBlock:(id)a3
{
  v3 = a3;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = sub_100015E0C;
  v51 = sub_100015E1C;
  v52 = 0;
  v4 = sub_100015E24();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015E68;
  block[3] = &unk_10005D6A0;
  block[4] = &v47;
  dispatch_sync(v4, block);

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v5 = v48[5];
  v6 = [v5 countByEnumeratingWithState:&v42 objects:v55 count:16];
  if (v6)
  {
    v7 = *v43;
    do
    {
      v8 = 0;
      do
      {
        if (*v43 != v7)
        {
          objc_enumerationMutation(v5);
        }

        (*(v3 + 2))(v3, *(*(&v42 + 1) + 8 * v8), 0);
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v42 objects:v55 count:16];
    }

    while (v6);
  }

  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_100015E0C;
  v40 = sub_100015E1C;
  v41 = 0;
  v9 = sub_100015E24();
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_100015F28;
  v35[3] = &unk_10005D6A0;
  v35[4] = &v36;
  dispatch_sync(v9, v35);

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v37[5];
  v10 = [obj countByEnumeratingWithState:&v31 objects:v54 count:16];
  if (v10)
  {
    v19 = *v32;
    do
    {
      v11 = 0;
      do
      {
        if (*v32 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v31 + 1) + 8 * v11);
        v25 = 0;
        v26 = &v25;
        v27 = 0x3032000000;
        v28 = sub_100015E0C;
        v29 = sub_100015E1C;
        v30 = 0;
        v13 = sub_100015E24();
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_1000160E8;
        v24[3] = &unk_10005D6C8;
        v24[4] = v12;
        v24[5] = &v25;
        dispatch_sync(v13, v24);

        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v14 = v26[5];
        v15 = [v14 countByEnumeratingWithState:&v20 objects:v53 count:16];
        if (v15)
        {
          v16 = *v21;
          do
          {
            v17 = 0;
            do
            {
              if (*v21 != v16)
              {
                objc_enumerationMutation(v14);
              }

              (*(v3 + 2))(v3, *(*(&v20 + 1) + 8 * v17), v12);
              v17 = v17 + 1;
            }

            while (v15 != v17);
            v15 = [v14 countByEnumeratingWithState:&v20 objects:v53 count:16];
          }

          while (v15);
        }

        _Block_object_dispose(&v25, 8);
        v11 = v11 + 1;
      }

      while (v11 != v10);
      v10 = [obj countByEnumeratingWithState:&v31 objects:v54 count:16];
    }

    while (v10);
  }

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v47, 8);
}

+ (void)cleanupOrphanedStoresWithCurrentDeviceUUIDs:(id)a3
{
  v3 = a3;
  v4 = sub_100015E24();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016250;
  block[3] = &unk_10005CA70;
  v7 = v3;
  v5 = v3;
  dispatch_sync(v4, block);
}

+ (id)_sharedCollectionStoreQueue
{
  if (qword_100066C18 != -1)
  {
    sub_10003E464();
  }

  v3 = qword_100066C10;

  return v3;
}

+ (id)_sharedCollectionStoreObserverQueue
{
  if (qword_100066C28 != -1)
  {
    sub_10003E478();
  }

  v3 = qword_100066C20;

  return v3;
}

- (NTKDCollectionStore)initWithCollectionIdentifier:(id)a3 deviceUUID:(id)a4
{
  v61 = a3;
  v60 = a4;
  v67.receiver = self;
  v67.super_class = NTKDCollectionStore;
  v64 = [(NTKDCollectionStore *)&v67 init];
  if (!v64)
  {
    goto LABEL_30;
  }

  v6 = [v61 copy];
  collectionIdentifier = v64->_collectionIdentifier;
  v64->_collectionIdentifier = v6;

  objc_storeStrong(&v64->_deviceUUID, a4);
  v8 = +[NTKDCollectionStore _sharedCollectionStoreQueue];
  queue = v64->_queue;
  v64->_queue = v8;

  v10 = +[NTKDCollectionStore _sharedCollectionStoreObserverQueue];
  observerCallbackQueue = v64->_observerCallbackQueue;
  v64->_observerCallbackQueue = v10;

  v12 = +[NSHashTable weakObjectsHashTable];
  observers = v64->_observers;
  v64->_observers = v12;

  v14 = objc_alloc_init(NSMutableDictionary);
  facesByUUID = v64->_facesByUUID;
  v64->_facesByUUID = v14;

  deviceUUID = v64->_deviceUUID;
  v17 = v64->_collectionIdentifier;
  if (deviceUUID)
  {
    sub_1000164F4(deviceUUID);
  }

  else
  {
    sub_100016570();
  }
  v18 = ;
  v19 = [v18 stringByAppendingPathComponent:v17];

  storeDirectory = v64->_storeDirectory;
  v64->_storeDirectory = v19;

  v21 = v64->_storeDirectory;
  v22 = +[NSFileManager defaultManager];
  v23 = [(NSString *)v21 stringByAppendingPathComponent:@"setup-complete"];

  LOBYTE(v21) = [v22 fileExistsAtPath:v23];
  v64->_initialSetupComplete = v21;
  v24 = sub_100015E24();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016EA4;
  block[3] = &unk_10005CA70;
  v63 = v64;
  v66 = v63;
  dispatch_sync(v24, block);

  v25 = [(NSString *)v64->_storeDirectory stringByAppendingPathComponent:@"sequence-id.string"];
  v26 = sub_100016FD0(v25);
  seqId = v63->_seqId;
  v63->_seqId = v26;

  v28 = v64->_storeDirectory;
  v29 = [_NTKDCollectionManifest alloc];
  v30 = [(NSString *)v28 stringByAppendingPathComponent:@"manifest.plist"];

  v31 = [(_NTKDCollectionManifest *)v29 initWithContentsOfFile:v30];
  if (v31)
  {
    v32 = v31;
  }

  else
  {
    v32 = +[_NTKDCollectionManifest emptyManifest];
  }

  v33 = v32;

  manifest = v63->_manifest;
  v63->_manifest = v33;

  v35 = v64->_storeDirectory;
  v36 = [(NSString *)v35 stringByAppendingPathComponent:@"selected-uuid.string"];
  v37 = [NSString stringWithContentsOfFile:v36 encoding:4 error:0];

  if (!v37)
  {
    goto LABEL_13;
  }

  v38 = [[NSUUID alloc] initWithUUIDString:v37];
  if (!v38)
  {
    v39 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = [(NSString *)v35 stringByAppendingPathComponent:@"selected-uuid.string"];
      *buf = 138412546;
      v73 = v40;
      v74 = 2112;
      v75 = v37;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Error reading selected UUID at path %@: string could not be converted to UUID: %@", buf, 0x16u);
    }

LABEL_13:
    v38 = 0;
  }

  selectedUUID = v63->_selectedUUID;
  v63->_selectedUUID = v38;

  v59 = v64->_storeDirectory;
  v42 = +[NSMutableDictionary dictionary];
  v43 = [(NSString *)v59 stringByAppendingPathComponent:@"deleted.plist"];
  v62 = [NSDictionary dictionaryWithContentsOfFile:v43];

  if (v62)
  {
    objc_opt_class();
    objc_opt_class();
    NTKValidateDictionary();
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v44 = v62;
  v45 = [v44 countByEnumeratingWithState:&v68 objects:buf count:16];
  if (v45)
  {
    v46 = *v69;
    do
    {
      for (i = 0; i != v45; i = i + 1)
      {
        if (*v69 != v46)
        {
          objc_enumerationMutation(v44);
        }

        v48 = *(*(&v68 + 1) + 8 * i);
        v49 = [[NSUUID alloc] initWithUUIDString:v48];
        if (!v49)
        {
          [NSException raise:NSInvalidUnarchiveOperationException format:@"string could not be converted to UUID: %@", v48];
        }

        v50 = [v44 objectForKey:v48];
        [(NSMutableDictionary *)v42 setObject:v50 forKey:v49];
      }

      v45 = [v44 countByEnumeratingWithState:&v68 objects:buf count:16];
    }

    while (v45);
  }

  removals = v63->_removals;
  v63->_removals = v42;

  v52 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
  {
    v53 = v64->_collectionIdentifier;
    v54 = v64->_deviceUUID;
    v55 = @"no";
    if (v64->_initialSetupComplete)
    {
      v55 = @"yes";
    }

    v56 = v63->_seqId;
    v57 = v63->_manifest;
    *buf = 138413314;
    v73 = v53;
    v74 = 2112;
    v75 = v54;
    v76 = 2112;
    v77 = v55;
    v78 = 2112;
    v79 = v56;
    v80 = 2112;
    v81 = v57;
    _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "store<%@,%@> created with setupComplete: %@, seqId: %@, manifest: %@", buf, 0x34u);
  }

LABEL_30:
  return v64;
}

- (void)addObserver:(id)a3 withSeqId:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100017104;
  v7[3] = &unk_10005CC38;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(NTKDCollectionStore *)v8 _onQueue_async:v7];
}

- (void)addObserver:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000172FC;
  v4[3] = &unk_10005CA98;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(NTKDCollectionStore *)v5 _onQueue_async:v4];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000173A0;
  v7[3] = &unk_10005CA98;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)setSyncObserver:(id)a3 withSeqId:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100017470;
  block[3] = &unk_10005CC38;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(queue, block);
}

- (void)clearSyncObserver
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100017560;
  block[3] = &unk_10005CA70;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (float)version
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001761C;
  v5[3] = &unk_10005D6C8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[6];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setVersion:(float)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10001771C;
  v3[3] = &unk_10005D730;
  v3[4] = self;
  v4 = a3;
  [(NTKDCollectionStore *)self _onQueue_async:v3];
}

- (id)_storeBuildVersion
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100015E0C;
  v10 = sub_100015E1C;
  v11 = &stru_10005E800;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100017974;
  v5[3] = &unk_10005D6C8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)_deviceBuildVersion
{
  v3 = NTKBuildVersion();
  v4 = [(NTKDCollectionStore *)self deviceUUID];
  v5 = [CLKDevice pdrDeviceForPairingID:v4];

  v6 = [v5 valueForProperty:PDRDevicePropertyKeySystemBuildVersion];
  v7 = [NSString stringWithFormat:@"%@-%@", v3, v6];

  return v7;
}

- (void)persistCurrentBuildVersion
{
  [(NTKDCollectionStore *)self _deviceBuildVersion];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100017B60;
  v4[3] = &unk_10005CA98;
  v5 = v4[4] = self;
  v3 = v5;
  [(NTKDCollectionStore *)self _onQueue_async:v4];
}

- (BOOL)isBuildVersionOutdated
{
  v3 = [(NTKDCollectionStore *)self _storeBuildVersion];
  v4 = [(NTKDCollectionStore *)self _deviceBuildVersion];
  v5 = [v4 isEqualToString:v3];

  return v5 ^ 1;
}

- (BOOL)isStoreVersionPreGrace
{
  v2 = [(NTKDCollectionStore *)self _storeBuildVersion];
  v3 = v2;
  v4 = !v2 || ([v2 isEqualToString:&stru_10005E800] & 1) != 0 || objc_msgSend(v3, "compare:options:", @"17", 64) == -1;

  return v4;
}

- (BOOL)refusesToDeleteLastFace
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100017DE8;
  v5[3] = &unk_10005D6C8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setRefusesToDeleteLastFace:(BOOL)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100017E6C;
  v3[3] = &unk_10005D758;
  v3[4] = self;
  v4 = a3;
  [(NTKDCollectionStore *)self _onQueue_async:v3];
}

- (BOOL)isInitialSetupComplete
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100017F28;
  v5[3] = &unk_10005D6C8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)markInitialSetupComplete
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100017FA8;
  v2[3] = &unk_10005CA70;
  v2[4] = self;
  [(NTKDCollectionStore *)self _onQueue_async:v2];
}

- (BOOL)isEmpty
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100018190;
  v5[3] = &unk_10005D6C8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)orderedUUIDs
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100015E0C;
  v10 = sub_100015E1C;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000182B4;
  v5[3] = &unk_10005D6C8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)selectedUUID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100015E0C;
  v10 = sub_100015E1C;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001840C;
  v5[3] = &unk_10005D6C8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (int64_t)faceStyleForUUID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = -1;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000184F0;
  block[3] = &unk_10005D780;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

- (id)faceForUUID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100015E0C;
  v16 = sub_100015E1C;
  v17 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100018638;
  block[3] = &unk_10005D780;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)faceForMigrationForUUID:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = sub_100015E0C;
    v16 = sub_100015E1C;
    v17 = 0;
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000187C8;
    block[3] = &unk_10005D780;
    v11 = &v12;
    block[4] = self;
    v10 = v4;
    dispatch_sync(queue, block);
    v7 = v13[5];

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)swapInTheseFaces:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = objc_alloc_init(NSMutableArray);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * v11);
        v13 = +[NSUUID UUID];
        [v6 addObject:v13];
        [v5 setObject:v12 forKey:v13];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v9);
  }

  v14 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = v5;
    v22 = 2112;
    v23 = self;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Swapping in faces (%@) for collection (%@)", buf, 0x16u);
  }

  v15 = [v6 firstObject];
  [(NTKDCollectionStore *)self _resetWithFaces:v5 orderedUUIDs:v6 selectedUUID:v15];
}

- (void)removeUnusedResourceDirectories
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100018DEC;
  v2[3] = &unk_10005CA70;
  v2[4] = self;
  [(NTKDCollectionStore *)self _onQueue_async:v2];
}

- (id)description
{
  collectionIdentifier = self->_collectionIdentifier;
  deviceUUID = self->_deviceUUID;
  if (deviceUUID)
  {
    v4 = [(NSUUID *)deviceUUID UUIDString];
    v5 = [NSString stringWithFormat:@"%@:%@", collectionIdentifier, v4];
  }

  else
  {
    v5 = [NSString stringWithFormat:@"%@:%@", collectionIdentifier, @"global"];
  }

  return v5;
}

- (void)_setOrderedUUIDs:(id)a3 skipSyncObserver:(BOOL)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100019378;
  v6[3] = &unk_10005CFE8;
  v7 = self;
  v8 = a3;
  v9 = a4;
  v5 = v8;
  [(NTKDCollectionStore *)v7 _onQueue_async:v6];
}

- (void)_setSelectedUUID:(id)a3 skipSyncObserver:(BOOL)a4 suppressingCallbackToObserver:(id)a5
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000194E0;
  v9[3] = &unk_10005D7D0;
  v10 = self;
  v11 = a3;
  v13 = a4;
  v12 = a5;
  v7 = v12;
  v8 = v11;
  [(NTKDCollectionStore *)v10 _onQueue_async:v9];
}

- (void)_addFace:(id)a3 forUUID:(id)a4 skipSyncObserver:(BOOL)a5
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100019604;
  v9[3] = &unk_10005D7D0;
  v10 = self;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v7 = v12;
  v8 = v11;
  [(NTKDCollectionStore *)v10 _onQueue_async:v9];
}

- (void)_updateFaceForUUID:(id)a3 withConfiguration:(id)a4 skipSyncObserver:(BOOL)a5
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100019748;
  v9[3] = &unk_10005D7D0;
  v10 = self;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v7 = v12;
  v8 = v11;
  [(NTKDCollectionStore *)v10 _onQueue_async:v9];
}

- (void)_updateFaceForUUID:(id)a3 withResourceDirectory:(id)a4 skipSyncObserver:(BOOL)a5
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100019B2C;
  v9[3] = &unk_10005D7D0;
  v10 = self;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v7 = v12;
  v8 = v11;
  [(NTKDCollectionStore *)v10 _onQueue_async:v9];
}

- (void)_upgradeFace:(id)a3 forUUID:(id)a4 skipSyncObserver:(BOOL)a5
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001A044;
  v10[3] = &unk_10005D7D0;
  v11 = a3;
  v12 = self;
  v13 = a4;
  v14 = a5;
  v8 = v13;
  v9 = v11;
  [(NTKDCollectionStore *)self _onQueue_async:v10];
}

- (void)_removeFaceForUUID:(id)a3 skipSyncObserver:(BOOL)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001A264;
  v6[3] = &unk_10005CFE8;
  v7 = self;
  v8 = a3;
  v9 = a4;
  v5 = v8;
  [(NTKDCollectionStore *)v7 _onQueue_async:v6];
}

- (void)_resetWithFaces:(id)a3 orderedUUIDs:(id)a4 selectedUUID:(id)a5
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001A8E0;
  v10[3] = &unk_10005CFC0;
  v11 = self;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v7 = v14;
  v8 = v13;
  v9 = v12;
  [(NTKDCollectionStore *)v11 _onQueue_async:v10];
}

- (void)flushWithObserverCallback:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001B04C;
  v4[3] = &unk_10005CAC0;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(NTKDCollectionStore *)v5 _onQueue_async:v4];
}

- (void)flushAndComputeValidationHashWithObserverCallback:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001B178;
  v4[3] = &unk_10005CAC0;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(NTKDCollectionStore *)v5 _onQueue_async:v4];
}

- (void)_onQueue_async:(id)a3
{
  v4 = a3;
  sub_100007294(@"com.apple.ntkd.collectionstore.asyncwork");
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001B2EC;
  block[3] = &unk_10005CB10;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);
}

- (void)_onObserverQueue_async:(id)a3
{
  v4 = a3;
  sub_100007294(@"com.apple.ntkd.collectionstore.asyncobservercallback");
  observerCallbackQueue = self->_observerCallbackQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001B3D0;
  block[3] = &unk_10005CB10;
  v8 = v4;
  v6 = v4;
  dispatch_async(observerCallbackQueue, block);
}

- (id)_queue_faceForUUID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_facesByUUID objectForKey:v4];
    if (v5)
    {
      goto LABEL_9;
    }

    storeDirectory = self->_storeDirectory;
    v7 = [(NTKDCollectionStore *)self deviceUUID];
    v5 = sub_100018850(storeDirectory, v4, v7, 0);

    if (v5)
    {
      [(NSMutableDictionary *)self->_facesByUUID setObject:v5 forKey:v4];
      goto LABEL_9;
    }

    v8 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10003E730();
    }
  }

  v5 = 0;
LABEL_9:

  return v5;
}

- (BOOL)_queue_isEmptyExceptForUUID:(id)a3
{
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(_NTKDCollectionManifest *)self->_manifest orderedUUIDs];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ((NTKEqualObjects() & 1) == 0)
        {
          v11 = [(NTKDCollectionStore *)self _queue_faceForUUID:v10];

          if (v11)
          {
            v12 = 0;
            goto LABEL_12;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_12:

  return v12;
}

- (BOOL)_queue_addFace:(id)a3 forUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v12 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      collectionIdentifier = self->_collectionIdentifier;
      deviceUUID = self->_deviceUUID;
      v28 = 138412802;
      v29 = collectionIdentifier;
      v30 = 2112;
      v31 = deviceUUID;
      v32 = 2112;
      v33 = v7;
      v24 = "<%@,%@> ignoring attempt to add nil face for UUID: %@";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v24, &v28, 0x20u);
    }

LABEL_11:
    v21 = 0;
    goto LABEL_12;
  }

  if (!-[_NTKDCollectionManifest addUUID:withFaceStyle:](self->_manifest, "addUUID:withFaceStyle:", v7, [v6 faceStyle]))
  {
    v12 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v25 = self->_collectionIdentifier;
      v26 = self->_deviceUUID;
      v28 = 138412802;
      v29 = v25;
      v30 = 2112;
      v31 = v26;
      v32 = 2112;
      v33 = v7;
      v24 = "<%@,%@> did not add face (because face already present) for UUID: %@";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v8 = sub_10002045C(self->_storeDirectory, v7);
  v9 = +[NSFileManager defaultManager];
  [v9 createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:0 error:0];

  sub_1000198CC(self->_storeDirectory, v7, v6);
  sub_10001A5D8(self->_storeDirectory, self->_manifest);
  storeDirectory = self->_storeDirectory;
  v11 = [v6 resourceDirectory];
  v12 = sub_100019D58(storeDirectory, v7, v11);

  [v6 setResourceDirectory:v12];
  facesByUUID = self->_facesByUUID;
  v14 = [v6 copy];
  [(NSMutableDictionary *)facesByUUID setObject:v14 forKey:v7];

  [(NTKDCollectionStore *)self _queue_incrementSeqId];
  seqId = self->_seqId;
  v16 = sub_10001B93C(self->_storeDirectory, v7);
  sub_100019988(seqId, v16);

  v17 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = self->_collectionIdentifier;
    v19 = self->_deviceUUID;
    v20 = self->_seqId;
    v28 = 138413314;
    v29 = v18;
    v30 = 2112;
    v31 = v19;
    v32 = 2112;
    v33 = v20;
    v34 = 2112;
    v35 = v7;
    v36 = 2112;
    v37 = v6;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "<%@,%@,%@> add face for UUID %@: %@", &v28, 0x34u);
  }

  v21 = 1;
LABEL_12:

  return v21;
}

- (BOOL)_queue_setSelectedUUID:(id)a3
{
  v5 = a3;
  selectedUUID = self->_selectedUUID;
  v7 = NTKEqualObjects();
  if (v7)
  {
    v8 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      collectionIdentifier = self->_collectionIdentifier;
      deviceUUID = self->_deviceUUID;
      v24 = 138412802;
      v25 = collectionIdentifier;
      v26 = 2112;
      v27 = deviceUUID;
      v28 = 2112;
      v29 = v5;
      v11 = "<%@,%@> ignoring attempt to select already-selected UUID %@";
      v12 = v8;
      v13 = 32;
LABEL_9:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v11, &v24, v13);
    }
  }

  else
  {
    objc_storeStrong(&self->_selectedUUID, a3);
    v14 = self->_selectedUUID;
    v15 = self->_storeDirectory;
    if (v14)
    {
      v16 = [(NSUUID *)v14 UUIDString];
      v17 = [(NSString *)v15 stringByAppendingPathComponent:@"selected-uuid.string"];

      [v16 writeToFile:v17 atomically:1 encoding:4 error:0];
    }

    else
    {
      v16 = +[NSFileManager defaultManager];
      v17 = [(NSString *)v15 stringByAppendingPathComponent:@"selected-uuid.string"];

      [v16 removeItemAtPath:v17 error:0];
    }

    [(NTKDCollectionStore *)self _queue_incrementSeqId];
    seqId = self->_seqId;
    v19 = [(NSString *)self->_storeDirectory stringByAppendingPathComponent:@"selected-uuid-sequence-id.string"];
    sub_100019988(seqId, v19);

    v8 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v20 = self->_collectionIdentifier;
      v21 = self->_deviceUUID;
      v22 = self->_seqId;
      v24 = 138413058;
      v25 = v20;
      v26 = 2112;
      v27 = v21;
      v28 = 2112;
      v29 = v22;
      v30 = 2112;
      v31 = v5;
      v11 = "<%@,%@,%@> set selected UUID: %@";
      v12 = v8;
      v13 = 42;
      goto LABEL_9;
    }
  }

  return v7 ^ 1;
}

- (BOOL)_queue_setOrderedUUIDs:(id)a3
{
  v4 = a3;
  v5 = [(_NTKDCollectionManifest *)self->_manifest updateOrderWithUUIDs:v4];
  if (v5)
  {
    sub_10001A5D8(self->_storeDirectory, self->_manifest);
    [(NTKDCollectionStore *)self _queue_incrementSeqId];
    seqId = self->_seqId;
    v7 = [(NSString *)self->_storeDirectory stringByAppendingPathComponent:@"manifest-sequence-id.string"];
    sub_100019988(seqId, v7);

    v8 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      collectionIdentifier = self->_collectionIdentifier;
      deviceUUID = self->_deviceUUID;
      v11 = self->_seqId;
      v12 = [v4 firstObject];
      v16 = 138413058;
      v17 = collectionIdentifier;
      v18 = 2112;
      v19 = deviceUUID;
      v20 = 2112;
      v21 = v11;
      v22 = 2112;
      v23 = v12;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "<%@,%@,%@> set ordered UUIDs (first uuid = %@)", &v16, 0x2Au);
    }
  }

  else
  {
    v8 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = self->_collectionIdentifier;
      v14 = self->_deviceUUID;
      v16 = 138412546;
      v17 = v13;
      v18 = 2112;
      v19 = v14;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "<%@,%@> ignoring reorder request that would not change face order", &v16, 0x16u);
    }
  }

  return v5;
}

- (void)_queue_incrementSeqId
{
  v3 = [NSNumber numberWithUnsignedInteger:[(NSNumber *)self->_seqId unsignedIntegerValue]+ 1];
  seqId = self->_seqId;
  self->_seqId = v3;

  v5 = self->_seqId;
  v6 = [(NSString *)self->_storeDirectory stringByAppendingPathComponent:@"sequence-id.string"];
  sub_100019988(v5, v6);
}

- (id)_queue_copyAllFacesByUUID
{
  v3 = +[NSMutableDictionary dictionary];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(_NTKDCollectionManifest *)self->_manifest orderedUUIDs];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [(NTKDCollectionStore *)self _queue_faceForUUID:v9];
        v11 = [v10 copy];

        if (v11)
        {
          [v3 setObject:v11 forKey:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)_queue_clearRemovalsThroughSeqId:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  removals = self->_removals;
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_10001C0A8;
  v12 = &unk_10005D890;
  v7 = v4;
  v13 = v7;
  v8 = v5;
  v14 = v8;
  [(NSMutableDictionary *)removals enumerateKeysAndObjectsUsingBlock:&v9];
  if ([v8 count])
  {
    [(NSMutableDictionary *)self->_removals removeObjectsForKeys:v8];
    sub_10001A648(self->_storeDirectory, self->_removals);
  }
}

- (id)_queue_computeValidationHash
{
  v33 = objc_alloc_init(NSMutableString);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = [(_NTKDCollectionManifest *)self->_manifest orderedUUIDs];
  v3 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v37;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v37 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = [(NTKDCollectionStore *)self _queue_faceForUUID:*(*(&v36 + 1) + 8 * i)];
        v8 = [v7 configuration];
        v9 = [v8 copy];

        [v9 setResourceDirectoryExists:0];
        v34[0] = _NSConcreteStackBlock;
        v34[1] = 3221225472;
        v34[2] = sub_10001C6EC;
        v34[3] = &unk_10005D8B8;
        v35 = v9;
        v10 = v9;
        [v7 enumerateComplicationSlotsWithBlock:v34];
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = [v10 description];
        [v33 appendFormat:@"%@ [%@], ", v12, v13];
      }

      v4 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v4);
  }

  [v33 appendFormat:@"%@", self->_selectedUUID];
  v14 = [v33 length];
  v15 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v43 = v33;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "collection store string: %@", buf, 0xCu);
  }

  if (v14 >= 0x400)
  {
    v16 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v33 substringFromIndex:1023];
      *buf = 138412290;
      v43 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "collection store string, part 2: %@", buf, 0xCu);
    }

    if (v14 >= 0x7FF)
    {
      v18 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [v33 substringFromIndex:2046];
        *buf = 138412290;
        v43 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "collection store string, part 3: %@", buf, 0xCu);
      }

      if (v14 >= 0xBFE)
      {
        v20 = _NTKLoggingObjectForDomain();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = [v33 substringFromIndex:3069];
          *buf = 138412290;
          v43 = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "collection store string, part 4: %@", buf, 0xCu);
        }

        if (v14 >= 0xFFD)
        {
          v22 = _NTKLoggingObjectForDomain();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = [v33 substringFromIndex:4092];
            *buf = 138412290;
            v43 = v23;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "collection store string, part 5: %@", buf, 0xCu);
          }

          if (v14 >> 2 >= 0x4FF)
          {
            v24 = _NTKLoggingObjectForDomain();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              v25 = [v33 substringFromIndex:5115];
              *buf = 138412290;
              v43 = v25;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "collection store string, part 6: %@", buf, 0xCu);
            }
          }
        }
      }
    }
  }

  v26 = [v33 UTF8String];
  v27 = strlen(v26);
  CC_MD5(v26, v27, buf);
  v28 = [NSMutableString stringWithCapacity:32];
  for (j = 0; j != 16; ++j)
  {
    [v28 appendFormat:@"%02x", buf[j]];
  }

  v30 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *v40 = 138412290;
    v41 = v28;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "generated library collection store hash: %@", v40, 0xCu);
  }

  return v28;
}

- (void)_queue_playbackChangesForObserver:(id)a3 fromSeqId:(id)a4
{
  v47 = a3;
  v6 = a4;
  v7 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    collectionIdentifier = self->_collectionIdentifier;
    deviceUUID = self->_deviceUUID;
    *buf = 138412802;
    v84 = collectionIdentifier;
    v85 = 2112;
    v86 = deviceUUID;
    v87 = 2112;
    v88 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "store<%@,%@> playback changes since seqId %@", buf, 0x20u);
  }

  +[NSMutableDictionary dictionary];
  v79[0] = _NSConcreteStackBlock;
  v79[1] = 3221225472;
  v79[2] = sub_10001CFD4;
  v10 = v79[3] = &unk_10005D8E0;
  v80 = v10;
  v11 = objc_retainBlock(v79);
  v12 = [(NSString *)self->_storeDirectory stringByAppendingPathComponent:@"selected-uuid-sequence-id.string"];
  v13 = sub_100016FD0(v12);

  if (v13 && sub_1000171F8(v6, v13))
  {
    v76[0] = _NSConcreteStackBlock;
    v76[1] = 3221225472;
    v76[2] = sub_10001D050;
    v76[3] = &unk_10005CC38;
    v76[4] = self;
    v77 = v13;
    v78 = v47;
    (v11[2])(v11, v77, v76);
  }

  v43 = v10;
  v14 = [(NSString *)self->_storeDirectory stringByAppendingPathComponent:@"manifest-sequence-id.string"];
  v15 = sub_100016FD0(v14);

  if (v15 && sub_1000171F8(v6, v15))
  {
    v73[0] = _NSConcreteStackBlock;
    v73[1] = 3221225472;
    v73[2] = sub_10001D1CC;
    v73[3] = &unk_10005CC38;
    v73[4] = self;
    v74 = v15;
    v75 = v47;
    (v11[2])(v11, v74, v73);
  }

  v42 = v13;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = [(_NTKDCollectionManifest *)self->_manifest orderedUUIDs];
  v46 = [obj countByEnumeratingWithState:&v69 objects:v82 count:16];
  if (v46)
  {
    v45 = *v70;
    do
    {
      for (i = 0; i != v46; i = i + 1)
      {
        if (*v70 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v69 + 1) + 8 * i);
        v18 = sub_10001B93C(self->_storeDirectory, v17);
        v19 = sub_100016FD0(v18);

        if (v19 && sub_1000171F8(v6, v19))
        {
          v66[0] = _NSConcreteStackBlock;
          v66[1] = 3221225472;
          v66[2] = sub_10001D374;
          v66[3] = &unk_10005CFC0;
          v66[4] = self;
          v66[5] = v17;
          v20 = v19;
          v67 = v20;
          v68 = v47;
          (v11[2])(v11, v20, v66);
        }

        v21 = sub_10001A174(self->_storeDirectory, v17);
        v22 = sub_100016FD0(v21);

        if (v22 && sub_1000171F8(v6, v22))
        {
          v63[0] = _NSConcreteStackBlock;
          v63[1] = 3221225472;
          v63[2] = sub_10001D508;
          v63[3] = &unk_10005CFC0;
          v63[4] = self;
          v63[5] = v17;
          v64 = v19;
          v65 = v47;
          (v11[2])(v11, v22, v63);
        }

        v23 = sub_100019A10(self->_storeDirectory, v17);
        v24 = sub_100016FD0(v23);

        if (v24 && sub_1000171F8(v6, v24))
        {
          v60[0] = _NSConcreteStackBlock;
          v60[1] = 3221225472;
          v60[2] = sub_10001D69C;
          v60[3] = &unk_10005CFC0;
          v60[4] = self;
          v60[5] = v17;
          v25 = v24;
          v61 = v25;
          v62 = v47;
          (v11[2])(v11, v25, v60);
        }

        v26 = sub_100019ECC(self->_storeDirectory, v17);
        v27 = sub_100016FD0(v26);

        if (v27 && sub_1000171F8(v6, v27))
        {
          v57[0] = _NSConcreteStackBlock;
          v57[1] = 3221225472;
          v57[2] = sub_10001D88C;
          v57[3] = &unk_10005CFC0;
          v57[4] = self;
          v57[5] = v17;
          v28 = v27;
          v58 = v28;
          v59 = v47;
          (v11[2])(v11, v28, v57);
        }
      }

      v46 = [obj countByEnumeratingWithState:&v69 objects:v82 count:16];
    }

    while (v46);
  }

  removals = self->_removals;
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_10001DA34;
  v52[3] = &unk_10005D948;
  v30 = v6;
  v53 = v30;
  v31 = v11;
  v56 = v31;
  v54 = self;
  v32 = v47;
  v55 = v32;
  [(NSMutableDictionary *)removals enumerateKeysAndObjectsUsingBlock:v52];
  v33 = [v43 allKeys];
  v34 = [v33 sortedArrayUsingComparator:&stru_10005D988];

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v35 = v34;
  v36 = [v35 countByEnumeratingWithState:&v48 objects:v81 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v49;
    do
    {
      for (j = 0; j != v37; j = j + 1)
      {
        if (*v49 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = [v43 objectForKey:*(*(&v48 + 1) + 8 * j)];
        v40[2]();
      }

      v37 = [v35 countByEnumeratingWithState:&v48 objects:v81 count:16];
    }

    while (v37);
  }
}

- (void)_queue_loadFullCollectionForObserver:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_NTKDCollectionManifest *)self->_manifest orderedUUIDs];
  v9 = [v8 copy];

  v10 = self->_selectedUUID;
  v11 = [(NTKDCollectionStore *)self _queue_copyAllFacesByUUID];
  v12 = self->_seqId;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10001DE48;
  v19[3] = &unk_10005D9B0;
  v20 = v6;
  v21 = self;
  v22 = v9;
  v23 = v10;
  v24 = v11;
  v25 = v12;
  v26 = v7;
  v13 = v7;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  v17 = v9;
  v18 = v6;
  [(NTKDCollectionStore *)self _onObserverQueue_async:v19];
}

- (void)_queue_reloadFullCollectionForObserver:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_10001E03C;
  v14 = &unk_10005D9D8;
  objc_copyWeak(&v17, &location);
  v8 = v6;
  v15 = v8;
  v9 = v7;
  v16 = v9;
  v10 = objc_retainBlock(&v11);
  [(NTKDCollectionStore *)self _queue_loadFullCollectionForObserver:v8 completion:v10, v11, v12, v13, v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)_queue_notifyDidUpdateSelectedUUID:(id)a3 skipSyncObserver:(BOOL)a4 suppressingCallbackToObserver:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = self->_seqId;
  v11 = self->_syncObserver;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10001E3E4;
  v28[3] = &unk_10005DA00;
  v33 = a4;
  v20 = v11;
  v29 = v20;
  v30 = self;
  v12 = v10;
  v31 = v12;
  v13 = v8;
  v32 = v13;
  [(NTKDCollectionStore *)self _onObserverQueue_async:v28];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = self->_observers;
  v15 = [(NSHashTable *)v14 countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    do
    {
      v18 = 0;
      do
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v24 + 1) + 8 * v18);
        if (v19 != v9)
        {
          v21[0] = _NSConcreteStackBlock;
          v21[1] = 3221225472;
          v21[2] = sub_10001E40C;
          v21[3] = &unk_10005CFC0;
          v21[4] = v19;
          v21[5] = self;
          v22 = v13;
          v23 = v12;
          [(NTKDCollectionStore *)self _onObserverQueue_async:v21];
        }

        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [(NSHashTable *)v14 countByEnumeratingWithState:&v24 objects:v34 count:16];
    }

    while (v16);
  }
}

- (void)_queue_notifyDidUpdateOrderedUUIDs:(id)a3 skipSyncObserver:(BOOL)a4
{
  v6 = a3;
  v7 = self->_seqId;
  v8 = self->_syncObserver;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10001E64C;
  v25[3] = &unk_10005DA00;
  v30 = a4;
  v17 = v8;
  v26 = v17;
  v27 = self;
  v9 = v7;
  v28 = v9;
  v10 = v6;
  v29 = v10;
  [(NTKDCollectionStore *)self _onObserverQueue_async:v25];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = self->_observers;
  v12 = [(NSHashTable *)v11 countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      v15 = 0;
      do
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v21 + 1) + 8 * v15);
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_10001E674;
        v18[3] = &unk_10005CFC0;
        v18[4] = v16;
        v18[5] = self;
        v19 = v10;
        v20 = v9;
        [(NTKDCollectionStore *)self _onObserverQueue_async:v18];

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [(NSHashTable *)v11 countByEnumeratingWithState:&v21 objects:v31 count:16];
    }

    while (v13);
  }
}

- (void)_queue_notifyDidUpdateFaceForUUID:(id)a3 withConfiguration:(id)a4 skipSyncObserver:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self->_seqId;
  v11 = self->_syncObserver;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10001E8EC;
  v30[3] = &unk_10005DA28;
  v36 = a5;
  v20 = v11;
  v31 = v20;
  v32 = self;
  v12 = v10;
  v33 = v12;
  v13 = v8;
  v34 = v13;
  v14 = v9;
  v35 = v14;
  [(NTKDCollectionStore *)self _onObserverQueue_async:v30];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = self->_observers;
  v15 = [(NSHashTable *)obj countByEnumeratingWithState:&v26 objects:v37 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v27;
    do
    {
      v18 = 0;
      do
      {
        if (*v27 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v26 + 1) + 8 * v18);
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_10001E918;
        v22[3] = &unk_10005D060;
        v22[4] = v19;
        v22[5] = self;
        v23 = v13;
        v24 = v14;
        v25 = v12;
        [(NTKDCollectionStore *)self _onObserverQueue_async:v22];

        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [(NSHashTable *)obj countByEnumeratingWithState:&v26 objects:v37 count:16];
    }

    while (v16);
  }
}

- (void)_queue_notifyDidUpgradeFace:(id)a3 forUUID:(id)a4 skipSyncObserver:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self->_seqId;
  v11 = self->_syncObserver;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10001EB94;
  v30[3] = &unk_10005DA28;
  v36 = a5;
  v20 = v11;
  v31 = v20;
  v32 = self;
  v12 = v10;
  v33 = v12;
  v13 = v8;
  v34 = v13;
  v14 = v9;
  v35 = v14;
  [(NTKDCollectionStore *)self _onObserverQueue_async:v30];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = self->_observers;
  v15 = [(NSHashTable *)obj countByEnumeratingWithState:&v26 objects:v37 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v27;
    do
    {
      v18 = 0;
      do
      {
        if (*v27 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v26 + 1) + 8 * v18);
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_10001EBC0;
        v22[3] = &unk_10005D060;
        v22[4] = v19;
        v22[5] = self;
        v23 = v13;
        v24 = v14;
        v25 = v12;
        [(NTKDCollectionStore *)self _onObserverQueue_async:v22];

        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [(NSHashTable *)obj countByEnumeratingWithState:&v26 objects:v37 count:16];
    }

    while (v16);
  }
}

- (void)_queue_notifyDidUpdateFaceForUUID:(id)a3 withResourceDirectory:(id)a4 skipSyncObserver:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v25 = a3;
  v24 = a4;
  block = a6;
  v10 = self->_seqId;
  v11 = dispatch_group_create();
  v12 = self->_syncObserver;
  v13 = v12;
  if (v7)
  {
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_10001EF34;
    v41[3] = &unk_10005CC38;
    v14 = v42;
    v42[0] = v12;
    v42[1] = self;
    v15 = &v43;
    v43 = v10;
    [(NTKDCollectionStore *)self _onObserverQueue_async:v41];
  }

  else
  {
    if (!v12)
    {
      goto LABEL_6;
    }

    dispatch_group_enter(v11);
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_10001EF44;
    v35[3] = &unk_10005DA50;
    v14 = v36;
    v36[0] = v13;
    v36[1] = self;
    v15 = &v37;
    v37 = v25;
    v38 = v24;
    v39 = v10;
    v40 = v11;
    [(NTKDCollectionStore *)self _onObserverQueue_async:v35];
  }

LABEL_6:
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = self->_observers;
  v16 = [(NSHashTable *)obj countByEnumeratingWithState:&v31 objects:v44 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v32;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        v20 = v10;
        if (*v32 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v31 + 1) + 8 * i);
        dispatch_group_enter(v11);
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_10001EFFC;
        v26[3] = &unk_10005DA50;
        v26[4] = v21;
        v26[5] = self;
        v27 = v25;
        v28 = v24;
        v10 = v20;
        v29 = v20;
        v30 = v11;
        [(NTKDCollectionStore *)self _onObserverQueue_async:v26];
      }

      v17 = [(NSHashTable *)obj countByEnumeratingWithState:&v31 objects:v44 count:16];
    }

    while (v17);
  }

  dispatch_group_notify(v11, self->_queue, block);
}

- (void)_queue_notifyDidAddFace:(id)a3 forUUID:(id)a4 skipSyncObserver:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self->_seqId;
  v11 = self->_syncObserver;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10001F31C;
  v30[3] = &unk_10005DA28;
  v36 = a5;
  v20 = v11;
  v31 = v20;
  v32 = self;
  v12 = v10;
  v33 = v12;
  v13 = v8;
  v34 = v13;
  v14 = v9;
  v35 = v14;
  [(NTKDCollectionStore *)self _onObserverQueue_async:v30];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = self->_observers;
  v15 = [(NSHashTable *)obj countByEnumeratingWithState:&v26 objects:v37 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v27;
    do
    {
      v18 = 0;
      do
      {
        if (*v27 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v26 + 1) + 8 * v18);
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_10001F348;
        v22[3] = &unk_10005D060;
        v22[4] = v19;
        v22[5] = self;
        v23 = v13;
        v24 = v14;
        v25 = v12;
        [(NTKDCollectionStore *)self _onObserverQueue_async:v22];

        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [(NSHashTable *)obj countByEnumeratingWithState:&v26 objects:v37 count:16];
    }

    while (v16);
  }
}

- (void)_queue_notifyDidRemoveFaceOfStyle:(int64_t)a3 forUUID:(id)a4 skipSyncObserver:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v25 = a4;
  block = a6;
  v9 = self->_seqId;
  v10 = dispatch_group_create();
  v11 = self->_syncObserver;
  v12 = v11;
  if (v7)
  {
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_10001F68C;
    v41[3] = &unk_10005CC38;
    v13 = v42;
    v42[0] = v11;
    v42[1] = self;
    v14 = &v43;
    v43 = v9;
    [(NTKDCollectionStore *)self _onObserverQueue_async:v41];
  }

  else
  {
    if (!v11)
    {
      goto LABEL_6;
    }

    dispatch_group_enter(v10);
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_10001F69C;
    v35[3] = &unk_10005DA78;
    v13 = v36;
    v36[0] = v12;
    v36[1] = self;
    v40 = a3;
    v14 = &v37;
    v37 = v25;
    v38 = v9;
    v39 = v10;
    [(NTKDCollectionStore *)self _onObserverQueue_async:v35];
  }

LABEL_6:
  v21 = v12;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = self->_observers;
  v15 = [(NSHashTable *)obj countByEnumeratingWithState:&v31 objects:v44 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v32;
    do
    {
      v18 = 0;
      do
      {
        v19 = v9;
        if (*v32 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v31 + 1) + 8 * v18);
        dispatch_group_enter(v10);
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_10001F754;
        v26[3] = &unk_10005DA78;
        v26[4] = v20;
        v26[5] = self;
        v30 = a3;
        v27 = v25;
        v9 = v19;
        v28 = v19;
        v29 = v10;
        [(NTKDCollectionStore *)self _onObserverQueue_async:v26];

        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [(NSHashTable *)obj countByEnumeratingWithState:&v31 objects:v44 count:16];
    }

    while (v16);
  }

  dispatch_group_notify(v10, self->_queue, block);
}

@end