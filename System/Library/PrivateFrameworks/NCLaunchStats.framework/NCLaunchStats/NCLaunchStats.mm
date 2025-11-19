@interface NCLaunchStats
- (void)dealloc;
@end

@implementation NCLaunchStats

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = NCLaunchStats;
  [(NCLaunchStats *)&v2 dealloc];
}

@end