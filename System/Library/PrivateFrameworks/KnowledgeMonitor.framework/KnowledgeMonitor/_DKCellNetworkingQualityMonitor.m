@interface _DKCellNetworkingQualityMonitor
- (_DKCellNetworkingQualityMonitor)init;
@end

@implementation _DKCellNetworkingQualityMonitor

- (_DKCellNetworkingQualityMonitor)init
{
  v3 = [MEMORY[0x277CFE388] keyPathForCellConnectionStatus];
  v4 = [MEMORY[0x277CFE338] keyPathForCellConnectionQuality];
  v5 = [MEMORY[0x277CFE328] keyPathForCellQualityPrediction];
  v6 = [MEMORY[0x277CFE358] keyPathWithKey:@"/system/cell/active"];
  v9.receiver = self;
  v9.super_class = _DKCellNetworkingQualityMonitor;
  v7 = [(_DKNetworkQualityMonitor *)&v9 initForInterfaceType:2 connectionStatusKeyPath:v3 qualityKeyPath:v4 predictedQualityKeyPath:v5 discretionaryInvitedPath:v6];

  return v7;
}

@end