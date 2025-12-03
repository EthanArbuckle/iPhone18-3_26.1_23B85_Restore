@interface _SpacingView
- (CGSize)intrinsicContentSize;
- (CGSize)spacingSize;
- (_SpacingView)initWithWidth:(double)width height:(double)height;
@end

@implementation _SpacingView

- (_SpacingView)initWithWidth:(double)width height:(double)height
{
  v7.receiver = self;
  v7.super_class = _SpacingView;
  result = [(_SpacingView *)&v7 initWithFrame:0.0, 0.0, width, height];
  if (result)
  {
    result->_spacingSize.width = width;
    result->_spacingSize.height = height;
  }

  return result;
}

- (CGSize)intrinsicContentSize
{
  width = self->_spacingSize.width;
  height = self->_spacingSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)spacingSize
{
  objc_copyStruct(v4, &self->_spacingSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

@end