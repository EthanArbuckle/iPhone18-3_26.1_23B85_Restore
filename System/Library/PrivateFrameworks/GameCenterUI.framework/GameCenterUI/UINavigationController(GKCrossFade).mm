@interface UINavigationController(GKCrossFade)
- (void)_gkReplaceTopViewControllerWithViewController:()GKCrossFade transition:;
- (void)_gkSetViewControllers:()GKCrossFade transition:;
@end

@implementation UINavigationController(GKCrossFade)

- (void)_gkReplaceTopViewControllerWithViewController:()GKCrossFade transition:
{
  v6 = a4;
  v7 = a3;
  viewControllers = [self viewControllers];
  v9 = [viewControllers mutableCopy];

  [v9 removeLastObject];
  [v9 addObject:v7];

  [self _gkSetViewControllers:v9 transition:v6];
}

- (void)_gkSetViewControllers:()GKCrossFade transition:
{
  v13 = a3;
  v6 = a4;
  topViewController = [self topViewController];
  lastObject = [v13 lastObject];

  if (topViewController == lastObject)
  {
    [self setViewControllers:v13 animated:0];
  }

  else
  {
    animation = [MEMORY[0x277CDA000] animation];
    [animation setDuration:0.300000012];
    v10 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
    [animation setTimingFunction:v10];

    [animation setType:v6];
    view = [self view];
    layer = [view layer];
    [layer addAnimation:animation forKey:0];

    [self setViewControllers:v13 animated:0];
  }
}

@end