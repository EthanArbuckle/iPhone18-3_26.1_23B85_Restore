@interface IDSNexusAgent
+ (id)agentFromData:(id)data;
- (BOOL)assertAgentWithOptions:(id)options;
- (BOOL)requestNexusWithOptions:(id)options;
- (BOOL)startAgentWithOptions:(id)options;
- (NSString)agentDescription;
- (id)copyAgentData;
- (void)closeNexusWithOptions:(id)options;
- (void)unassertAgentWithOptions:(id)options;
@end

@implementation IDSNexusAgent

+ (id)agentFromData:(id)data
{
  v3 = objc_alloc_init(IDSNexusAgent);

  return v3;
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
  v3 = 4;
  DWORD1(v4) = 2;
  [NSData dataWithBytes:&v3 length:204];
  return objc_claimAutoreleasedReturnValue();
}

- (NSString)agentDescription
{
  agentDomain = [objc_opt_class() agentDomain];
  agentType = [objc_opt_class() agentType];
  v4 = [NSString stringWithFormat:@"IDSNexusAgent %@ : %@", agentDomain, agentType];

  return v4;
}

- (BOOL)requestNexusWithOptions:(id)options
{
  v3 = [options objectForKeyedSubscript:NWNetworkAgentStartOptionClientUUID];
  v4 = +[IDSFoundationLog ClientChannelAgent];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Client requested nexus: %@\n", &v8, 0xCu);
  }

  v5 = +[IDSClientChannelManager sharedInstance];
  v6 = [v5 addClient:v3];

  return v6;
}

- (void)closeNexusWithOptions:(id)options
{
  v3 = [options objectForKeyedSubscript:NWNetworkAgentStartOptionClientUUID];
  v4 = +[IDSFoundationLog ClientChannelAgent];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Client closed nexus: %@\n", &v6, 0xCu);
  }

  v5 = +[IDSClientChannelManager sharedInstance];
  [v5 removeClient:v3];
}

- (BOOL)startAgentWithOptions:(id)options
{
  v3 = [options objectForKeyedSubscript:NWNetworkAgentStartOptionClientUUID];
  v4 = +[IDSFoundationLog ClientChannelAgent];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Client triggered agent: %@\n", &v6, 0xCu);
  }

  return 1;
}

- (BOOL)assertAgentWithOptions:(id)options
{
  v3 = [options objectForKeyedSubscript:NWNetworkAgentStartOptionClientUUID];
  v4 = +[IDSFoundationLog ClientChannelAgent];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Client asserted agent: %@\n", &v6, 0xCu);
  }

  return 1;
}

- (void)unassertAgentWithOptions:(id)options
{
  v3 = [options objectForKeyedSubscript:NWNetworkAgentStartOptionClientUUID];
  v4 = +[IDSFoundationLog ClientChannelAgent];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Client unasserted agent: %@\n", &v5, 0xCu);
  }
}

@end