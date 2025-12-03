@interface CWFLinkQualityMetric(Dictionary)
- (id)dictionary;
@end

@implementation CWFLinkQualityMetric(Dictionary)

- (id)dictionary
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  linkQualityMetricData = [self linkQualityMetricData];
  bytes = [linkQualityMetricData bytes];

  if (bytes)
  {
    v5 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v5 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSSxxx"];
    updatedAt = [self updatedAt];
    v7 = [v5 stringFromDate:updatedAt];
    [v2 setObject:v7 forKeyedSubscript:@"wifi_updated_at"];

    v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(self, "RSSI")}];
    [v2 setObject:v8 forKeyedSubscript:@"wifi_rssi"];

    v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(self, "noise")}];
    [v2 setObject:v9 forKeyedSubscript:@"wifi_noise"];

    v10 = MEMORY[0x277CCABB0];
    [self txRate];
    v11 = [v10 numberWithDouble:?];
    [v2 setObject:v11 forKeyedSubscript:@"wifi_tx_rate"];

    v12 = MEMORY[0x277CCABB0];
    [self rxRate];
    v13 = [v12 numberWithDouble:?];
    [v2 setObject:v13 forKeyedSubscript:@"wifi_rx_rate"];

    if (*(bytes + 11))
    {
      v14 = [MEMORY[0x277CCABB0] numberWithShort:*(bytes + 12)];
      [v2 setObject:v14 forKeyedSubscript:@"wifi_snr"];
    }

    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(bytes + 20)];
    [v2 setObject:v15 forKeyedSubscript:@"wifi_tx_fail"];

    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(bytes + 24)];
    [v2 setObject:v16 forKeyedSubscript:@"wifi_tx_retrans"];

    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(bytes + 28)];
    [v2 setObject:v17 forKeyedSubscript:@"wifi_tx_frames"];

    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(bytes + 32)];
    [v2 setObject:v18 forKeyedSubscript:@"wifi_rx_retry_frames"];

    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(bytes + 36)];
    [v2 setObject:v19 forKeyedSubscript:@"wifi_rx_frames"];

    if (*(bytes + 48))
    {
      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(bytes + 40)];
      [v2 setObject:v20 forKeyedSubscript:@"wifi_beacon_recv"];

      v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(bytes + 44)];
      [v2 setObject:v21 forKeyedSubscript:@"wifi_beacon_sched"];
    }

    if (*(bytes + 49))
    {
      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(bytes + 52)];
      [v2 setObject:v22 forKeyedSubscript:@"wifi_tx_fw_fail"];

      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(bytes + 56)];
      [v2 setObject:v23 forKeyedSubscript:@"wifi_tx_fw_retrans"];

      v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(bytes + 60)];
      [v2 setObject:v24 forKeyedSubscript:@"wifi_tx_fw_frames"];
    }

    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(bytes + 68)];
    [v2 setObject:v25 forKeyedSubscript:@"wifi_tx_fallback_rate"];

    bytes = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v2];
  }

  return bytes;
}

@end