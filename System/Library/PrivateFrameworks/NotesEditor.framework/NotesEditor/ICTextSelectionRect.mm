@interface ICTextSelectionRect
- (CGRect)rect;
@end

@implementation ICTextSelectionRect

- (CGRect)rect
{
  x = self->rect.origin.x;
  y = self->rect.origin.y;
  width = self->rect.size.width;
  height = self->rect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end