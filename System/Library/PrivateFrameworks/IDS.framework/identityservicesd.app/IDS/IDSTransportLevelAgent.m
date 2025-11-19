@interface IDSTransportLevelAgent
+ (IDSTransportLevelAgent)sharedInstance;
- (BOOL)assertAgentWithOptions:(id)a3;
- (BOOL)requestNexusWithOptions:(id)a3;
- (BOOL)startAgentWithOptions:(id)a3;
- (IDSTransportLevelAgent)init;
- (NSString)agentDescription;
- (id)copyAgentData;
- (void)closeNexusWithOptions:(id)a3;
- (void)registerMultiplexer:(id)a3 forIdentifier:(id)a4;
- (void)setClientMultiplexer:(id)a3 forIdentifier:(id)a4;
- (void)setMultiplexer:(id)a3 forIdentifier:(id)a4;
- (void)unassertAgentWithOptions:(id)a3;
- (void)unregisterMultiplexerForIdentifier:(id)a3;
@end

@implementation IDSTransportLevelAgent

+ (IDSTransportLevelAgent)sharedInstance
{
  if (qword_100CBF298 != -1)
  {
    sub_10092C16C();
  }

  v3 = qword_100CBF2A0;

  return v3;
}

- (IDSTransportLevelAgent)init
{
  v7.receiver = self;
  v7.super_class = IDSTransportLevelAgent;
  v2 = [(IDSTransportLevelAgent *)&v7 init];
  v3 = v2;
  if (v2)
  {
    multiplexers = v2->_multiplexers;
    v2->_multiplexers = 0;

    clientMultiplexer = v3->_clientMultiplexer;
    v3->_clientMultiplexer = 0;
  }

  return v3;
}

- (void)setMultiplexer:(id)a3 forIdentifier:(id)a4
{
  v12 = a3;
  v6 = a4;
  if (v6)
  {
    multiplexers = self->_multiplexers;
    v8 = v12;
    if (v12)
    {
      if (!multiplexers)
      {
        v9 = +[NSMutableDictionary dictionary];
        v10 = self->_multiplexers;
        self->_multiplexers = v9;

        v8 = v12;
        multiplexers = self->_multiplexers;
      }

      [(NSMutableDictionary *)multiplexers setObject:v8 forKeyedSubscript:v6];
    }

    else
    {
      [(NSMutableDictionary *)multiplexers setObject:0 forKeyedSubscript:v6];
      if (![(NSMutableDictionary *)self->_multiplexers count])
      {
        v11 = self->_multiplexers;
        self->_multiplexers = 0;
      }
    }
  }
}

- (void)setClientMultiplexer:(id)a3 forIdentifier:(id)a4
{
  v12 = a3;
  v6 = a4;
  if (v6)
  {
    clientMultiplexer = self->_clientMultiplexer;
    v8 = v12;
    if (v12)
    {
      if (!clientMultiplexer)
      {
        v9 = +[NSMutableDictionary dictionary];
        v10 = self->_clientMultiplexer;
        self->_clientMultiplexer = v9;

        v8 = v12;
        clientMultiplexer = self->_clientMultiplexer;
      }

      [(NSMutableDictionary *)clientMultiplexer setObject:v8 forKeyedSubscript:v6];
    }

    else
    {
      [(NSMutableDictionary *)clientMultiplexer setObject:0 forKeyedSubscript:v6];
      if (![(NSMutableDictionary *)self->_clientMultiplexer count])
      {
        v11 = self->_clientMultiplexer;
        self->_clientMultiplexer = 0;
      }
    }
  }
}

- (id)copyAgentData
{
  v4 = 0u;
  v16 = 0;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  v11 = 0u;
  v10 = 0u;
  v9 = 0u;
  v8 = 0u;
  v7 = 0u;
  v6 = 0u;
  v5 = 0u;
  v3 = 3;
  *(&v4 + 4) = 0x100000002;
  [NSData dataWithBytes:&v3 length:204];
  return objc_claimAutoreleasedReturnValue();
}

- (NSString)agentDescription
{
  v2 = [objc_opt_class() agentDomain];
  v3 = [objc_opt_class() agentType];
  v4 = [NSString stringWithFormat:@"IDSTransportAgent %@ : %@", v2, v3];

  return v4;
}

- (void)registerMultiplexer:(id)a3 forIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IDSTransportLevelAgent *)self multiplexerForIdentifier:v7];
  v9 = +[IDSFoundationLog Multiplexer];
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      v14 = 138412802;
      v15 = v7;
      v16 = 2112;
      v17 = v8;
      v18 = 2112;
      v19 = v6;
      v11 = "Multiplexer for identifier %@ already registered! Overriding %@ with %@\n";
      v12 = v9;
      v13 = 32;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v11, &v14, v13);
    }
  }

  else if (v10)
  {
    v14 = 138412546;
    v15 = v6;
    v16 = 2112;
    v17 = v7;
    v11 = "Registering Multiplexer %@ for identifier %@";
    v12 = v9;
    v13 = 22;
    goto LABEL_6;
  }

  [(IDSTransportLevelAgent *)self setMultiplexer:v6 forIdentifier:v7];
}

- (void)unregisterMultiplexerForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(IDSTransportLevelAgent *)self multiplexerForIdentifier:v4];
  v6 = +[IDSFoundationLog Multiplexer];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v8 = 138412546;
      v9 = v5;
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Unregistering Multiplexer %@ for identifier %@", &v8, 0x16u);
    }

    [(IDSTransportLevelAgent *)self setMultiplexer:0 forIdentifier:v4];
  }

  else
  {
    if (v7)
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "No Multiplexer registered for identifier %@\n", &v8, 0xCu);
    }
  }
}

- (BOOL)requestNexusWithOptions:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:NWNetworkAgentStartOptionClientUUID];
  v6 = +[IDSFoundationLog Multiplexer];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v35 = 138412546;
    *v36 = v5;
    *&v36[8] = 2112;
    *&v36[10] = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "requestNexusWithOptions: Client requested nexus: %@ options: %@\n", &v35, 0x16u);
  }

  v7 = [[IDSTransportLevelAgentClientInfo alloc] initWithClientUUID:v5];
  v8 = v7;
  if (v7)
  {
    v9 = [(IDSTransportLevelAgentClientInfo *)v7 path];

    if (!v9)
    {
      v12 = +[IDSFoundationLog Multiplexer];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v35 = 138412290;
        *v36 = v5;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "requestNexusWithOptions: nw_path_copy_path_for_client failed for client %@", &v35, 0xCu);
      }

      goto LABEL_18;
    }

    v10 = [(IDSTransportLevelAgentClientInfo *)v8 multiplexerParams];
    v11 = [v10 multiplexer];
    v12 = [(IDSTransportLevelAgent *)self multiplexerForIdentifier:v11];

    if (v12)
    {
      v13 = [(IDSTransportLevelAgentClientInfo *)v8 endpoint];

      if (v13)
      {
        v14 = [(IDSTransportLevelAgentClientInfo *)v8 endpoint];
        type = nw_endpoint_get_type(v14);

        if (type == nw_endpoint_type_host)
        {
          v16 = [(IDSTransportLevelAgentClientInfo *)v8 multiplexerParams];

          if (!v16)
          {
            v17 = +[IDSFoundationLog Multiplexer];
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              v35 = 138412290;
              *v36 = v5;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "requestNexusWithOptions: could not parse params for client %@", &v35, 0xCu);
            }

LABEL_18:
            v18 = 0;
LABEL_31:

            goto LABEL_32;
          }
        }

        else
        {
          v26 = +[IDSFoundationLog Multiplexer];
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v35 = 138412290;
            *v36 = v5;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "requestNexusWithOptions: endpoint type not 'host' for client %@", &v35, 0xCu);
          }
        }

        v27 = [(IDSTransportLevelAgentClientInfo *)v8 endpoint];
        port = nw_endpoint_get_port(v27);

        v29 = [(IDSTransportLevelAgentClientInfo *)v8 endpoint];
        v30 = nw_endpoint_copy_port_string(v29);

        v31 = +[IDSFoundationLog Multiplexer];
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v35 = 67109378;
          *v36 = port;
          *&v36[4] = 2080;
          *&v36[6] = v30;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "requestNexusWithOptions: port %u portString %s", &v35, 0x12u);
        }

        free(v30);
        v32 = +[IDSFoundationLog Multiplexer];
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = [(IDSTransportLevelAgentClientInfo *)v8 multiplexerParams];
          v35 = 138412802;
          *v36 = v33;
          *&v36[8] = 2112;
          *&v36[10] = v5;
          v37 = 2112;
          v38 = v12;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "requestNexusWithOptions: [%@] for client %@ found multiplexer %@", &v35, 0x20u);
        }

        [(IDSTransportLevelAgent *)self setClientMultiplexer:v12 forIdentifier:v5];
        v25 = [v12 connectionRequest:v8];
      }

      else
      {
        v23 = +[IDSFoundationLog Multiplexer];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = [(IDSTransportLevelAgentClientInfo *)v8 multiplexerParams];
          v35 = 138412802;
          *v36 = v24;
          *&v36[8] = 2112;
          *&v36[10] = v5;
          v37 = 2112;
          v38 = v12;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "requestNexusWithOptions: [%@] for client %@ found multiplexer %@", &v35, 0x20u);
        }

        [(IDSTransportLevelAgent *)self setClientMultiplexer:v12 forIdentifier:v5];
        v25 = [v12 listenRequest:v8];
      }

      v18 = v25;
      goto LABEL_31;
    }

    v19 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [(IDSTransportLevelAgentClientInfo *)v8 multiplexerParams];
      v21 = [v20 multiplexer];
      multiplexers = self->_multiplexers;
      v35 = 138412802;
      *v36 = v21;
      *&v36[8] = 2112;
      *&v36[10] = v5;
      v37 = 2112;
      v38 = multiplexers;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "requestNexusWithOptions: cannot find mutiplexer for multiplexerIdentifier [%@] for client %@ Registered multiplexers %@", &v35, 0x20u);
    }

    goto LABEL_18;
  }

  v18 = 0;
LABEL_32:

  return v18;
}

- (void)closeNexusWithOptions:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)v4 objectForKeyedSubscript:NWNetworkAgentStartOptionClientUUID];
  v6 = +[IDSFoundationLog Multiplexer];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = v5;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "closeNexusWithOptions: Client closed nexus: %@ options: %@\n", &v12, 0x16u);
  }

  v7 = [[IDSTransportLevelAgentClientInfo alloc] initWithClientUUID:v5];
  if (v7)
  {
    v8 = [(IDSTransportLevelAgent *)self clientMultiplexerForIdentifier:v5];
    if (v8)
    {
      [(IDSTransportLevelAgent *)self setClientMultiplexer:0 forIdentifier:v5];
      v9 = +[IDSFoundationLog Multiplexer];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412546;
        v13 = v5;
        v14 = 2112;
        v15 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "closeNexusWithOptions: for client %@ found multiplexer %@", &v12, 0x16u);
      }

      [(NSMutableDictionary *)v8 connectionCancel:v7];
    }

    else
    {
      v10 = +[IDSFoundationLog Multiplexer];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        clientMultiplexer = self->_clientMultiplexer;
        v12 = 138412546;
        v13 = v5;
        v14 = 2112;
        v15 = clientMultiplexer;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "closeNexusWithOptions: cannot find mutiplexer for client %@ Registered multiplexers %@", &v12, 0x16u);
      }
    }
  }
}

- (BOOL)startAgentWithOptions:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:NWNetworkAgentStartOptionClientUUID];
  v4 = +[IDSFoundationLog Multiplexer];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Client triggered agent: %@\n", &v6, 0xCu);
  }

  return 1;
}

- (BOOL)assertAgentWithOptions:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:NWNetworkAgentStartOptionClientUUID];
  v4 = +[IDSFoundationLog Multiplexer];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Client asserted agent: %@\n", &v6, 0xCu);
  }

  return 1;
}

- (void)unassertAgentWithOptions:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:NWNetworkAgentStartOptionClientUUID];
  v4 = +[IDSFoundationLog Multiplexer];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Client unasserted agent: %@\n", &v5, 0xCu);
  }
}

@end