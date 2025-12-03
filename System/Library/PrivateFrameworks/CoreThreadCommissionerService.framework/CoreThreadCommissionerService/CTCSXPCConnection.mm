@interface CTCSXPCConnection
- (CTCSXPCConnection)initWithXpcConnection:(id)connection uuid:(id)uuid;
- (NSXPCConnection)xpcConnection;
- (unsigned)numberOfBlocksQueued;
- (void)dealloc;
- (void)setNumberOfBlocksQueued:(unsigned __int16)queued;
@end

@implementation CTCSXPCConnection

- (CTCSXPCConnection)initWithXpcConnection:(id)connection uuid:(id)uuid
{
  connectionCopy = connection;
  uuidCopy = uuid;
  v13.receiver = self;
  v13.super_class = CTCSXPCConnection;
  v8 = [(CTCSXPCConnection *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_xpcConnection, connectionCopy);
    objc_storeStrong(&v9->_uuid, uuid);
    v10 = dispatch_queue_create("CTCSXPCConnection Thread Safe Property Queue", &_dispatch_queue_attr_concurrent);
    threadSafeQueue = v9->_threadSafeQueue;
    v9->_threadSafeQueue = v10;

    v9->_enableRemoteObjectProxy = 1;
  }

  return v9;
}

- (unsigned)numberOfBlocksQueued
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  threadSafeQueue = self->_threadSafeQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000128B8;
  v5[3] = &unk_100078C60;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(threadSafeQueue, v5);
  v3 = *(v7 + 12);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setNumberOfBlocksQueued:(unsigned __int16)queued
{
  threadSafeQueue = self->_threadSafeQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100012944;
  v4[3] = &unk_100078C88;
  v4[4] = self;
  queuedCopy = queued;
  dispatch_barrier_async(threadSafeQueue, v4);
}

- (void)dealloc
{
  objc_storeWeak(&self->_xpcConnection, 0);
  v3.receiver = self;
  v3.super_class = CTCSXPCConnection;
  [(CTCSXPCConnection *)&v3 dealloc];
}

- (NSXPCConnection)xpcConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_xpcConnection);

  return WeakRetained;
}

@end