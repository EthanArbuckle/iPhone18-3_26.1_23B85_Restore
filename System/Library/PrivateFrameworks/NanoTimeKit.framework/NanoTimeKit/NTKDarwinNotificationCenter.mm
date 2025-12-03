@interface NTKDarwinNotificationCenter
+ (id)defaultCenter;
+ (void)postNotification:(id)notification;
- (NTKDarwinNotificationCenter)init;
- (void)_addObserver:(id)observer;
- (void)_registerForNotificationName:(id)name;
- (void)_unregisterForNotificationNameIfNeeded:(id)needed;
- (void)addObserver:(id)observer notificationName:(id)name selector:(SEL)selector;
- (void)addObserver:(id)observer notificationName:(id)name usingBlock:(id)block;
- (void)handleDarwinNotification:(id)notification;
- (void)removeObserver:(id)observer notificationName:(id)name;
@end

@implementation NTKDarwinNotificationCenter

+ (id)defaultCenter
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__NTKDarwinNotificationCenter_defaultCenter__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (defaultCenter_onceToken != -1)
  {
    dispatch_once(&defaultCenter_onceToken, block);
  }

  v2 = defaultCenter_instance;

  return v2;
}

void __44__NTKDarwinNotificationCenter_defaultCenter__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = defaultCenter_instance;
  defaultCenter_instance = v1;
}

- (NTKDarwinNotificationCenter)init
{
  v3.receiver = self;
  v3.super_class = NTKDarwinNotificationCenter;
  result = [(NTKDarwinNotificationCenter *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

+ (void)postNotification:(id)notification
{
  name = notification;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, name, 0, 0, 1u);
}

- (void)addObserver:(id)observer notificationName:(id)name usingBlock:(id)block
{
  observerCopy = observer;
  nameCopy = name;
  blockCopy = block;
  os_unfair_lock_lock(&self->_lock);
  if (observerCopy && nameCopy)
  {
    [(NTKDarwinNotificationCenter *)self _registerForNotificationName:nameCopy];
    v10 = objc_opt_new();
    [v10 setNotificationName:nameCopy];
    [v10 setObserverObject:observerCopy];
    [v10 setBlock:blockCopy];
    [(NTKDarwinNotificationCenter *)self _addObserver:v10];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)addObserver:(id)observer notificationName:(id)name selector:(SEL)selector
{
  observerCopy = observer;
  nameCopy = name;
  os_unfair_lock_lock(&self->_lock);
  if (observerCopy && nameCopy && selector)
  {
    [(NTKDarwinNotificationCenter *)self _registerForNotificationName:nameCopy];
    v9 = objc_opt_new();
    [v9 setNotificationName:nameCopy];
    [v9 setObserverObject:observerCopy];
    [v9 setSelector:selector];
    [(NTKDarwinNotificationCenter *)self _addObserver:v9];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObserver:(id)observer notificationName:(id)name
{
  v48 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  nameCopy = name;
  os_unfair_lock_lock(&self->_lock);
  if (observerCopy)
  {
    if (nameCopy)
    {
      observersByNotificationName = [(NTKDarwinNotificationCenter *)self observersByNotificationName];
      v9 = [observersByNotificationName objectForKeyedSubscript:nameCopy];

      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v41 objects:v47 count:16];
      obj = v10;
      if (v11)
      {
        v12 = v11;
        v13 = *v42;
LABEL_5:
        v14 = 0;
        while (1)
        {
          if (*v42 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v41 + 1) + 8 * v14);
          observerObject = [v15 observerObject];

          if (observerObject == observerCopy)
          {
            break;
          }

          if (v12 == ++v14)
          {
            v12 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
            if (v12)
            {
              goto LABEL_5;
            }

            v10 = obj;
            goto LABEL_14;
          }
        }

        v10 = v15;

        if (!v10)
        {
          goto LABEL_15;
        }

        [obj removeObject:v10];
      }

LABEL_14:

LABEL_15:
      [(NTKDarwinNotificationCenter *)self _unregisterForNotificationNameIfNeeded:nameCopy];
    }

    else
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      observersByNotificationName2 = [(NTKDarwinNotificationCenter *)self observersByNotificationName];
      allValues = [observersByNotificationName2 allValues];

      obj = allValues;
      v32 = [allValues countByEnumeratingWithState:&v37 objects:v46 count:16];
      if (v32)
      {
        v29 = 0;
        v31 = *v38;
        do
        {
          for (i = 0; i != v32; ++i)
          {
            if (*v38 != v31)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v37 + 1) + 8 * i);
            v33 = 0u;
            v34 = 0u;
            v35 = 0u;
            v36 = 0u;
            v21 = [v20 copy];
            v22 = [v21 countByEnumeratingWithState:&v33 objects:v45 count:16];
            if (v22)
            {
              v23 = v22;
              v24 = *v34;
              do
              {
                for (j = 0; j != v23; ++j)
                {
                  if (*v34 != v24)
                  {
                    objc_enumerationMutation(v21);
                  }

                  v26 = *(*(&v33 + 1) + 8 * j);
                  observerObject2 = [v26 observerObject];

                  if (observerObject2 == observerCopy)
                  {
                    [v20 removeObject:v26];
                    notificationName = [v26 notificationName];
                    [(NTKDarwinNotificationCenter *)self _unregisterForNotificationNameIfNeeded:notificationName];
                  }
                }

                v23 = [v21 countByEnumeratingWithState:&v33 objects:v45 count:16];
              }

              while (v23);
            }
          }

          v32 = [obj countByEnumeratingWithState:&v37 objects:v46 count:16];
        }

        while (v32);
        nameCopy = v29;
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)handleDarwinNotification:(id)notification
{
  v25 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  os_unfair_lock_lock(&self->_lock);
  observersByNotificationName = [(NTKDarwinNotificationCenter *)self observersByNotificationName];
  v6 = [observersByNotificationName objectForKeyedSubscript:notificationCopy];

  v7 = [v6 copy];
  os_unfair_lock_unlock(&self->_lock);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      v12 = 0;
      do
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * v12);
        observerObject = [v13 observerObject];

        if (observerObject)
        {
          block = [v13 block];

          if (block)
          {
            block2 = [v13 block];
            block2[2]();
LABEL_9:

            goto LABEL_11;
          }

          selector = [v13 selector];
          if (selector)
          {
            v18 = selector;
            block2 = [v13 observerObject];
            if (objc_opt_respondsToSelector())
            {
              ([block2 methodForSelector:v18])(block2, v18);
            }

            goto LABEL_9;
          }
        }

        else
        {
          os_unfair_lock_lock(&self->_lock);
          [v6 removeObject:v13];
          [(NTKDarwinNotificationCenter *)self _unregisterForNotificationNameIfNeeded:notificationCopy];
          os_unfair_lock_unlock(&self->_lock);
        }

LABEL_11:
        ++v12;
      }

      while (v10 != v12);
      v19 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      v10 = v19;
    }

    while (v19);
  }
}

- (void)_addObserver:(id)observer
{
  observerCopy = observer;
  observersByNotificationName = [(NTKDarwinNotificationCenter *)self observersByNotificationName];

  if (!observersByNotificationName)
  {
    v5 = objc_opt_new();
    [(NTKDarwinNotificationCenter *)self setObserversByNotificationName:v5];
  }

  observersByNotificationName2 = [(NTKDarwinNotificationCenter *)self observersByNotificationName];
  notificationName = [observerCopy notificationName];
  v8 = [observersByNotificationName2 objectForKeyedSubscript:notificationName];

  if (!v8)
  {
    v8 = objc_opt_new();
    observersByNotificationName3 = [(NTKDarwinNotificationCenter *)self observersByNotificationName];
    notificationName2 = [observerCopy notificationName];
    [observersByNotificationName3 setObject:v8 forKeyedSubscript:notificationName2];
  }

  [v8 removeObject:observerCopy];
  [v8 addObject:observerCopy];
}

- (void)_registerForNotificationName:(id)name
{
  name = name;
  observersByNotificationName = [(NTKDarwinNotificationCenter *)self observersByNotificationName];
  v5 = [observersByNotificationName objectForKeyedSubscript:name];

  if (!v5)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _handleDarwinNotification, name, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }
}

- (void)_unregisterForNotificationNameIfNeeded:(id)needed
{
  name = needed;
  observersByNotificationName = [(NTKDarwinNotificationCenter *)self observersByNotificationName];
  v5 = [observersByNotificationName objectForKeyedSubscript:name];
  v6 = [v5 count];

  if (!v6)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, name, 0);
  }
}

@end