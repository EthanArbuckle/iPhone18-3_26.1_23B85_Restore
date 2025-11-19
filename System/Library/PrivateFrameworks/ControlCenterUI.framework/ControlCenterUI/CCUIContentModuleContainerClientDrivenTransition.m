@interface CCUIContentModuleContainerClientDrivenTransition
- (id)customAnimator;
- (void)customAnimator;
@end

@implementation CCUIContentModuleContainerClientDrivenTransition

- (id)customAnimator
{
  v4 = [(CCUIContentModuleContainerTransition *)self viewController];
  v5 = [v4 contentViewController];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    [(CCUIContentModuleContainerClientDrivenTransition *)a2 customAnimator];
  }

  v6 = [v5 customAnimator];

  return v6;
}

- (void)customAnimator
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CCUIContentModuleContainerViewController.m" lineNumber:1484 description:@"How did we get here if the client doesn't implement the required method?"];
}

@end