@interface CCUIContentModuleContainerClientDrivenTransition
- (id)customAnimator;
- (void)customAnimator;
@end

@implementation CCUIContentModuleContainerClientDrivenTransition

- (id)customAnimator
{
  viewController = [(CCUIContentModuleContainerTransition *)self viewController];
  contentViewController = [viewController contentViewController];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    [(CCUIContentModuleContainerClientDrivenTransition *)a2 customAnimator];
  }

  customAnimator = [contentViewController customAnimator];

  return customAnimator;
}

- (void)customAnimator
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"CCUIContentModuleContainerViewController.m" lineNumber:1484 description:@"How did we get here if the client doesn't implement the required method?"];
}

@end