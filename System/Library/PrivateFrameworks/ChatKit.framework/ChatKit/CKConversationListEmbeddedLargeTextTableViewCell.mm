@interface CKConversationListEmbeddedLargeTextTableViewCell
+ (id)reuseIdentifier;
- (CGRect)containerBounds;
- (UIEdgeInsets)marginInsets;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation CKConversationListEmbeddedLargeTextTableViewCell

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = CKConversationListEmbeddedLargeTextTableViewCell;
  v5 = [(CKConversationListEmbeddedLargeTextTableViewCell *)&v10 hitTest:event withEvent:test.x, test.y];
  closeButton = [(CKConversationListCell *)self closeButton];
  if (v5 == closeButton)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

- (CGRect)containerBounds
{
  x = self->_containerBounds.origin.x;
  y = self->_containerBounds.origin.y;
  width = self->_containerBounds.size.width;
  height = self->_containerBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIEdgeInsets)marginInsets
{
  top = self->_marginInsets.top;
  left = self->_marginInsets.left;
  bottom = self->_marginInsets.bottom;
  right = self->_marginInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end