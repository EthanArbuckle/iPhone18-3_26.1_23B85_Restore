@interface SUUIComposeTextFieldConfiguration
- (UIEdgeInsets)borderInsets;
@end

@implementation SUUIComposeTextFieldConfiguration

- (UIEdgeInsets)borderInsets
{
  top = self->_borderInsets.top;
  left = self->_borderInsets.left;
  bottom = self->_borderInsets.bottom;
  right = self->_borderInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end