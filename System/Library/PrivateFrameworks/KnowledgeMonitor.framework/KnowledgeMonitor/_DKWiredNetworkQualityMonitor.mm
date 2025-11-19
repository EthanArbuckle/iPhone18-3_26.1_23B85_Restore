@interface _DKWiredNetworkQualityMonitor
- (_DKWiredNetworkQualityMonitor)init;
@end

@implementation _DKWiredNetworkQualityMonitor

- (_DKWiredNetworkQualityMonitor)init
{
  v3 = [MEMORY[0x277CFE388] keyPathForWiredConnectionStatus];
  v4 = [MEMORY[0x277CFE338] keyPathForWiredConnectionQuality];
  v7.receiver = self;
  v7.super_class = _DKWiredNetworkQualityMonitor;
  v5 = [(_DKNetworkQualityMonitor *)&v7 initForInterfaceType:3 connectionStatusKeyPath:v3 qualityKeyPath:v4 predictedQualityKeyPath:0 discretionaryInvitedPath:0];

  return v5;
}

@end