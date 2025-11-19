@interface IDSDeviceStateMonitoring
+ (NSMutableDictionary)monitors;
+ (id)sharedInstanceForNotificationName:(id)a3;
- (IDSDeviceStateMonitoring)initWithName:(id)a3 queue:(id)a4;
- (void)dealloc;
- (void)notifyDelegatesAboutNewState:(unint64_t)a3 token:(int)a4;
- (void)registerForStateUpdates:(id)a3 queue:(id)a4;
- (void)unRegisterForStateUpdates:(id)a3;
@end

@implementation IDSDeviceStateMonitoring

+ (NSMutableDictionary)monitors
{
  v2 = qword_1ED5DDF68;
  if (!qword_1ED5DDF68)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = qword_1ED5DDF68;
    qword_1ED5DDF68 = v3;

    v2 = qword_1ED5DDF68;
  }

  return v2;
}

- (void)dealloc
{
  outToken = self->_outToken;
  if (outToken != -1)
  {
    notify_cancel(outToken);
    self->_outToken = -1;
  }

  v4.receiver = self;
  v4.super_class = IDSDeviceStateMonitoring;
  [(IDSDeviceStateMonitoring *)&v4 dealloc];
}

+ (id)sharedInstanceForNotificationName:(id)a3
{
  v3 = a3;
  v4 = +[IDSDeviceStateMonitoring monitors];
  v5 = [v4 objectForKey:v3];

  if (!v5)
  {
    v6 = [IDSDeviceStateMonitoring alloc];
    if (qword_1ED5DDF70 != -1)
    {
      sub_195B3D6D8();
    }

    v5 = [(IDSDeviceStateMonitoring *)v6 initWithName:v3 queue:qword_1ED5DDF78];
    v7 = +[IDSDeviceStateMonitoring monitors];
    [v7 setObject:v5 forKey:v3];
  }

  return v5;
}

- (IDSDeviceStateMonitoring)initWithName:(id)a3 queue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = IDSDeviceStateMonitoring;
  v9 = [(IDSDeviceStateMonitoring *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, a4);
    objc_storeStrong(&v10->_name, a3);
    v10->_outToken = 0;
    v10->_currentState = 0;
    v10->_isMonitoring = 0;
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    delegateArray = v10->_delegateArray;
    v10->_delegateArray = v11;

    v10->_lock._os_unfair_lock_opaque = 0;
  }

  return v10;
}

- (void)registerForStateUpdates:(id)a3 queue:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E69A6128] pairWithFirst:v6 second:v7];
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableArray *)self->_delegateArray addObject:v8];
  os_unfair_lock_unlock(&self->_lock);
  if (!self->_isMonitoring)
  {
    objc_initWeak(&location, self);
    v9 = [(NSString *)self->_name UTF8String];
    queue = self->_queue;
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = sub_195AE4C70;
    v18 = &unk_1E7442890;
    objc_copyWeak(&v19, &location);
    v11 = notify_register_dispatch(v9, &self->_outToken, queue, &v15);
    if (v11)
    {
      v12 = [IDSLogging IDSDevice:v15];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        name = self->_name;
        *buf = 138412546;
        *&buf[4] = name;
        v22 = 1024;
        v23 = v11;
        _os_log_impl(&dword_1959FF000, v12, OS_LOG_TYPE_DEFAULT, "Dispatch registration failed {name: %@, status: %u}", buf, 0x12u);
      }
    }

    else
    {
      self->_isMonitoring = 1;
      *buf = 0;
      notify_get_state(self->_outToken, buf);
      if (self->_currentState != *buf)
      {
        self->_currentState = *buf;
      }
    }

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)notifyDelegatesAboutNewState:(unint64_t)a3 token:(int)a4
{
  v37 = *MEMORY[0x1E69E9840];
  if (self->_currentState != a3)
  {
    self->_currentState = a3;
    os_unfair_lock_lock(&self->_lock);
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v20 = self;
    v6 = self->_delegateArray;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v24 objects:v36 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v25;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v24 + 1) + 8 * i);
          v12 = [v11 first];
          v13 = [v11 second];
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = sub_195AE4F10;
          block[3] = &unk_1E743E6C0;
          v22 = v12;
          v23 = a3;
          v14 = v12;
          dispatch_async(v13, block);
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v24 objects:v36 count:16];
      }

      while (v8);
    }

    os_unfair_lock_unlock(&self->_lock);
    v15 = +[IDSLogging IDSDevice];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      name = self->_name;
      v17 = [(NSMutableArray *)v20->_delegateArray count];
      *buf = 138413058;
      v29 = name;
      v30 = 2048;
      v31 = a3;
      v32 = 1024;
      v33 = a4;
      v34 = 2048;
      v35 = v17;
      _os_log_impl(&dword_1959FF000, v15, OS_LOG_TYPE_DEFAULT, "New state {name: %@, state: %lu, token:%d, delegate count:%lu}", buf, 0x26u);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)unRegisterForStateUpdates:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  delegateArray = self->_delegateArray;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = sub_195AE5030;
  v13 = &unk_1E74428B8;
  v7 = v4;
  v14 = v7;
  v8 = v5;
  v15 = v8;
  [(NSMutableArray *)delegateArray enumerateObjectsUsingBlock:&v10];
  [(NSMutableArray *)self->_delegateArray removeObjectsInArray:v8, v10, v11, v12, v13];
  if (![(NSMutableArray *)self->_delegateArray count])
  {
    v9 = +[IDSDeviceStateMonitoring monitors];
    [v9 removeObjectForKey:self->_name];
  }

  os_unfair_lock_unlock(&self->_lock);
}

@end