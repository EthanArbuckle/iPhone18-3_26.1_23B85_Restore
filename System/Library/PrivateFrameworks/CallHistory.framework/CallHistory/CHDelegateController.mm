@interface CHDelegateController
- (CHDelegateController)init;
- (void)addDelegate:(id)delegate queue:(id)queue;
- (void)enumerateDelegatesUsingBlock:(id)block;
- (void)removeDelegate:(id)delegate;
@end

@implementation CHDelegateController

- (CHDelegateController)init
{
  v7.receiver = self;
  v7.super_class = CHDelegateController;
  v2 = [(CHDelegateController *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_delegateLock._os_unfair_lock_opaque = 0;
    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    delegateToQueue = v3->_delegateToQueue;
    v3->_delegateToQueue = weakToStrongObjectsMapTable;
  }

  return v3;
}

- (void)addDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  os_unfair_lock_lock(&self->_delegateLock);
  delegateToQueue = [(CHDelegateController *)self delegateToQueue];
  [delegateToQueue setObject:queueCopy forKey:delegateCopy];

  os_unfair_lock_unlock(&self->_delegateLock);
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  os_unfair_lock_lock(&self->_delegateLock);
  delegateToQueue = [(CHDelegateController *)self delegateToQueue];
  [delegateToQueue removeObjectForKey:delegateCopy];

  os_unfair_lock_unlock(&self->_delegateLock);
}

- (void)enumerateDelegatesUsingBlock:(id)block
{
  v19 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  os_unfair_lock_lock(&self->_delegateLock);
  v17 = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  delegateToQueue = [(CHDelegateController *)self delegateToQueue];
  v6 = [delegateToQueue countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v6)
  {
    v7 = *v14;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v14 != v7)
      {
        objc_enumerationMutation(delegateToQueue);
      }

      v9 = *(*(&v13 + 1) + 8 * v8);
      delegateToQueue2 = [(CHDelegateController *)self delegateToQueue];
      v11 = [delegateToQueue2 objectForKey:v9];

      blockCopy[2](blockCopy, v9, v11, &v17);
      LOBYTE(v9) = v17;

      if (v9)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [delegateToQueue countByEnumeratingWithState:&v13 objects:v18 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  os_unfair_lock_unlock(&self->_delegateLock);
  v12 = *MEMORY[0x1E69E9840];
}

@end