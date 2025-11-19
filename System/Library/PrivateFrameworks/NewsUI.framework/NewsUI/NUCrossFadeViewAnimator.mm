@interface NUCrossFadeViewAnimator
- (NUCrossFadeViewAnimator)init;
- (void)animateView:(id)a3 toEmptyStateWithCompletion:(id)a4;
- (void)animateView:(id)a3 toValue:(id)a4 completion:(id)a5;
- (void)crossFadeFromView:(id)a3 toView:(id)a4 value:(id)a5 completion:(id)a6;
- (void)resetView:(id)a3;
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

- (void)crossFadeFromView:(id)a3 toView:(id)a4 value:(id)a5 completion:(id)a6
{
  v13 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (v11)
  {
    if (v13 && v13 != v10)
    {
      [NUCrossFadeViewAnimator animateView:"animateView:toEmptyStateWithCompletion:" toEmptyStateWithCompletion:?];
    }

    [(NUCrossFadeViewAnimator *)self animateView:v10 toValue:v11 completion:v12];
  }

  else
  {
    [(NUCrossFadeViewAnimator *)self animateView:v10 toEmptyStateWithCompletion:v12];
  }
}

- (void)resetView:(id)a3
{
  v3 = [a3 layer];
  [v3 removeAllAnimations];
}

- (void)animateView:(id)a3 toValue:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[NUTransition animation];
  [v11 setType:*MEMORY[0x277CDA928]];
  [(NUCrossFadeViewAnimator *)self duration];
  [v11 setDuration:?];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __58__NUCrossFadeViewAnimator_animateView_toValue_completion___block_invoke;
  v15[3] = &unk_2799A3C58;
  v16 = v8;
  v12 = v8;
  [v11 setCompletion:v15];
  v13 = [v10 layer];
  [v13 removeAllAnimations];

  v14 = [v10 layer];
  [v14 addAnimation:v11 forKey:@"crossfade"];

  [v10 nu_crossFadeViewSetValue:v9];
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

- (void)animateView:(id)a3 toEmptyStateWithCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v16 = v6;
  v17 = v7;
  v9 = v7;
  v10 = v6;
  [v8 setCompletion:&v12];
  v11 = [v10 layer];
  [v11 addAnimation:v8 forKey:@"opacity"];
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