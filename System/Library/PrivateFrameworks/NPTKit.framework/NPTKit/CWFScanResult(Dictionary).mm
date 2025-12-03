@interface CWFScanResult(Dictionary)
- (id)dictionary;
@end

@implementation CWFScanResult(Dictionary)

- (id)dictionary
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  networkName = [self networkName];
  [v2 setObject:networkName forKeyedSubscript:@"wifi_ssid"];

  bSSID = [self BSSID];
  [v2 setObject:bSSID forKeyedSubscript:@"wifi_bssid"];

  v5 = MEMORY[0x277CCABB0];
  channel = [self channel];
  v7 = [v5 numberWithUnsignedInteger:{objc_msgSend(channel, "channel")}];
  [v2 setObject:v7 forKeyedSubscript:@"wifi_channel"];

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(self, "RSSI")}];
  [v2 setObject:v8 forKeyedSubscript:@"wifi_rssi"];

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(self, "noise")}];
  [v2 setObject:v9 forKeyedSubscript:@"wifi_noise"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(self, "isInternetAccessible")}];
  [v2 setObject:v10 forKeyedSubscript:@"wifi_is_internet_accessible"];

  primaryMAC = [self primaryMAC];
  [v2 setObject:primaryMAC forKeyedSubscript:@"wifi_primary_mac"];

  scanRecord = [self scanRecord];
  v13 = [scanRecord objectForKeyedSubscript:@"SCAN_BSSID_LIST"];
  [v2 setObject:v13 forKeyedSubscript:@"wifi_scan_bssid_list"];

  scanRecord2 = [self scanRecord];
  v15 = [scanRecord2 objectForKeyedSubscript:@"ScaledRSSI"];
  [v2 setObject:v15 forKeyedSubscript:@"wifi_scaled_rssi"];

  scanRecord3 = [self scanRecord];
  v17 = [scanRecord3 objectForKeyedSubscript:@"SNR"];
  [v2 setObject:v17 forKeyedSubscript:@"wifi_snr"];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(self, "strongestSupportedSecurityType")}];
  [v2 setObject:v18 forKeyedSubscript:@"wifi_strongest_supported_security_type"];

  v19 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(self, "isAppleSWAP")}];
  [v2 setObject:v19 forKeyedSubscript:@"wifi_is_apple_swap"];

  v20 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v2];

  return v20;
}

@end