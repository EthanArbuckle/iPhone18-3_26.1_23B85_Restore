@interface HUCameraStreamFullScreenAnimator
- (CGRect)_adjustPresentedViewFrame:(CGRect)frame forTransitionContext:(id)context;
- (CGRect)_toViewFinalFrame:(id)frame;
- (HUCameraStreamFullScreenAnimator)initWithSourceCameraCell:(id)cell;
@end

@implementation HUCameraStreamFullScreenAnimator

- (HUCameraStreamFullScreenAnimator)initWithSourceCameraCell:(id)cell
{
  cellCopy = cell;
  v9.receiver = self;
  v9.super_class = HUCameraStreamFullScreenAnimator;
  v6 = [(HUCameraStreamFullScreenAnimator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sourceCameraCell, cell);
  }

  return v7;
}

- (CGRect)_toViewFinalFrame:(id)frame
{
  v3 = *MEMORY[0x277D77240];
  frameCopy = frame;
  v5 = [frameCopy viewControllerForKey:v3];
  [frameCopy finalFrameForViewController:v5];
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

- (CGRect)_adjustPresentedViewFrame:(CGRect)frame forTransitionContext:(id)context
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  contextCopy = context;
  if ([MEMORY[0x277D14CE8] isAMac])
  {
    containerView = [contextCopy containerView];
    [containerView safeAreaInsets];
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