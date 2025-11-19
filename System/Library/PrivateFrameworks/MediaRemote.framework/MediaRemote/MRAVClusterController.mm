@interface MRAVClusterController
+ (id)sharedController;
- (MRAVClusterController)init;
- (NSString)clusterLeaderUID;
- (NSString)clusterUID;
- (unint64_t)clusterStatus;
- (unint64_t)onQueue_computeClusterStatus;
- (unsigned)clusterType;
- (void)deviceInfoDidChangeNotification:(id)a3;
- (void)getClusterLeaderEndpoint:(id)a3;
- (void)getClusterStatus:(id)a3;
- (void)onQueue_notifyObserversWithClusterStatus:(unint64_t)a3;
- (void)onQueue_notifyObserversWithClusterType:(unsigned int)a3;
- (void)onQueue_setClusterStatus:(unint64_t)a3;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
- (void)updateClusterInformation;
@end

@implementation MRAVClusterController

+ (id)sharedController
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__MRAVClusterController_sharedController__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedController_onceToken != -1)
  {
    dispatch_once(&sharedController_onceToken, block);
  }

  v2 = _MRAVClusterControler_sharedController;

  return v2;
}

void __41__MRAVClusterController_sharedController__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = _MRAVClusterControler_sharedController;
  _MRAVClusterControler_sharedController = v1;
}

- (MRAVClusterController)init
{
  v25.receiver = self;
  v25.super_class = MRAVClusterController;
  v2 = [(MRAVClusterController *)&v25 init];
  if (v2)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"%@-callback", v5];
    v7 = [v6 UTF8String];
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create(v7, v8);
    callbackQueue = v2->_callbackQueue;
    v2->_callbackQueue = v9;

    v11 = MEMORY[0x1E696AEC0];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [v11 stringWithFormat:@"%@-serial", v13];
    v15 = [v14 UTF8String];
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create(v15, v16);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v17;

    v19 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = v19;

    if (+[MRAVClusterController canBeClusterMember])
    {
      v21 = MRMediaRemoteCopyDeviceUID();
      localPairingIdentity = v2->_localPairingIdentity;
      v2->_localPairingIdentity = v21;
    }

    v23 = [MEMORY[0x1E696AD88] defaultCenter];
    [v23 addObserver:v2 selector:sel_deviceInfoDidChangeNotification_ name:@"kMRDeviceInfoDidChangeNotification" object:0];

    [(MRAVClusterController *)v2 updateClusterInformation];
  }

  return v2;
}

- (void)updateClusterInformation
{
  if (+[MRAVClusterController canBeClusterMember])
  {
    v3 = +[MROrigin localOrigin];
    v4 = [MRDeviceInfoRequest cachedDeviceInfoForOrigin:v3];

    v5 = [v4 clusterID];
    v6 = [v4 preferredClusterLeaderID];
    [v4 clusterType];
    serialQueue = self->_serialQueue;
    v10 = v5;
    v8 = v6;
    v9 = v5;
    msv_dispatch_sync_on_queue();
  }
}

- (unsigned)clusterType
{
  if (!+[MRAVClusterController canBeClusterMember])
  {
    return 0;
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v4 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v4;
}

- (unint64_t)clusterStatus
{
  if (!+[MRAVClusterController canBeClusterMember])
  {
    return 0;
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v4 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v4;
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__MRAVClusterController_registerObserver___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(serialQueue, v7);
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__MRAVClusterController_unregisterObserver___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(serialQueue, v7);
}

- (NSString)clusterLeaderUID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__22;
  v10 = __Block_byref_object_dispose__22;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__MRAVClusterController_clusterLeaderUID__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __41__MRAVClusterController_clusterLeaderUID__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSString)clusterUID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__22;
  v10 = __Block_byref_object_dispose__22;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__MRAVClusterController_clusterUID__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __35__MRAVClusterController_clusterUID__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)getClusterStatus:(id)a3
{
  v5 = a3;
  (*(a3 + 2))(v5, [(MRAVClusterController *)self clusterStatus]);
}

- (void)getClusterLeaderEndpoint:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (+[MRAVClusterController canBeClusterMember]&& [(MRAVClusterController *)self clusterStatus]== 2)
  {
    v5 = [MEMORY[0x1E695DF00] date];
    v6 = dispatch_get_global_queue(0, 0);
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__22;
    v32 = __Block_byref_object_dispose__22;
    v33 = 0;
    serialQueue = self->_serialQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__MRAVClusterController_getClusterLeaderEndpoint___block_invoke;
    block[3] = &unk_1E769A2A0;
    block[4] = self;
    block[5] = &v28;
    dispatch_sync(serialQueue, block);
    v8 = [MEMORY[0x1E696AFB0] UUID];
    v9 = [v8 UUIDString];

    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Discovering cluster leader with UID: %@", v29[5]];
    v11 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"getClusterLeaderEndpoint", v9];
    v12 = v11;
    if (v10)
    {
      [v11 appendFormat:@" for %@", v10];
    }

    v13 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v35 = v12;
      _os_log_impl(&dword_1A2860000, v13, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
    }

    v14 = objc_alloc_init(MRAVLightweightReconnaissanceSession);
    v15 = v29[5];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __50__MRAVClusterController_getClusterLeaderEndpoint___block_invoke_32;
    v20[3] = &unk_1E769F448;
    v21 = @"getClusterLeaderEndpoint";
    v16 = v9;
    v22 = v16;
    v17 = v5;
    v23 = v17;
    v25 = v4;
    v26 = &v28;
    v18 = v10;
    v24 = v18;
    [(MRAVLightweightReconnaissanceSession *)v14 searchEndpointsForOutputDeviceUID:v15 timeout:@"Discover cluster leader endpoint" reason:v6 queue:v20 completion:5.0];

    _Block_object_dispose(&v28, 8);
  }

  else
  {
    (*(v4 + 2))(v4, 0);
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __50__MRAVClusterController_getClusterLeaderEndpoint___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __50__MRAVClusterController_getClusterLeaderEndpoint___block_invoke_32(void *a1, void *a2, void *a3)
{
  v63 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to discover cluster leader endpoint with UID: %@", *(*(a1[9] + 8) + 40)];
    v15 = a1[7];
    v16 = _MRLogForCategory(0xAuLL);
    v9 = v16;
    if (v6 || !v7)
    {
      if (v6)
      {
        v33 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
        if (!v15)
        {
          if (!v33)
          {
            goto LABEL_37;
          }

LABEL_34:
          __66__MRNowPlayingRequest_requestDeviceLastPlayingDateWithCompletion___block_invoke_cold_1(a1);
          goto LABEL_37;
        }

        if (!v33)
        {
          goto LABEL_37;
        }

        v34 = a1[4];
        v35 = a1[5];
        v36 = a1[7];
        v21 = [MEMORY[0x1E695DF00] date];
        [v21 timeIntervalSinceDate:a1[6]];
        *buf = 138544386;
        v54 = v34;
        v55 = 2114;
        v56 = v35;
        v57 = 2114;
        v58 = v6;
        v59 = 2114;
        v60 = v36;
        v61 = 2048;
        v62 = v37;
        _os_log_error_impl(&dword_1A2860000, v9, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
LABEL_32:

        goto LABEL_37;
      }

      v41 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      if (!v15)
      {
        if (!v41)
        {
          goto LABEL_37;
        }

        v49 = a1[4];
        v50 = a1[5];
        v21 = [MEMORY[0x1E695DF00] date];
        [v21 timeIntervalSinceDate:a1[6]];
        *buf = 138543874;
        v54 = v49;
        v55 = 2114;
        v56 = v50;
        v57 = 2048;
        v58 = v51;
        v23 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
        v24 = v9;
        v25 = 32;
        goto LABEL_31;
      }

      if (!v41)
      {
        goto LABEL_37;
      }

      v42 = a1[4];
      v43 = a1[5];
      v44 = a1[7];
      v21 = [MEMORY[0x1E695DF00] date];
      [v21 timeIntervalSinceDate:a1[6]];
      *buf = 138544130;
      v54 = v42;
      v55 = 2114;
      v56 = v43;
      v57 = 2114;
      v58 = v44;
      v59 = 2048;
      v60 = v45;
      v23 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
    }

    else
    {
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      if (v15)
      {
        if (!v17)
        {
          goto LABEL_37;
        }

        v18 = a1[4];
        v19 = a1[5];
        v20 = a1[7];
        v21 = [MEMORY[0x1E695DF00] date];
        [v21 timeIntervalSinceDate:a1[6]];
        *buf = 138544386;
        v54 = v18;
        v55 = 2114;
        v56 = v19;
        v57 = 2112;
        v58 = v7;
        v59 = 2114;
        v60 = v20;
        v61 = 2048;
        v62 = v22;
        v23 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
        v24 = v9;
        v25 = 52;
        goto LABEL_31;
      }

      if (!v17)
      {
        goto LABEL_37;
      }

      v46 = a1[4];
      v47 = a1[5];
      v21 = [MEMORY[0x1E695DF00] date];
      [v21 timeIntervalSinceDate:a1[6]];
      *buf = 138544130;
      v54 = v46;
      v55 = 2114;
      v56 = v47;
      v57 = 2112;
      v58 = v7;
      v59 = 2048;
      v60 = v48;
      v23 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
    }

    v24 = v9;
    v25 = 42;
LABEL_31:
    _os_log_impl(&dword_1A2860000, v24, OS_LOG_TYPE_DEFAULT, v23, buf, v25);
    goto LABEL_32;
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Discovered leader endpoint: %@", v5];
  v8 = _MRLogForCategory(0xAuLL);
  v9 = v8;
  if (!v6)
  {
    v26 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (!v26)
      {
        goto LABEL_37;
      }

      v27 = a1[4];
      v28 = a1[5];
      v13 = [MEMORY[0x1E695DF00] date];
      [v13 timeIntervalSinceDate:a1[6]];
      *buf = 138544130;
      v54 = v27;
      v55 = 2114;
      v56 = v28;
      v57 = 2114;
      v58 = v7;
      v59 = 2048;
      v60 = v29;
      v30 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v31 = v9;
      v32 = 42;
    }

    else
    {
      if (!v26)
      {
        goto LABEL_37;
      }

      v38 = a1[4];
      v39 = a1[5];
      v13 = [MEMORY[0x1E695DF00] date];
      [v13 timeIntervalSinceDate:a1[6]];
      *buf = 138543874;
      v54 = v38;
      v55 = 2114;
      v56 = v39;
      v57 = 2048;
      v58 = v40;
      v30 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v31 = v9;
      v32 = 32;
    }

    _os_log_impl(&dword_1A2860000, v31, OS_LOG_TYPE_DEFAULT, v30, buf, v32);
    goto LABEL_23;
  }

  v10 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (!v7)
  {
    if (!v10)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v10)
  {
    v11 = a1[4];
    v12 = a1[5];
    v13 = [MEMORY[0x1E695DF00] date];
    [v13 timeIntervalSinceDate:a1[6]];
    *buf = 138544386;
    v54 = v11;
    v55 = 2114;
    v56 = v12;
    v57 = 2114;
    v58 = v6;
    v59 = 2114;
    v60 = v7;
    v61 = 2048;
    v62 = v14;
    _os_log_error_impl(&dword_1A2860000, v9, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
LABEL_23:
  }

LABEL_37:

  (*(a1[8] + 16))();
  v52 = *MEMORY[0x1E69E9840];
}

- (void)deviceInfoDidChangeNotification:(id)a3
{
  v5 = [a3 userInfo];
  v4 = MRGetOriginFromUserInfo(v5);
  if ([v4 isLocal])
  {
    [(MRAVClusterController *)self updateClusterInformation];
  }
}

void __49__MRAVClusterController_updateClusterInformation__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) isEqual:*(*(a1 + 40) + 40)];
  v3 = *(a1 + 40);
  v5 = !v2 || (v4 = [*(a1 + 48) isEqual:*(v3 + 48)], v3 = *(a1 + 40), !v4) || *(a1 + 56) != *(v3 + 64);
  objc_storeStrong((v3 + 40), *(a1 + 32));
  objc_storeStrong((*(a1 + 40) + 48), *(a1 + 48));
  [*(a1 + 40) onQueue_setClusterStatus:{objc_msgSend(*(a1 + 40), "onQueue_computeClusterStatus")}];
  [*(a1 + 40) onQueue_setClusterType:*(a1 + 56)];
  if (v5)
  {
    v6 = _MRLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(*(a1 + 40) + 64) - 1;
      if (v7 > 2)
      {
        v8 = @"None";
      }

      else
      {
        v8 = off_1E769F490[v7];
      }

      v9 = *(a1 + 40);
      v11 = *(v9 + 40);
      v10 = *(v9 + 48);
      v13 = 138412802;
      v14 = v8;
      v15 = 2114;
      v16 = v11;
      v17 = 2114;
      v18 = v10;
      _os_log_impl(&dword_1A2860000, v6, OS_LOG_TYPE_DEFAULT, "Cluster information updated: type=%@ | clusterUID=%{public}@ | leaderUID=%{public}@", &v13, 0x20u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (unint64_t)onQueue_computeClusterStatus
{
  dispatch_assert_queue_V2(self->_serialQueue);
  if (!self->_clusterUID)
  {
    return 0;
  }

  if ([(NSString *)self->_clusterLeaderUID isEqualToString:self->_localPairingIdentity])
  {
    return 1;
  }

  return 2;
}

- (void)onQueue_setClusterStatus:(unint64_t)a3
{
  dispatch_assert_queue_V2(self->_serialQueue);
  if (self->_clusterStatus != a3)
  {
    self->_clusterStatus = a3;

    [(MRAVClusterController *)self onQueue_notifyObserversWithClusterStatus:a3];
  }
}

- (void)onQueue_notifyObserversWithClusterStatus:(unint64_t)a3
{
  dispatch_assert_queue_V2(self->_serialQueue);
  v5 = [(NSHashTable *)self->_observers allObjects];
  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__MRAVClusterController_onQueue_notifyObserversWithClusterStatus___block_invoke;
  block[3] = &unk_1E769F470;
  v9 = v5;
  v10 = self;
  v11 = a3;
  v7 = v5;
  dispatch_async(callbackQueue, block);
}

void __66__MRAVClusterController_onQueue_notifyObserversWithClusterStatus___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 clusterController:*(a1 + 40) clusterStatusDidChange:{*(a1 + 48), v9}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)onQueue_notifyObserversWithClusterType:(unsigned int)a3
{
  dispatch_assert_queue_V2(self->_serialQueue);
  v5 = [(NSHashTable *)self->_observers allObjects];
  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__MRAVClusterController_onQueue_notifyObserversWithClusterType___block_invoke;
  block[3] = &unk_1E769BCF8;
  v9 = v5;
  v10 = self;
  v11 = a3;
  v7 = v5;
  dispatch_async(callbackQueue, block);
}

void __64__MRAVClusterController_onQueue_notifyObserversWithClusterType___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 clusterController:*(a1 + 40) clusterTypeDidChange:{*(a1 + 48), v9}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

@end