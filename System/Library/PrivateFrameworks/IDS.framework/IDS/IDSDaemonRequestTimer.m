@interface IDSDaemonRequestTimer
- (IDSDaemonRequestTimer)init;
- (id)_criticalFindRequestContextWithResponseHandler:(id)a3;
- (id)_criticalInvalidateTimeoutAndReturnHandlerForRequestID:(id)a3;
- (id)invalidateTimeoutAndReturnHandlerForRequestID:(id)a3;
- (id)invalidateTimeoutsAndReturnHandlersForAllRequests;
- (id)scheduleTimeoutWithResponseHandler:(id)a3 timeoutInterval:(double)a4 timeoutBlock:(id)a5;
- (int64_t)inFlightRequestCount;
- (void)_accessRequestContextMapInCriticalSectionWithBlock:(id)a3;
- (void)_criticalInvokeTimeoutBlockForRequestID:(id)a3;
- (void)_handleSystemTimerFired:(id)a3;
- (void)dealloc;
@end

@implementation IDSDaemonRequestTimer

- (void)_accessRequestContextMapInCriticalSectionWithBlock:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&self->_requestContextMapLock);
  v4[2](v4);

  pthread_mutex_unlock(&self->_requestContextMapLock);
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_requestContextMapLock);
  v3.receiver = self;
  v3.super_class = IDSDaemonRequestTimer;
  [(IDSDaemonRequestTimer *)&v3 dealloc];
}

- (IDSDaemonRequestTimer)init
{
  v6.receiver = self;
  v6.super_class = IDSDaemonRequestTimer;
  v2 = [(IDSDaemonRequestTimer *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    requestContextMap = v2->_requestContextMap;
    v2->_requestContextMap = v3;

    pthread_mutex_init(&v2->_requestContextMapLock, 0);
  }

  return v2;
}

- (int64_t)inFlightRequestCount
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_195AB2244;
  v4[3] = &unk_1E743E670;
  v4[4] = self;
  v4[5] = &v5;
  [(IDSDaemonRequestTimer *)self _accessRequestContextMapInCriticalSectionWithBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (id)scheduleTimeoutWithResponseHandler:(id)a3 timeoutInterval:(double)a4 timeoutBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = v9;
  v11 = 0;
  if (v8)
  {
    if (a4 > 0.0 && v9 != 0)
    {
      v19 = 0;
      v20 = &v19;
      v21 = 0x3032000000;
      v22 = sub_195A007A4;
      v23 = sub_195A03D78;
      v24 = 0;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = sub_195AB23F0;
      v14[3] = &unk_1E7441C88;
      v14[4] = self;
      v15 = v8;
      v17 = &v19;
      v18 = a4;
      v16 = v10;
      [(IDSDaemonRequestTimer *)self _accessRequestContextMapInCriticalSectionWithBlock:v14];
      v11 = v20[5];

      _Block_object_dispose(&v19, 8);
    }
  }

  return v11;
}

- (id)_criticalFindRequestContextWithResponseHandler:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(NSMutableDictionary *)self->_requestContextMap allValues];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 responseHandler];

        if (v10 == v4)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)_handleSystemTimerFired:(id)a3
{
  v4 = [a3 userInfo];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195AB2710;
  v6[3] = &unk_1E743EA30;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(IDSDaemonRequestTimer *)self _accessRequestContextMapInCriticalSectionWithBlock:v6];
}

- (void)_criticalInvokeTimeoutBlockForRequestID:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_requestContextMap objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 responseHandler];
    v8 = [v7 queue];

    v9 = [v6 timeoutBlock];
    v10 = v9;
    if (v8)
    {
      v11 = v9 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_195AB282C;
      block[3] = &unk_1E743E850;
      v13 = v9;
      dispatch_async(v8, block);
    }

    [(NSMutableDictionary *)self->_requestContextMap removeObjectForKey:v4];
  }
}

- (id)invalidateTimeoutAndReturnHandlerForRequestID:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_195A007A4;
  v15 = sub_195A03D78;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_195AB2964;
  v8[3] = &unk_1E743EA08;
  v10 = &v11;
  v8[4] = self;
  v5 = v4;
  v9 = v5;
  [(IDSDaemonRequestTimer *)self _accessRequestContextMapInCriticalSectionWithBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

- (id)_criticalInvalidateTimeoutAndReturnHandlerForRequestID:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_requestContextMap objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    [v5 killSystemTimer];
    v7 = [v6 responseHandler];
    [(NSMutableDictionary *)self->_requestContextMap removeObjectForKey:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)invalidateTimeoutsAndReturnHandlersForAllRequests
{
  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_195AB2AFC;
  v9[3] = &unk_1E743E7B0;
  v9[4] = self;
  v5 = v4;
  v10 = v5;
  v11 = a2;
  [(IDSDaemonRequestTimer *)self _accessRequestContextMapInCriticalSectionWithBlock:v9];
  v6 = v10;
  v7 = v5;

  return v5;
}

@end