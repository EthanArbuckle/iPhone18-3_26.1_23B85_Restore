@interface _EFReplayObservable
- (_EFReplayObservable)initWithCount:(unint64_t)a3;
- (id)subscribe:(id)a3;
- (void)_unsubscribe:(id)a3;
- (void)observerDidComplete;
- (void)observerDidFailWithError:(id)a3;
- (void)observerDidReceiveResult:(id)a3;
@end

@implementation _EFReplayObservable

- (_EFReplayObservable)initWithCount:(unint64_t)a3
{
  v12.receiver = self;
  v12.super_class = _EFReplayObservable;
  v4 = [(_EFReplayObservable *)&v12 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E696AD10]);
    lock = v4->_lock;
    v4->_lock = v5;

    v7 = [EFQueue boundedQueueWithCapacity:a3];
    queue = v4->_queue;
    v4->_queue = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    observers = v4->_observers;
    v4->_observers = v9;
  }

  return v4;
}

- (id)subscribe:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(NSLock *)self->_lock lock];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [(EFQueue *)self->_queue allObjects];
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [v4 observerDidReceiveResult:*(*(&v20 + 1) + 8 * i)];
      }

      v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  if (self->_error)
  {
    [v4 observerDidFailWithError:?];
  }

  else if (self->_isStopped)
  {
    [v4 observerDidComplete];
  }

  if (self->_isStopped)
  {
    v9 = 0;
  }

  else
  {
    [(NSMutableArray *)self->_observers addObject:v4];
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __33___EFReplayObservable_subscribe___block_invoke;
    v17 = &unk_1E82485D0;
    v18 = self;
    v19 = v4;
    v9 = [EFManualCancelationToken tokenWithCancelationBlock:&v14];
  }

  [(NSLock *)self->_lock unlock:v14];
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = objc_alloc_init(EFManualCancelationToken);
  }

  v11 = v10;

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)_unsubscribe:(id)a3
{
  v4 = a3;
  [(NSLock *)self->_lock lock];
  [(NSMutableArray *)self->_observers removeObject:v4];
  [(NSLock *)self->_lock unlock];
}

- (void)observerDidReceiveResult:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(NSLock *)self->_lock lock];
  if (!self->_isStopped)
  {
    [(EFQueue *)self->_queue enqueue:v4];
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = self->_observers;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v10 + 1) + 8 * v8++) observerDidReceiveResult:{v4, v10}];
        }

        while (v6 != v8);
        v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }

  [(NSLock *)self->_lock unlock];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)observerDidComplete
{
  v13 = *MEMORY[0x1E69E9840];
  [(NSLock *)self->_lock lock];
  if (!self->_isStopped)
  {
    self->_isStopped = 1;
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = self->_observers;
    v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = *v9;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v8 + 1) + 8 * i) observerDidComplete];
        }

        v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v4);
    }

    [(NSMutableArray *)self->_observers removeAllObjects];
  }

  [(NSLock *)self->_lock unlock];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)observerDidFailWithError:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  [(NSLock *)self->_lock lock];
  if (!self->_isStopped)
  {
    self->_isStopped = 1;
    objc_storeStrong(&self->_error, a3);
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = self->_observers;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = *v12;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * i) observerDidFailWithError:{v5, v11}];
        }

        v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    [(NSMutableArray *)self->_observers removeAllObjects];
  }

  [(NSLock *)self->_lock unlock];

  v10 = *MEMORY[0x1E69E9840];
}

@end