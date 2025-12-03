@interface FMR1ProximityManager
- (void)applicationDidEnterBackground;
- (void)applicationWillEnterForeground;
@end

@implementation FMR1ProximityManager

- (void)applicationDidEnterBackground
{
  selfCopy = self;
  sub_24A57307C();
}

- (void)applicationWillEnterForeground
{
  selfCopy = self;
  sub_24A5730D4();
}

@end