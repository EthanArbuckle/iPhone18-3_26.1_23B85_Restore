@interface CCUIStatusBarStyleSnapshot
- (CCUIStatusBarStyleSnapshot)initWithHidden:(BOOL)hidden hiddenPartIdentifier:(id)identifier leadingStyleRequest:(id)request trailingStyleRequest:(id)styleRequest overlayData:(id)data actionsByPartIdentifier:(id)partIdentifier statusBarInsets:(UIEdgeInsets)insets avoidanceFrame:(CGRect)self0;
- (CGRect)avoidanceFrame;
- (UIEdgeInsets)statusBarInsets;
@end

@implementation CCUIStatusBarStyleSnapshot

- (CCUIStatusBarStyleSnapshot)initWithHidden:(BOOL)hidden hiddenPartIdentifier:(id)identifier leadingStyleRequest:(id)request trailingStyleRequest:(id)styleRequest overlayData:(id)data actionsByPartIdentifier:(id)partIdentifier statusBarInsets:(UIEdgeInsets)insets avoidanceFrame:(CGRect)self0
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  identifierCopy = identifier;
  requestCopy = request;
  styleRequestCopy = styleRequest;
  dataCopy = data;
  partIdentifierCopy = partIdentifier;
  v41.receiver = self;
  v41.super_class = CCUIStatusBarStyleSnapshot;
  v30 = [(CCUIStatusBarStyleSnapshot *)&v41 init];
  v31 = v30;
  if (v30)
  {
    v30->_hidden = hidden;
    objc_storeStrong(&v30->_hiddenPartIdentifier, identifier);
    v32 = [requestCopy copy];
    leadingStyleRequest = v31->_leadingStyleRequest;
    v31->_leadingStyleRequest = v32;

    v34 = [styleRequestCopy copy];
    trailingStyleRequest = v31->_trailingStyleRequest;
    v31->_trailingStyleRequest = v34;

    v36 = [dataCopy copy];
    overlayData = v31->_overlayData;
    v31->_overlayData = v36;

    v38 = [partIdentifierCopy copy];
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