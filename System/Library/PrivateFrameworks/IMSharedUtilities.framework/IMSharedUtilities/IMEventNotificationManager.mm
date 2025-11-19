@interface IMEventNotificationManager
- (BOOL)isBusy;
- (IMEventNotificationManager)init;
- (id)createEventListenerForNotificationName:(id)a3 object:(id)a4;
- (void)appendNotificationForEventHandler:(id)a3 eventNotificationBlock:(id)a4;
- (void)appendNotificationForEventHandler:(id)a3 sender:(id)a4 eventNotificationBlock:(id)a5;
- (void)cancelAllEventNotifications;
- (void)cancelEventNotificationsForEventHandler:(id)a3;
- (void)dealloc;
- (void)eventListenerDidFinish:(id)a3;
- (void)eventNotificationQueue:(id)a3 didChangeBusyState:(BOOL)a4;
- (void)pauseEventNotifications:(BOOL)a3;
- (void)pushNotificationForEventHandler:(id)a3 eventNotificationBlock:(id)a4;
- (void)pushNotificationForEventHandler:(id)a3 sender:(id)a4 eventNotificationBlock:(id)a5;
- (void)registerEventListener:(id)a3;
- (void)registerNotificationQueue:(id)a3;
@end

@implementation IMEventNotificationManager

- (IMEventNotificationManager)init
{
  v10.receiver = self;
  v10.super_class = IMEventNotificationManager;
  v2 = [(IMEventNotificationManager *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    registeredNotificationQueues = v2->_registeredNotificationQueues;
    v2->_registeredNotificationQueues = v3;

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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = IMEventNotificationManager;
  [(IMEventNotificationManager *)&v4 dealloc];
}

- (BOOL)isBusy
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(IMEventNotificationManager *)v2 busyCount]> 0 || [(IMEventListenerList *)v2->_eventListeners count]!= 0;
  objc_sync_exit(v2);

  return v3;
}

- (void)eventNotificationQueue:(id)a3 didChangeBusyState:(BOOL)a4
{
  [(IMEventNotificationManager *)self busyCount];

  MEMORY[0x1EEE66B58](self, sel_setBusyCount_);
}

- (void)registerNotificationQueue:(id)a3
{
  v4 = a3;
  [v4 setDelegate:self];
  [(NSMutableArray *)self->_registeredNotificationQueues addObject:v4];
}

- (void)eventListenerDidFinish:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(IMEventListenerList *)v4->_eventListeners removeObject:v5];
  objc_sync_exit(v4);
}

- (void)registerEventListener:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  [v4 timeout];
  if (v6 == 0.0)
  {
    [v4 setTimeout:v5->_eventTimeout];
  }

  [(IMEventListenerList *)v5->_eventListeners addObject:v4];
  objc_initWeak(&location, v5);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A864FA14;
  v7[3] = &unk_1E7827750;
  objc_copyWeak(&v8, &location);
  [v4 setDidInvokeCompletion:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
  objc_sync_exit(v5);
}

- (id)createEventListenerForNotificationName:(id)a3 object:(id)a4
{
  v5 = [IMNotificationCenterEventListener eventListenerForNotificationName:a3 object:0];
  [(IMEventNotificationManager *)self registerEventListener:v5];

  return v5;
}

- (void)cancelEventNotificationsForEventHandler:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v6 = v5->_registeredNotificationQueues;
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

        [*(*(&v10 + 1) + 8 * v9++) cancelEventNotificationsForNotificationTarget:{v4, v10}];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
}

- (void)cancelAllEventNotifications
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v3 = v2->_registeredNotificationQueues;
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

  objc_sync_exit(v2);
}

- (void)pauseEventNotifications:(BOOL)a3
{
  v3 = a3;
  v14 = *MEMORY[0x1E69E9840];
  v4 = self;
  objc_sync_enter(v4);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v5 = v4->_registeredNotificationQueues;
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

        [*(*(&v9 + 1) + 8 * v8++) setPaused:{v3, v9}];
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  objc_sync_exit(v4);
}

- (void)pushNotificationForEventHandler:(id)a3 eventNotificationBlock:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  [(IMEventNotificationQueue *)v7->_notificationQueue pushEventTarget:v8 eventNotificationBlock:v6];
  objc_sync_exit(v7);
}

- (void)appendNotificationForEventHandler:(id)a3 eventNotificationBlock:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  [(IMEventNotificationQueue *)v7->_notificationQueue appendEventTarget:v8 eventNotificationBlock:v6];
  objc_sync_exit(v7);
}

- (void)pushNotificationForEventHandler:(id)a3 sender:(id)a4 eventNotificationBlock:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  v10 = self;
  objc_sync_enter(v10);
  [(IMEventNotificationQueue *)v10->_notificationQueue pushEventTarget:v11 sender:v8 eventNotificationBlock:v9];
  objc_sync_exit(v10);
}

- (void)appendNotificationForEventHandler:(id)a3 sender:(id)a4 eventNotificationBlock:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  v10 = self;
  objc_sync_enter(v10);
  [(IMEventNotificationQueue *)v10->_notificationQueue appendEventTarget:v11 sender:v8 eventNotificationBlock:v9];
  objc_sync_exit(v10);
}

@end