@interface IDSGroupSessionMultiplexer
+ (id)sharedInstance;
- (BOOL)addNewConnectionToMultiplexerTransport:(id)a3;
- (BOOL)connectionCancel:(id)a3;
- (BOOL)connectionRequest:(id)a3;
- (BOOL)listenRequest:(id)a3;
- (BOOL)registerMultiplexerTransport:(id)a3;
- (BOOL)setupTransportForConnection:(id)a3;
- (BOOL)unregisterMultiplexerTransport:(id)a3;
- (IDSGroupSessionMultiplexer)init;
- (id)initAndSetupNexus;
- (unsigned)_getRandomPortForQUIC;
- (void)_releaseQUICPort:(unsigned __int16)a3;
- (void)resetConnection:(id)a3 errorCode:(int)a4;
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

- (BOOL)registerMultiplexerTransport:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  transports = self->_transports;
  v6 = [v4 identifier];
  v7 = [(NSMutableDictionary *)transports objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v4 identifier];
      v14 = 138412290;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Transport %@ already registered! Cannot register duplicate.", &v14, 0xCu);
    }
  }

  else
  {
    v10 = self->_transports;
    v11 = [v4 identifier];
    [(NSMutableDictionary *)v10 setObject:v4 forKeyedSubscript:v11];

    v8 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = self->_transports;
      v14 = 138412546;
      v15 = v4;
      v16 = 2112;
      v17 = v12;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "GroupSession Multiplexer added transport %@ to list of transports %@", &v14, 0x16u);
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  return v7 == 0;
}

- (BOOL)unregisterMultiplexerTransport:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  transports = self->_transports;
  v6 = [v4 identifier];
  v7 = [(NSMutableDictionary *)transports objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = self->_transports;
    v9 = [v4 identifier];
    [(NSMutableDictionary *)v8 setObject:0 forKeyedSubscript:v9];

    [v4 invalidate];
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

  os_unfair_lock_unlock(&self->_lock);

  return v7 != 0;
}

- (BOOL)setupTransportForConnection:(id)a3
{
  v4 = a3;
  memset(src, 170, sizeof(src));
  if (!os_nexus_controller_alloc_provider_instance())
  {
    memset(out, 170, sizeof(out));
    uuid_generate(out);
    getpid();
    if (os_nexus_controller_bind_provider_instance())
    {
      v7 = +[IDSFoundationLog Multiplexer];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "os_nexus_controller_bind_provider_instance failed for server", buf, 2u);
      }

      goto LABEL_13;
    }

    v7 = [v4 processUUID];
    v32[0] = 0xAAAAAAAAAAAAAAAALL;
    v32[1] = 0xAAAAAAAAAAAAAAAALL;
    [v7 getUUIDBytes:v32];
    [v4 pid];
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
          v14 = [v4 localEndpoint];
          v15 = [v4 remoteEndpoint];
          v16 = [[NSUUID alloc] initWithUUIDBytes:src];
          *buf = 138412802;
          v27 = v14;
          v28 = 2112;
          v29 = v15;
          v30 = 2112;
          v31 = v16;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "nw_path_create_assign_message call with localEndpoint %@ remoteEndpoint %@ nexusInstanceUUID %@", buf, 0x20u);
        }

        v17 = [v4 localEndpoint];
        v18 = [v4 remoteEndpoint];
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
          v22 = [(IDSTransportLevelAgent *)self->_agent registration];
          v23 = [NSData dataWithBytes:assign_message length:0];
          v24 = [v4 clientUUID];
          v25 = [v22 assignNexusData:v23 toClient:v24];

          free(assign_message);
          if (v25)
          {
            [v4 setOsChannel:extended];
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

- (void)_releaseQUICPort:(unsigned __int16)a3
{
  v3 = a3;
  occupiedPorts = self->_occupiedPorts;
  v6 = [NSNumber numberWithUnsignedShort:?];
  LODWORD(occupiedPorts) = [(NSMutableSet *)occupiedPorts containsObject:v6];

  if (occupiedPorts)
  {
    v7 = self->_occupiedPorts;
    v8 = [NSNumber numberWithUnsignedShort:v3];
    [(NSMutableSet *)v7 removeObject:v8];
  }
}

- (BOOL)connectionRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 path];
  if (v5)
  {
    v6 = nw_path_copy_endpoint();
    if (!v6)
    {
      v7 = +[IDSFoundationLog Multiplexer];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v31 = [v4 clientUUID];
        *buf = 138412290;
        v73 = v31;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "client does not have endpoint %@", buf, 0xCu);
      }

      LOBYTE(self) = 0;
      goto LABEL_49;
    }

    v7 = nw_path_copy_parameters();
    v8 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v4 clientUUID];
      *buf = 138412546;
      v73 = v9;
      LOWORD(v74) = 2112;
      *(&v74 + 2) = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "connectionRequest: clientUUID: %@ and params: %@", buf, 0x16u);
    }

    v10 = nw_path_copy_effective_local_endpoint(v5);
    v11 = nw_path_copy_effective_remote_endpoint(v5);
    pid = nw_parameters_get_pid();
    if (!pid)
    {
      v32 = +[IDSFoundationLog Multiplexer];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = [v4 clientUUID];
        *buf = 138412290;
        v73 = v33;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Client UUID %@ having pid 0 (root) is not supported", buf, 0xCu);
      }

      LOBYTE(self) = 0;
      goto LABEL_48;
    }

    v13 = pid;
    v71[0] = 0xAAAAAAAAAAAAAAAALL;
    v71[1] = 0xAAAAAAAAAAAAAAAALL;
    nw_parameters_get_proc_uuid();
    v14 = [v4 assign];

    if (v14)
    {
      v15 = objc_alloc_init(IDSMultiplexerGroupConnection);
      v16 = [v4 clientUUID];
      [(IDSMultiplexerConnection *)v15 setClientUUID:v16];

      v17 = [v4 path];
      [(IDSMultiplexerConnection *)v15 setPath:v17];

      v18 = [v4 multiplexerParams];
      [(IDSMultiplexerConnection *)v15 setMultiplexerParams:v18];

      v19 = [v4 localEndpoint];
      [(IDSMultiplexerConnection *)v15 setLocalEndpoint:v19];

      v20 = [v4 endpoint];
      [(IDSMultiplexerConnection *)v15 setRemoteEndpoint:v20];

      v21 = [v4 localEndpoint];
      [(IDSMultiplexerConnection *)v15 setLocalPort:nw_endpoint_get_port(v21)];

      v22 = [v4 endpoint];
      [(IDSMultiplexerConnection *)v15 setRemotePort:nw_endpoint_get_port(v22)];

      [(IDSMultiplexerConnection *)v15 setPortsSignature:[(IDSMultiplexerConnection *)v15 localPort]| ([(IDSMultiplexerConnection *)v15 remotePort]<< 16)];
      v23 = [v4 multiplexerParams];
      -[IDSMultiplexerConnection setContext:](v15, "setContext:", [v23 participantID]);

      LODWORD(self) = [(IDSGroupSessionMultiplexer *)self addNewConnectionToMultiplexerTransport:v15];
      if (self)
      {
        v66 = v7;
        v68 = v11;
        v65 = v10;
        v24 = [(IDSMultiplexerGroupConnection *)v15 getProtocolDefinition];
        v25 = [v4 assign];
        v26 = [v4 localEndpoint];
        v27 = [v4 endpoint];
        options = nw_framer_create_options(v24);
        (v25)[2](v25, v26, v27, options);

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
        v24 = +[IDSFoundationLog Multiplexer];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v73 = v15;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Could not add connection %@:", buf, 0xCu);
        }
      }
    }

    else
    {
      v34 = [v4 simConnection];

      if (v34)
      {
        v69 = v11;
        v35 = +[IDSFoundationLog Multiplexer];
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v36 = [v4 clientUUID];
          *buf = 138412290;
          v73 = v36;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Creating Simulator connection and copying params for client %@", buf, 0xCu);
        }

        v37 = [IDSMultiplexerSimulatorConnection alloc];
        v38 = [v4 simConnection];
        v15 = [(IDSMultiplexerSimulatorConnection *)v37 initWithConnection:v38];

        v39 = [v4 clientUUID];
        [(IDSMultiplexerConnection *)v15 setClientUUID:v39];

        v40 = [v4 path];
        [(IDSMultiplexerConnection *)v15 setPath:v40];

        v41 = [v4 multiplexerParams];
        [(IDSMultiplexerConnection *)v15 setMultiplexerParams:v41];

        [(IDSMultiplexerConnection *)v15 setLocalPort:[(IDSGroupSessionMultiplexer *)self _getRandomPortForQUIC]];
        if ([(IDSMultiplexerConnection *)v15 localPort])
        {
          v42 = [(IDSMultiplexerConnection *)v15 localPort];
          v74 = 0uLL;
          v73 = 0;
          *&buf[2] = __rev16(v42);
          *buf = 7708;
          address = nw_endpoint_create_address(buf);
          [(IDSMultiplexerConnection *)v15 setLocalEndpoint:address];

          v44 = +[IDSFoundationLog Multiplexer];
          v11 = v69;
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            v45 = [(IDSMultiplexerConnection *)v15 localPort];
            *buf = 67109120;
            LODWORD(v73) = v45;
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Assigning local port %d to new QUIC connection", buf, 8u);
          }

          v46 = [v4 endpoint];
          [(IDSMultiplexerConnection *)v15 setRemoteEndpoint:v46];

          v47 = [v4 endpoint];
          [(IDSMultiplexerConnection *)v15 setRemotePort:nw_endpoint_get_port(v47)];

          v48 = [v4 endpoint];
          [(IDSMultiplexerConnection *)v15 setRemoteEndpoint:v48];

          [(IDSMultiplexerConnection *)v15 setPortsSignature:[(IDSMultiplexerConnection *)v15 remotePort]| ([(IDSMultiplexerConnection *)v15 localPort]<< 16)];
          v49 = [v4 multiplexerParams];
          -[IDSMultiplexerConnection setContext:](v15, "setContext:", [v49 participantID]);

          v50 = [v4 simConnection];
          [(IDSMultiplexerConnection *)v15 setConnection:v50];

          LOBYTE(self) = [(IDSGroupSessionMultiplexer *)self addNewConnectionToMultiplexerTransport:v15];
        }

        else
        {
          self = +[IDSFoundationLog Multiplexer];
          v11 = v69;
          if (os_log_type_enabled(&self->super, OS_LOG_TYPE_DEFAULT))
          {
            v57 = [v4 clientUUID];
            *buf = 138412290;
            v73 = v57;
            _os_log_impl(&_mh_execute_header, &self->super, OS_LOG_TYPE_DEFAULT, "Could not allocate local port for client %@", buf, 0xCu);
          }

          LOBYTE(self) = 0;
        }

        goto LABEL_47;
      }

      v15 = objc_alloc_init(IDSMultiplexerConnection);
      v51 = [v4 clientUUID];
      [(IDSMultiplexerConnection *)v15 setClientUUID:v51];

      [(IDSMultiplexerConnection *)v15 setPath:v5];
      v52 = [v4 multiplexerParams];
      [(IDSMultiplexerConnection *)v15 setMultiplexerParams:v52];

      [(IDSMultiplexerConnection *)v15 setParameters:v7];
      [(IDSMultiplexerConnection *)v15 setPid:v13];
      v53 = [[NSUUID alloc] initWithUUIDBytes:v71];
      [(IDSMultiplexerConnection *)v15 setProcessUUID:v53];

      if ((nw_parameters_get_data_mode() & 0xFFFFFFFE) == 2)
      {
        [(IDSMultiplexerConnection *)v15 setIsTCP:1];
      }

      v24 = nw_protocol_copy_quic_stream_definition();
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
            v64 = [v4 clientUUID];
            *buf = 138412290;
            v73 = v64;
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
          v56 = [(IDSMultiplexerConnection *)v15 localPort];
          *buf = 67109120;
          LODWORD(v73) = v56;
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Assigning local port %d to new QUIC connection", buf, 8u);
        }

        v7 = v67;
      }

      else
      {
        v70 = v24;
        v58 = v11;
        v59 = [v4 endpoint];
        type = nw_endpoint_get_type(v59);

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

        v24 = v70;
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
    v30 = [v4 clientUUID];
    *buf = 138412290;
    v73 = v30;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "no nw_path for client %@", buf, 0xCu);
  }

  LOBYTE(self) = 0;
LABEL_50:

  return self;
}

- (BOOL)addNewConnectionToMultiplexerTransport:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v43 = self;
  connections = self->_connections;
  v6 = [v4 clientUUID];
  [(NSMutableDictionary *)connections setObject:v4 forKeyedSubscript:v6];

  v7 = +[IDSFoundationLog Multiplexer];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v4 multiplexerParams];
    *buf = 138412546;
    v52 = v4;
    v53 = 2112;
    v54 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Created connection %@ with params %@", buf, 0x16u);
  }

  v9 = [v4 multiplexerParams];
  v10 = [v9 salt];

  if (v10)
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v11 = self->_transports;
    v45 = [(NSMutableDictionary *)v11 countByEnumeratingWithState:&v47 objects:v57 count:16];
    v13 = 0;
    if (v45)
    {
      v44 = *v48;
      *&v12 = 138412802;
      v41 = v12;
      obj = v11;
      do
      {
        for (i = 0; i != v45; i = i + 1)
        {
          if (*v48 != v44)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v47 + 1) + 8 * i);
          v16 = [v4 multiplexerParams];
          v17 = [v16 sessionID];
          v18 = v4;
          v19 = [v4 multiplexerParams];
          v20 = [v19 salt];
          v21 = IDSIDAliasHashUUIDString();
          v22 = [v17 isEqualToString:v21];

          if (v22)
          {
            v23 = [(NSMutableDictionary *)v43->_transports objectForKeyedSubscript:v15];

            v24 = +[IDSFoundationLog Multiplexer];
            v4 = v18;
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              v25 = [v18 multiplexerParams];
              v26 = [v25 sessionID];
              transports = v43->_transports;
              *buf = v41;
              v52 = v15;
              v53 = 2112;
              v54 = v26;
              v55 = 2112;
              v56 = transports;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Found transport sessionID %@ for %@ in transports %@", buf, 0x20u);
            }

            v13 = v23;
          }

          else
          {
            v4 = v18;
          }
        }

        v11 = obj;
        v45 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v47 objects:v57 count:16];
      }

      while (v45);
    }
  }

  else
  {
    v28 = self->_transports;
    v11 = [v4 multiplexerParams];
    v29 = [(NSMutableDictionary *)v11 sessionID];
    v13 = [(NSMutableDictionary *)v28 objectForKeyedSubscript:v29];
  }

  if (v13)
  {
    [v4 setTransport:v13];
    os_unfair_lock_unlock(&v43->_lock);
    v30 = [NSSet setWithObject:v4];
    v31 = [v13 routeClientConnections:v30];

    v32 = +[IMLockdownManager sharedInstance];
    v33 = [v32 isInternalInstall];

    if (v33 && [v4 isQUIC] && IMGetCachedDomainIntForKeyWithDefaultValue() >= 1)
    {
      v46 = v4;
      IDSTransportThreadAddBlockAfter();
    }

    if (![v4 invalidated])
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
      v36 = [v4 multiplexerParams];
      v37 = [v36 sessionID];
      v38 = v43->_transports;
      *buf = 138412546;
      v52 = v37;
      v53 = 2112;
      v54 = v38;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Can't find transport for %@ in transports %@", buf, 0x16u);
    }

    os_unfair_lock_unlock(&v43->_lock);
  }

  v39 = 0;
LABEL_32:

  return v39;
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
    v15[0] = 138412546;
    *&v15[1] = v7;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "connectionCancel: found connection %@ in _connections %@", v15, 0x16u);
  }

  if (v7)
  {
    v10 = [v7 transport];
    [v10 cancelClientConnection:v7];

    [v7 invalidate];
    v11 = self->_connections;
    v12 = [v4 clientUUID];
    [(NSMutableDictionary *)v11 setObject:0 forKeyedSubscript:v12];

    if ([v7 isQUIC])
    {
      -[IDSGroupSessionMultiplexer _releaseQUICPort:](self, "_releaseQUICPort:", [v7 localPort]);
    }
  }

  v13 = [v7 nexusInstanceUUID];
  [v13 getUUIDBytes:v15];

  if (!uuid_is_null(v15))
  {
    os_nexus_controller_free_provider_instance();
  }

  os_unfair_lock_unlock(&self->_lock);

  return 1;
}

- (void)resetConnection:(id)a3 errorCode:(int)a4
{
  v5 = a3;
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
    v9 = [v5 clientUUID];
    *buf = 138412290;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Assigning empty nexus data message for client UUID %@", buf, 0xCu);
  }

  v10 = [(IDSTransportLevelAgent *)self->_agent registration];
  v11 = [NSData dataWithBytes:assign_message length:0];
  v12 = [v5 clientUUID];
  v13 = [v10 assignNexusData:v11 toClient:v12];

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

- (BOOL)listenRequest:(id)a3
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
        *&buf[0].sa_len = 138412290;
        *&buf[0].sa_data[2] = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "client endpoint %@", &buf[0].sa_len, 0xCu);
      }

      if (nw_endpoint_get_type(v6) != nw_endpoint_type_host)
      {
        v14 = +[IDSFoundationLog Multiplexer];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [v4 clientUUID];
          *&buf[0].sa_len = 138412290;
          *&buf[0].sa_data[2] = v20;
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
        v13 = [v4 clientUUID];
        *&buf[0].sa_len = 138412290;
        *&buf[0].sa_data[2] = v13;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "client does not have endpoint %@", &buf[0].sa_len, 0xCu);
      }
    }

    v14 = nw_path_copy_parameters();
    v15 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v4 clientUUID];
      *&buf[0].sa_len = 138412546;
      *&buf[0].sa_data[2] = v16;
      *&buf[0].sa_data[10] = 2112;
      *&buf[0].sa_data[12] = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "listenRequest: clientUUID: %@ and params: %@", &buf[0].sa_len, 0x16u);
    }

    endpoint = nw_path_copy_effective_local_endpoint(v5);
    v77 = nw_path_copy_effective_remote_endpoint(v5);
    pid = nw_parameters_get_pid();
    if (!pid)
    {
      v19 = +[IDSFoundationLog Multiplexer];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [v4 clientUUID];
        *&buf[0].sa_len = 138412290;
        *&buf[0].sa_data[2] = v21;
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
    v69 = v5;
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

      v5 = v69;
      goto LABEL_76;
    }

    v29 = assign_message;
    v30 = [(IDSTransportLevelAgent *)self->_agent registration];
    v31 = [NSData dataWithBytes:v29 length:v83];
    v32 = [v4 clientUUID];
    v75 = [v30 assignNexusData:v31 toClient:v32];

    free(v29);
    if ((v75 & 1) == 0)
    {
      p_super = +[IDSFoundationLog Multiplexer];
      v5 = v69;
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
      {
        *v85 = 0;
        _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_DEFAULT, "assignNexusData:toClient: failed", v85, 2u);
      }

      goto LABEL_76;
    }

    os_unfair_lock_lock(&self->_lock);
    v33 = objc_alloc_init(IDSMultiplexerConnection);
    v34 = [v4 clientUUID];
    [(IDSMultiplexerConnection *)v33 setClientUUID:v34];

    v5 = v69;
    [(IDSMultiplexerConnection *)v33 setPath:v69];
    v35 = [v4 multiplexerParams];
    [(IDSMultiplexerConnection *)v33 setMultiplexerParams:v35];

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
    v39 = [v4 clientUUID];
    v66 = v33;
    [(NSMutableDictionary *)connections setObject:v33 forKeyedSubscript:v39];

    v40 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *v85 = 138412290;
      v86 = v33;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Created listener %@", v85, 0xCu);
    }

    v41 = [v4 multiplexerParams];
    v42 = [v41 salt];

    v74 = v14;
    if (v42)
    {
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v43 = self->_transports;
      v76 = [(NSMutableDictionary *)v43 countByEnumeratingWithState:&v79 objects:v84 count:16];
      if (v76)
      {
        v72 = 0;
        v73 = v4;
        v71 = *v80;
        do
        {
          for (i = 0; i != v76; i = i + 1)
          {
            v45 = self;
            if (*v80 != v71)
            {
              objc_enumerationMutation(v43);
            }

            v46 = v43;
            v47 = *(*(&v79 + 1) + 8 * i);
            v48 = [v73 multiplexerParams];
            v49 = [v48 sessionID];
            v50 = [v73 multiplexerParams];
            v51 = [v50 salt];
            v52 = IDSIDAliasHashUUIDString();
            v53 = [v49 isEqualToString:v52];

            if (v53)
            {
              self = v45;
              v54 = [(NSMutableDictionary *)v45->_transports objectForKeyedSubscript:v47];

              v72 = v54;
              v14 = v74;
            }

            else
            {
              v14 = v74;
              self = v45;
            }

            v55 = &IDSRegistrationControlErrorDomain_ptr;
            v43 = v46;
          }

          v76 = [(NSMutableDictionary *)v46 countByEnumeratingWithState:&v79 objects:v84 count:16];
        }

        while (v76);
        v56 = v72;
        v4 = v73;
        v5 = v69;
        v6 = v70;
        goto LABEL_70;
      }

      v56 = 0;
      v5 = v69;
    }

    else
    {
      transports = self->_transports;
      v43 = [v4 multiplexerParams];
      v59 = [(NSMutableDictionary *)v43 sessionID];
      v60 = transports;
      v14 = v74;
      v56 = [(NSMutableDictionary *)v60 objectForKeyedSubscript:v59];
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
      v61 = [v55[240] Multiplexer];
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        v62 = [v4 multiplexerParams];
        v63 = [v62 sessionID];
        v64 = self->_transports;
        *v85 = 138412546;
        v86 = v63;
        v87 = 2112;
        v88 = v64;
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "Can't find transport for %@ in transports %@", v85, 0x16u);

        v14 = v74;
      }

      os_unfair_lock_unlock(&self->_lock);
      v5 = v69;
      p_super = &v66->super;
    }

    address = v65;
LABEL_76:

    goto LABEL_33;
  }

  v6 = +[IDSFoundationLog Multiplexer];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v4 clientUUID];
    *&buf[0].sa_len = 138412290;
    *&buf[0].sa_data[2] = v12;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "no nw_path for client %@", &buf[0].sa_len, 0xCu);
  }

LABEL_35:

  return 0;
}

@end