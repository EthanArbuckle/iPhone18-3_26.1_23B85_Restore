@interface PSDSyncSessionObserver
- (PSDSyncSessionObserver)initWithXPCConnection:(id)connection;
- (void)checkin:(id)checkin;
- (void)requestActiveSyncSessionWithCompletion:(id)completion;
- (void)scheduler:(id)scheduler didClearSyncSession:(id)session withBlock:(id)block;
- (void)scheduler:(id)scheduler didUpdateSyncSessionWithUpdate:(id)update;
- (void)scheduler:(id)scheduler willStartSyncSession:(id)session;
@end

@implementation PSDSyncSessionObserver

- (PSDSyncSessionObserver)initWithXPCConnection:(id)connection
{
  connectionCopy = connection;
  v26.receiver = self;
  v26.super_class = PSDSyncSessionObserver;
  v6 = [(PSDSyncSessionObserver *)&v26 init];
  if (v6)
  {
    v7 = psy_log();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

    if (v8)
    {
      v9 = psy_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PSDSyncSessionObserver: init called", buf, 2u);
      }
    }

    v10 = [connectionCopy valueForEntitlement:@"com.apple.pairedsync.progressObserver"];
    v6->_isClientEntitled = [v10 BOOLValue];

    if (v6->_isClientEntitled)
    {
      v11 = +[PSDScheduler sharedScheduler];
    }

    else
    {
      v12 = psd_log();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);

      if (v13)
      {
        v14 = psd_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_10001B940(connectionCopy, v14);
        }
      }

      v11 = 0;
    }

    scheduler = v6->_scheduler;
    v6->_scheduler = v11;

    objc_storeStrong(&v6->_connection, connection);
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create("com.apple.syncsessionobserver", v16);
    queue = v6->_queue;
    v6->_queue = v17;

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100018010;
    v23[3] = &unk_10002C840;
    v19 = v6;
    v24 = v19;
    [connectionCopy setInvalidationHandler:v23];
    v20 = PSYSyncSessionProviderXPCInterface();
    [connectionCopy setExportedInterface:v20];

    [connectionCopy setExportedObject:v19];
    v21 = PSYSyncSessionObserverXPCInterface();
    [connectionCopy setRemoteObjectInterface:v21];

    [connectionCopy resume];
    [(PSDScheduler *)v6->_scheduler addSchedulerObserver:v19];
  }

  return v6;
}

- (void)checkin:(id)checkin
{
  checkinCopy = checkin;
  v5 = checkinCopy;
  if (self->_isClientEntitled)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100018174;
    v7[3] = &unk_10002CE68;
    v7[4] = self;
    v8 = checkinCopy;
    dispatch_async(queue, v7);
  }

  else
  {
    (*(checkinCopy + 2))(checkinCopy, 0);
  }
}

- (void)requestActiveSyncSessionWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000182C0;
  v7[3] = &unk_10002C6D0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

- (void)scheduler:(id)scheduler willStartSyncSession:(id)session
{
  sessionCopy = session;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001860C;
  v8[3] = &unk_10002C8B8;
  v8[4] = self;
  v9 = sessionCopy;
  v7 = sessionCopy;
  dispatch_async(queue, v8);
}

- (void)scheduler:(id)scheduler didUpdateSyncSessionWithUpdate:(id)update
{
  updateCopy = update;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000186F8;
  v8[3] = &unk_10002C8B8;
  v9 = updateCopy;
  selfCopy = self;
  v7 = updateCopy;
  dispatch_async(queue, v8);
}

- (void)scheduler:(id)scheduler didClearSyncSession:(id)session withBlock:(id)block
{
  sessionCopy = session;
  blockCopy = block;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001882C;
  block[3] = &unk_10002C908;
  block[4] = self;
  v13 = sessionCopy;
  v14 = blockCopy;
  v10 = blockCopy;
  v11 = sessionCopy;
  dispatch_async(queue, block);
}

@end