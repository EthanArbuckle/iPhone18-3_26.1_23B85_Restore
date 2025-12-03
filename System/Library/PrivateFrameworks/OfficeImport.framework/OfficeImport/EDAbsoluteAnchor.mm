@interface EDAbsoluteAnchor
- (CGPoint)position;
- (CGRect)bounds;
- (CGSize)size;
- (void)setBounds:(CGRect)bounds;
@end

@implementation EDAbsoluteAnchor

- (CGPoint)position
{
  x = self->mPosition.x;
  y = self->mPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)size
{
  width = self->mSize.width;
  height = self->mSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)bounds
{
  x = self->mPosition.x;
  y = self->mPosition.y;
  width = self->mSize.width;
  height = self->mSize.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setBounds:(CGRect)bounds
{
  self->mPosition.x = bounds.origin.x;
  self->mPosition.y = bounds.origin.y;
  self->mSize.width = bounds.size.width;
  self->mSize.height = bounds.size.height;
}

@end