@interface MCMSystemChangeMonitor
- (MCMSystemChangeMonitor)initWithQueue:(id)a3 flushables:(id)a4;
- (NSArray)flushables;
- (OS_dispatch_queue)queue;
- (void)userIdentityCache:(id)a3 didAddUserIdentity:(id)a4;
- (void)userIdentityCache:(id)a3 didInvalidateUserIdentity:(id)a4;
@end

@implementation MCMSystemChangeMonitor

- (NSArray)flushables
{
  result = self->_flushables;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (OS_dispatch_queue)queue
{
  result = self->_queue;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)userIdentityCache:(id)a3 didAddUserIdentity:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(MCMSystemChangeMonitor *)self queue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__MCMSystemChangeMonitor_userIdentityCache_didAddUserIdentity___block_invoke;
  v12[3] = &unk_1E86B0898;
  v12[4] = self;
  v13 = v7;
  v14 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, v12);

  v11 = *MEMORY[0x1E69E9840];
}

void __63__MCMSystemChangeMonitor_userIdentityCache_didAddUserIdentity___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = [*(a1 + 32) flushables];
  v3 = [v2 countByEnumeratingWithState:&v20 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v21;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v20 + 1) + 8 * i);
        if ([v7 conformsToProtocol:&unk_1F5A8B818])
        {
          [v7 didAddUserIdentity:*(a1 + 40)];
        }

        else
        {
          [v7 flush];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v20 objects:v19 count:16];
    }

    while (v4);
  }

  v8 = [*(a1 + 48) libraryRepairForUserIdentity:*(a1 + 40)];
  v14 = 0;
  v9 = [v8 createPathsIfNecessaryWithError:&v14];
  v10 = v14;
  if ((v9 & 1) == 0)
  {
    v11 = container_log_handle_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 40);
      *buf = 138412546;
      v16 = v13;
      v17 = 2114;
      v18 = v10;
      _os_log_error_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_ERROR, "Failed creating working directories for %@: %{public}@", buf, 0x16u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)userIdentityCache:(id)a3 didInvalidateUserIdentity:(id)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(MCMSystemChangeMonitor *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__MCMSystemChangeMonitor_userIdentityCache_didInvalidateUserIdentity___block_invoke;
  block[3] = &unk_1E86B0CC8;
  block[4] = self;
  v10 = v5;
  v7 = v5;
  dispatch_async(v6, block);

  v8 = *MEMORY[0x1E69E9840];
}

void __70__MCMSystemChangeMonitor_userIdentityCache_didInvalidateUserIdentity___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) flushables];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([v7 conformsToProtocol:&unk_1F5A8B818])
        {
          [v7 didInvalidateUserIdentity:*(a1 + 40)];
        }

        else
        {
          [v7 flush];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (MCMSystemChangeMonitor)initWithQueue:(id)a3 flushables:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = MCMSystemChangeMonitor;
  v9 = [(MCMSystemChangeMonitor *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, a3);
    objc_storeStrong(&v10->_flushables, a4);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

@end