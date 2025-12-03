@interface LatencySaturationDetection
- (LatencySaturationDetection)initWithConfig:(id)config;
@end

@implementation LatencySaturationDetection

- (LatencySaturationDetection)initWithConfig:(id)config
{
  v7.receiver = self;
  v7.super_class = LatencySaturationDetection;
  LODWORD(v3) = 1.0;
  v4 = [(SaturationDetection *)&v7 initWithConfig:config withScalingFactor:v3];
  name = v4->super.name;
  v4->super.name = @"Latency";

  return v4;
}

@end