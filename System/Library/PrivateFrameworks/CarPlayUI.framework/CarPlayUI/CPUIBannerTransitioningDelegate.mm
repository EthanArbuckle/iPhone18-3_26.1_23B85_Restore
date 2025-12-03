@interface CPUIBannerTransitioningDelegate
- (Class)_bannerTransitionAnimatorClassForAnimationStyle:(int64_t)style;
- (id)animationControllerForDismissedController:(id)controller userInfo:(id)info;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController userInfo:(id)info;
- (id)animationControllerForResizingController:(id)controller userInfo:(id)info;
@end

@implementation CPUIBannerTransitioningDelegate

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController userInfo:(id)info
{
  infoCopy = info;
  v8 = [infoCopy objectForKey:@"CPUIBannerTransitionAnimationStyle"];
  if (v8)
  {
    v9 = [infoCopy objectForKey:@"CPUIBannerTransitionAnimationStyle"];
    integerValue = [v9 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  v11 = [objc_alloc(-[CPUIBannerTransitioningDelegate _bannerTransitionAnimatorClassForAnimationStyle:](self _bannerTransitionAnimatorClassForAnimationStyle:{integerValue)), "initForPresenting:", 1}];

  return v11;
}

- (id)animationControllerForDismissedController:(id)controller userInfo:(id)info
{
  infoCopy = info;
  v6 = [infoCopy objectForKey:@"CPUIBannerTransitionAnimationStyle"];
  if (v6)
  {
    v7 = [infoCopy objectForKey:@"CPUIBannerTransitionAnimationStyle"];
    integerValue = [v7 integerValue];
  }

  else
  {
    integerValue = 1;
  }

  v9 = [objc_alloc(-[CPUIBannerTransitioningDelegate _bannerTransitionAnimatorClassForAnimationStyle:](self _bannerTransitionAnimatorClassForAnimationStyle:{integerValue)), "initForPresenting:", 0}];

  return v9;
}

- (id)animationControllerForResizingController:(id)controller userInfo:(id)info
{
  v4 = [(BNBannerTransitionAnimator *)[CPUIBannerTransitionAnimator alloc] initForPresenting:1];

  return v4;
}

- (Class)_bannerTransitionAnimatorClassForAnimationStyle:(int64_t)style
{
  v3 = objc_opt_class();

  return v3;
}

@end