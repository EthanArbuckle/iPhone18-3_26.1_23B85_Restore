@interface _IDSActivityMonitorXPCConnector
+ (id)weakSharedInstance;
- (_IDSActivityMonitorXPCConnector)initWithSyncDaemonControllerBuilder:(id)builder daemonControllerBuilder:(id)controllerBuilder;
- (void)_handleInterruption;
- (void)_updateActivity:(id)activity isSupported:(BOOL)supported;
- (void)addListener:(id)listener forTopic:(id)topic;
- (void)dealloc;
- (void)handleIncomingUpdate:(id)update onActivity:(id)activity completion:(id)completion;
- (void)performAction:(id)action errorHandler:(id)handler;
- (void)performSyncAction:(id)action;
- (void)removeListener:(id)listener forTopic:(id)topic;
@end

@implementation _IDSActivityMonitorXPCConnector

+ (id)weakSharedInstance
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  WeakRetained = objc_loadWeakRetained(&qword_1EAEDC050);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&qword_1EAEDC050);
    v5 = v4;
  }

  else
  {
    v4 = [[_IDSActivityMonitorXPCConnector alloc] initWithSyncDaemonControllerBuilder:&unk_1F09E7500 daemonControllerBuilder:&unk_1F09E7520];
    v6 = v4;
    objc_storeWeak(&qword_1EAEDC050, v4);
  }

  objc_sync_exit(selfCopy);

  return v4;
}

- (_IDSActivityMonitorXPCConnector)initWithSyncDaemonControllerBuilder:(id)builder daemonControllerBuilder:(id)controllerBuilder
{
  builderCopy = builder;
  controllerBuilderCopy = controllerBuilder;
  v14.receiver = self;
  v14.super_class = _IDSActivityMonitorXPCConnector;
  v8 = [(_IDSActivityMonitorXPCConnector *)&v14 init];
  if (v8)
  {
    v9 = MEMORY[0x19A8BBEF0](controllerBuilderCopy);
    daemonControllerBuilder = v8->_daemonControllerBuilder;
    v8->_daemonControllerBuilder = v9;

    v11 = MEMORY[0x19A8BBEF0](builderCopy);
    syncDaemonControllerBuilder = v8->_syncDaemonControllerBuilder;
    v8->_syncDaemonControllerBuilder = v11;
  }

  return v8;
}

- (void)dealloc
{
  [(IDSXPCDaemonController *)self->_daemonController removeInterruptionHandlerForTarget:self];
  v3.receiver = self;
  v3.super_class = _IDSActivityMonitorXPCConnector;
  [(_IDSActivityMonitorXPCConnector *)&v3 dealloc];
}

- (void)performSyncAction:(id)action
{
  actionCopy = action;
  syncDaemonController = self->_syncDaemonController;
  if (!syncDaemonController)
  {
    syncDaemonControllerBuilder = self->_syncDaemonControllerBuilder;
    v7 = +[IDSInternalQueueController sharedInstance];
    queue = [v7 queue];
    v9 = syncDaemonControllerBuilder[2](syncDaemonControllerBuilder, queue);
    v10 = self->_syncDaemonController;
    self->_syncDaemonController = v9;

    syncDaemonController = self->_syncDaemonController;
  }

  v16 = 0;
  v17[0] = &v16;
  v17[1] = 0x3032000000;
  v17[2] = sub_195A00834;
  v17[3] = sub_195A03DC0;
  v18 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_195B1FE54;
  v15[3] = &unk_1E7440378;
  v15[4] = &v16;
  v11 = [(IDSXPCDaemonController *)syncDaemonController activityMonitorCollaboratorWithErrorHandler:v15];
  if (*(v17[0] + 40))
  {
    v12 = self->_syncDaemonController;
    self->_syncDaemonController = 0;

    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_ERROR))
    {
      sub_195B44E84(v17, registration);
    }

    v11 = 0;
    v14 = *(v17[0] + 40);
  }

  else
  {
    v14 = 0;
  }

  actionCopy[2](actionCopy, v11, v14);

  _Block_object_dispose(&v16, 8);
}

- (void)performAction:(id)action errorHandler:(id)handler
{
  actionCopy = action;
  handlerCopy = handler;
  daemonController = self->_daemonController;
  if (!daemonController)
  {
    daemonControllerBuilder = self->_daemonControllerBuilder;
    v10 = +[IDSInternalQueueController sharedInstance];
    queue = [v10 queue];
    v12 = daemonControllerBuilder[2](daemonControllerBuilder, queue);
    v13 = self->_daemonController;
    self->_daemonController = v12;

    objc_initWeak(&location, self);
    v14 = self->_daemonController;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_195B20028;
    v20[3] = &unk_1E743EE18;
    objc_copyWeak(&v21, &location);
    [(IDSXPCDaemonController *)v14 addInterruptionHandler:v20 forTarget:self];
    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
    daemonController = self->_daemonController;
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_195B20068;
  v17[3] = &unk_1E743FC78;
  v18 = handlerCopy;
  v19 = actionCopy;
  v15 = actionCopy;
  v16 = handlerCopy;
  [(IDSXPCDaemonController *)daemonController performTask:v17];
}

- (void)addListener:(id)listener forTopic:(id)topic
{
  listenerCopy = listener;
  topicCopy = topic;
  listenersByActivity = self->_listenersByActivity;
  if (!listenersByActivity)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = self->_listenersByActivity;
    self->_listenersByActivity = v8;

    listenersByActivity = self->_listenersByActivity;
  }

  weakObjectsHashTable = [(NSMutableDictionary *)listenersByActivity objectForKeyedSubscript:topicCopy];
  if (!weakObjectsHashTable)
  {
    v11 = self->_listenersByActivity;
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    [(NSMutableDictionary *)v11 setObject:weakObjectsHashTable forKeyedSubscript:topicCopy];
  }

  [weakObjectsHashTable addObject:listenerCopy];
  if ([weakObjectsHashTable count] == 1)
  {
    [(_IDSActivityMonitorXPCConnector *)self _updateActivity:topicCopy isSupported:1];
  }
}

- (void)removeListener:(id)listener forTopic:(id)topic
{
  listenerCopy = listener;
  topicCopy = topic;
  v7 = [(NSMutableDictionary *)self->_listenersByActivity objectForKeyedSubscript:topicCopy];
  v8 = v7;
  if (v7 && [v7 containsObject:listenerCopy])
  {
    if ([v8 count] == 1)
    {
      [(NSMutableDictionary *)self->_listenersByActivity setObject:0 forKeyedSubscript:topicCopy];
      [(_IDSActivityMonitorXPCConnector *)self _updateActivity:topicCopy isSupported:0];
    }

    else
    {
      [v8 removeObject:listenerCopy];
    }

    if (![(NSMutableDictionary *)self->_listenersByActivity count])
    {
      listenersByActivity = self->_listenersByActivity;
      self->_listenersByActivity = 0;
    }
  }
}

- (void)_handleInterruption
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_listenersByActivity;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(_IDSActivityMonitorXPCConnector *)self _updateActivity:*(*(&v9 + 1) + 8 * v7++) isSupported:1, v9];
      }

      while (v5 != v7);
      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_updateActivity:(id)activity isSupported:(BOOL)supported
{
  activityCopy = activity;
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_195B2054C;
  v8[3] = &unk_1E74435D8;
  objc_copyWeak(&v10, &location);
  supportedCopy = supported;
  v7 = activityCopy;
  v9 = v7;
  [(_IDSActivityMonitorXPCConnector *)self performAction:v8 errorHandler:&unk_1F09E7540];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)handleIncomingUpdate:(id)update onActivity:(id)activity completion:(id)completion
{
  v31 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  activityCopy = activity;
  block = completion;
  listenersByActivity = [(_IDSActivityMonitorXPCConnector *)self listenersByActivity];
  v11 = [listenersByActivity objectForKeyedSubscript:activityCopy];
  allObjects = [v11 allObjects];

  v13 = dispatch_group_create();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = allObjects;
  v14 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v27;
    do
    {
      v17 = 0;
      do
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v26 + 1) + 8 * v17);
        dispatch_group_enter(v13);
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = sub_195B207E0;
        v24[3] = &unk_1E743E878;
        v25 = v13;
        [v18 handleIncomingUpdate:updateCopy onActivity:activityCopy completion:v24];

        ++v17;
      }

      while (v15 != v17);
      v15 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v15);
  }

  v19 = +[IDSInternalQueueController sharedInstance];
  queue = [v19 queue];
  dispatch_group_notify(v13, queue, block);

  v21 = *MEMORY[0x1E69E9840];
}

@end