@interface CKSendAnimationContext
- (CGRect)audioMessageSourceRect;
- (CGRect)quickReplySourceRect;
- (CGRect)throwAnimationSourceRect;
- (CGSize)entryViewSize;
@end

@implementation CKSendAnimationContext

- (CGRect)quickReplySourceRect
{
  x = self->_quickReplySourceRect.origin.x;
  y = self->_quickReplySourceRect.origin.y;
  width = self->_quickReplySourceRect.size.width;
  height = self->_quickReplySourceRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)audioMessageSourceRect
{
  x = self->audioMessageSourceRect.origin.x;
  y = self->audioMessageSourceRect.origin.y;
  width = self->audioMessageSourceRect.size.width;
  height = self->audioMessageSourceRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)throwAnimationSourceRect
{
  x = self->throwAnimationSourceRect.origin.x;
  y = self->throwAnimationSourceRect.origin.y;
  width = self->throwAnimationSourceRect.size.width;
  height = self->throwAnimationSourceRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)entryViewSize
{
  width = self->entryViewSize.width;
  height = self->entryViewSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end