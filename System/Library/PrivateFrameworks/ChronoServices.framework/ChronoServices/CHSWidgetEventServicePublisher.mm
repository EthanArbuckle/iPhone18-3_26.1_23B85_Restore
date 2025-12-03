@interface CHSWidgetEventServicePublisher
- (CHSWidgetEventServicePublisher)initWithMachServiceName:(id)name;
- (id)_activeConnection;
- (void)_invalidateConnection;
- (void)dealloc;
- (void)publishOpenEventWithURL:(id)l;
- (void)publishOpenEventWithUserActivity:(id)activity;
@end

@implementation CHSWidgetEventServicePublisher

- (void)dealloc
{
  [(CHSWidgetEventServicePublisher *)self _invalidateConnection];
  v3.receiver = self;
  v3.super_class = CHSWidgetEventServicePublisher;
  [(CHSWidgetEventServicePublisher *)&v3 dealloc];
}

- (CHSWidgetEventServicePublisher)initWithMachServiceName:(id)name
{
  v23 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CHSWidgetEventServicePublisher.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"machServiceName"}];
  }

  v18.receiver = self;
  v18.super_class = CHSWidgetEventServicePublisher;
  v6 = [(CHSWidgetEventServicePublisher *)&v18 init];
  if (v6)
  {
    v7 = [nameCopy copy];
    machServiceName = v6->_machServiceName;
    v6->_machServiceName = v7;

    Serial = BSDispatchQueueCreateSerial();
    connectionQueue = v6->_connectionQueue;
    v6->_connectionQueue = Serial;

    v11 = CHSLogChronoServices();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = [(CHSWidgetEventServicePublisher *)v6 description];
      *buf = 138543618;
      v20 = v13;
      v21 = 2114;
      v22 = v14;
      _os_log_impl(&dword_195EB2000, v11, OS_LOG_TYPE_DEFAULT, "Initializing new %{public}@ instance: %{public}@", buf, 0x16u);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)publishOpenEventWithURL:(id)l
{
  lCopy = l;
  _activeConnection = [(CHSWidgetEventServicePublisher *)self _activeConnection];
  remoteTarget = [_activeConnection remoteTarget];

  if (remoteTarget)
  {
    [remoteTarget handleOpenEventWithURL:lCopy];
  }
}

- (void)publishOpenEventWithUserActivity:(id)activity
{
  v28 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  _activeConnection = [(CHSWidgetEventServicePublisher *)self _activeConnection];
  remoteTarget = [_activeConnection remoteTarget];

  if (remoteTarget)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__1;
    v22 = __Block_byref_object_dispose__1;
    v23 = 0;
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__1;
    v16 = __Block_byref_object_dispose__1;
    v17 = 0;
    [activityCopy setNeedsSave:0];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __67__CHSWidgetEventServicePublisher_publishOpenEventWithUserActivity___block_invoke;
    v11[3] = &unk_1E7453520;
    v11[4] = &v18;
    v11[5] = &v12;
    [activityCopy _createUserActivityDataWithOptions:0 completionHandler:v11];
    if (v13[5])
    {
      v7 = CHSLogChronoServices();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        *buf = 138543618;
        v25 = v9;
        v26 = 2114;
        v27 = activityCopy;
        _os_log_impl(&dword_195EB2000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Error serializing User Activity %{public}@", buf, 0x16u);
      }
    }

    else
    {
      [remoteTarget handleOpenEventWithUserActivityData:v19[5]];
    }

    _Block_object_dispose(&v12, 8);

    _Block_object_dispose(&v18, 8);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __67__CHSWidgetEventServicePublisher_publishOpenEventWithUserActivity___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)_activeConnection
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_connection)
  {
    v3 = MEMORY[0x1E698F498];
    machServiceName = selfCopy->_machServiceName;
    v5 = +[CHSWidgetEventServiceSpecification identifier];
    v6 = [v3 endpointForMachName:machServiceName service:v5 instance:0];

    v7 = [MEMORY[0x1E698F490] connectionWithEndpoint:v6];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __51__CHSWidgetEventServicePublisher__activeConnection__block_invoke;
    v10[3] = &unk_1E7453570;
    v10[4] = selfCopy;
    [v7 configureConnection:v10];
    objc_storeStrong(&selfCopy->_connection, v7);
    [(BSServiceConnection *)selfCopy->_connection activate];
  }

  objc_sync_exit(selfCopy);

  connection = selfCopy->_connection;

  return connection;
}

void __51__CHSWidgetEventServicePublisher__activeConnection__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[CHSWidgetEventServiceSpecification interface];
  objc_initWeak(&location, *(a1 + 32));
  if (v4)
  {
    [v3 setInterface:v4];
    [v3 setInterfaceTarget:*(a1 + 32)];
  }

  [v3 setTargetQueue:*(*(a1 + 32) + 24)];
  v5 = +[CHSWidgetEventServiceSpecification serviceQuality];
  [v3 setServiceQuality:v5];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__CHSWidgetEventServicePublisher__activeConnection__block_invoke_2;
  v10[3] = &unk_1E7453548;
  objc_copyWeak(&v11, &location);
  [v3 setActivationHandler:v10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__CHSWidgetEventServicePublisher__activeConnection__block_invoke_21;
  v8[3] = &unk_1E7453548;
  objc_copyWeak(&v9, &location);
  [v3 setInterruptionHandler:v8];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__CHSWidgetEventServicePublisher__activeConnection__block_invoke_22;
  v6[3] = &unk_1E7453548;
  objc_copyWeak(&v7, &location);
  [v3 setInvalidationHandler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __51__CHSWidgetEventServicePublisher__activeConnection__block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = CHSLogChronoServices();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&dword_195EB2000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ (host-side) connection activated", &v7, 0xCu);
  }

  if (WeakRetained)
  {
    v5 = WeakRetained;
    objc_sync_enter(v5);
    v5[32] = 1;
    objc_sync_exit(v5);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __51__CHSWidgetEventServicePublisher__activeConnection__block_invoke_21(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = CHSLogChronoServices();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_195EB2000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ (service-side) connection interrupted", &v10, 0xCu);
  }

  if (WeakRetained)
  {
    v8 = WeakRetained;
    objc_sync_enter(v8);
    v8[32] = 0;
    [v3 activate];
    objc_sync_exit(v8);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __51__CHSWidgetEventServicePublisher__activeConnection__block_invoke_22(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = CHSLogChronoServices();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&dword_195EB2000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ (host-side) connection invalidated", &v7, 0xCu);
  }

  if (WeakRetained)
  {
    v5 = WeakRetained;
    objc_sync_enter(v5);
    v5[32] = 0;
    [v5 _invalidateConnection];
    objc_sync_exit(v5);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_invalidateConnection
{
  obj = self;
  objc_sync_enter(obj);
  v2 = obj;
  connection = obj->_connection;
  if (connection)
  {
    [(BSServiceConnection *)connection invalidate];
    v4 = obj->_connection;
    obj->_connection = 0;

    v2 = obj;
  }

  objc_sync_exit(v2);
}

@end