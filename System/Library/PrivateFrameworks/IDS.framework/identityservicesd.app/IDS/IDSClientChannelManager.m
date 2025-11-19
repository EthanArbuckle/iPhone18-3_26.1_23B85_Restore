@interface IDSClientChannelManager
+ (id)sharedInstance;
- (BOOL)addClient:(id)a3;
- (BOOL)addClient:(id)a3 path:(id)a4 endpoint:(id)a5;
- (BOOL)connectProtocolHandlerForClient:(id)a3;
- (BOOL)connectTransportThreadForClient:(id)a3;
- (BOOL)registerClientChannelDestination:(id)a3 connectHandler:(id)a4;
- (BOOL)unregisterClientChannelDestination:(id)a3 clientUUID:(id)a4;
- (IDSClientChannelManager)init;
- (id)_getClientChannelconnectHandlerForDestination:(id)a3;
- (id)initForTesting;
- (void)removeClient:(id)a3;
@end

@implementation IDSClientChannelManager

+ (id)sharedInstance
{
  if (qword_100CBCF38 != -1)
  {
    sub_100917234();
  }

  v3 = qword_100CBCF40;

  return v3;
}

- (IDSClientChannelManager)init
{
  v55.receiver = self;
  v55.super_class = IDSClientChannelManager;
  v2 = [(IDSClientChannelManager *)&v55 init];
  v3 = v2;
  if (!v2)
  {
    goto LABEL_45;
  }

  v2->_lock._os_unfair_lock_opaque = 0;
  v4 = nw_nexus_create();
  nexus = v3->_nexus;
  v3->_nexus = v4;

  if (v3->_nexus)
  {
    v6 = +[NSMutableDictionary dictionary];
    clientChannelRegistrations = v3->_clientChannelRegistrations;
    v3->_clientChannelRegistrations = v6;

    v8 = +[NSMutableDictionary dictionary];
    destinationToRegisteredClientUUIDMapping = v3->_destinationToRegisteredClientUUIDMapping;
    v3->_destinationToRegisteredClientUUIDMapping = v8;

    v10 = +[NSMutableDictionary dictionary];
    clientChannels = v3->_clientChannels;
    v3->_clientChannels = v10;

    v12 = +[NSMutableDictionary dictionary];
    pendingClientUUIDs = v3->_pendingClientUUIDs;
    v3->_pendingClientUUIDs = v12;

    v14 = dispatch_get_global_queue(-32768, 0);
    v3->_vifRef = NEVirtualInterfaceCreate();

    if (v3->_vifRef)
    {
      v15 = NEVirtualInterfaceCopyName();
      v16 = CFAutorelease(v15);
      v17 = os_nexus_controller_create();
      v3->_osNexusController = v17;
      if (!v17)
      {
        v19 = +[IDSFoundationLog ClientChannelManager];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v20 = "os_nexus_controller_create failed";
          goto LABEL_18;
        }

LABEL_19:

        goto LABEL_20;
      }

      if (!os_nexus_attr_create())
      {
        v19 = +[IDSFoundationLog ClientChannelManager];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v20 = "os_nexus_attr_create failed";
          goto LABEL_18;
        }

        goto LABEL_19;
      }

      os_nexus_attr_set();
      os_nexus_attr_set();
      strcpy(v3->_osNexusName, "IDSClientChannelNexusOS");
      v18 = os_nexus_controller_register_provider();
      os_nexus_attr_destroy();
      if (v18)
      {
        v19 = +[IDSFoundationLog ClientChannelManager];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v20 = "os_nexus_controller_register_provider failed";
LABEL_18:
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v20, buf, 2u);
          goto LABEL_19;
        }

        goto LABEL_19;
      }

      NEVirtualInterfaceSetReadAutomatically();
      IPPayloadHandler = NEVirtualInterfaceSetReadIPPayloadHandler();
      v24 = NEVirtualInterfaceSetMTU();
      v59 = 0;
      v58 = 0;
      v56 = 7708;
      v57 = 33022;
      v16 = v16;
      arc4random_buf(&v58, 8uLL);
      *&v25 = 0xAAAAAAAAAAAAAAAALL;
      *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *&buf[30] = v25;
      *buf = v25;
      *&buf[16] = v25;
      inet_ntop(30, &v57, buf, 0x2Eu);
      v26 = [NSString stringWithUTF8String:buf];
      v27 = [v26 stringByAppendingString:@"%"];
      v28 = [v27 stringByAppendingString:v16];

      v29 = v28;
      v30 = NEVirtualInterfaceAddAddress();
      v31 = NEVirtualInterfaceSetRankNever();
      updated = NEVirtualInterfaceUpdateAdHocService();
      v33 = +[IDSFoundationLog ClientChannelManager];
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = @"YES";
        if (IPPayloadHandler)
        {
          v35 = @"YES";
        }

        else
        {
          v35 = @"NO";
        }

        *buf = 138413570;
        *&buf[4] = v16;
        if (v24)
        {
          v36 = @"YES";
        }

        else
        {
          v36 = @"NO";
        }

        *&buf[14] = v35;
        *&buf[12] = 2112;
        if (v30)
        {
          v37 = @"YES";
        }

        else
        {
          v37 = @"NO";
        }

        *&buf[22] = 2112;
        *&buf[24] = v36;
        if (v31)
        {
          v38 = @"YES";
        }

        else
        {
          v38 = @"NO";
        }

        *&buf[32] = 2112;
        if (!updated)
        {
          v34 = @"NO";
        }

        *&buf[34] = v37;
        *&buf[42] = 2112;
        *&buf[44] = v38;
        v61 = 2112;
        v62 = v34;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Created interface %@ for IDS Nexus %@ %@ %@ %@ %@", buf, 0x3Eu);
      }

      v39 = objc_alloc_init(IDSNexusAgent);
      agent = v3->_agent;
      v3->_agent = v39;

      v41 = v3->_agent;
      v42 = +[NSUUID UUID];
      [(IDSNexusAgent *)v41 setAgentUUID:v42];

      [(IDSNexusAgent *)v3->_agent setActive:1];
      v43 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v44 = dispatch_queue_attr_make_with_qos_class(v43, QOS_CLASS_USER_INTERACTIVE, 0);
      v19 = dispatch_queue_create("IDSClientChannelAgentQueue", v44);

      v45 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class() queue:v19];
      registration = v3->_registration;
      v3->_registration = v45;

      LOBYTE(v44) = [(NWNetworkAgentRegistration *)v3->_registration registerNetworkAgent:v3->_agent];
      v47 = +[IDSFoundationLog ClientChannelManager];
      v48 = os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT);
      if ((v44 & 1) == 0)
      {
        if (v48)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "registerNetworkAgent failed", buf, 2u);
        }

        IDSNetworkingLogDump();
        goto LABEL_19;
      }

      if (v48)
      {
        v49 = v3->_agent;
        v50 = [(IDSNexusAgent *)v49 agentUUID];
        if ([(NWNetworkAgentRegistration *)v3->_registration isRegistered])
        {
          v51 = @"YES";
        }

        else
        {
          v51 = @"NO";
        }

        v52 = [(NWNetworkAgentRegistration *)v3->_registration registeredUUID];
        *buf = 134218754;
        *&buf[4] = v49;
        *&buf[12] = 2112;
        *&buf[14] = v50;
        *&buf[22] = 2112;
        *&buf[24] = v51;
        *&buf[32] = 2112;
        *&buf[34] = v52;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Registered IDS Nexus Agent (%p) %@ (isRegistered %@ registrationUUID %@)", buf, 0x2Au);
      }

      if (([(NWNetworkAgentRegistration *)v3->_registration addNetworkAgentToInterfaceNamed:v16]& 1) == 0)
      {
        v54 = +[IDSFoundationLog ClientChannelManager];
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "addNetworkAgentToInterfaceNamed failed", buf, 2u);
        }

        goto LABEL_19;
      }

LABEL_45:
      v22 = v3;
      goto LABEL_46;
    }

    v16 = +[IDSFoundationLog ClientChannelManager];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v21 = "NEVirtualInterfaceCreate failed";
      goto LABEL_13;
    }
  }

  else
  {
    v16 = +[IDSFoundationLog ClientChannelManager];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v21 = "nw_nexus_create failed";
LABEL_13:
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v21, buf, 2u);
    }
  }

LABEL_20:

  v22 = 0;
LABEL_46:

  return v22;
}

- (id)initForTesting
{
  v13.receiver = self;
  v13.super_class = IDSClientChannelManager;
  v2 = [(IDSClientChannelManager *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = +[NSMutableDictionary dictionary];
    clientChannelRegistrations = v3->_clientChannelRegistrations;
    v3->_clientChannelRegistrations = v4;

    v6 = +[NSMutableDictionary dictionary];
    destinationToRegisteredClientUUIDMapping = v3->_destinationToRegisteredClientUUIDMapping;
    v3->_destinationToRegisteredClientUUIDMapping = v6;

    v8 = +[NSMutableDictionary dictionary];
    clientChannels = v3->_clientChannels;
    v3->_clientChannels = v8;

    v10 = +[NSMutableDictionary dictionary];
    pendingClientUUIDs = v3->_pendingClientUUIDs;
    v3->_pendingClientUUIDs = v10;
  }

  return v3;
}

- (BOOL)connectTransportThreadForClient:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  memset(src, 170, sizeof(src));
  if (!os_nexus_controller_alloc_provider_instance())
  {
    memset(buf, 170, 16);
    uuid_generate(buf);
    getpid();
    if (os_nexus_controller_bind_provider_instance())
    {
      v6 = +[IDSFoundationLog ClientChannelManager];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "os_nexus_controller_bind_provider_instance failed for server", v27, 2u);
      }

      goto LABEL_9;
    }

    v9 = [*(v4 + 3) parameters];
    v10 = [v9 processUUID];

    memset(v27, 170, sizeof(v27));
    [v10 getUUIDBytes:v27];
    v11 = [*(v4 + 3) parameters];
    [v11 pid];

    if (os_nexus_controller_bind_provider_instance())
    {
      v12 = +[IDSFoundationLog ClientChannelManager];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "os_nexus_controller_bind_provider_instance failed for client", v26, 2u);
      }

      v7 = 0;
      v4[9] = 1;
      goto LABEL_36;
    }

    v13 = [*(v4 + 3) parameters];
    v14 = [v13 account];

    if (v14)
    {
      v15 = [NSScanner scannerWithString:v14];
      [v15 scanUnsignedLongLong:v4 + 144];
    }

    uuid_copy(v4 + 32, src);
    v16 = os_channel_attr_create();
    *(v4 + 12) = v16;
    if (v16)
    {
      os_channel_attr_set_key();
      os_channel_attr_set();
      extended = os_channel_create_extended();
      *(v4 + 11) = extended;
      if (extended)
      {
        os_channel_get_fd();
        os_channel_ring_id();
        os_channel_rx_ring();
        os_channel_ring_id();
        *(v4 + 13) = os_channel_tx_ring();
        *v26 = 0;
        assign_message = nw_path_create_assign_message();
        if (assign_message)
        {
          registration = self->_registration;
          v20 = [NSData dataWithBytes:assign_message length:*v26];
          LOBYTE(registration) = [(NWNetworkAgentRegistration *)registration assignNexusData:v20 toClient:*(v4 + 2)];

          free(assign_message);
          if (registration)
          {
            v24 = v4;
            v23 = v24;
            IDSTransportThreadAddSocket();

            v7 = 1;
LABEL_35:

LABEL_36:
            goto LABEL_10;
          }

          v22 = +[IDSFoundationLog ClientChannelManager];
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *v25 = 0;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "assignNexusData:toClient: failed", v25, 2u);
          }
        }

        else
        {
          v22 = +[IDSFoundationLog ClientChannelManager];
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *v25 = 0;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "nw_path_create_assign_message failed", v25, 2u);
          }
        }

LABEL_34:
        v7 = 0;
        v4[9] = 1;
        goto LABEL_35;
      }

      v21 = +[IDSFoundationLog ClientChannelManager];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "os_channel_create_extended failed", v26, 2u);
      }
    }

    else
    {
      v21 = +[IDSFoundationLog ClientChannelManager];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "connectTransportThreadForClient: os_channel_attr_create failed", v26, 2u);
      }
    }

    goto LABEL_34;
  }

  v5 = +[IDSFoundationLog ClientChannelManager];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "os_nexus_controller_alloc_provider_instance failed", buf, 2u);
  }

LABEL_9:
  v7 = 0;
  v4[9] = 1;
LABEL_10:
  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (BOOL)connectProtocolHandlerForClient:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = malloc_type_calloc(1uLL, 0x40uLL, 0x10A0040C9AB51B7uLL);
  *(v5 + 2) = &unk_100CBCF48;
  *(v5 + 3) = &unk_100CBCF70;
  uuid_copy(v5, v4 + 112);
  *(v5 + 5) = v4;
  channel_to_new_instance = nw_nexus_create_channel_to_new_instance();
  if (channel_to_new_instance)
  {
    memset(uu, 170, sizeof(uu));
    if ((nw_channel_get_nexus_instance() & 1) == 0)
    {
      v8 = +[IDSFoundationLog ClientChannelManager];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "nw_channel_get_nexus_instance failed", buf, 2u);
      }

      v13 = 0;
      goto LABEL_29;
    }

    nw_channel_get_key();
    v7 = [*(v4 + 3) parameters];
    v8 = [v7 processUUID];

    v9 = [*(v4 + 3) parameters];
    v10 = [v9 pid];

    if (v8)
    {
      memset(buf, 170, 16);
      [v8 getUUIDBytes:buf];
      v11 = nw_nexus_bind_client_port();
    }

    else
    {
      v11 = nw_nexus_bind_client_port();
    }

    if ((v11 & 1) == 0)
    {
      v15 = +[IDSFoundationLog ClientChannelManager];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109378;
        *&buf[4] = v10;
        *&buf[8] = 2112;
        *&buf[10] = v8;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "nw_nexus_bind_client_port failed for pid %d processUUID %@", buf, 0x12u);
      }

      v13 = 0;
      goto LABEL_28;
    }

    *&buf[29] = 0xAAAAAAAAAAAAAAAALL;
    *&v14 = 0xAAAAAAAAAAAAAAAALL;
    *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *buf = v14;
    *&buf[16] = v14;
    uuid_unparse(uu, buf);
    v15 = [[NSUUID alloc] initWithUUIDBytes:uu];
    protocol_handler = nw_channel_get_protocol_handler();
    (**(protocol_handler + 24))();
    assign_message = nw_path_create_assign_message();
    if (assign_message)
    {
      registration = self->_registration;
      v19 = [NSData dataWithBytes:assign_message length:0];
      LOBYTE(registration) = [(NWNetworkAgentRegistration *)registration assignNexusData:v19 toClient:*(v4 + 2)];

      free(assign_message);
      if (registration)
      {
        [v15 getUUIDBytes:v4 + 32];
        objc_storeStrong(v4 + 8, channel_to_new_instance);
        *(v4 + 10) = v5;
        v20 = +[IDSFoundationLog ClientChannelManager];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *v23 = 134218242;
          v24 = v4;
          v25 = 2080;
          v26 = buf;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Connected to protocol handler channel object %p for nexus instance [%s]", v23, 0x16u);
        }

        v13 = 1;
        goto LABEL_27;
      }

      v20 = +[IDSFoundationLog ClientChannelManager];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *v23 = 0;
        v21 = "assignNexusData:toClient: failed";
        goto LABEL_25;
      }
    }

    else
    {
      v20 = +[IDSFoundationLog ClientChannelManager];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *v23 = 0;
        v21 = "nw_path_create_assign_message failed";
LABEL_25:
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v21, v23, 2u);
      }
    }

    v13 = 0;
LABEL_27:

LABEL_28:
LABEL_29:

    goto LABEL_30;
  }

  v12 = +[IDSFoundationLog ClientChannelManager];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "nw_nexus_create_channel_to_new_instance failed", buf, 2u);
  }

  v13 = 0;
LABEL_30:

  os_unfair_lock_unlock(&self->_lock);
  return v13;
}

- (BOOL)addClient:(id)a3
{
  v4 = a3;
  v5 = [NWPath pathForClientID:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 endpoint];
    v8 = [(IDSClientChannelManager *)self addClient:v4 path:v6 endpoint:v7];
  }

  else
  {
    v9 = +[IDSFoundationLog ClientChannelManager];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Failed to get path for client UUID %@", &v11, 0xCu);
    }

    v8 = 0;
  }

  return v8;
}

- (BOOL)addClient:(id)a3 path:(id)a4 endpoint:(id)a5
{
  v9 = a3;
  v10 = a4;
  v32 = a5;
  os_unfair_lock_lock(&self->_lock);
  v11 = [v10 parameters];
  LODWORD(a5) = [v11 pid];
  v30 = [v11 processUUID];
  v29 = a5;
  v31 = [(IDSClientChannel *)v32 hostname];
  v12 = +[IDSFoundationLog ClientChannelManager];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v10 endpoint];
    v14 = [v10 parameters];
    v15 = [(IDSClientChannel *)v32 port];
    *buf = 138413314;
    v34 = v9;
    v35 = 2112;
    v36 = v13;
    v37 = 2112;
    *v38 = v14;
    *&v38[8] = 2112;
    *&v38[10] = v10;
    *&v38[18] = 1024;
    *&v38[20] = [v15 intValue];
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Client UUID %@ requested nexus\n\t%@\n\t%@\n\t%@, endpoint port: %d", buf, 0x30u);
  }

  v16 = [(NSMutableDictionary *)self->_clientChannels objectForKeyedSubscript:v9];
  if (v16)
  {
    v17 = +[IDSFoundationLog ClientChannelManager];
    if (os_log_type_enabled(&v17->super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v34 = v16;
      v35 = 2112;
      v36 = v9;
      v37 = 2112;
      *v38 = v16;
      _os_log_impl(&_mh_execute_header, &v17->super, OS_LOG_TYPE_DEFAULT, "We already created the clientChannel %p for the client %@. (IDSClientChannel %@)", buf, 0x20u);
    }
  }

  else
  {
    v17 = [[IDSClientChannel alloc] initWithDestination:v31];
    v18 = +[NSMutableArray array];
    [(IDSClientChannel *)v17 setCachedDataForClient:v18];

    objc_storeStrong(&v17->_uuid, a3);
    objc_storeStrong(&v17->_path, a4);
    v19 = [(IDSClientChannel *)v32 port];
    v17->_hasMetadata = [v19 intValue] > 0;

    v17->_transportType = [v11 dataMode] == 2;
    [(NSUUID *)v17->_uuid getUUIDBytes:v17->_flowID];
    [(NSMutableDictionary *)self->_clientChannels setObject:v17 forKeyedSubscript:v9];
    v20 = [(NSMutableDictionary *)self->_clientChannelRegistrations objectForKeyedSubscript:v31];
    v21 = v20;
    if (v20)
    {
      (*(v20 + 16))(v20, v31, v17);
      [(NSMutableDictionary *)self->_destinationToRegisteredClientUUIDMapping setObject:v9 forKeyedSubscript:v31];
      v22 = [(NSMutableDictionary *)self->_clientChannels count];
      v23 = +[IDSFoundationLog ClientChannelManager];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134219266;
        v34 = v17;
        v35 = 2112;
        v36 = v31;
        v37 = 2112;
        *v38 = v32;
        *&v38[8] = 1024;
        *&v38[10] = v29;
        *&v38[14] = 2112;
        *&v38[16] = v30;
        v39 = 1024;
        v40 = v22;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Created channel object %p for destination %@ endpoint [%@] pid %d processUUID %@. Active clients: %u", buf, 0x36u);
      }

      if (v22 >= 0x1E)
      {
        v24 = +[IMLockdownManager sharedInstance];
        v25 = [v24 isInternalInstall];

        if (v25)
        {
          v26 = +[IDSFoundationLog ClientChannelManager];
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            LODWORD(v34) = v22;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Too many active clients (%u). Aborting.", buf, 8u);
          }

          if (!isRunningTests())
          {
            abort();
          }

          throwsIDSAbortException();
        }
      }
    }

    else
    {
      v27 = +[IDSFoundationLog ClientChannelManager];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413058;
        v34 = v31;
        v35 = 2112;
        v36 = v32;
        v37 = 1024;
        *v38 = v29;
        *&v38[4] = 2112;
        *&v38[6] = v30;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Failed finding connectHandler for destination %@ endpoint [%@] pid %d processUUID %@", buf, 0x26u);
      }

      [(NSMutableDictionary *)self->_pendingClientUUIDs setObject:v9 forKeyedSubscript:v31];
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  return 1;
}

- (void)removeClient:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_clientChannels objectForKeyedSubscript:v4];
  [(NSMutableDictionary *)self->_clientChannels setObject:0 forKeyedSubscript:v4];
  os_unfair_lock_unlock(&self->_lock);
  if (v5)
  {
    v6 = [v5 destination];
    if (!v6)
    {
LABEL_11:

      goto LABEL_12;
    }

    v7 = im_primary_queue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10034D4E8;
    block[3] = &unk_100BD6E40;
    v19 = v6;
    v8 = v4;
    v20 = v8;
    v9 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, block);
    dispatch_sync(v7, v9);

    [v5 invalidate];
    if (v5[11])
    {
      v16 = v5;
      v17 = v8;
      IDSTransportThreadAddSyncBlock();

      v10 = v16;
    }

    else
    {
      if (!v5[8])
      {
LABEL_10:

        goto LABEL_11;
      }

      v11 = v5[10];
      if (v11)
      {
        (*(*(*(v11 + 32) + 24) + 8))();
      }

      nw_channel_close();
      v12 = v5[8];
      v5[8] = 0;

      v10 = [v5 readHandler];
      v13 = [[NSString alloc] initWithFormat:@"client %@ closed connection", v8];
      v14 = [[NSDictionary alloc] initWithObjectsAndKeys:{v13, NSLocalizedDescriptionKey, 0}];
      v15 = [[NSError alloc] initWithDomain:@"ClientChannel" code:9001 userInfo:v14];
      (v10)[2](v10, 0, 0, 0, 0, v15);
    }

    goto LABEL_10;
  }

LABEL_12:
}

- (BOOL)registerClientChannelDestination:(id)a3 connectHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  v8 = [v7 copy];
  v9 = objc_retainBlock(v8);
  [(NSMutableDictionary *)self->_clientChannelRegistrations setObject:v9 forKeyedSubscript:v6];

  v10 = [(NSMutableDictionary *)self->_pendingClientUUIDs objectForKeyedSubscript:v6];
  v11 = +[IDSFoundationLog ClientChannelManager];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_retainBlock(v8);
    clientChannelRegistrations = self->_clientChannelRegistrations;
    clientChannels = self->_clientChannels;
    v17 = 138413058;
    v18 = v6;
    v19 = 2048;
    v20 = v12;
    v21 = 2112;
    v22 = clientChannelRegistrations;
    v23 = 2112;
    v24 = clientChannels;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "registerClientChannelDestination %@ handler %p all handlers [%@] channels [%@]", &v17, 0x2Au);
  }

  if (v10)
  {
    v15 = [(NSMutableDictionary *)self->_clientChannels objectForKeyedSubscript:v10];
    [(NSMutableDictionary *)self->_destinationToRegisteredClientUUIDMapping setObject:v10 forKeyedSubscript:v6];
    [(NSMutableDictionary *)self->_pendingClientUUIDs setObject:0 forKeyedSubscript:v6];
    if (v15)
    {
      (*(v7 + 2))(v7, v6, v15);
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  return 1;
}

- (BOOL)unregisterClientChannelDestination:(id)a3 clientUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(NSMutableDictionary *)self->_destinationToRegisteredClientUUIDMapping objectForKeyedSubscript:v6];
  if (([v7 isEqual:v8] & 1) == 0 && v7 | v8)
  {
    v15 = +[IDSFoundationLog ClientChannelManager];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412802;
      v18 = v7;
      v19 = 2112;
      v20 = v8;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "skipping unregisterClientChannelDestination; clientUUID %@ does not match storedClientUUID %@ for destination %@", &v17, 0x20u);
    }

    v14 = 0;
  }

  else
  {
    v9 = +[IDSFoundationLog ClientChannelManager];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(NSMutableDictionary *)self->_clientChannelRegistrations objectForKeyedSubscript:v6];
      v11 = objc_retainBlock(v10);
      clientChannelRegistrations = self->_clientChannelRegistrations;
      clientChannels = self->_clientChannels;
      v17 = 138413314;
      v18 = v6;
      v19 = 2112;
      v20 = v8;
      v21 = 2048;
      v22 = v11;
      v23 = 2112;
      v24 = clientChannelRegistrations;
      v25 = 2112;
      v26 = clientChannels;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "unregisterClientChannelDestination %@ clientUUID %@ handler %p all handlers [%@] channels [%@]", &v17, 0x34u);
    }

    [(NSMutableDictionary *)self->_clientChannelRegistrations setObject:0 forKeyedSubscript:v6];
    [(NSMutableDictionary *)self->_pendingClientUUIDs setObject:0 forKeyedSubscript:v6];
    [(NSMutableDictionary *)self->_destinationToRegisteredClientUUIDMapping setObject:0 forKeyedSubscript:v6];
    v14 = 1;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v14;
}

- (id)_getClientChannelconnectHandlerForDestination:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_clientChannelRegistrations objectForKeyedSubscript:a3];
  v4 = objc_retainBlock(v3);

  return v4;
}

@end