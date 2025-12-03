@interface CKDiscretionaryDaemon
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (CKDiscretionaryDaemon)initWithInSyncBubble:(BOOL)bubble;
- (CKDiscretionaryDaemon)initWithSchedulerClass:(Class)class;
@end

@implementation CKDiscretionaryDaemon

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = +[CKContainer _CKXPCClientToDiscretionaryDaemonInterface];
  [connectionCopy setExportedInterface:v8];

  v9 = [[CKDiscretionaryClientConnection alloc] initWithDaemon:self connection:connectionCopy];
  [connectionCopy setExportedObject:v9];

  objc_initWeak(&location, connectionCopy);
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_1000011D8;
  v14 = &unk_100010480;
  objc_copyWeak(&v15, &location);
  [connectionCopy setInvalidationHandler:&v11];
  [connectionCopy resume];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return 1;
}

- (CKDiscretionaryDaemon)initWithInSyncBubble:(BOOL)bubble
{
  v5 = objc_opt_class();
  if (!bubble)
  {
    v5 = objc_opt_class();
  }

  return [(CKDiscretionaryDaemon *)self initWithSchedulerClass:v5];
}

- (CKDiscretionaryDaemon)initWithSchedulerClass:(Class)class
{
  v9.receiver = self;
  v9.super_class = CKDiscretionaryDaemon;
  v4 = [(CKDiscretionaryDaemon *)&v9 init];
  if (v4)
  {
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.ckdiscretionaryd.serial", v5);
    serialQueue = v4->_serialQueue;
    v4->_serialQueue = v6;

    objc_storeStrong(&v4->_schedulerClass, class);
  }

  return v4;
}

@end