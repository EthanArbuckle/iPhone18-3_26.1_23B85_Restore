@interface CHDAbsoluteSizeAnchor
- (CGPoint)from;
- (CGSize)size;
@end

@implementation CHDAbsoluteSizeAnchor

- (CGPoint)from
{
  x = self->mFrom.x;
  y = self->mFrom.y;
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

@end