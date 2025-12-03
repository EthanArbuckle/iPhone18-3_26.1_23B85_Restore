@interface _DKCellNetworkingQualityMonitor
- (_DKCellNetworkingQualityMonitor)init;
@end

@implementation _DKCellNetworkingQualityMonitor

- (_DKCellNetworkingQualityMonitor)init
{
  keyPathForCellConnectionStatus = [MEMORY[0x277CFE388] keyPathForCellConnectionStatus];
  keyPathForCellConnectionQuality = [MEMORY[0x277CFE338] keyPathForCellConnectionQuality];
  keyPathForCellQualityPrediction = [MEMORY[0x277CFE328] keyPathForCellQualityPrediction];
  v6 = [MEMORY[0x277CFE358] keyPathWithKey:@"/system/cell/active"];
  v9.receiver = self;
  v9.super_class = _DKCellNetworkingQualityMonitor;
  v7 = [(_DKNetworkQualityMonitor *)&v9 initForInterfaceType:2 connectionStatusKeyPath:keyPathForCellConnectionStatus qualityKeyPath:keyPathForCellConnectionQuality predictedQualityKeyPath:keyPathForCellQualityPrediction discretionaryInvitedPath:v6];

  return v7;
}

@end