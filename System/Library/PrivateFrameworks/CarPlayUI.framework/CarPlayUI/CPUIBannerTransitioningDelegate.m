@interface CPUIBannerTransitioningDelegate
- (Class)_bannerTransitionAnimatorClassForAnimationStyle:(int64_t)a3;
- (id)animationControllerForDismissedController:(id)a3 userInfo:(id)a4;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5 userInfo:(id)a6;
- (id)animationControllerForResizingController:(id)a3 userInfo:(id)a4;
@end

@implementation CPUIBannerTransitioningDelegate

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5 userInfo:(id)a6
{
  v7 = a6;
  v8 = [v7 objectForKey:@"CPUIBannerTransitionAnimationStyle"];
  if (v8)
  {
    v9 = [v7 objectForKey:@"CPUIBannerTransitionAnimationStyle"];
    v10 = [v9 integerValue];
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_alloc(-[CPUIBannerTransitioningDelegate _bannerTransitionAnimatorClassForAnimationStyle:](self _bannerTransitionAnimatorClassForAnimationStyle:{v10)), "initForPresenting:", 1}];

  return v11;
}

- (id)animationControllerForDismissedController:(id)a3 userInfo:(id)a4
{
  v5 = a4;
  v6 = [v5 objectForKey:@"CPUIBannerTransitionAnimationStyle"];
  if (v6)
  {
    v7 = [v5 objectForKey:@"CPUIBannerTransitionAnimationStyle"];
    v8 = [v7 integerValue];
  }

  else
  {
    v8 = 1;
  }

  v9 = [objc_alloc(-[CPUIBannerTransitioningDelegate _bannerTransitionAnimatorClassForAnimationStyle:](self _bannerTransitionAnimatorClassForAnimationStyle:{v8)), "initForPresenting:", 0}];

  return v9;
}

- (id)animationControllerForResizingController:(id)a3 userInfo:(id)a4
{
  v4 = [(BNBannerTransitionAnimator *)[CPUIBannerTransitionAnimator alloc] initForPresenting:1];

  return v4;
}

- (Class)_bannerTransitionAnimatorClassForAnimationStyle:(int64_t)a3
{
  v3 = objc_opt_class();

  return v3;
}

@end