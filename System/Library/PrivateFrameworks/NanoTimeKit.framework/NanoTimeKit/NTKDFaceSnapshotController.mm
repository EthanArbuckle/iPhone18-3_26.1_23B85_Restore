@interface NTKDFaceSnapshotController
- (BOOL)_queue_cleanCache;
- (BOOL)_queue_cleanCacheExcludingKeys:(id)keys;
- (BOOL)_queue_cleanContexts;
- (BOOL)_queue_cleanSnapshotKeysWithBlankComplications;
- (BOOL)_snapshotExistsForKey:(id)key;
- (NTKDFaceSnapshotController)init;
- (id)_preferencesKeyForCollectionStore:(id)store;
- (id)_queue_allSnapshotObjects;
- (id)_queue_snapshotObjectsForFace:(id)face complicationTemplateChanged:(BOOL)changed;
- (void)_endSnapshottingActivityDidTakeSnapshot:(BOOL)snapshot;
- (void)_enumerateAllFacesForDeviceUUID:(id)d block:(id)block;
- (void)_enumerateRemoteComplicationsForFace:(id)face block:(id)block;
- (void)_loadComplicationCollection;
- (void)_notifyFaceSnapshotChangedForKey:(id)key;
- (void)_onObserverQueue_async:(id)queue_async;
- (void)_onQueue_async:(id)queue_async;
- (void)_queue_snapshotFaces:(id)faces completion:(id)completion;
- (void)_queue_updateAllSnapshots;
- (void)_queue_updateSnapshotForFace:(id)face inStore:(id)store;
- (void)_queue_updateSnapshots:(id)snapshots completion:(id)completion;
- (void)_startSnapshottingActivity;
- (void)_writeImageToDisk:(id)disk imageName:(id)name;
- (void)addObserver:(id)observer;
- (void)collectionStore:(id)store didAddFace:(id)face forUUID:(id)d seqId:(id)id;
- (void)collectionStore:(id)store didRemoveFaceOfStyle:(int64_t)style forUUID:(id)d seqId:(id)id acknowledge:(id)acknowledge;
- (void)collectionStore:(id)store didUpdateFaceForUUID:(id)d withConfiguration:(id)configuration seqId:(id)id;
- (void)collectionStore:(id)store didUpdateFaceForUUID:(id)d withResourceDirectory:(id)directory seqId:(id)id acknowledge:(id)acknowledge;
- (void)collectionStore:(id)store didUpdateOrderedUUIDs:(id)ds seqId:(id)id;
- (void)collectionStore:(id)store didUpdateSelectedUUID:(id)d seqId:(id)id;
- (void)collectionStore:(id)store didUpgradeFace:(id)face forUUID:(id)d seqId:(id)id;
- (void)collectionStore:(id)store loadOrderedUUIDs:(id)ds selectedUUID:(id)d facesByUUID:(id)iD seqId:(id)id acknowledge:(id)acknowledge;
- (void)collectionStoreHasBeenCreated:(id)created;
- (void)collectionStoreWillBePurged:(id)purged;
- (void)complicationCollection:(id)collection didUpdateSampleTemplateForClient:(id)client;
- (void)complicationCollectionDidLoad:(id)load;
- (void)dealloc;
- (void)performAfterCompletingCurrentlyPendingSnapshots:(id)snapshots;
- (void)queue_updateAddableAndGallerySnapshotsWithContinuationBlock:(id)block finishedBlock:(id)finishedBlock;
- (void)removeObserver:(id)observer;
- (void)requestSnapshotOfFace:(id)face options:(id)options completion:(id)completion;
- (void)snapshotFace:(id)face options:(id)options completion:(id)completion;
- (void)snapshotLibrarySelectedFaceForDeviceUUID:(id)d options:(id)options completion:(id)completion;
- (void)updateAddableAndGallerySnapshotsWithContinuationBlock:(id)block finishedBlock:(id)finishedBlock;
- (void)updateAllSnapshots;
@end

@implementation NTKDFaceSnapshotController

- (NTKDFaceSnapshotController)init
{
  v39.receiver = self;
  v39.super_class = NTKDFaceSnapshotController;
  v2 = [(NTKDFaceSnapshotController *)&v39 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSOperationQueue);
    xpcSnapshotOperationQueue = v2->_xpcSnapshotOperationQueue;
    v2->_xpcSnapshotOperationQueue = v3;

    [(NSOperationQueue *)v2->_xpcSnapshotOperationQueue setName:@"com.apple.nanotimekitd.snapshot.queue"];
    [(NSOperationQueue *)v2->_xpcSnapshotOperationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v2->_xpcSnapshotOperationQueue setQualityOfService:17];
    v5 = [NSString stringWithFormat:@"com.apple.ntkd.facesnapshotcontroller.%p", v2];
    v6 = v5;
    uTF8String = [v5 UTF8String];
    v8 = dispatch_queue_attr_make_initially_inactive(0);
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(v8, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create(uTF8String, v9);
    queue = v2->_queue;
    v2->_queue = v10;

    objc_initWeak(&location, v2);
    if ((NTKDebugDaemonRunningSnapshotTestingTool() & 1) != 0 || (NTKDebugSnapshotInNanoTimeKitDaemon() & 1) == 0)
    {
      v12 = 0;
    }

    else
    {
      v12 = 15;
    }

    sub_100007294(@"delaying-snapshots");
    v13 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v41) = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Delaying snapshots for %is", buf, 8u);
    }

    v14 = dispatch_time(0, 1000000000 * v12);
    v15 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000E22C;
    block[3] = &unk_10005CA48;
    objc_copyWeak(&v37, &location);
    dispatch_after(v14, v15, block);

    v16 = [NSString stringWithFormat:@"com.apple.ntkd.facesnapshotcontroller.observercallback.%p", v2];

    v17 = v16;
    v18 = dispatch_queue_create([v16 UTF8String], 0);
    observerCallbackQueue = v2->_observerCallbackQueue;
    v2->_observerCallbackQueue = v18;

    v20 = +[NSHashTable weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = v20;

    v22 = objc_opt_new();
    observersLock = v2->_observersLock;
    v2->_observersLock = v22;

    v24 = +[NTKDCollectionCoordinator sharedInstance];
    [v24 addCollectionLifecycleObserver:v2];

    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_10000E2D8;
    v34[3] = &unk_10005CA70;
    v25 = v2;
    v35 = v25;
    [(NTKDFaceSnapshotController *)v25 _onQueue_async:v34];
    v26 = dispatch_semaphore_create(4);
    setImageForKeyOperationsCount = v25->_setImageForKeyOperationsCount;
    v25->_setImageForKeyOperationsCount = v26;

    if (NTKDebugSnapshotInNanoTimeKitDaemon())
    {
      v28 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = objc_opt_class();
        v30 = NSStringFromClass(v29);
        *buf = 138412546;
        v41 = v30;
        v42 = 2080;
        v43 = "__PRETTY_FUNCTION__";
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%@: %s snapshotInDaemon: YES; creating a snapshottter", buf, 0x16u);
      }

      v31 = objc_alloc_init(NTKFaceSnapshotter);
      snapshotter = v25->_snapshotter;
      v25->_snapshotter = v31;
    }

    objc_destroyWeak(&v37);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)dealloc
{
  dispatch_activate(self->_queue);
  v3 = +[NTKDCollectionCoordinator sharedInstance];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000EC58;
  v6[3] = &unk_10005D1F0;
  v6[4] = self;
  [v3 enumerateAllStoresWithHandler:v6];

  [(NTKComplicationCollection *)self->_complicationCollection removeObserver:self];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = NTKDFaceSnapshotController;
  [(NTKDFaceSnapshotController *)&v5 dealloc];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  v5 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = observerCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "adding NTKDFaceSnapshotController observer - %@", &v6, 0xCu);
  }

  [(NSRecursiveLock *)self->_observersLock lock];
  [(NSHashTable *)self->_observers addObject:observerCopy];
  [(NSRecursiveLock *)self->_observersLock unlock];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  v5 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = observerCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "removing NTKDFaceSnapshotController observer - %@", &v6, 0xCu);
  }

  [(NSRecursiveLock *)self->_observersLock lock];
  [(NSHashTable *)self->_observers removeObject:observerCopy];
  [(NSRecursiveLock *)self->_observersLock unlock];
}

- (void)updateAllSnapshots
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10000EE90;
  v2[3] = &unk_10005CA70;
  v2[4] = self;
  [(NTKDFaceSnapshotController *)self _onQueue_async:v2];
}

- (void)_queue_updateAllSnapshots
{
  v3 = sub_100005974();

  if (v3)
  {
    self->_needToUpdateSnapshotsForFacesWithThirdPartyComplications = [(NTKComplicationCollection *)self->_complicationCollection hasLoaded]^ 1;
    [(NTKDFaceSnapshotController *)self _queue_allSnapshotObjects];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10000EFAC;
    v6 = v5[3] = &unk_10005CA98;
    selfCopy = self;
    v4 = v6;
    [(NTKDFaceSnapshotController *)self _queue_updateSnapshots:v4 completion:v5];
  }

  else
  {
    v4 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Nothing to snapshot. No paired device", buf, 2u);
    }
  }
}

- (void)snapshotFace:(id)face options:(id)options completion:(id)completion
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000F198;
  v9[3] = &unk_10005D240;
  completionCopy = completion;
  v8 = completionCopy;
  [(NTKDFaceSnapshotController *)self requestSnapshotOfFace:face options:options completion:v9];
}

- (void)requestSnapshotOfFace:(id)face options:(id)options completion:(id)completion
{
  faceCopy = face;
  optionsCopy = options;
  completionCopy = completion;
  v11 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    *buf = 138412802;
    v59 = v13;
    v60 = 2080;
    v61 = "[NTKDFaceSnapshotController requestSnapshotOfFace:options:completion:]";
    v62 = 2112;
    v63 = faceCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@: %s: In here. Face: %@", buf, 0x20u);
  }

  if (faceCopy)
  {
    if (NTKDebugSnapshotInNanoTimeKitDaemon())
    {
      v14 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        *buf = 138412546;
        v59 = v16;
        v60 = 2080;
        v61 = "__PRETTY_FUNCTION__";
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%@: %s snapshotInDaemon: YES", buf, 0x16u);
      }

      [(NTKFaceSnapshotter *)self->_snapshotter requestSnapshotOfFace:faceCopy options:optionsCopy completion:completionCopy];
    }

    else if (completionCopy)
    {
      v20 = [faceCopy copy];

      resourceDirectory = [v20 resourceDirectory];
      [v20 setResourceDirectoryByTransferringOwnership:resourceDirectory];

      v22 = [optionsCopy valueForKey:NTKSnapshotPersistableKey];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v22 BOOLValue])
      {
        v23 = NTKCachedSnapshotResultForFace();
        v24 = _NTKLoggingObjectForDomain();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = objc_opt_class();
          NSStringFromClass(v25);
          v27 = v26 = v22;
          *buf = 138412802;
          v59 = v27;
          v60 = 2080;
          v61 = "__PRETTY_FUNCTION__";
          v62 = 2112;
          v63 = v23;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%@: %s wantsToPersistSnapshot: YES, result: %@", buf, 0x20u);

          v22 = v26;
        }

        if (v23)
        {
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10000F944;
          block[3] = &unk_10005CBE8;
          v56 = v23;
          v57 = completionCopy;
          v28 = v23;
          dispatch_async(&_dispatch_main_q, block);

          faceCopy = v20;
          goto LABEL_29;
        }

        v29 = 1;
      }

      else
      {
        v29 = 0;
      }

      v30 = [optionsCopy valueForKey:NTKSnapshotPriorityKey];
      objc_opt_class();
      v49 = v30;
      if ((objc_opt_isKindOfClass() & 1) != 0 && (v31 = [v30 unsignedIntegerValue] - 1, v31 <= 2))
      {
        v32 = dword_1000549A8[v31];
        v33 = 4 * v31 + 17;
        v34 = 4 * v31 - 4;
      }

      else
      {
        v32 = 0;
        v34 = -4;
        v33 = QOS_CLASS_UTILITY;
      }

      v50[0] = _NSConcreteStackBlock;
      v50[1] = 3221225472;
      v50[2] = sub_10000F95C;
      v50[3] = &unk_10005D308;
      v50[4] = self;
      faceCopy = v20;
      v51 = faceCopy;
      v54 = v29;
      v53 = completionCopy;
      v52 = optionsCopy;
      v35 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v33, v32, v50);
      v36 = [NSBlockOperation blockOperationWithBlock:v35];
      [v36 setQueuePriority:v34];
      [(NSOperationQueue *)self->_xpcSnapshotOperationQueue addOperation:v36];
      v37 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = objc_opt_class();
        v39 = NSStringFromClass(v38);
        v48 = v22;
        xpcSnapshotOperationQueue = self->_xpcSnapshotOperationQueue;
        progress = [(NSOperationQueue *)xpcSnapshotOperationQueue progress];
        completedUnitCount = [progress completedUnitCount];
        progress2 = [(NSOperationQueue *)self->_xpcSnapshotOperationQueue progress];
        totalUnitCount = [progress2 totalUnitCount];
        *buf = 138413570;
        v60 = 2080;
        v59 = v39;
        v61 = "[NTKDFaceSnapshotController requestSnapshotOfFace:options:completion:]";
        v62 = 2112;
        v63 = v36;
        v64 = 2112;
        v65 = xpcSnapshotOperationQueue;
        v22 = v48;
        v66 = 2048;
        v67 = completedUnitCount;
        v68 = 2048;
        v69 = totalUnitCount;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%@: %s adding the operation %@ to the queue:%@, count: %lld/%lld", buf, 0x3Eu);
      }
    }

    else
    {
      v44 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        v45 = objc_opt_class();
        v46 = NSStringFromClass(v45);
        *buf = 138412546;
        v59 = v46;
        v60 = 2080;
        v61 = "[NTKDFaceSnapshotController requestSnapshotOfFace:options:completion:]";
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Returning early: No block given for: %@ %s", buf, 0x16u);
      }
    }
  }

  else
  {
    v17 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      *buf = 138412546;
      v59 = v19;
      v60 = 2080;
      v61 = "[NTKDFaceSnapshotController requestSnapshotOfFace:options:completion:]";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Returning early: Face is nil. %@ %s", buf, 0x16u);
    }

    faceCopy = [NSError errorWithDomain:@"com.apple.nanotimekid.daemon" code:11000 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, faceCopy);
  }

LABEL_29:
}

- (void)snapshotLibrarySelectedFaceForDeviceUUID:(id)d options:(id)options completion:(id)completion
{
  dCopy = d;
  optionsCopy = options;
  completionCopy = completion;
  v11 = _NTKLoggingObjectForDomain();
  v12 = v11;
  if (dCopy)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138412546;
      v23 = v14;
      v24 = 2080;
      v25 = "[NTKDFaceSnapshotController snapshotLibrarySelectedFaceForDeviceUUID:options:completion:]";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Inside: %@ %s", buf, 0x16u);
    }

    v15 = +[NTKDCollectionCoordinator sharedInstance];
    v16 = NTKCollectionIdentifierLibraryFaces;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100010700;
    v17[3] = &unk_10005D330;
    v18 = dCopy;
    v21 = completionCopy;
    selfCopy = self;
    v20 = optionsCopy;
    [v15 checkoutStoreForCollectionIdentifier:v16 deviceUUID:v18 withHandler:v17];
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10003E220();
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)updateAddableAndGallerySnapshotsWithContinuationBlock:(id)block finishedBlock:(id)finishedBlock
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100010958;
  v7[3] = &unk_10005D358;
  selfCopy = self;
  blockCopy = block;
  finishedBlockCopy = finishedBlock;
  v5 = finishedBlockCopy;
  v6 = blockCopy;
  [(NTKDFaceSnapshotController *)selfCopy _onQueue_async:v7];
}

- (void)queue_updateAddableAndGallerySnapshotsWithContinuationBlock:(id)block finishedBlock:(id)finishedBlock
{
  blockCopy = block;
  finishedBlockCopy = finishedBlock;
  v8 = +[NTKDCollectionCoordinator sharedInstance];
  v9 = +[NSMutableArray array];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_100010E54;
  v38[3] = &unk_10005CF98;
  v10 = v8;
  v39 = v10;
  v11 = v9;
  v40 = v11;
  [v10 enumerateAllStoresIncludingUnpaired:0 withHandler:v38];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100010F84;
  v36[3] = &unk_10005D380;
  v12 = finishedBlockCopy;
  v37 = v12;
  v13 = objc_retainBlock(v36);
  v14 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v11 count];
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Prewarm: %lu stores to enumerate.", &buf, 0xCu);
  }

  if ([v11 count])
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v46 = 0x3032000000;
    v47 = sub_10000FE84;
    v48 = sub_10000FE94;
    firstObject = [v11 firstObject];
    [v11 removeObjectAtIndex:0];
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = sub_10000FE84;
    v34 = sub_10000FE94;
    orderedUUIDs = [*(*(&buf + 1) + 40) orderedUUIDs];
    v35 = [orderedUUIDs mutableCopy];

    v17 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      collectionIdentifier = [*(*(&buf + 1) + 40) collectionIdentifier];
      v19 = [v31[5] count];
      *v41 = 138412546;
      *&v41[4] = collectionIdentifier;
      *&v41[12] = 2048;
      *&v41[14] = v19;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Prewarm: Store %@ has %lu face UUIDs to enumerate.", v41, 0x16u);
    }

    *v41 = 0;
    *&v41[8] = v41;
    *&v41[16] = 0x3032000000;
    v42 = sub_100010F9C;
    v43 = sub_100010FC8;
    v44 = 0;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100010FD0;
    v22[3] = &unk_10005D3F8;
    v22[4] = self;
    v25 = blockCopy;
    p_buf = &buf;
    v23 = v10;
    v26 = v13;
    v28 = v41;
    v29 = &v30;
    v24 = v11;
    v20 = objc_retainBlock(v22);
    v21 = *(*&v41[8] + 40);
    *(*&v41[8] + 40) = v20;

    (*(*(*&v41[8] + 40) + 16))();
    _Block_object_dispose(v41, 8);

    _Block_object_dispose(&v30, 8);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    (v13[2])(v13, 1);
  }
}

- (void)performAfterCompletingCurrentlyPendingSnapshots:(id)snapshots
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100011810;
  v5[3] = &unk_10005CB10;
  snapshotsCopy = snapshots;
  v4 = snapshotsCopy;
  [(NTKDFaceSnapshotController *)self _onQueue_async:v5];
}

- (void)_notifyFaceSnapshotChangedForKey:(id)key
{
  keyCopy = key;
  v5 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = keyCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "notify face snapshot changed for key:%@", buf, 0xCu);
  }

  [(NSRecursiveLock *)self->_observersLock lock];
  allObjects = [(NSHashTable *)self->_observers allObjects];
  [(NSRecursiveLock *)self->_observersLock unlock];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = allObjects;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_100011A9C;
        v13[3] = &unk_10005CA98;
        v13[4] = v12;
        v14 = keyCopy;
        [(NTKDFaceSnapshotController *)self _onObserverQueue_async:v13];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

- (void)collectionStoreHasBeenCreated:(id)created
{
  createdCopy = created;
  v5 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "collection store has been created", buf, 2u);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100011B98;
  v7[3] = &unk_10005CA98;
  v7[4] = self;
  v8 = createdCopy;
  v6 = createdCopy;
  [(NTKDFaceSnapshotController *)self _onQueue_async:v7];
}

- (void)collectionStoreWillBePurged:(id)purged
{
  purgedCopy = purged;
  v5 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "collection store will be purged", buf, 2u);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100011CF0;
  v7[3] = &unk_10005CA98;
  v8 = purgedCopy;
  selfCopy = self;
  v6 = purgedCopy;
  [(NTKDFaceSnapshotController *)self _onQueue_async:v7];
}

- (void)collectionStore:(id)store didUpdateFaceForUUID:(id)d withConfiguration:(id)configuration seqId:(id)id
{
  value = id;
  v8 = [(NTKDFaceSnapshotController *)self _preferencesKeyForCollectionStore:store];
  CFPreferencesSetAppValue(v8, value, NTKDaemonPreferencesDomain);
}

- (void)collectionStore:(id)store didUpdateFaceForUUID:(id)d withResourceDirectory:(id)directory seqId:(id)id acknowledge:(id)acknowledge
{
  acknowledgeCopy = acknowledge;
  idCopy = id;
  v11 = [(NTKDFaceSnapshotController *)self _preferencesKeyForCollectionStore:store];
  CFPreferencesSetAppValue(v11, idCopy, NTKDaemonPreferencesDomain);

  acknowledgeCopy[2]();
}

- (void)collectionStore:(id)store didAddFace:(id)face forUUID:(id)d seqId:(id)id
{
  value = id;
  v8 = [(NTKDFaceSnapshotController *)self _preferencesKeyForCollectionStore:store];
  CFPreferencesSetAppValue(v8, value, NTKDaemonPreferencesDomain);
}

- (void)collectionStore:(id)store loadOrderedUUIDs:(id)ds selectedUUID:(id)d facesByUUID:(id)iD seqId:(id)id acknowledge:(id)acknowledge
{
  acknowledgeCopy = acknowledge;
  idCopy = id;
  v12 = [(NTKDFaceSnapshotController *)self _preferencesKeyForCollectionStore:store];
  CFPreferencesSetAppValue(v12, idCopy, NTKDaemonPreferencesDomain);

  acknowledgeCopy[2]();
}

- (void)collectionStore:(id)store didUpdateSelectedUUID:(id)d seqId:(id)id
{
  value = id;
  v7 = [(NTKDFaceSnapshotController *)self _preferencesKeyForCollectionStore:store];
  CFPreferencesSetAppValue(v7, value, NTKDaemonPreferencesDomain);
}

- (void)collectionStore:(id)store didUpdateOrderedUUIDs:(id)ds seqId:(id)id
{
  value = id;
  v7 = [(NTKDFaceSnapshotController *)self _preferencesKeyForCollectionStore:store];
  CFPreferencesSetAppValue(v7, value, NTKDaemonPreferencesDomain);
}

- (void)collectionStore:(id)store didRemoveFaceOfStyle:(int64_t)style forUUID:(id)d seqId:(id)id acknowledge:(id)acknowledge
{
  acknowledgeCopy = acknowledge;
  idCopy = id;
  v11 = [(NTKDFaceSnapshotController *)self _preferencesKeyForCollectionStore:store];
  CFPreferencesSetAppValue(v11, idCopy, NTKDaemonPreferencesDomain);

  acknowledgeCopy[2]();
}

- (void)collectionStore:(id)store didUpgradeFace:(id)face forUUID:(id)d seqId:(id)id
{
  value = id;
  v8 = [(NTKDFaceSnapshotController *)self _preferencesKeyForCollectionStore:store];
  CFPreferencesSetAppValue(v8, value, NTKDaemonPreferencesDomain);
}

- (void)complicationCollection:(id)collection didUpdateSampleTemplateForClient:(id)client
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001217C;
  v7[3] = &unk_10005CC38;
  selfCopy = self;
  collectionCopy = collection;
  clientCopy = client;
  v5 = clientCopy;
  v6 = collectionCopy;
  [(NTKDFaceSnapshotController *)selfCopy _onQueue_async:v7];
}

- (void)complicationCollectionDidLoad:(id)load
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10001246C;
  v3[3] = &unk_10005CA70;
  v3[4] = self;
  [(NTKDFaceSnapshotController *)self _onQueue_async:v3];
}

- (id)_queue_allSnapshotObjects
{
  v3 = objc_opt_new();
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = sub_10000FE84;
  v48 = sub_10000FE94;
  v49 = 0;
  v4 = sub_1000059C8();
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = +[NTKDCollectionCoordinator sharedInstance];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100012B98;
  v39[3] = &unk_10005D498;
  v8 = v4;
  v40 = v8;
  v43 = &v44;
  v27 = v5;
  v41 = v27;
  v9 = v6;
  v42 = v9;
  [v7 enumerateAllStoresWithHandler:v39];

  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_100012E18;
  v37[3] = &unk_10005D4C0;
  v37[4] = self;
  v10 = v3;
  v38 = v10;
  v11 = objc_retainBlock(v37);
  v12 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Updating snapshots for library on active gizmo", buf, 2u);
  }

  (v11[2])(v11, v45[5]);
  v13 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Updating snapshots for libraries on other gizmos", buf, 2u);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  allValues = [v27 allValues];
  v15 = [allValues countByEnumeratingWithState:&v32 objects:v51 count:16];
  if (v15)
  {
    v16 = *v33;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v33 != v16)
        {
          objc_enumerationMutation(allValues);
        }

        (v11[2])(v11, *(*(&v32 + 1) + 8 * i));
      }

      v15 = [allValues countByEnumeratingWithState:&v32 objects:v51 count:16];
    }

    while (v15);
  }

  v18 = [v9 objectForKeyedSubscript:v8];
  [v9 setObject:0 forKeyedSubscript:v8];
  v19 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Updating snapshots for other collections on active gizmo", buf, 2u);
  }

  (v11[2])(v11, v18);
  v20 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Updating snapshots for other collections on other gizmos", buf, 2u);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  allValues2 = [v9 allValues];
  v22 = [allValues2 countByEnumeratingWithState:&v28 objects:v50 count:16];
  if (v22)
  {
    v23 = *v29;
    do
    {
      for (j = 0; j != v22; j = j + 1)
      {
        if (*v29 != v23)
        {
          objc_enumerationMutation(allValues2);
        }

        (v11[2])(v11, *(*(&v28 + 1) + 8 * j));
      }

      v22 = [allValues2 countByEnumeratingWithState:&v28 objects:v50 count:16];
    }

    while (v22);
  }

  v25 = v10;
  _Block_object_dispose(&v44, 8);

  return v25;
}

- (id)_queue_snapshotObjectsForFace:(id)face complicationTemplateChanged:(BOOL)changed
{
  faceCopy = face;
  if (!faceCopy)
  {
    v8 = &__NSArray0__struct;
    goto LABEL_22;
  }

  v7 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v34 = faceCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Maybe need updated snapshot for face %@", buf, 0xCu);
  }

  v8 = +[NSMutableArray array];
  dailySnapshotKey = [faceCopy dailySnapshotKey];
  unadornedSnapshotKey = [faceCopy unadornedSnapshotKey];
  v11 = [(NSMutableDictionary *)self->_snapshotContexts objectForKey:dailySnapshotKey];
  _currentContext = [(NTKDFaceSnapshotController *)self _currentContext];
  v28 = dailySnapshotKey;
  if (NTKDebugDisableSnapshotting())
  {
    wantsUnadornedSnapshot = 0;
    v14 = 0;
  }

  else if (!changed && v11 && -[NTKDFaceSnapshotController _snapshotExistsForKey:](self, "_snapshotExistsForKey:", dailySnapshotKey) && ![faceCopy snapshotContext:v11 isStaleRelativeToContext:_currentContext])
  {
    v14 = [(NSMutableArray *)self->_snapshotKeysWithBlankComplications containsObject:dailySnapshotKey];
    wantsUnadornedSnapshot = [faceCopy wantsUnadornedSnapshot];
    if (wantsUnadornedSnapshot && (v14 & 1) == 0)
    {
      v14 = 0;
      wantsUnadornedSnapshot = ![(NTKDFaceSnapshotController *)self _snapshotExistsForKey:unadornedSnapshotKey];
    }
  }

  else
  {
    wantsUnadornedSnapshot = [faceCopy wantsUnadornedSnapshot];
    v14 = 1;
  }

  v27 = wantsUnadornedSnapshot;
  v15 = objc_opt_new();
  [v15 setFace:faceCopy];
  v16 = NTKSnapshotUIOnlyKey;
  v31 = NTKSnapshotUIOnlyKey;
  v32 = &__kCFBooleanTrue;
  v17 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
  [v15 setOptions:v17];

  v18 = dailySnapshotKey;
  [v15 setKey:dailySnapshotKey];
  [v15 setContext:_currentContext];
  [v15 setSnapshotStale:v14];
  [v8 addObject:v15];
  if ([faceCopy wantsUnadornedSnapshot])
  {
    v19 = objc_opt_new();

    [v19 setFace:faceCopy];
    v29[0] = v16;
    v29[1] = NTKSnapshotUnadornedContentKey;
    v30[0] = &__kCFBooleanTrue;
    v30[1] = &__kCFBooleanTrue;
    v20 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:2];
    [v19 setOptions:v20];

    [v19 setKey:unadornedSnapshotKey];
    [v19 setContext:_currentContext];
    v21 = v27;
    [v19 setSnapshotStale:v27];
    [v8 addObject:v19];
    v15 = v19;
    v18 = v28;
  }

  else
  {
    v21 = v27;
  }

  v22 = v14 | v21;
  v23 = _NTKLoggingObjectForDomain();
  v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
  if (v22)
  {
    if (v24)
    {
      *buf = 0;
      v25 = "Update needed!";
LABEL_20:
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v25, buf, 2u);
    }
  }

  else if (v24)
  {
    *buf = 0;
    v25 = "No update needed.";
    goto LABEL_20;
  }

LABEL_22:

  return v8;
}

- (BOOL)_queue_cleanContexts
{
  v3 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Persisting snapshot contexts", v7, 2u);
  }

  v4 = [NSKeyedArchiver archivedDataWithRootObject:self->_snapshotContexts requiringSecureCoding:1 error:0];
  v5 = sub_1000133D4();
  [v4 writeToFile:v5 atomically:1];

  return 1;
}

- (BOOL)_queue_cleanSnapshotKeysWithBlankComplications
{
  v3 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Persisting snapshot keys with blank complications", v7, 2u);
  }

  v4 = [NSKeyedArchiver archivedDataWithRootObject:self->_snapshotKeysWithBlankComplications requiringSecureCoding:1 error:0];
  v5 = sub_1000134E8();
  [v4 writeToFile:v5 atomically:1];

  return 1;
}

- (BOOL)_queue_cleanCache
{
  v3 = objc_opt_new();
  v4 = +[NTKDCollectionCoordinator sharedInstance];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100013610;
  v7[3] = &unk_10005D1F0;
  v8 = v3;
  v5 = v3;
  [v4 enumerateAllStoresWithHandler:v7];

  LOBYTE(self) = [(NTKDFaceSnapshotController *)self _queue_cleanCacheExcludingKeys:v5];
  return self;
}

- (BOOL)_queue_cleanCacheExcludingKeys:(id)keys
{
  keysCopy = keys;
  v5 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Cleaning snapshot cache", buf, 2u);
  }

  v6 = NTKSnapshotMappedImageCache();
  allKeys = [v6 allKeys];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100013934;
  v15[3] = &unk_10005D4E8;
  v8 = keysCopy;
  v16 = v8;
  [allKeys enumerateObjectsUsingBlock:v15];

  allKeys2 = [(NSMutableDictionary *)self->_snapshotContexts allKeys];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100013AB8;
  v12[3] = &unk_10005D510;
  v13 = v8;
  selfCopy = self;
  v10 = v8;
  [allKeys2 enumerateObjectsUsingBlock:v12];

  sub_1000064C4(@"CleanSnapshotCache");
  return 1;
}

- (void)_onQueue_async:(id)queue_async
{
  queue_asyncCopy = queue_async;
  sub_100007294(@"com.apple.ntkd.facesnapshotcontroller.asyncwork");
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100013BD8;
  block[3] = &unk_10005CB10;
  v8 = queue_asyncCopy;
  v6 = queue_asyncCopy;
  dispatch_async(queue, block);
}

- (void)_onObserverQueue_async:(id)queue_async
{
  queue_asyncCopy = queue_async;
  sub_100007294(@"com.apple.ntkd.facesnapshotcontroller.asyncobservercallback");
  observerCallbackQueue = self->_observerCallbackQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100013CBC;
  block[3] = &unk_10005CB10;
  v8 = queue_asyncCopy;
  v6 = queue_asyncCopy;
  dispatch_async(observerCallbackQueue, block);
}

- (BOOL)_snapshotExistsForKey:(id)key
{
  keyCopy = key;
  v4 = NTKSnapshotMappedImageCache();
  allKeys = [v4 allKeys];
  v6 = [allKeys containsObject:keyCopy];

  return v6;
}

- (void)_loadComplicationCollection
{
  [(NTKComplicationCollection *)self->_complicationCollection removeObserver:self];
  v3 = sub_100005974();
  v4 = [CLKDevice deviceForPDRDevice:v3];
  v5 = [NTKCompanionComplicationCollectionManager sharedComplicationCollectionForDevice:v4];
  complicationCollection = self->_complicationCollection;
  self->_complicationCollection = v5;

  v7 = self->_complicationCollection;

  [(NTKComplicationCollection *)v7 addObserver:self];
}

- (void)_enumerateAllFacesForDeviceUUID:(id)d block:(id)block
{
  dCopy = d;
  blockCopy = block;
  v7 = +[NTKDCollectionCoordinator sharedInstance];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100013ECC;
  v10[3] = &unk_10005CC10;
  v11 = dCopy;
  v12 = blockCopy;
  v8 = blockCopy;
  v9 = dCopy;
  [v7 enumerateAllStoresWithHandler:v10];
}

- (void)_enumerateRemoteComplicationsForFace:(id)face block:(id)block
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000140CC;
  v7[3] = &unk_10005D538;
  faceCopy = face;
  blockCopy = block;
  v5 = blockCopy;
  v6 = faceCopy;
  [v6 enumerateComplicationSlotsWithBlock:v7];
}

- (void)_queue_updateSnapshotForFace:(id)face inStore:(id)store
{
  faceCopy = face;
  if ([(NTKDFaceSnapshotController *)self _modernSnapshottingEnabledForStore:store])
  {
    v6 = +[NTKFaceSnapshotter defaultModernSnapshotOptions];
    v7 = [v6 mutableCopy];

    [v7 setValue:&off_10005FD00 forKey:NTKSnapshotPriorityKey];
    v8 = [v7 copy];
    [(NTKDFaceSnapshotController *)self requestSnapshotOfFace:faceCopy options:v8 completion:&stru_10005D578];
  }

  else
  {
    [(NTKDFaceSnapshotController *)self _queue_updateSnapshotForFace:faceCopy complicationTemplateChanged:0];
  }
}

- (void)_queue_updateSnapshots:(id)snapshots completion:(id)completion
{
  completionCopy = completion;
  snapshotsCopy = snapshots;
  v8 = [snapshotsCopy indexesOfObjectsPassingTest:&stru_10005D5B8];
  v9 = [snapshotsCopy objectsAtIndexes:v8];

  if (![(NSArray *)self->_currentSnapshots count])
  {
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_1000146E8;
    v37[3] = &unk_10005D5E0;
    v37[4] = self;
    v38 = completionCopy;
    v24 = objc_retainBlock(v37);
    [(NTKDFaceSnapshotController *)self _startSnapshottingActivity];
    objc_storeStrong(&self->_currentSnapshots, v9);
    if ([v9 count])
    {
      v25 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [v9 count];
        *buf = 134217984;
        v44 = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "taking snapshots for %lu faces", buf, 0xCu);
      }

      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_100014AC4;
      v35[3] = &unk_10005D5E0;
      v35[4] = self;
      v36 = v24;
      [(NTKDFaceSnapshotController *)self _queue_snapshotFaces:v9 completion:v35];
    }

    else
    {
      (v24[2])(v24, 0);
    }

    goto LABEL_35;
  }

  if (![v9 count])
  {
    if (self->_currentSnapshotCompletions)
    {
      goto LABEL_35;
    }

    v27 = objc_opt_new();
    currentSnapshotCompletions = self->_currentSnapshotCompletions;
    self->_currentSnapshotCompletions = v27;

    if (!completionCopy)
    {
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  v34 = v8;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (!v11)
  {

    goto LABEL_35;
  }

  v12 = v11;
  v32 = v9;
  v33 = completionCopy;
  v13 = 0;
  v14 = 0;
  v15 = *v40;
  do
  {
    for (i = 0; i != v12; i = i + 1)
    {
      if (*v40 != v15)
      {
        objc_enumerationMutation(v10);
      }

      v17 = *(*(&v39 + 1) + 8 * i);
      if ([(NSArray *)self->_currentSnapshots containsObject:v17])
      {
        v13 = 1;
      }

      else
      {
        pendingSnapshots = self->_pendingSnapshots;
        if (!pendingSnapshots)
        {
          v19 = objc_opt_new();
          v20 = self->_pendingSnapshots;
          self->_pendingSnapshots = v19;

          pendingSnapshots = self->_pendingSnapshots;
        }

        if (([(NSMutableArray *)pendingSnapshots containsObject:v17]& 1) == 0)
        {
          [(NSMutableArray *)self->_pendingSnapshots addObject:v17];
          v14 = 1;
        }
      }
    }

    v12 = [v10 countByEnumeratingWithState:&v39 objects:v45 count:16];
  }

  while (v12);

  v9 = v32;
  completionCopy = v33;
  v8 = v34;
  if (v33)
  {
    if (v14)
    {
      if (!self->_pendingSnapshotCompletions)
      {
        v21 = objc_opt_new();
        pendingSnapshotCompletions = self->_pendingSnapshotCompletions;
        self->_pendingSnapshotCompletions = v21;

        v23 = self->_pendingSnapshotCompletions;
LABEL_34:
        v31 = objc_retainBlock(completionCopy);
        [(NSMutableArray *)v23 addObject:v31];

        goto LABEL_35;
      }

      goto LABEL_35;
    }

    if ((v13 & 1) == 0 || self->_currentSnapshotCompletions)
    {
      goto LABEL_35;
    }

    v29 = objc_opt_new();
    v30 = self->_currentSnapshotCompletions;
    self->_currentSnapshotCompletions = v29;

LABEL_33:
    v23 = self->_currentSnapshotCompletions;
    goto LABEL_34;
  }

LABEL_35:
}

- (void)_queue_snapshotFaces:(id)faces completion:(id)completion
{
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100014D2C;
  v27[3] = &unk_10005D0D8;
  facesCopy = faces;
  selfCopy = self;
  completionCopy = completion;
  v6 = completionCopy;
  v7 = facesCopy;
  v8 = objc_retainBlock(v27);
  firstObject = [v7 firstObject];
  v10 = [NTKJetsamInfoInterval alloc];
  face = [firstObject face];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v14 = [v10 initWithLabel:v13];

  v15 = [firstObject key];
  face2 = [firstObject face];
  options = [firstObject options];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100014DD8;
  v22[3] = &unk_10005D678;
  v22[4] = self;
  v23 = v15;
  v24 = v14;
  v25 = firstObject;
  v26 = v8;
  v18 = v8;
  v19 = firstObject;
  v20 = v14;
  v21 = v15;
  [(NTKDFaceSnapshotController *)self requestSnapshotOfFace:face2 options:options completion:v22];
}

- (void)_startSnapshottingActivity
{
  v2 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "starting snapshotting activity", v4, 2u);
  }

  v3 = +[NTKDActivityTracker sharedInstance];
  [v3 beginActivity:@"snapshotting-session-activity"];

  CFPreferencesSetAppValue(@"NTKFaceSnapshotsAreDirtyKey", kCFBooleanTrue, NTKDaemonPreferencesDomain);
}

- (void)_endSnapshottingActivityDidTakeSnapshot:(BOOL)snapshot
{
  snapshotCopy = snapshot;
  v4 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "ending snapshotting activity", buf, 2u);
  }

  CFPreferencesSetAppValue(@"NTKFaceSnapshotsAreDirtyKey", kCFBooleanFalse, NTKDaemonPreferencesDomain);
  v5 = +[NTKDActivityTracker sharedInstance];
  [v5 endActivity:@"snapshotting-session-activity"];

  v6 = _NTKLoggingObjectForDomain();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (snapshotCopy)
  {
    if (v7)
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setting daemon to exit when clean", v9, 2u);
    }

    xpc_transaction_exit_clean();
  }

  else
  {
    if (v7)
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "No snapshots taken. Not setting daemon to exit when clean", v8, 2u);
    }
  }
}

- (id)_preferencesKeyForCollectionStore:(id)store
{
  storeCopy = store;
  collectionIdentifier = [storeCopy collectionIdentifier];
  deviceUUID = [storeCopy deviceUUID];

  uUIDString = [deviceUUID UUIDString];
  v7 = [NSString stringWithFormat:@"%@%@%@", collectionIdentifier, uUIDString, @"SnapshotSequenceIdKey"];

  return v7;
}

- (void)_writeImageToDisk:(id)disk imageName:(id)name
{
  nameCopy = name;
  diskCopy = disk;
  v10 = NSTemporaryDirectory();
  v7 = [v10 stringByAppendingPathComponent:nameCopy];

  v8 = [v7 stringByAppendingPathExtension:@"png"];

  v9 = UIImagePNGRepresentation(diskCopy);

  [v9 writeToFile:v8 options:1 error:0];
}

@end