@interface CSLPRFMutableDepthAutoLaunchSettings
- (id)copyWithZone:(_NSZone *)a3;
- (void)setAutoLaunchBehavior:(int64_t)a3;
- (void)setBundleID:(id)a3;
- (void)setThreshold:(int64_t)a3;
@end

@implementation CSLPRFMutableDepthAutoLaunchSettings

- (void)setThreshold:(int64_t)a3
{
  if (a3 >= 2)
  {
    v4 = MEMORY[0x277CBEAD8];
    v5 = *MEMORY[0x277CBE660];
    v6 = NSStringFromCSLPRFDepthAutoLaunchThreshold(a3);
    [v4 raise:v5 format:{@"Invalid threshold: %@", v6}];
  }

  else
  {
    self->super._threshold = a3;
  }
}

- (void)setBundleID:(id)a3
{
  v4 = [a3 copy];
  bundleID = self->super._bundleID;
  self->super._bundleID = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setAutoLaunchBehavior:(int64_t)a3
{
  if (a3 >= 3)
  {
    v4 = MEMORY[0x277CBEAD8];
    v5 = *MEMORY[0x277CBE660];
    v6 = NSStringFromCSLPRFDepthAutoLaunchBehavior(a3);
    [v4 raise:v5 format:{@"Invalid behavior: %@", v6}];
  }

  else
  {
    self->super._autoLaunchBehavior = a3;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CSLPRFDepthAutoLaunchSettings alloc];

  return [(CSLPRFDepthAutoLaunchSettings *)v4 initWithSettings:self];
}

@end