@interface MRDUIControllerConnection
+ (BSServiceInterface)serviceInterface;
- (BSServiceConnectionClient)serviceConnection;
- (MRDUIControllerConnection)initWithClientObject:(id)object invalidationHandler:(id)handler;
- (MRUIServerProtocol)server;
- (void)dealloc;
@end

@implementation MRDUIControllerConnection

- (MRDUIControllerConnection)initWithClientObject:(id)object invalidationHandler:(id)handler
{
  objectCopy = object;
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = MRDUIControllerConnection;
  v9 = [(MRDUIControllerConnection *)&v14 init];
  if (v9)
  {
    v10 = _MRLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[MRUIControllerConnection] <%p> Initializing.", buf, 0xCu);
    }

    v11 = objc_retainBlock(handlerCopy);
    invalidationHandler = v9->_invalidationHandler;
    v9->_invalidationHandler = v11;

    objc_storeStrong(&v9->_client, object);
    v9->_lock._os_unfair_lock_opaque = 0;
  }

  return v9;
}

- (void)dealloc
{
  [(BSServiceConnectionClient *)self->_serviceConnection invalidate];
  v3 = _MRLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[MRUIControllerConnection] <%p> Dealloc.", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = MRDUIControllerConnection;
  [(MRDUIControllerConnection *)&v4 dealloc];
}

- (MRUIServerProtocol)server
{
  serviceConnection = [(MRDUIControllerConnection *)self serviceConnection];
  v3 = [RBSDomainAttribute attributeWithDomain:@"com.apple.common" name:@"BasicAngelIPC"];
  v7 = v3;
  v4 = [NSArray arrayWithObjects:&v7 count:1];
  v5 = [serviceConnection remoteTargetWithLaunchingAssertionAttributes:v4];

  return v5;
}

- (BSServiceConnectionClient)serviceConnection
{
  os_unfair_lock_lock(&self->_lock);
  serviceConnection = self->_serviceConnection;
  if (!serviceConnection)
  {
    v4 = _MRLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[MRUIControllerConnection] <%p> Creating service connection.", buf, 0xCu);
    }

    v5 = [BSServiceConnectionEndpoint endpointForMachName:@"com.apple.mediaremoteui.services" service:@"com.apple.mediaremoteui.ui-service" instance:0];
    if (v5)
    {
      objc_initWeak(buf, self);
      v6 = [BSServiceConnection connectionWithEndpoint:v5];
      v7 = self->_serviceConnection;
      self->_serviceConnection = v6;

      v8 = self->_serviceConnection;
      v12 = _NSConcreteStackBlock;
      v13 = 3221225472;
      v14 = sub_1000C321C;
      v15 = &unk_1004BB0D0;
      selfCopy2 = self;
      objc_copyWeak(&v17, buf);
      [(BSServiceConnectionClient *)v8 configureConnection:&v12];
      [(BSServiceConnectionClient *)self->_serviceConnection activate:v12];
      objc_destroyWeak(&v17);
      objc_destroyWeak(buf);
    }

    else
    {
      v9 = _MRLogForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1003A7744(self, v9);
      }
    }

    serviceConnection = self->_serviceConnection;
  }

  v10 = serviceConnection;
  os_unfair_lock_unlock(&self->_lock);

  return v10;
}

+ (BSServiceInterface)serviceInterface
{
  if (qword_100529348 != -1)
  {
    sub_1003A77BC();
  }

  v3 = qword_100529340;

  return v3;
}

@end