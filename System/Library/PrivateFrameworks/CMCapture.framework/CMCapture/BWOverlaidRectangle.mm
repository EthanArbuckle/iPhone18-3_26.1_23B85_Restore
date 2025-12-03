@interface BWOverlaidRectangle
- (BWOverlaidRectangle)initWithDisplayStyle:(int)style;
- (CGRect)bounds;
- (void)dealloc;
@end

@implementation BWOverlaidRectangle

- (BWOverlaidRectangle)initWithDisplayStyle:(int)style
{
  v5.receiver = self;
  v5.super_class = BWOverlaidRectangle;
  result = [(BWOverlaidRectangle *)&v5 init];
  if (result)
  {
    result->_displayStyle = style;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWOverlaidRectangle;
  [(BWOverlaidRectangle *)&v3 dealloc];
}

- (CGRect)bounds
{
  x = self->_bounds.origin.x;
  y = self->_bounds.origin.y;
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end