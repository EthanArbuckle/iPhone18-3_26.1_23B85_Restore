@interface CHDRelativeSizeAnchor
- (CGPoint)from;
- (CGPoint)to;
@end

@implementation CHDRelativeSizeAnchor

- (CGPoint)from
{
  x = self->mFrom.x;
  y = self->mFrom.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)to
{
  x = self->mTo.x;
  y = self->mTo.y;
  result.y = y;
  result.x = x;
  return result;
}

@end