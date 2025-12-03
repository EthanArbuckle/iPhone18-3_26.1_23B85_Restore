@interface CALayer(ClipServicesUIExtras)
- (uint64_t)cps_pauseAnimations;
- (uint64_t)cps_resumeAnimations;
@end

@implementation CALayer(ClipServicesUIExtras)

- (uint64_t)cps_pauseAnimations
{
  result = [self speed];
  if (v3 != 0.0)
  {
    [self convertTime:0 fromLayer:CACurrentMediaTime()];
    v5 = v4;
    [self setSpeed:0.0];

    return [self setTimeOffset:v5];
  }

  return result;
}

- (uint64_t)cps_resumeAnimations
{
  result = [self speed];
  if (v3 <= 0.0)
  {
    [self timeOffset];
    v5 = v4;
    [self setTimeOffset:0.0];
    [self setBeginTime:0.0];
    LODWORD(v6) = 1.0;
    [self setSpeed:v6];
    [self convertTime:0 fromLayer:CACurrentMediaTime()];
    v8 = v7 - v5;

    return [self setBeginTime:v8];
  }

  return result;
}

@end