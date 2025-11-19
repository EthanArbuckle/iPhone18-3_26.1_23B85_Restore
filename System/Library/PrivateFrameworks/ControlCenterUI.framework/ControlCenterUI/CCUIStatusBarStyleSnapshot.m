@interface CCUIStatusBarStyleSnapshot
- (CCUIStatusBarStyleSnapshot)initWithHidden:(BOOL)a3 hiddenPartIdentifier:(id)a4 leadingStyleRequest:(id)a5 trailingStyleRequest:(id)a6 overlayData:(id)a7 actionsByPartIdentifier:(id)a8 statusBarInsets:(UIEdgeInsets)a9 avoidanceFrame:(CGRect)a10;
- (CGRect)avoidanceFrame;
- (UIEdgeInsets)statusBarInsets;
@end

@implementation CCUIStatusBarStyleSnapshot

- (CCUIStatusBarStyleSnapshot)initWithHidden:(BOOL)a3 hiddenPartIdentifier:(id)a4 leadingStyleRequest:(id)a5 trailingStyleRequest:(id)a6 overlayData:(id)a7 actionsByPartIdentifier:(id)a8 statusBarInsets:(UIEdgeInsets)a9 avoidanceFrame:(CGRect)a10
{
  height = a10.size.height;
  width = a10.size.width;
  y = a10.origin.y;
  x = a10.origin.x;
  right = a9.right;
  bottom = a9.bottom;
  left = a9.left;
  top = a9.top;
  v25 = a4;
  v26 = a5;
  v27 = a6;
  v28 = a7;
  v29 = a8;
  v41.receiver = self;
  v41.super_class = CCUIStatusBarStyleSnapshot;
  v30 = [(CCUIStatusBarStyleSnapshot *)&v41 init];
  v31 = v30;
  if (v30)
  {
    v30->_hidden = a3;
    objc_storeStrong(&v30->_hiddenPartIdentifier, a4);
    v32 = [v26 copy];
    leadingStyleRequest = v31->_leadingStyleRequest;
    v31->_leadingStyleRequest = v32;

    v34 = [v27 copy];
    trailingStyleRequest = v31->_trailingStyleRequest;
    v31->_trailingStyleRequest = v34;

    v36 = [v28 copy];
    overlayData = v31->_overlayData;
    v31->_overlayData = v36;

    v38 = [v29 copy];
    actionsByPartIdentifier = v31->_actionsByPartIdentifier;
    v31->_actionsByPartIdentifier = v38;

    v31->_statusBarInsets.top = top;
    v31->_statusBarInsets.left = left;
    v31->_statusBarInsets.bottom = bottom;
    v31->_statusBarInsets.right = right;
    v31->_avoidanceFrame.origin.x = x;
    v31->_avoidanceFrame.origin.y = y;
    v31->_avoidanceFrame.size.width = width;
    v31->_avoidanceFrame.size.height = height;
  }

  return v31;
}

- (CGRect)avoidanceFrame
{
  x = self->_avoidanceFrame.origin.x;
  y = self->_avoidanceFrame.origin.y;
  width = self->_avoidanceFrame.size.width;
  height = self->_avoidanceFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIEdgeInsets)statusBarInsets
{
  top = self->_statusBarInsets.top;
  left = self->_statusBarInsets.left;
  bottom = self->_statusBarInsets.bottom;
  right = self->_statusBarInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end