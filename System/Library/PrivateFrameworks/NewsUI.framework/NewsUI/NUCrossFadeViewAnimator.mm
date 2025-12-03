@interface NUCrossFadeViewAnimator
- (NUCrossFadeViewAnimator)init;
- (void)animateView:(id)view toEmptyStateWithCompletion:(id)completion;
- (void)animateView:(id)view toValue:(id)value completion:(id)completion;
- (void)crossFadeFromView:(id)view toView:(id)toView value:(id)value completion:(id)completion;
- (void)resetView:(id)view;
@end

@implementation NUCrossFadeViewAnimator

- (NUCrossFadeViewAnimator)init
{
  v3.receiver = self;
  v3.super_class = NUCrossFadeViewAnimator;
  result = [(NUCrossFadeViewAnimator *)&v3 init];
  if (result)
  {
    result->_duration = 0.15;
  }

  return result;
}

- (void)crossFadeFromView:(id)view toView:(id)toView value:(id)value completion:(id)completion
{
  viewCopy = view;
  toViewCopy = toView;
  valueCopy = value;
  completionCopy = completion;
  if (valueCopy)
  {
    if (viewCopy && viewCopy != toViewCopy)
    {
      [NUCrossFadeViewAnimator animateView:"animateView:toEmptyStateWithCompletion:" toEmptyStateWithCompletion:?];
    }

    [(NUCrossFadeViewAnimator *)self animateView:toViewCopy toValue:valueCopy completion:completionCopy];
  }

  else
  {
    [(NUCrossFadeViewAnimator *)self animateView:toViewCopy toEmptyStateWithCompletion:completionCopy];
  }
}

- (void)resetView:(id)view
{
  layer = [view layer];
  [layer removeAllAnimations];
}

- (void)animateView:(id)view toValue:(id)value completion:(id)completion
{
  completionCopy = completion;
  valueCopy = value;
  viewCopy = view;
  v11 = +[NUTransition animation];
  [v11 setType:*MEMORY[0x277CDA928]];
  [(NUCrossFadeViewAnimator *)self duration];
  [v11 setDuration:?];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __58__NUCrossFadeViewAnimator_animateView_toValue_completion___block_invoke;
  v15[3] = &unk_2799A3C58;
  v16 = completionCopy;
  v12 = completionCopy;
  [v11 setCompletion:v15];
  layer = [viewCopy layer];
  [layer removeAllAnimations];

  layer2 = [viewCopy layer];
  [layer2 addAnimation:v11 forKey:@"crossfade"];

  [viewCopy nu_crossFadeViewSetValue:valueCopy];
}

uint64_t __58__NUCrossFadeViewAnimator_animateView_toValue_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)animateView:(id)view toEmptyStateWithCompletion:(id)completion
{
  viewCopy = view;
  completionCopy = completion;
  v8 = [NUBasicAnimation animationWithKeyPath:@"opacity"];
  [v8 setFromValue:&unk_286E12DF8];
  [v8 setToValue:&unk_286E12E08];
  [(NUCrossFadeViewAnimator *)self duration];
  [v8 setDuration:?];
  [v8 setRemovedOnCompletion:0];
  [v8 setFillMode:*MEMORY[0x277CDA238]];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __66__NUCrossFadeViewAnimator_animateView_toEmptyStateWithCompletion___block_invoke;
  v15 = &unk_2799A3C80;
  v16 = viewCopy;
  v17 = completionCopy;
  v9 = completionCopy;
  v10 = viewCopy;
  [v8 setCompletion:&v12];
  layer = [v10 layer];
  [layer addAnimation:v8 forKey:@"opacity"];
}

uint64_t __66__NUCrossFadeViewAnimator_animateView_toEmptyStateWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) nu_crossFadeViewClearVisibleState];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

@end