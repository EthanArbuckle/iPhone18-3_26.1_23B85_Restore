@interface NSSConnectionHandler
- (BOOL)hasNanoSystemSettingsEntitlementKey:(id)key;
- (NSSConnectionHandler)initWithConnection:(id)connection delegate:(id)delegate;
- (NSSConnectionHandlerDelegate)delegate;
- (void)askRemoteDeviceToPasscodeLockWithCompletionHandler:(id)handler;
- (void)getUsageData:(id)data;
- (void)notifyRemoteDeviceOfUsageAfterSetup:(id)setup;
@end

@implementation NSSConnectionHandler

- (NSSConnectionHandler)initWithConnection:(id)connection delegate:(id)delegate
{
  connectionCopy = connection;
  delegateCopy = delegate;
  v18.receiver = self;
  v18.super_class = NSSConnectionHandler;
  v9 = [(NSSConnectionHandler *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_connection, connection);
    objc_storeWeak(&v10->_delegate, delegateCopy);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100014CF4;
    block[3] = &unk_100034B48;
    v11 = v10;
    v17 = v11;
    if (qword_10003DD20 != -1)
    {
      dispatch_once(&qword_10003DD20, block);
    }

    [(NSXPCConnection *)v10->_connection setExportedInterface:qword_10003DD28];
    [(NSXPCConnection *)v10->_connection setExportedObject:v11];
    objc_initWeak(&location, v11);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100014D68;
    v13[3] = &unk_100034ED8;
    objc_copyWeak(&v14, &location);
    [(NSXPCConnection *)v10->_connection setInvalidationHandler:v13];
    [(NSXPCConnection *)v10->_connection setInterruptionHandler:0];
    [(NSXPCConnection *)v10->_connection resume];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v10;
}

- (BOOL)hasNanoSystemSettingsEntitlementKey:(id)key
{
  keyCopy = key;
  connection = [(NSSConnectionHandler *)self connection];
  v6 = [connection valueForEntitlement:off_10003D9D8];

  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v6 containsObject:keyCopy] & 1) != 0)
  {
    v7 = 1;
  }

  else
  {
    v8 = NSSLogForType();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      connection = self->_connection;
      v11 = 138412802;
      v12 = connection;
      v13 = 2112;
      v14 = off_10003D9D8;
      v15 = 2112;
      v16 = keyCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Entitlement check for connection (%@) failed; Expecting: (%@/%@)", &v11, 0x20u);
    }

    v7 = 0;
  }

  return v7;
}

- (void)getUsageData:(id)data
{
  v4 = off_10003D9E0;
  dataCopy = data;
  if ([(NSSConnectionHandler *)self hasNanoSystemSettingsEntitlementKey:v4])
  {
    delegate = [(NSSConnectionHandler *)self delegate];
    [delegate getUsageData:dataCopy];
  }

  else
  {
    delegate = [NSError errorWithDomain:@"NSSErrorDomain" code:1 userInfo:0];
    dataCopy[2](dataCopy, 0);
  }
}

- (void)askRemoteDeviceToPasscodeLockWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  delegate = [(NSSConnectionHandler *)self delegate];
  [delegate askRemoteDeviceToPasscodeLockWithCompletionHandler:handlerCopy];
}

- (void)notifyRemoteDeviceOfUsageAfterSetup:(id)setup
{
  setupCopy = setup;
  delegate = [(NSSConnectionHandler *)self delegate];
  [delegate notifyRemoteDeviceOfUsageAfterSetup:setupCopy];
}

- (NSSConnectionHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end