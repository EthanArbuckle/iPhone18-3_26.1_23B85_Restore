@interface UINavigationController(GKCrossFade)
- (void)_gkReplaceTopViewControllerWithViewController:()GKCrossFade transition:;
- (void)_gkSetViewControllers:()GKCrossFade transition:;
@end

@implementation UINavigationController(GKCrossFade)

- (void)_gkReplaceTopViewControllerWithViewController:()GKCrossFade transition:
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 viewControllers];
  v9 = [v8 mutableCopy];

  [v9 removeLastObject];
  [v9 addObject:v7];

  [a1 _gkSetViewControllers:v9 transition:v6];
}

- (void)_gkSetViewControllers:()GKCrossFade transition:
{
  v13 = a3;
  v6 = a4;
  v7 = [a1 topViewController];
  v8 = [v13 lastObject];

  if (v7 == v8)
  {
    [a1 setViewControllers:v13 animated:0];
  }

  else
  {
    v9 = [MEMORY[0x277CDA000] animation];
    [v9 setDuration:0.300000012];
    v10 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
    [v9 setTimingFunction:v10];

    [v9 setType:v6];
    v11 = [a1 view];
    v12 = [v11 layer];
    [v12 addAnimation:v9 forKey:0];

    [a1 setViewControllers:v13 animated:0];
  }
}

@end