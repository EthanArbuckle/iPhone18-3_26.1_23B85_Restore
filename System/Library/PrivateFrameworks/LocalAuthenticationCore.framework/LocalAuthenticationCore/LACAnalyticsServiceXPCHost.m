@interface LACAnalyticsServiceXPCHost
- (LACAnalyticsServiceXPCHost)initWithWorkQueue:(id)a3;
- (id)sessionForContextUUID:(id)a3;
- (void)connectSessionForContext:(id)a3 reply:(id)a4;
- (void)startSessionForContext:(id)a3 dialogID:(id)a4 bundleID:(id)a5 reply:(id)a6;
@end

@implementation LACAnalyticsServiceXPCHost

- (LACAnalyticsServiceXPCHost)initWithWorkQueue:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = LACAnalyticsServiceXPCHost;
  v6 = [(LACAnalyticsServiceXPCHost *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_workQueue, a3);
    v8 = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    sessions = v7->_sessions;
    v7->_sessions = v8;
  }

  return v7;
}

- (id)sessionForContextUUID:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(NSPointerArray *)self->_sessions allObjects];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 contextUUID];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          v6 = [v9 session];
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)startSessionForContext:(id)a3 dialogID:(id)a4 bundleID:(id)a5 reply:(id)a6
{
  v24 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  workQueue = self->_workQueue;
  v14 = a6;
  dispatch_assert_queue_V2(workQueue);
  v15 = [(LACAnalyticsServiceXPCHost *)self sessionForContextUUID:v10];

  if (v15)
  {
    v16 = [LACError errorWithCode:-1000 debugDescription:@"Session already exists for this context"];
    v14[2](v14, 0, v16);
  }

  else
  {
    [(NSPointerArray *)self->_sessions compact];
    v16 = [[LACAnalyticsSession alloc] initWithDialogID:v11 bundleID:v12];
    v17 = [[LACAnalyticsSessionXPCHost alloc] initWithSession:v16 contextUUID:v10 connected:0 workQueue:self->_workQueue];
    [(NSPointerArray *)self->_sessions addPointer:v17];
    v18 = LACLogAnalytics();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138543618;
      v21 = v16;
      v22 = 2114;
      v23 = v10;
      _os_log_impl(&dword_1B0233000, v18, OS_LOG_TYPE_DEFAULT, "Started %{public}@ for contextUUID: %{public}@", &v20, 0x16u);
    }

    (v14)[2](v14, v17, 0);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)connectSessionForContext:(id)a3 reply:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  workQueue = self->_workQueue;
  v8 = a4;
  dispatch_assert_queue_V2(workQueue);
  v9 = [(LACAnalyticsServiceXPCHost *)self sessionForContextUUID:v6];
  if (v9)
  {
    v10 = [[LACAnalyticsSessionXPCHost alloc] initWithSession:v9 contextUUID:v6 connected:1 workQueue:self->_workQueue];
    [(NSPointerArray *)self->_sessions addPointer:v10];
    v11 = LACLogAnalytics();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543618;
      v14 = v9;
      v15 = 2114;
      v16 = v6;
      _os_log_impl(&dword_1B0233000, v11, OS_LOG_TYPE_DEFAULT, "Connected to %{public}@ for contextUUID: %{public}@", &v13, 0x16u);
    }

    v8[2](v8, v10, 0);
  }

  else
  {
    v10 = [LACError errorWithCode:-1000 debugDescription:@"No session exists for this context"];
    (v8)[2](v8, 0, v10);
  }

  v12 = *MEMORY[0x1E69E9840];
}

@end