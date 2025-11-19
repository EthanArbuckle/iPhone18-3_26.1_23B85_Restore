@interface _EFManualObservable
- (BOOL)_addObserver:(id)a3 failureError:(id *)a4;
- (_EFManualObservable)init;
- (id)subscribe:(id)a3;
- (void)_removeObserver:(id)a3;
- (void)observerDidComplete;
- (void)observerDidFailWithError:(id)a3;
- (void)observerDidReceiveResult:(id)a3;
@end

@implementation _EFManualObservable

- (_EFManualObservable)init
{
  v7.receiver = self;
  v7.super_class = _EFManualObservable;
  v2 = [(_EFManualObservable *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    observers = v2->_observers;
    v2->_observers = v3;

    failureError = v2->_failureError;
    v2->_failureError = 0;

    v2->_lock._os_unfair_lock_opaque = 0;
    v2->_didCompleteOrFail = 0;
  }

  return v2;
}

- (id)subscribe:(id)a3
{
  v4 = a3;
  v12 = 0;
  v5 = [(_EFManualObservable *)self _addObserver:v4 failureError:&v12];
  v6 = v12;
  v7 = objc_alloc_init(EFManualCancelationToken);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __33___EFManualObservable_subscribe___block_invoke;
  v10[3] = &unk_1E82485D0;
  v10[4] = self;
  v8 = v4;
  v11 = v8;
  [(EFManualCancelationToken *)v7 addCancelationBlock:v10];
  if (v5)
  {
    if (v6)
    {
      [v8 observerDidFailWithError:v6];
    }

    else
    {
      [v8 observerDidComplete];
    }
  }

  return v7;
}

- (void)observerDidReceiveResult:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_didCompleteOrFail)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_observers copy];
  }

  os_unfair_lock_unlock(&self->_lock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v9++) observerDidReceiveResult:{v4, v11}];
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)observerDidComplete
{
  v14 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  if (self->_didCompleteOrFail)
  {
    v3 = 0;
  }

  else
  {
    self->_didCompleteOrFail = 1;
    v3 = [(NSMutableArray *)self->_observers copy];
  }

  os_unfair_lock_unlock(&self->_lock);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v7++) observerDidComplete];
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)observerDidFailWithError:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_didCompleteOrFail)
  {
    v6 = 0;
  }

  else
  {
    self->_didCompleteOrFail = 1;
    objc_storeStrong(&self->_failureError, a3);
    v6 = [(NSMutableArray *)self->_observers copy];
  }

  os_unfair_lock_unlock(&self->_lock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v10++) observerDidFailWithError:{v5, v12}];
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (BOOL)_addObserver:(id)a3 failureError:(id *)a4
{
  v7 = a3;
  if (v7 == self)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"_EFManualObservable.m" lineNumber:107 description:@"can't observe self"];

    if (a4)
    {
      goto LABEL_3;
    }
  }

  else if (a4)
  {
    goto LABEL_3;
  }

  v11 = [MEMORY[0x1E696AAA8] currentHandler];
  [v11 handleFailureInMethod:a2 object:self file:@"_EFManualObservable.m" lineNumber:108 description:@"out variable should always be provided"];

LABEL_3:
  os_unfair_lock_lock(&self->_lock);
  didCompleteOrFail = self->_didCompleteOrFail;
  if (didCompleteOrFail)
  {
    *a4 = self->_failureError;
  }

  else
  {
    [(NSMutableArray *)self->_observers addObject:v7];
  }

  os_unfair_lock_unlock(&self->_lock);

  return didCompleteOrFail;
}

- (void)_removeObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableArray *)self->_observers removeObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

@end