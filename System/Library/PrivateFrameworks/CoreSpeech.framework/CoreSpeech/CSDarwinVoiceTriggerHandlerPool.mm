@interface CSDarwinVoiceTriggerHandlerPool
- (CSDarwinVoiceTriggerHandlerPool)initWithVoiceTriggerEventsCoordinator:(id)a3;
- (CSVoiceTriggerEventsCoordinator)voiceTriggerEventsCoordinator;
- (void)_createHandlerWithDevice:(id)a3;
- (void)didReceiveDarwinDeviceDisconnected:(id)a3;
- (void)onDaemonExit;
- (void)start;
- (void)stop;
@end

@implementation CSDarwinVoiceTriggerHandlerPool

- (CSVoiceTriggerEventsCoordinator)voiceTriggerEventsCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_voiceTriggerEventsCoordinator);

  return WeakRetained;
}

- (void)didReceiveDarwinDeviceDisconnected:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100029E4C;
  v7[3] = &unk_100253C48;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)_createHandlerWithDevice:(id)a3
{
  queue = self->_queue;
  v5 = a3;
  dispatch_assert_queue_V2(queue);
  v6 = [CSDarwinVoiceTriggerHandler alloc];
  WeakRetained = objc_loadWeakRetained(&self->_voiceTriggerEventsCoordinator);
  v8 = [(CSDarwinVoiceTriggerHandler *)v6 initWithRemoteDevice:v5 voiceTriggerEventsCoordinator:WeakRetained delegate:self];

  if (v8)
  {
    [(CSDarwinVoiceTriggerHandler *)v8 start];
    [(NSMutableArray *)self->_handlers addObject:v8];
  }
}

- (void)onDaemonExit
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10002A1C0;
  v16 = sub_10002A1D0;
  v17 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002A1D8;
  block[3] = &unk_100253BD0;
  block[4] = self;
  block[5] = &v12;
  dispatch_async_and_wait(queue, block);
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v3 = v13[5];
  v4 = [v3 countByEnumeratingWithState:&v7 objects:v18 count:16];
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

        [*(*(&v7 + 1) + 8 * v6) onDaemonExit];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v7 objects:v18 count:16];
    }

    while (v4);
  }

  _Block_object_dispose(&v12, 8);
}

- (void)stop
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10002A1C0;
  v16 = sub_10002A1D0;
  v17 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002A3E4;
  block[3] = &unk_100253BD0;
  block[4] = self;
  block[5] = &v12;
  dispatch_async_and_wait(queue, block);
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v3 = v13[5];
  v4 = [v3 countByEnumeratingWithState:&v7 objects:v18 count:16];
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

        [*(*(&v7 + 1) + 8 * v6) stop];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v7 objects:v18 count:16];
    }

    while (v4);
  }

  _Block_object_dispose(&v12, 8);
}

- (void)start
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  objc_copyWeak(&v6, &location);
  started = remote_device_start_browsing();
  deviceBrowser = self->_deviceBrowser;
  self->_deviceBrowser = started;

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (CSDarwinVoiceTriggerHandlerPool)initWithVoiceTriggerEventsCoordinator:(id)a3
{
  v4 = a3;
  if (+[CSUtils supportRemoteDarwinVoiceTrigger])
  {
    v12.receiver = self;
    v12.super_class = CSDarwinVoiceTriggerHandlerPool;
    v5 = [(CSDarwinVoiceTriggerHandlerPool *)&v12 init];
    if (v5)
    {
      v6 = dispatch_queue_create("CSDarwinVoiceTriggerHandlerPool", 0);
      queue = v5->_queue;
      v5->_queue = v6;

      objc_storeWeak(&v5->_voiceTriggerEventsCoordinator, v4);
      v8 = +[NSMutableArray array];
      handlers = v5->_handlers;
      v5->_handlers = v8;
    }

    self = v5;
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end