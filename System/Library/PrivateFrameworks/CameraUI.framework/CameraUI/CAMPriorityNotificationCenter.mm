@interface CAMPriorityNotificationCenter
+ (id)defaultCenter;
- (CAMPriorityNotificationCenter)init;
- (id)_allSubscriptions;
- (id)_entriesByName:(id)name forPriority:(unint64_t)priority creatingEmptyIfNeeded:(BOOL)needed;
- (id)_observersForPriority:(unint64_t)priority;
- (void)_mutexQueue_addObserver:(id)observer priority:(unint64_t)priority selector:(SEL)selector name:(id)name object:(id)object;
- (void)_mutexQueue_removeObserver:(id)observer;
- (void)_notificationReceiver:(id)receiver;
- (void)_postNotification:(id)notification forEntries:(id)entries;
- (void)_removeObserver:(id)observer fromObserversByName:(id)name;
- (void)addObserver:(id)observer priority:(unint64_t)priority selector:(SEL)selector name:(id)name object:(id)object;
- (void)dealloc;
- (void)removeObserver:(id)observer;
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
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    notificationCenter = v2->__notificationCenter;
    v2->__notificationCenter = defaultCenter;

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

- (void)_postNotification:(id)notification forEntries:(id)entries
{
  v56 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = entries;
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
        observer = [v9 observer];
        objc_initWeak(&location, observer);

        selector = [v9 selector];
        object = [v9 object];
        if (!object || ([notificationCopy object], v13 = objc_claimAutoreleasedReturnValue(), v14 = object == v13, v13, v14))
        {
          v21 = objc_loadWeakRetained(&location);
          v22 = objc_opt_respondsToSelector();

          if (v22)
          {
            v23 = objc_loadWeakRetained(&location);
            v24 = [v23 methodForSelector:selector];

            v15 = os_log_create("com.apple.camera", "PriorityNotificationCenter");
            v25 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
            if (v24)
            {
              if (v25)
              {
                name = [notificationCopy name];
                v29 = objc_loadWeakRetained(&location);
                v30 = objc_opt_class();
                v36 = v30;
                v31 = objc_loadWeakRetained(&location);
                *buf = v35;
                v46 = name;
                v47 = 2114;
                v48 = v30;
                v49 = 2048;
                v50 = v31;
                v51 = 2048;
                v52 = object;
                _os_log_debug_impl(&dword_1A3640000, v15, OS_LOG_TYPE_DEBUG, "Forwarding notification %{public}@ to <%{public}@: %p>/%p", buf, 0x2Au);
              }

              v15 = objc_loadWeakRetained(&location);
              v24(v15, selector, notificationCopy);
            }

            else if (v25)
            {
              v32 = objc_loadWeakRetained(&location);
              v33 = objc_opt_class();
              name2 = [notificationCopy name];
              *buf = 138543618;
              v46 = v33;
              v47 = 2114;
              v48 = name2;
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
              name3 = [notificationCopy name];
              *buf = 138543618;
              v46 = v27;
              v47 = 2114;
              v48 = name3;
              _os_log_debug_impl(&dword_1A3640000, v15, OS_LOG_TYPE_DEBUG, "Observer %{public}@ does not have a compatible selector for receiving notifications for %{public}@!", buf, 0x16u);
            }
          }
        }

        else
        {
          v15 = os_log_create("com.apple.camera", "PriorityNotificationCenter");
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            name4 = [notificationCopy name];
            v17 = objc_loadWeakRetained(&location);
            v18 = objc_opt_class();
            v19 = objc_loadWeakRetained(&location);
            object2 = [notificationCopy object];
            *buf = 138544386;
            v46 = name4;
            v47 = 2114;
            v48 = v18;
            v49 = 2048;
            v50 = v19;
            v51 = 2048;
            v52 = object;
            v53 = 2048;
            v54 = object2;
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

- (void)_notificationReceiver:(id)receiver
{
  receiverCopy = receiver;
  v5 = objc_autoreleasePoolPush();
  name = [receiverCopy name];
  v7 = os_log_create("com.apple.camera", "PriorityNotificationCenter");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(CAMPriorityNotificationCenter *)receiverCopy _notificationReceiver:v7];
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
  _mutexQueue = [(CAMPriorityNotificationCenter *)self _mutexQueue];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __55__CAMPriorityNotificationCenter__notificationReceiver___block_invoke;
  v15 = &unk_1E76FA660;
  v18 = &v26;
  selfCopy = self;
  v9 = name;
  v17 = v9;
  v19 = &v20;
  dispatch_sync(_mutexQueue, &v12);

  if ([v27[5] count])
  {
    v10 = os_log_create("com.apple.camera", "PriorityNotificationCenter");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [CAMPriorityNotificationCenter _notificationReceiver:v10];
    }

    [(CAMPriorityNotificationCenter *)self _postNotification:receiverCopy forEntries:v27[5]];
  }

  if ([v21[5] count])
  {
    v11 = os_log_create("com.apple.camera", "PriorityNotificationCenter");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [CAMPriorityNotificationCenter _notificationReceiver:v11];
    }

    [(CAMPriorityNotificationCenter *)self _postNotification:receiverCopy forEntries:v21[5]];
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

- (id)_observersForPriority:(unint64_t)priority
{
  _mutexQueue = [(CAMPriorityNotificationCenter *)self _mutexQueue];
  dispatch_assert_queue_V2(_mutexQueue);

  if (priority == 1)
  {
    _observersByNameNormalPriority = [(CAMPriorityNotificationCenter *)self _observersByNameNormalPriority];
  }

  else if (!priority)
  {
    _observersByNameNormalPriority = [(CAMPriorityNotificationCenter *)self _observersByNameHighPriority];
  }

  return _observersByNameNormalPriority;
}

- (id)_entriesByName:(id)name forPriority:(unint64_t)priority creatingEmptyIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  nameCopy = name;
  _mutexQueue = [(CAMPriorityNotificationCenter *)self _mutexQueue];
  dispatch_assert_queue_V2(_mutexQueue);

  v10 = [(CAMPriorityNotificationCenter *)self _observersForPriority:priority];
  v11 = [v10 objectForKey:nameCopy];
  if (!v11 && neededCopy)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v10 setValue:v11 forKey:nameCopy];
  }

  return v11;
}

- (void)addObserver:(id)observer priority:(unint64_t)priority selector:(SEL)selector name:(id)name object:(id)object
{
  observerCopy = observer;
  nameCopy = name;
  objectCopy = object;
  _mutexQueue = [(CAMPriorityNotificationCenter *)self _mutexQueue];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __75__CAMPriorityNotificationCenter_addObserver_priority_selector_name_object___block_invoke;
  v19[3] = &unk_1E76FA688;
  v19[4] = self;
  v20 = observerCopy;
  priorityCopy = priority;
  selectorCopy = selector;
  v21 = nameCopy;
  v22 = objectCopy;
  v16 = objectCopy;
  v17 = nameCopy;
  v18 = observerCopy;
  dispatch_sync(_mutexQueue, v19);
}

- (void)_mutexQueue_addObserver:(id)observer priority:(unint64_t)priority selector:(SEL)selector name:(id)name object:(id)object
{
  nameCopy = name;
  objectCopy = object;
  observerCopy = observer;
  _mutexQueue = [(CAMPriorityNotificationCenter *)self _mutexQueue];
  dispatch_assert_queue_V2(_mutexQueue);

  _observersByNameHighPriority = [(CAMPriorityNotificationCenter *)self _observersByNameHighPriority];
  v17 = [_observersByNameHighPriority objectForKey:nameCopy];
  if (v17)
  {
    v18 = 0;
  }

  else
  {
    _observersByNameNormalPriority = [(CAMPriorityNotificationCenter *)self _observersByNameNormalPriority];
    v20 = [_observersByNameNormalPriority objectForKey:nameCopy];
    v18 = v20 == 0;
  }

  v21 = [(CAMPriorityNotificationCenter *)self _entriesByName:nameCopy forPriority:priority creatingEmptyIfNeeded:1];
  v22 = [[CAMPriorityNotificationCenterEntry alloc] initWithObserver:observerCopy selector:selector object:objectCopy];

  [v21 addObject:v22];
  if (v18)
  {
    v23 = os_log_create("com.apple.camera", "PriorityNotificationCenter");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      [CAMPriorityNotificationCenter _mutexQueue_addObserver:nameCopy priority:v23 selector:? name:? object:?];
    }

    _notificationCenter = [(CAMPriorityNotificationCenter *)self _notificationCenter];
    [_notificationCenter addObserver:self selector:sel__notificationReceiver_ name:nameCopy object:0];
  }
}

- (void)_removeObserver:(id)observer fromObserversByName:(id)name
{
  v34 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  nameCopy = name;
  _mutexQueue = [(CAMPriorityNotificationCenter *)self _mutexQueue];
  dispatch_assert_queue_V2(_mutexQueue);

  v23 = nameCopy;
  [nameCopy allKeys];
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

              observer = [*(*(&v24 + 1) + 8 * j) observer];

              if (observer == observerCopy)
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
  _mutexQueue = [(CAMPriorityNotificationCenter *)self _mutexQueue];
  dispatch_assert_queue_V2(_mutexQueue);

  _observersByNameHighPriority = [(CAMPriorityNotificationCenter *)self _observersByNameHighPriority];
  allKeys = [_observersByNameHighPriority allKeys];

  _observersByNameNormalPriority = [(CAMPriorityNotificationCenter *)self _observersByNameNormalPriority];
  allKeys2 = [_observersByNameNormalPriority allKeys];

  v8 = [MEMORY[0x1E695DFA8] setWithArray:allKeys];
  v9 = [MEMORY[0x1E695DFA8] setWithArray:allKeys2];
  v10 = v8;
  [v10 unionSet:v9];

  return v10;
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  _mutexQueue = [(CAMPriorityNotificationCenter *)self _mutexQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__CAMPriorityNotificationCenter_removeObserver___block_invoke;
  v7[3] = &unk_1E76F7960;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(_mutexQueue, v7);
}

- (void)_mutexQueue_removeObserver:(id)observer
{
  v26 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  _mutexQueue = [(CAMPriorityNotificationCenter *)self _mutexQueue];
  dispatch_assert_queue_V2(_mutexQueue);

  _allSubscriptions = [(CAMPriorityNotificationCenter *)self _allSubscriptions];
  _observersByNameHighPriority = [(CAMPriorityNotificationCenter *)self _observersByNameHighPriority];
  [(CAMPriorityNotificationCenter *)self _removeObserver:observerCopy fromObserversByName:_observersByNameHighPriority];

  _observersByNameNormalPriority = [(CAMPriorityNotificationCenter *)self _observersByNameNormalPriority];
  v18 = observerCopy;
  [(CAMPriorityNotificationCenter *)self _removeObserver:observerCopy fromObserversByName:_observersByNameNormalPriority];

  _allSubscriptions2 = [(CAMPriorityNotificationCenter *)self _allSubscriptions];
  [_allSubscriptions minusSet:?];
  v9 = _allSubscriptions;
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

        _notificationCenter = [(CAMPriorityNotificationCenter *)self _notificationCenter];
        [_notificationCenter removeObserver:self name:v14 object:0];

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