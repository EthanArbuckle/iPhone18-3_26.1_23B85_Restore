@interface _DKSyncCompositeOperation
- (BOOL)isReady;
- (_DKSyncCompositeOperation)initWithParent:(id)parent;
- (void)_shutdownOperation;
- (void)cancel;
- (void)childOperation:(id)operation didEndWithErrors:(id)errors;
- (void)childOperationWasAdded:(id)added;
- (void)dealloc;
- (void)endOperation;
- (void)setReadyToStart:(BOOL)start;
@end

@implementation _DKSyncCompositeOperation

- (_DKSyncCompositeOperation)initWithParent:(id)parent
{
  parentCopy = parent;
  v23.receiver = self;
  v23.super_class = _DKSyncCompositeOperation;
  v5 = [(_DKSyncOperation *)&v23 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    children = v6->_children;
    v6->_children = weakObjectsHashTable;

    v9 = objc_opt_new();
    errors = v6->_errors;
    v6->_errors = v9;

    if (parentCopy)
    {
      objc_storeWeak(&v6->_parent, parentCopy);
      [parentCopy childOperationWasAdded:v6];
      v11 = +[_CDObservationCenter sharedInstance];
      v12 = +[_DKSyncSerializer underlyingQueue];
      v17 = MEMORY[0x1E69E9820];
      v18 = 3221225472;
      v19 = __44___DKSyncCompositeOperation_initWithParent___block_invoke;
      v20 = &unk_1E7368C38;
      v13 = parentCopy;
      v21 = v13;
      v14 = v6;
      v22 = v14;
      [v11 addObserver:v14 name:@"_DKSyncOperationStateDidChangeNotification" sender:v13 queue:v12 usingBlock:&v17];

      if ([v13 isCancelled])
      {
        [(_DKSyncCompositeOperation *)v14 cancel];
      }

      else
      {
        if ([v13 isExecuting])
        {
          isFinished = 1;
        }

        else
        {
          isFinished = [v13 isFinished];
        }

        [(_DKSyncCompositeOperation *)v14 setReadyToStart:isFinished];
      }
    }

    else
    {
      [(_DKSyncCompositeOperation *)v6 setReadyToStart:1];
    }
  }

  return v6;
}

- (void)dealloc
{
  [(_DKSyncCompositeOperation *)self _shutdownOperation];
  v3.receiver = self;
  v3.super_class = _DKSyncCompositeOperation;
  [(_DKSyncOperation *)&v3 dealloc];
}

- (void)setReadyToStart:(BOOL)start
{
  [(_DKSyncCompositeOperation *)self willChangeValueForKey:@"isReady"];
  atomic_store(start, &self->_isReadyToStart);

  [(_DKSyncCompositeOperation *)self didChangeValueForKey:@"isReady"];
}

- (BOOL)isReady
{
  v3 = atomic_load(&self->_isReadyToStart);
  v5.receiver = self;
  v5.super_class = _DKSyncCompositeOperation;
  if ([(_DKSyncCompositeOperation *)&v5 isReady]&& (v3 & 1) != 0)
  {
    return 1;
  }

  else
  {
    return [(_DKSyncCompositeOperation *)self isCancelled];
  }
}

- (void)childOperationWasAdded:(id)added
{
  addedCopy = added;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_children addObject:addedCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)childOperation:(id)operation didEndWithErrors:(id)errors
{
  errorsCopy = errors;
  operationCopy = operation;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_children removeObject:operationCopy];

  v7 = [(NSHashTable *)self->_children count];
  if ([errorsCopy count])
  {
    errors = [(_DKSyncCompositeOperation *)self errors];
    [errors addObjectsFromArray:errorsCopy];
  }

  os_unfair_lock_unlock(&self->_lock);
  if (!v7 && [(_DKSyncCompositeOperation *)self isAsynchronous]&& ([(_DKSyncCompositeOperation *)self isCancelled]& 1) == 0)
  {
    [(_DKSyncCompositeOperation *)self endOperation];
  }
}

- (void)_shutdownOperation
{
  os_unfair_lock_lock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  if (WeakRetained)
  {
    objc_storeWeak(&self->_parent, 0);
    os_unfair_lock_unlock(&self->_lock);
    v3 = +[_CDObservationCenter sharedInstance];
    [v3 removeObserver:self name:@"_DKSyncOperationStateDidChangeNotification" sender:WeakRetained];
    errors = [(_DKSyncCompositeOperation *)self errors];
    [WeakRetained childOperation:self didEndWithErrors:errors];
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)endOperation
{
  v3.receiver = self;
  v3.super_class = _DKSyncCompositeOperation;
  [(_DKSyncOperation *)&v3 endOperation];
  [(_DKSyncCompositeOperation *)self _shutdownOperation];
}

- (void)cancel
{
  v16 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = _DKSyncCompositeOperation;
  [(_DKSyncCompositeOperation *)&v14 cancel];
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSHashTable *)self->_children copy];
  os_unfair_lock_unlock(&self->_lock);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8++) cancel];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v6);
  }

  [(_DKSyncCompositeOperation *)self _shutdownOperation];
  v9 = *MEMORY[0x1E69E9840];
}

@end