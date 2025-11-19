@interface CARObserverHashTable
- (BOOL)hasObservers;
- (CARObserverHashTable)initWithProtocol:(id)a3 callbackQueue:(id)a4;
- (id)description;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)enumerateObserversWithBlock:(id)a3;
- (void)forwardInvocation:(id)a3;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation CARObserverHashTable

- (CARObserverHashTable)initWithProtocol:(id)a3 callbackQueue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = CARObserverHashTable;
  v9 = [(CARObserverHashTable *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_protocol, a3);
    objc_storeStrong(&v10->_callbackQueue, a4);
    v10->_observersLock._os_unfair_lock_opaque = 0;
    v11 = v10;
  }

  return v10;
}

- (BOOL)hasObservers
{
  os_unfair_lock_assert_not_owner(&self->_observersLock);
  os_unfair_lock_lock(&self->_observersLock);
  v3 = [(NSHashTable *)self->_observers count]!= 0;
  os_unfair_lock_unlock(&self->_observersLock);
  return v3;
}

- (void)registerObserver:(id)a3
{
  v7 = a3;
  os_unfair_lock_assert_not_owner(&self->_observersLock);
  os_unfair_lock_lock(&self->_observersLock);
  observers = self->_observers;
  if (!observers)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:517 capacity:1];
    v6 = self->_observers;
    self->_observers = v5;

    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:v7];
  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_observersLock);
  os_unfair_lock_lock(&self->_observersLock);
  [(NSHashTable *)self->_observers removeObject:v4];

  if (![(NSHashTable *)self->_observers count])
  {
    observers = self->_observers;
    self->_observers = 0;
  }

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)enumerateObserversWithBlock:(id)a3
{
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__9;
  v20 = __Block_byref_object_dispose__9;
  v21 = 0;
  os_unfair_lock_assert_not_owner(&self->_observersLock);
  os_unfair_lock_lock(&self->_observersLock);
  v5 = [(NSHashTable *)self->_observers copy];
  v6 = v17[5];
  v17[5] = v5;

  os_unfair_lock_unlock(&self->_observersLock);
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __52__CARObserverHashTable_enumerateObserversWithBlock___block_invoke;
  v13 = &unk_1E82FD700;
  v15 = &v16;
  v7 = v4;
  v14 = v7;
  v8 = MEMORY[0x1CCA72270](&v10);
  v9 = [(CARObserverHashTable *)self callbackQueue:v10];
  dispatch_sync(v9, v8);

  _Block_object_dispose(&v16, 8);
}

void __52__CARObserverHashTable_enumerateObserversWithBlock___block_invoke(uint64_t a1)
{
  v2 = [*(*(*(a1 + 40) + 8) + 40) objectEnumerator];
  v3 = 0;
  while (1)
  {
    v4 = v3;
    v3 = [v2 nextObject];

    if (!v3)
    {
      break;
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (id)methodSignatureForSelector:(SEL)a3
{
  MethodDescription = protocol_getMethodDescription(self->_protocol, a3, 0, 1);
  types = MethodDescription.types;
  if ((MethodDescription.name || (v7 = protocol_getMethodDescription(self->_protocol, a3, 1, 1), types = v7.types, v7.name)) && types)
  {
    v8 = [MEMORY[0x1E695DF68] signatureWithObjCTypes:types];
  }

  else
  {
    [(CARObserverHashTable *)self doesNotRecognizeSelector:a3];
    v8 = 0;
  }

  return v8;
}

- (void)forwardInvocation:(id)a3
{
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__9;
  v20 = __Block_byref_object_dispose__9;
  v21 = 0;
  os_unfair_lock_assert_not_owner(&self->_observersLock);
  os_unfair_lock_lock(&self->_observersLock);
  v5 = [(NSHashTable *)self->_observers copy];
  v6 = v17[5];
  v17[5] = v5;

  os_unfair_lock_unlock(&self->_observersLock);
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __42__CARObserverHashTable_forwardInvocation___block_invoke;
  v13 = &unk_1E82FD728;
  v7 = v4;
  v14 = v7;
  v15 = &v16;
  v8 = MEMORY[0x1CCA72270](&v10);
  [v7 retainArguments];
  v9 = [(CARObserverHashTable *)self callbackQueue];
  dispatch_async(v9, v8);

  _Block_object_dispose(&v16, 8);
}

void __42__CARObserverHashTable_forwardInvocation___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) selector];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [*(a1 + 32) invokeWithTarget:{v7, v8}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (id)description
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@ observers count: %d", v5, -[NSHashTable count](self->_observers, "count")];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = self->_observers;
  v8 = [(NSHashTable *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [v6 appendFormat:@"\n\t%@ (%p)", objc_opt_class(), *(*(&v13 + 1) + 8 * i), v13];
      }

      v9 = [(NSHashTable *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  return v6;
}

@end