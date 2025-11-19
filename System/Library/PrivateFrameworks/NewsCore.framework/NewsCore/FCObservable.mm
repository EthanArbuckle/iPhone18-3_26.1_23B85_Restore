@interface FCObservable
- (FCObservable)initWithValue:(id)a3;
- (id)observe:(id)a3;
- (void)dealloc;
- (void)next:(id)a3;
- (void)quietNext:(id)a3;
- (void)setValue:(id)a3;
@end

@implementation FCObservable

- (FCObservable)initWithValue:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = FCObservable;
  v6 = [(FCObservable *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_value, a3);
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

- (id)observe:(id)a3
{
  v4 = MEMORY[0x1E696AF00];
  v5 = a3;
  [v4 isMainThread];
  v6 = [FCObserver alloc];
  v7 = [(FCObservable *)self token];
  [(FCObservable *)self setToken:v7 + 1];
  v8 = [(FCObserver *)v6 initWithToken:v7];
  [(FCObserver *)v8 setObserverBlock:v5];

  [(FCObserver *)v8 setKeepAliveObject:self];
  v9 = [(FCObservable *)self observers];
  [v9 addObject:v8];

  return v8;
}

- (void)setValue:(id)a3
{
  v4 = MEMORY[0x1E696AF00];
  v5 = a3;
  [v4 isMainThread];
  [(FCObservable *)self next:v5];
}

- (void)quietNext:(id)a3
{
  v4 = a3;
  [MEMORY[0x1E696AF00] isMainThread];
  value = self->_value;
  self->_value = v4;
}

- (void)next:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a3;
  [MEMORY[0x1E696AF00] isMainThread];
  objc_storeStrong(&self->_value, a3);
  v6 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = [(FCObservable *)self observers];
  v8 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v27 + 1) + 8 * i);
        v13 = [v12 keepAliveObject];

        if (v13)
        {
          v14 = [v12 observerBlock];
          (v14)[2](v14, self->_value);
        }

        else
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
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
        v21 = [(FCObservable *)self observers];
        [v21 removeObject:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v17);
  }

  v22 = *MEMORY[0x1E69E9840];
}

@end