@interface UITextView(SharedHelper)
- (EMKRippleAnimator)newRippleAnimatorForAnimation:()SharedHelper foregroundColor:notify_emk:;
@end

@implementation UITextView(SharedHelper)

- (EMKRippleAnimator)newRippleAnimatorForAnimation:()SharedHelper foregroundColor:notify_emk:
{
  v25[2] = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[EMKRippleAnimator alloc] initWithAnimation:v10 foregroundColor:v9];
  glimmerFilterAnimation = [v10 glimmerFilterAnimation];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __85__UITextView_SharedHelper__newRippleAnimatorForAnimation_foregroundColor_notify_emk___block_invoke;
  v21[3] = &unk_2781C2050;
  v23 = v8;
  v13 = v11;
  v22 = v13;
  v14 = v8;
  v15 = [self _animatorForTextAnimation:glimmerFilterAnimation notify:v21];
  v24[0] = @"foregroundColor";
  v24[1] = @"bulge";
  v25[0] = v9;
  v25[1] = &unk_2827849C8;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
  [v15 setConfiguration:v16];

  scaleRippleAnimation = [v10 scaleRippleAnimation];

  v18 = [self _animatorForTextAnimation:scaleRippleAnimation notify:&__block_literal_global_0];
  [(EMKRippleAnimator *)v13 setScaleRippleAnimator:v18];
  [(EMKRippleAnimator *)v13 setGlimmerAnimator:v15];
  v19 = v13;

  return v19;
}

@end