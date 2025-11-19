@interface CNAsynchronousCacheEntryDelegateObservable
- (CNAsynchronousCacheEntryDelegateObservable)init;
- (id)subscribe:(id)a3;
- (void)cacheEntryDidUpdateValue:(id)a3;
- (void)removeObserver:(id)a3;
@end

@implementation CNAsynchronousCacheEntryDelegateObservable

- (CNAsynchronousCacheEntryDelegateObservable)init
{
  v7.receiver = self;
  v7.super_class = CNAsynchronousCacheEntryDelegateObservable;
  v2 = [(CNAsynchronousCacheEntryDelegateObservable *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    observers = v2->_observers;
    v2->_observers = v3;

    v5 = v2;
  }

  return v2;
}

- (id)subscribe:(id)a3
{
  v4 = a3;
  v5 = self->_observers;
  objc_sync_enter(v5);
  [(NSMutableArray *)self->_observers addObject:v4];
  v6 = self->_currentValue;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __56__CNAsynchronousCacheEntryDelegateObservable_subscribe___block_invoke;
  v14 = &unk_1E6ED5168;
  v15 = self;
  v7 = v4;
  v16 = v7;
  v8 = [CNCancelationToken tokenWithCancelationBlock:&v11];

  objc_sync_exit(v5);
  if (v6)
  {
    v9 = [MEMORY[0x1E695DFB0] null];

    if (v6 != v9)
    {
      [v7 observerDidReceiveResult:v6];
    }
  }

  return v8;
}

- (void)removeObserver:(id)a3
{
  v5 = a3;
  v4 = self->_observers;
  objc_sync_enter(v4);
  [(NSMutableArray *)self->_observers removeObject:v5];
  objc_sync_exit(v4);
}

- (void)cacheEntryDidUpdateValue:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self->_observers;
  objc_sync_enter(v5);
  v6 = [(NSMutableArray *)self->_observers copy];
  v7 = [v4 currentValue];
  currentValue = self->_currentValue;
  self->_currentValue = v7;

  objc_sync_exit(v5);
  v9 = [v4 currentValue];
  v10 = off_1EF4401A8(&__block_literal_global_2_2, v9);

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = v6;
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v16 + 1) + 8 * v14++) observerDidReceiveResult:{v10, v16}];
      }

      while (v12 != v14);
      v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  v15 = *MEMORY[0x1E69E9840];
}

@end