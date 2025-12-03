@interface IDSLocalMultiplexer
+ (id)sharedInstance;
- (BOOL)connectionCancel:(id)cancel;
- (BOOL)connectionRequest:(id)request;
- (BOOL)listenRequest:(id)request;
- (BOOL)registerMultiplexerTransport:(id)transport;
- (BOOL)setupTransportForConnection:(id)connection;
- (BOOL)unregisterMultiplexerTransport:(id)transport;
- (IDSLocalMultiplexer)init;
- (id)_localTransportForSession:(id)session;
@end

@implementation IDSLocalMultiplexer

+ (id)sharedInstance
{
  if (qword_100CBD408 != -1)
  {
    sub_100920900();
  }

  v2 = +[IDSFoundationLog Multiplexer];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = qword_100CBD410;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "IDSLocalMultiplexer sharedInstance returns %@", &v5, 0xCu);
  }

  v3 = qword_100CBD410;

  return v3;
}

- (IDSLocalMultiplexer)init
{
  v24.receiver = self;
  v24.super_class = IDSLocalMultiplexer;
  v2 = [(IDSLocalMultiplexer *)&v24 init];
  v3 = v2;
  if (!v2)
  {
    goto LABEL_14;
  }

  v2->_lock._os_unfair_lock_opaque = 0;
  v4 = nw_nexus_create();
  nexus = v3->_nexus;
  v3->_nexus = v4;

  if (v3->_nexus)
  {
    v6 = +[NSMutableDictionary dictionary];
    clientUUIDs = v3->_clientUUIDs;
    v3->_clientUUIDs = v6;

    v8 = +[NSMutableDictionary dictionary];
    connections = v3->_connections;
    v3->_connections = v8;

    v10 = +[NSMutableSet set];
    pendingConnections = v3->_pendingConnections;
    v3->_pendingConnections = v10;

    v12 = +[NSMutableDictionary dictionary];
    transports = v3->_transports;
    v3->_transports = v12;

    v14 = +[NSMutableDictionary dictionary];
    transportsInstances = v3->_transportsInstances;
    v3->_transportsInstances = v14;

    strcpy(v3->_osNexusName, "IDSMultiplexNexusOS");
    v16 = os_nexus_controller_create();
    v3->_osNexusController = v16;
    if (!v16)
    {
      v17 = +[IDSFoundationLog Multiplexer];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v23[0] = 0;
        v18 = "os_nexus_controller_create failed";
        goto LABEL_11;
      }

      goto LABEL_12;
    }

    if (os_nexus_controller_register_provider())
    {
      v17 = +[IDSFoundationLog Multiplexer];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v23[0] = 0;
        v18 = "os_nexus_controller_register_provider failed";
LABEL_11:
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v18, v23, 2u);
        goto LABEL_12;
      }

      goto LABEL_12;
    }

    v20 = +[IDSTransportLevelAgent sharedInstance];
    agent = v3->_agent;
    v3->_agent = v20;

    [(IDSTransportLevelAgent *)v3->_agent registerMultiplexer:v3 forIdentifier:@"local"];
LABEL_14:
    v19 = v3;
    goto LABEL_15;
  }

  v17 = +[IDSFoundationLog Multiplexer];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v23[0] = 0;
    v18 = "nw_nexus_create failed";
    goto LABEL_11;
  }

LABEL_12:

  v19 = 0;
LABEL_15:

  return v19;
}

- (BOOL)registerMultiplexerTransport:(id)transport
{
  transportCopy = transport;
  transports = self->_transports;
  identifier = [transportCopy identifier];
  v7 = [(NSMutableDictionary *)transports objectForKeyedSubscript:identifier];

  if (v7)
  {
    v8 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      identifier2 = [transportCopy identifier];
      v15 = 138412290;
      v16 = identifier2;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Transport %@ already registered! Cannot register duplicate.", &v15, 0xCu);
    }
  }

  else
  {
    v10 = self->_transports;
    identifier3 = [transportCopy identifier];
    [(NSMutableDictionary *)v10 setObject:transportCopy forKeyedSubscript:identifier3];

    v12 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = self->_transports;
      v15 = 138412546;
      v16 = transportCopy;
      v17 = 2112;
      v18 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Multiplexer added transport %@ to list of transports %@", &v15, 0x16u);
    }

    v8 = [transportCopy routeClientConnections:self->_pendingConnections];
    [(NSMutableSet *)self->_pendingConnections minusSet:v8];
  }

  return v7 == 0;
}

- (BOOL)unregisterMultiplexerTransport:(id)transport
{
  transportCopy = transport;
  transports = self->_transports;
  identifier = [transportCopy identifier];
  v7 = [(NSMutableDictionary *)transports objectForKeyedSubscript:identifier];

  if (v7)
  {
    v8 = self->_transports;
    identifier2 = [transportCopy identifier];
    [(NSMutableDictionary *)v8 setObject:0 forKeyedSubscript:identifier2];
  }

  else
  {
    v10 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      identifier3 = [transportCopy identifier];
      v13 = 138412290;
      v14 = identifier3;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Transport %@ not registered! Cannot unregister.", &v13, 0xCu);
    }
  }

  return v7 != 0;
}

- (BOOL)setupTransportForConnection:(id)connection
{
  connectionCopy = connection;
  memset(src, 170, sizeof(src));
  if (os_nexus_controller_alloc_provider_instance())
  {
    v5 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = "os_nexus_controller_alloc_provider_instance failed";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  memset(out, 170, sizeof(out));
  uuid_generate(out);
  getpid();
  if (!os_nexus_controller_bind_provider_instance())
  {
    processUUID = [connectionCopy processUUID];
    v29[0] = 0xAAAAAAAAAAAAAAAALL;
    v29[1] = 0xAAAAAAAAAAAAAAAALL;
    [processUUID getUUIDBytes:v29];
    [connectionCopy pid];
    if (os_nexus_controller_bind_provider_instance())
    {
      v10 = +[IDSFoundationLog Multiplexer];
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
LABEL_15:

LABEL_16:
        [connectionCopy invalidate];
        v7 = 0;
LABEL_17:

        goto LABEL_9;
      }

      *buf = 0;
      v11 = "os_nexus_controller_bind_provider_instance failed for client";
    }

    else
    {
      uuid_copy(self->_nexusInstanceUUID, src);
      if (os_channel_attr_create())
      {
        os_channel_attr_set_key();
        os_channel_attr_set();
        extended = os_channel_create_extended();
        v14 = +[IDSFoundationLog Multiplexer];
        v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
        if (!extended)
        {
          if (v15)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "os_channel_create_extended failed", buf, 2u);
          }

          goto LABEL_16;
        }

        if (v15)
        {
          localEndpoint = [connectionCopy localEndpoint];
          remoteEndpoint = [connectionCopy remoteEndpoint];
          *buf = 138412546;
          *&buf[4] = localEndpoint;
          v27 = 2112;
          v28 = remoteEndpoint;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "registration nexusdata localEndpoint %@ remoteEndpoint %@", buf, 0x16u);
        }

        *buf = 0;
        localEndpoint2 = [connectionCopy localEndpoint];
        remoteEndpoint2 = [connectionCopy remoteEndpoint];
        assign_message = nw_path_create_assign_message();

        if (assign_message)
        {
          registration = [(IDSTransportLevelAgent *)self->_agent registration];
          v22 = [NSData dataWithBytes:assign_message length:*buf];
          clientUUID = [connectionCopy clientUUID];
          v24 = [registration assignNexusData:v22 toClient:clientUUID];

          free(assign_message);
          if (v24)
          {
            [connectionCopy setOsChannel:extended];
            v7 = 1;
            goto LABEL_17;
          }

          v10 = +[IDSFoundationLog Multiplexer];
          if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_15;
          }

          LOWORD(v25) = 0;
          v11 = "assignNexusData:toClient: failed";
        }

        else
        {
          v10 = +[IDSFoundationLog Multiplexer];
          if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_15;
          }

          LOWORD(v25) = 0;
          v11 = "nw_path_create_assign_message failed";
        }

        v12 = &v25;
        goto LABEL_14;
      }

      v10 = +[IDSFoundationLog Multiplexer];
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      *buf = 0;
      v11 = "connectTransportThreadForClient: os_channel_attr_create failed";
    }

    v12 = buf;
LABEL_14:
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v11, v12, 2u);
    goto LABEL_15;
  }

  v5 = +[IDSFoundationLog Multiplexer];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v6 = "os_nexus_controller_bind_provider_instance failed for server";
    goto LABEL_7;
  }

LABEL_8:

  [connectionCopy invalidate];
  v7 = 0;
LABEL_9:

  return v7;
}

- (id)_localTransportForSession:(id)session
{
  sessionCopy = session;
  v5 = [(NSMutableDictionary *)self->_transportsInstances objectForKeyedSubscript:sessionCopy];
  if (!v5)
  {
    v5 = [[IDSMultiplexerLocalTransport alloc] initWithIdentifier:sessionCopy];
    [(NSMutableDictionary *)self->_transportsInstances setObject:v5 forKeyedSubscript:sessionCopy];
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_100471260;
    v10 = &unk_100BDA470;
    selfCopy = self;
    v12 = sessionCopy;
    [(IDSMultiplexerLocalTransport *)v5 setPacketBufferReadHandler:&v7];
    [(IDSLocalMultiplexer *)self registerMultiplexerTransport:v5, v7, v8, v9, v10, selfCopy];
  }

  return v5;
}

- (BOOL)connectionRequest:(id)request
{
  requestCopy = request;
  path = [requestCopy path];
  if (path)
  {
    v6 = nw_path_copy_endpoint();
    v7 = +[IDSFoundationLog Multiplexer];
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        *buf = 138412290;
        *&buf[4] = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "client endpoint %@", buf, 0xCu);
      }

      if (nw_endpoint_get_type(v6) != nw_endpoint_type_host)
      {
        v9 = +[IDSFoundationLog Multiplexer];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          clientUUID = [requestCopy clientUUID];
          *buf = 138412290;
          *&buf[4] = clientUUID;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "client endpoint type not 'host' for client %@", buf, 0xCu);
        }
      }

      port = nw_endpoint_get_port(v6);
      v12 = nw_endpoint_copy_port_string(v6);
      v13 = +[IDSFoundationLog Multiplexer];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109378;
        *&buf[4] = port;
        *&buf[8] = 2080;
        *&buf[10] = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "port %u portString %s", buf, 0x12u);
      }

      free(v12);
      v7 = nw_path_copy_parameters();
      v14 = +[IDSFoundationLog Multiplexer];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v7;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Client params: %@", buf, 0xCu);
      }

      endpoint = nw_path_copy_effective_local_endpoint(path);
      if (endpoint)
      {
        v15 = +[IDSFoundationLog Multiplexer];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = endpoint;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "client local endpoint %@", buf, 0xCu);
        }
      }

      v45 = nw_path_copy_effective_remote_endpoint(path);
      if (v45)
      {
        v16 = +[IDSFoundationLog Multiplexer];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v45;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "client remote endpoint %@", buf, 0xCu);
        }
      }

      v17 = +[IDSFoundationLog Multiplexer];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        multiplexerParams = [requestCopy multiplexerParams];
        clientUUID2 = [requestCopy clientUUID];
        *buf = 138412546;
        *&buf[4] = multiplexerParams;
        *&buf[12] = 2112;
        *&buf[14] = clientUUID2;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "client request [%@] for client %@", buf, 0x16u);
      }

      pid = nw_parameters_get_pid();
      v21 = pid != 0;
      if (pid)
      {
        v22 = pid;
        memset(buf, 170, 16);
        nw_parameters_get_proc_uuid();
        os_unfair_lock_lock(&self->_lock);
        multiplexerParams2 = [requestCopy multiplexerParams];
        sessionID = [multiplexerParams2 sessionID];
        v43 = [(IDSLocalMultiplexer *)self _localTransportForSession:sessionID];

        v25 = objc_alloc_init(IDSMultiplexerConnection);
        clientUUID3 = [requestCopy clientUUID];
        [(IDSMultiplexerConnection *)v25 setClientUUID:clientUUID3];

        [(IDSMultiplexerConnection *)v25 setPath:path];
        multiplexerParams3 = [requestCopy multiplexerParams];
        [(IDSMultiplexerConnection *)v25 setMultiplexerParams:multiplexerParams3];

        [(IDSMultiplexerConnection *)v25 setParameters:v7];
        [(IDSMultiplexerConnection *)v25 setPid:v22];
        v28 = [[NSUUID alloc] initWithUUIDBytes:buf];
        [(IDSMultiplexerConnection *)v25 setProcessUUID:v28];

        [(IDSMultiplexerConnection *)v25 setLocalPort:nw_endpoint_get_port(endpoint)];
        [(IDSMultiplexerConnection *)v25 setRemotePort:nw_endpoint_get_port(v45)];
        [(IDSMultiplexerConnection *)v25 setPortsSignature:[(IDSMultiplexerConnection *)v25 remotePort]| ([(IDSMultiplexerConnection *)v25 localPort]<< 16)];
        if ((nw_parameters_get_data_mode() & 0xFFFFFFFE) == 2)
        {
          [(IDSMultiplexerConnection *)v25 setIsTCP:1];
        }

        endpoint = [requestCopy endpoint];
        type = nw_endpoint_get_type(endpoint);

        if (type == nw_endpoint_type_host)
        {
          *&address.sa_data[6] = 0xAAAAAAAAAAAAAAAALL;
          address.sa_family = 2;
          *&address.sa_data[2] = 0;
          *address.sa_data = __rev16([(IDSMultiplexerConnection *)v25 localPort]);
          address.sa_len = 16;
          v31 = nw_endpoint_create_address(&address);
          [(IDSMultiplexerConnection *)v25 setLocalEndpoint:v31];

          address.sa_family = 2;
          *&address.sa_data[2] = 0;
          *address.sa_data = __rev16([(IDSMultiplexerConnection *)v25 remotePort]);
          address.sa_len = 16;
          v32 = nw_endpoint_create_address(&address);
          [(IDSMultiplexerConnection *)v25 setRemoteEndpoint:v32];
        }

        else
        {
          [(IDSMultiplexerConnection *)v25 setLocalEndpoint:endpoint];
          [(IDSMultiplexerConnection *)v25 setRemoteEndpoint:v45];
        }

        connections = self->_connections;
        clientUUID4 = [requestCopy clientUUID];
        [(NSMutableDictionary *)connections setObject:v25 forKeyedSubscript:clientUUID4];

        v39 = +[IDSFoundationLog Multiplexer];
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *&address.sa_len = 138412290;
          *&address.sa_data[2] = v25;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Created connection %@", &address.sa_len, 0xCu);
        }

        usleep(0x64u);
        [(NSMutableSet *)self->_pendingConnections addObject:v25];
        v40 = [(NSMutableSet *)self->_pendingConnections copy];
        [(IDSMultiplexerConnection *)v25 setTransport:v43];
        os_unfair_lock_unlock(&self->_lock);
        v41 = [v43 routeClientConnections:v40];
        os_unfair_lock_lock(&self->_lock);
        [(NSMutableSet *)self->_pendingConnections minusSet:v41];
        os_unfair_lock_unlock(&self->_lock);
      }

      else
      {
        v35 = +[IDSFoundationLog Multiplexer];
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          clientUUID5 = [requestCopy clientUUID];
          *buf = 138412290;
          *&buf[4] = clientUUID5;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Client UUID %@ having pid 0 (root) is not supported", buf, 0xCu);
        }
      }
    }

    else
    {
      if (v8)
      {
        clientUUID6 = [requestCopy clientUUID];
        *buf = 138412290;
        *&buf[4] = clientUUID6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "client does not have endpoint %@", buf, 0xCu);
      }

      v21 = 0;
    }
  }

  else
  {
    v6 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      clientUUID7 = [requestCopy clientUUID];
      *buf = 138412290;
      *&buf[4] = clientUUID7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "no nw_path for client %@", buf, 0xCu);
    }

    v21 = 0;
  }

  return v21;
}

- (BOOL)connectionCancel:(id)cancel
{
  cancelCopy = cancel;
  os_unfair_lock_lock(&self->_lock);
  connections = self->_connections;
  clientUUID = [cancelCopy clientUUID];
  v7 = [(NSMutableDictionary *)connections objectForKeyedSubscript:clientUUID];

  v8 = +[IDSFoundationLog Multiplexer];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = self->_connections;
    pendingConnections = self->_pendingConnections;
    v15 = 138412802;
    v16 = v7;
    v17 = 2112;
    v18 = v9;
    v19 = 2112;
    v20 = pendingConnections;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "connectionCancel: found connection %@ in _connections %@, _pendingConnections %@", &v15, 0x20u);
  }

  if (v7)
  {
    transport = [v7 transport];
    [transport cancelClientConnection:v7];

    [v7 invalidate];
    v12 = self->_connections;
    clientUUID2 = [cancelCopy clientUUID];
    [(NSMutableDictionary *)v12 setObject:0 forKeyedSubscript:clientUUID2];

    [(NSMutableSet *)self->_pendingConnections removeObject:v7];
  }

  os_unfair_lock_unlock(&self->_lock);

  return 1;
}

- (BOOL)listenRequest:(id)request
{
  requestCopy = request;
  path = [requestCopy path];
  if (path)
  {
    v6 = nw_path_copy_endpoint();
    v7 = +[IDSFoundationLog Multiplexer];
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (!v6)
    {
      if (v8)
      {
        clientUUID = [requestCopy clientUUID];
        *buf = 138412290;
        *v64 = clientUUID;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "client does not have endpoint %@", buf, 0xCu);
      }

LABEL_14:
      clientUUID7 = nw_path_copy_parameters();
      v14 = +[IDSFoundationLog Multiplexer];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v64 = clientUUID7;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Client params: %@", buf, 0xCu);
      }

      clientUUID6 = nw_path_copy_effective_local_endpoint(path);
      if (clientUUID6)
      {
        v16 = +[IDSFoundationLog Multiplexer];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v64 = clientUUID6;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "client local endpoint %@", buf, 0xCu);
        }
      }

      v17 = nw_path_copy_effective_remote_endpoint(path);
      if (v17)
      {
        v18 = +[IDSFoundationLog Multiplexer];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v64 = v17;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "client remote endpoint %@", buf, 0xCu);
        }
      }

      v19 = +[IDSFoundationLog Multiplexer];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        multiplexerParams = [requestCopy multiplexerParams];
        [requestCopy clientUUID];
        v21 = clientUUID7;
        v22 = v17;
        v23 = clientUUID6;
        v25 = v24 = self;
        *buf = 138412546;
        *v64 = multiplexerParams;
        *&v64[8] = 2112;
        *&v64[10] = v25;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "client request [%@] for client %@", buf, 0x16u);

        self = v24;
        clientUUID6 = v23;
        v17 = v22;
        clientUUID7 = v21;
      }

      pid = nw_parameters_get_pid();
      if (!pid)
      {
        v28 = +[IDSFoundationLog Multiplexer];
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          clientUUID2 = [requestCopy clientUUID];
          *buf = 138412290;
          *v64 = clientUUID2;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Client UUID %@ having pid 0 (root) is not supported", buf, 0xCu);
        }

        goto LABEL_41;
      }

      v27 = pid;
      v62[0] = 0xAAAAAAAAAAAAAAAALL;
      v62[1] = 0xAAAAAAAAAAAAAAAALL;
      nw_parameters_get_proc_uuid();
      memset(src, 170, sizeof(src));
      if (os_nexus_controller_alloc_provider_instance())
      {
        v28 = +[IDSFoundationLog Multiplexer];
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v29 = "os_nexus_controller_alloc_provider_instance failed";
LABEL_40:
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, v29, buf, 2u);
        }
      }

      else
      {
        memset(out, 170, sizeof(out));
        uuid_generate(out);
        getpid();
        if (os_nexus_controller_bind_provider_instance())
        {
          v28 = +[IDSFoundationLog Multiplexer];
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v29 = "os_nexus_controller_bind_provider_instance failed for server";
            goto LABEL_40;
          }
        }

        else if (os_nexus_controller_bind_provider_instance())
        {
          v28 = +[IDSFoundationLog Multiplexer];
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v29 = "os_nexus_controller_bind_provider_instance failed for client";
            goto LABEL_40;
          }
        }

        else
        {
          uuid_copy(self->_nexusInstanceUUID, src);
          if (!os_channel_attr_create())
          {
            v28 = +[IDSFoundationLog Multiplexer];
            if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_41;
            }

            *buf = 0;
            v29 = "connectTransportThreadForClient: os_channel_attr_create failed";
            goto LABEL_40;
          }

          endpoint = clientUUID6;
          os_channel_attr_set_key();
          os_channel_attr_set();
          selfCopy = self;
          extended = os_channel_create_extended();
          if (extended)
          {
            v54 = extended;
            *&address.sa_data[6] = 0xAAAAAAAAAAAAAAAALL;
            address.sa_family = 2;
            *&address.sa_data[2] = 0;
            *address.sa_data = __rev16(nw_endpoint_get_port(clientUUID6));
            address.sa_len = 16;
            v33 = nw_endpoint_create_address(&address);
            *&address.sa_len = 528;
            v34 = nw_endpoint_create_address(&address);
            v35 = +[IDSFoundationLog Multiplexer];
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              *v64 = v33;
              *&v64[8] = 2112;
              *&v64[10] = v34;
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "registration nexusdata localEndpoint %@ remoteEndpoint %@", buf, 0x16u);
            }

            v56 = v34;

            assign_message = nw_path_create_assign_message();
            if (assign_message)
            {
              v37 = assign_message;
              v55 = v33;
              registration = [(IDSTransportLevelAgent *)selfCopy->_agent registration];
              [NSData dataWithBytes:v37 length:0];
              v38 = v52 = v37;
              clientUUID3 = [requestCopy clientUUID];
              v51 = [registration assignNexusData:v38 toClient:clientUUID3];

              free(v52);
              if (v51)
              {
                os_unfair_lock_lock(&selfCopy->_lock);
                multiplexerParams2 = [requestCopy multiplexerParams];
                sessionID = [multiplexerParams2 sessionID];
                v53 = [(IDSLocalMultiplexer *)selfCopy _localTransportForSession:sessionID];

                v42 = objc_alloc_init(IDSMultiplexerConnection);
                clientUUID4 = [requestCopy clientUUID];
                [(IDSMultiplexerConnection *)v42 setClientUUID:clientUUID4];

                [(IDSMultiplexerConnection *)v42 setPath:path];
                multiplexerParams3 = [requestCopy multiplexerParams];
                [(IDSMultiplexerConnection *)v42 setMultiplexerParams:multiplexerParams3];

                [(IDSMultiplexerConnection *)v42 setParameters:clientUUID7];
                [(IDSMultiplexerConnection *)v42 setPid:v27];
                v45 = [[NSUUID alloc] initWithUUIDBytes:v62];
                [(IDSMultiplexerConnection *)v42 setProcessUUID:v45];

                [(IDSMultiplexerConnection *)v42 setLocalEndpoint:v55];
                [(IDSMultiplexerConnection *)v42 setRemoteEndpoint:v34];
                clientUUID6 = endpoint;
                [(IDSMultiplexerConnection *)v42 setLocalPort:nw_endpoint_get_port(endpoint)];
                [(IDSMultiplexerConnection *)v42 setRemotePort:0];
                LODWORD(v45) = nw_endpoint_get_port(endpoint);
                [(IDSMultiplexerConnection *)v42 setPortsSignature:nw_endpoint_get_port(v17) | (v45 << 16)];
                connections = selfCopy->_connections;
                clientUUID5 = [requestCopy clientUUID];
                [(NSMutableDictionary *)connections setObject:v42 forKeyedSubscript:clientUUID5];

                v48 = +[IDSFoundationLog Multiplexer];
                if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  *v64 = v42;
                  _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Created listener %@", buf, 0xCu);
                }

                usleep(0x64u);
                v49 = v53;
                [(IDSMultiplexerConnection *)v42 setTransport:v53];
                [(IDSMultiplexerConnection *)v42 setOsChannel:v54];
                os_unfair_lock_unlock(&selfCopy->_lock);
                [v53 addListenerConnection:v42];
              }

              else
              {
                v49 = +[IDSFoundationLog Multiplexer];
                clientUUID6 = endpoint;
                if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "assignNexusData:toClient: failed", buf, 2u);
                }
              }

              v33 = v55;
            }

            else
            {
              v49 = +[IDSFoundationLog Multiplexer];
              if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "nw_path_create_assign_message failed", buf, 2u);
              }

              clientUUID6 = endpoint;
            }

            goto LABEL_42;
          }

          v28 = +[IDSFoundationLog Multiplexer];
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v29 = "os_channel_create_extended failed";
            goto LABEL_40;
          }
        }
      }

LABEL_41:

LABEL_42:
      goto LABEL_43;
    }

    if (v8)
    {
      *buf = 138412290;
      *v64 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "client endpoint %@", buf, 0xCu);
    }

    if (nw_endpoint_get_type(v6) == nw_endpoint_type_host)
    {
      port = nw_endpoint_get_port(v6);
      v10 = nw_endpoint_copy_port_string(v6);
      v11 = +[IDSFoundationLog Multiplexer];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109378;
        *v64 = port;
        *&v64[4] = 2080;
        *&v64[6] = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "port %u portString %s", buf, 0x12u);
      }

      free(v10);
      goto LABEL_14;
    }

    clientUUID7 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(clientUUID7, OS_LOG_TYPE_DEFAULT))
    {
      clientUUID6 = [requestCopy clientUUID];
      *buf = 138412290;
      *v64 = clientUUID6;
      _os_log_impl(&_mh_execute_header, clientUUID7, OS_LOG_TYPE_DEFAULT, "client endpoint type not 'host' for client %@", buf, 0xCu);
LABEL_43:
    }

LABEL_44:

    goto LABEL_45;
  }

  v6 = +[IDSFoundationLog Multiplexer];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    clientUUID7 = [requestCopy clientUUID];
    *buf = 138412290;
    *v64 = clientUUID7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "no nw_path for client %@", buf, 0xCu);
    goto LABEL_44;
  }

LABEL_45:

  return 0;
}

@end