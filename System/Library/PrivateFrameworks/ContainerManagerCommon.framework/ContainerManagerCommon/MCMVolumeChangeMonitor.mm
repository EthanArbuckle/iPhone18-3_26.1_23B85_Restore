@interface MCMVolumeChangeMonitor
- (BOOL)started;
- (MCMVolumeChangeMonitor)initWithWorkloop:(id)a3 mountPointURL:(id)a4;
- (NSHashTable)observers;
- (NSURL)mountPointURL;
- (OS_dispatch_queue)notificationQueue;
- (id)_volumesToMonitor;
- (unint64_t)_changeEventStart:(unint64_t)a3 end:(unint64_t)a4 targetActiveState:(unint64_t)a5 fromOldState:(unint64_t)a6 newState:(unint64_t)a7;
- (unint64_t)state;
- (void)_callbackWithVolume:(unsigned int)a3 notificationType:(unsigned int)a4 margs:(void *)a5;
- (void)_notifyObserver:(id)a3 events:(unint64_t)a4 newVolumeState:(unint64_t)a5;
- (void)_notifyObserversIfNeededWithOldState:(unint64_t)a3 newState:(unint64_t)a4;
- (void)_notifyObserversOfEvents:(unint64_t)a3 newVolumeState:(unint64_t)a4;
- (void)addVolumeChangeObserver:(id)a3;
- (void)dealloc;
- (void)removeVolumeChangeObserver:(id)a3;
- (void)setStarted:(BOOL)a3;
- (void)setState:(unint64_t)a3;
- (void)start;
@end

@implementation MCMVolumeChangeMonitor

- (void)setState:(unint64_t)a3
{
  v4 = *MEMORY[0x1E69E9840];
  self->_state = a3;
  v3 = *MEMORY[0x1E69E9840];
}

- (unint64_t)state
{
  result = self->_state;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSHashTable)observers
{
  result = self->_observers;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)setStarted:(BOOL)a3
{
  v4 = *MEMORY[0x1E69E9840];
  self->_started = a3;
  v3 = *MEMORY[0x1E69E9840];
}

- (BOOL)started
{
  result = self->_started;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (OS_dispatch_queue)notificationQueue
{
  result = self->_notificationQueue;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSURL)mountPointURL
{
  result = self->_mountPointURL;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (id)_volumesToMonitor
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DFA8] set];
  BootDevice = APFSContainerGetBootDevice();
  if (BootDevice)
  {
    v4 = BootDevice;
    v5 = container_log_handle_for_category();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v25 = mach_error_string(v4);
      _os_log_error_impl(&dword_1DF2C3000, v5, OS_LOG_TYPE_ERROR, "APFSContainerGetBootDevice failed; error = %s", buf, 0xCu);
    }
  }

  else
  {
    v5 = 0;
    v18 = 0;
    [0 UTF8String];
    v6 = APFSVolumeRoleFind();
    if (v6)
    {
      v7 = v6;
      v8 = container_log_handle_for_category();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v25 = mach_error_string(v7);
        _os_log_error_impl(&dword_1DF2C3000, v8, OS_LOG_TYPE_ERROR, "APFSVolumeRoleFind failed; error = %s", buf, 0xCu);
      }
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v8 = 0;
      v9 = [v8 countByEnumeratingWithState:&v20 objects:v19 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v21;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v21 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = [*(*(&v20 + 1) + 8 * i) substringFromIndex:{5, v18}];
            [v2 addObject:v13];
          }

          v10 = [v8 countByEnumeratingWithState:&v20 objects:v19 count:16];
        }

        while (v10);
      }
    }
  }

  if (![v2 count])
  {
    v14 = container_log_handle_for_category();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1DF2C3000, v14, OS_LOG_TYPE_ERROR, "No volumes to monitor", buf, 2u);
    }
  }

  v15 = [v2 copy];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (unint64_t)_changeEventStart:(unint64_t)a3 end:(unint64_t)a4 targetActiveState:(unint64_t)a5 fromOldState:(unint64_t)a6 newState:(unint64_t)a7
{
  if ((a7 & a5) != 0)
  {
    a4 = a3;
  }

  if (((a7 ^ a6) & a5) != 0)
  {
    result = a4;
  }

  else
  {
    result = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_notifyObserver:(id)a3 events:(unint64_t)a4 newVolumeState:(unint64_t)a5
{
  v15 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [v7 volumeChangedDispatchQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64__MCMVolumeChangeMonitor__notifyObserver_events_newVolumeState___block_invoke;
  v11[3] = &unk_1E86B0510;
  v12 = v7;
  v13 = a4;
  v14 = a5;
  v9 = v7;
  dispatch_async(v8, v11);

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __64__MCMVolumeChangeMonitor__notifyObserver_events_newVolumeState___block_invoke(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];

  return [v2 volumeChangedWithEvents:v3 newVolumeState:v4];
}

- (void)_notifyObserversOfEvents:(unint64_t)a3 newVolumeState:(unint64_t)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = [(MCMVolumeChangeMonitor *)self observers];
  objc_sync_enter(v7);
  v8 = [(MCMVolumeChangeMonitor *)self observers];
  v9 = [v8 copy];

  objc_sync_exit(v7);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v15 count:16];
  if (v11)
  {
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v10);
        }

        [(MCMVolumeChangeMonitor *)self _notifyObserver:*(*(&v16 + 1) + 8 * v13++) events:a3 newVolumeState:a4];
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v16 objects:v15 count:16];
    }

    while (v11);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_notifyObserversIfNeededWithOldState:(unint64_t)a3 newState:(unint64_t)a4
{
  v12 = *MEMORY[0x1E69E9840];
  if (a3 == a4)
  {
    v4 = *MEMORY[0x1E69E9840];
    v5 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v9 = [(MCMVolumeChangeMonitor *)self _changeEventStart:1 end:2 targetActiveState:1 fromOldState:a3 newState:a4];
    v10 = [(MCMVolumeChangeMonitor *)self _changeEventStart:4 end:8 targetActiveState:2 fromOldState:a3 newState:a4];
    v11 = *MEMORY[0x1E69E9840];

    [(MCMVolumeChangeMonitor *)self _notifyObserversOfEvents:v10 | v9 newVolumeState:a4];
  }
}

- (void)_callbackWithVolume:(unsigned int)a3 notificationType:(unsigned int)a4 margs:(void *)a5
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = self;
  objc_sync_enter(v6);
  v7 = [(MCMVolumeChangeMonitor *)v6 state];
  v8 = v7;
  v9 = v7 & 0xFFFFFFFFFFFFFFFDLL;
  if (a4 != -536330229)
  {
    v9 = v7;
  }

  if (a4 == -536330230)
  {
    v10 = v7 | 2;
  }

  else
  {
    v10 = v9;
  }

  v11 = v7 & 0xFFFFFFFFFFFFFFFELL;
  if (a4 != -536330233)
  {
    v11 = v7;
  }

  if (a4 == -536330234)
  {
    v12 = v7 | 1;
  }

  else
  {
    v12 = v11;
  }

  if (a4 <= -536330231)
  {
    v13 = v12;
  }

  else
  {
    v13 = v10;
  }

  [(MCMVolumeChangeMonitor *)v6 setState:v13];
  objc_sync_exit(v6);

  v14 = *MEMORY[0x1E69E9840];

  [(MCMVolumeChangeMonitor *)v6 _notifyObserversIfNeededWithOldState:v8 newState:v13];
}

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  notifier = self->_notifier;
  if (notifier)
  {
    IOObjectRelease(notifier);
  }

  v5.receiver = self;
  v5.super_class = MCMVolumeChangeMonitor;
  [(MCMVolumeChangeMonitor *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)start
{
  v36 = *MEMORY[0x1E69E9840];
  if (![(MCMVolumeChangeMonitor *)self started])
  {
    [(MCMVolumeChangeMonitor *)self setStarted:1];
    v3 = [(MCMVolumeChangeMonitor *)self _volumesToMonitor];
    v4 = *MEMORY[0x1E696CD60];
    v5 = IONotificationPortCreate(*MEMORY[0x1E696CD60]);
    if (!v5)
    {
      v34 = 0u;
      v35 = 0u;
      v33 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v30 = 134217984;
      v31 = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v6 = v5;
    v7 = [(MCMVolumeChangeMonitor *)self notificationQueue];
    IONotificationPortSetDispatchQueue(v6, v7);

    v8 = container_log_handle_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *&buf[4] = v3;
      _os_log_debug_impl(&dword_1DF2C3000, v8, OS_LOG_TYPE_DEBUG, "Monitoring [%@]", buf, 0xCu);
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = v3;
    v9 = [obj countByEnumeratingWithState:&v26 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v27;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v26 + 1) + 8 * i);
          v14 = IOBSDNameMatching(v4, 0, [v13 UTF8String]);
          MatchingService = IOServiceGetMatchingService(v4, v14);
          if (MatchingService)
          {
            v16 = MatchingService;
            if (IOObjectConformsTo(MatchingService, "AppleAPFSVolume"))
            {
              v17 = v6;
              v18 = IOServiceAddInterestNotification(v6, v16, "IOGeneralInterest", _MCMVolumeChangeMonitorCallback, self, &self->_notifier);
              v19 = container_log_handle_for_category();
              v20 = v19;
              if (v18)
              {
                if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
                {
                  v21 = mach_error_string(v18);
                  *buf = 138412546;
                  *&buf[4] = v13;
                  *&buf[12] = 2080;
                  *&buf[14] = v21;
                  _os_log_error_impl(&dword_1DF2C3000, v20, OS_LOG_TYPE_ERROR, "failed to register volume interest notification for: %@ with error: %s", buf, 0x16u);
                }
              }

              else if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                *&buf[4] = v13;
                _os_log_debug_impl(&dword_1DF2C3000, v20, OS_LOG_TYPE_DEBUG, "registered volume interest notification for: %@", buf, 0xCu);
              }

              v6 = v17;
            }

            else
            {
              v20 = container_log_handle_for_category();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                *&buf[4] = v13;
                _os_log_error_impl(&dword_1DF2C3000, v20, OS_LOG_TYPE_ERROR, "unable to monitor: %@ for freeze notifications, not an APFS volume", buf, 0xCu);
              }
            }

            IOObjectRelease(v16);
          }

          else
          {
            v22 = container_log_handle_for_category();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = v13;
              _os_log_error_impl(&dword_1DF2C3000, v22, OS_LOG_TYPE_ERROR, "failed to find IOKit object for volume: %@", buf, 0xCu);
            }
          }
        }

        v10 = [obj countByEnumeratingWithState:&v26 objects:v25 count:16];
      }

      while (v10);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)removeVolumeChangeObserver:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v4 = [(MCMVolumeChangeMonitor *)self observers];
  objc_sync_enter(v4);
  v5 = [(MCMVolumeChangeMonitor *)self observers];
  [v5 removeObject:v7];

  objc_sync_exit(v4);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)addVolumeChangeObserver:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v4 = [(MCMVolumeChangeMonitor *)self observers];
  objc_sync_enter(v4);
  v5 = [(MCMVolumeChangeMonitor *)self observers];
  [v5 addObject:v7];

  objc_sync_exit(v4);
  v6 = *MEMORY[0x1E69E9840];
}

- (MCMVolumeChangeMonitor)initWithWorkloop:(id)a3 mountPointURL:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = MCMVolumeChangeMonitor;
  v8 = [(MCMVolumeChangeMonitor *)&v17 init];
  if (v8)
  {
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_attr_make_with_qos_class(v9, QOS_CLASS_USER_INTERACTIVE, 0);

    v11 = dispatch_queue_create_with_target_V2("com.apple.containermanagerd.volume_change_notification", v10, v6);
    notificationQueue = v8->_notificationQueue;
    v8->_notificationQueue = v11;

    v13 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v8->_observers;
    v8->_observers = v13;

    objc_storeStrong(&v8->_mountPointURL, a4);
    v8->_state = 0;
    v8->_notifier = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v8;
}

@end