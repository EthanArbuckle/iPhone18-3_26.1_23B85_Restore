@interface UIViewController
@end

@implementation UIViewController

uint64_t __121__UIViewController_CFXAdditions__counterRotationViewForSnapshot_atCenterPoint_toWindowOrientation_fromWindowOrientation___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setBounds:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  [*(a1 + 32) setCenter:{*(a1 + 80), *(a1 + 88)}];
  [*(a1 + 40) setCenter:{*(a1 + 96), *(a1 + 104)}];
  CGAffineTransformMakeRotation(&v5, *(a1 + 112));
  v2 = *(a1 + 40);
  v4 = v5;
  return [v2 setTransform:&v4];
}

uint64_t __206__UIViewController_CFXAdditions__animateCounterRotationView_fadeOut_toWindowOrientation_fromWindowOrientation_forTransitionToSize_withTransitionCoordinator_postTransitionBlock_postRemoveFromSuperviewBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setZRotation:*(a1 + 40)];
  __asm { FMOV            V1.2D, #0.5 }

  v7 = vmulq_f64(*(a1 + 48), _Q1);
  v8 = *(a1 + 32);

  return [v8 setCenter:*&v7];
}

void __206__UIViewController_CFXAdditions__animateCounterRotationView_fadeOut_toWindowOrientation_fromWindowOrientation_forTransitionToSize_withTransitionCoordinator_postTransitionBlock_postRemoveFromSuperviewBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))();
  }

  if (*(a1 + 56) == 1)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __206__UIViewController_CFXAdditions__animateCounterRotationView_fadeOut_toWindowOrientation_fromWindowOrientation_forTransitionToSize_withTransitionCoordinator_postTransitionBlock_postRemoveFromSuperviewBlock___block_invoke_3;
    v9[3] = &unk_278D79D20;
    v10 = *(a1 + 32);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __206__UIViewController_CFXAdditions__animateCounterRotationView_fadeOut_toWindowOrientation_fromWindowOrientation_forTransitionToSize_withTransitionCoordinator_postTransitionBlock_postRemoveFromSuperviewBlock___block_invoke_4;
    v6[3] = &unk_278D7A7E8;
    v7 = *(a1 + 32);
    v8 = *(a1 + 48);
    [JTAnimation performAnimation:v9 duration:v6 completion:0.25];
  }

  else
  {
    [*(a1 + 32) removeFromSuperview];
    v5 = *(a1 + 48);
    if (v5)
    {
      (*(v5 + 16))();
    }
  }
}

uint64_t __206__UIViewController_CFXAdditions__animateCounterRotationView_fadeOut_toWindowOrientation_fromWindowOrientation_forTransitionToSize_withTransitionCoordinator_postTransitionBlock_postRemoveFromSuperviewBlock___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

@end