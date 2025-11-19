@interface NTKDarwinNotificationCenter
+ (id)defaultCenter;
+ (void)postNotification:(id)a3;
- (NTKDarwinNotificationCenter)init;
- (void)_addObserver:(id)a3;
- (void)_registerForNotificationName:(id)a3;
- (void)_unregisterForNotificationNameIfNeeded:(id)a3;
- (void)addObserver:(id)a3 notificationName:(id)a4 selector:(SEL)a5;
- (void)addObserver:(id)a3 notificationName:(id)a4 usingBlock:(id)a5;
- (void)handleDarwinNotification:(id)a3;
- (void)removeObserver:(id)a3 notificationName:(id)a4;
@end

@implementation NTKDarwinNotificationCenter

+ (id)defaultCenter
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__NTKDarwinNotificationCenter_defaultCenter__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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

+ (void)postNotification:(id)a3
{
  name = a3;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, name, 0, 0, 1u);
}

- (void)addObserver:(id)a3 notificationName:(id)a4 usingBlock:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  os_unfair_lock_lock(&self->_lock);
  if (v11 && v8)
  {
    [(NTKDarwinNotificationCenter *)self _registerForNotificationName:v8];
    v10 = objc_opt_new();
    [v10 setNotificationName:v8];
    [v10 setObserverObject:v11];
    [v10 setBlock:v9];
    [(NTKDarwinNotificationCenter *)self _addObserver:v10];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)addObserver:(id)a3 notificationName:(id)a4 selector:(SEL)a5
{
  v10 = a3;
  v8 = a4;
  os_unfair_lock_lock(&self->_lock);
  if (v10 && v8 && a5)
  {
    [(NTKDarwinNotificationCenter *)self _registerForNotificationName:v8];
    v9 = objc_opt_new();
    [v9 setNotificationName:v8];
    [v9 setObserverObject:v10];
    [v9 setSelector:a5];
    [(NTKDarwinNotificationCenter *)self _addObserver:v9];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObserver:(id)a3 notificationName:(id)a4
{
  v48 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  if (v6)
  {
    if (v7)
    {
      v8 = [(NTKDarwinNotificationCenter *)self observersByNotificationName];
      v9 = [v8 objectForKeyedSubscript:v7];

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
          v16 = [v15 observerObject];

          if (v16 == v6)
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
      [(NTKDarwinNotificationCenter *)self _unregisterForNotificationNameIfNeeded:v7];
    }

    else
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v17 = [(NTKDarwinNotificationCenter *)self observersByNotificationName];
      v18 = [v17 allValues];

      obj = v18;
      v32 = [v18 countByEnumeratingWithState:&v37 objects:v46 count:16];
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
                  v27 = [v26 observerObject];

                  if (v27 == v6)
                  {
                    [v20 removeObject:v26];
                    v28 = [v26 notificationName];
                    [(NTKDarwinNotificationCenter *)self _unregisterForNotificationNameIfNeeded:v28];
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
        v7 = v29;
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)handleDarwinNotification:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NTKDarwinNotificationCenter *)self observersByNotificationName];
  v6 = [v5 objectForKeyedSubscript:v4];

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
        v14 = [v13 observerObject];

        if (v14)
        {
          v15 = [v13 block];

          if (v15)
          {
            v16 = [v13 block];
            v16[2]();
LABEL_9:

            goto LABEL_11;
          }

          v17 = [v13 selector];
          if (v17)
          {
            v18 = v17;
            v16 = [v13 observerObject];
            if (objc_opt_respondsToSelector())
            {
              ([v16 methodForSelector:v18])(v16, v18);
            }

            goto LABEL_9;
          }
        }

        else
        {
          os_unfair_lock_lock(&self->_lock);
          [v6 removeObject:v13];
          [(NTKDarwinNotificationCenter *)self _unregisterForNotificationNameIfNeeded:v4];
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

- (void)_addObserver:(id)a3
{
  v11 = a3;
  v4 = [(NTKDarwinNotificationCenter *)self observersByNotificationName];

  if (!v4)
  {
    v5 = objc_opt_new();
    [(NTKDarwinNotificationCenter *)self setObserversByNotificationName:v5];
  }

  v6 = [(NTKDarwinNotificationCenter *)self observersByNotificationName];
  v7 = [v11 notificationName];
  v8 = [v6 objectForKeyedSubscript:v7];

  if (!v8)
  {
    v8 = objc_opt_new();
    v9 = [(NTKDarwinNotificationCenter *)self observersByNotificationName];
    v10 = [v11 notificationName];
    [v9 setObject:v8 forKeyedSubscript:v10];
  }

  [v8 removeObject:v11];
  [v8 addObject:v11];
}

- (void)_registerForNotificationName:(id)a3
{
  name = a3;
  v4 = [(NTKDarwinNotificationCenter *)self observersByNotificationName];
  v5 = [v4 objectForKeyedSubscript:name];

  if (!v5)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _handleDarwinNotification, name, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }
}

- (void)_unregisterForNotificationNameIfNeeded:(id)a3
{
  name = a3;
  v4 = [(NTKDarwinNotificationCenter *)self observersByNotificationName];
  v5 = [v4 objectForKeyedSubscript:name];
  v6 = [v5 count];

  if (!v6)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, name, 0);
  }
}

@end