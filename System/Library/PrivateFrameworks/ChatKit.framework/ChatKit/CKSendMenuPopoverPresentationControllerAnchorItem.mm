@interface CKSendMenuPopoverPresentationControllerAnchorItem
- (CGRect)anchorRect;
- (CKSendMenuPopoverPresentationControllerAnchorItem)initWithView:(id)view rect:(CGRect)rect;
@end

@implementation CKSendMenuPopoverPresentationControllerAnchorItem

- (CKSendMenuPopoverPresentationControllerAnchorItem)initWithView:(id)view rect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewCopy = view;
  v14.receiver = self;
  v14.super_class = CKSendMenuPopoverPresentationControllerAnchorItem;
  v11 = [(CKSendMenuPopoverPresentationControllerAnchorItem *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_anchorRect.origin.x = x;
    v11->_anchorRect.origin.y = y;
    v11->_anchorRect.size.width = width;
    v11->_anchorRect.size.height = height;
    objc_storeStrong(&v11->_anchorView, view);
  }

  return v12;
}

- (CGRect)anchorRect
{
  x = self->_anchorRect.origin.x;
  y = self->_anchorRect.origin.y;
  width = self->_anchorRect.size.width;
  height = self->_anchorRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end