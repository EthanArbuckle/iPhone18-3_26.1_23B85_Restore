@interface HUPreloadedTransitionController
- (HUPreloadedTransitionController)init;
- (void)animateTransition:(id)transition;
@end

@implementation HUPreloadedTransitionController

- (HUPreloadedTransitionController)init
{
  v6.receiver = self;
  v6.super_class = HUPreloadedTransitionController;
  v2 = [(HUPreloadedTransitionController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D2C900]);
    completionFuture = v2->_completionFuture;
    v2->_completionFuture = v3;
  }

  return v2;
}

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  v5 = [transitionCopy viewControllerForKey:*MEMORY[0x277D77240]];
  containerView = [transitionCopy containerView];
  completionFuture = [(HUPreloadedTransitionController *)self completionFuture];
  if ([v5 conformsToProtocol:&unk_28249D748])
  {
    v8 = _HUPreloadViewController(v5, 0, &__block_literal_global_39);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __53__HUPreloadedTransitionController_animateTransition___block_invoke_2;
    v11[3] = &unk_277DB7E40;
    v12 = containerView;
    v13 = v5;
    v14 = transitionCopy;
    v15 = completionFuture;
    v9 = [v8 addCompletionBlock:v11];
  }

  else
  {
    view = [v5 view];
    [containerView addSubview:view];

    [transitionCopy completeTransition:1];
    [completionFuture finishWithNoResult];
  }
}

void __53__HUPreloadedTransitionController_animateTransition___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a3;
  v9 = a2;
  v8 = [v6 view];
  [v5 addSubview:v8];

  [*(a1 + 48) completeTransition:v7 == 0];
  [*(a1 + 56) finishWithResult:v9 error:v7];
}

@end