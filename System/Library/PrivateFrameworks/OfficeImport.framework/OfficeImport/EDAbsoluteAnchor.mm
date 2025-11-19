@interface EDAbsoluteAnchor
- (CGPoint)position;
- (CGRect)bounds;
- (CGSize)size;
- (void)setBounds:(CGRect)a3;
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

- (void)setBounds:(CGRect)a3
{
  self->mPosition.x = a3.origin.x;
  self->mPosition.y = a3.origin.y;
  self->mSize.width = a3.size.width;
  self->mSize.height = a3.size.height;
}

@end