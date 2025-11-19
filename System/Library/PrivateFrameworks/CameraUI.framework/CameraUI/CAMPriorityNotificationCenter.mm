@interface CAMPriorityNotificationCenter
+ (id)defaultCenter;
- (CAMPriorityNotificationCenter)init;
- (id)_allSubscriptions;
- (id)_entriesByName:(id)a3 forPriority:(unint64_t)a4 creatingEmptyIfNeeded:(BOOL)a5;
- (id)_observersForPriority:(unint64_t)a3;
- (void)_mutexQueue_addObserver:(id)a3 priority:(unint64_t)a4 selector:(SEL)a5 name:(id)a6 object:(id)a7;
- (void)_mutexQueue_removeObserver:(id)a3;
- (void)_notificationReceiver:(id)a3;
- (void)_postNotification:(id)a3 forEntries:(id)a4;
- (void)_removeObserver:(id)a3 fromObserversByName:(id)a4;
- (void)addObserver:(id)a3 priority:(unint64_t)a4 selector:(SEL)a5 name:(id)a6 object:(id)a7;
- (void)dealloc;
- (void)removeObserver:(id)a3;
@end

@implementation CAMPriorityNotificationCenter

+ (id)defaultCenter
{
  if (defaultCenter_onceToken != -1)
  {
    +[CAMPriorityNotificationCenter defaultCenter];
  }

  v3 = defaultCenter_defaultCenter;

  return v3;
}

uint64_t __46__CAMPriorityNotificationCenter_defaultCenter__block_invoke()
{
  defaultCenter_defaultCenter = objc_alloc_init(CAMPriorityNotificationCenter);

  return MEMORY[0x1EEE66BB8]();
}

- (CAMPriorityNotificationCenter)init
{
  v13.receiver = self;
  v13.super_class = CAMPriorityNotificationCenter;
  v2 = [(CAMPriorityNotificationCenter *)&v13 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    notificationCenter = v2->__notificationCenter;
    v2->__notificationCenter = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    observersByNameHighPriority = v2->__observersByNameHighPriority;
    v2->__observersByNameHighPriority = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    observersByNameNormalPriority = v2->__observersByNameNormalPriority;
    v2->__observersByNameNormalPriority = v7;

    v9 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v10 = dispatch_queue_create("com.apple.camera.priority-notification-center.mutex-queue", v9);
    mutexQueue = v2->__mutexQueue;
    v2->__mutexQueue = v10;
  }

  return v2;
}

- (void)dealloc
{
  [(NSNotificationCenter *)self->__notificationCenter removeObserver:self];
  v3.receiver = self;
  v3.super_class = CAMPriorityNotificationCenter;
  [(CAMPriorityNotificationCenter *)&v3 dealloc];
}

- (void)_postNotification:(id)a3 forEntries:(id)a4
{
  v56 = *MEMORY[0x1E69E9840];
  v39 = a3;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = a4;
  v5 = [obj countByEnumeratingWithState:&v41 objects:v55 count:16];
  if (v5)
  {
    v7 = *v42;
    *&v6 = 138544130;
    v35 = v6;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v42 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v41 + 1) + 8 * i);
        v10 = [v9 observer];
        objc_initWeak(&location, v10);

        v11 = [v9 selector];
        v12 = [v9 object];
        if (!v12 || ([v39 object], v13 = objc_claimAutoreleasedReturnValue(), v14 = v12 == v13, v13, v14))
        {
          v21 = objc_loadWeakRetained(&location);
          v22 = objc_opt_respondsToSelector();

          if (v22)
          {
            v23 = objc_loadWeakRetained(&location);
            v24 = [v23 methodForSelector:v11];

            v15 = os_log_create("com.apple.camera", "PriorityNotificationCenter");
            v25 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
            if (v24)
            {
              if (v25)
              {
                v37 = [v39 name];
                v29 = objc_loadWeakRetained(&location);
                v30 = objc_opt_class();
                v36 = v30;
                v31 = objc_loadWeakRetained(&location);
                *buf = v35;
                v46 = v37;
                v47 = 2114;
                v48 = v30;
                v49 = 2048;
                v50 = v31;
                v51 = 2048;
                v52 = v12;
                _os_log_debug_impl(&dword_1A3640000, v15, OS_LOG_TYPE_DEBUG, "Forwarding notification %{public}@ to <%{public}@: %p>/%p", buf, 0x2Au);
              }

              v15 = objc_loadWeakRetained(&location);
              v24(v15, v11, v39);
            }

            else if (v25)
            {
              v32 = objc_loadWeakRetained(&location);
              v33 = objc_opt_class();
              v34 = [v39 name];
              *buf = 138543618;
              v46 = v33;
              v47 = 2114;
              v48 = v34;
              _os_log_debug_impl(&dword_1A3640000, v15, OS_LOG_TYPE_DEBUG, "Observer %{public}@ has an invalid selector for receiving notifications for %{public}@!", buf, 0x16u);
            }
          }

          else
          {
            v15 = os_log_create("com.apple.camera", "PriorityNotificationCenter");
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              v26 = objc_loadWeakRetained(&location);
              v27 = objc_opt_class();
              v28 = [v39 name];
              *buf = 138543618;
              v46 = v27;
              v47 = 2114;
              v48 = v28;
              _os_log_debug_impl(&dword_1A3640000, v15, OS_LOG_TYPE_DEBUG, "Observer %{public}@ does not have a compatible selector for receiving notifications for %{public}@!", buf, 0x16u);
            }
          }
        }

        else
        {
          v15 = os_log_create("com.apple.camera", "PriorityNotificationCenter");
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            v16 = [v39 name];
            v17 = objc_loadWeakRetained(&location);
            v18 = objc_opt_class();
            v19 = objc_loadWeakRetained(&location);
            v20 = [v39 object];
            *buf = 138544386;
            v46 = v16;
            v47 = 2114;
            v48 = v18;
            v49 = 2048;
            v50 = v19;
            v51 = 2048;
            v52 = v12;
            v53 = 2048;
            v54 = v20;
            _os_log_debug_impl(&dword_1A3640000, v15, OS_LOG_TYPE_DEBUG, "Not forwarding notification %{public}@ to <%{public}@: %p>/%p because notification object %p did not match", buf, 0x34u);
          }
        }

        objc_destroyWeak(&location);
      }

      v5 = [obj countByEnumeratingWithState:&v41 objects:v55 count:16];
    }

    while (v5);
  }
}

- (void)_notificationReceiver:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [v4 name];
  v7 = os_log_create("com.apple.camera", "PriorityNotificationCenter");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(CAMPriorityNotificationCenter *)v4 _notificationReceiver:v7];
  }

  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__8;
  v30 = __Block_byref_object_dispose__8;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__8;
  v24 = __Block_byref_object_dispose__8;
  v25 = 0;
  v8 = [(CAMPriorityNotificationCenter *)self _mutexQueue];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __55__CAMPriorityNotificationCenter__notificationReceiver___block_invoke;
  v15 = &unk_1E76FA660;
  v18 = &v26;
  v16 = self;
  v9 = v6;
  v17 = v9;
  v19 = &v20;
  dispatch_sync(v8, &v12);

  if ([v27[5] count])
  {
    v10 = os_log_create("com.apple.camera", "PriorityNotificationCenter");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [CAMPriorityNotificationCenter _notificationReceiver:v10];
    }

    [(CAMPriorityNotificationCenter *)self _postNotification:v4 forEntries:v27[5]];
  }

  if ([v21[5] count])
  {
    v11 = os_log_create("com.apple.camera", "PriorityNotificationCenter");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [CAMPriorityNotificationCenter _notificationReceiver:v11];
    }

    [(CAMPriorityNotificationCenter *)self _postNotification:v4 forEntries:v21[5]];
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  objc_autoreleasePoolPop(v5);
}

void __55__CAMPriorityNotificationCenter__notificationReceiver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _entriesByName:*(a1 + 40) forPriority:0 creatingEmptyIfNeeded:0];
  v3 = [v2 copy];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v9 = [*(a1 + 32) _entriesByName:*(a1 + 40) forPriority:1 creatingEmptyIfNeeded:0];
  v6 = [v9 copy];
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (id)_observersForPriority:(unint64_t)a3
{
  v5 = [(CAMPriorityNotificationCenter *)self _mutexQueue];
  dispatch_assert_queue_V2(v5);

  if (a3 == 1)
  {
    v6 = [(CAMPriorityNotificationCenter *)self _observersByNameNormalPriority];
  }

  else if (!a3)
  {
    v6 = [(CAMPriorityNotificationCenter *)self _observersByNameHighPriority];
  }

  return v6;
}

- (id)_entriesByName:(id)a3 forPriority:(unint64_t)a4 creatingEmptyIfNeeded:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = [(CAMPriorityNotificationCenter *)self _mutexQueue];
  dispatch_assert_queue_V2(v9);

  v10 = [(CAMPriorityNotificationCenter *)self _observersForPriority:a4];
  v11 = [v10 objectForKey:v8];
  if (!v11 && v5)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v10 setValue:v11 forKey:v8];
  }

  return v11;
}

- (void)addObserver:(id)a3 priority:(unint64_t)a4 selector:(SEL)a5 name:(id)a6 object:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = [(CAMPriorityNotificationCenter *)self _mutexQueue];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __75__CAMPriorityNotificationCenter_addObserver_priority_selector_name_object___block_invoke;
  v19[3] = &unk_1E76FA688;
  v19[4] = self;
  v20 = v12;
  v23 = a4;
  v24 = a5;
  v21 = v13;
  v22 = v14;
  v16 = v14;
  v17 = v13;
  v18 = v12;
  dispatch_sync(v15, v19);
}

- (void)_mutexQueue_addObserver:(id)a3 priority:(unint64_t)a4 selector:(SEL)a5 name:(id)a6 object:(id)a7
{
  v12 = a6;
  v13 = a7;
  v14 = a3;
  v15 = [(CAMPriorityNotificationCenter *)self _mutexQueue];
  dispatch_assert_queue_V2(v15);

  v16 = [(CAMPriorityNotificationCenter *)self _observersByNameHighPriority];
  v17 = [v16 objectForKey:v12];
  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v19 = [(CAMPriorityNotificationCenter *)self _observersByNameNormalPriority];
    v20 = [v19 objectForKey:v12];
    v18 = v20 == 0;
  }

  v21 = [(CAMPriorityNotificationCenter *)self _entriesByName:v12 forPriority:a4 creatingEmptyIfNeeded:1];
  v22 = [[CAMPriorityNotificationCenterEntry alloc] initWithObserver:v14 selector:a5 object:v13];

  [v21 addObject:v22];
  if (v18)
  {
    v23 = os_log_create("com.apple.camera", "PriorityNotificationCenter");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      [CAMPriorityNotificationCenter _mutexQueue_addObserver:v12 priority:v23 selector:? name:? object:?];
    }

    v24 = [(CAMPriorityNotificationCenter *)self _notificationCenter];
    [v24 addObserver:self selector:sel__notificationReceiver_ name:v12 object:0];
  }
}

- (void)_removeObserver:(id)a3 fromObserversByName:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(CAMPriorityNotificationCenter *)self _mutexQueue];
  dispatch_assert_queue_V2(v8);

  v23 = v7;
  [v7 allKeys];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v31 = 0u;
  v22 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v22)
  {
    v21 = *v29;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        v11 = [v23 objectForKey:v10];
        v12 = objc_alloc_init(MEMORY[0x1E696AD50]);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v13 = v11;
        v14 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = 0;
          v17 = *v25;
          do
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v25 != v17)
              {
                objc_enumerationMutation(v13);
              }

              v19 = [*(*(&v24 + 1) + 8 * j) observer];

              if (v19 == v6)
              {
                [v12 addIndex:v16];
              }

              ++v16;
            }

            v15 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v15);
        }

        [v13 removeObjectsAtIndexes:v12];
        if (![v13 count])
        {
          [v23 removeObjectForKey:v10];
        }
      }

      v22 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v22);
  }
}

- (id)_allSubscriptions
{
  v3 = [(CAMPriorityNotificationCenter *)self _mutexQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CAMPriorityNotificationCenter *)self _observersByNameHighPriority];
  v5 = [v4 allKeys];

  v6 = [(CAMPriorityNotificationCenter *)self _observersByNameNormalPriority];
  v7 = [v6 allKeys];

  v8 = [MEMORY[0x1E695DFA8] setWithArray:v5];
  v9 = [MEMORY[0x1E695DFA8] setWithArray:v7];
  v10 = v8;
  [v10 unionSet:v9];

  return v10;
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(CAMPriorityNotificationCenter *)self _mutexQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__CAMPriorityNotificationCenter_removeObserver___block_invoke;
  v7[3] = &unk_1E76F7960;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)_mutexQueue_removeObserver:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CAMPriorityNotificationCenter *)self _mutexQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CAMPriorityNotificationCenter *)self _allSubscriptions];
  v7 = [(CAMPriorityNotificationCenter *)self _observersByNameHighPriority];
  [(CAMPriorityNotificationCenter *)self _removeObserver:v4 fromObserversByName:v7];

  v8 = [(CAMPriorityNotificationCenter *)self _observersByNameNormalPriority];
  v18 = v4;
  [(CAMPriorityNotificationCenter *)self _removeObserver:v4 fromObserversByName:v8];

  v17 = [(CAMPriorityNotificationCenter *)self _allSubscriptions];
  [v6 minusSet:?];
  v9 = v6;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      v13 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * v13);
        v15 = os_log_create("com.apple.camera", "PriorityNotificationCenter");
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v24 = v14;
          _os_log_debug_impl(&dword_1A3640000, v15, OS_LOG_TYPE_DEBUG, "Unsubscribing from notification %{public}@", buf, 0xCu);
        }

        v16 = [(CAMPriorityNotificationCenter *)self _notificationCenter];
        [v16 removeObserver:self name:v14 object:0];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v11);
  }
}

- (void)_notificationReceiver:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 name];
  v4 = 138543362;
  v5 = v3;
  _os_log_debug_impl(&dword_1A3640000, a2, OS_LOG_TYPE_DEBUG, "Received notification: %{public}@", &v4, 0xCu);
}

- (void)_mutexQueue_addObserver:(uint64_t)a1 priority:(NSObject *)a2 selector:name:object:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_1A3640000, a2, OS_LOG_TYPE_DEBUG, "Subscribing to notification %{public}@", &v2, 0xCu);
}

@end