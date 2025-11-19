@interface MRActiveRoutesObserver
+ (id)_computeActiveRouteIDsFromEndpoint:(id)a3 localDeviceInfo:(id)a4;
+ (void)fetchActiveEndpointOnQueue:(id)a3 withCompletion:(id)a4;
+ (void)fetchActiveRouteIDsWithCompletion:(id)a3;
- (BOOL)isLocalDeviceAirPlayActive;
- (MRAVDistantEndpoint)activeEndpointSnapshot;
- (MRAVEndpoint)activeEndpoint;
- (MRActiveRoutesObserver)initWithActiveRouteIDsChangedCallback:(id)a3;
- (MRActiveRoutesObserver)initWithActiveRouteIDsChangedCallback:(id)a3 isLocalDeviceAirplayActiveChangedCallback:(id)a4;
- (MRActiveRoutesObserverOutputDeviceRemovedSnapshot)deviceRemovedSnapshot;
- (NSArray)activeRouteIDs;
- (void)_handleActiveSystemEndpointDidAddOutputDevice:(id)a3;
- (void)_handleActiveSystemEndpointDidRemoveOutputDevice:(id)a3;
- (void)_onWorkerQueue_reevaluateAPA;
- (void)_onWorkerQueue_reevaluateASE;
- (void)_onWorkerQueue_reevaluateWithEndpoint:(id)a3;
- (void)_reevaluateAPA;
- (void)_reevaluateASE;
- (void)_reevaluateWithEndpoint:(id)a3;
- (void)setActiveEndpoint:(id)a3;
@end

@implementation MRActiveRoutesObserver

- (MRActiveRoutesObserver)initWithActiveRouteIDsChangedCallback:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__MRActiveRoutesObserver_initWithActiveRouteIDsChangedCallback___block_invoke;
  v8[3] = &unk_1E769E878;
  v9 = v4;
  v5 = v4;
  v6 = [(MRActiveRoutesObserver *)self initWithActiveRouteIDsChangedCallback:v8 isLocalDeviceAirplayActiveChangedCallback:0];

  return v6;
}

uint64_t __64__MRActiveRoutesObserver_initWithActiveRouteIDsChangedCallback___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (MRActiveRoutesObserver)initWithActiveRouteIDsChangedCallback:(id)a3 isLocalDeviceAirplayActiveChangedCallback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = MRActiveRoutesObserver;
  v8 = [(MRActiveRoutesObserver *)&v15 init];
  v9 = v8;
  if (v8)
  {
    [(MRActiveRoutesObserver *)v8 setActiveRouteIDsChangedCallback:v6];
    [(MRActiveRoutesObserver *)v9 setIsLocalDeviceAirPlayActiveCallback:v7];
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.mediaremote.MRActiveRoutesObserver", v10);
    [(MRActiveRoutesObserver *)v9 setWorkerQueue:v11];

    [(MRActiveRoutesObserver *)v9 setDeviceRemovedWaitInterval:3.0];
    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    [v12 addObserver:v9 selector:sel__handleActiveSystemEndpointDidChange_ name:@"kMRMediaRemoteActiveSystemEndpointDidChangeNotification" object:0];

    v13 = [MEMORY[0x1E696AD88] defaultCenter];
    [v13 addObserver:v9 selector:sel__handleActiveDeviceInfoDidChange_ name:@"kMRActiveDeviceInfoDidChangeNotification" object:0];

    [(MRActiveRoutesObserver *)v9 _reevaluateASE];
    [(MRActiveRoutesObserver *)v9 _reevaluateAPA];
  }

  return v9;
}

+ (void)fetchActiveRouteIDsWithCompletion:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    [(MRActiveRoutesObserver *)a2 fetchActiveRouteIDsWithCompletion:a1];
  }

  v6 = qos_class_self();
  v7 = [MEMORY[0x1E695DF00] date];
  v8 = [MEMORY[0x1E696AFB0] UUID];
  v9 = [v8 UUIDString];

  v10 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"MRActiveRoutesObserver.fetchActiveRouteIDsWithCompletion", v9];
  v11 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v28 = v10;
    _os_log_impl(&dword_1A2860000, v11, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __60__MRActiveRoutesObserver_fetchActiveRouteIDsWithCompletion___block_invoke;
  v22[3] = &unk_1E76A3BB8;
  v23 = v9;
  v24 = v7;
  v26 = v6;
  v25 = v5;
  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = MEMORY[0x1A58E3570](v22);
  v16 = dispatch_get_global_queue(v6, 0);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __60__MRActiveRoutesObserver_fetchActiveRouteIDsWithCompletion___block_invoke_2;
  v19[3] = &unk_1E76A3BE0;
  v20 = v15;
  v21 = a1;
  v17 = v15;
  [a1 fetchActiveEndpointOnQueue:v16 withCompletion:v19];

  v18 = *MEMORY[0x1E69E9840];
}

void __60__MRActiveRoutesObserver_fetchActiveRouteIDsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _MRLogForCategory(0xAuLL);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      v7 = [MEMORY[0x1E695DF00] date];
      [v7 timeIntervalSinceDate:*(a1 + 40)];
      *buf = 138544130;
      v22 = @"MRActiveRoutesObserver.fetchActiveRouteIDsWithCompletion";
      v23 = 2114;
      v24 = v6;
      v25 = 2112;
      v26 = v3;
      v27 = 2048;
      v28 = v8;
      v9 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
      v10 = v4;
      v11 = 42;
LABEL_6:
      _os_log_impl(&dword_1A2860000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
    }
  }

  else if (v5)
  {
    v12 = *(a1 + 32);
    v7 = [MEMORY[0x1E695DF00] date];
    [v7 timeIntervalSinceDate:*(a1 + 40)];
    *buf = 138543874;
    v22 = @"MRActiveRoutesObserver.fetchActiveRouteIDsWithCompletion";
    v23 = 2114;
    v24 = v12;
    v25 = 2048;
    v26 = v13;
    v9 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
    v10 = v4;
    v11 = 32;
    goto LABEL_6;
  }

  v14 = dispatch_get_global_queue(*(a1 + 56), 0);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __60__MRActiveRoutesObserver_fetchActiveRouteIDsWithCompletion___block_invoke_29;
  v18[3] = &unk_1E769AB28;
  v15 = *(a1 + 48);
  v19 = v3;
  v20 = v15;
  v16 = v3;
  dispatch_async(v14, v18);

  v17 = *MEMORY[0x1E69E9840];
}

void __60__MRActiveRoutesObserver_fetchActiveRouteIDsWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v6 = +[MRDeviceInfoRequest localDeviceInfo];
  v5 = [v3 _computeActiveRouteIDsFromEndpoint:v4 localDeviceInfo:v6];

  (*(v2 + 16))(v2, v5);
}

+ (void)fetchActiveEndpointOnQueue:(id)a3 withCompletion:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    [MRActiveRoutesObserver fetchActiveEndpointOnQueue:a2 withCompletion:a1];
  }

  v9 = [MEMORY[0x1E695DF00] date];
  v10 = [MEMORY[0x1E696AFB0] UUID];
  v11 = [v10 UUIDString];

  v12 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"MRActiveRoutesObserver.fetchActiveEndpointOnQueue", v11];
  v13 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v34 = v12;
    _os_log_impl(&dword_1A2860000, v13, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __68__MRActiveRoutesObserver_fetchActiveEndpointOnQueue_withCompletion___block_invoke;
  v28[3] = &unk_1E76A2708;
  v14 = v11;
  v29 = v14;
  v15 = v9;
  v30 = v15;
  v16 = v7;
  v31 = v16;
  v17 = v8;
  v32 = v17;
  v18 = MEMORY[0x1A58E3570](v28);
  v19 = +[MRUserSettings currentSettings];
  v20 = [v19 supportRoutingContinuity];

  if (v20)
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __68__MRActiveRoutesObserver_fetchActiveEndpointOnQueue_withCompletion___block_invoke_2;
    v25[3] = &unk_1E76A3C08;
    v26 = v14;
    v27 = v18;
    MRAVEndpointResolveActiveSystemEndpointWithTimeout(v16, v25, 7.0);

    v21 = v26;
  }

  else
  {
    v22 = +[MRUserSettings currentSettings];
    v23 = [v22 supportTopologyHealing];

    if (v23)
    {
      v21 = +[MRAVLocalEndpoint sharedSystemAudioLocalEndpoint];
      (v18)[2](v18, v21, 0);
    }

    else
    {
      v21 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:132];
      (v18)[2](v18, 0, v21);
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

void __68__MRActiveRoutesObserver_fetchActiveEndpointOnQueue_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = _MRLogForCategory(0xAuLL);
  v8 = v7;
  if (!v5 || v6)
  {
    if (v6)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __68__MRActiveRoutesObserver_fetchActiveEndpointOnQueue_withCompletion___block_invoke_cold_1(a1, v6, v8);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v13 = [MEMORY[0x1E695DF00] date];
      [v13 timeIntervalSinceDate:*(a1 + 40)];
      *buf = 138543874;
      v23 = @"MRActiveRoutesObserver.fetchActiveEndpointOnQueue";
      v24 = 2114;
      v25 = v12;
      v26 = 2048;
      v27 = v14;
      _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned in %.4lf seconds", buf, 0x20u);
    }

    if (!v5)
    {
      v5 = +[MRAVLocalEndpoint sharedLocalEndpoint];
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = [MEMORY[0x1E695DF00] date];
      [v10 timeIntervalSinceDate:*(a1 + 40)];
      *buf = 138544130;
      v23 = @"MRActiveRoutesObserver.fetchActiveEndpointOnQueue";
      v24 = 2114;
      v25 = v9;
      v26 = 2112;
      v27 = v5;
      v28 = 2048;
      v29 = v11;
      _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds", buf, 0x2Au);
    }
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __68__MRActiveRoutesObserver_fetchActiveEndpointOnQueue_withCompletion___block_invoke_37;
  v19[3] = &unk_1E769AB28;
  v15 = *(a1 + 48);
  v16 = *(a1 + 56);
  v20 = v5;
  v21 = v16;
  v17 = v5;
  dispatch_async(v15, v19);

  v18 = *MEMORY[0x1E69E9840];
}

void __68__MRActiveRoutesObserver_fetchActiveEndpointOnQueue_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [[MRRequestDetails alloc] initWithName:@"MRActiveRoutesObserver" requestID:*(a1 + 32) reason:@"MRActiveRoutesObserver"];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __68__MRActiveRoutesObserver_fetchActiveEndpointOnQueue_withCompletion___block_invoke_3;
    v5[3] = &unk_1E769AB50;
    v7 = *(a1 + 40);
    v6 = v3;
    [v6 connectToExternalDeviceWithOptions:0 details:v4 completion:v5];
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:24];
    (*(*(a1 + 40) + 16))();
  }
}

- (NSArray)activeRouteIDs
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_activeRouteIDs;
  objc_sync_exit(v2);

  return v3;
}

- (void)setActiveEndpoint:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _MRLogForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 debugName];
    v20 = 138412290;
    v21 = v7;
    _os_log_impl(&dword_1A2860000, v6, OS_LOG_TYPE_DEFAULT, "[MRActiveRoutesObserver] ActiveEndpoint -> %@", &v20, 0xCu);
  }

  v8 = self;
  objc_sync_enter(v8);
  if (v8->_activeEndpoint)
  {
    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 removeObserver:v8 name:@"MRAVEndpointDidAddOutputDeviceNotification" object:v8->_activeEndpoint];

    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    [v10 removeObserver:v8 name:@"MRAVEndpointDidRemoveOutputDeviceNotification" object:v8->_activeEndpoint];
  }

  objc_storeStrong(&v8->_activeEndpoint, a3);
  if (v8->_activeEndpoint)
  {
    v11 = [MEMORY[0x1E696AD88] defaultCenter];
    [v11 addObserver:v8 selector:sel__handleActiveSystemEndpointDidAddOutputDevice_ name:@"MRAVEndpointDidAddOutputDeviceNotification" object:v8->_activeEndpoint];

    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    [v12 addObserver:v8 selector:sel__handleActiveSystemEndpointDidRemoveOutputDevice_ name:@"MRAVEndpointDidRemoveOutputDeviceNotification" object:v8->_activeEndpoint];
  }

  v13 = [MRAVDistantEndpoint alloc];
  v14 = [v5 descriptor];
  v15 = [(MRAVDistantEndpoint *)v13 initWithDescriptor:v14];
  activeEndpointSnapshot = v8->_activeEndpointSnapshot;
  v8->_activeEndpointSnapshot = v15;

  v17 = v8->_activeEndpointSnapshot;
  v18 = _MRLogForCategory(0);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412290;
    v21 = v17;
    _os_log_impl(&dword_1A2860000, v18, OS_LOG_TYPE_DEFAULT, "[MRActiveRoutesObserver] Snapshot Init: %@", &v20, 0xCu);
  }

  objc_sync_exit(v8);
  [(MRActiveRoutesObserver *)v8 _reevaluateWithEndpoint:v17];

  v19 = *MEMORY[0x1E69E9840];
}

- (MRAVEndpoint)activeEndpoint
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_activeEndpoint;
  objc_sync_exit(v2);

  return v3;
}

- (MRAVDistantEndpoint)activeEndpointSnapshot
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_activeEndpointSnapshot;
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)isLocalDeviceAirPlayActive
{
  v2 = self;
  objc_sync_enter(v2);
  localDeviceAirPlayActive = v2->_localDeviceAirPlayActive;
  objc_sync_exit(v2);

  return localDeviceAirPlayActive;
}

- (MRActiveRoutesObserverOutputDeviceRemovedSnapshot)deviceRemovedSnapshot
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_deviceRemovedSnapshot;
  objc_sync_exit(v2);

  return v3;
}

- (void)_handleActiveSystemEndpointDidAddOutputDevice:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"MRAVEndpointOutputDeviceUserInfoKey"];

  v6 = [(MRActiveRoutesObserver *)self workerQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __72__MRActiveRoutesObserver__handleActiveSystemEndpointDidAddOutputDevice___block_invoke;
  v8[3] = &unk_1E769A4A0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

void __72__MRActiveRoutesObserver__handleActiveSystemEndpointDidAddOutputDevice___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  if ([*(*(a1 + 32) + 48) isLocalEndpoint])
  {
    v3 = [*(*(a1 + 32) + 48) descriptor];
    v4 = [v3 outputDevices];
    v5 = [*(a1 + 40) descriptor];
    [v4 addObject:v5];

    v6 = [[MRAVDistantEndpoint alloc] initWithDescriptor:v3];
    v7 = *(a1 + 32);
    v8 = *(v7 + 48);
    *(v7 + 48) = v6;

    v9 = _MRLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 40) debugName];
      v11 = *(*(a1 + 32) + 48);
      v14 = 138412546;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_1A2860000, v9, OS_LOG_TYPE_DEFAULT, "[MRActiveRoutesObserver] Snapshot Added %@ -> %@", &v14, 0x16u);
    }
  }

  v12 = *(*(a1 + 32) + 48);
  objc_sync_exit(v2);

  [*(a1 + 32) _onWorkerQueue_reevaluateWithEndpoint:v12];
  v13 = *MEMORY[0x1E69E9840];
}

- (void)_handleActiveSystemEndpointDidRemoveOutputDevice:(id)a3
{
  v4 = MEMORY[0x1E695DF00];
  v5 = a3;
  v6 = [v4 now];
  v7 = [v5 userInfo];

  v8 = [v7 objectForKeyedSubscript:@"MRAVEndpointOutputDeviceUserInfoKey"];

  v9 = [(MRActiveRoutesObserver *)self workerQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__MRActiveRoutesObserver__handleActiveSystemEndpointDidRemoveOutputDevice___block_invoke;
  block[3] = &unk_1E769BA00;
  block[4] = self;
  v13 = v8;
  v14 = v6;
  v10 = v6;
  v11 = v8;
  dispatch_async(v9, block);
}

void __75__MRActiveRoutesObserver__handleActiveSystemEndpointDidRemoveOutputDevice___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  if ([*(*(a1 + 32) + 48) isLocalEndpoint])
  {
    v3 = [*(*(a1 + 32) + 48) descriptor];
    v4 = [v3 outputDevices];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __75__MRActiveRoutesObserver__handleActiveSystemEndpointDidRemoveOutputDevice___block_invoke_2;
    v33[3] = &unk_1E76A3C30;
    v34 = *(a1 + 40);
    v5 = [v4 msv_filter:v33];
    v6 = [v5 mutableCopy];
    [v3 setOutputDevices:v6];

    v7 = [[MRAVDistantEndpoint alloc] initWithDescriptor:v3];
    v8 = *(a1 + 32);
    v9 = *(v8 + 48);
    *(v8 + 48) = v7;

    v10 = _MRLogForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [*(a1 + 40) debugName];
      v12 = *(*(a1 + 32) + 48);
      *buf = 138412546;
      v36 = v11;
      v37 = 2112;
      v38 = v12;
      _os_log_impl(&dword_1A2860000, v10, OS_LOG_TYPE_DEFAULT, "[MRActiveRoutesObserver] Snapshot Removed %@ -> %@", buf, 0x16u);
    }
  }

  v13 = *(*(a1 + 32) + 48);
  objc_sync_exit(v2);

  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __75__MRActiveRoutesObserver__handleActiveSystemEndpointDidRemoveOutputDevice___block_invoke_53;
  v31[3] = &unk_1E769DAB8;
  v14 = v13;
  v32 = v14;
  if (__75__MRActiveRoutesObserver__handleActiveSystemEndpointDidRemoveOutputDevice___block_invoke_53(v31))
  {
    v15 = *(a1 + 32);
    objc_sync_enter(v15);
    v16 = objc_alloc_init(MRActiveRoutesObserverOutputDeviceRemovedSnapshot);
    v17 = *(a1 + 32);
    v18 = *(v17 + 72);
    *(v17 + 72) = v16;

    [*(*(a1 + 32) + 72) setEndpoint:*(*(a1 + 32) + 48)];
    [*(*(a1 + 32) + 72) setDate:*(a1 + 48)];
    objc_initWeak(buf, *(a1 + 32));
    v19 = objc_alloc(MEMORY[0x1E69B14D8]);
    [*(a1 + 32) deviceRemovedWaitInterval];
    v21 = v20;
    v22 = [*(a1 + 32) workerQueue];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __75__MRActiveRoutesObserver__handleActiveSystemEndpointDidRemoveOutputDevice___block_invoke_3;
    v29[3] = &unk_1E769B178;
    objc_copyWeak(&v30, buf);
    v23 = [v19 initWithInterval:0 repeats:v22 queue:v29 block:v21];
    v24 = *(a1 + 32);
    v25 = *(v24 + 88);
    *(v24 + 88) = v23;

    objc_destroyWeak(&v30);
    objc_destroyWeak(buf);
    objc_sync_exit(v15);

    v26 = _MRLogForCategory(0);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = *(*(a1 + 32) + 72);
      *buf = 138412290;
      v36 = v27;
      _os_log_impl(&dword_1A2860000, v26, OS_LOG_TYPE_DEFAULT, "[MRActiveRoutesObserver] DeviceRemovedSnapshot Added: %@", buf, 0xCu);
    }
  }

  [*(a1 + 32) _onWorkerQueue_reevaluateWithEndpoint:v14];

  v28 = *MEMORY[0x1E69E9840];
}

uint64_t __75__MRActiveRoutesObserver__handleActiveSystemEndpointDidRemoveOutputDevice___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [*(a1 + 32) uid];
  if (v3 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v3 isEqual:v4] ^ 1;
  }

  return v5;
}

BOOL __75__MRActiveRoutesObserver__handleActiveSystemEndpointDidRemoveOutputDevice___block_invoke_53(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2 || ![v2 isLocalEndpoint])
  {
    return 0;
  }

  v3 = [*(a1 + 32) outputDevices];
  v4 = [v3 msv_firstWhere:&__block_literal_global_95];

  v5 = v4 == 0;
  return v5;
}

void __75__MRActiveRoutesObserver__handleActiveSystemEndpointDidRemoveOutputDevice___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained activeEndpointSnapshot];
    [v3 _onWorkerQueue_reevaluateWithEndpoint:v2];

    WeakRetained = v3;
  }
}

- (void)_reevaluateASE
{
  v3 = [(MRActiveRoutesObserver *)self workerQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__MRActiveRoutesObserver__reevaluateASE__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_reevaluateAPA
{
  v3 = [(MRActiveRoutesObserver *)self workerQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__MRActiveRoutesObserver__reevaluateAPA__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __40__MRActiveRoutesObserver__reevaluateAPA__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _onWorkerQueue_reevaluateWithEndpoint:*(*(a1 + 32) + 48)];
  v2 = *(a1 + 32);

  return [v2 _onWorkerQueue_reevaluateAPA];
}

- (void)_onWorkerQueue_reevaluateASE
{
  v3 = [(MRActiveRoutesObserver *)self workerQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [MEMORY[0x1E695DF00] now];
  [(MRActiveRoutesObserver *)self setLastFetchAttemptToken:v4];
  v5 = objc_opt_class();
  v6 = [(MRActiveRoutesObserver *)self workerQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__MRActiveRoutesObserver__onWorkerQueue_reevaluateASE__block_invoke;
  v8[3] = &unk_1E76A3C58;
  v9 = v4;
  v10 = self;
  v7 = v4;
  [v5 fetchActiveEndpointOnQueue:v6 withCompletion:v8];
}

void __54__MRActiveRoutesObserver__onWorkerQueue_reevaluateASE__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) lastFetchAttemptToken];

  if (v3 == v4)
  {
    [*(a1 + 40) setActiveEndpoint:v5];
  }
}

- (void)_onWorkerQueue_reevaluateAPA
{
  v3 = [(MRActiveRoutesObserver *)self workerQueue];
  dispatch_assert_queue_V2(v3);

  v4 = +[MRDeviceInfoRequest localDeviceInfo];
  -[MRActiveRoutesObserver setIsLocalDeviceAirPlayActive:](self, "setIsLocalDeviceAirPlayActive:", [v4 isAirPlayActive]);
}

- (void)_reevaluateWithEndpoint:(id)a3
{
  v4 = a3;
  v5 = [(MRActiveRoutesObserver *)self workerQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__MRActiveRoutesObserver__reevaluateWithEndpoint___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_onWorkerQueue_reevaluateWithEndpoint:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(MRActiveRoutesObserver *)self workerQueue];
  dispatch_assert_queue_V2(v6);

  v7 = +[MRDeviceInfoRequest localDeviceInfo];
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __64__MRActiveRoutesObserver__onWorkerQueue_reevaluateWithEndpoint___block_invoke;
  v26 = &unk_1E76A3C80;
  v27 = self;
  v30 = a2;
  v8 = v5;
  v28 = v8;
  v9 = v7;
  v29 = v9;
  if (__64__MRActiveRoutesObserver__onWorkerQueue_reevaluateWithEndpoint___block_invoke(&v23))
  {
    v10 = [objc_opt_class() _computeActiveRouteIDsFromEndpoint:v8 localDeviceInfo:{v9, v23, v24}];
    v11 = [(MRActiveRoutesObserver *)self activeRouteIDs];
    v12 = v11;
    if (v10 == v11)
    {
    }

    else
    {
      v13 = [v10 isEqual:v11];

      if ((v13 & 1) == 0)
      {
        v14 = _MRLogForCategory(0);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v32 = v10;
          _os_log_impl(&dword_1A2860000, v14, OS_LOG_TYPE_DEFAULT, "[MRActiveRoutesObserver] ActiveRouteIDs -> %@", buf, 0xCu);
        }

        v15 = self;
        objc_sync_enter(v15);
        objc_storeStrong(&v15->_activeRouteIDs, v10);
        deviceRemovedSnapshot = v15->_deviceRemovedSnapshot;
        v15->_deviceRemovedSnapshot = 0;

        deviceRemovedWaitIntervalTimer = v15->_deviceRemovedWaitIntervalTimer;
        v15->_deviceRemovedWaitIntervalTimer = 0;

        objc_sync_exit(v15);
        v18 = [(MRActiveRoutesObserver *)v15 activeRouteIDsChangedCallback];

        if (!v18)
        {
          goto LABEL_11;
        }

        v19 = [(MRActiveRoutesObserver *)v15 activeRouteIDsChangedCallback];
        (*&v19->_localDeviceAirPlayActive)(v19, v10);
LABEL_10:

LABEL_11:
        goto LABEL_12;
      }
    }

    v19 = self;
    objc_sync_enter(v19);
    v20 = v19->_deviceRemovedSnapshot;
    v19->_deviceRemovedSnapshot = 0;

    v21 = v19->_deviceRemovedWaitIntervalTimer;
    v19->_deviceRemovedWaitIntervalTimer = 0;

    objc_sync_exit(v19);
    goto LABEL_10;
  }

LABEL_12:

  v22 = *MEMORY[0x1E69E9840];
}

uint64_t __64__MRActiveRoutesObserver__onWorkerQueue_reevaluateWithEndpoint___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) deviceRemovedSnapshot];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 endpoint];
    v6 = [v5 isLocalEndpoint];

    if ((v6 & 1) == 0)
    {
      __64__MRActiveRoutesObserver__onWorkerQueue_reevaluateWithEndpoint___block_invoke_cold_1(a1, v2);
    }

    v7 = *(a1 + 40);
    v8 = [v4 endpoint];
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      v10 = [v7 isEqual:v8];

      if ((v10 & 1) == 0)
      {
        v11 = _MRLogForCategory(0);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v24) = 0;
          v12 = "[MRActiveRoutesObserver] DeviceRemovedSnapshot: removed due to new activeEndpoint";
LABEL_13:
          _os_log_impl(&dword_1A2860000, v11, OS_LOG_TYPE_DEFAULT, v12, &v24, 2u);
          goto LABEL_14;
        }

        goto LABEL_14;
      }
    }

    v14 = [v4 date];
    [v14 timeIntervalSinceNow];
    v16 = fabs(v15);
    [*v2 deviceRemovedWaitInterval];
    v18 = v17;

    if (v16 <= v18)
    {
      if ([*(a1 + 48) isAirPlayActive] && (objc_msgSend(*(a1 + 48), "parentGroupSupportsGroupCohesion") & 1) == 0)
      {
        v11 = _MRLogForCategory(0);
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_14;
        }

        LOWORD(v24) = 0;
        v12 = "[MRActiveRoutesObserver] DeviceRemovedSnapshot: removed due to airPlayActive + !parentGroupSupportsGroupCohesion";
        goto LABEL_13;
      }

      if (![*(a1 + 48) isAirPlayActive] || !objc_msgSend(*(a1 + 48), "parentGroupSupportsGroupCohesion") || (objc_msgSend(*(a1 + 48), "leaderDeviceInfo"), v19 = objc_claimAutoreleasedReturnValue(), v19, !v19))
      {
        v11 = _MRLogForCategory(0);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [v4 date];
          [v20 timeIntervalSinceNow];
          v24 = 134217984;
          v25 = v21;
          _os_log_impl(&dword_1A2860000, v11, OS_LOG_TYPE_DEFAULT, "[MRActiveRoutesObserver] DeviceRemovedSnapshot: ActiveRouteIDs update ignored due to snapshot %lf seconds ago", &v24, 0xCu);
        }

        v13 = 0;
        goto LABEL_25;
      }

      v11 = _MRLogForCategory(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24) = 0;
        v12 = "[MRActiveRoutesObserver] DeviceRemovedSnapshot: removed due to airPlayActive + parentGroupSupportsGroupCohesion + leaderDeviceInfo";
        goto LABEL_13;
      }
    }

    else
    {
      v11 = _MRLogForCategory(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24) = 0;
        v12 = "[MRActiveRoutesObserver] DeviceRemovedSnapshot: removed due to deviceRemovedWaitInterval";
        goto LABEL_13;
      }
    }

LABEL_14:
    v13 = 1;
LABEL_25:

    goto LABEL_26;
  }

  v13 = 1;
LABEL_26:

  v22 = *MEMORY[0x1E69E9840];
  return v13;
}

+ (id)_computeActiveRouteIDsFromEndpoint:(id)a3 localDeviceInfo:(id)a4
{
  v23[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = +[MRUserSettings currentSettings];
  v8 = [v7 supportTopologyHealing];

  if (v8)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __77__MRActiveRoutesObserver__computeActiveRouteIDsFromEndpoint_localDeviceInfo___block_invoke;
    v20[3] = &unk_1E76A3130;
    v9 = v5;
    v21 = v9;
    v10 = v6;
    v22 = v10;
    if ((__77__MRActiveRoutesObserver__computeActiveRouteIDsFromEndpoint_localDeviceInfo___block_invoke)(v20))
    {
      v11 = [v10 leaderDeviceInfo];
      v12 = [v11 groupedDevices];
      v13 = [v12 msv_map:&__block_literal_global_64_0];
    }

    else
    {
      v11 = [v9 resolvedOutputDevices];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __77__MRActiveRoutesObserver__computeActiveRouteIDsFromEndpoint_localDeviceInfo___block_invoke_3;
      v18[3] = &unk_1E769B6F8;
      v19 = v10;
      v13 = [v11 msv_map:v18];
      v12 = v19;
    }

    v15 = v21;
  }

  else
  {
    v14 = [v6 effectiveID];
    v15 = v14;
    if (v14)
    {
      v23[0] = v14;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    }

    else
    {
      v13 = 0;
    }
  }

  v16 = *MEMORY[0x1E69E9840];

  return v13;
}

BOOL __77__MRActiveRoutesObserver__computeActiveRouteIDsFromEndpoint_localDeviceInfo___block_invoke(uint64_t a1)
{
  if (![*(a1 + 32) isLocalEndpoint] || !objc_msgSend(*(a1 + 40), "isAirPlayActive"))
  {
    return 0;
  }

  v2 = [*(a1 + 40) leaderDeviceInfo];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 groupedDevices];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id __77__MRActiveRoutesObserver__computeActiveRouteIDsFromEndpoint_localDeviceInfo___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 deviceType] == 1)
  {
    v4 = [v3 uid];
  }

  else
  {
    v5 = [*(a1 + 32) clusterID];
    v6 = v5;
    if (v5)
    {
      v4 = v5;
    }

    else
    {
      v7 = [*(a1 + 32) deviceUID];
      v8 = v7;
      if (v7)
      {
        v9 = v7;
      }

      else
      {
        v9 = [v3 uid];
      }

      v4 = v9;
    }
  }

  return v4;
}

+ (void)fetchActiveRouteIDsWithCompletion:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MRActiveRoutesObserver.m" lineNumber:89 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
}

+ (void)fetchActiveEndpointOnQueue:(uint64_t)a1 withCompletion:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MRActiveRoutesObserver.m" lineNumber:107 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
}

void __68__MRActiveRoutesObserver_fetchActiveEndpointOnQueue_withCompletion___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = [MEMORY[0x1E695DF00] date];
  [v7 timeIntervalSinceDate:*(a1 + 40)];
  v10 = 138544130;
  v11 = @"MRActiveRoutesObserver.fetchActiveEndpointOnQueue";
  v12 = 2114;
  v13 = v6;
  v14 = 2114;
  v15 = a2;
  v16 = 2048;
  v17 = v8;
  _os_log_error_impl(&dword_1A2860000, a3, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", &v10, 0x2Au);

  v9 = *MEMORY[0x1E69E9840];
}

void __64__MRActiveRoutesObserver__onWorkerQueue_reevaluateWithEndpoint___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:*(a1 + 56) object:*a2 file:@"MRActiveRoutesObserver.m" lineNumber:389 description:{@"Invalid parameter not satisfying: %@", @"snapshot.endpoint.isLocalEndpoint"}];
}

@end