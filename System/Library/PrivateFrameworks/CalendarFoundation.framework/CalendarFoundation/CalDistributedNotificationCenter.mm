@interface CalDistributedNotificationCenter
+ (id)defaultCenter;
+ (void)_addHandler:(id)handler toObserver:(id)observer;
+ (void)_clearHandlersForObserver:(id)observer;
+ (void)_handleNotification:(id)notification;
+ (void)_removeHandler:(id)handler fromObserver:(id)observer;
+ (void)addObserver:(id)observer selector:(SEL)selector name:(id)name;
+ (void)removeObserver:(id)observer;
+ (void)removeObserver:(id)observer name:(id)name;
- (CalDistributedNotificationCenter)init;
@end

@implementation CalDistributedNotificationCenter

+ (id)defaultCenter
{
  if (defaultCenter_onceToken != -1)
  {
    +[CalDistributedNotificationCenter defaultCenter];
  }

  v3 = defaultCenter_center;

  return v3;
}

uint64_t __49__CalDistributedNotificationCenter_defaultCenter__block_invoke()
{
  defaultCenter_center = objc_alloc_init(CalDistributedNotificationCenter);

  return MEMORY[0x1EEE66BB8]();
}

- (CalDistributedNotificationCenter)init
{
  v6.receiver = self;
  v6.super_class = CalDistributedNotificationCenter;
  v2 = [(CalDistributedNotificationCenter *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    handlers = v2->_handlers;
    v2->_handlers = v3;
  }

  return v2;
}

+ (void)addObserver:(id)observer selector:(SEL)selector name:(id)name
{
  name = name;
  observerCopy = observer;
  v9 = +[CalDistributedNotificationCenter defaultCenter];
  v10 = [[CalDistributedNotificationHandler alloc] initWithObserver:observerCopy selector:selector];
  os_unfair_lock_lock(&handlersLock);
  [self _addHandler:v10 toObserver:observerCopy];

  handlers = [v9 handlers];
  v12 = [handlers objectForKeyedSubscript:name];
  if (!v12)
  {
    v12 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:5 capacity:1];
    [handlers setObject:v12 forKeyedSubscript:name];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, +[CalDistributedNotificationCenter defaultCenter], _notificationCallback, name, 0, 0);
  }

  [v12 addObject:v10];

  os_unfair_lock_unlock(&handlersLock);
}

+ (void)removeObserver:(id)observer
{
  v46 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  v5 = +[CalDistributedNotificationCenter defaultCenter];
  context = objc_autoreleasePoolPush();
  center = CFNotificationCenterGetDarwinNotifyCenter();
  os_unfair_lock_lock(&handlersLock);
  [self _clearHandlersForObserver:observerCopy];
  v25 = v5;
  [v5 handlers];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v30 = v42 = 0u;
  obj = [v30 allKeys];
  v29 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v29)
  {
    v28 = *v40;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v40 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v39 + 1) + 8 * i);
        v8 = [v30 objectForKeyedSubscript:v7];
        v9 = objc_opt_new();
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        allObjects = [v8 allObjects];
        v11 = [allObjects countByEnumeratingWithState:&v35 objects:v44 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v36;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v36 != v13)
              {
                objc_enumerationMutation(allObjects);
              }

              v15 = *(*(&v35 + 1) + 8 * j);
              observer = [v15 observer];
              if (observer)
              {
                v17 = observer == observerCopy;
              }

              else
              {
                v17 = 1;
              }

              if (v17)
              {
                [v9 addObject:v15];
              }
            }

            v12 = [allObjects countByEnumeratingWithState:&v35 objects:v44 count:16];
          }

          while (v12);
        }

        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v18 = v9;
        v19 = [v18 countByEnumeratingWithState:&v31 objects:v43 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v32;
          do
          {
            for (k = 0; k != v20; ++k)
            {
              if (*v32 != v21)
              {
                objc_enumerationMutation(v18);
              }

              [v8 removeObject:*(*(&v31 + 1) + 8 * k)];
            }

            v20 = [v18 countByEnumeratingWithState:&v31 objects:v43 count:16];
          }

          while (v20);
        }

        if (![v8 count])
        {
          [v30 removeObjectForKey:v7];
          CFNotificationCenterRemoveObserver(center, +[CalDistributedNotificationCenter defaultCenter], v7, 0);
        }
      }

      v29 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v29);
  }

  os_unfair_lock_unlock(&handlersLock);
  objc_autoreleasePoolPop(context);

  v23 = *MEMORY[0x1E69E9840];
}

+ (void)removeObserver:(id)observer name:(id)name
{
  v42 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  nameCopy = name;
  v8 = +[CalDistributedNotificationCenter defaultCenter];
  context = objc_autoreleasePoolPush();
  center = CFNotificationCenterGetDarwinNotifyCenter();
  os_unfair_lock_lock(&handlersLock);
  v30 = v8;
  handlers = [v8 handlers];
  v31 = nameCopy;
  v10 = [handlers objectForKeyedSubscript:nameCopy];
  v11 = objc_opt_new();
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  allObjects = [v10 allObjects];
  v13 = [allObjects countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v37;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v37 != v15)
        {
          objc_enumerationMutation(allObjects);
        }

        v17 = *(*(&v36 + 1) + 8 * i);
        observer = [v17 observer];
        if (observer)
        {
          v19 = observer == observerCopy;
        }

        else
        {
          v19 = 1;
        }

        if (v19)
        {
          [self _removeHandler:v17 fromObserver:observerCopy];
          [v11 addObject:v17];
        }
      }

      v14 = [allObjects countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v14);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v20 = v11;
  v21 = [v20 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v33;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v33 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [v10 removeObject:{*(*(&v32 + 1) + 8 * j), center}];
      }

      v22 = [v20 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v22);
  }

  allObjects2 = [v10 allObjects];
  v26 = [allObjects2 count];

  if (!v26)
  {
    [handlers removeObjectForKey:v31];
    CFNotificationCenterRemoveObserver(center, v30, v31, 0);
  }

  os_unfair_lock_unlock(&handlersLock);
  objc_autoreleasePoolPop(context);

  v27 = *MEMORY[0x1E69E9840];
}

+ (void)_handleNotification:(id)notification
{
  v21 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v4 = +[CalDistributedNotificationCenter defaultCenter];
  os_unfair_lock_lock(&handlersLock);
  handlers = [v4 handlers];
  v6 = [handlers objectForKeyedSubscript:notificationCopy];

  if (!v6)
  {
    goto LABEL_13;
  }

  allObjects = [v6 allObjects];
  if (![allObjects count])
  {
    handlers2 = [v4 handlers];
    [handlers2 removeObjectForKey:notificationCopy];

    goto LABEL_13;
  }

  if (!allObjects)
  {
LABEL_13:
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, v4, notificationCopy, 0);

    os_unfair_lock_unlock(&handlersLock);
    goto LABEL_14;
  }

  os_unfair_lock_unlock(&handlersLock);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = allObjects;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v16 + 1) + 8 * v12++) handleNotification:{notificationCopy, v16}];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

LABEL_14:
  v15 = *MEMORY[0x1E69E9840];
}

+ (void)_addHandler:(id)handler toObserver:(id)observer
{
  handlerCopy = handler;
  observerCopy = observer;
  os_unfair_lock_assert_owner(&handlersLock);
  v6 = objc_getAssociatedObject(observerCopy, &handlersForObserverKey);
  if (!v6)
  {
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
    objc_setAssociatedObject(observerCopy, &handlersForObserverKey, v6, 1);
  }

  [v6 addObject:handlerCopy];
}

+ (void)_removeHandler:(id)handler fromObserver:(id)observer
{
  handlerCopy = handler;
  observerCopy = observer;
  os_unfair_lock_assert_owner(&handlersLock);
  v7 = objc_getAssociatedObject(observerCopy, &handlersForObserverKey);
  v8 = v7;
  if (v7)
  {
    [v7 removeObject:handlerCopy];
    if (![v8 count])
    {
      [self _clearHandlersForObserver:observerCopy];
    }
  }
}

+ (void)_clearHandlersForObserver:(id)observer
{
  object = observer;
  os_unfair_lock_assert_owner(&handlersLock);
  objc_setAssociatedObject(object, &handlersForObserverKey, 0, 1);
}

@end