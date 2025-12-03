@interface CWFRoamStatus(Dictionary)
- (id)dictionary;
@end

@implementation CWFRoamStatus(Dictionary)

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

  startedAt = [self startedAt];
  v8 = [v3 stringFromDate:startedAt];
  [v2 setObject:v8 forKeyedSubscript:@"wifi_roam_started_at"];

  endedAt = [self endedAt];
  v10 = [v3 stringFromDate:endedAt];
  [v2 setObject:v10 forKeyedSubscript:@"wifi_roam_ended_at"];

  networkName = [self networkName];
  [v2 setObject:networkName forKeyedSubscript:@"wifi_ssid"];

  fromBSSID = [self fromBSSID];
  [v2 setObject:fromBSSID forKeyedSubscript:@"wifi_roam_from_bssid"];

  toBSSID = [self toBSSID];
  [v2 setObject:toBSSID forKeyedSubscript:@"wifi_roam_to_bssid"];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(self, "reason")}];
  [v2 setObject:v14 forKeyedSubscript:@"wifi_roam_reason"];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(self, "fromChannel")}];
  [v2 setObject:v15 forKeyedSubscript:@"wifi_roam_from_channel"];

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(self, "toChannel")}];
  [v2 setObject:v16 forKeyedSubscript:@"wifi_roam_to_channel"];

  v17 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(self, "fromRSSI")}];
  [v2 setObject:v17 forKeyedSubscript:@"wifi_roam_from_rssi"];

  v18 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(self, "toRSSI")}];
  [v2 setObject:v18 forKeyedSubscript:@"wifi_roam_to_rssi"];

  v19 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v2];

  return v19;
}

@end