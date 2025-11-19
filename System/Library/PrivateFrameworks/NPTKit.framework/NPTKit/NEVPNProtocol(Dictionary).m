@interface NEVPNProtocol(Dictionary)
- (id)dictionary;
@end

@implementation NEVPNProtocol(Dictionary)

- (id)dictionary
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = [a1 serverAddress];
  [v2 setObject:v3 forKeyedSubscript:@"vpn_server_address"];

  v4 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1, "disconnectOnSleep")}];
  [v2 setObject:v4 forKeyedSubscript:@"vpn_disconnect_on_sleep"];

  v5 = MEMORY[0x277CCABB0];
  v6 = [a1 proxySettings];
  v7 = [v5 numberWithBool:{objc_msgSend(v6, "autoProxyConfigurationEnabled")}];
  [v2 setObject:v7 forKeyedSubscript:@"vpn_protocol_proxy_auto_config_enabled"];

  v8 = MEMORY[0x277CCABB0];
  v9 = [a1 proxySettings];
  v10 = [v8 numberWithBool:{objc_msgSend(v9, "HTTPEnabled")}];
  [v2 setObject:v10 forKeyedSubscript:@"vpn_protocol_proxy_static_http_enabled"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1, "includeAllNetworks")}];
  [v2 setObject:v11 forKeyedSubscript:@"vpn_include_all_networks"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1, "excludeLocalNetworks")}];
  [v2 setObject:v12 forKeyedSubscript:@"vpn_exclude_all_networks"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1, "enforceRoutes")}];
  [v2 setObject:v13 forKeyedSubscript:@"vpn_enforce_routes"];

  v14 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v2];

  return v14;
}

@end