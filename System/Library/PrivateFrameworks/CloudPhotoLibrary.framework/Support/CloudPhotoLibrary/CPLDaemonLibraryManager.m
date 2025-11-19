@interface CPLDaemonLibraryManager
- (CPLDaemonLibraryManager)initWithConnection:(id)a3 name:(id)a4 allowedProcol:(id)a5 isManagement:(BOOL)a6;
- (CPLDaemonLibraryManagerDelegate)delegate;
- (NSString)description;
- (NSString)status;
- (void)_dropAllOtherLibraryManagersAndCallBlock:(id)a3;
- (void)_dropManagerWithCompletionBlock:(id)a3;
- (void)_dropWithCompletionBlock:(id)a3;
- (void)_killWithCompletionBlock:(id)a3;
- (void)_storeUploadTransferTask:(id)a3;
- (void)_storeVoucher:(id)a3 forTaskWithIdentifier:(id)a4;
- (void)_whenThereIsNoOtherLibraryManagersOpenedWithLibraryIdentifier:(id)a3 callBlock:(id)a4;
- (void)_withVoucherForTaskWithIdentifier:(id)a3 do:(id)a4;
- (void)acceptSharedScope:(id)a3 completionHandler:(id)a4;
- (void)acknowledgeChangeBatch:(id)a3 withCompletionHandler:(id)a4;
- (void)acknowledgeChangedStatuses:(id)a3;
- (void)activateScopeWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)addInfoToLog:(id)a3;
- (void)attachComputeStates:(id)a3 completionHandler:(id)a4;
- (void)beginDownloadForResource:(id)a3 clientBundleID:(id)a4 options:(id)a5 proposedTaskIdentifier:(id)a6 reply:(id)a7;
- (void)beginInMemoryDownloadOfResource:(id)a3 clientBundleID:(id)a4 reply:(id)a5;
- (void)beginPullSessionWithKnownLibraryVersion:(id)a3 context:(id)a4 completionHandler:(id)a5;
- (void)beginPushSessionWithKnownLibraryVersion:(id)a3 context:(id)a4 completionHandler:(id)a5;
- (void)boostPriorityForScopeWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)cancelSyncTaskWithIdentifier:(id)a3;
- (void)cancelTaskWithIdentifier:(id)a3;
- (void)checkHasBackgroundDownloadOperationsWithCompletionHandler:(id)a3;
- (void)closeLibraryWithCompletionHandler:(id)a3;
- (void)commitChangeBatch:(id)a3 withCompletionHandler:(id)a4;
- (void)compactFileCacheWithCompletionHandler:(id)a3;
- (void)connection:(id)a3 handleInvocation:(id)a4 isReply:(BOOL)a5;
- (void)createScope:(id)a3 completionHandler:(id)a4;
- (void)deactivateLibraryWithCompletionHandler:(id)a3;
- (void)deactivateScopeWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)dealloc;
- (void)fetchExistingSharedLibraryScopeWithCompletionHandler:(id)a3;
- (void)fetchSharedScopeFromShareURL:(id)a3 completionHandler:(id)a4;
- (void)finalizeSessionWithCompletionHandler:(id)a3;
- (void)forceBackupWithCompletionHandler:(id)a3;
- (void)forceSyncForScopeIdentifiers:(id)a3 reply:(id)a4;
- (void)getChangeBatchWithCompletionHandler:(id)a3;
- (void)getChangedStatusesWithCompletionHandler:(id)a3;
- (void)getCloudCacheRecordsWithLocalScopedIdentifiers:(id)a3 desiredProperties:(id)a4 completionHandler:(id)a5;
- (void)getListOfComponentsWithCompletionHandler:(id)a3;
- (void)getMappedScopedIdentifiersForScopedIdentifiers:(id)a3 inAreLocalIdentifiers:(BOOL)a4 completionHandler:(id)a5;
- (void)getResourcesForItemWithScopedIdentifier:(id)a3 completionHandler:(id)a4;
- (void)getScopeStatusCountsForScopeWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)getStatusArrayForComponents:(id)a3 completionHandler:(id)a4;
- (void)getStatusForComponents:(id)a3 completionHandler:(id)a4;
- (void)getStatusForPendingRecordsSharedToScopeWithIdentifier:(id)a3 maximumCount:(unint64_t)a4 completionHandler:(id)a5;
- (void)getStatusForRecordsWithScopedIdentifiers:(id)a3 completionHandler:(id)a4;
- (void)getStreamingURLForResource:(id)a3 intent:(unint64_t)a4 hints:(id)a5 timeRange:(id *)a6 clientBundleID:(id)a7 completionHandler:(id)a8;
- (void)getTargetsForRecordsWithScopedIdentifiers:(id)a3 completionHandler:(id)a4;
- (void)libraryManager:(id)a3 backgroundDownloadDidFailForResource:(id)a4;
- (void)libraryManager:(id)a3 backgroundDownloadDidFinishForResource:(id)a4;
- (void)libraryManager:(id)a3 didFinishForceSyncTask:(id)a4 withErrors:(id)a5;
- (void)libraryManager:(id)a3 downloadDidFinishForResourceTransferTask:(id)a4 finalResource:(id)a5 withError:(id)a6;
- (void)libraryManager:(id)a3 downloadDidProgress:(float)a4 forResourceTransferTask:(id)a5;
- (void)libraryManager:(id)a3 downloadDidStartForResourceTransferTask:(id)a4;
- (void)libraryManager:(id)a3 inMemoryDownloadDidFinishForResourceTransferTask:(id)a4 data:(id)a5 withError:(id)a6;
- (void)libraryManager:(id)a3 provideLocalResource:(id)a4 recordClass:(Class)a5 completionHandler:(id)a6;
- (void)libraryManager:(id)a3 providePayloadForComputeStates:(id)a4 inFolderWithURL:(id)a5 completionHandler:(id)a6;
- (void)libraryManager:(id)a3 pushAllChangesWithCompletionHandler:(id)a4;
- (void)libraryManager:(id)a3 uploadDidFinishForResourceTransferTask:(id)a4 withError:(id)a5;
- (void)libraryManager:(id)a3 uploadDidProgress:(float)a4 forResourceTransferTask:(id)a5;
- (void)libraryManager:(id)a3 uploadDidStartForResourceTransferTask:(id)a4;
- (void)libraryManagerDidStartSynchronization:(id)a3;
- (void)libraryManagerHasChangesToPull:(id)a3;
- (void)libraryManagerHasStatusChanges:(id)a3;
- (void)libraryManagerStatusDidChange:(id)a3;
- (void)openLibraryWithClientLibraryBaseURL:(id)a3 cloudLibraryStateStorageURL:(id)a4 cloudLibraryResourceStorageURL:(id)a5 libraryIdentifier:(id)a6 mainScopeIdentifier:(id)a7 options:(unint64_t)a8 completionHandler:(id)a9;
- (void)processSessionContext:(id)a3;
- (void)provideCloudResource:(id)a3 completionHandler:(id)a4;
- (void)provideRecordWithCloudScopeIdentifier:(id)a3 completionHandler:(id)a4;
- (void)provideScopeChangeForScopeWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)queryUserDetailsForShareParticipants:(id)a3 completionHandler:(id)a4;
- (void)rampingRequestForResourceType:(unint64_t)a3 numRequested:(unint64_t)a4 completionHandler:(id)a5;
- (void)refreshScopeWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)removeParticipants:(id)a3 fromSharedScopeWithIdentifier:(id)a4 retentionPolicy:(int64_t)a5 exitSource:(int64_t)a6 completionHandler:(id)a7;
- (void)reportMiscInformation:(id)a3;
- (void)reportSetting:(id)a3 hasBeenSetToValue:(id)a4;
- (void)requestClientToPullAllChangesInScopeIdentifiers:(id)a3 completionHandler:(id)a4;
- (void)requestClientToPushAllChangesWithCompletionHandler:(id)a3;
- (void)resetCacheWithOption:(unint64_t)a3 reason:(id)a4 completionHandler:(id)a5;
- (void)resolveLocalScopedIdentifiersForCloudScopedIdentifiers:(id)a3 completionHandler:(id)a4;
- (void)sharedLibraryRampCheckWithCompletionHandler:(id)a3;
- (void)sizeOfResourcesToUploadDidChangeForLibraryManager:(id)a3;
- (void)startExitFromSharedScopeWithIdentifier:(id)a3 retentionPolicy:(int64_t)a4 exitSource:(int64_t)a5 completionHandler:(id)a6;
- (void)testKey:(id)a3 value:(id)a4 completionHandler:(id)a5;
- (void)updateShareForScope:(id)a3 completionHandler:(id)a4;
@end

@implementation CPLDaemonLibraryManager

- (CPLDaemonLibraryManager)initWithConnection:(id)a3 name:(id)a4 allowedProcol:(id)a5 isManagement:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v44.receiver = self;
  v44.super_class = CPLDaemonLibraryManager;
  v14 = [(CPLDaemonLibraryManager *)&v44 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_connection, a3);
    v15->_processIdentifier = [v11 processIdentifier];
    v15->_isManagement = a6;
    if ([v12 hasPrefix:@"com.apple."])
    {
      v16 = [v12 substringFromIndex:10];

      v12 = v16;
    }

    v17 = [v12 copy];
    name = v15->_name;
    v15->_name = v17;

    v19 = objc_alloc_init(NSMutableDictionary);
    downloadTasksPerIdentifier = v15->_downloadTasksPerIdentifier;
    v15->_downloadTasksPerIdentifier = v19;

    v21 = objc_alloc_init(NSMutableDictionary);
    uploadTasksPerIdentifier = v15->_uploadTasksPerIdentifier;
    v15->_uploadTasksPerIdentifier = v21;

    v23 = objc_alloc_init(NSMutableDictionary);
    forceSyncTasksPerIdentifier = v15->_forceSyncTasksPerIdentifier;
    v15->_forceSyncTasksPerIdentifier = v23;

    v25 = objc_alloc_init(NSMutableDictionary);
    vouchersPerTaskIdentifier = v15->_vouchersPerTaskIdentifier;
    v15->_vouchersPerTaskIdentifier = v25;

    v27 = CPLCopyDefaultSerialQueueAttributes();
    v28 = [v11 _queue];
    v29 = dispatch_queue_create_with_target_V2("com.apple.cloudphotod.daemon.librarymanager", v27, v28);
    queue = v15->_queue;
    v15->_queue = v29;

    objc_storeStrong(&v15->_allowedProtocol, a5);
    v31 = NSStringFromProtocol(v15->_allowedProtocol);
    protocolDescription = v15->_protocolDescription;
    v15->_protocolDescription = v31;

    if ([(NSString *)v15->_protocolDescription hasPrefix:@"CPLDaemon"])
    {
      v33 = [(NSString *)v15->_protocolDescription substringFromIndex:9];
      v34 = v15->_protocolDescription;
      v15->_protocolDescription = v33;
    }

    if ([(NSString *)v15->_protocolDescription hasSuffix:@"Protocol"])
    {
      v35 = [(NSString *)v15->_protocolDescription substringToIndex:[(NSString *)v15->_protocolDescription length]- 8];
      v36 = v15->_protocolDescription;
      v15->_protocolDescription = v35;
    }

    v15->_isLibraryManager = v15->_allowedProtocol == &OBJC_PROTOCOL___CPLDaemonLibraryManagerProtocol;
    v37 = +[CPLProxyLibraryManager daemonProtocolInterface];
    [v11 setExportedInterface:v37];
    [v11 setExportedObject:v15];
    v38 = +[CPLProxyLibraryManager clientProtocolInterface];
    [v11 setRemoteObjectInterface:v38];
    [v11 _setQueue:v15->_queue];
    [v11 setDelegate:v15];
    objc_initWeak(&location, v11);
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_10001A440;
    v40[3] = &unk_100272CC0;
    objc_copyWeak(&v42, &location);
    v41 = v15;
    [v11 setInvalidationHandler:v40];
    [v11 resume];

    objc_destroyWeak(&v42);
    objc_destroyWeak(&location);
  }

  return v15;
}

- (NSString)status
{
  engineWrapper = self->_engineWrapper;
  v4 = [NSString alloc];
  v5 = v4;
  name = self->_name;
  processIdentifier = self->_processIdentifier;
  if (engineWrapper)
  {
    v8 = [(CPLEngineWrapper *)self->_engineWrapper libraryIdentifier];
    v9 = [v5 initWithFormat:@"%@ - pid: %d - proxy: %p - attached to %@", name, processIdentifier, self, v8];
  }

  else
  {
    v9 = [v4 initWithFormat:@"%@ - pid: %d - proxy: %p - waiting for client to open a library manager", name, self->_processIdentifier, self];
  }

  return v9;
}

- (NSString)description
{
  engineWrapper = self->_engineWrapper;
  v4 = [NSString alloc];
  v5 = v4;
  name = self->_name;
  processIdentifier = self->_processIdentifier;
  protocolDescription = self->_protocolDescription;
  if (self->_killed)
  {
    v9 = " (killed)";
  }

  else
  {
    v9 = "";
  }

  if (engineWrapper)
  {
    v10 = [(CPLEngineWrapper *)self->_engineWrapper libraryIdentifier];
    v11 = [v5 initWithFormat:@"<%@ (%d) %@ %p%s for %@>", name, processIdentifier, protocolDescription, self, v9, v10];
  }

  else
  {
    v11 = [v4 initWithFormat:@"<%@ (%d) %@ %p%s waiting for open>", name, processIdentifier, protocolDescription, self, v9];
  }

  return v11;
}

- (void)_dropManagerWithCompletionBlock:(id)a3
{
  v4 = a3;
  manager = self->_manager;
  if (manager)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v6 = sub_10001A484();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = self->_manager;
        *buf = 138412546;
        v20 = v7;
        v21 = 2112;
        v22 = self;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Closing %@ for %@", buf, 0x16u);
      }

      manager = self->_manager;
    }

    v8 = [(CPLLibraryManager *)manager currentSession];
    if (v8)
    {
      sub_10018DED4(self);
    }

    [(NSMutableDictionary *)self->_vouchersPerTaskIdentifier removeAllObjects];
    if ((_CPLSilentLogging & 1) == 0)
    {
      v9 = sub_10001A484();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = [(NSMutableDictionary *)self->_downloadTasksPerIdentifier count];
        *buf = 138412546;
        v20 = self;
        v21 = 2048;
        v22 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%@ cancelling %lu tasks", buf, 0x16u);
      }
    }

    [(NSMutableDictionary *)self->_downloadTasksPerIdentifier enumerateKeysAndObjectsUsingBlock:&stru_100272D00];
    [(NSMutableDictionary *)self->_downloadTasksPerIdentifier removeAllObjects];
    if ((_CPLSilentLogging & 1) == 0)
    {
      v11 = sub_10001A484();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = [(NSMutableDictionary *)self->_forceSyncTasksPerIdentifier count];
        *buf = 138412546;
        v20 = self;
        v21 = 2048;
        v22 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%@ cancelling %lu sync tasks", buf, 0x16u);
      }
    }

    [(NSMutableDictionary *)self->_forceSyncTasksPerIdentifier enumerateKeysAndObjectsUsingBlock:&stru_100272D40];
    [(NSMutableDictionary *)self->_forceSyncTasksPerIdentifier removeAllObjects];
    [(NSMutableDictionary *)self->_uploadTasksPerIdentifier removeAllObjects];
    v13 = self->_manager;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10001A96C;
    v16[3] = &unk_1002724D0;
    v17 = v13;
    v18 = v4;
    v14 = v13;
    [(CPLLibraryManager *)v14 closeWithCompletionHandler:v16];
    self->_killed = 1;
    v15 = self->_manager;
    self->_manager = 0;
  }

  else
  {
    v4[2](v4);
  }
}

- (void)_killWithCompletionBlock:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001AACC;
  v10[3] = &unk_1002723C8;
  v10[4] = self;
  v11 = v4;
  v6 = v10;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002874;
  block[3] = &unk_100271E98;
  v13 = v6;
  v7 = queue;
  v8 = v4;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

- (void)_dropWithCompletionBlock:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10018B380;
  v10[3] = &unk_1002723C8;
  v10[4] = self;
  v11 = v4;
  v6 = v10;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002874;
  block[3] = &unk_100271E98;
  v13 = v6;
  v7 = queue;
  v8 = v4;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

- (void)_whenThereIsNoOtherLibraryManagersOpenedWithLibraryIdentifier:(id)a3 callBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = [WeakRetained daemonLibraryManagerOtherLibraryManager:self withLibraryIdentifier:v6];

  if (v9)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v10 = sub_10001A484();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v15 = self;
        v16 = 2112;
        v17 = v9;
        v18 = 2112;
        v19 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%@ is connecting to engine while %@ is already connected. Will drop %@", buf, 0x20u);
      }
    }

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10001AFF4;
    v11[3] = &unk_100271DE0;
    v11[4] = self;
    v12 = v6;
    v13 = v7;
    [v9 _killWithCompletionBlock:v11];
  }

  else
  {
    v7[2](v7);
  }
}

- (void)_dropAllOtherLibraryManagersAndCallBlock:(id)a3
{
  v4 = a3;
  v5 = dispatch_group_create();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = [(CPLDaemonLibraryManager *)self engineWrapper];
  v8 = [v7 libraryIdentifier];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10001B280;
  v14[3] = &unk_100272DA8;
  v14[4] = self;
  v15 = v5;
  v9 = v5;
  [WeakRetained enumerateDaemonLibraryManagersWithLibraryIdentifier:v8 block:v14];

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001B344;
  block[3] = &unk_100271E98;
  v13 = v4;
  v11 = v4;
  dispatch_group_notify(v9, queue, block);
}

- (void)openLibraryWithClientLibraryBaseURL:(id)a3 cloudLibraryStateStorageURL:(id)a4 cloudLibraryResourceStorageURL:(id)a5 libraryIdentifier:(id)a6 mainScopeIdentifier:(id)a7 options:(unint64_t)a8 completionHandler:(id)a9
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a9;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10001B4F8;
  v30[3] = &unk_100272DF8;
  v30[4] = self;
  v31 = v16;
  v32 = v17;
  v33 = v18;
  v22 = v19;
  v34 = v22;
  v35 = v20;
  v37 = a8;
  v38 = a2;
  v36 = v21;
  v23 = v21;
  v24 = v20;
  v25 = v18;
  v26 = v17;
  v27 = v16;
  v28 = objc_retainBlock(v30);
  v29 = v28;
  if (self->_isLibraryManager)
  {
    [(CPLDaemonLibraryManager *)self _whenThereIsNoOtherLibraryManagersOpenedWithLibraryIdentifier:v22 callBlock:v28];
  }

  else
  {
    (v28[2])(v28);
  }
}

- (void)closeLibraryWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (self->_manager)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = sub_10001A484();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v11 = self;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Closing library manager for %@", buf, 0xCu);
      }
    }

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10001BF40;
    v8[3] = &unk_100271E98;
    v9 = v4;
    [(CPLDaemonLibraryManager *)self _dropManagerWithCompletionBlock:v8];
    v6 = v9;
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v7 = sub_10001A484();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v11 = self;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@ tried to close a manager that is not present", buf, 0xCu);
      }
    }

    v6 = +[CPLErrors unknownError];
    (*(v4 + 2))(v4, v6);
  }
}

- (void)deactivateLibraryWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (self->_manager)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = sub_10001A484();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [(CPLLibraryManager *)self->_manager libraryIdentifier];
        *buf = 138543362;
        v10 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "DEACTIVATING LIBRARY %{public}@", buf, 0xCu);
      }
    }

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10001C0AC;
    v7[3] = &unk_1002723C8;
    v7[4] = self;
    v8 = v4;
    [(CPLDaemonLibraryManager *)self _dropAllOtherLibraryManagersAndCallBlock:v7];
  }

  else
  {
    sub_10018E3A4(_CPLSilentLogging, self);
  }
}

- (void)activateScopeWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  manager = self->_manager;
  if (manager)
  {
    v9 = [(CPLLibraryManager *)manager mainScopeIdentifier];
    v10 = [v6 isEqualToString:v9];

    v11 = self->_manager;
    if (v10)
    {
      [(CPLLibraryManager *)v11 enableMainScopeWithCompletionHandler:v7];
    }

    else
    {
      [(CPLLibraryManager *)v11 activateScopeWithIdentifier:v6 completionHandler:v7];
    }
  }

  else
  {
    sub_10018E478();
  }
}

- (void)deactivateScopeWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  manager = self->_manager;
  if (manager)
  {
    v9 = [(CPLLibraryManager *)manager mainScopeIdentifier];
    v10 = [v6 isEqualToString:v9];

    v11 = self->_manager;
    if (v10)
    {
      [(CPLLibraryManager *)v11 disableMainScopeWithCompletionHandler:v7];
    }

    else
    {
      [(CPLLibraryManager *)v11 deactivateScopeWithIdentifier:v6 completionHandler:v7];
    }
  }

  else
  {
    sub_10018E478();
  }
}

- (void)boostPriorityForScopeWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  manager = self->_manager;
  if (manager)
  {
    [(CPLLibraryManager *)manager boostPriorityForScopeWithIdentifier:v6 completionHandler:v7];
  }

  else
  {
    sub_10018E544();
  }
}

- (void)beginDownloadForResource:(id)a3 clientBundleID:(id)a4 options:(id)a5 proposedTaskIdentifier:(id)a6 reply:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (self->_manager)
  {
    v17 = voucher_copy();
    if ((_CPLSilentLogging & 1) == 0)
    {
      v18 = sub_10001A484();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        manager = self->_manager;
        *buf = 138412802;
        v29 = manager;
        v30 = 2112;
        v31 = v12;
        v32 = 2112;
        v33 = v14;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Asking %@ for a task to download %@(%@)", buf, 0x20u);
      }
    }

    v20 = self->_manager;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10001C660;
    v22[3] = &unk_100272E48;
    v23 = v12;
    v24 = v14;
    v25 = self;
    v26 = v17;
    v27 = v16;
    v21 = v17;
    [(CPLLibraryManager *)v20 beginDownloadForResource:v23 clientBundleID:v13 options:v24 proposedTaskIdentifier:v15 completionHandler:v22];
  }

  else
  {
    sub_10018E620();
  }
}

- (void)processSessionContext:(id)a3
{
  manager = self->_manager;
  v5 = a3;
  -[CPLLibraryManager setEstimatedInitialSizeForLocalLibrary:](manager, "setEstimatedInitialSizeForLocalLibrary:", [v5 estimatedInitialSizeForLocalLibrary]);
  v6 = self->_manager;
  v7 = [v5 estimatedInitialAssetCountForLocalLibrary];

  [(CPLLibraryManager *)v6 setEstimatedInitialAssetCountForLocalLibrary:v7];
}

- (void)beginPushSessionWithKnownLibraryVersion:(id)a3 context:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_manager)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v11 = sub_10001A484();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        manager = self->_manager;
        *buf = 138412290;
        v28 = manager;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Beginning push session with %@", buf, 0xCu);
      }
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained startSyncTaskForDaemonLibraryManager:self];

    [(CPLDaemonLibraryManager *)self processSessionContext:v9];
    v14 = [v9 resetTracker];
    v15 = +[CPLResetTracker currentTracker];
    v16 = [v14 earliestReasonDate];
    v17 = [v15 earliestReasonDate];
    v18 = [v16 compare:v17];

    if (v18 == -1)
    {
      v19 = v14;
    }

    else
    {
      v19 = v15;
    }

    v20 = v19;
    v21 = self->_manager;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10001CAB0;
    v24[3] = &unk_100272E70;
    v25 = v15;
    v26 = v10;
    v22 = v15;
    [(CPLLibraryManager *)v21 beginPushChangeSessionWithKnownLibraryVersion:v8 resetTracker:v20 completionHandler:v24];
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v23 = sub_10001A484();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v28 = self;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%@ tried to begin a push session for a manager that is not present", buf, 0xCu);
      }
    }

    v14 = +[CPLErrors unknownError];
    (*(v10 + 2))(v10, v14);
  }
}

- (void)beginPullSessionWithKnownLibraryVersion:(id)a3 context:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_manager)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v11 = sub_10001A484();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        manager = self->_manager;
        *buf = 138412290;
        v27 = manager;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Beginning pull session with %@", buf, 0xCu);
      }
    }

    [(CPLDaemonLibraryManager *)self processSessionContext:v9];
    v13 = [v9 resetTracker];
    v14 = +[CPLResetTracker currentTracker];
    v15 = [v13 earliestReasonDate];
    v16 = [v14 earliestReasonDate];
    v17 = [v15 compare:v16];

    if (v17 == -1)
    {
      v18 = v13;
    }

    else
    {
      v18 = v14;
    }

    v19 = v18;
    v20 = self->_manager;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10001CDAC;
    v23[3] = &unk_100272E98;
    v24 = v14;
    v25 = v10;
    v21 = v14;
    [(CPLLibraryManager *)v20 beginPullChangeSessionWithKnownLibraryVersion:v8 resetTracker:v19 completionHandler:v23];
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v22 = sub_10001A484();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v27 = self;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%@ tried to begin a pull session for a manager that is not present", buf, 0xCu);
      }
    }

    v13 = +[CPLErrors unknownError];
    (*(v10 + 2))(v10, v13);
  }
}

- (void)finalizeSessionWithCompletionHandler:(id)a3
{
  v4 = a3;
  manager = self->_manager;
  if (manager)
  {
    v6 = [(CPLLibraryManager *)manager currentSession];
    if (v6)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v7 = sub_10001A484();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          *&buf[4] = v6;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Finalizing %@", buf, 0xCu);
        }
      }

      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10001D010;
      v11[3] = &unk_100272EC0;
      v12 = v4;
      [v6 finalizeWithCompletionHandler:v11];
      v8 = v12;
    }

    else
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v9 = sub_10001A484();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = self->_manager;
          *buf = 138412546;
          *&buf[4] = self;
          v14 = 2112;
          v15 = v10;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%@ tried to finalize a session for %@ but there is no current session", buf, 0x16u);
        }
      }

      v8 = [CPLErrors incorrectMachineStateErrorWithReason:@"No session opened"];
      (*(v4 + 2))(v4, v8);
    }
  }

  else
  {
    sub_10018EA3C();
    v6 = *buf;
  }
}

- (void)getChangeBatchWithCompletionHandler:(id)a3
{
  v4 = a3;
  manager = self->_manager;
  if (manager)
  {
    v6 = [(CPLLibraryManager *)manager currentSession];
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v7 = sub_10001A484();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          *&buf[4] = v6;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Getting changes from %@", buf, 0xCu);
        }
      }

      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10001D284;
      v11[3] = &unk_100272EE8;
      v12 = v4;
      [v6 getChangeBatchWithCompletionHandler:v11];
      v8 = v12;
    }

    else
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v9 = sub_10001A484();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = self->_manager;
          *buf = 138412546;
          *&buf[4] = self;
          v14 = 2112;
          v15 = v10;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%@ tried to get changes for %@ but there is no current pull session", buf, 0x16u);
        }
      }

      v8 = [CPLErrors incorrectMachineStateErrorWithReason:@"No session opened"];
      (*(v4 + 2))(v4, v8, 0);
    }
  }

  else
  {
    sub_10018EC14();
    v6 = *buf;
  }
}

- (void)acknowledgeChangeBatch:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  manager = self->_manager;
  if (manager)
  {
    v9 = [(CPLLibraryManager *)manager currentSession];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v10 = sub_10001A484();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          *&buf[4] = v9;
          v17 = 2112;
          v18 = v6;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Acknowledging batch from %@: %@", buf, 0x16u);
        }
      }

      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10001D6B8;
      v14[3] = &unk_100272F10;
      v15 = v7;
      [v9 acknowledgeChangeBatch:v6 withCompletionHandler:v14];
      v11 = v15;
    }

    else
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v12 = sub_10001A484();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = self->_manager;
          *buf = 138412546;
          *&buf[4] = self;
          v17 = 2112;
          v18 = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@ tried to acknowledge a batch for %@ but there is no current pull session", buf, 0x16u);
        }
      }

      v11 = [CPLErrors incorrectMachineStateErrorWithReason:@"No session opened"];
      (*(v7 + 2))(v7, v11, 0);
    }
  }

  else
  {
    sub_10018EE34();
    v9 = *buf;
  }
}

- (void)commitChangeBatch:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  manager = self->_manager;
  if (manager)
  {
    v9 = [(CPLLibraryManager *)manager currentSession];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v10 = sub_10001A484();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          *&buf[4] = v9;
          v17 = 2112;
          v18 = v6;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Committing batch to %@: %@", buf, 0x16u);
        }
      }

      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10001D978;
      v14[3] = &unk_100272F38;
      v15 = v7;
      [v9 commitChangeBatch:v6 withUnderlyingCompletionHandler:v14];
      v11 = v15;
    }

    else
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v12 = sub_10001A484();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = self->_manager;
          *buf = 138412546;
          *&buf[4] = self;
          v17 = 2112;
          v18 = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@ tried to commit a batch for %@ but there is no current push session", buf, 0x16u);
        }
      }

      v11 = [CPLErrors incorrectMachineStateErrorWithReason:@"No session opened"];
      (*(v7 + 2))(v7, v11, 0, 0, 0);
    }
  }

  else
  {
    sub_10018F04C();
    v9 = *buf;
  }
}

- (void)getResourcesForItemWithScopedIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  manager = self->_manager;
  if (manager)
  {
    [(CPLLibraryManager *)manager getResourcesForItemWithScopedIdentifier:v6 completionHandler:v7];
  }

  else
  {
    sub_10018F124();
  }
}

- (void)compactFileCacheWithCompletionHandler:(id)a3
{
  v4 = a3;
  manager = self->_manager;
  if (manager)
  {
    [(CPLLibraryManager *)manager compactFileCacheWithCompletionHandler:v4];
  }

  else
  {
    sub_10018F1F4();
  }
}

- (void)checkHasBackgroundDownloadOperationsWithCompletionHandler:(id)a3
{
  v5 = a3;
  v6 = v5;
  manager = self->_manager;
  if (manager)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10001E15C;
    v11[3] = &unk_100272F60;
    v12 = v5;
    [(CPLLibraryManager *)manager checkHasBackgroundDownloadOperationsWithCompletionHandler:v11];
    v8 = v12;
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v9 = sub_10001A484();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = NSStringFromSelector(a2);
        *buf = 138412546;
        v14 = self;
        v15 = 2112;
        v16 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%@ tried to call %@ for a manager that is not present", buf, 0x16u);
      }
    }

    v8 = +[CPLErrors unknownError];
    (v6)[2](v6, 0, v8);
  }
}

- (void)getStatusForRecordsWithScopedIdentifiers:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  manager = self->_manager;
  if (manager)
  {
    [(CPLLibraryManager *)manager getStatusForRecordsWithScopedIdentifiers:v6 completionHandler:v7];
  }

  else
  {
    sub_10018F2C0();
  }
}

- (void)getChangedStatusesWithCompletionHandler:(id)a3
{
  v4 = a3;
  manager = self->_manager;
  if (manager)
  {
    [(CPLLibraryManager *)manager getChangedStatusesWithCompletionHandler:v4];
  }

  else
  {
    sub_10018F2C0();
  }
}

- (void)getScopeStatusCountsForScopeWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  manager = self->_manager;
  if (manager)
  {
    [(CPLLibraryManager *)manager getScopeStatusCountsForScopeWithIdentifier:v6 completionHandler:v7];
  }

  else
  {
    sub_10018F2C0();
  }
}

- (void)testKey:(id)a3 value:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  manager = self->_manager;
  if (manager)
  {
    [(CPLLibraryManager *)manager testKey:v8 value:v9 completionHandler:v10];
  }

  else
  {
    sub_10018F2C0();
  }
}

- (void)getTargetsForRecordsWithScopedIdentifiers:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  manager = self->_manager;
  if (manager)
  {
    [(CPLLibraryManager *)manager getTargetsForRecordsWithScopedIdentifiers:v6 completionHandler:v7];
  }

  else
  {
    sub_10018F2C0();
  }
}

- (void)resetCacheWithOption:(unint64_t)a3 reason:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  manager = self->_manager;
  if (manager)
  {
    [(CPLLibraryManager *)manager resetCacheWithOption:a3 reason:v8 completionHandler:v9];
  }

  else
  {
    sub_10018F39C();
  }
}

- (void)getListOfComponentsWithCompletionHandler:(id)a3
{
  v4 = a3;
  manager = self->_manager;
  if (manager)
  {
    [(CPLLibraryManager *)manager getListOfComponentsWithCompletionHandler:v4];
  }

  else
  {
    sub_10018F2C0();
  }
}

- (void)getStatusForComponents:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  manager = self->_manager;
  if (manager)
  {
    [(CPLLibraryManager *)manager getStatusForComponents:v6 completionHandler:v7];
  }

  else
  {
    sub_10018F2C0();
  }
}

- (void)getStatusArrayForComponents:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  manager = self->_manager;
  if (manager)
  {
    [(CPLLibraryManager *)manager getStatusArrayForComponents:v6 completionHandler:v7];
  }

  else
  {
    sub_10018F2C0();
  }
}

- (void)getCloudCacheRecordsWithLocalScopedIdentifiers:(id)a3 desiredProperties:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  manager = self->_manager;
  if (manager)
  {
    [(CPLLibraryManager *)manager getCloudCacheRecordsWithLocalScopedIdentifiers:v8 desiredProperties:v9 completionHandler:v10];
  }

  else
  {
    sub_10018F2C0();
  }
}

- (void)forceBackupWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = v4;
  manager = self->_manager;
  if (manager)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10001E7E8;
    v8[3] = &unk_100272EC0;
    v9 = v4;
    [(CPLLibraryManager *)manager forceBackupWithCompletionHandler:v8];
    v7 = v9;
  }

  else
  {
    sub_10018F564();
    v7 = v10;
  }
}

- (void)requestClientToPushAllChangesWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = v4;
  manager = self->_manager;
  if (manager)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10001E904;
    v8[3] = &unk_100272EC0;
    v9 = v4;
    [(CPLLibraryManager *)manager requestClientToPushAllChangesWithCompletionHandler:v8];
    v7 = v9;
  }

  else
  {
    sub_10018F630();
    v7 = v10;
  }
}

- (void)requestClientToPullAllChangesInScopeIdentifiers:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  manager = self->_manager;
  if (manager)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10001EA34;
    v11[3] = &unk_100272EC0;
    v12 = v7;
    [(CPLLibraryManager *)manager requestClientToPullAllChangesInScopeIdentifiers:v6 completionHandler:v11];
    v10 = v12;
  }

  else
  {
    sub_10018F6FC();
    v10 = v13;
  }
}

- (void)provideScopeChangeForScopeWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  manager = self->_manager;
  if (manager)
  {
    [(CPLLibraryManager *)manager provideScopeChangeForScopeWithIdentifier:v6 completionHandler:v7];
  }

  else
  {
    sub_10018F7C8();
  }
}

- (void)provideRecordWithCloudScopeIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  manager = self->_manager;
  if (manager)
  {
    [(CPLLibraryManager *)manager provideRecordWithCloudScopeIdentifier:v6 completionHandler:v7];
  }

  else
  {
    sub_10018F7C8();
  }
}

- (void)provideCloudResource:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  manager = self->_manager;
  if (manager)
  {
    [(CPLLibraryManager *)manager provideCloudResource:v6 completionHandler:v7];
  }

  else
  {
    sub_10018F7C8();
  }
}

- (void)attachComputeStates:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  manager = self->_manager;
  if (manager)
  {
    [(CPLLibraryManager *)manager attachComputeStates:v6 completionHandler:v7];
  }

  else
  {
    sub_10018F894();
  }
}

- (void)getStreamingURLForResource:(id)a3 intent:(unint64_t)a4 hints:(id)a5 timeRange:(id *)a6 clientBundleID:(id)a7 completionHandler:(id)a8
{
  v15 = a3;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v19 = v18;
  manager = self->_manager;
  if (manager)
  {
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10001F138;
    v25[3] = &unk_100272FB0;
    v26 = v18;
    v21 = *&a6->var0.var3;
    *buf = *&a6->var0.var0;
    *&buf[16] = v21;
    v28 = *&a6->var1.var1;
    [(CPLLibraryManager *)manager getStreamingURLOrMediaMakerDataForResource:v15 intent:a4 hints:v16 timeRange:buf clientBundleID:v17 completionHandler:v25];
    v22 = v26;
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v23 = sub_10001A484();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = NSStringFromSelector(a2);
        *buf = 138412546;
        *&buf[4] = self;
        *&buf[12] = 2112;
        *&buf[14] = v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%@ tried to call %@ for a manager that is not present", buf, 0x16u);
      }
    }

    v22 = +[CPLErrors unknownError];
    (v19)[2](v19, 0, 0, 0, 0, v22);
  }
}

- (void)rampingRequestForResourceType:(unint64_t)a3 numRequested:(unint64_t)a4 completionHandler:(id)a5
{
  v9 = a5;
  v10 = v9;
  manager = self->_manager;
  if (manager)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10001F398;
    v15[3] = &unk_100272FD8;
    v16 = v9;
    [(CPLLibraryManager *)manager rampingRequestForResourceType:a3 numRequested:a4 completionHandler:v15];
    v12 = v16;
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v13 = sub_10001A484();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = NSStringFromSelector(a2);
        *buf = 138412546;
        v18 = self;
        v19 = 2112;
        v20 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%@ tried to call %@ for a manager that is not present", buf, 0x16u);
      }
    }

    v12 = +[CPLErrors unknownError];
    (v10)[2](v10, 0, 0, v12);
  }
}

- (void)beginInMemoryDownloadOfResource:(id)a3 clientBundleID:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_manager)
  {
    v11 = voucher_copy();
    if ((_CPLSilentLogging & 1) == 0)
    {
      v12 = sub_10001A484();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        manager = self->_manager;
        *buf = 138412546;
        v22 = manager;
        v23 = 2112;
        v24 = v8;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Asking %@ for a task to download %@ in-memory", buf, 0x16u);
      }
    }

    v14 = self->_manager;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10001F5D0;
    v16[3] = &unk_100273000;
    v17 = v8;
    v18 = self;
    v19 = v11;
    v20 = v10;
    v15 = v11;
    [(CPLLibraryManager *)v14 beginInMemoryDownloadOfResource:v17 clientBundleID:v9 completionHandler:v16];
  }

  else
  {
    sub_10018F95C();
  }
}

- (void)resolveLocalScopedIdentifiersForCloudScopedIdentifiers:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  manager = self->_manager;
  if (manager)
  {
    [(CPLLibraryManager *)manager resolveLocalScopedIdentifiersForCloudScopedIdentifiers:v6 completionHandler:v7];
  }

  else
  {
    sub_10018F2C0();
  }
}

- (void)getMappedScopedIdentifiersForScopedIdentifiers:(id)a3 inAreLocalIdentifiers:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  manager = self->_manager;
  if (manager)
  {
    if (v6)
    {
      [(CPLLibraryManager *)manager getCloudScopedIdentifiersForLocalScopedIdentifiers:v8 completionHandler:v9];
    }

    else
    {
      [(CPLLibraryManager *)manager getLocalScopedIdentifiersForCloudScopedIdentifiers:v8 completionHandler:v9];
    }
  }

  else
  {
    sub_10018F2C0();
  }
}

- (void)createScope:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  manager = self->_manager;
  if (manager)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10001F99C;
    v14[3] = &unk_100273028;
    v15 = v8;
    [(CPLLibraryManager *)manager createScope:v7 completionHandler:v14];
    v11 = v15;
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v12 = sub_10001A484();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = NSStringFromSelector(a2);
        *buf = 138412546;
        v17 = self;
        v18 = 2112;
        v19 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@ tried to call %@ for a manager that is not present", buf, 0x16u);
      }
    }

    v11 = +[CPLErrors unknownError];
    (v9)[2](v9, 0, v11);
  }
}

- (void)updateShareForScope:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  manager = self->_manager;
  if (manager)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10001FBB8;
    v14[3] = &unk_100273028;
    v15 = v8;
    [(CPLLibraryManager *)manager updateShareForScope:v7 completionHandler:v14];
    v11 = v15;
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v12 = sub_10001A484();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = NSStringFromSelector(a2);
        *buf = 138412546;
        v17 = self;
        v18 = 2112;
        v19 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@ tried to call %@ for a manager that is not present", buf, 0x16u);
      }
    }

    v11 = +[CPLErrors unknownError];
    (v9)[2](v9, 0, v11);
  }
}

- (void)refreshScopeWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  manager = self->_manager;
  if (manager)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10001FFD8;
    v14[3] = &unk_100273028;
    v15 = v8;
    [(CPLLibraryManager *)manager refreshScopeWithIdentifier:v7 completionHandler:v14];
    v11 = v15;
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v12 = sub_10001A484();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = NSStringFromSelector(a2);
        *buf = 138412546;
        v17 = self;
        v18 = 2112;
        v19 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@ tried to call %@ for a manager that is not present", buf, 0x16u);
      }
    }

    v11 = +[CPLErrors unknownError];
    (v9)[2](v9, 0, v11);
  }
}

- (void)fetchSharedScopeFromShareURL:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  manager = self->_manager;
  if (manager)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000201F4;
    v14[3] = &unk_100273028;
    v15 = v8;
    [(CPLLibraryManager *)manager fetchSharedScopeFromShareURL:v7 completionHandler:v14];
    v11 = v15;
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v12 = sub_10001A484();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = NSStringFromSelector(a2);
        *buf = 138412546;
        v17 = self;
        v18 = 2112;
        v19 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@ tried to call %@ for a manager that is not present", buf, 0x16u);
      }
    }

    v11 = +[CPLErrors unknownError];
    (v9)[2](v9, 0, v11);
  }
}

- (void)acceptSharedScope:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  manager = self->_manager;
  if (manager)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10002040C;
    v14[3] = &unk_100272EC0;
    v15 = v8;
    [(CPLLibraryManager *)manager acceptSharedScope:v7 completionHandler:v14];
    v11 = v15;
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v12 = sub_10001A484();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = NSStringFromSelector(a2);
        *buf = 138412546;
        v17 = self;
        v18 = 2112;
        v19 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@ tried to call %@ for a manager that is not present", buf, 0x16u);
      }
    }

    v11 = +[CPLErrors unknownError];
    (v9)[2](v9, v11);
  }
}

- (void)fetchExistingSharedLibraryScopeWithCompletionHandler:(id)a3
{
  v5 = a3;
  v6 = v5;
  manager = self->_manager;
  if (manager)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000205F0;
    v11[3] = &unk_100273028;
    v12 = v5;
    [(CPLLibraryManager *)manager fetchExistingSharedLibraryScopeWithCompletionHandler:v11];
    v8 = v12;
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v9 = sub_10001A484();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = NSStringFromSelector(a2);
        *buf = 138412546;
        v14 = self;
        v15 = 2112;
        v16 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%@ tried to call %@ for a manager that is not present", buf, 0x16u);
      }
    }

    v8 = +[CPLErrors unknownError];
    (v6)[2](v6, 0, v8);
  }
}

- (void)startExitFromSharedScopeWithIdentifier:(id)a3 retentionPolicy:(int64_t)a4 exitSource:(int64_t)a5 completionHandler:(id)a6
{
  v11 = a3;
  v12 = a6;
  v13 = v12;
  manager = self->_manager;
  if (manager)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100020824;
    v18[3] = &unk_100273050;
    v19 = v12;
    [(CPLLibraryManager *)manager startExitFromSharedScopeWithIdentifier:v11 retentionPolicy:a4 exitSource:a5 completionHandler:v18];
    v15 = v19;
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v16 = sub_10001A484();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = NSStringFromSelector(a2);
        *buf = 138412546;
        v21 = self;
        v22 = 2112;
        v23 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%@ tried to call %@ for a manager that is not present", buf, 0x16u);
      }
    }

    v15 = +[CPLErrors unknownError];
    (v13)[2](v13, 0, v15);
  }
}

- (void)removeParticipants:(id)a3 fromSharedScopeWithIdentifier:(id)a4 retentionPolicy:(int64_t)a5 exitSource:(int64_t)a6 completionHandler:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a7;
  v16 = v15;
  manager = self->_manager;
  if (manager)
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100020A6C;
    v21[3] = &unk_100273050;
    v22 = v15;
    [(CPLLibraryManager *)manager removeParticipants:v13 fromSharedScopeWithIdentifier:v14 retentionPolicy:a5 exitSource:a6 completionHandler:v21];
    v18 = v22;
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v19 = sub_10001A484();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = NSStringFromSelector(a2);
        *buf = 138412546;
        v24 = self;
        v25 = 2112;
        v26 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%@ tried to call %@ for a manager that is not present", buf, 0x16u);
      }
    }

    v18 = +[CPLErrors unknownError];
    (v16)[2](v16, 0, v18);
  }
}

- (void)sharedLibraryRampCheckWithCompletionHandler:(id)a3
{
  v5 = a3;
  v6 = v5;
  manager = self->_manager;
  if (manager)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100020C6C;
    v11[3] = &unk_100272F60;
    v12 = v5;
    [(CPLLibraryManager *)manager sharedLibraryRampCheckWithCompletionHandler:v11];
    v8 = v12;
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v9 = sub_10001A484();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = NSStringFromSelector(a2);
        *buf = 138412546;
        v14 = self;
        v15 = 2112;
        v16 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%@ tried to call %@ for a manager that is not present", buf, 0x16u);
      }
    }

    v8 = +[CPLErrors unknownError];
    (v6)[2](v6, 0, v8);
  }
}

- (void)getStatusForPendingRecordsSharedToScopeWithIdentifier:(id)a3 maximumCount:(unint64_t)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  manager = self->_manager;
  if (manager)
  {
    [(CPLLibraryManager *)manager getStatusForPendingRecordsSharedToScopeWithIdentifier:v8 maximumCount:a4 completionHandler:v9];
  }

  else
  {
    sub_10018F2C0();
  }
}

- (void)queryUserDetailsForShareParticipants:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  manager = self->_manager;
  if (manager)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100020EF4;
    v14[3] = &unk_100273078;
    v15 = v8;
    [(CPLLibraryManager *)manager queryUserDetailsForShareParticipants:v7 completionHandler:v14];
    v11 = v15;
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v12 = sub_10001A484();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = NSStringFromSelector(a2);
        *buf = 138412546;
        v17 = self;
        v18 = 2112;
        v19 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@ tried to call %@ for a manager that is not present", buf, 0x16u);
      }
    }

    v11 = +[CPLErrors unknownError];
    (v9)[2](v9, 0, v11);
  }
}

- (void)forceSyncForScopeIdentifiers:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_manager)
  {
    v8 = voucher_copy();
    if ((_CPLSilentLogging & 1) == 0)
    {
      v9 = sub_10001A484();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        manager = self->_manager;
        v11 = [v6 componentsJoinedByString:{@", "}];
        *buf = 138412546;
        v20 = manager;
        v21 = 2112;
        v22 = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Asking %@ for a task to sync %@", buf, 0x16u);
      }
    }

    v12 = self->_manager;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100021138;
    v14[3] = &unk_1002730A0;
    v15 = v6;
    v16 = self;
    v17 = v8;
    v18 = v7;
    v13 = v8;
    [(CPLLibraryManager *)v12 forceSynchronizingScopeWithIdentifiers:v15 completionHandler:v14];
  }

  else
  {
    sub_10018FAB4();
  }
}

- (void)_storeUploadTransferTask:(id)a3
{
  v6 = a3;
  v4 = [v6 taskIdentifier];
  v5 = [(NSMutableDictionary *)self->_uploadTasksPerIdentifier objectForKey:v4];

  if (!v5)
  {
    [(NSMutableDictionary *)self->_uploadTasksPerIdentifier setObject:v6 forKey:v4];
  }
}

- (void)libraryManager:(id)a3 providePayloadForComputeStates:(id)a4 inFolderWithURL:(id)a5 completionHandler:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [NSProgress progressWithTotalUnitCount:1];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100021820;
  v16[3] = &unk_1002731C0;
  v16[4] = self;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  v13 = v10;
  v14 = v9;
  v15 = v11;
  [v12 performAsCurrentWithPendingUnitCount:1 usingBlock:v16];
}

- (void)connection:(id)a3 handleInvocation:(id)a4 isReply:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v5)
  {
    sub_10018FC30(self, v9);
  }

  else
  {
    v11 = [v9 selector];
    if (protocol_getMethodDescription(self->_allowedProtocol, v11, 1, 1).name)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v12 = sub_10001A484();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v13 = NSStringFromSelector(v11);
          v16 = 138412546;
          v17 = self;
          v18 = 2112;
          v19 = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%@ is calling %@", &v16, 0x16u);
        }
      }

      [v10 invoke];
    }

    else
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v14 = sub_10001A484();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = NSStringFromSelector(v11);
          v16 = 138412546;
          v17 = self;
          v18 = 2112;
          v19 = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%@ tried to call %@ but is not allowed to", &v16, 0x16u);
        }
      }

      [v8 invalidate];
    }
  }
}

- (void)_withVoucherForTaskWithIdentifier:(id)a3 do:(id)a4
{
  v9 = a4;
  v6 = [(NSMutableDictionary *)self->_vouchersPerTaskIdentifier objectForKeyedSubscript:a3];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    voucher_adopt();
    v9[2]();
  }

  else
  {
    v9[2]();
  }
}

- (void)_storeVoucher:(id)a3 forTaskWithIdentifier:(id)a4
{
  if (a3)
  {
    [(NSMutableDictionary *)self->_vouchersPerTaskIdentifier setObject:a3 forKeyedSubscript:a4];
  }
}

- (CPLDaemonLibraryManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)dealloc
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_10001A484();
    if (sub_100021E38(v4))
    {
      v7 = 138412290;
      v8 = self;
      sub_10000FB94(&_mh_execute_header, v2, v5, "%@ has been deallocated", &v7);
    }
  }

  v6.receiver = self;
  v6.super_class = CPLDaemonLibraryManager;
  [(CPLDaemonLibraryManager *)&v6 dealloc];
}

- (void)cancelTaskWithIdentifier:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v3 = [(NSMutableDictionary *)self->_downloadTasksPerIdentifier objectForKey:v5];
    if (!v3)
    {
      v3 = [(NSMutableDictionary *)self->_uploadTasksPerIdentifier objectForKey:v5];
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v6 = sub_10001A484();
      if (sub_100021E20(v6))
      {
        sub_1000139A0();
        sub_100021D94(&_mh_execute_header, v7, v8, "Cancelling %@", v9, v10, v11, v12, v19);
      }
    }

    [v3 cancelTask];
LABEL_12:

    goto LABEL_13;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v13 = sub_10001A484();
    if (sub_100003448(v13))
    {
      sub_100021D44();
      _os_log_impl(v14, v15, v16, v17, v18, 0xCu);
    }

    goto LABEL_12;
  }

LABEL_13:
}

- (void)acknowledgeChangedStatuses:(id)a3
{
  sub_100021DB4();
  v7 = v6;
  v8 = sub_100021EB4();
  if (v8)
  {
    [v8 acknowledgeChangedStatuses:v3];
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v9 = sub_10001A484();
    if (sub_100003448(v9))
    {
      v10 = NSStringFromSelector(v5);
      sub_100021CC8();
      sub_100021D44();
      _os_log_impl(v11, v12, v13, v14, v15, 0x16u);
    }
  }
}

- (void)addInfoToLog:(id)a3
{
  v5 = a3;
  v6 = sub_100021EB4();
  if (v6)
  {
    [v6 addInfoToLog:v3];
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = sub_10001A484();
    if (sub_100003448(v7))
    {
      sub_100021CFC();
      sub_100021D44();
      _os_log_impl(v8, v9, v10, v11, v12, 0x16u);
    }
  }
}

- (void)reportSetting:(id)a3 hasBeenSetToValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  manager = self->_manager;
  if (manager)
  {
    [(CPLLibraryManager *)manager reportSetting:v6 hasBeenSetToValue:v7];
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v9 = sub_10001A484();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100021CFC();
      v12 = v6;
      v13 = v10;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%@ wants to report setting '%@' has been set to %@ but manager is not present", v11, 0x20u);
    }
  }
}

- (void)reportMiscInformation:(id)a3
{
  v5 = a3;
  v6 = sub_100021EB4();
  if (v6)
  {
    [v6 reportMiscInformation:v3];
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = sub_10001A484();
    if (sub_100003448(v7))
    {
      sub_100021CFC();
      sub_100021D44();
      _os_log_impl(v8, v9, v10, v11, v12, 0x16u);
    }
  }
}

- (void)cancelSyncTaskWithIdentifier:(id)a3
{
  v5 = a3;
  if (v5)
  {
    self = [(NSMutableDictionary *)self->_forceSyncTasksPerIdentifier objectForKeyedSubscript:v5];
    if ((_CPLSilentLogging & 1) == 0)
    {
      v6 = sub_10001A484();
      if (sub_100021E20(v6))
      {
        sub_1000139A0();
        sub_100021D94(&_mh_execute_header, v7, v8, "Cancelling %@", v9, v10, v11, v12, v19);
      }
    }

    [(CPLDaemonLibraryManager *)self cancelTask];
LABEL_10:

    goto LABEL_11;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v13 = sub_10001A484();
    if (sub_100003448(v13))
    {
      sub_100021D44();
      _os_log_impl(v14, v15, v16, v17, v18, 0xCu);
    }

    goto LABEL_10;
  }

LABEL_11:
}

- (void)libraryManagerStatusDidChange:(id)a3
{
  v5 = a3;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = sub_10001A484();
    if (sub_100021E20(v6))
    {
      manager = self->_manager;
      v8 = [(CPLLibraryManager *)manager status];
      [(CPLLibraryManager *)self->_manager statusError];
      v22 = 138412802;
      v23 = manager;
      v24 = 2048;
      v25 = v8;
      v27 = v26 = 2112;
      sub_100021DDC();
      _os_log_impl(v9, v10, v11, v12, v13, 0x20u);
    }
  }

  v14 = [(CPLDaemonLibraryManager *)self _clientWithErrorHandler:&stru_1002730C0];
  v15 = [NSNumber numberWithUnsignedInteger:[(CPLLibraryManager *)self->_manager status]];
  v20[1] = @"error";
  v21[0] = v15;
  v16 = [(CPLLibraryManager *)self->_manager statusError];
  v17 = [v16 cplSafeErrorForXPC];
  v18 = v17;
  if (!v17)
  {
    v18 = +[NSNull null];
  }

  v21[1] = v18;
  v19 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];
  [v14 libraryManagerDidUpdateStatusWithProperties:v19];

  if (!v17)
  {
  }
}

- (void)libraryManagerDidStartSynchronization:(id)a3
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_10001A484();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = NSStringFromSelector(a2);
      v7 = 138412290;
      v8 = v5;
      sub_10000FB94(&_mh_execute_header, v4, v6, "%@ is not implemented yet", &v7);
    }
  }
}

- (void)libraryManagerHasChangesToPull:(id)a3
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_10001A484();
    if (sub_100021E38(v5))
    {
      manager = self->_manager;
      sub_100003474();
      sub_100021D64();
      _os_log_impl(v7, v8, v9, v10, v11, 0x16u);
    }
  }

  v12 = [(CPLDaemonLibraryManager *)self _clientWithErrorHandler:&stru_1002730E0];
  [v12 libraryManagerHasChangesToPull];
}

- (void)libraryManagerHasStatusChanges:(id)a3
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_10001A484();
    if (sub_100021E38(v5))
    {
      manager = self->_manager;
      sub_100003474();
      sub_100021D64();
      _os_log_impl(v7, v8, v9, v10, v11, 0x16u);
    }
  }

  v12 = [(CPLDaemonLibraryManager *)self _clientWithErrorHandler:&stru_100273100];
  [v12 libraryManagerHasStatusChanges];
}

- (void)libraryManager:(id)a3 provideLocalResource:(id)a4 recordClass:(Class)a5 completionHandler:(id)a6
{
  v10 = a4;
  v11 = a6;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v12 = sub_10001A484();
    if (sub_100021EE0(v12))
    {
      manager = self->_manager;
      sub_100021E9C();
      v22 = 2112;
      v23 = v10;
      v24 = 2112;
      v25 = self;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%@ wants (local) %@. Asking %@", buf, 0x20u);
    }
  }

  sub_100021D24();
  sub_100021E90();
  v18[2] = sub_10018C398;
  v18[3] = &unk_1002727E8;
  v19 = v10;
  v20 = v11;
  v14 = v11;
  v15 = v10;
  v16 = [(CPLDaemonLibraryManager *)self _clientWithErrorHandler:v18];
  v17 = NSStringFromClass(a5);
  [v16 provideLocalResource:v15 recordClassString:v17 completionHandler:v14];
}

- (void)libraryManager:(id)a3 pushAllChangesWithCompletionHandler:(id)a4
{
  v6 = a4;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = sub_10001A484();
    if (sub_100021E20(v7))
    {
      manager = self->_manager;
      sub_100021E9C();
      sub_100021DDC();
      _os_log_impl(v9, v10, v11, v12, v13, 0x16u);
    }
  }

  sub_1000033D8();
  sub_10000FB28();
  v14 = v6;
  [sub_100021DF8() _clientWithErrorHandler:?];
  objc_claimAutoreleasedReturnValue();
  sub_100021EA8();
  [v15 pushAllChangesWithCompletionHandler:?];
}

- (void)libraryManager:(id)a3 downloadDidStartForResourceTransferTask:(id)a4
{
  v5 = a4;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = sub_10001A484();
    if (sub_100021E20(v6))
    {
      sub_100021DDC();
      _os_log_impl(v7, v8, v9, v10, v11, 0x16u);
    }
  }

  [v5 taskIdentifier];
  objc_claimAutoreleasedReturnValue();
  sub_1000033D8();
  sub_10000FB28();
  v15 = v12;
  v13 = v12;
  v14 = v5;
  [sub_100021E50() _withVoucherForTaskWithIdentifier:v13 do:?];
}

- (void)libraryManager:(id)a3 downloadDidProgress:(float)a4 forResourceTransferTask:(id)a5
{
  v8 = a5;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v9 = sub_10001A484();
    if (sub_100021E20(v9))
    {
      v22 = 138412802;
      v23 = v8;
      v24 = 2048;
      v25 = (a4 * 100.0);
      v26 = 2112;
      v27 = self;
      sub_100021DDC();
      _os_log_impl(v10, v11, v12, v13, v14, 0x20u);
    }
  }

  [v8 taskIdentifier];
  objc_claimAutoreleasedReturnValue();
  sub_100021D24();
  sub_100021E90();
  v18[2] = sub_10002132C;
  v18[3] = &unk_100273128;
  v18[4] = self;
  v19 = v8;
  v21 = a4;
  v20 = v15;
  v16 = v15;
  v17 = v8;
  [(CPLDaemonLibraryManager *)self _withVoucherForTaskWithIdentifier:v16 do:v18];
}

- (void)libraryManager:(id)a3 downloadDidFinishForResourceTransferTask:(id)a4 finalResource:(id)a5 withError:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v13 = sub_10001A484();
    if (sub_100021EE0(v13))
    {
      v14 = [v10 resource];
      v26 = 138413058;
      v27 = v10;
      v28 = 2112;
      v29 = v14;
      sub_100021E7C();
      sub_100021E60(&_mh_execute_header, v15, v16, "Download for %@ did finish with final resource %@ and error: %@. Notifying %@", &v26);
    }
  }

  v17 = [v10 taskIdentifier];
  sub_1000033D8();
  sub_10000FB28();
  v23 = v18;
  v24 = v11;
  v25 = v12;
  v19 = v12;
  v20 = v11;
  v21 = v17;
  v22 = v10;
  [sub_100021E50() _withVoucherForTaskWithIdentifier:v21 do:?];
  [(NSMutableDictionary *)self->_downloadTasksPerIdentifier removeObjectForKey:v21];
  [(CPLDaemonLibraryManager *)self _dropVoucherForTaskWithIdentifier:v21];
}

- (void)libraryManager:(id)a3 inMemoryDownloadDidFinishForResourceTransferTask:(id)a4 data:(id)a5 withError:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v13 = sub_10001A484();
    if (sub_100021EE0(v13))
    {
      v25 = 138413058;
      v26 = v10;
      v27 = 2048;
      v28 = [v11 length];
      sub_100021E7C();
      sub_100021E60(&_mh_execute_header, v14, v15, "In-memory download for %@ did finish with %lu bytes and error: %@. Notifying %@", &v25);
    }
  }

  v16 = [v10 taskIdentifier];
  sub_1000033D8();
  sub_10000FB28();
  v22 = v17;
  v23 = v11;
  v24 = v12;
  v18 = v12;
  v19 = v11;
  v20 = v16;
  v21 = v10;
  [sub_100021E50() _withVoucherForTaskWithIdentifier:v20 do:?];
  [(NSMutableDictionary *)self->_downloadTasksPerIdentifier removeObjectForKey:v20];
  [(CPLDaemonLibraryManager *)self _dropVoucherForTaskWithIdentifier:v20];
}

- (void)libraryManager:(id)a3 backgroundDownloadDidFinishForResource:(id)a4
{
  v6 = a4;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = sub_10001A484();
    if (sub_100021E20(v7))
    {
      v12 = 138412290;
      v13 = v6;
      sub_100021DC0(&_mh_execute_header, v8, v9, "Background download for %@ did finish", &v12);
    }
  }

  sub_1000033D8();
  sub_10000FB28();
  v10 = v6;
  [sub_100021DF8() _clientWithErrorHandler:?];
  objc_claimAutoreleasedReturnValue();
  sub_100021EA8();
  [v11 backgroundDownloadDidFinishForResource:?];
}

- (void)libraryManager:(id)a3 backgroundDownloadDidFailForResource:(id)a4
{
  v6 = a4;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = sub_10001A484();
    if (sub_100021E20(v7))
    {
      v12 = 138412290;
      v13 = v6;
      sub_100021DC0(&_mh_execute_header, v8, v9, "Background download for %@ did fail", &v12);
    }
  }

  sub_1000033D8();
  sub_10000FB28();
  v10 = v6;
  [sub_100021DF8() _clientWithErrorHandler:?];
  objc_claimAutoreleasedReturnValue();
  sub_100021EA8();
  [v11 backgroundDownloadDidFailForResource:?];
}

- (void)libraryManager:(id)a3 uploadDidStartForResourceTransferTask:(id)a4
{
  v6 = a4;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = sub_10001A484();
    if (sub_100021E20(v7))
    {
      v8 = [v6 resource];
      v15 = 138412290;
      v16 = v8;
      sub_100021DC0(&_mh_execute_header, v9, v10, "Upload for %@ did start", &v15);
    }
  }

  [(CPLDaemonLibraryManager *)self _storeUploadTransferTask:v6];
  sub_1000033D8();
  sub_10000FB28();
  v11 = v6;
  v12 = [sub_100021DF8() _clientWithErrorHandler:?];
  v13 = [v6 resource];
  v14 = [v6 taskIdentifier];
  [v12 uploadDidStartForResource:v13 withResourceTransferTask:v14];
}

- (void)libraryManager:(id)a3 uploadDidFinishForResourceTransferTask:(id)a4 withError:(id)a5
{
  v7 = a4;
  v8 = a5;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v9 = sub_10001A484();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = [v7 resource];
      *buf = 138412546;
      v23 = v10;
      v24 = 2112;
      v25 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Upload for %@ did finish with error %@", buf, 0x16u);
    }
  }

  sub_1000033D8();
  sub_10000FB28();
  v19 = sub_10018D610;
  v20 = &unk_100272468;
  v21 = v7;
  v11 = v7;
  v12 = [(CPLDaemonLibraryManager *)self _clientWithErrorHandler:v18];
  v13 = [v11 resource];
  v14 = [v11 taskIdentifier];
  v15 = [v8 cplSafeErrorForXPC];
  [v12 uploadOfResource:v13 didFinishForResourceTransferTask:v14 withError:v15];

  uploadTasksPerIdentifier = self->_uploadTasksPerIdentifier;
  v17 = [v11 taskIdentifier];
  [(NSMutableDictionary *)uploadTasksPerIdentifier removeObjectForKey:v17];
}

- (void)libraryManager:(id)a3 uploadDidProgress:(float)a4 forResourceTransferTask:(id)a5
{
  v8 = a5;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v9 = sub_10001A484();
    if (sub_100021E20(v9))
    {
      v20 = [v8 resource];
      sub_100021DDC();
      _os_log_impl(v10, v11, v12, v13, v14, 0x16u);
    }
  }

  [(CPLDaemonLibraryManager *)self _storeUploadTransferTask:v8];
  sub_1000033D8();
  sub_10000FB28();
  v15 = v8;
  v16 = [sub_100021DF8() _clientWithErrorHandler:?];
  v17 = [v8 resource];
  v18 = [v8 taskIdentifier];
  *&v19 = a4;
  [v16 uploadOfResource:v17 didProgress:v18 forResourceTransferTask:v19];
}

- (void)sizeOfResourcesToUploadDidChangeForLibraryManager:(id)a3
{
  v4 = a3;
  [v4 sizeOfResourcesToUpload];
  [v4 sizeOfOriginalResourcesToUpload];
  [v4 numberOfImagesToUpload];
  [v4 numberOfVideosToUpload];
  [v4 numberOfOtherItemsToUpload];

  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_10001A484();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_1000139A0();
      sub_10000FB94(&_mh_execute_header, v5, v6, "Size of resources to upload did change to %llu", v8);
    }
  }

  [(CPLDaemonLibraryManager *)self _clientWithErrorHandler:&stru_100273148];
  objc_claimAutoreleasedReturnValue();
  sub_100021EA8();
  [v7 libraryManagerDidUpdateSizeOfResourcesToUploadToSize:? sizeOfOriginalResourcesToUpload:? numberOfImages:? numberOfVideos:? numberOfOtherItems:?];
}

- (void)libraryManager:(id)a3 didFinishForceSyncTask:(id)a4 withErrors:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v12 = sub_10001A484();
    if (sub_100021EE0(v12))
    {
      v13 = [v10 scopeIdentifiers];
      v31 = 138413058;
      v32 = v10;
      v33 = 2112;
      v34 = v13;
      v35 = 2112;
      v36 = v11;
      v37 = 2112;
      v38 = self;
      sub_100021E60(&_mh_execute_header, v14, v15, "Force sync %@ for %@ did finish with errors: %@. Notifying %@", &v31);
    }
  }

  v16 = [v10 taskIdentifier];
  if ([v11 count])
  {
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100021600;
    v29[3] = &unk_100273170;
    v17 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v11, "count")}];
    v30 = v17;
    [v11 enumerateKeysAndObjectsUsingBlock:v29];
    v18 = v17;

    v11 = v18;
  }

  sub_1000033D8();
  sub_10000FB28();
  v23 = sub_100021674;
  v24 = &unk_100273198;
  v25 = self;
  v26 = v10;
  v27 = v16;
  v28 = v11;
  v19 = v11;
  v20 = v16;
  v21 = v10;
  [(CPLDaemonLibraryManager *)self _withVoucherForTaskWithIdentifier:v20 do:v22];
  [(NSMutableDictionary *)self->_forceSyncTasksPerIdentifier removeObjectForKey:v20];
  [(CPLDaemonLibraryManager *)self _dropVoucherForTaskWithIdentifier:v20];
}

@end