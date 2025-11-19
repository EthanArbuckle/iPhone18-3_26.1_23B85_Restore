@interface CSAttendingUsecaseProxy
- (CSAttendingServiceDelegate)delegate;
- (CSAttendingUsecaseManager)usecaseManager;
- (CSAttendingUsecaseProxy)initWithConnection:(id)a3 audioProviderSelector:(id)a4 usecaseManager:(id)a5 attendingStatesProvidingProxy:(id)a6;
- (void)_invokeHandler;
- (void)attendingStoppedWithReason:(int64_t)a3;
- (void)dealloc;
- (void)reset;
- (void)setupConnectionErrorHandler:(id)a3;
- (void)setupListenerDelegate:(id)a3;
- (void)speechStartDetectedWithEventInfo:(id)a3;
- (void)startAttendingWithOptions:(id)a3 completion:(id)a4;
- (void)stopAttendingWithReason:(int64_t)a3;
@end

@implementation CSAttendingUsecaseProxy

- (CSAttendingUsecaseManager)usecaseManager
{
  WeakRetained = objc_loadWeakRetained(&self->_usecaseManager);

  return WeakRetained;
}

- (CSAttendingServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)speechStartDetectedWithEventInfo:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100014D64;
  v7[3] = &unk_100253C48;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)attendingStoppedWithReason:(int64_t)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100014EE0;
  v4[3] = &unk_100253C98;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(queue, v4);
}

- (void)reset
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001507C;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)stopAttendingWithReason:(int64_t)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100015134;
  v4[3] = &unk_100253C98;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(queue, v4);
}

- (void)startAttendingWithOptions:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000152B0;
  block[3] = &unk_1002533A0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)dealloc
{
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v7 = "[CSAttendingUsecaseProxy dealloc]";
    v8 = 2112;
    v9 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Dealloc: %@", buf, 0x16u);
  }

  usecaseController = self->_usecaseController;
  self->_usecaseController = 0;

  [(CSAttendingAnnounceHandler *)self->_announceHandler setDelegate:0];
  v5.receiver = self;
  v5.super_class = CSAttendingUsecaseProxy;
  [(CSAttendingUsecaseProxy *)&v5 dealloc];
}

- (void)_invokeHandler
{
  errorHandler = self->_errorHandler;
  if (errorHandler)
  {
    errorHandler[2](errorHandler, a2);
    v4 = self->_errorHandler;
    self->_errorHandler = 0;
  }
}

- (void)setupConnectionErrorHandler:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015884;
  block[3] = &unk_100253718;
  block[4] = self;
  v6 = v4;
  v18 = v6;
  dispatch_async(queue, block);
  objc_initWeak(&location, self);
  objc_initWeak(&from, self->_connection);
  connection = self->_connection;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000158C8;
  v12[3] = &unk_100252B28;
  objc_copyWeak(&v13, &location);
  objc_copyWeak(&v14, &from);
  [(NSXPCConnection *)connection setInterruptionHandler:v12];
  v8 = self->_connection;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100015A64;
  v9[3] = &unk_100252B28;
  objc_copyWeak(&v10, &location);
  objc_copyWeak(&v11, &from);
  [(NSXPCConnection *)v8 setInvalidationHandler:v9];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

- (void)setupListenerDelegate:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100015D10;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (CSAttendingUsecaseProxy)initWithConnection:(id)a3 audioProviderSelector:(id)a4 usecaseManager:(id)a5 attendingStatesProvidingProxy:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v23.receiver = self;
  v23.super_class = CSAttendingUsecaseProxy;
  v15 = [(CSAttendingUsecaseProxy *)&v23 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_connection, a3);
    objc_storeStrong(&v16->_audioProviderSelector, a4);
    objc_storeWeak(&v16->_usecaseManager, v13);
    v17 = objc_alloc_init(CSAttendingAnnounceHandler);
    announceHandler = v16->_announceHandler;
    v16->_announceHandler = v17;

    objc_storeStrong(&v16->_attendingStatesProvidingProxy, a6);
    v19 = [CSUtils getSerialQueue:@"CSAttendingUsecaseProxy Queue" qualityOfService:33];
    queue = v16->_queue;
    v16->_queue = v19;

    v21 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v25 = "[CSAttendingUsecaseProxy initWithConnection:audioProviderSelector:usecaseManager:attendingStatesProvidingProxy:]";
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
    }
  }

  return v16;
}

@end