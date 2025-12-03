@interface SUUICountdownViewTimerTarget
- (void)action;
@end

@implementation SUUICountdownViewTimerTarget

- (void)action
{
  actionBlock = [(SUUICountdownViewTimerTarget *)self actionBlock];
  actionBlock[2]();
}

@end