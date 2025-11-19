@interface CUIKViewEntityAnnotation
- (CGRect)rect;
- (CUIKViewEntityAnnotation)initWithEvent:(id)a3 rect:(CGRect)a4 state:(unint64_t)a5;
@end

@implementation CUIKViewEntityAnnotation

- (CUIKViewEntityAnnotation)initWithEvent:(id)a3 rect:(CGRect)a4 state:(unint64_t)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v12 = a3;
  v16.receiver = self;
  v16.super_class = CUIKViewEntityAnnotation;
  v13 = [(CUIKViewEntityAnnotation *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_event, a3);
    v14->_rect.origin.x = x;
    v14->_rect.origin.y = y;
    v14->_rect.size.width = width;
    v14->_rect.size.height = height;
    v14->_state = a5;
  }

  return v14;
}

- (CGRect)rect
{
  x = self->_rect.origin.x;
  y = self->_rect.origin.y;
  width = self->_rect.size.width;
  height = self->_rect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end