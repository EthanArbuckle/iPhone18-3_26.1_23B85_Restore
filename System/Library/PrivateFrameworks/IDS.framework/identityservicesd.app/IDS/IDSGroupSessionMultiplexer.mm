@interface IDSGroupSessionMultiplexer
+ (id)sharedInstance;
- (BOOL)addNewConnectionToMultiplexerTransport:(id)transport;
- (BOOL)connectionCancel:(id)cancel;
- (BOOL)connectionRequest:(id)request;
- (BOOL)listenRequest:(id)request;
- (BOOL)registerMultiplexerTransport:(id)transport;
- (BOOL)setupTransportForConnection:(id)connection;
- (BOOL)unregisterMultiplexerTransport:(id)transport;
- (IDSGroupSessionMultiplexer)init;
- (id)initAndSetupNexus;
- (unsigned)_getRandomPortForQUIC;
- (void)_releaseQUICPort:(unsigned __int16)port;
- (void)resetConnection:(id)connection errorCode:(int)code;
@end

@implementation IDSGroupSessionMultiplexer

+ (id)sharedInstance
{
  if (qword_100CBD220 != -1)
  {
    sub_10091D108();
  }

  v3 = qword_100CBD228;

  return v3;
}

- (id)initAndSetupNexus
{
  v2 = [(IDSGroupSessionMultiplexer *)self init];
  if (!v2)
  {
    goto LABEL_17;
  }

  v3 = nw_nexus_create();
  nexus = v2->_nexus;
  v2->_nexus = v3;

  if (v2->_nexus)
  {
    v5 = os_nexus_controller_create();
    v2->_osNexusController = v5;
    if (!v5)
    {
      v7 = +[IDSFoundationLog Multiplexer];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 0;
        v8 = "os_nexus_controller_create failed";
        v9 = &v16;
        goto LABEL_14;
      }

      goto LABEL_15;
    }

    if (!os_nexus_attr_create())
    {
      v7 = +[IDSFoundationLog Multiplexer];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v8 = "os_nexus_attr_create failed";
        v9 = buf;
        goto LABEL_14;
      }

      goto LABEL_15;
    }

    os_nexus_attr_set();
    strcpy(v2->_osNexusName, "IDSMultiplexNexusOS");
    v6 = os_nexus_controller_register_provider();
    os_nexus_attr_destroy();
    if (v6)
    {
      v7 = +[IDSFoundationLog Multiplexer];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 0;
        v8 = "os_nexus_controller_register_provider failed";
        v9 = &v14;
LABEL_14:
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
        goto LABEL_15;
      }

      goto LABEL_15;
    }

    v11 = +[IDSTransportLevelAgent sharedInstance];
    agent = v2->_agent;
    v2->_agent = v11;

    [(IDSTransportLevelAgent *)v2->_agent registerMultiplexer:v2 forIdentifier:@"groupsession"];
LABEL_17:
    v10 = v2;
    goto LABEL_18;
  }

  v7 = +[IDSFoundationLog Multiplexer];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 0;
    v8 = "nw_nexus_create failed";
    v9 = &v17;
    goto LABEL_14;
  }

LABEL_15:

  v10 = 0;
LABEL_18:

  return v10;
}

- (IDSGroupSessionMultiplexer)init
{
  v15.receiver = self;
  v15.super_class = IDSGroupSessionMultiplexer;
  v2 = [(IDSGroupSessionMultiplexer *)&v15 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = +[NSMutableDictionary dictionary];
    clientUUIDs = v3->_clientUUIDs;
    v3->_clientUUIDs = v4;

    v6 = +[NSMutableDictionary dictionary];
    connections = v3->_connections;
    v3->_connections = v6;

    v8 = +[NSMutableDictionary dictionary];
    transports = v3->_transports;
    v3->_transports = v8;

    v10 = +[NSMutableDictionary dictionary];
    transportsInstances = v3->_transportsInstances;
    v3->_transportsInstances = v10;

    v12 = objc_alloc_init(NSMutableSet);
    occupiedPorts = v3->_occupiedPorts;
    v3->_occupiedPorts = v12;

    v3->_portHead = arc4random_uniform(0xFBFFu) + 1024;
  }

  return v3;
}

- (BOOL)registerMultiplexerTransport:(id)transport
{
  transportCopy = transport;
  os_unfair_lock_lock(&self->_lock);
  transports = self->_transports;
  identifier = [transportCopy identifier];
  v7 = [(NSMutableDictionary *)transports objectForKeyedSubscript:identifier];

  if (v7)
  {
    v8 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      identifier2 = [transportCopy identifier];
      v14 = 138412290;
      v15 = identifier2;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Transport %@ already registered! Cannot register duplicate.", &v14, 0xCu);
    }
  }

  else
  {
    v10 = self->_transports;
    identifier3 = [transportCopy identifier];
    [(NSMutableDictionary *)v10 setObject:transportCopy forKeyedSubscript:identifier3];

    v8 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = self->_transports;
      v14 = 138412546;
      v15 = transportCopy;
      v16 = 2112;
      v17 = v12;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "GroupSession Multiplexer added transport %@ to list of transports %@", &v14, 0x16u);
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  return v7 == 0;
}

- (BOOL)unregisterMultiplexerTransport:(id)transport
{
  transportCopy = transport;
  os_unfair_lock_lock(&self->_lock);
  transports = self->_transports;
  identifier = [transportCopy identifier];
  v7 = [(NSMutableDictionary *)transports objectForKeyedSubscript:identifier];

  if (v7)
  {
    v8 = self->_transports;
    identifier2 = [transportCopy identifier];
    [(NSMutableDictionary *)v8 setObject:0 forKeyedSubscript:identifier2];

    [transportCopy invalidate];
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

  os_unfair_lock_unlock(&self->_lock);

  return v7 != 0;
}

- (BOOL)setupTransportForConnection:(id)connection
{
  connectionCopy = connection;
  memset(src, 170, sizeof(src));
  if (!os_nexus_controller_alloc_provider_instance())
  {
    memset(out, 170, sizeof(out));
    uuid_generate(out);
    getpid();
    if (os_nexus_controller_bind_provider_instance())
    {
      processUUID = +[IDSFoundationLog Multiplexer];
      if (os_log_type_enabled(processUUID, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, processUUID, OS_LOG_TYPE_DEFAULT, "os_nexus_controller_bind_provider_instance failed for server", buf, 2u);
      }

      goto LABEL_13;
    }

    processUUID = [connectionCopy processUUID];
    v32[0] = 0xAAAAAAAAAAAAAAAALL;
    v32[1] = 0xAAAAAAAAAAAAAAAALL;
    [processUUID getUUIDBytes:v32];
    [connectionCopy pid];
    if (os_nexus_controller_bind_provider_instance())
    {
      v8 = +[IDSFoundationLog Multiplexer];
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
LABEL_12:

LABEL_13:
        v6 = 0;
LABEL_14:

        goto LABEL_15;
      }

      *buf = 0;
      v9 = "os_nexus_controller_bind_provider_instance failed for client";
    }

    else
    {
      uuid_copy(self->_nexusInstanceUUID, src);
      if (os_channel_attr_create())
      {
        os_channel_attr_set_key();
        os_channel_attr_set();
        os_channel_attr_set();
        extended = os_channel_create_extended();
        os_channel_attr_destroy();
        v12 = +[IDSFoundationLog Multiplexer];
        v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
        if (!extended)
        {
          if (v13)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "os_channel_create_extended failed", buf, 2u);
          }

          goto LABEL_13;
        }

        if (v13)
        {
          localEndpoint = [connectionCopy localEndpoint];
          remoteEndpoint = [connectionCopy remoteEndpoint];
          v16 = [[NSUUID alloc] initWithUUIDBytes:src];
          *buf = 138412802;
          v27 = localEndpoint;
          v28 = 2112;
          v29 = remoteEndpoint;
          v30 = 2112;
          v31 = v16;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "nw_path_create_assign_message call with localEndpoint %@ remoteEndpoint %@ nexusInstanceUUID %@", buf, 0x20u);
        }

        localEndpoint2 = [connectionCopy localEndpoint];
        remoteEndpoint2 = [connectionCopy remoteEndpoint];
        assign_message = nw_path_create_assign_message();

        v20 = +[IDSFoundationLog Multiplexer];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = sub_10050F958(assign_message, 0);
          *buf = 134218242;
          v27 = 0;
          v28 = 2080;
          v29 = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "nw_path_create_assign_message returned size: %zu, data:\n%s", buf, 0x16u);
        }

        if (assign_message)
        {
          registration = [(IDSTransportLevelAgent *)self->_agent registration];
          v23 = [NSData dataWithBytes:assign_message length:0];
          clientUUID = [connectionCopy clientUUID];
          v25 = [registration assignNexusData:v23 toClient:clientUUID];

          free(assign_message);
          if (v25)
          {
            [connectionCopy setOsChannel:extended];
            v6 = 1;
            goto LABEL_14;
          }

          v8 = +[IDSFoundationLog Multiplexer];
          if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_12;
          }

          *buf = 0;
          v9 = "assignNexusData:toClient: failed";
        }

        else
        {
          v8 = +[IDSFoundationLog Multiplexer];
          if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_12;
          }

          *buf = 0;
          v9 = "nw_path_create_assign_message failed";
        }
      }

      else
      {
        v8 = +[IDSFoundationLog Multiplexer];
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_12;
        }

        *buf = 0;
        v9 = "connectTransportThreadForClient: os_channel_attr_create failed";
      }
    }

    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 2u);
    goto LABEL_12;
  }

  v5 = +[IDSFoundationLog Multiplexer];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "os_nexus_controller_alloc_provider_instance failed", buf, 2u);
  }

  v6 = 0;
LABEL_15:

  return v6;
}

- (unsigned)_getRandomPortForQUIC
{
  os_unfair_lock_lock(&self->_lock);
  v3 = 0xFFFF;
  while (1)
  {
    portHead = self->_portHead;
    v5 = (portHead + 1) <= 0x400u ? 1024 : portHead + 1;
    self->_portHead = v5;
    occupiedPorts = self->_occupiedPorts;
    v7 = [NSNumber numberWithUnsignedShort:portHead];
    LOBYTE(occupiedPorts) = [(NSMutableSet *)occupiedPorts containsObject:v7];

    if ((occupiedPorts & 1) == 0)
    {
      break;
    }

    if (!--v3)
    {
      LOWORD(portHead) = 0;
      goto LABEL_9;
    }
  }

  v8 = self->_occupiedPorts;
  v9 = [NSNumber numberWithUnsignedShort:portHead];
  [(NSMutableSet *)v8 addObject:v9];

LABEL_9:
  os_unfair_lock_unlock(&self->_lock);
  return portHead;
}

- (void)_releaseQUICPort:(unsigned __int16)port
{
  portCopy = port;
  occupiedPorts = self->_occupiedPorts;
  v6 = [NSNumber numberWithUnsignedShort:?];
  LODWORD(occupiedPorts) = [(NSMutableSet *)occupiedPorts containsObject:v6];

  if (occupiedPorts)
  {
    v7 = self->_occupiedPorts;
    v8 = [NSNumber numberWithUnsignedShort:portCopy];
    [(NSMutableSet *)v7 removeObject:v8];
  }
}

- (BOOL)connectionRequest:(id)request
{
  requestCopy = request;
  path = [requestCopy path];
  if (path)
  {
    v6 = nw_path_copy_endpoint();
    if (!v6)
    {
      v7 = +[IDSFoundationLog Multiplexer];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        clientUUID = [requestCopy clientUUID];
        *buf = 138412290;
        v73 = clientUUID;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "client does not have endpoint %@", buf, 0xCu);
      }

      LOBYTE(self) = 0;
      goto LABEL_49;
    }

    v7 = nw_path_copy_parameters();
    v8 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      clientUUID2 = [requestCopy clientUUID];
      *buf = 138412546;
      v73 = clientUUID2;
      LOWORD(v74) = 2112;
      *(&v74 + 2) = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "connectionRequest: clientUUID: %@ and params: %@", buf, 0x16u);
    }

    v10 = nw_path_copy_effective_local_endpoint(path);
    v11 = nw_path_copy_effective_remote_endpoint(path);
    pid = nw_parameters_get_pid();
    if (!pid)
    {
      v32 = +[IDSFoundationLog Multiplexer];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        clientUUID3 = [requestCopy clientUUID];
        *buf = 138412290;
        v73 = clientUUID3;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Client UUID %@ having pid 0 (root) is not supported", buf, 0xCu);
      }

      LOBYTE(self) = 0;
      goto LABEL_48;
    }

    v13 = pid;
    v71[0] = 0xAAAAAAAAAAAAAAAALL;
    v71[1] = 0xAAAAAAAAAAAAAAAALL;
    nw_parameters_get_proc_uuid();
    assign = [requestCopy assign];

    if (assign)
    {
      v15 = objc_alloc_init(IDSMultiplexerGroupConnection);
      clientUUID4 = [requestCopy clientUUID];
      [(IDSMultiplexerConnection *)v15 setClientUUID:clientUUID4];

      path2 = [requestCopy path];
      [(IDSMultiplexerConnection *)v15 setPath:path2];

      multiplexerParams = [requestCopy multiplexerParams];
      [(IDSMultiplexerConnection *)v15 setMultiplexerParams:multiplexerParams];

      localEndpoint = [requestCopy localEndpoint];
      [(IDSMultiplexerConnection *)v15 setLocalEndpoint:localEndpoint];

      endpoint = [requestCopy endpoint];
      [(IDSMultiplexerConnection *)v15 setRemoteEndpoint:endpoint];

      localEndpoint2 = [requestCopy localEndpoint];
      [(IDSMultiplexerConnection *)v15 setLocalPort:nw_endpoint_get_port(localEndpoint2)];

      endpoint2 = [requestCopy endpoint];
      [(IDSMultiplexerConnection *)v15 setRemotePort:nw_endpoint_get_port(endpoint2)];

      [(IDSMultiplexerConnection *)v15 setPortsSignature:[(IDSMultiplexerConnection *)v15 localPort]| ([(IDSMultiplexerConnection *)v15 remotePort]<< 16)];
      multiplexerParams2 = [requestCopy multiplexerParams];
      -[IDSMultiplexerConnection setContext:](v15, "setContext:", [multiplexerParams2 participantID]);

      LODWORD(self) = [(IDSGroupSessionMultiplexer *)self addNewConnectionToMultiplexerTransport:v15];
      if (self)
      {
        v66 = v7;
        v68 = v11;
        v65 = v10;
        getProtocolDefinition = [(IDSMultiplexerGroupConnection *)v15 getProtocolDefinition];
        assign2 = [requestCopy assign];
        localEndpoint3 = [requestCopy localEndpoint];
        endpoint3 = [requestCopy endpoint];
        options = nw_framer_create_options(getProtocolDefinition);
        (assign2)[2](assign2, localEndpoint3, endpoint3, options);

        v29 = +[IDSFoundationLog Multiplexer];
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v73 = v15;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "called nw_agent_flow_assign_t for %@", buf, 0xCu);
        }

        v10 = v65;
        v7 = v66;
        v11 = v68;
      }

      else
      {
        getProtocolDefinition = +[IDSFoundationLog Multiplexer];
        if (os_log_type_enabled(getProtocolDefinition, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v73 = v15;
          _os_log_impl(&_mh_execute_header, getProtocolDefinition, OS_LOG_TYPE_DEFAULT, "Could not add connection %@:", buf, 0xCu);
        }
      }
    }

    else
    {
      simConnection = [requestCopy simConnection];

      if (simConnection)
      {
        v69 = v11;
        v35 = +[IDSFoundationLog Multiplexer];
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          clientUUID5 = [requestCopy clientUUID];
          *buf = 138412290;
          v73 = clientUUID5;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Creating Simulator connection and copying params for client %@", buf, 0xCu);
        }

        v37 = [IDSMultiplexerSimulatorConnection alloc];
        simConnection2 = [requestCopy simConnection];
        v15 = [(IDSMultiplexerSimulatorConnection *)v37 initWithConnection:simConnection2];

        clientUUID6 = [requestCopy clientUUID];
        [(IDSMultiplexerConnection *)v15 setClientUUID:clientUUID6];

        path3 = [requestCopy path];
        [(IDSMultiplexerConnection *)v15 setPath:path3];

        multiplexerParams3 = [requestCopy multiplexerParams];
        [(IDSMultiplexerConnection *)v15 setMultiplexerParams:multiplexerParams3];

        [(IDSMultiplexerConnection *)v15 setLocalPort:[(IDSGroupSessionMultiplexer *)self _getRandomPortForQUIC]];
        if ([(IDSMultiplexerConnection *)v15 localPort])
        {
          localPort = [(IDSMultiplexerConnection *)v15 localPort];
          v74 = 0uLL;
          v73 = 0;
          *&buf[2] = __rev16(localPort);
          *buf = 7708;
          address = nw_endpoint_create_address(buf);
          [(IDSMultiplexerConnection *)v15 setLocalEndpoint:address];

          v44 = +[IDSFoundationLog Multiplexer];
          v11 = v69;
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            localPort2 = [(IDSMultiplexerConnection *)v15 localPort];
            *buf = 67109120;
            LODWORD(v73) = localPort2;
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Assigning local port %d to new QUIC connection", buf, 8u);
          }

          endpoint4 = [requestCopy endpoint];
          [(IDSMultiplexerConnection *)v15 setRemoteEndpoint:endpoint4];

          endpoint5 = [requestCopy endpoint];
          [(IDSMultiplexerConnection *)v15 setRemotePort:nw_endpoint_get_port(endpoint5)];

          endpoint6 = [requestCopy endpoint];
          [(IDSMultiplexerConnection *)v15 setRemoteEndpoint:endpoint6];

          [(IDSMultiplexerConnection *)v15 setPortsSignature:[(IDSMultiplexerConnection *)v15 remotePort]| ([(IDSMultiplexerConnection *)v15 localPort]<< 16)];
          multiplexerParams4 = [requestCopy multiplexerParams];
          -[IDSMultiplexerConnection setContext:](v15, "setContext:", [multiplexerParams4 participantID]);

          simConnection3 = [requestCopy simConnection];
          [(IDSMultiplexerConnection *)v15 setConnection:simConnection3];

          LOBYTE(self) = [(IDSGroupSessionMultiplexer *)self addNewConnectionToMultiplexerTransport:v15];
        }

        else
        {
          self = +[IDSFoundationLog Multiplexer];
          v11 = v69;
          if (os_log_type_enabled(&self->super, OS_LOG_TYPE_DEFAULT))
          {
            clientUUID7 = [requestCopy clientUUID];
            *buf = 138412290;
            v73 = clientUUID7;
            _os_log_impl(&_mh_execute_header, &self->super, OS_LOG_TYPE_DEFAULT, "Could not allocate local port for client %@", buf, 0xCu);
          }

          LOBYTE(self) = 0;
        }

        goto LABEL_47;
      }

      v15 = objc_alloc_init(IDSMultiplexerConnection);
      clientUUID8 = [requestCopy clientUUID];
      [(IDSMultiplexerConnection *)v15 setClientUUID:clientUUID8];

      [(IDSMultiplexerConnection *)v15 setPath:path];
      multiplexerParams5 = [requestCopy multiplexerParams];
      [(IDSMultiplexerConnection *)v15 setMultiplexerParams:multiplexerParams5];

      [(IDSMultiplexerConnection *)v15 setParameters:v7];
      [(IDSMultiplexerConnection *)v15 setPid:v13];
      v53 = [[NSUUID alloc] initWithUUIDBytes:v71];
      [(IDSMultiplexerConnection *)v15 setProcessUUID:v53];

      if ((nw_parameters_get_data_mode() & 0xFFFFFFFE) == 2)
      {
        [(IDSMultiplexerConnection *)v15 setIsTCP:1];
      }

      getProtocolDefinition = nw_protocol_copy_quic_stream_definition();
      nw_protocol_definition_get_identifier();
      if (nw_parameters_has_protocol_in_stack())
      {
        [(IDSMultiplexerConnection *)v15 setIsQUIC:1];
      }

      [(IDSMultiplexerConnection *)v15 setLocalPort:nw_endpoint_get_port(v10)];
      [(IDSMultiplexerConnection *)v15 setRemotePort:nw_endpoint_get_port(v11)];
      if ([(IDSMultiplexerConnection *)v15 isQUIC])
      {
        [(IDSMultiplexerConnection *)v15 setLocalPort:[(IDSGroupSessionMultiplexer *)self _getRandomPortForQUIC]];
        if (![(IDSMultiplexerConnection *)v15 localPort])
        {
          self = +[IDSFoundationLog Multiplexer];
          if (os_log_type_enabled(&self->super, OS_LOG_TYPE_DEFAULT))
          {
            clientUUID9 = [requestCopy clientUUID];
            *buf = 138412290;
            v73 = clientUUID9;
            _os_log_impl(&_mh_execute_header, &self->super, OS_LOG_TYPE_DEFAULT, "Could not allocate local port for client %@", buf, 0xCu);
          }

          LOBYTE(self) = 0;
          goto LABEL_46;
        }

        v67 = v7;
        v54 = sub_10040AC8C([(IDSMultiplexerConnection *)v15 localPort]);
        [(IDSMultiplexerConnection *)v15 setLocalEndpoint:v54];

        [(IDSMultiplexerConnection *)v15 setRemoteEndpoint:v11];
        v55 = +[IDSFoundationLog Multiplexer];
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          localPort3 = [(IDSMultiplexerConnection *)v15 localPort];
          *buf = 67109120;
          LODWORD(v73) = localPort3;
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Assigning local port %d to new QUIC connection", buf, 8u);
        }

        v7 = v67;
      }

      else
      {
        v70 = getProtocolDefinition;
        v58 = v11;
        endpoint7 = [requestCopy endpoint];
        type = nw_endpoint_get_type(endpoint7);

        if (type == nw_endpoint_type_host)
        {
          v61 = sub_10040AC8C([(IDSMultiplexerConnection *)v15 localPort]);
          [(IDSMultiplexerConnection *)v15 setLocalEndpoint:v61];

          v62 = sub_10040AC8C([(IDSMultiplexerConnection *)v15 remotePort]);
          [(IDSMultiplexerConnection *)v15 setRemoteEndpoint:v62];

          v11 = v58;
        }

        else
        {
          [(IDSMultiplexerConnection *)v15 setLocalEndpoint:v10];
          v11 = v58;
          [(IDSMultiplexerConnection *)v15 setRemoteEndpoint:v58];
        }

        getProtocolDefinition = v70;
      }

      [(IDSMultiplexerConnection *)v15 setPortsSignature:[(IDSMultiplexerConnection *)v15 remotePort]| ([(IDSMultiplexerConnection *)v15 localPort]<< 16)];
      LOBYTE(self) = [(IDSGroupSessionMultiplexer *)self addNewConnectionToMultiplexerTransport:v15];
    }

LABEL_46:

LABEL_47:
LABEL_48:

LABEL_49:
    goto LABEL_50;
  }

  v6 = +[IDSFoundationLog Multiplexer];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    clientUUID10 = [requestCopy clientUUID];
    *buf = 138412290;
    v73 = clientUUID10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "no nw_path for client %@", buf, 0xCu);
  }

  LOBYTE(self) = 0;
LABEL_50:

  return self;
}

- (BOOL)addNewConnectionToMultiplexerTransport:(id)transport
{
  transportCopy = transport;
  os_unfair_lock_lock(&self->_lock);
  selfCopy = self;
  connections = self->_connections;
  clientUUID = [transportCopy clientUUID];
  [(NSMutableDictionary *)connections setObject:transportCopy forKeyedSubscript:clientUUID];

  v7 = +[IDSFoundationLog Multiplexer];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    multiplexerParams = [transportCopy multiplexerParams];
    *buf = 138412546;
    v52 = transportCopy;
    v53 = 2112;
    v54 = multiplexerParams;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Created connection %@ with params %@", buf, 0x16u);
  }

  multiplexerParams2 = [transportCopy multiplexerParams];
  salt = [multiplexerParams2 salt];

  if (salt)
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    multiplexerParams6 = self->_transports;
    v45 = [(NSMutableDictionary *)multiplexerParams6 countByEnumeratingWithState:&v47 objects:v57 count:16];
    v13 = 0;
    if (v45)
    {
      v44 = *v48;
      *&v12 = 138412802;
      v41 = v12;
      obj = multiplexerParams6;
      do
      {
        for (i = 0; i != v45; i = i + 1)
        {
          if (*v48 != v44)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v47 + 1) + 8 * i);
          multiplexerParams3 = [transportCopy multiplexerParams];
          sessionID = [multiplexerParams3 sessionID];
          v18 = transportCopy;
          multiplexerParams4 = [transportCopy multiplexerParams];
          salt2 = [multiplexerParams4 salt];
          v21 = IDSIDAliasHashUUIDString();
          v22 = [sessionID isEqualToString:v21];

          if (v22)
          {
            v23 = [(NSMutableDictionary *)selfCopy->_transports objectForKeyedSubscript:v15];

            v24 = +[IDSFoundationLog Multiplexer];
            transportCopy = v18;
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              multiplexerParams5 = [v18 multiplexerParams];
              sessionID2 = [multiplexerParams5 sessionID];
              transports = selfCopy->_transports;
              *buf = v41;
              v52 = v15;
              v53 = 2112;
              v54 = sessionID2;
              v55 = 2112;
              v56 = transports;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Found transport sessionID %@ for %@ in transports %@", buf, 0x20u);
            }

            v13 = v23;
          }

          else
          {
            transportCopy = v18;
          }
        }

        multiplexerParams6 = obj;
        v45 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v47 objects:v57 count:16];
      }

      while (v45);
    }
  }

  else
  {
    v28 = self->_transports;
    multiplexerParams6 = [transportCopy multiplexerParams];
    sessionID3 = [(NSMutableDictionary *)multiplexerParams6 sessionID];
    v13 = [(NSMutableDictionary *)v28 objectForKeyedSubscript:sessionID3];
  }

  if (v13)
  {
    [transportCopy setTransport:v13];
    os_unfair_lock_unlock(&selfCopy->_lock);
    v30 = [NSSet setWithObject:transportCopy];
    v31 = [v13 routeClientConnections:v30];

    v32 = +[IMLockdownManager sharedInstance];
    isInternalInstall = [v32 isInternalInstall];

    if (isInternalInstall && [transportCopy isQUIC] && IMGetCachedDomainIntForKeyWithDefaultValue() >= 1)
    {
      v46 = transportCopy;
      IDSTransportThreadAddBlockAfter();
    }

    if (![transportCopy invalidated])
    {
      v39 = 1;
      goto LABEL_32;
    }

    v34 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "INVALID", buf, 2u);
    }
  }

  else
  {
    v35 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      multiplexerParams7 = [transportCopy multiplexerParams];
      sessionID4 = [multiplexerParams7 sessionID];
      v38 = selfCopy->_transports;
      *buf = 138412546;
      v52 = sessionID4;
      v53 = 2112;
      v54 = v38;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Can't find transport for %@ in transports %@", buf, 0x16u);
    }

    os_unfair_lock_unlock(&selfCopy->_lock);
  }

  v39 = 0;
LABEL_32:

  return v39;
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
    v15[0] = 138412546;
    *&v15[1] = v7;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "connectionCancel: found connection %@ in _connections %@", v15, 0x16u);
  }

  if (v7)
  {
    transport = [v7 transport];
    [transport cancelClientConnection:v7];

    [v7 invalidate];
    v11 = self->_connections;
    clientUUID2 = [cancelCopy clientUUID];
    [(NSMutableDictionary *)v11 setObject:0 forKeyedSubscript:clientUUID2];

    if ([v7 isQUIC])
    {
      -[IDSGroupSessionMultiplexer _releaseQUICPort:](self, "_releaseQUICPort:", [v7 localPort]);
    }
  }

  nexusInstanceUUID = [v7 nexusInstanceUUID];
  [nexusInstanceUUID getUUIDBytes:v15];

  if (!uuid_is_null(v15))
  {
    os_nexus_controller_free_provider_instance();
  }

  os_unfair_lock_unlock(&self->_lock);

  return 1;
}

- (void)resetConnection:(id)connection errorCode:(int)code
{
  connectionCopy = connection;
  memset(uu, 170, sizeof(uu));
  uuid_clear(uu);
  assign_message = nw_path_create_assign_message();
  v7 = +[IDSFoundationLog Multiplexer];
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (!assign_message)
  {
    if (v8)
    {
      *buf = 0;
      v14 = "resetConnection: nw_path_create_assign_message failed";
      goto LABEL_9;
    }

LABEL_10:

    goto LABEL_11;
  }

  if (v8)
  {
    clientUUID = [connectionCopy clientUUID];
    *buf = 138412290;
    v16 = clientUUID;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Assigning empty nexus data message for client UUID %@", buf, 0xCu);
  }

  registration = [(IDSTransportLevelAgent *)self->_agent registration];
  v11 = [NSData dataWithBytes:assign_message length:0];
  clientUUID2 = [connectionCopy clientUUID];
  v13 = [registration assignNexusData:v11 toClient:clientUUID2];

  free(assign_message);
  if ((v13 & 1) == 0)
  {
    v7 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v14 = "resetConnection: assignNexusData:toClient: failed";
LABEL_9:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v14, buf, 2u);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

LABEL_11:
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
    if (v6)
    {
      if (v8)
      {
        *&buf[0].sa_len = 138412290;
        *&buf[0].sa_data[2] = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "client endpoint %@", &buf[0].sa_len, 0xCu);
      }

      if (nw_endpoint_get_type(v6) != nw_endpoint_type_host)
      {
        v14 = +[IDSFoundationLog Multiplexer];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          clientUUID = [requestCopy clientUUID];
          *&buf[0].sa_len = 138412290;
          *&buf[0].sa_data[2] = clientUUID;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "client endpoint type not 'host' for client %@", &buf[0].sa_len, 0xCu);
        }

        goto LABEL_34;
      }

      port = nw_endpoint_get_port(v6);
      v10 = nw_endpoint_copy_port_string(v6);
      v11 = +[IDSFoundationLog Multiplexer];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *&buf[0].sa_len = 67109378;
        *&buf[0].sa_data[2] = port;
        *&buf[0].sa_data[6] = 2080;
        *&buf[0].sa_data[8] = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "port %u portString %s", &buf[0].sa_len, 0x12u);
      }

      free(v10);
    }

    else
    {
      if (v8)
      {
        clientUUID2 = [requestCopy clientUUID];
        *&buf[0].sa_len = 138412290;
        *&buf[0].sa_data[2] = clientUUID2;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "client does not have endpoint %@", &buf[0].sa_len, 0xCu);
      }
    }

    v14 = nw_path_copy_parameters();
    v15 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      clientUUID3 = [requestCopy clientUUID];
      *&buf[0].sa_len = 138412546;
      *&buf[0].sa_data[2] = clientUUID3;
      *&buf[0].sa_data[10] = 2112;
      *&buf[0].sa_data[12] = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "listenRequest: clientUUID: %@ and params: %@", &buf[0].sa_len, 0x16u);
    }

    endpoint = nw_path_copy_effective_local_endpoint(path);
    v77 = nw_path_copy_effective_remote_endpoint(path);
    pid = nw_parameters_get_pid();
    if (!pid)
    {
      v19 = +[IDSFoundationLog Multiplexer];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        clientUUID4 = [requestCopy clientUUID];
        *&buf[0].sa_len = 138412290;
        *&buf[0].sa_data[2] = clientUUID4;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Client UUID %@ having pid 0 (root) is not supported", &buf[0].sa_len, 0xCu);
      }

      goto LABEL_32;
    }

    v18 = pid;
    v70 = v6;
    v92[0] = 0xAAAAAAAAAAAAAAAALL;
    v92[1] = 0xAAAAAAAAAAAAAAAALL;
    nw_parameters_get_proc_uuid();
    v91[0] = 0xAAAAAAAAAAAAAAAALL;
    v91[1] = 0xAAAAAAAAAAAAAAAALL;
    if (os_nexus_controller_alloc_provider_instance())
    {
      v19 = +[IDSFoundationLog Multiplexer];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *&buf[0].sa_len = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "os_nexus_controller_alloc_provider_instance failed", &buf[0].sa_len, 2u);
      }

      goto LABEL_32;
    }

    memset(out, 170, sizeof(out));
    uuid_generate(out);
    getpid();
    if (os_nexus_controller_bind_provider_instance())
    {
      v19 = +[IDSFoundationLog Multiplexer];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *&buf[0].sa_len = 0;
        v22 = "os_nexus_controller_bind_provider_instance failed for server";
LABEL_31:
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v22, &buf[0].sa_len, 2u);
        goto LABEL_32;
      }

      goto LABEL_32;
    }

    if (os_nexus_controller_bind_provider_instance())
    {
      v19 = +[IDSFoundationLog Multiplexer];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *&buf[0].sa_len = 0;
        v22 = "os_nexus_controller_bind_provider_instance failed for client";
        goto LABEL_31;
      }

LABEL_32:

LABEL_33:
LABEL_34:

      goto LABEL_35;
    }

    if (!os_channel_attr_create())
    {
      v19 = +[IDSFoundationLog Multiplexer];
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_32;
      }

      *&buf[0].sa_len = 0;
      v22 = "connectTransportThreadForClient: os_channel_attr_create failed";
      goto LABEL_31;
    }

    os_channel_attr_set_key();
    os_channel_attr_set();
    os_channel_attr_set();
    extended = os_channel_create_extended();
    os_channel_attr_destroy();
    if (!extended)
    {
      v19 = +[IDSFoundationLog Multiplexer];
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_32;
      }

      *&buf[0].sa_len = 0;
      v22 = "os_channel_create_extended failed";
      goto LABEL_31;
    }

    v67 = extended;
    v69 = path;
    *&buf[0].sa_len = 7680;
    memset(&buf[0].sa_data[6], 0, 20);
    *buf[0].sa_data = __rev16(nw_endpoint_get_port(endpoint));
    buf[0].sa_len = 28;
    address = nw_endpoint_create_address(buf);
    memset(&buf[0].sa_data[2], 0, 24);
    *&buf[0].sa_len = 7708;
    v26 = nw_endpoint_create_address(buf);
    v27 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *v85 = 138412546;
      v86 = address;
      v87 = 2112;
      v88 = v26;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "registration nexusdata localEndpoint %@ remoteEndpoint %@", v85, 0x16u);
    }

    v83 = 0;
    assign_message = nw_path_create_assign_message();
    v68 = v26;
    if (!assign_message)
    {
      p_super = +[IDSFoundationLog Multiplexer];
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
      {
        *v85 = 0;
        _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_DEFAULT, "nw_path_create_assign_message failed", v85, 2u);
      }

      path = v69;
      goto LABEL_76;
    }

    v29 = assign_message;
    registration = [(IDSTransportLevelAgent *)self->_agent registration];
    v31 = [NSData dataWithBytes:v29 length:v83];
    clientUUID5 = [requestCopy clientUUID];
    v75 = [registration assignNexusData:v31 toClient:clientUUID5];

    free(v29);
    if ((v75 & 1) == 0)
    {
      p_super = +[IDSFoundationLog Multiplexer];
      path = v69;
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
      {
        *v85 = 0;
        _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_DEFAULT, "assignNexusData:toClient: failed", v85, 2u);
      }

      goto LABEL_76;
    }

    os_unfair_lock_lock(&self->_lock);
    v33 = objc_alloc_init(IDSMultiplexerConnection);
    clientUUID6 = [requestCopy clientUUID];
    [(IDSMultiplexerConnection *)v33 setClientUUID:clientUUID6];

    path = v69;
    [(IDSMultiplexerConnection *)v33 setPath:v69];
    multiplexerParams = [requestCopy multiplexerParams];
    [(IDSMultiplexerConnection *)v33 setMultiplexerParams:multiplexerParams];

    [(IDSMultiplexerConnection *)v33 setParameters:v14];
    [(IDSMultiplexerConnection *)v33 setPid:v18];
    v36 = [[NSUUID alloc] initWithUUIDBytes:v92];
    [(IDSMultiplexerConnection *)v33 setProcessUUID:v36];

    v65 = address;
    [(IDSMultiplexerConnection *)v33 setLocalEndpoint:address];
    [(IDSMultiplexerConnection *)v33 setRemoteEndpoint:v68];
    [(IDSMultiplexerConnection *)v33 setLocalPort:nw_endpoint_get_port(endpoint)];
    [(IDSMultiplexerConnection *)v33 setRemotePort:0];
    v37 = [[NSUUID alloc] initWithUUIDBytes:v91];
    [(IDSMultiplexerConnection *)v33 setNexusInstanceUUID:v37];

    LODWORD(v37) = nw_endpoint_get_port(endpoint);
    [(IDSMultiplexerConnection *)v33 setPortsSignature:nw_endpoint_get_port(v77) | (v37 << 16)];
    if ((nw_parameters_get_data_mode() & 0xFFFFFFFE) == 2)
    {
      [(IDSMultiplexerConnection *)v33 setIsTCP:1];
    }

    connections = self->_connections;
    clientUUID7 = [requestCopy clientUUID];
    v66 = v33;
    [(NSMutableDictionary *)connections setObject:v33 forKeyedSubscript:clientUUID7];

    v40 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *v85 = 138412290;
      v86 = v33;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Created listener %@", v85, 0xCu);
    }

    multiplexerParams2 = [requestCopy multiplexerParams];
    salt = [multiplexerParams2 salt];

    v74 = v14;
    if (salt)
    {
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      multiplexerParams5 = self->_transports;
      v76 = [(NSMutableDictionary *)multiplexerParams5 countByEnumeratingWithState:&v79 objects:v84 count:16];
      if (v76)
      {
        v72 = 0;
        v73 = requestCopy;
        v71 = *v80;
        do
        {
          for (i = 0; i != v76; i = i + 1)
          {
            selfCopy = self;
            if (*v80 != v71)
            {
              objc_enumerationMutation(multiplexerParams5);
            }

            v46 = multiplexerParams5;
            v47 = *(*(&v79 + 1) + 8 * i);
            multiplexerParams3 = [v73 multiplexerParams];
            sessionID = [multiplexerParams3 sessionID];
            multiplexerParams4 = [v73 multiplexerParams];
            salt2 = [multiplexerParams4 salt];
            v52 = IDSIDAliasHashUUIDString();
            v53 = [sessionID isEqualToString:v52];

            if (v53)
            {
              self = selfCopy;
              v54 = [(NSMutableDictionary *)selfCopy->_transports objectForKeyedSubscript:v47];

              v72 = v54;
              v14 = v74;
            }

            else
            {
              v14 = v74;
              self = selfCopy;
            }

            v55 = &IDSRegistrationControlErrorDomain_ptr;
            multiplexerParams5 = v46;
          }

          v76 = [(NSMutableDictionary *)v46 countByEnumeratingWithState:&v79 objects:v84 count:16];
        }

        while (v76);
        v56 = v72;
        requestCopy = v73;
        path = v69;
        v6 = v70;
        goto LABEL_70;
      }

      v56 = 0;
      path = v69;
    }

    else
    {
      transports = self->_transports;
      multiplexerParams5 = [requestCopy multiplexerParams];
      sessionID2 = [(NSMutableDictionary *)multiplexerParams5 sessionID];
      v60 = transports;
      v14 = v74;
      v56 = [(NSMutableDictionary *)v60 objectForKeyedSubscript:sessionID2];
    }

    v55 = &IDSRegistrationControlErrorDomain_ptr;
LABEL_70:

    if (v56)
    {
      p_super = &v66->super;
      [(IDSMultiplexerConnection *)v66 setTransport:v56];
      [(IDSMultiplexerConnection *)v66 setOsChannel:v67];
      os_unfair_lock_unlock(&self->_lock);
      [v56 addListenerConnection:v66];
    }

    else
    {
      multiplexer = [v55[240] Multiplexer];
      if (os_log_type_enabled(multiplexer, OS_LOG_TYPE_DEFAULT))
      {
        multiplexerParams6 = [requestCopy multiplexerParams];
        sessionID3 = [multiplexerParams6 sessionID];
        v64 = self->_transports;
        *v85 = 138412546;
        v86 = sessionID3;
        v87 = 2112;
        v88 = v64;
        _os_log_impl(&_mh_execute_header, multiplexer, OS_LOG_TYPE_DEFAULT, "Can't find transport for %@ in transports %@", v85, 0x16u);

        v14 = v74;
      }

      os_unfair_lock_unlock(&self->_lock);
      path = v69;
      p_super = &v66->super;
    }

    address = v65;
LABEL_76:

    goto LABEL_33;
  }

  v6 = +[IDSFoundationLog Multiplexer];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    clientUUID8 = [requestCopy clientUUID];
    *&buf[0].sa_len = 138412290;
    *&buf[0].sa_data[2] = clientUUID8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "no nw_path for client %@", &buf[0].sa_len, 0xCu);
  }

LABEL_35:

  return 0;
}

@end