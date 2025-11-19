@interface UIViewController(CFXAdditions)
- (CFXCounterRotationView)counterRotationViewForSnapshot:()CFXAdditions atCenterPoint:toWindowOrientation:fromWindowOrientation:;
- (void)animateCounterRotationView:()CFXAdditions fadeOut:toWindowOrientation:fromWindowOrientation:forTransitionToSize:withTransitionCoordinator:postTransitionBlock:postRemoveFromSuperviewBlock:;
- (void)displaySnapshot:()CFXAdditions atCenterPoint:atIndex:forTransitionToSize:fadeOut:withTransitionCoordinator:preTransitionBlock:postTransitionBlock:;
@end

@implementation UIViewController(CFXAdditions)

- (void)displaySnapshot:()CFXAdditions atCenterPoint:atIndex:forTransitionToSize:fadeOut:withTransitionCoordinator:preTransitionBlock:postTransitionBlock:
{
  v33 = a10;
  v22 = a11;
  v23 = a12;
  v24 = a7;
  v25 = [a1 view];
  v26 = [v25 window];
  v27 = [v26 _toWindowOrientation];

  v28 = [a1 view];
  v29 = [v28 window];
  v30 = [v29 _fromWindowOrientation];

  v31 = [a1 counterRotationViewForSnapshot:v24 atCenterPoint:v27 toWindowOrientation:v30 fromWindowOrientation:{a2, a3}];

  v32 = [a1 view];
  [v32 insertSubview:v31 atIndex:a8];

  if (v22)
  {
    v22[2](v22);
  }

  [a1 animateCounterRotationView:v31 fadeOut:a9 toWindowOrientation:v27 fromWindowOrientation:v30 forTransitionToSize:v33 withTransitionCoordinator:v23 postTransitionBlock:a4 postRemoveFromSuperviewBlock:{a5, 0}];
}

- (CFXCounterRotationView)counterRotationViewForSnapshot:()CFXAdditions atCenterPoint:toWindowOrientation:fromWindowOrientation:
{
  v8 = a5;
  v9 = [a1 view];
  [v9 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  UIRectGetCenter();
  v19 = v18;
  v21 = v20;
  v22 = objc_alloc_init(CFXCounterRotationView);
  [(CFXCounterRotationView *)v22 setUserInteractionEnabled:0];
  [(CFXCounterRotationView *)v22 addSubview:v8];
  v23 = MEMORY[0x277D75D18];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __121__UIViewController_CFXAdditions__counterRotationViewForSnapshot_atCenterPoint_toWindowOrientation_fromWindowOrientation___block_invoke;
  v29[3] = &unk_278D79EF0;
  v24 = v22;
  v32 = v11;
  v33 = v13;
  v34 = v15;
  v35 = v17;
  v36 = v19;
  v37 = v21;
  v30 = v24;
  v31 = v8;
  v38 = a2;
  v39 = a3;
  v40 = 0;
  v25 = v8;
  [v23 performWithoutAnimation:v29];
  v26 = v31;
  v27 = v24;

  return v24;
}

- (void)animateCounterRotationView:()CFXAdditions fadeOut:toWindowOrientation:fromWindowOrientation:forTransitionToSize:withTransitionCoordinator:postTransitionBlock:postRemoveFromSuperviewBlock:
{
  v18 = a5;
  v19 = a10;
  v20 = a11;
  v21 = 0.0;
  v22 = 0.0;
  if (a7 != 1)
  {
    if (a7 == 3)
    {
      v22 = 1.57079633;
    }

    else if (a7 == 4)
    {
      v22 = -1.57079633;
    }

    else
    {
      v22 = 3.14159265;
      if (a7 != 2)
      {
        v22 = 0.0;
      }
    }
  }

  if (a8 != 1)
  {
    if (a8 == 3)
    {
      v21 = 1.57079633;
    }

    else if (a8 == 4)
    {
      v21 = -1.57079633;
    }

    else
    {
      v21 = 3.14159265;
      if (a8 != 2)
      {
        v21 = 0.0;
      }
    }
  }

  v23 = v21 - v22;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __206__UIViewController_CFXAdditions__animateCounterRotationView_fadeOut_toWindowOrientation_fromWindowOrientation_forTransitionToSize_withTransitionCoordinator_postTransitionBlock_postRemoveFromSuperviewBlock___block_invoke;
  v32[3] = &unk_278D7ADF8;
  v33 = v18;
  v34 = v23;
  v35 = a1;
  v36 = a2;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __206__UIViewController_CFXAdditions__animateCounterRotationView_fadeOut_toWindowOrientation_fromWindowOrientation_forTransitionToSize_withTransitionCoordinator_postTransitionBlock_postRemoveFromSuperviewBlock___block_invoke_2;
  v27[3] = &unk_278D7AE20;
  v31 = a6;
  v28 = v33;
  v29 = v19;
  v30 = v20;
  v24 = v20;
  v25 = v33;
  v26 = v19;
  [a9 animateAlongsideTransition:v32 completion:v27];
}

@end