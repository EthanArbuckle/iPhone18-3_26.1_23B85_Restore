@interface CKPopoverViewLayoutMetrics
- (CGRect)frame;
- (CKPopoverViewLayoutMetrics)initWithState:(unint64_t)a3 frame:(CGRect)a4 coordinateSpace:(id)a5;
@end

@implementation CKPopoverViewLayoutMetrics

- (CKPopoverViewLayoutMetrics)initWithState:(unint64_t)a3 frame:(CGRect)a4 coordinateSpace:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v12 = a5;
  v16.receiver = self;
  v16.super_class = CKPopoverViewLayoutMetrics;
  v13 = [(CKPopoverViewLayoutMetrics *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_state = a3;
    v13->_frame.origin.x = x;
    v13->_frame.origin.y = y;
    v13->_frame.size.width = width;
    v13->_frame.size.height = height;
    objc_storeStrong(&v13->_coordinateSpace, a5);
  }

  return v14;
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end