@interface MRAVRoutingDiscoverySessionOperation
- (MRAVRoutingDiscoverySessionOperation)initWithOutputDeviceUIDs:(id)ds;
- (OS_dispatch_queue)dispatchQueue;
- (id)endpointDiscoveredHandler;
- (id)finishHandler;
- (id)outputDeviceDiscoveredHandler;
- (void)_finishWithError:(id)error;
- (void)_notifyDiscoveredEndpoint:(id)endpoint outputDevice:(id)device forTargetOutputDevice:(id)outputDevice;
- (void)cancel;
- (void)cancelWithError:(id)error;
- (void)executeWithTimeout:(double)timeout;
- (void)setDispatchQueue:(id)queue;
- (void)setEndpointDiscoveredHandler:(id)handler;
- (void)setFinishHandler:(id)handler;
- (void)setOutputDeviceDiscoveredHandler:(id)handler;
@end

@implementation MRAVRoutingDiscoverySessionOperation

- (MRAVRoutingDiscoverySessionOperation)initWithOutputDeviceUIDs:(id)ds
{
  dsCopy = ds;
  v9.receiver = self;
  v9.super_class = MRAVRoutingDiscoverySessionOperation;
  v5 = [(MRAVRoutingDiscoverySessionOperation *)&v9 init];
  if (v5)
  {
    v6 = [dsCopy copy];
    outputDeviceUIDs = v5->_outputDeviceUIDs;
    v5->_outputDeviceUIDs = v6;
  }

  return v5;
}

- (void)setEndpointDiscoveredHandler:(id)handler
{
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [handlerCopy copy];
  endpointDiscoveredHandler = selfCopy->_endpointDiscoveredHandler;
  selfCopy->_endpointDiscoveredHandler = v5;

  objc_sync_exit(selfCopy);
}

- (id)endpointDiscoveredHandler
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [selfCopy->_endpointDiscoveredHandler copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setOutputDeviceDiscoveredHandler:(id)handler
{
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [handlerCopy copy];
  outputDeviceDiscoveredHandler = selfCopy->_outputDeviceDiscoveredHandler;
  selfCopy->_outputDeviceDiscoveredHandler = v5;

  objc_sync_exit(selfCopy);
}

- (id)outputDeviceDiscoveredHandler
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [selfCopy->_outputDeviceDiscoveredHandler copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setFinishHandler:(id)handler
{
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [handlerCopy copy];
  finishHandler = selfCopy->_finishHandler;
  selfCopy->_finishHandler = v5;

  objc_sync_exit(selfCopy);
}

- (id)finishHandler
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [selfCopy->_finishHandler copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (OS_dispatch_queue)dispatchQueue
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  dispatchQueue = selfCopy->_dispatchQueue;
  if (!dispatchQueue)
  {
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.mediaremote.discoverySessionOperation", v4);
    v6 = selfCopy->_dispatchQueue;
    selfCopy->_dispatchQueue = v5;

    dispatchQueue = selfCopy->_dispatchQueue;
  }

  v7 = dispatchQueue;
  objc_sync_exit(selfCopy);

  return v7;
}

- (void)setDispatchQueue:(id)queue
{
  queueCopy = queue;
  obj = self;
  objc_sync_enter(obj);
  dispatchQueue = obj->_dispatchQueue;
  obj->_dispatchQueue = queueCopy;

  objc_sync_exit(obj);
}

- (void)executeWithTimeout:(double)timeout
{
  v39 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_session)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"MRAVRoutingDiscoverySessionOperation.m" lineNumber:115 description:{@"Invalid parameter not satisfying: %@", @"!_session"}];
  }

  v6 = [MEMORY[0x1E695DF00] now];
  startDate = selfCopy->_startDate;
  selfCopy->_startDate = v6;

  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  requestID = selfCopy->_requestID;
  selfCopy->_requestID = uUIDString;

  v11 = objc_alloc(MEMORY[0x1E695DFD8]);
  outputDeviceUIDs = [(MRAVRoutingDiscoverySessionOperation *)selfCopy outputDeviceUIDs];
  v13 = [v11 initWithArray:outputDeviceUIDs];

  v14 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", objc_opt_class(), selfCopy->_requestID];
  outputDeviceUIDs2 = [(MRAVRoutingDiscoverySessionOperation *)selfCopy outputDeviceUIDs];

  if (outputDeviceUIDs2)
  {
    outputDeviceUIDs3 = [(MRAVRoutingDiscoverySessionOperation *)selfCopy outputDeviceUIDs];
    [v14 appendFormat:@" for %@", outputDeviceUIDs3];
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
  outputDeviceUIDs4 = [(MRAVRoutingDiscoverySessionOperation *)selfCopy outputDeviceUIDs];
  v21 = [v18 initWithFormat:@"%@-%@", v19, outputDeviceUIDs4];

  v22 = [MRBlockGuard alloc];
  dispatchQueue = [(MRAVRoutingDiscoverySessionOperation *)selfCopy dispatchQueue];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __59__MRAVRoutingDiscoverySessionOperation_executeWithTimeout___block_invoke;
  v36[3] = &unk_1E769AFC0;
  v36[4] = selfCopy;
  v24 = [(MRBlockGuard *)v22 initWithTimeout:v21 reason:dispatchQueue queue:v36 handler:timeout];
  guard = selfCopy->_guard;
  selfCopy->_guard = v24;

  v26 = [MRAVRoutingDiscoverySession discoverySessionWithEndpointFeatures:8];
  session = selfCopy->_session;
  selfCopy->_session = v26;

  objc_initWeak(buf, selfCopy);
  v28 = selfCopy->_session;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __59__MRAVRoutingDiscoverySessionOperation_executeWithTimeout___block_invoke_2;
  v33[3] = &unk_1E769E8A0;
  objc_copyWeak(&v35, buf);
  v29 = v13;
  v34 = v29;
  v30 = [(MRAVRoutingDiscoverySession *)v28 addEndpointsAddedCallback:v33];
  [(MRAVRoutingDiscoverySession *)selfCopy->_session setDiscoveryMode:2];

  objc_destroyWeak(&v35);
  objc_destroyWeak(buf);

  objc_sync_exit(selfCopy);
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

- (void)_notifyDiscoveredEndpoint:(id)endpoint outputDevice:(id)device forTargetOutputDevice:(id)outputDevice
{
  endpointCopy = endpoint;
  deviceCopy = device;
  outputDeviceCopy = outputDevice;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  discoveredTargetOutputDeviceUIDs = selfCopy->_discoveredTargetOutputDeviceUIDs;
  if (!discoveredTargetOutputDeviceUIDs)
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v14 = selfCopy->_discoveredTargetOutputDeviceUIDs;
    selfCopy->_discoveredTargetOutputDeviceUIDs = v13;

    discoveredTargetOutputDeviceUIDs = selfCopy->_discoveredTargetOutputDeviceUIDs;
  }

  [(NSMutableSet *)discoveredTargetOutputDeviceUIDs addObject:outputDeviceCopy];
  discoveredEndpoints = selfCopy->_discoveredEndpoints;
  if (!discoveredEndpoints)
  {
    v16 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{-[NSArray count](selfCopy->_outputDeviceUIDs, "count")}];
    v17 = selfCopy->_discoveredEndpoints;
    selfCopy->_discoveredEndpoints = v16;

    discoveredEndpoints = selfCopy->_discoveredEndpoints;
  }

  if (([(NSMutableSet *)discoveredEndpoints containsObject:endpointCopy]& 1) == 0)
  {
    [(NSMutableSet *)selfCopy->_discoveredEndpoints addObject:endpointCopy];
    dispatchQueue = [(MRAVRoutingDiscoverySessionOperation *)selfCopy dispatchQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __101__MRAVRoutingDiscoverySessionOperation__notifyDiscoveredEndpoint_outputDevice_forTargetOutputDevice___block_invoke;
    block[3] = &unk_1E769A4A0;
    block[4] = selfCopy;
    v28 = endpointCopy;
    dispatch_async(dispatchQueue, block);
  }

  discoveredOutputDevices = selfCopy->_discoveredOutputDevices;
  if (!discoveredOutputDevices)
  {
    v20 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{-[NSArray count](selfCopy->_outputDeviceUIDs, "count")}];
    v21 = selfCopy->_discoveredOutputDevices;
    selfCopy->_discoveredOutputDevices = v20;

    discoveredOutputDevices = selfCopy->_discoveredOutputDevices;
  }

  if (([(NSMutableSet *)discoveredOutputDevices containsObject:deviceCopy]& 1) == 0)
  {
    [(NSMutableSet *)selfCopy->_discoveredOutputDevices addObject:deviceCopy];
    dispatchQueue2 = [(MRAVRoutingDiscoverySessionOperation *)selfCopy dispatchQueue];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __101__MRAVRoutingDiscoverySessionOperation__notifyDiscoveredEndpoint_outputDevice_forTargetOutputDevice___block_invoke_2;
    v24[3] = &unk_1E769BA00;
    v24[4] = selfCopy;
    v25 = endpointCopy;
    v26 = deviceCopy;
    dispatch_async(dispatchQueue2, v24);
  }

  v23 = [(NSMutableSet *)selfCopy->_discoveredTargetOutputDeviceUIDs count];
  if (v23 == [(NSArray *)selfCopy->_outputDeviceUIDs count])
  {
    [(MRAVRoutingDiscoverySessionOperation *)selfCopy _finishWithError:0];
  }

  objc_sync_exit(selfCopy);
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

- (void)_finishWithError:(id)error
{
  v56 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if ([(MRAVRoutingDiscoverySession *)self->_session discoveryMode])
  {
    [(MRAVRoutingDiscoverySession *)self->_session setDiscoveryMode:0];
    v5 = objc_alloc(MEMORY[0x1E695DFA8]);
    outputDeviceUIDs = [(MRAVRoutingDiscoverySessionOperation *)self outputDeviceUIDs];
    v7 = [v5 initWithArray:outputDeviceUIDs];

    [v7 minusSet:self->_discoveredTargetOutputDeviceUIDs];
    v8 = objc_alloc_init(MRAVRoutingDiscoverySessionOperationReport);
    allObjects = [(NSMutableSet *)self->_discoveredTargetOutputDeviceUIDs allObjects];
    [(MRAVRoutingDiscoverySessionOperationReport *)v8 setDiscoveredOutputDeviceUIDs:allObjects];

    allObjects2 = [v7 allObjects];
    [(MRAVRoutingDiscoverySessionOperationReport *)v8 setUndiscoveredOutputDeviceUIDs:allObjects2];

    if ([(NSArray *)self->_outputDeviceUIDs count]&& ![(NSMutableSet *)self->_discoveredTargetOutputDeviceUIDs count])
    {
      v11 = errorCopy;
      if (!errorCopy)
      {
        v33 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:39 format:@"Could not discover any of the provided devices"];
        [(MRAVRoutingDiscoverySessionOperationReport *)v8 setError:v33];

LABEL_6:
        error = [(MRAVRoutingDiscoverySessionOperationReport *)v8 error];
        if (error)
        {
        }

        else
        {
          discoveredOutputDeviceUIDs = [(MRAVRoutingDiscoverySessionOperationReport *)v8 discoveredOutputDeviceUIDs];

          if (discoveredOutputDeviceUIDs)
          {
            outputDeviceUIDs2 = [(MRAVRoutingDiscoverySessionOperation *)self outputDeviceUIDs];

            v16 = _MRLogForCategory(0xAuLL);
            v20 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
            if (outputDeviceUIDs2)
            {
              if (!v20)
              {
                goto LABEL_29;
              }

              v21 = objc_opt_class();
              requestID = self->_requestID;
              discoveredOutputDeviceUIDs2 = [(MRAVRoutingDiscoverySessionOperationReport *)v8 discoveredOutputDeviceUIDs];
              outputDeviceUIDs3 = [(MRAVRoutingDiscoverySessionOperation *)self outputDeviceUIDs];
              date = [MEMORY[0x1E695DF00] date];
              [date timeIntervalSinceDate:self->_startDate];
              *buf = 138544386;
              v47 = v21;
              v48 = 2114;
              v49 = requestID;
              v50 = 2112;
              v51 = discoveredOutputDeviceUIDs2;
              v52 = 2114;
              v53 = outputDeviceUIDs3;
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
              discoveredOutputDeviceUIDs2 = [(MRAVRoutingDiscoverySessionOperationReport *)v8 discoveredOutputDeviceUIDs];
              date2 = [MEMORY[0x1E695DF00] date];
              [date2 timeIntervalSinceDate:self->_startDate];
              *buf = 138544130;
              v47 = v37;
              v48 = 2114;
              v49 = v38;
              v50 = 2112;
              v51 = discoveredOutputDeviceUIDs2;
              v52 = 2048;
              v53 = v40;
              _os_log_impl(&dword_1A2860000, v16, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds", buf, 0x2Au);
            }

            goto LABEL_29;
          }
        }

        error2 = [(MRAVRoutingDiscoverySessionOperationReport *)v8 error];

        outputDeviceUIDs4 = [(MRAVRoutingDiscoverySessionOperation *)self outputDeviceUIDs];

        v15 = _MRLogForCategory(0xAuLL);
        v16 = v15;
        if (error2)
        {
          v17 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
          if (outputDeviceUIDs4)
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
        if (outputDeviceUIDs4)
        {
          if (v27)
          {
            v28 = objc_opt_class();
            v29 = self->_requestID;
            outputDeviceUIDs5 = [(MRAVRoutingDiscoverySessionOperation *)self outputDeviceUIDs];
            date3 = [MEMORY[0x1E695DF00] date];
            [date3 timeIntervalSinceDate:self->_startDate];
            *buf = 138544130;
            v47 = v28;
            v48 = 2114;
            v49 = v29;
            v50 = 2114;
            v51 = outputDeviceUIDs5;
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
          outputDeviceUIDs5 = [MEMORY[0x1E695DF00] date];
          [outputDeviceUIDs5 timeIntervalSinceDate:self->_startDate];
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

        dispatchQueue = [(MRAVRoutingDiscoverySessionOperation *)self dispatchQueue];
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __57__MRAVRoutingDiscoverySessionOperation__finishWithError___block_invoke;
        v44[3] = &unk_1E769A4A0;
        v44[4] = self;
        v45 = v8;
        v42 = v8;
        dispatch_async(dispatchQueue, v44);

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

- (void)cancelWithError:(id)error
{
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(MRAVRoutingDiscoverySessionOperation *)selfCopy _finishWithError:errorCopy];
  objc_sync_exit(selfCopy);
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