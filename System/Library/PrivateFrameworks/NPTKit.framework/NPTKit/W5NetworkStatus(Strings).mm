@interface W5NetworkStatus(Strings)
- (id)dictionary;
@end

@implementation W5NetworkStatus(Strings)

- (id)dictionary
{
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(self, "isAppleReachableBool")}];
  [v2 setObject:v3 forKeyedSubscript:@"network_is_apple_reachable"];

  primaryIPv4InterfaceName = [self primaryIPv4InterfaceName];
  [v2 setObject:primaryIPv4InterfaceName forKeyedSubscript:@"network_primary_ipv4_interface_name"];

  primaryIPv4ServiceName = [self primaryIPv4ServiceName];
  [v2 setObject:primaryIPv4ServiceName forKeyedSubscript:@"network_primary_ipv4_service_name"];

  primaryIPv6InterfaceName = [self primaryIPv6InterfaceName];
  [v2 setObject:primaryIPv6InterfaceName forKeyedSubscript:@"network_primary_ipv6_interface_name"];

  primaryIPv6ServiceName = [self primaryIPv6ServiceName];
  [v2 setObject:primaryIPv6ServiceName forKeyedSubscript:@"network_primary_ipv6_service_name"];

  v8 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v2];

  return v8;
}

@end