@interface LatencySaturationDetection
- (LatencySaturationDetection)initWithConfig:(id)a3;
@end

@implementation LatencySaturationDetection

- (LatencySaturationDetection)initWithConfig:(id)a3
{
  v7.receiver = self;
  v7.super_class = LatencySaturationDetection;
  LODWORD(v3) = 1.0;
  v4 = [(SaturationDetection *)&v7 initWithConfig:a3 withScalingFactor:v3];
  name = v4->super.name;
  v4->super.name = @"Latency";

  return v4;
}

@end