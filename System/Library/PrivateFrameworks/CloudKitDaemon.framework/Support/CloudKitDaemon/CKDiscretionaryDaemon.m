@interface CKDiscretionaryDaemon
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (CKDiscretionaryDaemon)initWithInSyncBubble:(BOOL)a3;
- (CKDiscretionaryDaemon)initWithSchedulerClass:(Class)a3;
@end

@implementation CKDiscretionaryDaemon

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[CKContainer _CKXPCClientToDiscretionaryDaemonInterface];
  [v7 setExportedInterface:v8];

  v9 = [[CKDiscretionaryClientConnection alloc] initWithDaemon:self connection:v7];
  [v7 setExportedObject:v9];

  objc_initWeak(&location, v7);
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_1000011D8;
  v14 = &unk_100010480;
  objc_copyWeak(&v15, &location);
  [v7 setInvalidationHandler:&v11];
  [v7 resume];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return 1;
}

- (CKDiscretionaryDaemon)initWithInSyncBubble:(BOOL)a3
{
  v5 = objc_opt_class();
  if (!a3)
  {
    v5 = objc_opt_class();
  }

  return [(CKDiscretionaryDaemon *)self initWithSchedulerClass:v5];
}

- (CKDiscretionaryDaemon)initWithSchedulerClass:(Class)a3
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

    objc_storeStrong(&v4->_schedulerClass, a3);
  }

  return v4;
}

@end