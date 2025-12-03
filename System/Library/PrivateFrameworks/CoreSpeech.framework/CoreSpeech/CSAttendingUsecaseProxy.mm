@interface CSAttendingUsecaseProxy
- (CSAttendingServiceDelegate)delegate;
- (CSAttendingUsecaseManager)usecaseManager;
- (CSAttendingUsecaseProxy)initWithConnection:(id)connection audioProviderSelector:(id)selector usecaseManager:(id)manager attendingStatesProvidingProxy:(id)proxy;
- (void)_invokeHandler;
- (void)attendingStoppedWithReason:(int64_t)reason;
- (void)dealloc;
- (void)reset;
- (void)setupConnectionErrorHandler:(id)handler;
- (void)setupListenerDelegate:(id)delegate;
- (void)speechStartDetectedWithEventInfo:(id)info;
- (void)startAttendingWithOptions:(id)options completion:(id)completion;
- (void)stopAttendingWithReason:(int64_t)reason;
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

- (void)speechStartDetectedWithEventInfo:(id)info
{
  infoCopy = info;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100014D64;
  v7[3] = &unk_100253C48;
  v8 = infoCopy;
  selfCopy = self;
  v6 = infoCopy;
  dispatch_async(queue, v7);
}

- (void)attendingStoppedWithReason:(int64_t)reason
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100014EE0;
  v4[3] = &unk_100253C98;
  v4[4] = self;
  v4[5] = reason;
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

- (void)stopAttendingWithReason:(int64_t)reason
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100015134;
  v4[3] = &unk_100253C98;
  v4[4] = self;
  v4[5] = reason;
  dispatch_async(queue, v4);
}

- (void)startAttendingWithOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000152B0;
  block[3] = &unk_1002533A0;
  block[4] = self;
  v12 = optionsCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = optionsCopy;
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
    selfCopy = self;
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

- (void)setupConnectionErrorHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015884;
  block[3] = &unk_100253718;
  block[4] = self;
  v6 = handlerCopy;
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

- (void)setupListenerDelegate:(id)delegate
{
  delegateCopy = delegate;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100015D10;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(queue, v7);
}

- (CSAttendingUsecaseProxy)initWithConnection:(id)connection audioProviderSelector:(id)selector usecaseManager:(id)manager attendingStatesProvidingProxy:(id)proxy
{
  connectionCopy = connection;
  selectorCopy = selector;
  managerCopy = manager;
  proxyCopy = proxy;
  v23.receiver = self;
  v23.super_class = CSAttendingUsecaseProxy;
  v15 = [(CSAttendingUsecaseProxy *)&v23 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_connection, connection);
    objc_storeStrong(&v16->_audioProviderSelector, selector);
    objc_storeWeak(&v16->_usecaseManager, managerCopy);
    v17 = objc_alloc_init(CSAttendingAnnounceHandler);
    announceHandler = v16->_announceHandler;
    v16->_announceHandler = v17;

    objc_storeStrong(&v16->_attendingStatesProvidingProxy, proxy);
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