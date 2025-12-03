@interface MBHelperServiceDelegate
+ (id)sharedInstance;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (MBHelperServiceDelegate)init;
- (void)_addConnection:(id)connection;
- (void)_removeConnection:(id)connection;
- (void)activate;
- (void)idle;
@end

@implementation MBHelperServiceDelegate

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000058AC;
  block[3] = &unk_100024828;
  block[4] = self;
  if (qword_10002A140 != -1)
  {
    dispatch_once(&qword_10002A140, block);
  }

  v2 = qword_10002A138;

  return v2;
}

- (MBHelperServiceDelegate)init
{
  v13.receiver = self;
  v13.super_class = MBHelperServiceDelegate;
  v2 = [(MBHelperServiceDelegate *)&v13 init];
  if (v2)
  {
    v3 = objc_opt_class();
    Name = class_getName(v3);
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create(Name, v5);
    queue = v2->_queue;
    v2->_queue = v6;

    idleTimer = v2->_idleTimer;
    v2->_idleTimer = 0;

    transaction = v2->_transaction;
    v2->_activeCount = 0;
    v2->_transaction = 0;

    v10 = objc_opt_new();
    connections = v2->_connections;
    v2->_connections = v10;
  }

  return v2;
}

- (void)_addConnection:(id)connection
{
  connectionCopy = connection;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100005A40;
  v7[3] = &unk_100024850;
  v7[4] = self;
  v8 = connectionCopy;
  v6 = connectionCopy;
  dispatch_sync(queue, v7);
}

- (void)_removeConnection:(id)connection
{
  connectionCopy = connection;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100005B50;
  v7[3] = &unk_100024850;
  v7[4] = self;
  v8 = connectionCopy;
  v6 = connectionCopy;
  dispatch_sync(queue, v7);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = MBGetDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109120;
    HIDWORD(buf) = [connectionCopy processIdentifier];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "New connection from pid:%d", &buf, 8u);
    processIdentifier = [connectionCopy processIdentifier];
    _MBLog(@"Df", "New connection from pid:%d", v10, v11, v12, v13, v14, v15, processIdentifier);
  }

  if (qword_10002A150 != -1)
  {
    sub_100014500();
  }

  objc_initWeak(&buf, connectionCopy);
  [connectionCopy setExportedInterface:qword_10002A148];
  v16 = objc_opt_new();
  [connectionCopy setExportedObject:v16];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100005EB8;
  v18[3] = &unk_100024898;
  objc_copyWeak(&v19, &buf);
  v18[4] = self;
  [connectionCopy setInvalidationHandler:v18];
  [(MBHelperServiceDelegate *)self _addConnection:connectionCopy];
  [connectionCopy resume];
  objc_destroyWeak(&v19);

  objc_destroyWeak(&buf);
  return 1;
}

- (void)activate
{
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005F98;
  block[3] = &unk_1000248C0;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)idle
{
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000606C;
  block[3] = &unk_1000248C0;
  block[4] = self;
  dispatch_sync(queue, block);
}

@end