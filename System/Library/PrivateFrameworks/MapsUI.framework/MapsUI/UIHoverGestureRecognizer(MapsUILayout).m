@interface UIHoverGestureRecognizer(MapsUILayout)
- (uint64_t)_mapsui_isHovering;
@end

@implementation UIHoverGestureRecognizer(MapsUILayout)

- (uint64_t)_mapsui_isHovering
{
  result = [a1 state];
  if (result != 1)
  {
    return [a1 state] == 2;
  }

  return result;
}

@end