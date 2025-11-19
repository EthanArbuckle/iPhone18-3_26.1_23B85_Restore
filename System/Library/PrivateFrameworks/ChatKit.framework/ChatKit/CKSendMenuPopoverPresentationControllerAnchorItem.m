@interface CKSendMenuPopoverPresentationControllerAnchorItem
- (CGRect)anchorRect;
- (CKSendMenuPopoverPresentationControllerAnchorItem)initWithView:(id)a3 rect:(CGRect)a4;
@end

@implementation CKSendMenuPopoverPresentationControllerAnchorItem

- (CKSendMenuPopoverPresentationControllerAnchorItem)initWithView:(id)a3 rect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a3;
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
    objc_storeStrong(&v11->_anchorView, a3);
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