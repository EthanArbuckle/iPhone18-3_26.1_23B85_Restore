@interface UIHoverGestureRecognizer(MapsUILayout)
- (uint64_t)_mapsui_isHovering;
@end

@implementation UIHoverGestureRecognizer(MapsUILayout)

- (uint64_t)_mapsui_isHovering
{
  result = [self state];
  if (result != 1)
  {
    return [self state] == 2;
  }

  return result;
}

@end