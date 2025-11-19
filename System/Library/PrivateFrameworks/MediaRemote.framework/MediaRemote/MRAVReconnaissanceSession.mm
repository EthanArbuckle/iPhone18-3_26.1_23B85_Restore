@interface MRAVReconnaissanceSession
- (id)_descriptionObjectFromResultOfOutputDevices:(void *)a3 endpoints:(void *)a4 unanimousEndpoint:;
- (id)initWithOutputDeviceUIDs:(void *)a3 outputDeviceGroupUID:(uint64_t)a4 features:(void *)a5 details:;
- (void)_onQueue_beginSearchWithTimeout:(uint64_t)a1;
- (void)_onQueue_cancelSearch;
- (void)_onQueue_concludeSearch;
- (void)_onQueue_endSearch;
- (void)_onQueue_invokeCompletionWithMatchingDevices:(void *)a3 matchingEndpoints:(void *)a4 unanimousEndpoint:(void *)a5 error:;
- (void)_onQueue_processSearchLoop;
- (void)_onQueue_timeoutTimerFired;
- (void)_onQueue_updateCachedOutputDevices:(void *)a3 endpoints:;
- (void)beginSearchWithTimeout:(double)a3 completion:(id)a4;
- (void)beginSearchWithTimeout:(double)a3 endpointsCompletion:(id)a4;
- (void)beginSearchWithTimeout:(double)a3 mapCompletion:(id)a4;
- (void)cancelSearch;
- (void)dealloc;
- (void)setUnanimousEndpoint:(uint64_t)a1;
@end

@implementation MRAVReconnaissanceSession

- (id)initWithOutputDeviceUIDs:(void *)a3 outputDeviceGroupUID:(uint64_t)a4 features:(void *)a5 details:
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  if (a1)
  {
    v40.receiver = a1;
    v40.super_class = MRAVReconnaissanceSession;
    a1 = objc_msgSendSuper2(&v40, sel_init);
    if (a1)
    {
      if (!v11)
      {
        v11 = [[MRRequestDetails alloc] initWithInitiator:@"Infer" requestID:0 reason:@"API"];
      }

      v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v13 = qos_class_self();
      v14 = dispatch_queue_attr_make_with_qos_class(v12, v13, 0);
      v15 = dispatch_queue_create("com.apple.MediaRemote.MRAVReconnaissanceSession", v14);
      v16 = a1[2];
      a1[2] = v15;

      objc_storeStrong(a1 + 6, v11);
      v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v18 = a1[13];
      a1[13] = v17;

      v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v20 = a1[14];
      a1[14] = v19;

      v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v22 = a1[3];
      a1[3] = v21;

      v23 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v9];
      v24 = a1[9];
      a1[9] = v23;

      v25 = [v10 copy];
      v26 = a1[7];
      a1[7] = v25;

      v27 = [MRAVRoutingDiscoverySession discoverySessionWithEndpointFeatures:a4];
      v28 = a1[8];
      a1[8] = v27;

      *(a1 + 42) = (a4 & 8) != 0;
      a1[18] = 0;
      *(a1 + 40) = [a1[7] length] != 0;
      *(a1 + 45) = 1;
      objc_initWeak(&location, a1);
      v29 = a1[8];
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __92__MRAVReconnaissanceSession_initWithOutputDeviceUIDs_outputDeviceGroupUID_features_details___block_invoke;
      v37[3] = &unk_1E769B720;
      objc_copyWeak(&v38, &location);
      v30 = [v29 addEndpointsChangedCallback:v37];
      v31 = a1[10];
      a1[10] = v30;

      v32 = a1[8];
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __92__MRAVReconnaissanceSession_initWithOutputDeviceUIDs_outputDeviceGroupUID_features_details___block_invoke_3;
      v35[3] = &unk_1E769B720;
      objc_copyWeak(&v36, &location);
      v33 = [v32 addOutputDevicesChangedCallback:v35];
      objc_destroyWeak(&v36);
      objc_destroyWeak(&v38);
      objc_destroyWeak(&location);
    }
  }

  return a1;
}

void __92__MRAVReconnaissanceSession_initWithOutputDeviceUIDs_outputDeviceGroupUID_features_details___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[2];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __92__MRAVReconnaissanceSession_initWithOutputDeviceUIDs_outputDeviceGroupUID_features_details___block_invoke_2;
    v7[3] = &unk_1E769A4A0;
    v8 = WeakRetained;
    v9 = v3;
    dispatch_async(v6, v7);
  }
}

void __92__MRAVReconnaissanceSession_initWithOutputDeviceUIDs_outputDeviceGroupUID_features_details___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[2];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __92__MRAVReconnaissanceSession_initWithOutputDeviceUIDs_outputDeviceGroupUID_features_details___block_invoke_4;
    v7[3] = &unk_1E769A4A0;
    v8 = WeakRetained;
    v9 = v3;
    dispatch_async(v6, v7);
  }
}

- (void)dealloc
{
  serialQueue = self->_serialQueue;
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __36__MRAVReconnaissanceSession_dealloc__block_invoke;
  v8 = &unk_1E769A228;
  v9 = self;
  msv_dispatch_sync_on_queue();
  [(MRAVRoutingDiscoverySession *)self->_discoverySession removeEndpointsChangedCallback:self->_discoverySessionCallbackToken];
  v4.receiver = self;
  v4.super_class = MRAVReconnaissanceSession;
  [(MRAVReconnaissanceSession *)&v4 dealloc];
}

- (void)beginSearchWithTimeout:(double)a3 completion:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__MRAVReconnaissanceSession_beginSearchWithTimeout_completion___block_invoke;
  v8[3] = &unk_1E76A4870;
  v9 = v6;
  v7 = v6;
  [(MRAVReconnaissanceSession *)self beginSearchWithTimeout:v8 endpointsCompletion:a3];
}

uint64_t __63__MRAVReconnaissanceSession_beginSearchWithTimeout_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, a4, a5);
  }

  return result;
}

- (void)beginSearchWithTimeout:(double)a3 endpointsCompletion:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __72__MRAVReconnaissanceSession_beginSearchWithTimeout_endpointsCompletion___block_invoke;
  v8[3] = &unk_1E76A4898;
  v9 = v6;
  v7 = v6;
  [(MRAVReconnaissanceSession *)self beginSearchWithTimeout:v8 mapCompletion:a3];
}

void __72__MRAVReconnaissanceSession_beginSearchWithTimeout_endpointsCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  if (*(a1 + 32))
  {
    v9 = MEMORY[0x1E695DFD8];
    v10 = a5;
    v11 = a4;
    v12 = a3;
    v13 = [a2 allValues];
    v16 = [v9 setWithArray:v13];

    v14 = *(a1 + 32);
    v15 = [v16 allObjects];
    (*(v14 + 16))(v14, v15, v12, v11, v10);
  }
}

- (void)beginSearchWithTimeout:(double)a3 mapCompletion:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [MEMORY[0x1E695DF00] date];
  if ([(MRAVReconnaissanceSession *)self shouldLog])
  {
    v8 = objc_alloc(MEMORY[0x1E696AD60]);
    v9 = [(MRAVReconnaissanceSession *)self details];
    v10 = [v9 requestID];
    v11 = [v8 initWithFormat:@"%@<%@>", @"ReconnaissanceSession.search", v10];

    v12 = [(MRAVReconnaissanceSession *)self matchingOutputDeviceUIDs];
    if ([v12 count])
    {
      [(MRAVReconnaissanceSession *)self matchingOutputDeviceUIDs];
    }

    else
    {
      [(MRAVReconnaissanceSession *)self matchingOutputDeviceGroupID];
    }
    v13 = ;

    if (v13)
    {
      v14 = [(MRAVReconnaissanceSession *)self matchingOutputDeviceUIDs];
      if ([v14 count])
      {
        [(MRAVReconnaissanceSession *)self matchingOutputDeviceUIDs];
      }

      else
      {
        [(MRAVReconnaissanceSession *)self matchingOutputDeviceGroupID];
      }
      v15 = ;
      [v11 appendFormat:@" for %@", v15];
    }

    v16 = [(MRAVReconnaissanceSession *)self details];
    v17 = [v16 reason];

    if (v17)
    {
      v18 = [(MRAVReconnaissanceSession *)self details];
      v19 = [v18 reason];
      [v11 appendFormat:@" because %@", v19];
    }

    v20 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v34 = v11;
      _os_log_impl(&dword_1A2860000, v20, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
    }
  }

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __66__MRAVReconnaissanceSession_beginSearchWithTimeout_mapCompletion___block_invoke;
  v30[3] = &unk_1E76A48C0;
  v30[4] = self;
  v31 = v7;
  v32 = v6;
  v21 = v6;
  v22 = v7;
  v23 = MEMORY[0x1A58E3570](v30);
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__MRAVReconnaissanceSession_beginSearchWithTimeout_mapCompletion___block_invoke_26;
  block[3] = &unk_1E769BF28;
  block[4] = self;
  v28 = v23;
  v29 = a3;
  v25 = v23;
  dispatch_async(serialQueue, block);

  v26 = *MEMORY[0x1E69E9840];
}

void __66__MRAVReconnaissanceSession_beginSearchWithTimeout_mapCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v51 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v9 allValues];
  v14 = [v13 firstObject];
  v15 = [v14 name];

  v16 = [v9 allValues];
  v17 = [v16 firstObject];
  v18 = [v17 uid];

  if ([*(a1 + 32) shouldLog])
  {
    v19 = _MRLogForCategory(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      if (v15)
      {
        v20 = v15;
      }

      else
      {
        v20 = v18;
      }

      if (v12)
      {
        v21 = v12;
      }

      else
      {
        v21 = v20;
      }

      [*(a1 + 40) timeIntervalSinceNow];
      v22 = *(a1 + 32);
      *buf = 138412802;
      v44 = v21;
      v45 = 2048;
      v46 = -v23;
      v47 = 2114;
      v48 = v22;
      _os_log_impl(&dword_1A2860000, v19, OS_LOG_TYPE_DEFAULT, "[ReconnaissanceSession] WHAPRO: Discovery found %@ in %f seconds %{public}@", buf, 0x20u);
    }
  }

  if ([*(a1 + 32) shouldLog])
  {
    if (v12)
    {
      v24 = _MRLogForCategory(0xAuLL);
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      v42 = [*(a1 + 32) details];
      v35 = [v42 requestID];
      v36 = [MEMORY[0x1E695DF00] date];
      [v36 timeIntervalSinceDate:*(a1 + 40)];
      *buf = 138544130;
      v44 = @"ReconnaissanceSession.search";
      v45 = 2114;
      v46 = *&v35;
      v47 = 2114;
      v48 = v12;
      v49 = 2048;
      v50 = v37;
      _os_log_error_impl(&dword_1A2860000, v24, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", buf, 0x2Au);
    }

    else
    {
      v27 = *(a1 + 32);
      v28 = [v9 allValues];
      v29 = [(MRAVReconnaissanceSession *)v27 _descriptionObjectFromResultOfOutputDevices:v28 endpoints:v10 unanimousEndpoint:v11];

      v24 = _MRLogForCategory(0xAuLL);
      v30 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
      if (v29)
      {
        if (v30)
        {
          v41 = [*(a1 + 32) details];
          v31 = [v41 requestID];
          v32 = *(a1 + 32);
          v40 = [v9 allValues];
          v33 = [(MRAVReconnaissanceSession *)v32 _descriptionObjectFromResultOfOutputDevices:v40 endpoints:v10 unanimousEndpoint:v11];
          v39 = [MEMORY[0x1E695DF00] date];
          [v39 timeIntervalSinceDate:*(a1 + 40)];
          *buf = 138544130;
          v44 = @"ReconnaissanceSession.search";
          v45 = 2114;
          v46 = *&v31;
          v47 = 2112;
          v48 = v33;
          v49 = 2048;
          v50 = v34;
          _os_log_impl(&dword_1A2860000, v24, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds", buf, 0x2Au);
        }

        goto LABEL_14;
      }

      if (!v30)
      {
LABEL_14:

        goto LABEL_15;
      }

      v42 = [*(a1 + 32) details];
      v35 = [v42 requestID];
      v36 = [MEMORY[0x1E695DF00] date];
      [v36 timeIntervalSinceDate:*(a1 + 40)];
      *buf = 138543874;
      v44 = @"ReconnaissanceSession.search";
      v45 = 2114;
      v46 = *&v35;
      v47 = 2048;
      v48 = v38;
      _os_log_impl(&dword_1A2860000, v24, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned in %.4lf seconds", buf, 0x20u);
    }

    goto LABEL_14;
  }

LABEL_15:
  v25 = *(a1 + 48);
  if (v25)
  {
    (*(v25 + 16))(v25, v9, v10, v11, v12);
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)_onQueue_beginSearchWithTimeout:(uint64_t)a1
{
  v27 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2 < 0.0)
    {
      [(MRAVReconnaissanceSession *)sel__onQueue_beginSearchWithTimeout_ _onQueue_beginSearchWithTimeout:a1];
    }

    v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v5 = *(a1 + 32);
    *(a1 + 32) = v4;

    v6 = MRMediaRemoteCopyDeviceUID();
    LocalEndpoint = MRAVEndpointGetLocalEndpoint(0);
    IsProxyGroupPlayer = MRAVEndpointIsProxyGroupPlayer(LocalEndpoint);
    v9 = +[MRAVClusterController sharedController];
    v10 = [v9 clusterStatus];

    v11 = [*(a1 + 72) allObjects];
    v12 = [v11 mutableCopy];

    if (([v12 containsObject:v6] & IsProxyGroupPlayer) == 1 && (objc_msgSend(a1, "endpointFeatures") & 8) != 0 && v10 != 2)
    {
      [v12 removeObject:v6];
    }

    v13 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v12];
    v14 = *(a1 + 72);
    *(a1 + 72) = v13;

    if ([*(a1 + 72) count] || objc_msgSend(*(a1 + 56), "length") || objc_msgSend(*(a1 + 176), "count"))
    {
      if ([a1 shouldLog])
      {
        v15 = _MRLogForCategory(0);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          v24 = a2;
          v25 = 2114;
          v26 = a1;
          _os_log_impl(&dword_1A2860000, v15, OS_LOG_TYPE_DEFAULT, "[ReconnaissanceSession] Beginning search with timeout %f %{public}@", buf, 0x16u);
        }
      }

      if (*(a1 + 96))
      {
        [(MRAVReconnaissanceSession *)sel__onQueue_beginSearchWithTimeout_ _onQueue_beginSearchWithTimeout:a1];
      }

      if (a2 > 0.0)
      {
        objc_initWeak(buf, a1);
        *(a1 + 8) = a2;
        v16 = objc_alloc(MEMORY[0x1E69B14D8]);
        v17 = *(a1 + 16);
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __61__MRAVReconnaissanceSession__onQueue_beginSearchWithTimeout___block_invoke;
        v21[3] = &unk_1E769B178;
        objc_copyWeak(&v22, buf);
        v18 = [v16 initWithInterval:v17 queue:v21 block:a2];
        v19 = *(a1 + 96);
        *(a1 + 96) = v18;

        objc_destroyWeak(&v22);
        objc_destroyWeak(buf);
      }

      [MRAVReconnaissanceSession _onQueue_beginSearchWithTimeout:a1];
    }

    else
    {
      [MRAVReconnaissanceSession _onQueue_beginSearchWithTimeout:a1];
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __61__MRAVReconnaissanceSession__onQueue_beginSearchWithTimeout___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(MRAVReconnaissanceSession *)WeakRetained _onQueue_timeoutTimerFired];
}

- (void)_onQueue_processSearchLoop
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1A2860000, a1, OS_LOG_TYPE_DEFAULT, "[ReconnaissanceSession] Found incomplete clusters among matching devices. Waiting for discovery updates until they are complete.", v2, 2u);
  }
}

- (void)cancelSearch
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__MRAVReconnaissanceSession_cancelSearch__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

uint64_t __55__MRAVReconnaissanceSession__onQueue_processSearchLoop__block_invoke_49(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 outputDevices];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__MRAVReconnaissanceSession__onQueue_processSearchLoop__block_invoke_2;
  v10[3] = &unk_1E76A48E8;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v11 = v3;
  v12 = v5;
  v10[4] = v6;
  v7 = v3;
  v8 = [v4 mr_all:v10];

  return v8;
}

uint64_t __55__MRAVReconnaissanceSession__onQueue_processSearchLoop__block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 deviceSubtype] == 15 && (objc_msgSend(v3, "clusterComposition"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "count"), v6 = objc_msgSend(v3, "configuredClusterSize"), v4, v5 < v6))
  {
    if (([*(*(*(a1 + 48) + 8) + 40) containsObject:v3] & 1) == 0 && objc_msgSend(*(a1 + 32), "shouldLog"))
    {
      v7 = _MRLogForCategory(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [v3 configuredClusterSize];
        v9 = [*(a1 + 40) shortDescription];
        v13 = 134218498;
        v14 = v8;
        v15 = 2114;
        v16 = v3;
        v17 = 2114;
        v18 = v9;
        _os_log_impl(&dword_1A2860000, v7, OS_LOG_TYPE_DEFAULT, "[ReconnaissanceSession] Found incomplete cluster (expected: %lu): %{public}@ in endpoint: %{public}@", &v13, 0x20u);
      }
    }

    [*(*(*(a1 + 48) + 8) + 40) addObject:v3];
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t __55__MRAVReconnaissanceSession__onQueue_processSearchLoop__block_invoke_52(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 deviceSubtype] == 15 && (objc_msgSend(v3, "clusterComposition"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "count"), v6 = objc_msgSend(v3, "configuredClusterSize"), v4, v5 < v6))
  {
    if (([*(*(*(a1 + 40) + 8) + 40) containsObject:v3] & 1) == 0 && objc_msgSend(*(a1 + 32), "shouldLog"))
    {
      v7 = _MRLogForCategory(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 134218242;
        v12 = [v3 configuredClusterSize];
        v13 = 2114;
        v14 = v3;
        _os_log_impl(&dword_1A2860000, v7, OS_LOG_TYPE_DEFAULT, "[ReconnaissanceSession] Found incomplete cluster device (expected: %lu): %{public}@", &v11, 0x16u);
      }
    }

    [*(*(*(a1 + 40) + 8) + 40) addObject:v3];
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)_onQueue_updateCachedOutputDevices:(void *)a3 endpoints:
{
  v7 = a2;
  v6 = a3;
  if (a1)
  {
    if (v7)
    {
      objc_storeStrong((a1 + 128), a2);
    }

    if (v6)
    {
      objc_storeStrong((a1 + 136), a3);
    }

    ++*(a1 + 144);
    objc_storeStrong((a1 + 152), *(a1 + 128));
    objc_storeStrong((a1 + 160), *(a1 + 136));
    [(MRAVReconnaissanceSession *)a1 _onQueue_processSearchLoop];
  }
}

- (void)_onQueue_cancelSearch
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    OUTLINED_FUNCTION_6_8(a1);
    if (v1[43] == 1)
    {
      if ([v1 shouldLog])
      {
        v3 = _MRLogForCategory(0);
        if (OUTLINED_FUNCTION_15(v3))
        {
          OUTLINED_FUNCTION_1_25();
          _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
        }
      }

      v9 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:25 description:@"Operation was manually canceled via a explict call to CancelSearch"];
      [(MRAVReconnaissanceSession *)v1 _onQueue_invokeCompletionWithMatchingDevices:MEMORY[0x1E695E0F0] matchingEndpoints:0 unanimousEndpoint:v9 error:?];
    }

    [(MRAVReconnaissanceSession *)v1 _onQueue_endSearch];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (id)_descriptionObjectFromResultOfOutputDevices:(void *)a3 endpoints:(void *)a4 unanimousEndpoint:
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (a1)
  {
    v11 = v9;
    if (v9 || (v12 = [v8 count], v11 = v8, v12) || (v13 = objc_msgSend(v7, "count"), v11 = v7, v13))
    {
      a1 = v11;
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

void __66__MRAVReconnaissanceSession_beginSearchWithTimeout_mapCompletion___block_invoke_26(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3[43] != 1 || ([(MRAVReconnaissanceSession *)v3 _onQueue_cancelSearch], (v3 = *(a1 + 32)) != 0))
  {
    objc_setProperty_nonatomic_copy(v3, a2, *(a1 + 40), 88);
    v3 = *(a1 + 32);
  }

  v4 = *(a1 + 48);

  [(MRAVReconnaissanceSession *)v3 _onQueue_beginSearchWithTimeout:v4];
}

- (void)setUnanimousEndpoint:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 120), a2);
  }
}

- (void)_onQueue_invokeCompletionWithMatchingDevices:(void *)a3 matchingEndpoints:(void *)a4 unanimousEndpoint:(void *)a5 error:
{
  v14 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (a1)
  {
    v12 = a1[11];
    objc_setProperty_nonatomic_copy(a1, v13, 0, 88);
    if (v12)
    {
      v12[2](v12, v14, v9, v10, v11);
    }
  }
}

- (void)_onQueue_timeoutTimerFired
{
  v135 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    OUTLINED_FUNCTION_6_8(a1);
    if (*(v1 + 43) == 1)
    {
      *(v1 + 43) = 0;
      if ([v1 shouldLog])
      {
        v3 = _MRLogForCategory(0);
        if (OUTLINED_FUNCTION_15(v3))
        {
          v4 = *(v1 + 144);
          OUTLINED_FUNCTION_3_15(*(v1 + 8), 3.8522e-34);
          v131 = 2048;
          v132 = v5;
          v133 = 2114;
          v134 = v1;
          OUTLINED_FUNCTION_0_28();
          _os_log_impl(v6, v7, v8, v9, v10, 0x20u);
        }
      }

      if ([v1 shouldLog])
      {
        v11 = _MRLogForCategory(0);
        if (OUTLINED_FUNCTION_15(v11))
        {
          LOWORD(v129) = 0;
          OUTLINED_FUNCTION_0_28();
          _os_log_impl(v12, v13, v14, v15, v16, 2u);
        }
      }

      v125 = 0u;
      v126 = 0u;
      v123 = 0u;
      v124 = 0u;
      v17 = *(v1 + 160);
      v18 = [v17 countByEnumeratingWithState:&v123 objects:v128 count:16];
      if (v18)
      {
        v20 = v18;
        v21 = *v124;
        *&v19 = 138543362;
        v117 = v19;
        do
        {
          v22 = 0;
          do
          {
            if (*v124 != v21)
            {
              objc_enumerationMutation(v17);
            }

            v23 = *(*(&v123 + 1) + 8 * v22);
            if ([v1 shouldLog])
            {
              v24 = _MRLogForCategory(0);
              v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
              if (v25)
              {
                OUTLINED_FUNCTION_4_12(v25, v26, v27, v28, v29, v30, v31, v32, v33);
                OUTLINED_FUNCTION_5_10(&dword_1A2860000, v34, v35, v36, v37);
              }
            }

            ++v22;
          }

          while (v20 != v22);
          v20 = [v17 countByEnumeratingWithState:&v123 objects:v128 count:16];
        }

        while (v20);
      }

      if ([v1 shouldLog])
      {
        v38 = _MRLogForCategory(0);
        if (OUTLINED_FUNCTION_15(v38))
        {
          LOWORD(v129) = 0;
          OUTLINED_FUNCTION_0_28();
          _os_log_impl(v39, v40, v41, v42, v43, 2u);
        }
      }

      v121 = 0u;
      v122 = 0u;
      v119 = 0u;
      v120 = 0u;
      v44 = *(v1 + 152);
      v45 = [v44 countByEnumeratingWithState:&v119 objects:v127 count:16];
      if (v45)
      {
        v47 = v45;
        v48 = *v120;
        *&v46 = 138543362;
        v118 = v46;
        do
        {
          v49 = 0;
          do
          {
            if (*v120 != v48)
            {
              objc_enumerationMutation(v44);
            }

            v50 = *(*(&v119 + 1) + 8 * v49);
            if ([v1 shouldLog])
            {
              v51 = _MRLogForCategory(0);
              v52 = os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT);
              if (v52)
              {
                OUTLINED_FUNCTION_4_12(v52, v53, v54, v55, v56, v57, v58, v59, v60);
                OUTLINED_FUNCTION_5_10(&dword_1A2860000, v61, v62, v63, v64);
              }
            }

            ++v49;
          }

          while (v47 != v49);
          v47 = [v44 countByEnumeratingWithState:&v119 objects:v127 count:16];
        }

        while (v47);
      }

      if ([v1 shouldLog])
      {
        v65 = _MRLogForCategory(0);
        if (OUTLINED_FUNCTION_15(v65))
        {
          OUTLINED_FUNCTION_3_15(*(v1 + 104), 5.8381e-34);
          OUTLINED_FUNCTION_0_28();
          _os_log_impl(v66, v67, v68, v69, v70, 0xCu);
        }
      }

      if ([v1 shouldLog])
      {
        v71 = _MRLogForCategory(0);
        if (OUTLINED_FUNCTION_15(v71))
        {
          OUTLINED_FUNCTION_3_15(*(v1 + 72), 5.8381e-34);
          OUTLINED_FUNCTION_0_28();
          _os_log_impl(v72, v73, v74, v75, v76, 0xCu);
        }
      }

      if ([v1 shouldLog])
      {
        v77 = _MRLogForCategory(0);
        if (OUTLINED_FUNCTION_15(v77))
        {
          OUTLINED_FUNCTION_3_15(*(v1 + 176), 5.8381e-34);
          OUTLINED_FUNCTION_0_28();
          _os_log_impl(v78, v79, v80, v81, v82, 0xCu);
        }
      }

      if ([v1 shouldLog])
      {
        v83 = _MRLogForCategory(0);
        if (OUTLINED_FUNCTION_15(v83))
        {
          OUTLINED_FUNCTION_3_15(*(v1 + 120), 5.8381e-34);
          OUTLINED_FUNCTION_0_28();
          _os_log_impl(v84, v85, v86, v87, v88, 0xCu);
        }
      }

      if ([v1 shouldLog])
      {
        v89 = _MRLogForCategory(0);
        if (OUTLINED_FUNCTION_15(v89))
        {
          v90 = *(v1 + 120);
          v91 = NSStringFromMRAVEndpointConnectionType([v90 connectionType]);
          v129 = 138543362;
          v130 = v91;
          OUTLINED_FUNCTION_0_28();
          _os_log_impl(v92, v93, v94, v95, v96, 0xCu);
        }
      }

      if ([v1 shouldLog])
      {
        v97 = _MRLogForCategory(0);
        if (OUTLINED_FUNCTION_15(v97))
        {
          v98 = [v1 endpointFeatures];
          v129 = 67109120;
          LODWORD(v130) = v98;
          OUTLINED_FUNCTION_0_28();
          _os_log_impl(v99, v100, v101, v102, v103, 8u);
        }
      }

      if ([v1 shouldLog])
      {
        v104 = _MRLogForCategory(0);
        if (OUTLINED_FUNCTION_15(v104))
        {
          v105 = [v1 shouldWaitForUnanimousEndpoints];
          v129 = 67109120;
          LODWORD(v130) = v105;
          OUTLINED_FUNCTION_0_28();
          _os_log_impl(v106, v107, v108, v109, v110, 8u);
        }
      }

      Error = MRMediaRemoteCreateError(26);
      if (*(v1 + 40) == 1)
      {
        v112 = *(v1 + 104);
        v113 = *(v1 + 112);
        v114 = *(v1 + 120);
        v115 = v1;
      }

      else
      {
        v112 = MEMORY[0x1E695E0F8];
        v113 = MEMORY[0x1E695E0F0];
        v115 = v1;
        v114 = 0;
      }

      [(MRAVReconnaissanceSession *)v115 _onQueue_invokeCompletionWithMatchingDevices:v112 matchingEndpoints:v113 unanimousEndpoint:v114 error:Error];
    }

    [(MRAVReconnaissanceSession *)v1 _onQueue_endSearch];
  }

  v116 = *MEMORY[0x1E69E9840];
}

- (void)_onQueue_concludeSearch
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    OUTLINED_FUNCTION_6_8(a1);
    if (*(v1 + 43) == 1)
    {
      [*(v1 + 104) addEntriesFromDictionary:*(v1 + 24)];
      if ([v1 shouldLog])
      {
        v3 = _MRLogForCategory(0);
        if (OUTLINED_FUNCTION_15(v3))
        {
          LODWORD(v16) = 138543362;
          *(&v16 + 4) = *(v1 + 104);
          OUTLINED_FUNCTION_1_25();
          _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
        }
      }

      if ([v1 shouldLog])
      {
        v9 = _MRLogForCategory(0);
        if (OUTLINED_FUNCTION_15(v9))
        {
          v17 = *(v1 + 112);
          OUTLINED_FUNCTION_1_25();
          _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
        }
      }

      [(MRAVReconnaissanceSession *)v1 _onQueue_invokeCompletionWithMatchingDevices:*(v1 + 112) matchingEndpoints:*(v1 + 120) unanimousEndpoint:0 error:?];
    }

    [(MRAVReconnaissanceSession *)v1 _onQueue_endSearch];
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_onQueue_endSearch
{
  if (a1)
  {
    OUTLINED_FUNCTION_6_8(a1);
    if (*(v1 + 88))
    {
      v3 = [MEMORY[0x1E696AAA8] currentHandler];
      [v3 handleFailureInMethod:sel__onQueue_endSearch object:v1 file:@"MRAVReconnaissanceSession.m" lineNumber:585 description:{@"Invalid parameter not satisfying: %@", @"!self.completion"}];
    }

    [*(v1 + 64) setDiscoveryMode:0];
    *(v1 + 43) = 0;
    [*(v1 + 96) invalidate];
    v2 = *(v1 + 96);
    *(v1 + 96) = 0;
  }
}

- (void)_onQueue_beginSearchWithTimeout:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MRAVReconnaissanceSession.m" lineNumber:252 description:{@"Invalid parameter not satisfying: %@", @"timeout >= 0"}];
}

- (void)_onQueue_beginSearchWithTimeout:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MRAVReconnaissanceSession.m" lineNumber:291 description:{@"Invalid parameter not satisfying: %@", @"!_timeoutTimer"}];
}

- (void)_onQueue_beginSearchWithTimeout:(id *)a1 .cold.3(id *a1)
{
  if ([a1[3] count])
  {
    v1 = [MRAVLocalEndpoint sharedLocalEndpointForRoutingContextWithUID:0];
    [(MRAVReconnaissanceSession *)a1 setUnanimousEndpoint:v1];
  }

  if ([a1 shouldLog])
  {
    v3 = _MRLogForCategory(0);
    if (OUTLINED_FUNCTION_15(v3))
    {
      OUTLINED_FUNCTION_1_25();
      _os_log_impl(v4, v5, v6, v7, v8, 2u);
    }
  }

  [(MRAVReconnaissanceSession *)a1 _onQueue_invokeCompletionWithMatchingDevices:MEMORY[0x1E695E0F0] matchingEndpoints:0 unanimousEndpoint:0 error:?];
}

- (void)_onQueue_beginSearchWithTimeout:(uint64_t)a1 .cold.4(uint64_t a1)
{
  [*(a1 + 64) setDiscoveryMode:3];
  *(a1 + 43) = 1;
  [(MRAVReconnaissanceSession *)a1 _onQueue_processSearchLoop];
}

@end