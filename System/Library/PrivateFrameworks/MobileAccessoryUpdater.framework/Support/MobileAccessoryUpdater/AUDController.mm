@interface AUDController
- (AUDController)initWithIdleTimeout:(int64_t)timeout;
- (BOOL)initializeController;
- (BOOL)isWorkPending;
- (BOOL)setupXPCStreamsWithPolicies:(id)policies shouldRegister:(BOOL)register;
- (id)loadPolicyForAllPlugins;
- (id)loadPolicyForAllServices;
- (void)beginIdleTimer;
- (void)cancelIdleTimer;
- (void)doDeviceCheck:(int)check;
- (void)handleEAOverHIDXPCStreamEvent:(id)event forFilterName:(id)name;
- (void)handleIdleTimeout;
- (void)handleXPCAPIEvent:(id)event;
- (void)handleXPCStreamEvent:(id)event;
- (void)idleExit;
- (void)initIdleTimer;
- (void)initSignals;
- (void)processAPIDict:(id)dict;
- (void)registerForEAMatchingNotifications;
- (void)registerForNotifydNotification:(id)notification filterName:(id)name;
- (void)setActivityForDeviceIdleLaunch:(BOOL)launch;
- (void)setActivityForPeriodicLaunch:(BOOL)launch;
- (void)setActivityForUARPPeriodicLaunch:(BOOL)launch;
- (void)watchSharedGroup;
@end

@implementation AUDController

- (AUDController)initWithIdleTimeout:(int64_t)timeout
{
  v18.receiver = self;
  v18.super_class = AUDController;
  v4 = [(AUDController *)&v18 init];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = os_log_create("com.apple.accessoryupdater.uarp", "legacy");
  log = v5->_log;
  v5->_log = v6;

  v5->_idleExitTimeoutSec = timeout;
  if (![(AUDController *)v5 initializeController])
  {
    v8 = v5->_log;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Failed to initialize daemon, exiting", buf, 2u);
    }

    v5 = 0;
  }

  mach_service = xpc_connection_create_mach_service("com.apple.MobileAccessoryUpdater", v5->_processingQueue, 1uLL);
  listener = v5->_listener;
  v5->_listener = mach_service;

  v11 = v5->_listener;
  if (!v11)
  {
    if (os_log_type_enabled(v5->_log, OS_LOG_TYPE_ERROR))
    {
      sub_100048028();
    }

    v11 = v5->_listener;
  }

  xpc_connection_set_context(v11, 0);
  v12 = v5->_listener;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100008960;
  handler[3] = &unk_100081460;
  v13 = v5;
  v16 = v13;
  xpc_connection_set_event_handler(v12, handler);
  dispatch_resume(v5->_processingQueue);
  xpc_connection_resume(v5->_listener);

  return v13;
}

- (BOOL)initializeController
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_BACKGROUND, 0);

  v5 = dispatch_queue_create("com.apple.aud.processing.queue", v4);
  processingQueue = self->_processingQueue;
  self->_processingQueue = v5;

  v7 = self->_processingQueue;
  if (v7)
  {
    dispatch_suspend(v7);
    v8 = dispatch_queue_create("com.apple.fud.eaOverHID.queue", v4);
    eaOverHIDQueue = self->_eaOverHIDQueue;
    self->_eaOverHIDQueue = v8;

    if (self->_eaOverHIDQueue)
    {
      v10 = +[NSFileManager defaultManager];
      if (([v10 fileExistsAtPath:@"/var/db/accessoryupdater"] & 1) == 0)
      {
        v29 = 0;
        v11 = [v10 createDirectoryAtPath:@"/var/db/accessoryupdater" withIntermediateDirectories:1 attributes:0 error:&v29];
        v12 = v29;
        v13 = v12;
        if ((v11 & 1) == 0)
        {
          if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
          {
            sub_100048090();
          }

          goto LABEL_20;
        }
      }

      v13 = [NSString stringWithFormat:@"%@/%@", @"/var/db/accessoryupdater", @"remoteCheckLedger.plist"];
      stringByStandardizingPath = [v13 stringByStandardizingPath];
      v15 = [FudStorage storageWithFile:stringByStandardizingPath];
      legacyUpdaterStorage = self->_legacyUpdaterStorage;
      self->_legacyUpdaterStorage = v15;

      if (self->_legacyUpdaterStorage)
      {
        v17 = [[AUDStateMachineManager alloc] initWithStorage:self->_legacyUpdaterStorage];
        stateMachineManager = self->_stateMachineManager;
        self->_stateMachineManager = v17;

        [(AUDController *)self initIdleTimer];
        v19 = +[FudUtilities isFirstLaunchSinceBoot];
        [(AUDController *)self initUARP:v19];
        [(AUDController *)self initSignals];
        log = self->_log;
        v21 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
        if (v19)
        {
          if (!v21)
          {
            goto LABEL_24;
          }

          *buf = 0;
          v22 = "Initializing daemon on first launch";
        }

        else
        {
          if (!v21)
          {
            goto LABEL_24;
          }

          *buf = 0;
          v22 = "Initializing daemon for secondary launch";
        }

        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, v22, buf, 2u);
LABEL_24:
        loadPolicyForAllServices = [(AUDController *)self loadPolicyForAllServices];
        loadPolicyForAllPlugins = [(AUDController *)self loadPolicyForAllPlugins];
        [loadPolicyForAllServices addObjectsFromArray:loadPolicyForAllPlugins];

        if (loadPolicyForAllServices)
        {
          [(FudStorage *)self->_legacyUpdaterStorage setPoliciesWithArray:loadPolicyForAllServices];
          if ([(AUDController *)self setupXPCStreamsWithPolicies:loadPolicyForAllServices shouldRegister:v19])
          {
            [(AUDController *)self setActivityForPeriodicLaunch:v19];
            [(AUDController *)self setActivityForDeviceIdleLaunch:v19];
            v25 = 1;
LABEL_32:

            goto LABEL_33;
          }

          if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
          {
            sub_100048118();
          }
        }

        else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
        {
          sub_10004814C();
        }

        v25 = 0;
        goto LABEL_32;
      }

      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        sub_100048180();
      }

LABEL_20:
      v25 = 0;
LABEL_33:

      goto LABEL_34;
    }

    v23 = self->_log;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v24 = "Failed to create inbound eaOverHID queue";
      goto LABEL_14;
    }
  }

  else
  {
    v23 = self->_log;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v24 = "Failed to create inbound processing queue";
LABEL_14:
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v24, buf, 2u);
    }
  }

  v25 = 0;
LABEL_34:

  return v25;
}

- (void)initSignals
{
  signal(30, nullsub_1);
  v3 = dispatch_source_create(&_dispatch_source_type_signal, 0x1EuLL, 0, &_dispatch_main_q);
  usr1SignalSource = self->_usr1SignalSource;
  self->_usr1SignalSource = v3;

  v5 = self->_usr1SignalSource;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100008FD8;
  handler[3] = &unk_100081488;
  handler[4] = self;
  dispatch_source_set_event_handler(v5, handler);
  dispatch_resume(self->_usr1SignalSource);
}

- (void)initIdleTimer
{
  v3 = dispatch_group_create();
  v4 = qword_10009A9D8;
  qword_10009A9D8 = v3;

  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_BACKGROUND, 0);

  v7 = dispatch_queue_create("audcontroller.timeoutQueue", v6);
  timeoutQueue = self->_timeoutQueue;
  self->_timeoutQueue = v7;

  v9 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_timeoutQueue);
  idleTimer = self->_idleTimer;
  self->_idleTimer = v9;

  dispatch_source_set_timer(self->_idleTimer, 0xFFFFFFFFFFFFFFFFLL, 0, 0);
  v11 = self->_idleTimer;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100009154;
  handler[3] = &unk_100081488;
  handler[4] = self;
  dispatch_source_set_event_handler(v11, handler);
  dispatch_activate(self->_idleTimer);
  v12 = self->_timeoutQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000915C;
  v13[3] = &unk_100081488;
  v13[4] = self;
  dispatch_async(v12, v13);
}

- (void)beginIdleTimer
{
  timeoutQueue = self->_timeoutQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000091D8;
  block[3] = &unk_100081488;
  block[4] = self;
  dispatch_async(timeoutQueue, block);
}

- (void)handleIdleTimeout
{
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_1000482BC();
  }

  if ([(FudStorage *)self->_legacyUpdaterStorage isAnyStateMachineActive])
  {
    log = self->_log;
    if (!os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
LABEL_7:
      [(AUDController *)self cancelIdleTimer];
      [(AUDController *)self watchSharedGroup];
      return;
    }

    *buf = 0;
    v4 = "Statemachine(s) still active during countdown, canceling timeout and watching group.";
    v5 = buf;
LABEL_6:
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, v4, v5, 2u);
    goto LABEL_7;
  }

  if ([(AUDController *)self isWorkPending])
  {
    v6 = self->_log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      v7 = "Still has pending work in dispatch group";
      v8 = v16;
      v9 = v6;
LABEL_12:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
    }
  }

  else
  {
    if ([(UARPManagerAUD *)self->_uarpManager isBusy])
    {
      log = self->_log;
      if (!os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_7;
      }

      v15 = 0;
      v4 = "UARPManager still active during countdown, canceling timeout and watching group.";
      v5 = &v15;
      goto LABEL_6;
    }

    isWorkPending = [(AUDController *)self isWorkPending];
    v11 = self->_log;
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (isWorkPending)
    {
      if (v12)
      {
        v14 = 0;
        v7 = "Waiting on pending user restore prompts";
        v8 = &v14;
        v9 = v11;
        goto LABEL_12;
      }
    }

    else
    {
      if (v12)
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Nothing left to do, exiting.", v13, 2u);
      }

      [(AUDController *)self idleExit];
    }
  }
}

- (void)cancelIdleTimer
{
  timeoutQueue = self->_timeoutQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000094AC;
  block[3] = &unk_100081488;
  block[4] = self;
  dispatch_async(timeoutQueue, block);
}

- (void)processAPIDict:(id)dict
{
  dictCopy = dict;
  v5 = qword_10009A9D8;
  processingQueue = self->_processingQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000095CC;
  v8[3] = &unk_100081438;
  v8[4] = self;
  v9 = dictCopy;
  v7 = dictCopy;
  dispatch_group_async(v5, processingQueue, v8);
}

- (void)handleXPCAPIEvent:(id)event
{
  eventCopy = event;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "XPC message received", buf, 2u);
  }

  if (eventCopy)
  {
    v6 = xpc_copy_description(eventCopy);
    v7 = self->_log;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Event received %s", buf, 0xCu);
    }

    if (v6)
    {
      free(v6);
    }

    if (xpc_get_type(eventCopy) == &_xpc_type_connection)
    {
      v8 = eventCopy;
      xpc_connection_set_context(v8, 0);
      xpc_connection_set_target_queue(v8, self->_processingQueue);
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_100009EDC;
      handler[3] = &unk_100081460;
      handler[4] = self;
      xpc_connection_set_event_handler(v8, handler);
      xpc_connection_resume(v8);
    }

    else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_1000484DC();
    }
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_100048510();
  }
}

- (id)loadPolicyForAllServices
{
  v3 = [NSURL fileURLWithPath:@"/System/Library/PrivateFrameworks/MobileAccessoryUpdater.framework/XPCServices/" isDirectory:1];
  if (v3)
  {
    v25 = [NSMutableArray arrayWithCapacity:10];
    v4 = +[NSFileManager defaultManager];
    v5 = [v4 enumeratorAtURL:v3 includingPropertiesForKeys:0 options:1 errorHandler:0];

    nextObject = [v5 nextObject];
    if (nextObject)
    {
      v7 = nextObject;
      do
      {
        v8 = [NSBundle bundleWithURL:v7];
        v9 = v8;
        if (v8)
        {
          infoDictionary = [v8 infoDictionary];
          v11 = infoDictionary;
          if (infoDictionary)
          {
            v12 = [infoDictionary objectForKeyedSubscript:@"UARP Updater"];
            bOOLValue = [v12 BOOLValue];

            if ((bOOLValue & 1) == 0)
            {
              v14 = [PluginPolicy alloc];
              bundleIdentifier = [v9 bundleIdentifier];
              v16 = [(PluginPolicy *)v14 initWithPolicyDictionary:v11 pluginName:bundleIdentifier];

              if (v16)
              {
                if ([(PluginPolicy *)v16 isValid])
                {
                  [v25 addObject:v16];
                  log = self->_log;
                  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
                  {
                    sub_1000486A8(v26, log);
                  }
                }

                else
                {
                  v21 = self->_log;
                  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                  {
                    sub_100048648(v27, v21);
                  }
                }
              }

              else
              {
                v20 = self->_log;
                if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                {
                  sub_100048708(v28, v20);
                }
              }
            }
          }

          else
          {
            v19 = self->_log;
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              sub_100048768(v29, v19);
            }
          }
        }

        else
        {
          v18 = self->_log;
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            sub_1000487C8(buf, v18);
          }
        }

        nextObject2 = [v5 nextObject];

        v7 = nextObject2;
      }

      while (nextObject2);
    }
  }

  else
  {
    v23 = self->_log;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Failed to find XPC Services directory", buf, 2u);
    }

    v25 = 0;
  }

  return v25;
}

- (id)loadPolicyForAllPlugins
{
  v3 = [NSURL fileURLWithPath:@"/System/Library/AccessoryUpdaterBundles" isDirectory:1];
  if (v3)
  {
    v4 = [NSMutableArray arrayWithCapacity:10];
    v5 = +[NSFileManager defaultManager];
    v6 = [v5 enumeratorAtURL:v3 includingPropertiesForKeys:0 options:1 errorHandler:0];

    nextObject = [v6 nextObject];
    if (nextObject)
    {
      v8 = nextObject;
      do
      {
        v9 = [NSBundle bundleWithURL:v8];
        v10 = v9;
        if (v9)
        {
          infoDictionary = [v9 infoDictionary];
          if (infoDictionary)
          {
            v12 = [PluginPolicy alloc];
            bundleIdentifier = [v10 bundleIdentifier];
            v14 = [(PluginPolicy *)v12 initWithPolicyDictionary:infoDictionary pluginName:bundleIdentifier];

            if (v14)
            {
              if ([(PluginPolicy *)v14 isValid])
              {
                [v4 addObject:v14];
                log = self->_log;
                if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
                {
                  sub_100048888(v23, log);
                }
              }

              else
              {
                v19 = self->_log;
                if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
                {
                  sub_100048828(v24, v19);
                }
              }
            }

            else
            {
              v18 = self->_log;
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                sub_1000488E8(v25, v18);
              }
            }
          }

          else
          {
            v17 = self->_log;
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              sub_100048948(v26, v17);
            }
          }
        }

        else
        {
          v16 = self->_log;
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            sub_1000489A8(buf, v16);
          }
        }

        nextObject2 = [v6 nextObject];

        v8 = nextObject2;
      }

      while (nextObject2);
    }
  }

  else
  {
    v21 = self->_log;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Failed to find legacy plugin directory", buf, 2u);
    }

    v4 = 0;
  }

  return v4;
}

- (BOOL)setupXPCStreamsWithPolicies:(id)policies shouldRegister:(BOOL)register
{
  registerCopy = register;
  policiesCopy = policies;
  [(AUDController *)self registerForEAMatchingNotifications];
  v36 = +[NSMutableDictionary dictionary];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = policiesCopy;
  v31 = [obj countByEnumeratingWithState:&v46 objects:v56 count:16];
  if (v31)
  {
    v30 = *v47;
    do
    {
      v6 = 0;
      do
      {
        if (*v47 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v32 = v6;
        v7 = *(*(&v46 + 1) + 8 * v6);
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v33 = v7;
        matchingFilters = [v7 matchingFilters];
        v9 = [matchingFilters countByEnumeratingWithState:&v42 objects:v55 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v43;
          do
          {
            for (i = 0; i != v10; i = i + 1)
            {
              if (*v43 != v11)
              {
                objc_enumerationMutation(matchingFilters);
              }

              v13 = *(*(&v42 + 1) + 8 * i);
              filter = [v13 filter];
              v15 = _CFXPCCreateXPCObjectFromCFObject();

              if (v15)
              {
                filterType = [v13 filterType];
                v17 = [filterType cStringUsingEncoding:4];

                if (v17)
                {
                  if (registerCopy)
                  {
                    v18 = self->_log;
                    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
                    {
                      sub_100048A08(v54, v18);
                    }

                    filterName = [v13 filterName];
                    [filterName cStringUsingEncoding:4];
                    xpc_set_event();
                  }

                  filterType2 = [v13 filterType];
                  v21 = [v36 objectForKey:filterType2];

                  if (!v21)
                  {
                    v22 = self->_log;
                    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
                    {
                      log = v22;
                      pluginName = [v33 pluginName];
                      filterName2 = [v13 filterName];
                      *buf = 138543618;
                      v51 = pluginName;
                      v52 = 2114;
                      v53 = filterName2;
                      _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Setting event handler for Plugin:%{public}@ Filter:%{public}@", buf, 0x16u);
                    }

                    processingQueue = self->_processingQueue;
                    handler[0] = _NSConcreteStackBlock;
                    handler[1] = 3221225472;
                    handler[2] = sub_10000ABCC;
                    handler[3] = &unk_100081460;
                    handler[4] = self;
                    xpc_set_event_stream_handler(v17, processingQueue, handler);
                    v24 = [NSNumber numberWithBool:1];
                    filterType3 = [v13 filterType];
                    [v36 setObject:v24 forKey:filterType3];
                  }
                }

                else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
                {
                  sub_100048A68(&v38, v39);
                }
              }

              else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
              {
                sub_100048A94(&v40, v41);
              }
            }

            v10 = [matchingFilters countByEnumeratingWithState:&v42 objects:v55 count:16];
          }

          while (v10);
        }

        v6 = v32 + 1;
      }

      while ((v32 + 1) != v31);
      v31 = [obj countByEnumeratingWithState:&v46 objects:v56 count:16];
    }

    while (v31);
  }

  return 1;
}

- (void)handleXPCStreamEvent:(id)event
{
  eventCopy = event;
  v5 = eventCopy;
  if (eventCopy)
  {
    string = xpc_dictionary_get_string(eventCopy, _xpc_event_key_name);
    if (string)
    {
      v7 = string;
      if (self->_isIdleExiting)
      {
        log = self->_log;
        if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v15 = v7;
          _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Idle Exiting, dropping event for filter:%{public}s", buf, 0xCu);
        }
      }

      else
      {
        v9 = qword_10009A9D8;
        processingQueue = self->_processingQueue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10000AD78;
        block[3] = &unk_1000814B0;
        v13 = string;
        block[4] = self;
        v12 = v5;
        dispatch_group_async(v9, processingQueue, block);
      }
    }

    else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_100048AC0();
    }
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_100048AF4();
  }
}

- (void)handleEAOverHIDXPCStreamEvent:(id)event forFilterName:(id)name
{
  eventCopy = event;
  nameCopy = name;
  v8 = nameCopy;
  if (eventCopy && nameCopy)
  {
    v9 = qword_10009A9D8;
    eaOverHIDQueue = self->_eaOverHIDQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000B3F4;
    block[3] = &unk_1000814D8;
    v12 = eventCopy;
    selfCopy = self;
    v14 = v8;
    dispatch_group_async(v9, eaOverHIDQueue, block);
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_100048C3C();
  }
}

- (void)watchSharedGroup
{
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_100048CD8();
  }

  timeoutQueue = self->_timeoutQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B5CC;
  block[3] = &unk_100081488;
  block[4] = self;
  dispatch_async(timeoutQueue, block);
}

- (void)setActivityForUARPPeriodicLaunch:(BOOL)launch
{
  launchCopy = launch;
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"uarpPeriodicFirmwareCheckInterval", @"com.apple.mobileaccessoryupdater", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat != 1 || AppIntegerValue == 0)
  {
    v7 = XPC_ACTIVITY_INTERVAL_1_DAY;
  }

  else
  {
    v7 = AppIntegerValue;
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
    {
      sub_100048E0C();
    }
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000B964;
  v13[3] = &unk_100081460;
  v13[4] = self;
  v9 = objc_retainBlock(v13);
  if (launchCopy)
  {
    v10 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(v10, XPC_ACTIVITY_REPEATING, 1);
    xpc_dictionary_set_int64(v10, XPC_ACTIVITY_INTERVAL, v7);
    xpc_dictionary_set_BOOL(v10, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 1);
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v16 = "com.apple.AccessoryUpdater.UARP.periodicFirmwareCheck";
      v17 = 2114;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Registering First Launch XPC activity %{public}s with criteria = %{public}@", buf, 0x16u);
    }

    xpc_activity_register("com.apple.AccessoryUpdater.UARP.periodicFirmwareCheck", v10, v9);
  }

  else
  {
    v12 = self->_log;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v16 = "com.apple.AccessoryUpdater.UARP.periodicFirmwareCheck";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Registering XPC activity %{public}s with XPC_ACTIVITY_CHECK_IN", buf, 0xCu);
    }

    xpc_activity_register("com.apple.AccessoryUpdater.UARP.periodicFirmwareCheck", XPC_ACTIVITY_CHECK_IN, v9);
  }
}

- (void)setActivityForDeviceIdleLaunch:(BOOL)launch
{
  launchCopy = launch;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000BDA0;
  v9[3] = &unk_100081460;
  v9[4] = self;
  v5 = objc_retainBlock(v9);
  if (launchCopy)
  {
    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(v6, XPC_ACTIVITY_REQUIRE_SIGNIFICANT_USER_INACTIVITY, 1);
    xpc_dictionary_set_BOOL(v6, XPC_ACTIVITY_REPEATING, 1);
    xpc_dictionary_set_int64(v6, XPC_ACTIVITY_DELAY, XPC_ACTIVITY_INTERVAL_1_DAY);
    xpc_dictionary_set_BOOL(v6, XPC_ACTIVITY_ALLOW_BATTERY, 1);
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v11 = "com.apple.MobileAccessoryUpdater.deviceIdleCheck";
      v12 = 2114;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Registering First Launch XPC activity %{public}s with criteria = %{public}@", buf, 0x16u);
    }

    xpc_activity_register("com.apple.MobileAccessoryUpdater.deviceIdleCheck", v6, v5);
  }

  else
  {
    v8 = self->_log;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v11 = "com.apple.MobileAccessoryUpdater.deviceIdleCheck";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Registering XPC activity %{public}s with XPC_ACTIVITY_CHECK_IN", buf, 0xCu);
    }

    xpc_activity_register("com.apple.MobileAccessoryUpdater.deviceIdleCheck", XPC_ACTIVITY_CHECK_IN, v5);
  }
}

- (void)setActivityForPeriodicLaunch:(BOOL)launch
{
  launchCopy = launch;
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"periodicFirmwareCheckInterval", @"com.apple.MobileAccessoryUpdater", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat != 1 || AppIntegerValue == 0)
  {
    v7 = 3 * XPC_ACTIVITY_INTERVAL_1_DAY;
  }

  else
  {
    v7 = AppIntegerValue;
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
    {
      sub_1000491BC();
    }
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000C264;
  v14[3] = &unk_100081460;
  v14[4] = self;
  v9 = objc_retainBlock(v14);
  if (launchCopy)
  {
    v10 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(v10, XPC_ACTIVITY_REPEATING, 1);
    xpc_dictionary_set_int64(v10, XPC_ACTIVITY_INTERVAL, v7);
    xpc_dictionary_set_BOOL(v10, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 1);
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v17 = "com.apple.MobileAccessoryUpdater.periodicFirmwareCheck";
      v18 = 2114;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Registering First Launch XPC activity %{public}s with criteria = %{public}@", buf, 0x16u);
    }

    v12 = v10;
  }

  else
  {
    v13 = self->_log;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v17 = "com.apple.MobileAccessoryUpdater.periodicFirmwareCheck";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Registering XPC activity %{public}s with XPC_ACTIVITY_CHECK_IN", buf, 0xCu);
    }

    v12 = 0;
    v10 = XPC_ACTIVITY_CHECK_IN;
  }

  xpc_activity_register("com.apple.MobileAccessoryUpdater.periodicFirmwareCheck", v10, v9);
}

- (void)doDeviceCheck:(int)check
{
  self->_isDeviceIdleLaunch = 1;
  pluginToPolicy = [(FudStorage *)self->_legacyUpdaterStorage pluginToPolicy];
  allValues = [pluginToPolicy allValues];

  if (allValues)
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v32 = allValues;
    obj = allValues;
    v35 = [obj countByEnumeratingWithState:&v44 objects:v55 count:16];
    if (!v35)
    {
      goto LABEL_49;
    }

    v34 = *v45;
    while (1)
    {
      v7 = 0;
      do
      {
        if (*v45 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v36 = v7;
        v8 = *(*(&v44 + 1) + 8 * v7);
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        matchingFilters = [v8 matchingFilters];
        v9 = [matchingFilters countByEnumeratingWithState:&v40 objects:v54 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v41;
          do
          {
            v12 = 0;
            do
            {
              if (*v41 != v11)
              {
                objc_enumerationMutation(matchingFilters);
              }

              v13 = *(*(&v40 + 1) + 8 * v12);
              needsDeviceIdleCheck = [v13 needsDeviceIdleCheck];
              if (check > 1)
              {
                if (check == 2)
                {
                  if (![v13 needsInstallerCheck])
                  {
                    goto LABEL_42;
                  }

                  [(AUDStateMachineManager *)self->_stateMachineManager setInstallerUpdateActive:1];
                }

                else
                {
                  if (check != 3)
                  {
                    goto LABEL_21;
                  }

                  if (([v13 needsMayRebootCheck] & 1) == 0)
                  {
                    goto LABEL_42;
                  }
                }
              }

              else
              {
                if (!check)
                {
                  if (([v13 needsPeriodicFirmwareCheck] & 1) == 0)
                  {
                    goto LABEL_42;
                  }

                  goto LABEL_27;
                }

                if (check != 1)
                {
LABEL_21:
                  if (!needsDeviceIdleCheck)
                  {
                    goto LABEL_42;
                  }

                  goto LABEL_27;
                }

                if (([v13 needsDeviceIdleCheck] & 1) == 0)
                {
                  goto LABEL_42;
                }
              }

LABEL_27:
              log = self->_log;
              if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
              {
                sub_100049394(v53, log);
              }

              filterType = [v13 filterType];
              v17 = [filterType cStringUsingEncoding:4];

              if (v17)
              {
                filterName = [v13 filterName];
                [filterName cStringUsingEncoding:4];
                v19 = xpc_copy_event();

                if (v19)
                {
                  goto LABEL_34;
                }

                v20 = self->_log;
                if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
                {
                  sub_1000493F4(v52, v20);
                }

                filter = [v13 filter];
                v19 = _CFXPCCreateXPCObjectFromCFObject();

                if (v19)
                {
LABEL_34:
                  filterName2 = [v13 filterName];
                  v23 = [filterName2 rangeOfString:@"com.apple.MobileAccessoryUpdater.EA." options:1];

                  filterName3 = [v13 filterName];
                  v25 = [filterName3 cStringUsingEncoding:4];
                  if (v23 == 0x7FFFFFFFFFFFFFFFLL)
                  {
                    xpc_set_event();

                    filterName4 = [v13 filterName];
                    [filterName4 cStringUsingEncoding:4];
                    xpc_set_event();
                  }

                  else
                  {
                    xpc_dictionary_set_string(v19, _xpc_event_key_name, v25);

                    v28 = self->_log;
                    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
                    {
                      v29 = v28;
                      filterName5 = [v13 filterName];
                      *buf = 138543618;
                      v49 = filterName5;
                      v50 = 2114;
                      v51 = v19;
                      _os_log_debug_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "Kicking off device check event for %{public}@, xpcFilter=%{public}@", buf, 0x16u);
                    }

                    [(AUDController *)self handleXPCStreamEvent:v19];
                  }

                  [(AUDController *)self watchSharedGroup];
                }

                else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
                {
                  sub_100049454(&v38, v39);
                }
              }

              else
              {
                v27 = self->_log;
                if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543362;
                  v49 = v13;
                  _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Failed to get filter type from %{public}@", buf, 0xCu);
                }
              }

LABEL_42:
              v12 = v12 + 1;
            }

            while (v10 != v12);
            v31 = [matchingFilters countByEnumeratingWithState:&v40 objects:v54 count:16];
            v10 = v31;
          }

          while (v31);
        }

        v7 = v36 + 1;
      }

      while ((v36 + 1) != v35);
      v35 = [obj countByEnumeratingWithState:&v44 objects:v55 count:16];
      if (!v35)
      {
LABEL_49:

        allValues = v32;
        goto LABEL_52;
      }
    }
  }

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_100049480();
  }

LABEL_52:
}

- (BOOL)isWorkPending
{
  v3 = dispatch_group_wait(qword_10009A9D8, 0);
  if (v3)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Some work landed in our groups queue during countdown, canceling timeout and watching group.", v6, 2u);
    }

    [(AUDController *)self cancelIdleTimer];
    [(AUDController *)self watchSharedGroup];
  }

  return v3 != 0;
}

- (void)idleExit
{
  self->_isIdleExiting = 1;
  idleTimer = self->_idleTimer;
  if (idleTimer)
  {
    dispatch_source_cancel(idleTimer);
    v4 = self->_idleTimer;
    self->_idleTimer = 0;
  }

  eaOverHID = self->_eaOverHID;
  if (eaOverHID)
  {
    self->_eaOverHID = 0;
  }

  legacyUpdaterStorage = self->_legacyUpdaterStorage;
  if (legacyUpdaterStorage)
  {
    save = [(FudStorage *)legacyUpdaterStorage save];
    log = self->_log;
    if (save)
    {
      v7 = 0;
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Successfully serialized to disk", buf, 2u);
        v7 = 0;
      }
    }

    else
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        *v11 = 0;
        _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to serialize to disk", v11, 2u);
      }

      v7 = 1;
    }

    v10 = self->_legacyUpdaterStorage;
    self->_legacyUpdaterStorage = 0;
  }

  else
  {
    v7 = 0;
  }

  exit(v7);
}

- (void)registerForNotifydNotification:(id)notification filterName:(id)name
{
  notificationCopy = notification;
  nameCopy = name;
  v13 = @"Notification";
  v14 = notificationCopy;
  v8 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v9 = _CFXPCCreateXPCObjectFromCFObject();
  log = self->_log;
  if (v9)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
    {
      sub_1000494B4();
    }

    [nameCopy cStringUsingEncoding:4];
    xpc_set_event();
    processingQueue = self->_processingQueue;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10000CD70;
    v12[3] = &unk_100081460;
    v12[4] = self;
    xpc_set_event_stream_handler("com.apple.notifyd.matching", processingQueue, v12);
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_100049524();
  }
}

- (void)registerForEAMatchingNotifications
{
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_100049594();
  }

  processingQueue = self->_processingQueue;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10000CE20;
  handler[3] = &unk_100081460;
  handler[4] = self;
  xpc_set_event_stream_handler("com.apple.ExternalAccessory.matching", processingQueue, handler);
}

@end