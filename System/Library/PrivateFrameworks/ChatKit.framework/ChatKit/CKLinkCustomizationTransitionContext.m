@interface CKLinkCustomizationTransitionContext
- (CGPoint)preferredSourceRectAnchorPoint;
@end

@implementation CKLinkCustomizationTransitionContext

- (CGPoint)preferredSourceRectAnchorPoint
{
  x = self->_preferredSourceRectAnchorPoint.x;
  y = self->_preferredSourceRectAnchorPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end