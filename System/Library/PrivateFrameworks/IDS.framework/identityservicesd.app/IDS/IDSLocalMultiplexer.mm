@interface IDSLocalMultiplexer
+ (id)sharedInstance;
- (BOOL)connectionCancel:(id)a3;
- (BOOL)connectionRequest:(id)a3;
- (BOOL)listenRequest:(id)a3;
- (BOOL)registerMultiplexerTransport:(id)a3;
- (BOOL)setupTransportForConnection:(id)a3;
- (BOOL)unregisterMultiplexerTransport:(id)a3;
- (IDSLocalMultiplexer)init;
- (id)_localTransportForSession:(id)a3;
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

- (BOOL)registerMultiplexerTransport:(id)a3
{
  v4 = a3;
  transports = self->_transports;
  v6 = [v4 identifier];
  v7 = [(NSMutableDictionary *)transports objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v4 identifier];
      v15 = 138412290;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Transport %@ already registered! Cannot register duplicate.", &v15, 0xCu);
    }
  }

  else
  {
    v10 = self->_transports;
    v11 = [v4 identifier];
    [(NSMutableDictionary *)v10 setObject:v4 forKeyedSubscript:v11];

    v12 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = self->_transports;
      v15 = 138412546;
      v16 = v4;
      v17 = 2112;
      v18 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Multiplexer added transport %@ to list of transports %@", &v15, 0x16u);
    }

    v8 = [v4 routeClientConnections:self->_pendingConnections];
    [(NSMutableSet *)self->_pendingConnections minusSet:v8];
  }

  return v7 == 0;
}

- (BOOL)unregisterMultiplexerTransport:(id)a3
{
  v4 = a3;
  transports = self->_transports;
  v6 = [v4 identifier];
  v7 = [(NSMutableDictionary *)transports objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = self->_transports;
    v9 = [v4 identifier];
    [(NSMutableDictionary *)v8 setObject:0 forKeyedSubscript:v9];
  }

  else
  {
    v10 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v4 identifier];
      v13 = 138412290;
      v14 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Transport %@ not registered! Cannot unregister.", &v13, 0xCu);
    }
  }

  return v7 != 0;
}

- (BOOL)setupTransportForConnection:(id)a3
{
  v4 = a3;
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
    v9 = [v4 processUUID];
    v29[0] = 0xAAAAAAAAAAAAAAAALL;
    v29[1] = 0xAAAAAAAAAAAAAAAALL;
    [v9 getUUIDBytes:v29];
    [v4 pid];
    if (os_nexus_controller_bind_provider_instance())
    {
      v10 = +[IDSFoundationLog Multiplexer];
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
LABEL_15:

LABEL_16:
        [v4 invalidate];
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
          v16 = [v4 localEndpoint];
          v17 = [v4 remoteEndpoint];
          *buf = 138412546;
          *&buf[4] = v16;
          v27 = 2112;
          v28 = v17;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "registration nexusdata localEndpoint %@ remoteEndpoint %@", buf, 0x16u);
        }

        *buf = 0;
        v18 = [v4 localEndpoint];
        v19 = [v4 remoteEndpoint];
        assign_message = nw_path_create_assign_message();

        if (assign_message)
        {
          v21 = [(IDSTransportLevelAgent *)self->_agent registration];
          v22 = [NSData dataWithBytes:assign_message length:*buf];
          v23 = [v4 clientUUID];
          v24 = [v21 assignNexusData:v22 toClient:v23];

          free(assign_message);
          if (v24)
          {
            [v4 setOsChannel:extended];
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

  [v4 invalidate];
  v7 = 0;
LABEL_9:

  return v7;
}

- (id)_localTransportForSession:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_transportsInstances objectForKeyedSubscript:v4];
  if (!v5)
  {
    v5 = [[IDSMultiplexerLocalTransport alloc] initWithIdentifier:v4];
    [(NSMutableDictionary *)self->_transportsInstances setObject:v5 forKeyedSubscript:v4];
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_100471260;
    v10 = &unk_100BDA470;
    v11 = self;
    v12 = v4;
    [(IDSMultiplexerLocalTransport *)v5 setPacketBufferReadHandler:&v7];
    [(IDSLocalMultiplexer *)self registerMultiplexerTransport:v5, v7, v8, v9, v10, v11];
  }

  return v5;
}

- (BOOL)connectionRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 path];
  if (v5)
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
          v10 = [v4 clientUUID];
          *buf = 138412290;
          *&buf[4] = v10;
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

      endpoint = nw_path_copy_effective_local_endpoint(v5);
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

      v45 = nw_path_copy_effective_remote_endpoint(v5);
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
        v18 = [v4 multiplexerParams];
        v19 = [v4 clientUUID];
        *buf = 138412546;
        *&buf[4] = v18;
        *&buf[12] = 2112;
        *&buf[14] = v19;
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
        v23 = [v4 multiplexerParams];
        v24 = [v23 sessionID];
        v43 = [(IDSLocalMultiplexer *)self _localTransportForSession:v24];

        v25 = objc_alloc_init(IDSMultiplexerConnection);
        v26 = [v4 clientUUID];
        [(IDSMultiplexerConnection *)v25 setClientUUID:v26];

        [(IDSMultiplexerConnection *)v25 setPath:v5];
        v27 = [v4 multiplexerParams];
        [(IDSMultiplexerConnection *)v25 setMultiplexerParams:v27];

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

        v29 = [v4 endpoint];
        type = nw_endpoint_get_type(v29);

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
        v38 = [v4 clientUUID];
        [(NSMutableDictionary *)connections setObject:v25 forKeyedSubscript:v38];

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
          v36 = [v4 clientUUID];
          *buf = 138412290;
          *&buf[4] = v36;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Client UUID %@ having pid 0 (root) is not supported", buf, 0xCu);
        }
      }
    }

    else
    {
      if (v8)
      {
        v34 = [v4 clientUUID];
        *buf = 138412290;
        *&buf[4] = v34;
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
      v33 = [v4 clientUUID];
      *buf = 138412290;
      *&buf[4] = v33;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "no nw_path for client %@", buf, 0xCu);
    }

    v21 = 0;
  }

  return v21;
}

- (BOOL)connectionCancel:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  connections = self->_connections;
  v6 = [v4 clientUUID];
  v7 = [(NSMutableDictionary *)connections objectForKeyedSubscript:v6];

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
    v11 = [v7 transport];
    [v11 cancelClientConnection:v7];

    [v7 invalidate];
    v12 = self->_connections;
    v13 = [v4 clientUUID];
    [(NSMutableDictionary *)v12 setObject:0 forKeyedSubscript:v13];

    [(NSMutableSet *)self->_pendingConnections removeObject:v7];
  }

  os_unfair_lock_unlock(&self->_lock);

  return 1;
}

- (BOOL)listenRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 path];
  if (v5)
  {
    v6 = nw_path_copy_endpoint();
    v7 = +[IDSFoundationLog Multiplexer];
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (!v6)
    {
      if (v8)
      {
        v13 = [v4 clientUUID];
        *buf = 138412290;
        *v64 = v13;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "client does not have endpoint %@", buf, 0xCu);
      }

LABEL_14:
      v12 = nw_path_copy_parameters();
      v14 = +[IDSFoundationLog Multiplexer];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v64 = v12;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Client params: %@", buf, 0xCu);
      }

      v15 = nw_path_copy_effective_local_endpoint(v5);
      if (v15)
      {
        v16 = +[IDSFoundationLog Multiplexer];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v64 = v15;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "client local endpoint %@", buf, 0xCu);
        }
      }

      v17 = nw_path_copy_effective_remote_endpoint(v5);
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
        v20 = [v4 multiplexerParams];
        [v4 clientUUID];
        v21 = v12;
        v22 = v17;
        v23 = v15;
        v25 = v24 = self;
        *buf = 138412546;
        *v64 = v20;
        *&v64[8] = 2112;
        *&v64[10] = v25;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "client request [%@] for client %@", buf, 0x16u);

        self = v24;
        v15 = v23;
        v17 = v22;
        v12 = v21;
      }

      pid = nw_parameters_get_pid();
      if (!pid)
      {
        v28 = +[IDSFoundationLog Multiplexer];
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v30 = [v4 clientUUID];
          *buf = 138412290;
          *v64 = v30;
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

          endpoint = v15;
          os_channel_attr_set_key();
          os_channel_attr_set();
          v57 = self;
          extended = os_channel_create_extended();
          if (extended)
          {
            v54 = extended;
            *&address.sa_data[6] = 0xAAAAAAAAAAAAAAAALL;
            address.sa_family = 2;
            *&address.sa_data[2] = 0;
            *address.sa_data = __rev16(nw_endpoint_get_port(v15));
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
              v50 = [(IDSTransportLevelAgent *)v57->_agent registration];
              [NSData dataWithBytes:v37 length:0];
              v38 = v52 = v37;
              v39 = [v4 clientUUID];
              v51 = [v50 assignNexusData:v38 toClient:v39];

              free(v52);
              if (v51)
              {
                os_unfair_lock_lock(&v57->_lock);
                v40 = [v4 multiplexerParams];
                v41 = [v40 sessionID];
                v53 = [(IDSLocalMultiplexer *)v57 _localTransportForSession:v41];

                v42 = objc_alloc_init(IDSMultiplexerConnection);
                v43 = [v4 clientUUID];
                [(IDSMultiplexerConnection *)v42 setClientUUID:v43];

                [(IDSMultiplexerConnection *)v42 setPath:v5];
                v44 = [v4 multiplexerParams];
                [(IDSMultiplexerConnection *)v42 setMultiplexerParams:v44];

                [(IDSMultiplexerConnection *)v42 setParameters:v12];
                [(IDSMultiplexerConnection *)v42 setPid:v27];
                v45 = [[NSUUID alloc] initWithUUIDBytes:v62];
                [(IDSMultiplexerConnection *)v42 setProcessUUID:v45];

                [(IDSMultiplexerConnection *)v42 setLocalEndpoint:v55];
                [(IDSMultiplexerConnection *)v42 setRemoteEndpoint:v34];
                v15 = endpoint;
                [(IDSMultiplexerConnection *)v42 setLocalPort:nw_endpoint_get_port(endpoint)];
                [(IDSMultiplexerConnection *)v42 setRemotePort:0];
                LODWORD(v45) = nw_endpoint_get_port(endpoint);
                [(IDSMultiplexerConnection *)v42 setPortsSignature:nw_endpoint_get_port(v17) | (v45 << 16)];
                connections = v57->_connections;
                v47 = [v4 clientUUID];
                [(NSMutableDictionary *)connections setObject:v42 forKeyedSubscript:v47];

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
                os_unfair_lock_unlock(&v57->_lock);
                [v53 addListenerConnection:v42];
              }

              else
              {
                v49 = +[IDSFoundationLog Multiplexer];
                v15 = endpoint;
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

              v15 = endpoint;
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

    v12 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v4 clientUUID];
      *buf = 138412290;
      *v64 = v15;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "client endpoint type not 'host' for client %@", buf, 0xCu);
LABEL_43:
    }

LABEL_44:

    goto LABEL_45;
  }

  v6 = +[IDSFoundationLog Multiplexer];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v4 clientUUID];
    *buf = 138412290;
    *v64 = v12;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "no nw_path for client %@", buf, 0xCu);
    goto LABEL_44;
  }

LABEL_45:

  return 0;
}

@end