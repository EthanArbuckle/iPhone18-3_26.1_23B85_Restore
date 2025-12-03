@interface IMEventNotificationManager
- (BOOL)isBusy;
- (IMEventNotificationManager)init;
- (id)createEventListenerForNotificationName:(id)name object:(id)object;
- (void)appendNotificationForEventHandler:(id)handler eventNotificationBlock:(id)block;
- (void)appendNotificationForEventHandler:(id)handler sender:(id)sender eventNotificationBlock:(id)block;
- (void)cancelAllEventNotifications;
- (void)cancelEventNotificationsForEventHandler:(id)handler;
- (void)dealloc;
- (void)eventListenerDidFinish:(id)finish;
- (void)eventNotificationQueue:(id)queue didChangeBusyState:(BOOL)state;
- (void)pauseEventNotifications:(BOOL)notifications;
- (void)pushNotificationForEventHandler:(id)handler eventNotificationBlock:(id)block;
- (void)pushNotificationForEventHandler:(id)handler sender:(id)sender eventNotificationBlock:(id)block;
- (void)registerEventListener:(id)listener;
- (void)registerNotificationQueue:(id)queue;
@end

@implementation IMEventNotificationManager

- (IMEventNotificationManager)init
{
  v10.receiver = self;
  v10.super_class = IMEventNotificationManager;
  v2 = [(IMEventNotificationManager *)&v10 init];
  if (v2)
  {
    array = [MEMORY[0x1E695DF70] array];
    registeredNotificationQueues = v2->_registeredNotificationQueues;
    v2->_registeredNotificationQueues = array;

    v5 = objc_alloc_init(IMEventListenerList);
    eventListeners = v2->_eventListeners;
    v2->_eventListeners = v5;

    v2->_eventTimeout = 30.0;
    v7 = objc_alloc_init(IMAutomaticEventNotificationQueue);
    notificationQueue = v2->_notificationQueue;
    v2->_notificationQueue = v7;

    [(IMEventNotificationManager *)v2 registerNotificationQueue:v2->_notificationQueue];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = IMEventNotificationManager;
  [(IMEventNotificationManager *)&v4 dealloc];
}

- (BOOL)isBusy
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(IMEventNotificationManager *)selfCopy busyCount]> 0 || [(IMEventListenerList *)selfCopy->_eventListeners count]!= 0;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)eventNotificationQueue:(id)queue didChangeBusyState:(BOOL)state
{
  [(IMEventNotificationManager *)self busyCount];

  MEMORY[0x1EEE66B58](self, sel_setBusyCount_);
}

- (void)registerNotificationQueue:(id)queue
{
  queueCopy = queue;
  [queueCopy setDelegate:self];
  [(NSMutableArray *)self->_registeredNotificationQueues addObject:queueCopy];
}

- (void)eventListenerDidFinish:(id)finish
{
  finishCopy = finish;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(IMEventListenerList *)selfCopy->_eventListeners removeObject:finishCopy];
  objc_sync_exit(selfCopy);
}

- (void)registerEventListener:(id)listener
{
  listenerCopy = listener;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [listenerCopy timeout];
  if (v6 == 0.0)
  {
    [listenerCopy setTimeout:selfCopy->_eventTimeout];
  }

  [(IMEventListenerList *)selfCopy->_eventListeners addObject:listenerCopy];
  objc_initWeak(&location, selfCopy);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A864FA14;
  v7[3] = &unk_1E7827750;
  objc_copyWeak(&v8, &location);
  [listenerCopy setDidInvokeCompletion:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
  objc_sync_exit(selfCopy);
}

- (id)createEventListenerForNotificationName:(id)name object:(id)object
{
  v5 = [IMNotificationCenterEventListener eventListenerForNotificationName:name object:0];
  [(IMEventNotificationManager *)self registerEventListener:v5];

  return v5;
}

- (void)cancelEventNotificationsForEventHandler:(id)handler
{
  v15 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v6 = selfCopy->_registeredNotificationQueues;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v7)
  {
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v10 + 1) + 8 * v9++) cancelEventNotificationsForNotificationTarget:{handlerCopy, v10}];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  objc_sync_exit(selfCopy);
}

- (void)cancelAllEventNotifications
{
  v12 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v3 = selfCopy->_registeredNotificationQueues;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v4)
  {
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v7 + 1) + 8 * v6++) cancelAllEventNotifications];
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }

  objc_sync_exit(selfCopy);
}

- (void)pauseEventNotifications:(BOOL)notifications
{
  notificationsCopy = notifications;
  v14 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v5 = selfCopy->_registeredNotificationQueues;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v9 + 1) + 8 * v8++) setPaused:{notificationsCopy, v9}];
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  objc_sync_exit(selfCopy);
}

- (void)pushNotificationForEventHandler:(id)handler eventNotificationBlock:(id)block
{
  handlerCopy = handler;
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(IMEventNotificationQueue *)selfCopy->_notificationQueue pushEventTarget:handlerCopy eventNotificationBlock:blockCopy];
  objc_sync_exit(selfCopy);
}

- (void)appendNotificationForEventHandler:(id)handler eventNotificationBlock:(id)block
{
  handlerCopy = handler;
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(IMEventNotificationQueue *)selfCopy->_notificationQueue appendEventTarget:handlerCopy eventNotificationBlock:blockCopy];
  objc_sync_exit(selfCopy);
}

- (void)pushNotificationForEventHandler:(id)handler sender:(id)sender eventNotificationBlock:(id)block
{
  handlerCopy = handler;
  senderCopy = sender;
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(IMEventNotificationQueue *)selfCopy->_notificationQueue pushEventTarget:handlerCopy sender:senderCopy eventNotificationBlock:blockCopy];
  objc_sync_exit(selfCopy);
}

- (void)appendNotificationForEventHandler:(id)handler sender:(id)sender eventNotificationBlock:(id)block
{
  handlerCopy = handler;
  senderCopy = sender;
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(IMEventNotificationQueue *)selfCopy->_notificationQueue appendEventTarget:handlerCopy sender:senderCopy eventNotificationBlock:blockCopy];
  objc_sync_exit(selfCopy);
}

@end