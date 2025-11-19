@interface CALayer(ClipServicesUIExtras)
- (uint64_t)cps_pauseAnimations;
- (uint64_t)cps_resumeAnimations;
@end

@implementation CALayer(ClipServicesUIExtras)

- (uint64_t)cps_pauseAnimations
{
  result = [a1 speed];
  if (v3 != 0.0)
  {
    [a1 convertTime:0 fromLayer:CACurrentMediaTime()];
    v5 = v4;
    [a1 setSpeed:0.0];

    return [a1 setTimeOffset:v5];
  }

  return result;
}

- (uint64_t)cps_resumeAnimations
{
  result = [a1 speed];
  if (v3 <= 0.0)
  {
    [a1 timeOffset];
    v5 = v4;
    [a1 setTimeOffset:0.0];
    [a1 setBeginTime:0.0];
    LODWORD(v6) = 1.0;
    [a1 setSpeed:v6];
    [a1 convertTime:0 fromLayer:CACurrentMediaTime()];
    v8 = v7 - v5;

    return [a1 setBeginTime:v8];
  }

  return result;
}

@end