@interface FCObservable
- (FCObservable)initWithValue:(id)value;
- (id)observe:(id)observe;
- (void)dealloc;
- (void)next:(id)next;
- (void)quietNext:(id)next;
- (void)setValue:(id)value;
@end

@implementation FCObservable

- (FCObservable)initWithValue:(id)value
{
  valueCopy = value;
  v11.receiver = self;
  v11.super_class = FCObservable;
  v6 = [(FCObservable *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_value, value);
    v7->_token = 0;
    v8 = objc_opt_new();
    observers = v7->_observers;
    v7->_observers = v8;
  }

  return v7;
}

- (void)dealloc
{
  observers = self->_observers;
  self->_observers = 0;

  value = self->_value;
  self->_value = 0;

  v5.receiver = self;
  v5.super_class = FCObservable;
  [(FCObservable *)&v5 dealloc];
}

- (id)observe:(id)observe
{
  v4 = MEMORY[0x1E696AF00];
  observeCopy = observe;
  [v4 isMainThread];
  v6 = [FCObserver alloc];
  token = [(FCObservable *)self token];
  [(FCObservable *)self setToken:token + 1];
  v8 = [(FCObserver *)v6 initWithToken:token];
  [(FCObserver *)v8 setObserverBlock:observeCopy];

  [(FCObserver *)v8 setKeepAliveObject:self];
  observers = [(FCObservable *)self observers];
  [observers addObject:v8];

  return v8;
}

- (void)setValue:(id)value
{
  v4 = MEMORY[0x1E696AF00];
  valueCopy = value;
  [v4 isMainThread];
  [(FCObservable *)self next:valueCopy];
}

- (void)quietNext:(id)next
{
  nextCopy = next;
  [MEMORY[0x1E696AF00] isMainThread];
  value = self->_value;
  self->_value = nextCopy;
}

- (void)next:(id)next
{
  v33 = *MEMORY[0x1E69E9840];
  nextCopy = next;
  [MEMORY[0x1E696AF00] isMainThread];
  objc_storeStrong(&self->_value, next);
  v6 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  observers = [(FCObservable *)self observers];
  v8 = [observers countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v28;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(observers);
        }

        v12 = *(*(&v27 + 1) + 8 * i);
        keepAliveObject = [v12 keepAliveObject];

        if (keepAliveObject)
        {
          observerBlock = [v12 observerBlock];
          (observerBlock)[2](observerBlock, self->_value);
        }

        else
        {
          [v6 addObject:v12];
        }
      }

      v9 = [observers countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v9);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v15 = v6;
  v16 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v23 + 1) + 8 * j);
        observers2 = [(FCObservable *)self observers];
        [observers2 removeObject:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v17);
  }

  v22 = *MEMORY[0x1E69E9840];
}

@end