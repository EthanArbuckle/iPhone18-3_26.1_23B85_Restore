@interface ACCClientPortShim
- (ACCClientPortShim)initWithUID:(id)d xpcConnection:(id)connection delegate:(id)delegate;
- (void)receiveData:(char *)data length:(unint64_t)length;
- (void)sendData:(char *)data length:(unint64_t)length;
- (void)sendData:(id)data;
- (void)shutdown;
@end

@implementation ACCClientPortShim

- (ACCClientPortShim)initWithUID:(id)d xpcConnection:(id)connection delegate:(id)delegate
{
  dCopy = d;
  connectionCopy = connection;
  delegateCopy = delegate;
  v23.receiver = self;
  v23.super_class = ACCClientPortShim;
  v12 = [(ACCClientPortShim *)&v23 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_portUID, d);
    objc_storeStrong(&v13->_xpcConnection, connection);
    objc_storeStrong(&v13->_delegate, delegate);
    v14 = +[ACCTransportClient sharedClient];
    v15 = [v14 createConnectionWithType:5 andIdentifier:dCopy];
    transportClientConnectionID = v13->_transportClientConnectionID;
    v13->_transportClientConnectionID = v15;

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = __56__ACCClientPortShim_initWithUID_xpcConnection_delegate___block_invoke;
    v21[3] = &unk_1002267F8;
    v17 = v13;
    v22 = v17;
    v18 = [v14 createEndpointWithTransportType:4 andProtocol:4 andIdentifier:dCopy andDataOutHandler:v21 forConnectionWithUUID:v13->_transportClientConnectionID publishConnection:1];
    transportClientEndpointID = v17->_transportClientEndpointID;
    v17->_transportClientEndpointID = v18;
  }

  return v13;
}

- (void)shutdown
{
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 7;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v5 = &_os_log_default;
    v4 = &_os_log_default;
  }

  else
  {
    v5 = *(gLogObjects + 48);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(ACCClientPortShim *)self description];
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ACCClientPortShims shutDown:  %@", &v10, 0xCu);
  }

  v7 = +[ACCTransportClient sharedClient];
  [v7 destroyEndpointWithUUID:self->_transportClientEndpointID];
  [v7 destroyConnectionWithUUID:self->_transportClientConnectionID];
  transportClientConnectionID = self->_transportClientConnectionID;
  self->_transportClientConnectionID = 0;

  transportClientEndpointID = self->_transportClientEndpointID;
  self->_transportClientEndpointID = 0;
}

- (void)receiveData:(char *)data length:(unint64_t)length
{
  v8 = +[ACCTransportClient sharedClient];
  v7 = [NSData dataWithBytes:data length:length];
  [v8 processIncomingData:v7 forEndpointWithUUID:self->_transportClientEndpointID];
}

- (void)sendData:(char *)data length:(unint64_t)length
{
  if (data && length)
  {
    xpcConnection = self->_xpcConnection;
    portUID = self->_portUID;
    delegate = self->_delegate;

    [ACCClientPortShimDelegate sendData:"sendData:length:forConnection:portUID:" length:? forConnection:? portUID:?];
  }

  else
  {
    v13 = v4;
    v14 = v5;
    if (gLogObjects)
    {
      v9 = gNumLogObjects < 7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v11 = &_os_log_default;
      v10 = &_os_log_default;
    }

    else
    {
      v11 = *(gLogObjects + 48);
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "ACCClientPortShim: ERROR: NULL transport data", v12, 2u);
    }
  }
}

- (void)sendData:(id)data
{
  if (data)
  {
    dataCopy = data;
    dataCopy2 = data;
    bytes = [dataCopy2 bytes];
    v8 = [dataCopy2 length];

    [(ACCClientPortShim *)self sendData:bytes length:v8];
  }
}

@end