@interface CSLPRFMutableDepthAutoLaunchSettings
- (id)copyWithZone:(_NSZone *)zone;
- (void)setAutoLaunchBehavior:(int64_t)behavior;
- (void)setBundleID:(id)d;
- (void)setThreshold:(int64_t)threshold;
@end

@implementation CSLPRFMutableDepthAutoLaunchSettings

- (void)setThreshold:(int64_t)threshold
{
  if (threshold >= 2)
  {
    v4 = MEMORY[0x277CBEAD8];
    v5 = *MEMORY[0x277CBE660];
    v6 = NSStringFromCSLPRFDepthAutoLaunchThreshold(threshold);
    [v4 raise:v5 format:{@"Invalid threshold: %@", v6}];
  }

  else
  {
    self->super._threshold = threshold;
  }
}

- (void)setBundleID:(id)d
{
  v4 = [d copy];
  bundleID = self->super._bundleID;
  self->super._bundleID = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setAutoLaunchBehavior:(int64_t)behavior
{
  if (behavior >= 3)
  {
    v4 = MEMORY[0x277CBEAD8];
    v5 = *MEMORY[0x277CBE660];
    v6 = NSStringFromCSLPRFDepthAutoLaunchBehavior(behavior);
    [v4 raise:v5 format:{@"Invalid behavior: %@", v6}];
  }

  else
  {
    self->super._autoLaunchBehavior = behavior;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CSLPRFDepthAutoLaunchSettings alloc];

  return [(CSLPRFDepthAutoLaunchSettings *)v4 initWithSettings:self];
}

@end