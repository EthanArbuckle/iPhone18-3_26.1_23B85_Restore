@interface _DKWifiNetworkQualityMonitor
- (_DKWifiNetworkQualityMonitor)init;
@end

@implementation _DKWifiNetworkQualityMonitor

- (_DKWifiNetworkQualityMonitor)init
{
  v3 = [MEMORY[0x277CFE388] keyPathForWiFiConnectionStatus];
  v4 = [MEMORY[0x277CFE338] keyPathForWiFiConnectionQuality];
  v5 = [MEMORY[0x277CFE328] keyPathForWiFiQualityPrediction];
  v6 = [MEMORY[0x277CFE358] keyPathWithKey:@"/system/wifi/active"];
  v9.receiver = self;
  v9.super_class = _DKWifiNetworkQualityMonitor;
  v7 = [(_DKNetworkQualityMonitor *)&v9 initForInterfaceType:1 connectionStatusKeyPath:v3 qualityKeyPath:v4 predictedQualityKeyPath:v5 discretionaryInvitedPath:v6];

  return v7;
}

@end