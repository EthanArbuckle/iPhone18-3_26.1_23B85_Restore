@interface NTKFaceSnapshotClient
+ (NTKFaceSnapshotClient)sharedInstance;
+ (id)_xpcQueue;
- (NTKFaceSnapshotClient)init;
- (void)_askDaemonForSnapshotOfDescriptor:(id)descriptor options:(id)options completion:(id)completion;
- (void)_askXPCServiceForSnapshotOfDescriptor:(id)descriptor options:(id)options completion:(id)completion;
- (void)_handleActiveDeviceChangedNotification;
- (void)_handleCustomMonogramChangedNotification;
- (void)_handleSignificantLocationChangeNotification;
- (void)_queue_askXPCServiceForSnapshotOfDescriptor:(id)descriptor options:(id)options completion:(id)completion;
- (void)_register;
- (void)_registerIfNeeded;
- (void)_setupDaemonConnection;
- (void)_updateAllSnapshots;
- (void)dealloc;
- (void)faceSnapshotChangedForKey:(id)key;
- (void)performAfterCompletingCurrentlyPendingSnapshots:(id)snapshots;
- (void)requestSnapshotOfFace:(id)face;
- (void)requestSnapshotOfFace:(id)face options:(id)options completion:(id)completion;
- (void)snapshotFace:(id)face options:(id)options completion:(id)completion;
- (void)snapshotLibrarySelectedFaceForDeviceUUID:(id)d options:(id)options completion:(id)completion;
@end

@implementation NTKFaceSnapshotClient

+ (NTKFaceSnapshotClient)sharedInstance
{
  if (sharedInstance_onceToken_24 != -1)
  {
    +[NTKFaceSnapshotClient sharedInstance];
  }

  v3 = sharedInstance___sharedInstance_9;

  return v3;
}

void __39__NTKFaceSnapshotClient_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(NTKFaceSnapshotClient);
  v1 = sharedInstance___sharedInstance_9;
  sharedInstance___sharedInstance_9 = v0;
}

+ (id)_xpcQueue
{
  if (_xpcQueue_onceToken != -1)
  {
    +[NTKFaceSnapshotClient _xpcQueue];
  }

  v3 = _xpcQueue___xpcQueue;

  return v3;
}

void __34__NTKFaceSnapshotClient__xpcQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.NanoTimeKit.NTKFaceSnapshotClient", v2);
  v1 = _xpcQueue___xpcQueue;
  _xpcQueue___xpcQueue = v0;
}

- (NTKFaceSnapshotClient)init
{
  v9.receiver = self;
  v9.super_class = NTKFaceSnapshotClient;
  v2 = [(NTKFaceSnapshotClient *)&v9 init];
  v3 = v2;
  if (v2)
  {
    [(NTKFaceSnapshotClient *)v2 _setupDaemonConnection];
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.nanotimekit.facesnapshotclient.diskaccess", v4);
    snapshotFileQueue = v3->_snapshotFileQueue;
    v3->_snapshotFileQueue = v5;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__handleCustomMonogramChangedNotification name:@"NTKCustomMonogramChangedNotification" object:0];
    [defaultCenter addObserver:v3 selector:sel__handleSignificantLocationChangeNotification name:@"NTKLocationManagerSignificantLocationChangeNotification" object:0];
    [defaultCenter addObserver:v3 selector:sel__handleActiveDeviceChangedNotification name:*MEMORY[0x277CBB640] object:0];
  }

  return v3;
}

- (void)_setupDaemonConnection
{
  if (!self->_daemonConnection)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _handleDaemonDidLaunchNotification_1, @"com.apple.nanotimekit.daemondidlaunch", 0, 0);
    v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.nanotimekit.facesnapshotserver" options:4096];
    daemonConnection = self->_daemonConnection;
    self->_daemonConnection = v4;

    v6 = self->_daemonConnection;
    v7 = NTKFaceSnapshotServerInterface();
    [(NSXPCConnection *)v6 setRemoteObjectInterface:v7];

    v8 = self->_daemonConnection;
    v9 = NTKFaceSnapshotClientInterface();
    [(NSXPCConnection *)v8 setExportedInterface:v9];

    v10 = [[_NTKFaceSnapshotClientProxy alloc] initWithWeakProxy:self];
    [(NSXPCConnection *)self->_daemonConnection setExportedObject:v10];
    v11 = self->_daemonConnection;
    v12 = +[NTKFaceSnapshotClient _xpcQueue];
    [(NSXPCConnection *)v11 _setQueue:v12];

    objc_initWeak(&location, self);
    v13 = self->_daemonConnection;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __47__NTKFaceSnapshotClient__setupDaemonConnection__block_invoke;
    v17[3] = &unk_27877DC58;
    objc_copyWeak(&v18, &location);
    [(NSXPCConnection *)v13 setInterruptionHandler:v17];
    v14 = self->_daemonConnection;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __47__NTKFaceSnapshotClient__setupDaemonConnection__block_invoke_2;
    v15[3] = &unk_27877DC58;
    objc_copyWeak(&v16, &location);
    [(NSXPCConnection *)v14 setInvalidationHandler:v15];
    [(NSXPCConnection *)self->_daemonConnection resume];
    [(NTKFaceSnapshotClient *)self _register];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }
}

void __47__NTKFaceSnapshotClient__setupDaemonConnection__block_invoke(uint64_t a1)
{
  v2 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __47__NTKFaceSnapshotClient__setupDaemonConnection__block_invoke_cold_1();
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__NTKFaceSnapshotClient__setupDaemonConnection__block_invoke_32;
  block[3] = &unk_27877DC58;
  objc_copyWeak(&v4, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v4);
}

void __47__NTKFaceSnapshotClient__setupDaemonConnection__block_invoke_32(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleConnectionInterrupted];
  v1 = [MEMORY[0x277CCAB98] defaultCenter];
  [v1 postNotificationName:@"NTKFaceSnapshotClientInterruptionName" object:WeakRetained];
}

void __47__NTKFaceSnapshotClient__setupDaemonConnection__block_invoke_2(uint64_t a1)
{
  v2 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __47__NTKFaceSnapshotClient__setupDaemonConnection__block_invoke_2_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained[1];
  WeakRetained[1] = 0;

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 postNotificationName:@"NTKFaceSnapshotClientInvalidationName" object:WeakRetained];
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v5.receiver = self;
  v5.super_class = NTKFaceSnapshotClient;
  [(NTKFaceSnapshotClient *)&v5 dealloc];
}

- (void)requestSnapshotOfFace:(id)face
{
  v12 = *MEMORY[0x277D85DE8];
  faceCopy = face;
  v5 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    name = [faceCopy name];
    *buf = 138412290;
    v11 = name;
    _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "Requesting snapshot for face:%@", buf, 0xCu);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__NTKFaceSnapshotClient_requestSnapshotOfFace___block_invoke;
  v8[3] = &unk_27877E438;
  v8[4] = self;
  v9 = faceCopy;
  v7 = faceCopy;
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

void __47__NTKFaceSnapshotClient_requestSnapshotOfFace___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setupDaemonConnection];
  v3 = [*(*(a1 + 32) + 8) remoteObjectProxy];
  v2 = [*(a1 + 40) instanceDescriptor];
  [v3 requestSnapshotOfFaceInstanceDescriptor:v2];
}

- (void)performAfterCompletingCurrentlyPendingSnapshots:(id)snapshots
{
  snapshotsCopy = snapshots;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __73__NTKFaceSnapshotClient_performAfterCompletingCurrentlyPendingSnapshots___block_invoke;
  v6[3] = &unk_27877FF60;
  v6[4] = self;
  v7 = snapshotsCopy;
  v5 = snapshotsCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __73__NTKFaceSnapshotClient_performAfterCompletingCurrentlyPendingSnapshots___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setupDaemonConnection];
  v2 = [*(*(a1 + 32) + 8) remoteObjectProxy];
  [v2 performAfterCompletingCurrentlyPendingSnapshots:*(a1 + 40)];
}

- (void)_askXPCServiceForSnapshotOfDescriptor:(id)descriptor options:(id)options completion:(id)completion
{
  descriptorCopy = descriptor;
  optionsCopy = options;
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v11 = +[NTKFaceSnapshotClient _xpcQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __82__NTKFaceSnapshotClient__askXPCServiceForSnapshotOfDescriptor_options_completion___block_invoke;
  v15[3] = &unk_2787808C8;
  v15[4] = self;
  v16 = descriptorCopy;
  v17 = optionsCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = optionsCopy;
  v14 = descriptorCopy;
  dispatch_async(v11, v15);
}

void __82__NTKFaceSnapshotClient__askXPCServiceForSnapshotOfDescriptor_options_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [*(a1 + 40) copy];
  v3 = [*(a1 + 48) copy];
  [v2 _queue_askXPCServiceForSnapshotOfDescriptor:v4 options:v3 completion:*(a1 + 56)];
}

- (void)_queue_askXPCServiceForSnapshotOfDescriptor:(id)descriptor options:(id)options completion:(id)completion
{
  descriptorCopy = descriptor;
  optionsCopy = options;
  completionCopy = completion;
  v11 = +[NTKFaceSnapshotClient _xpcQueue];
  dispatch_assert_queue_V2(v11);

  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = __Block_byref_object_copy__51;
  v65 = __Block_byref_object_dispose__51;
  v66 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.NTKFaceSnapshotService"];
  v12 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.NTKFaceSnapshotService"];
  v13 = v62[5];
  v62[5] = v12;

  faceSnapshotServiceInterface = [MEMORY[0x277CCAE90] faceSnapshotServiceInterface];
  [v62[5] setRemoteObjectInterface:faceSnapshotServiceInterface];

  v15 = v62[5];
  v16 = +[NTKFaceSnapshotClient _xpcQueue];
  [v15 _setQueue:v16];

  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = __Block_byref_object_copy__51;
  v59 = __Block_byref_object_dispose__51;
  v60 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __88__NTKFaceSnapshotClient__queue_askXPCServiceForSnapshotOfDescriptor_options_completion___block_invoke;
  aBlock[3] = &unk_27877F8D0;
  aBlock[4] = &v61;
  aBlock[5] = &v55;
  v17 = _Block_copy(aBlock);
  v52[0] = 0;
  v52[1] = v52;
  v52[2] = 0x2020000000;
  v53 = 0;
  v18 = [descriptorCopy description];
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __88__NTKFaceSnapshotClient__queue_askXPCServiceForSnapshotOfDescriptor_options_completion___block_invoke_3;
  v47[3] = &unk_278786E28;
  v51 = v52;
  v19 = v18;
  v48 = v19;
  v20 = completionCopy;
  v49 = v20;
  v21 = v17;
  v50 = v21;
  v22 = _Block_copy(v47);
  v23 = v62[5];
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __88__NTKFaceSnapshotClient__queue_askXPCServiceForSnapshotOfDescriptor_options_completion___block_invoke_37;
  v45[3] = &unk_278782A50;
  v24 = v22;
  v46 = v24;
  v25 = [v23 remoteObjectProxyWithErrorHandler:v45];
  v26 = v56[5];
  v56[5] = v25;

  objc_initWeak(&location, self);
  v27 = v62[5];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __88__NTKFaceSnapshotClient__queue_askXPCServiceForSnapshotOfDescriptor_options_completion___block_invoke_2_40;
  v41[3] = &unk_278781070;
  objc_copyWeak(&v43, &location);
  v28 = v24;
  v42 = v28;
  [v27 setInterruptionHandler:v41];
  v29 = v62[5];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __88__NTKFaceSnapshotClient__queue_askXPCServiceForSnapshotOfDescriptor_options_completion___block_invoke_2_46;
  v39[3] = &unk_27877E960;
  v30 = v28;
  v40 = v30;
  [v29 setInvalidationHandler:v39];
  [v62[5] resume];
  v31 = v56[5];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __88__NTKFaceSnapshotClient__queue_askXPCServiceForSnapshotOfDescriptor_options_completion___block_invoke_2_48;
  v37[3] = &unk_27877FB80;
  v32 = v30;
  v38 = v32;
  [v31 requestSnapshotOfFaceInstanceDescriptor:descriptorCopy options:optionsCopy completion:v37];
  v33 = dispatch_time(0, 30000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__NTKFaceSnapshotClient__queue_askXPCServiceForSnapshotOfDescriptor_options_completion___block_invoke_4;
  block[3] = &unk_27877E960;
  v36 = v32;
  v34 = v32;
  dispatch_after(v33, MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v43);
  objc_destroyWeak(&location);

  _Block_object_dispose(v52, 8);
  _Block_object_dispose(&v55, 8);

  _Block_object_dispose(&v61, 8);
}

void __88__NTKFaceSnapshotClient__queue_askXPCServiceForSnapshotOfDescriptor_options_completion___block_invoke(uint64_t a1)
{
  v1[0] = MEMORY[0x277D85DD0];
  v1[1] = 3221225472;
  v1[2] = __88__NTKFaceSnapshotClient__queue_askXPCServiceForSnapshotOfDescriptor_options_completion___block_invoke_2;
  v1[3] = &unk_27877F8D0;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v1);
}

void __88__NTKFaceSnapshotClient__queue_askXPCServiceForSnapshotOfDescriptor_options_completion___block_invoke_2(uint64_t a1)
{
  [*(*(*(a1 + 32) + 8) + 40) setInterruptionHandler:0];
  [*(*(*(a1 + 32) + 8) + 40) setInvalidationHandler:0];
  [*(*(*(a1 + 32) + 8) + 40) invalidate];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

void __88__NTKFaceSnapshotClient__queue_askXPCServiceForSnapshotOfDescriptor_options_completion___block_invoke_3(void *a1, void *a2, void *a3, int a4)
{
  v7 = a2;
  v8 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v9 = *(a1[7] + 8);
  if (*(v9 + 24) == 1)
  {
    if ((a4 & 1) == 0)
    {
      v10 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __88__NTKFaceSnapshotClient__queue_askXPCServiceForSnapshotOfDescriptor_options_completion___block_invoke_3_cold_2();
      }
    }
  }

  else
  {
    if (a4)
    {
      v11 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        __88__NTKFaceSnapshotClient__queue_askXPCServiceForSnapshotOfDescriptor_options_completion___block_invoke_3_cold_1();
      }

      v9 = *(a1[7] + 8);
    }

    *(v9 + 24) = 1;
    v12 = a1[5];
    if (v12)
    {
      (*(v12 + 16))(v12, v7, v8);
    }

    (*(a1[6] + 16))();
  }
}

void __88__NTKFaceSnapshotClient__queue_askXPCServiceForSnapshotOfDescriptor_options_completion___block_invoke_37(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __88__NTKFaceSnapshotClient__queue_askXPCServiceForSnapshotOfDescriptor_options_completion___block_invoke_37_cold_1();
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __88__NTKFaceSnapshotClient__queue_askXPCServiceForSnapshotOfDescriptor_options_completion___block_invoke_38;
  v7[3] = &unk_27877E570;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __88__NTKFaceSnapshotClient__queue_askXPCServiceForSnapshotOfDescriptor_options_completion___block_invoke_2_40(uint64_t a1)
{
  v2 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __88__NTKFaceSnapshotClient__queue_askXPCServiceForSnapshotOfDescriptor_options_completion___block_invoke_2_40_cold_1();
  }

  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __88__NTKFaceSnapshotClient__queue_askXPCServiceForSnapshotOfDescriptor_options_completion___block_invoke_41;
  v3[3] = &unk_278781070;
  objc_copyWeak(&v5, (a1 + 40));
  v4 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v3);

  objc_destroyWeak(&v5);
}

void __88__NTKFaceSnapshotClient__queue_askXPCServiceForSnapshotOfDescriptor_options_completion___block_invoke_41(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"NTKFaceSnapshotClientInterruptionName" object:WeakRetained];

  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.nanotimekit.snapshots" code:15000 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

void __88__NTKFaceSnapshotClient__queue_askXPCServiceForSnapshotOfDescriptor_options_completion___block_invoke_2_46(uint64_t a1)
{
  v2 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __88__NTKFaceSnapshotClient__queue_askXPCServiceForSnapshotOfDescriptor_options_completion___block_invoke_2_46_cold_1();
  }

  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.nanotimekit.snapshots" code:18000 userInfo:0];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __88__NTKFaceSnapshotClient__queue_askXPCServiceForSnapshotOfDescriptor_options_completion___block_invoke_47;
  v6[3] = &unk_27877E570;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __88__NTKFaceSnapshotClient__queue_askXPCServiceForSnapshotOfDescriptor_options_completion___block_invoke_2_48(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__NTKFaceSnapshotClient__queue_askXPCServiceForSnapshotOfDescriptor_options_completion___block_invoke_3_49;
  block[3] = &unk_27877FF88;
  v7 = *(a1 + 32);
  v12 = v6;
  v13 = v7;
  v11 = v5;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __88__NTKFaceSnapshotClient__queue_askXPCServiceForSnapshotOfDescriptor_options_completion___block_invoke_4(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.nanotimekit.snapshots" code:21000 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

- (void)_askDaemonForSnapshotOfDescriptor:(id)descriptor options:(id)options completion:(id)completion
{
  descriptorCopy = descriptor;
  optionsCopy = options;
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v10 = [descriptorCopy description];
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = __Block_byref_object_copy__51;
  v60 = __Block_byref_object_dispose__51;
  v61 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__51;
  v54 = __Block_byref_object_dispose__51;
  v55 = 0;
  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x2020000000;
  v49 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__NTKFaceSnapshotClient__askDaemonForSnapshotOfDescriptor_options_completion___block_invoke;
  aBlock[3] = &unk_278786E50;
  v45 = v48;
  v11 = v10;
  v43 = v11;
  v46 = &v56;
  v47 = &v50;
  v12 = completionCopy;
  v44 = v12;
  v13 = _Block_copy(aBlock);
  [(NTKFaceSnapshotClient *)self _setupDaemonConnection];
  daemonConnection = self->_daemonConnection;
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __78__NTKFaceSnapshotClient__askDaemonForSnapshotOfDescriptor_options_completion___block_invoke_51;
  v40[3] = &unk_278782A50;
  v15 = v13;
  v41 = v15;
  v16 = [(NSXPCConnection *)daemonConnection remoteObjectProxyWithErrorHandler:v40];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  mainQueue = [MEMORY[0x277CCABD8] mainQueue];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __78__NTKFaceSnapshotClient__askDaemonForSnapshotOfDescriptor_options_completion___block_invoke_2;
  v38[3] = &unk_278786E78;
  v19 = v15;
  v39 = v19;
  v20 = [defaultCenter addObserverForName:@"NTKFaceSnapshotClientInvalidationName" object:0 queue:mainQueue usingBlock:v38];
  v21 = v57[5];
  v57[5] = v20;

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  mainQueue2 = [MEMORY[0x277CCABD8] mainQueue];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __78__NTKFaceSnapshotClient__askDaemonForSnapshotOfDescriptor_options_completion___block_invoke_3;
  v36[3] = &unk_278786E78;
  v24 = v19;
  v37 = v24;
  v25 = [defaultCenter2 addObserverForName:@"NTKFaceSnapshotClientInterruptionName" object:0 queue:mainQueue2 usingBlock:v36];
  v26 = v51[5];
  v51[5] = v25;

  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __78__NTKFaceSnapshotClient__askDaemonForSnapshotOfDescriptor_options_completion___block_invoke_4;
  v34[3] = &unk_27877FB80;
  v27 = v24;
  v35 = v27;
  [v16 requestSnapshotOfFaceInstanceDescriptor:descriptorCopy options:optionsCopy completion:v34];
  v28 = dispatch_time(0, 15000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__NTKFaceSnapshotClient__askDaemonForSnapshotOfDescriptor_options_completion___block_invoke_6;
  block[3] = &unk_27877E960;
  v33 = v27;
  v29 = v27;
  v30 = MEMORY[0x277D85CD0];
  dispatch_after(v28, MEMORY[0x277D85CD0], block);

  _Block_object_dispose(v48, 8);
  _Block_object_dispose(&v50, 8);

  _Block_object_dispose(&v56, 8);
}

void __78__NTKFaceSnapshotClient__askDaemonForSnapshotOfDescriptor_options_completion___block_invoke(void *a1, void *a2, void *a3, int a4)
{
  v7 = a2;
  v8 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v9 = *(a1[6] + 8);
  if (*(v9 + 24) == 1)
  {
    if ((a4 & 1) == 0)
    {
      v10 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __78__NTKFaceSnapshotClient__askDaemonForSnapshotOfDescriptor_options_completion___block_invoke_cold_2();
      }
    }
  }

  else
  {
    if (a4)
    {
      v11 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        __88__NTKFaceSnapshotClient__queue_askXPCServiceForSnapshotOfDescriptor_options_completion___block_invoke_3_cold_1();
      }

      v9 = *(a1[6] + 8);
    }

    *(v9 + 24) = 1;
    if (*(*(a1[7] + 8) + 40))
    {
      v12 = [MEMORY[0x277CCAB98] defaultCenter];
      [v12 removeObserver:*(*(a1[7] + 8) + 40)];

      v13 = *(a1[7] + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = 0;
    }

    if (*(*(a1[8] + 8) + 40))
    {
      v15 = [MEMORY[0x277CCAB98] defaultCenter];
      [v15 removeObserver:*(*(a1[8] + 8) + 40)];

      v16 = *(a1[8] + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = 0;
    }

    v18 = a1[5];
    if (v18)
    {
      (*(v18 + 16))(v18, v7, v8);
    }
  }
}

void __78__NTKFaceSnapshotClient__askDaemonForSnapshotOfDescriptor_options_completion___block_invoke_51(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __78__NTKFaceSnapshotClient__askDaemonForSnapshotOfDescriptor_options_completion___block_invoke_51_cold_1();
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__NTKFaceSnapshotClient__askDaemonForSnapshotOfDescriptor_options_completion___block_invoke_52;
  v7[3] = &unk_27877E570;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __78__NTKFaceSnapshotClient__askDaemonForSnapshotOfDescriptor_options_completion___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.nanotimekit.snapshots" code:18000 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

void __78__NTKFaceSnapshotClient__askDaemonForSnapshotOfDescriptor_options_completion___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.nanotimekit.snapshots" code:22000 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

void __78__NTKFaceSnapshotClient__askDaemonForSnapshotOfDescriptor_options_completion___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__NTKFaceSnapshotClient__askDaemonForSnapshotOfDescriptor_options_completion___block_invoke_5;
  block[3] = &unk_27877FF88;
  v7 = *(a1 + 32);
  v12 = v6;
  v13 = v7;
  v11 = v5;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __78__NTKFaceSnapshotClient__askDaemonForSnapshotOfDescriptor_options_completion___block_invoke_6(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.nanotimekit.snapshots" code:13000 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

- (void)snapshotFace:(id)face options:(id)options completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__NTKFaceSnapshotClient_snapshotFace_options_completion___block_invoke;
  v10[3] = &unk_27877FB80;
  v11 = completionCopy;
  v9 = completionCopy;
  [(NTKFaceSnapshotClient *)self requestSnapshotOfFace:face options:options completion:v10];
}

void __57__NTKFaceSnapshotClient_snapshotFace_options_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 snapshot];
    (*(v2 + 16))(v2, v3);
  }
}

- (void)requestSnapshotOfFace:(id)face options:(id)options completion:(id)completion
{
  faceCopy = face;
  optionsCopy = options;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__NTKFaceSnapshotClient_requestSnapshotOfFace_options_completion___block_invoke;
  aBlock[3] = &unk_2787808C8;
  v11 = faceCopy;
  v34 = v11;
  selfCopy = self;
  v12 = optionsCopy;
  v36 = v12;
  v13 = completionCopy;
  v37 = v13;
  v14 = _Block_copy(aBlock);
  if (NTKAlwaysGenerateSnapshots())
  {
    goto LABEL_15;
  }

  v15 = [v12 valueForKey:@"NTKSnapshotPersistableKey"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_15;
  }

  bOOLValue = [v15 BOOLValue];

  if (!bOOLValue)
  {
LABEL_15:
    instanceDescriptor = [v11 instanceDescriptor];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__NTKFaceSnapshotClient_requestSnapshotOfFace_options_completion___block_invoke_5;
    block[3] = &unk_2787808C8;
    block[4] = self;
    v26 = instanceDescriptor;
    v27 = v12;
    v28 = v13;
    v17 = instanceDescriptor;
    dispatch_async(MEMORY[0x277D85CD0], block);

    v23 = v26;
    goto LABEL_16;
  }

  v17 = [v12 valueForKey:@"NTKSnapshotPriorityKey"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    unsignedIntegerValue = [v17 unsignedIntegerValue];
    if (unsignedIntegerValue == 2)
    {
      v19 = 21;
    }

    else
    {
      v19 = 17;
    }

    if (unsignedIntegerValue == 3)
    {
      v20 = QOS_CLASS_USER_INITIATED;
    }

    else
    {
      v20 = v19;
    }

    if (unsignedIntegerValue == 3)
    {
      v21 = -1;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
    v20 = QOS_CLASS_UTILITY;
  }

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __66__NTKFaceSnapshotClient_requestSnapshotOfFace_options_completion___block_invoke_3;
  v29[3] = &unk_278784548;
  v30 = v11;
  v31 = v13;
  v32 = v14;
  v24 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v20, v21, v29);
  dispatch_async(self->_snapshotFileQueue, v24);

  v23 = v30;
LABEL_16:
}

void __66__NTKFaceSnapshotClient_requestSnapshotOfFace_options_completion___block_invoke(id *a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__NTKFaceSnapshotClient_requestSnapshotOfFace_options_completion___block_invoke_2;
  block[3] = &unk_2787808C8;
  v2 = a1 + 5;
  *&v3 = a1[4];
  *(&v3 + 1) = *v2;
  v7 = v3;
  v4 = a1[6];
  v5 = a1[7];
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __66__NTKFaceSnapshotClient_requestSnapshotOfFace_options_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) instanceDescriptor];
  [*(a1 + 40) _askDaemonForSnapshotOfDescriptor:v2 options:*(a1 + 48) completion:*(a1 + 56)];
}

void __66__NTKFaceSnapshotClient_requestSnapshotOfFace_options_completion___block_invoke_3(uint64_t a1)
{
  v2 = NTKCachedSnapshotResultForFace(*(a1 + 32));
  if (v2)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __66__NTKFaceSnapshotClient_requestSnapshotOfFace_options_completion___block_invoke_4;
    v3[3] = &unk_27877E570;
    v5 = *(a1 + 40);
    v4 = v2;
    dispatch_async(MEMORY[0x277D85CD0], v3);
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (void)snapshotLibrarySelectedFaceForDeviceUUID:(id)d options:(id)options completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  optionsCopy = options;
  completionCopy = completion;
  v11 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    *buf = 138412290;
    v21 = uUIDString;
    _os_log_impl(&dword_22D9C5000, v11, OS_LOG_TYPE_DEFAULT, "Snapshotting SelectedFace for device UUID:%@", buf, 0xCu);
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __85__NTKFaceSnapshotClient_snapshotLibrarySelectedFaceForDeviceUUID_options_completion___block_invoke;
  v16[3] = &unk_2787808C8;
  v16[4] = self;
  v17 = dCopy;
  v18 = optionsCopy;
  v19 = completionCopy;
  v13 = completionCopy;
  v14 = optionsCopy;
  v15 = dCopy;
  dispatch_async(MEMORY[0x277D85CD0], v16);
}

void __85__NTKFaceSnapshotClient_snapshotLibrarySelectedFaceForDeviceUUID_options_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setupDaemonConnection];
  v2 = [*(*(a1 + 32) + 8) remoteObjectProxy];
  [v2 snapshotLibrarySelectedFaceForDeviceUUID:*(a1 + 40) options:*(a1 + 48) completion:*(a1 + 56)];
}

- (void)faceSnapshotChangedForKey:(id)key
{
  v11 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v4 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = keyCopy;
    _os_log_impl(&dword_22D9C5000, v4, OS_LOG_TYPE_DEFAULT, "snapshot changed for key:%@", buf, 0xCu);
  }

  v5 = NTKSnapshotMappedImageCache();
  [v5 _noteExternalChangeForKey:keyCopy];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__NTKFaceSnapshotClient_faceSnapshotChangedForKey___block_invoke;
  block[3] = &unk_27877DB10;
  v8 = keyCopy;
  v6 = keyCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __51__NTKFaceSnapshotClient_faceSnapshotChangedForKey___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"NTKFaceSnapshotChangedNotification" object:*(a1 + 32)];
}

- (void)_updateAllSnapshots
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__NTKFaceSnapshotClient__updateAllSnapshots__block_invoke;
  block[3] = &unk_27877DB10;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __44__NTKFaceSnapshotClient__updateAllSnapshots__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setupDaemonConnection];
  v2 = [*(*(a1 + 32) + 8) remoteObjectProxy];
  [v2 updateAllSnapshots];
}

- (void)_handleCustomMonogramChangedNotification
{
  v3 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "Update all snapshots due to custom monogram changed notification", v4, 2u);
  }

  [(NTKFaceSnapshotClient *)self _updateAllSnapshots];
}

- (void)_handleSignificantLocationChangeNotification
{
  v3 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "Update all snapshots due to significant location change notification", v4, 2u);
  }

  [(NTKFaceSnapshotClient *)self _updateAllSnapshots];
}

- (void)_handleActiveDeviceChangedNotification
{
  v3 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "Update all snapshots due to active device change notification", v4, 2u);
  }

  [(NTKFaceSnapshotClient *)self _updateAllSnapshots];
}

- (void)_register
{
  v3 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "Registering for updates", v5, 2u);
  }

  remoteObjectProxy = [(NSXPCConnection *)self->_daemonConnection remoteObjectProxy];
  [remoteObjectProxy registerForUpdates];

  self->_registrationNeeded = 0;
}

- (void)_registerIfNeeded
{
  if (self->_registrationNeeded)
  {
    [(NTKFaceSnapshotClient *)self _register];
  }
}

void __47__NTKFaceSnapshotClient__setupDaemonConnection__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __47__NTKFaceSnapshotClient__setupDaemonConnection__block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __88__NTKFaceSnapshotClient__queue_askXPCServiceForSnapshotOfDescriptor_options_completion___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_5(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_12();
  _os_log_fault_impl(&dword_22D9C5000, v0, OS_LOG_TYPE_FAULT, "Failed to snapshot %@ in timely manner", v1, 0xCu);
}

void __88__NTKFaceSnapshotClient__queue_askXPCServiceForSnapshotOfDescriptor_options_completion___block_invoke_3_cold_2()
{
  OUTLINED_FUNCTION_5(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_12();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __88__NTKFaceSnapshotClient__queue_askXPCServiceForSnapshotOfDescriptor_options_completion___block_invoke_2_40_cold_1()
{
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __88__NTKFaceSnapshotClient__queue_askXPCServiceForSnapshotOfDescriptor_options_completion___block_invoke_2_46_cold_1()
{
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __78__NTKFaceSnapshotClient__askDaemonForSnapshotOfDescriptor_options_completion___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_5(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_12();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end