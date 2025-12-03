@interface UIViewController(HKAdditions)
- (id)hk_window;
- (uint64_t)_viewIsHidden:()HKAdditions;
- (uint64_t)hk_viewIsHidden;
- (void)hk_presentModalCardViewController:()HKAdditions fullScreen:animated:completion:;
@end

@implementation UIViewController(HKAdditions)

- (id)hk_window
{
  view = [self view];
  window = [view window];

  if (window)
  {
    view2 = [self view];
    window2 = [view2 window];
  }

  else
  {
    view2 = [self parentViewController];
    if (view2)
    {
      [self parentViewController];
    }

    else
    {
      [self presentingViewController];
    }
    v6 = ;
    window2 = [v6 hk_window];
  }

  return window2;
}

- (uint64_t)hk_viewIsHidden
{
  view = [self view];
  v3 = [self _viewIsHidden:view];

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
    superview = [v4 superview];

    if (superview)
    {
      superview2 = [v4 superview];
      v5 = [self _viewIsHidden:superview2];
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

  [self presentViewController:v10 animated:1 completion:v9];
}

@end