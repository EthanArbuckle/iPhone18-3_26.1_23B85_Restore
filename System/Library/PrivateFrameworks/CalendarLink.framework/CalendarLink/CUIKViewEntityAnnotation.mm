@interface CUIKViewEntityAnnotation
- (CGRect)rect;
- (CUIKViewEntityAnnotation)initWithEvent:(id)event rect:(CGRect)rect state:(unint64_t)state;
@end

@implementation CUIKViewEntityAnnotation

- (CUIKViewEntityAnnotation)initWithEvent:(id)event rect:(CGRect)rect state:(unint64_t)state
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  eventCopy = event;
  v16.receiver = self;
  v16.super_class = CUIKViewEntityAnnotation;
  v13 = [(CUIKViewEntityAnnotation *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_event, event);
    v14->_rect.origin.x = x;
    v14->_rect.origin.y = y;
    v14->_rect.size.width = width;
    v14->_rect.size.height = height;
    v14->_state = state;
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