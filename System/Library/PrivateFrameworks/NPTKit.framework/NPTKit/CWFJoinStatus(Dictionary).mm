@interface CWFJoinStatus(Dictionary)
- (id)dictionary;
@end

@implementation CWFJoinStatus(Dictionary)

- (id)dictionary
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v3 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSSxxx"];
  v4 = [a1 UUID];
  v5 = [v4 UUIDString];
  [v2 setObject:v5 forKeyedSubscript:@"wifi_uuid"];

  v6 = [a1 interfaceName];
  [v2 setObject:v6 forKeyedSubscript:@"wifi_interface_name"];

  v7 = [a1 scanResult];
  v8 = [v7 networkName];
  [v2 setObject:v8 forKeyedSubscript:@"wifi_ssid"];

  v9 = [a1 startedAt];
  v10 = [v3 stringFromDate:v9];
  [v2 setObject:v10 forKeyedSubscript:@"wifi_join_started_at"];

  v11 = [a1 endedAt];
  v12 = [v3 stringFromDate:v11];
  [v2 setObject:v12 forKeyedSubscript:@"wifi_join_ended_at"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1, "isAutoJoin")}];
  [v2 setObject:v13 forKeyedSubscript:@"wifi_auto_join_invoked"];

  v14 = [a1 knownNetworkProfile];
  v15 = [v14 dictionary];
  [v2 setObject:v15 forKeyedSubscript:@"wifi_known_network_profile"];

  v16 = [a1 error];
  v17 = [v16 localizedDescription];
  [v2 setObject:v17 forKeyedSubscript:@"wifi_join_error"];

  v18 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v2];

  return v18;
}

@end