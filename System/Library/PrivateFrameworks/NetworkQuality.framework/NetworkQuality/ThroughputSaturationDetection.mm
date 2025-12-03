@interface ThroughputSaturationDetection
- (ThroughputSaturationDetection)initWithConfig:(id)config;
@end

@implementation ThroughputSaturationDetection

- (ThroughputSaturationDetection)initWithConfig:(id)config
{
  v7.receiver = self;
  v7.super_class = ThroughputSaturationDetection;
  LODWORD(v3) = 1233125376;
  v4 = [(SaturationDetection *)&v7 initWithConfig:config withScalingFactor:v3];
  name = v4->super.name;
  v4->super.name = @"Throughput";

  return v4;
}

@end