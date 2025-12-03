@interface NEVPNProtocol(Dictionary)
- (id)dictionary;
@end

@implementation NEVPNProtocol(Dictionary)

- (id)dictionary
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  serverAddress = [self serverAddress];
  [v2 setObject:serverAddress forKeyedSubscript:@"vpn_server_address"];

  v4 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(self, "disconnectOnSleep")}];
  [v2 setObject:v4 forKeyedSubscript:@"vpn_disconnect_on_sleep"];

  v5 = MEMORY[0x277CCABB0];
  proxySettings = [self proxySettings];
  v7 = [v5 numberWithBool:{objc_msgSend(proxySettings, "autoProxyConfigurationEnabled")}];
  [v2 setObject:v7 forKeyedSubscript:@"vpn_protocol_proxy_auto_config_enabled"];

  v8 = MEMORY[0x277CCABB0];
  proxySettings2 = [self proxySettings];
  v10 = [v8 numberWithBool:{objc_msgSend(proxySettings2, "HTTPEnabled")}];
  [v2 setObject:v10 forKeyedSubscript:@"vpn_protocol_proxy_static_http_enabled"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(self, "includeAllNetworks")}];
  [v2 setObject:v11 forKeyedSubscript:@"vpn_include_all_networks"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(self, "excludeLocalNetworks")}];
  [v2 setObject:v12 forKeyedSubscript:@"vpn_exclude_all_networks"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(self, "enforceRoutes")}];
  [v2 setObject:v13 forKeyedSubscript:@"vpn_enforce_routes"];

  v14 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v2];

  return v14;
}

@end