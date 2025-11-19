@interface CHDelegateManager
- (CHDelegateManager)init;
- (void)addDelegate:(id)a3 queue:(id)a4;
- (void)performDelegateSelector:(SEL)a3;
- (void)performDelegateSelector:(SEL)a3 withDelegate:(id)a4;
- (void)removeDelegate:(id)a3;
@end

@implementation CHDelegateManager

- (CHDelegateManager)init
{
  v7.receiver = self;
  v7.super_class = CHDelegateManager;
  v2 = [(CHDelegateManager *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_accessorLock._os_unfair_lock_opaque = 0;
    v4 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    delegateToQueue = v3->_delegateToQueue;
    v3->_delegateToQueue = v4;
  }

  return v3;
}

- (void)addDelegate:(id)a3 queue:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_lock_lock(&self->_accessorLock);
  v8 = [(CHDelegateManager *)self delegateToQueue];
  [v8 setObject:v6 forKey:v7];

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)removeDelegate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_accessorLock);
  v5 = [(CHDelegateManager *)self delegateToQueue];
  [v5 removeObjectForKey:v4];

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)performDelegateSelector:(SEL)a3
{
  v20 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_accessorLock);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(CHDelegateManager *)self delegateToQueue];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          v11 = [(CHDelegateManager *)self delegateToQueue];
          v12 = [v11 objectForKey:v10];

          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __45__CHDelegateManager_performDelegateSelector___block_invoke;
          block[3] = &unk_1E81DC398;
          block[5] = v10;
          block[6] = a3;
          block[4] = self;
          dispatch_async(v12, block);
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  os_unfair_lock_unlock(&self->_accessorLock);
  v13 = *MEMORY[0x1E69E9840];
}

- (void)performDelegateSelector:(SEL)a3 withDelegate:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x1E695DF30];
  v7 = *MEMORY[0x1E695D930];
  v8 = MEMORY[0x1E696AEC0];
  v9 = NSStringFromSelector(a2);
  v10 = [v8 stringWithFormat:@"Subclass is required to override %@", v9];
  v11 = [v6 exceptionWithName:v7 reason:v10 userInfo:0];
  v12 = v11;

  objc_exception_throw(v11);
}

@end