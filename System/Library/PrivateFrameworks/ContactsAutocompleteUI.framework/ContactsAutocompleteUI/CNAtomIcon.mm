@interface CNAtomIcon
- (CGPoint)drawingOffset;
@end

@implementation CNAtomIcon

- (CGPoint)drawingOffset
{
  x = self->drawingOffset.x;
  y = self->drawingOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end