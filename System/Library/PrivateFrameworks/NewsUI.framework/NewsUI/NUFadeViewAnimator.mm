@interface NUFadeViewAnimator
- (NUFadeViewAnimator)init;
- (void)fadeFromView:(id)view toView:(id)toView completion:(id)completion;
@end

@implementation NUFadeViewAnimator

- (NUFadeViewAnimator)init
{
  v3.receiver = self;
  v3.super_class = NUFadeViewAnimator;
  result = [(NUFadeViewAnimator *)&v3 init];
  if (result)
  {
    *&result->_fadeOutDuration = vdupq_n_s64(0x3FC70A3D70A3D70AuLL);
    result->_fadeInDelay = 0.15;
  }

  return result;
}

- (void)fadeFromView:(id)view toView:(id)toView completion:(id)completion
{
  viewCopy = view;
  toViewCopy = toView;
  completionCopy = completion;
  [MEMORY[0x277CCACC8] isMainThread];
  if (viewCopy)
  {
    v11 = MEMORY[0x277D75D18];
    [(NUFadeViewAnimator *)self fadeOutDuration];
    v13 = v12;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __53__NUFadeViewAnimator_fadeFromView_toView_completion___block_invoke;
    v25[3] = &unk_2799A3498;
    v26 = viewCopy;
    [v11 animateWithDuration:0 delay:v25 options:&__block_literal_global_8 animations:v13 completion:0.0];
    [(NUFadeViewAnimator *)self fadeInDelay];
    v15 = v14;
  }

  else
  {
    v15 = 0.0;
  }

  v16 = MEMORY[0x277D75D18];
  [(NUFadeViewAnimator *)self fadeInDuration];
  v18 = v17;
  v22 = completionCopy;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __53__NUFadeViewAnimator_fadeFromView_toView_completion___block_invoke_3;
  v23[3] = &unk_2799A3498;
  v24 = toViewCopy;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __53__NUFadeViewAnimator_fadeFromView_toView_completion___block_invoke_4;
  v21[3] = &unk_2799A3C58;
  v19 = completionCopy;
  v20 = toViewCopy;
  [v16 animateWithDuration:0 delay:v23 options:v21 animations:v18 completion:v15];
}

uint64_t __53__NUFadeViewAnimator_fadeFromView_toView_completion___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end