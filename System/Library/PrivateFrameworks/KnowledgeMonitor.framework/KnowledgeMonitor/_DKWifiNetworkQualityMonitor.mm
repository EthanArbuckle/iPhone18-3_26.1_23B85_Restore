@interface _DKWifiNetworkQualityMonitor
- (_DKWifiNetworkQualityMonitor)init;
@end

@implementation _DKWifiNetworkQualityMonitor

- (_DKWifiNetworkQualityMonitor)init
{
  keyPathForWiFiConnectionStatus = [MEMORY[0x277CFE388] keyPathForWiFiConnectionStatus];
  keyPathForWiFiConnectionQuality = [MEMORY[0x277CFE338] keyPathForWiFiConnectionQuality];
  keyPathForWiFiQualityPrediction = [MEMORY[0x277CFE328] keyPathForWiFiQualityPrediction];
  v6 = [MEMORY[0x277CFE358] keyPathWithKey:@"/system/wifi/active"];
  v9.receiver = self;
  v9.super_class = _DKWifiNetworkQualityMonitor;
  v7 = [(_DKNetworkQualityMonitor *)&v9 initForInterfaceType:1 connectionStatusKeyPath:keyPathForWiFiConnectionStatus qualityKeyPath:keyPathForWiFiConnectionQuality predictedQualityKeyPath:keyPathForWiFiQualityPrediction discretionaryInvitedPath:v6];

  return v7;
}

@end