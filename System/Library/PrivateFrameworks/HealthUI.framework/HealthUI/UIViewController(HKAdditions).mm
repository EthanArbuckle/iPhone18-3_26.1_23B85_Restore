@interface UIViewController(HKAdditions)
- (id)hk_window;
- (uint64_t)_viewIsHidden:()HKAdditions;
- (uint64_t)hk_viewIsHidden;
- (void)hk_presentModalCardViewController:()HKAdditions fullScreen:animated:completion:;
@end

@implementation UIViewController(HKAdditions)

- (id)hk_window
{
  v2 = [a1 view];
  v3 = [v2 window];

  if (v3)
  {
    v4 = [a1 view];
    v5 = [v4 window];
  }

  else
  {
    v4 = [a1 parentViewController];
    if (v4)
    {
      [a1 parentViewController];
    }

    else
    {
      [a1 presentingViewController];
    }
    v6 = ;
    v5 = [v6 hk_window];
  }

  return v5;
}

- (uint64_t)hk_viewIsHidden
{
  v2 = [a1 view];
  v3 = [a1 _viewIsHidden:v2];

  return v3;
}

- (uint64_t)_viewIsHidden:()HKAdditions
{
  v4 = a3;
  if ([v4 isHidden])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v4 superview];

    if (v6)
    {
      v7 = [v4 superview];
      v5 = [a1 _viewIsHidden:v7];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)hk_presentModalCardViewController:()HKAdditions fullScreen:animated:completion:
{
  v9 = a6;
  v10 = a3;
  [v10 setModalTransitionStyle:0];
  if (a4)
  {
    [v10 setModalPresentationStyle:2];
    [v10 setPreferredContentSize:{10000.0, 10000.0}];
  }

  else
  {
    [v10 setModalPresentationStyle:1];
  }

  [a1 presentViewController:v10 animated:1 completion:v9];
}

@end