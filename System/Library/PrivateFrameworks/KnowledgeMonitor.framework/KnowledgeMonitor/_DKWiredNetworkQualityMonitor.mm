@interface _DKWiredNetworkQualityMonitor
- (_DKWiredNetworkQualityMonitor)init;
@end

@implementation _DKWiredNetworkQualityMonitor

- (_DKWiredNetworkQualityMonitor)init
{
  keyPathForWiredConnectionStatus = [MEMORY[0x277CFE388] keyPathForWiredConnectionStatus];
  keyPathForWiredConnectionQuality = [MEMORY[0x277CFE338] keyPathForWiredConnectionQuality];
  v7.receiver = self;
  v7.super_class = _DKWiredNetworkQualityMonitor;
  v5 = [(_DKNetworkQualityMonitor *)&v7 initForInterfaceType:3 connectionStatusKeyPath:keyPathForWiredConnectionStatus qualityKeyPath:keyPathForWiredConnectionQuality predictedQualityKeyPath:0 discretionaryInvitedPath:0];

  return v5;
}

@end