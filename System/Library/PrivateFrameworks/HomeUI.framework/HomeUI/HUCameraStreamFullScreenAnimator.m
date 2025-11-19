@interface HUCameraStreamFullScreenAnimator
- (CGRect)_adjustPresentedViewFrame:(CGRect)a3 forTransitionContext:(id)a4;
- (CGRect)_toViewFinalFrame:(id)a3;
- (HUCameraStreamFullScreenAnimator)initWithSourceCameraCell:(id)a3;
@end

@implementation HUCameraStreamFullScreenAnimator

- (HUCameraStreamFullScreenAnimator)initWithSourceCameraCell:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HUCameraStreamFullScreenAnimator;
  v6 = [(HUCameraStreamFullScreenAnimator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sourceCameraCell, a3);
  }

  return v7;
}

- (CGRect)_toViewFinalFrame:(id)a3
{
  v3 = *MEMORY[0x277D77240];
  v4 = a3;
  v5 = [v4 viewControllerForKey:v3];
  [v4 finalFrameForViewController:v5];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)_adjustPresentedViewFrame:(CGRect)a3 forTransitionContext:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = a4;
  if ([MEMORY[0x277D14CE8] isAMac])
  {
    v9 = [v8 containerView];
    [v9 safeAreaInsets];
    x = x + v10;
    y = y + v11;
    width = width - (v10 + v12);
    height = height - (v11 + v13);
  }

  v14 = x;
  v15 = y;
  v16 = width;
  v17 = height;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

@end