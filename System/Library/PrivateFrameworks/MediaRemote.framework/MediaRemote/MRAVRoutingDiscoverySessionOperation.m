@interface MRAVRoutingDiscoverySessionOperation
- (MRAVRoutingDiscoverySessionOperation)initWithOutputDeviceUIDs:(id)a3;
- (OS_dispatch_queue)dispatchQueue;
- (id)endpointDiscoveredHandler;
- (id)finishHandler;
- (id)outputDeviceDiscoveredHandler;
- (void)_finishWithError:(id)a3;
- (void)_notifyDiscoveredEndpoint:(id)a3 outputDevice:(id)a4 forTargetOutputDevice:(id)a5;
- (void)cancel;
- (void)cancelWithError:(id)a3;
- (void)executeWithTimeout:(double)a3;
- (void)setDispatchQueue:(id)a3;
- (void)setEndpointDiscoveredHandler:(id)a3;
- (void)setFinishHandler:(id)a3;
- (void)setOutputDeviceDiscoveredHandler:(id)a3;
@end

@implementation MRAVRoutingDiscoverySessionOperation

- (MRAVRoutingDiscoverySessionOperation)initWithOutputDeviceUIDs:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MRAVRoutingDiscoverySessionOperation;
  v5 = [(MRAVRoutingDiscoverySessionOperation *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    outputDeviceUIDs = v5->_outputDeviceUIDs;
    v5->_outputDeviceUIDs = v6;
  }

  return v5;
}

- (void)setEndpointDiscoveredHandler:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v7 copy];
  endpointDiscoveredHandler = v4->_endpointDiscoveredHandler;
  v4->_endpointDiscoveredHandler = v5;

  objc_sync_exit(v4);
}

- (id)endpointDiscoveredHandler
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [v2->_endpointDiscoveredHandler copy];
  objc_sync_exit(v2);

  return v3;
}

- (void)setOutputDeviceDiscoveredHandler:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v7 copy];
  outputDeviceDiscoveredHandler = v4->_outputDeviceDiscoveredHandler;
  v4->_outputDeviceDiscoveredHandler = v5;

  objc_sync_exit(v4);
}

- (id)outputDeviceDiscoveredHandler
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [v2->_outputDeviceDiscoveredHandler copy];
  objc_sync_exit(v2);

  return v3;
}

- (void)setFinishHandler:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v7 copy];
  finishHandler = v4->_finishHandler;
  v4->_finishHandler = v5;

  objc_sync_exit(v4);
}

- (id)finishHandler
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [v2->_finishHandler copy];
  objc_sync_exit(v2);

  return v3;
}

- (OS_dispatch_queue)dispatchQueue
{
  v2 = self;
  objc_sync_enter(v2);
  dispatchQueue = v2->_dispatchQueue;
  if (!dispatchQueue)
  {
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.mediaremote.discoverySessionOperation", v4);
    v6 = v2->_dispatchQueue;
    v2->_dispatchQueue = v5;

    dispatchQueue = v2->_dispatchQueue;
  }

  v7 = dispatchQueue;
  objc_sync_exit(v2);

  return v7;
}

- (void)setDispatchQueue:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  dispatchQueue = obj->_dispatchQueue;
  obj->_dispatchQueue = v4;

  objc_sync_exit(obj);
}

- (void)executeWithTimeout:(double)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = self;
  objc_sync_enter(v5);
  if (v5->_session)
  {
    v32 = [MEMORY[0x1E696AAA8] currentHandler];
    [v32 handleFailureInMethod:a2 object:v5 file:@"MRAVRoutingDiscoverySessionOperation.m" lineNumber:115 description:{@"Invalid parameter not satisfying: %@", @"!_session"}];
  }

  v6 = [MEMORY[0x1E695DF00] now];
  startDate = v5->_startDate;
  v5->_startDate = v6;

  v8 = [MEMORY[0x1E696AFB0] UUID];
  v9 = [v8 UUIDString];
  requestID = v5->_requestID;
  v5->_requestID = v9;

  v11 = objc_alloc(MEMORY[0x1E695DFD8]);
  v12 = [(MRAVRoutingDiscoverySessionOperation *)v5 outputDeviceUIDs];
  v13 = [v11 initWithArray:v12];

  v14 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", objc_opt_class(), v5->_requestID];
  v15 = [(MRAVRoutingDiscoverySessionOperation *)v5 outputDeviceUIDs];

  if (v15)
  {
    v16 = [(MRAVRoutingDiscoverySessionOperation *)v5 outputDeviceUIDs];
    [v14 appendFormat:@" for %@", v16];
  }

  v17 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v38 = v14;
    _os_log_impl(&dword_1A2860000, v17, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v18 = objc_alloc(MEMORY[0x1E696AEC0]);
  v19 = objc_opt_class();
  v20 = [(MRAVRoutingDiscoverySessionOperation *)v5 outputDeviceUIDs];
  v21 = [v18 initWithFormat:@"%@-%@", v19, v20];

  v22 = [MRBlockGuard alloc];
  v23 = [(MRAVRoutingDiscoverySessionOperation *)v5 dispatchQueue];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __59__MRAVRoutingDiscoverySessionOperation_executeWithTimeout___block_invoke;
  v36[3] = &unk_1E769AFC0;
  v36[4] = v5;
  v24 = [(MRBlockGuard *)v22 initWithTimeout:v21 reason:v23 queue:v36 handler:a3];
  guard = v5->_guard;
  v5->_guard = v24;

  v26 = [MRAVRoutingDiscoverySession discoverySessionWithEndpointFeatures:8];
  session = v5->_session;
  v5->_session = v26;

  objc_initWeak(buf, v5);
  v28 = v5->_session;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __59__MRAVRoutingDiscoverySessionOperation_executeWithTimeout___block_invoke_2;
  v33[3] = &unk_1E769E8A0;
  objc_copyWeak(&v35, buf);
  v29 = v13;
  v34 = v29;
  v30 = [(MRAVRoutingDiscoverySession *)v28 addEndpointsAddedCallback:v33];
  [(MRAVRoutingDiscoverySession *)v5->_session setDiscoveryMode:2];

  objc_destroyWeak(&v35);
  objc_destroyWeak(buf);

  objc_sync_exit(v5);
  v31 = *MEMORY[0x1E69E9840];
}

void __59__MRAVRoutingDiscoverySessionOperation_executeWithTimeout___block_invoke_2(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v20 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v17 = v3;
    obj = v3;
    v5 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v5)
    {
      v6 = v5;
      v19 = *v26;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v26 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v25 + 1) + 8 * i);
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v9 = *(v20 + 32);
          v10 = [v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v22;
            do
            {
              for (j = 0; j != v11; ++j)
              {
                if (*v22 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v14 = *(*(&v21 + 1) + 8 * j);
                v15 = [v8 outputDeviceForUID:{v14, v17}];
                if (v15)
                {
                  [WeakRetained _notifyDiscoveredEndpoint:v8 outputDevice:v15 forTargetOutputDevice:v14];
                }
              }

              v11 = [v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
            }

            while (v11);
          }
        }

        v6 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v6);
    }

    v3 = v17;
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_notifyDiscoveredEndpoint:(id)a3 outputDevice:(id)a4 forTargetOutputDevice:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  objc_sync_enter(v11);
  discoveredTargetOutputDeviceUIDs = v11->_discoveredTargetOutputDeviceUIDs;
  if (!discoveredTargetOutputDeviceUIDs)
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v14 = v11->_discoveredTargetOutputDeviceUIDs;
    v11->_discoveredTargetOutputDeviceUIDs = v13;

    discoveredTargetOutputDeviceUIDs = v11->_discoveredTargetOutputDeviceUIDs;
  }

  [(NSMutableSet *)discoveredTargetOutputDeviceUIDs addObject:v10];
  discoveredEndpoints = v11->_discoveredEndpoints;
  if (!discoveredEndpoints)
  {
    v16 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{-[NSArray count](v11->_outputDeviceUIDs, "count")}];
    v17 = v11->_discoveredEndpoints;
    v11->_discoveredEndpoints = v16;

    discoveredEndpoints = v11->_discoveredEndpoints;
  }

  if (([(NSMutableSet *)discoveredEndpoints containsObject:v8]& 1) == 0)
  {
    [(NSMutableSet *)v11->_discoveredEndpoints addObject:v8];
    v18 = [(MRAVRoutingDiscoverySessionOperation *)v11 dispatchQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __101__MRAVRoutingDiscoverySessionOperation__notifyDiscoveredEndpoint_outputDevice_forTargetOutputDevice___block_invoke;
    block[3] = &unk_1E769A4A0;
    block[4] = v11;
    v28 = v8;
    dispatch_async(v18, block);
  }

  discoveredOutputDevices = v11->_discoveredOutputDevices;
  if (!discoveredOutputDevices)
  {
    v20 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{-[NSArray count](v11->_outputDeviceUIDs, "count")}];
    v21 = v11->_discoveredOutputDevices;
    v11->_discoveredOutputDevices = v20;

    discoveredOutputDevices = v11->_discoveredOutputDevices;
  }

  if (([(NSMutableSet *)discoveredOutputDevices containsObject:v9]& 1) == 0)
  {
    [(NSMutableSet *)v11->_discoveredOutputDevices addObject:v9];
    v22 = [(MRAVRoutingDiscoverySessionOperation *)v11 dispatchQueue];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __101__MRAVRoutingDiscoverySessionOperation__notifyDiscoveredEndpoint_outputDevice_forTargetOutputDevice___block_invoke_2;
    v24[3] = &unk_1E769BA00;
    v24[4] = v11;
    v25 = v8;
    v26 = v9;
    dispatch_async(v22, v24);
  }

  v23 = [(NSMutableSet *)v11->_discoveredTargetOutputDeviceUIDs count];
  if (v23 == [(NSArray *)v11->_outputDeviceUIDs count])
  {
    [(MRAVRoutingDiscoverySessionOperation *)v11 _finishWithError:0];
  }

  objc_sync_exit(v11);
}

void __101__MRAVRoutingDiscoverySessionOperation__notifyDiscoveredEndpoint_outputDevice_forTargetOutputDevice___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) endpointDiscoveredHandler];
  if (v2)
  {
    v3 = v2;
    v2[2](v2, *(a1 + 40));
    v2 = v3;
  }
}

void __101__MRAVRoutingDiscoverySessionOperation__notifyDiscoveredEndpoint_outputDevice_forTargetOutputDevice___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) outputDeviceDiscoveredHandler];
  if (v2)
  {
    v3 = v2;
    v2[2](v2, *(a1 + 40), *(a1 + 48));
    v2 = v3;
  }
}

- (void)_finishWithError:(id)a3
{
  v56 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(MRAVRoutingDiscoverySession *)self->_session discoveryMode])
  {
    [(MRAVRoutingDiscoverySession *)self->_session setDiscoveryMode:0];
    v5 = objc_alloc(MEMORY[0x1E695DFA8]);
    v6 = [(MRAVRoutingDiscoverySessionOperation *)self outputDeviceUIDs];
    v7 = [v5 initWithArray:v6];

    [v7 minusSet:self->_discoveredTargetOutputDeviceUIDs];
    v8 = objc_alloc_init(MRAVRoutingDiscoverySessionOperationReport);
    v9 = [(NSMutableSet *)self->_discoveredTargetOutputDeviceUIDs allObjects];
    [(MRAVRoutingDiscoverySessionOperationReport *)v8 setDiscoveredOutputDeviceUIDs:v9];

    v10 = [v7 allObjects];
    [(MRAVRoutingDiscoverySessionOperationReport *)v8 setUndiscoveredOutputDeviceUIDs:v10];

    if ([(NSArray *)self->_outputDeviceUIDs count]&& ![(NSMutableSet *)self->_discoveredTargetOutputDeviceUIDs count])
    {
      v11 = v4;
      if (!v4)
      {
        v33 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:39 format:@"Could not discover any of the provided devices"];
        [(MRAVRoutingDiscoverySessionOperationReport *)v8 setError:v33];

LABEL_6:
        v12 = [(MRAVRoutingDiscoverySessionOperationReport *)v8 error];
        if (v12)
        {
        }

        else
        {
          v18 = [(MRAVRoutingDiscoverySessionOperationReport *)v8 discoveredOutputDeviceUIDs];

          if (v18)
          {
            v19 = [(MRAVRoutingDiscoverySessionOperation *)self outputDeviceUIDs];

            v16 = _MRLogForCategory(0xAuLL);
            v20 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
            if (v19)
            {
              if (!v20)
              {
                goto LABEL_29;
              }

              v21 = objc_opt_class();
              requestID = self->_requestID;
              v23 = [(MRAVRoutingDiscoverySessionOperationReport *)v8 discoveredOutputDeviceUIDs];
              v24 = [(MRAVRoutingDiscoverySessionOperation *)self outputDeviceUIDs];
              v25 = [MEMORY[0x1E695DF00] date];
              [v25 timeIntervalSinceDate:self->_startDate];
              *buf = 138544386;
              v47 = v21;
              v48 = 2114;
              v49 = requestID;
              v50 = 2112;
              v51 = v23;
              v52 = 2114;
              v53 = v24;
              v54 = 2048;
              v55 = v26;
              _os_log_impl(&dword_1A2860000, v16, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds", buf, 0x34u);
            }

            else
            {
              if (!v20)
              {
                goto LABEL_29;
              }

              v37 = objc_opt_class();
              v38 = self->_requestID;
              v23 = [(MRAVRoutingDiscoverySessionOperationReport *)v8 discoveredOutputDeviceUIDs];
              v39 = [MEMORY[0x1E695DF00] date];
              [v39 timeIntervalSinceDate:self->_startDate];
              *buf = 138544130;
              v47 = v37;
              v48 = 2114;
              v49 = v38;
              v50 = 2112;
              v51 = v23;
              v52 = 2048;
              v53 = v40;
              _os_log_impl(&dword_1A2860000, v16, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds", buf, 0x2Au);
            }

            goto LABEL_29;
          }
        }

        v13 = [(MRAVRoutingDiscoverySessionOperationReport *)v8 error];

        v14 = [(MRAVRoutingDiscoverySessionOperation *)self outputDeviceUIDs];

        v15 = _MRLogForCategory(0xAuLL);
        v16 = v15;
        if (v13)
        {
          v17 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
          if (v14)
          {
            if (v17)
            {
              [(MRAVRoutingDiscoverySessionOperation *)self _finishWithError:v8, v16];
            }
          }

          else if (v17)
          {
            [(MRAVRoutingDiscoverySessionOperation *)self _finishWithError:v8, v16];
          }

          goto LABEL_29;
        }

        v27 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
        if (v14)
        {
          if (v27)
          {
            v28 = objc_opt_class();
            v29 = self->_requestID;
            v30 = [(MRAVRoutingDiscoverySessionOperation *)self outputDeviceUIDs];
            v31 = [MEMORY[0x1E695DF00] date];
            [v31 timeIntervalSinceDate:self->_startDate];
            *buf = 138544130;
            v47 = v28;
            v48 = 2114;
            v49 = v29;
            v50 = 2114;
            v51 = v30;
            v52 = 2048;
            v53 = v32;
            _os_log_impl(&dword_1A2860000, v16, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds", buf, 0x2Au);

LABEL_25:
          }
        }

        else if (v27)
        {
          v34 = objc_opt_class();
          v35 = self->_requestID;
          v30 = [MEMORY[0x1E695DF00] date];
          [v30 timeIntervalSinceDate:self->_startDate];
          *buf = 138543874;
          v47 = v34;
          v48 = 2114;
          v49 = v35;
          v50 = 2048;
          v51 = v36;
          _os_log_impl(&dword_1A2860000, v16, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned in %.4lf seconds", buf, 0x20u);
          goto LABEL_25;
        }

LABEL_29:

        v41 = [(MRAVRoutingDiscoverySessionOperation *)self dispatchQueue];
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __57__MRAVRoutingDiscoverySessionOperation__finishWithError___block_invoke;
        v44[3] = &unk_1E769A4A0;
        v44[4] = self;
        v45 = v8;
        v42 = v8;
        dispatch_async(v41, v44);

        goto LABEL_30;
      }
    }

    else
    {
      v11 = 0;
    }

    [(MRAVRoutingDiscoverySessionOperationReport *)v8 setError:v11];
    goto LABEL_6;
  }

LABEL_30:

  v43 = *MEMORY[0x1E69E9840];
}

void __57__MRAVRoutingDiscoverySessionOperation__finishWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) finishHandler];
  if (v2)
  {
    v3 = v2;
    v2[2](v2, *(a1 + 40));
    v2 = v3;
  }
}

- (void)cancel
{
  v3 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:25];
  [(MRAVRoutingDiscoverySessionOperation *)self cancelWithError:v3];
}

- (void)cancelWithError:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(MRAVRoutingDiscoverySessionOperation *)v4 _finishWithError:v5];
  objc_sync_exit(v4);
}

- (void)_finishWithError:(NSObject *)a3 .cold.1(void *a1, void *a2, NSObject *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = objc_opt_class();
  v7 = a1[11];
  v8 = [a2 error];
  v9 = [a1 outputDeviceUIDs];
  v10 = [MEMORY[0x1E695DF00] date];
  [v10 timeIntervalSinceDate:a1[10]];
  v13 = 138544386;
  v14 = v6;
  v15 = 2114;
  v16 = v7;
  v17 = 2114;
  v18 = v8;
  v19 = 2114;
  v20 = v9;
  v21 = 2048;
  v22 = v11;
  _os_log_error_impl(&dword_1A2860000, a3, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v13, 0x34u);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_finishWithError:(NSObject *)a3 .cold.2(uint64_t a1, void *a2, NSObject *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = objc_opt_class();
  v7 = *(a1 + 88);
  v8 = [a2 error];
  v9 = [MEMORY[0x1E695DF00] date];
  [v9 timeIntervalSinceDate:*(a1 + 80)];
  v12 = 138544130;
  v13 = v6;
  v14 = 2114;
  v15 = v7;
  v16 = 2114;
  v17 = v8;
  v18 = 2048;
  v19 = v10;
  _os_log_error_impl(&dword_1A2860000, a3, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", &v12, 0x2Au);

  v11 = *MEMORY[0x1E69E9840];
}

@end