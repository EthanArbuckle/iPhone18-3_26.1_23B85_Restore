@interface IDSTransportLevelAgentClientInfo
- (IDSTransportLevelAgentClientInfo)initWithAgentClient:(id)client assign:(id)assign parameters:(id)parameters;
- (IDSTransportLevelAgentClientInfo)initWithClientUUID:(id)d;
@end

@implementation IDSTransportLevelAgentClientInfo

- (IDSTransportLevelAgentClientInfo)initWithClientUUID:(id)d
{
  dCopy = d;
  v25.receiver = self;
  v25.super_class = IDSTransportLevelAgentClientInfo;
  v6 = [(IDSTransportLevelAgentClientInfo *)&v25 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_17;
  }

  objc_storeStrong(&v6->_clientUUID, d);
  v28[0] = 0xAAAAAAAAAAAAAAAALL;
  v28[1] = 0xAAAAAAAAAAAAAAAALL;
  [dCopy getUUIDBytes:v28];
  v8 = nw_path_copy_path_for_client();
  if (!v8)
  {
    v9 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = dCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "nw_path_copy_path_for_client failed for client %@", buf, 0xCu);
    }

    goto LABEL_16;
  }

  v9 = v8;
  objc_storeStrong(&v7->_path, v8);
  v10 = nw_path_copy_parameters();
  account_id = nw_parameters_get_account_id();
  if (account_id)
  {
    v12 = account_id;
    if (*account_id)
    {
      v13 = [IDSGroupSessionConnectionParameters alloc];
      v14 = [NSString stringWithUTF8String:v12];
      v15 = [v13 initWithStringRepresentation:v14];
      multiplexerParams = v7->_multiplexerParams;
      v7->_multiplexerParams = v15;

      v17 = nw_path_copy_endpoint();
      if (v17)
      {
        v18 = +[IDSFoundationLog Multiplexer];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v27 = v17;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "client endpoint %@", buf, 0xCu);
        }

        v19 = v17;
        endpoint = v7->_endpoint;
        v7->_endpoint = v19;
      }

      else
      {
        v23 = nw_path_copy_effective_local_endpoint(v9);
        endpoint = v7->_listeningEndpoint;
        v7->_listeningEndpoint = v23;
      }

LABEL_16:
LABEL_17:
      v22 = v7;
      goto LABEL_18;
    }
  }

  v21 = +[IDSFoundationLog Multiplexer];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v9;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "new client path [%@] missing account_id to specify multiplexer", buf, 0xCu);
  }

  v22 = 0;
LABEL_18:

  return v22;
}

- (IDSTransportLevelAgentClientInfo)initWithAgentClient:(id)client assign:(id)assign parameters:(id)parameters
{
  clientCopy = client;
  assignCopy = assign;
  parametersCopy = parameters;
  v23.receiver = self;
  v23.super_class = IDSTransportLevelAgentClientInfo;
  v11 = [(IDSTransportLevelAgentClientInfo *)&v23 init];
  if (v11)
  {
    v12 = objc_retainBlock(assignCopy);
    assign = v11->_assign;
    v11->_assign = v12;

    v14 = +[NSUUID UUID];
    clientUUID = v11->_clientUUID;
    v11->_clientUUID = v14;

    v16 = nw_agent_client_copy_path();
    path = v11->_path;
    v11->_path = v16;

    v18 = [[IDSGroupSessionConnectionParameters alloc] initWithStringRepresentation:parametersCopy];
    multiplexerParams = v11->_multiplexerParams;
    v11->_multiplexerParams = v18;

    v20 = nw_agent_client_copy_endpoint();
    endpoint = v11->_endpoint;
    v11->_endpoint = v20;
  }

  return v11;
}

@end