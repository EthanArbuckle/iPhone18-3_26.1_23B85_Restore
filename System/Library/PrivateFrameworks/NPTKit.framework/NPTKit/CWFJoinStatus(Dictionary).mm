@interface CWFJoinStatus(Dictionary)
- (id)dictionary;
@end

@implementation CWFJoinStatus(Dictionary)

- (id)dictionary
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v3 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSSxxx"];
  uUID = [self UUID];
  uUIDString = [uUID UUIDString];
  [v2 setObject:uUIDString forKeyedSubscript:@"wifi_uuid"];

  interfaceName = [self interfaceName];
  [v2 setObject:interfaceName forKeyedSubscript:@"wifi_interface_name"];

  scanResult = [self scanResult];
  networkName = [scanResult networkName];
  [v2 setObject:networkName forKeyedSubscript:@"wifi_ssid"];

  startedAt = [self startedAt];
  v10 = [v3 stringFromDate:startedAt];
  [v2 setObject:v10 forKeyedSubscript:@"wifi_join_started_at"];

  endedAt = [self endedAt];
  v12 = [v3 stringFromDate:endedAt];
  [v2 setObject:v12 forKeyedSubscript:@"wifi_join_ended_at"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(self, "isAutoJoin")}];
  [v2 setObject:v13 forKeyedSubscript:@"wifi_auto_join_invoked"];

  knownNetworkProfile = [self knownNetworkProfile];
  dictionary = [knownNetworkProfile dictionary];
  [v2 setObject:dictionary forKeyedSubscript:@"wifi_known_network_profile"];

  error = [self error];
  localizedDescription = [error localizedDescription];
  [v2 setObject:localizedDescription forKeyedSubscript:@"wifi_join_error"];

  v18 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v2];

  return v18;
}

@end