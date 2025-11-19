@interface SUUICountdownViewTimerTarget
- (void)action;
@end

@implementation SUUICountdownViewTimerTarget

- (void)action
{
  v2 = [(SUUICountdownViewTimerTarget *)self actionBlock];
  v2[2]();
}

@end