@interface ACCClientPortShim
- (ACCClientPortShim)initWithUID:(id)a3 xpcConnection:(id)a4 delegate:(id)a5;
- (void)receiveData:(char *)a3 length:(unint64_t)a4;
- (void)sendData:(char *)a3 length:(unint64_t)a4;
- (void)sendData:(id)a3;
- (void)shutdown;
@end

@implementation ACCClientPortShim

- (ACCClientPortShim)initWithUID:(id)a3 xpcConnection:(id)a4 delegate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v23.receiver = self;
  v23.super_class = ACCClientPortShim;
  v12 = [(ACCClientPortShim *)&v23 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_portUID, a3);
    objc_storeStrong(&v13->_xpcConnection, a4);
    objc_storeStrong(&v13->_delegate, a5);
    v14 = +[ACCTransportClient sharedClient];
    v15 = [v14 createConnectionWithType:5 andIdentifier:v9];
    transportClientConnectionID = v13->_transportClientConnectionID;
    v13->_transportClientConnectionID = v15;

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = __56__ACCClientPortShim_initWithUID_xpcConnection_delegate___block_invoke;
    v21[3] = &unk_1002267F8;
    v17 = v13;
    v22 = v17;
    v18 = [v14 createEndpointWithTransportType:4 andProtocol:4 andIdentifier:v9 andDataOutHandler:v21 forConnectionWithUUID:v13->_transportClientConnectionID publishConnection:1];
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

- (void)receiveData:(char *)a3 length:(unint64_t)a4
{
  v8 = +[ACCTransportClient sharedClient];
  v7 = [NSData dataWithBytes:a3 length:a4];
  [v8 processIncomingData:v7 forEndpointWithUUID:self->_transportClientEndpointID];
}

- (void)sendData:(char *)a3 length:(unint64_t)a4
{
  if (a3 && a4)
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

- (void)sendData:(id)a3
{
  if (a3)
  {
    v5 = a3;
    v6 = a3;
    v7 = [v6 bytes];
    v8 = [v6 length];

    [(ACCClientPortShim *)self sendData:v7 length:v8];
  }
}

@end