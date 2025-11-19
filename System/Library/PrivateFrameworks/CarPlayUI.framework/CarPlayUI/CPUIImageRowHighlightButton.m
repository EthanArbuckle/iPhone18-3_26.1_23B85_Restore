@interface CPUIImageRowHighlightButton
- (double)focusLayerCornerRadius;
@end

@implementation CPUIImageRowHighlightButton

- (double)focusLayerCornerRadius
{
  v2 = _UISolariumEnabled();
  result = 6.5;
  if (v2)
  {
    return 10.0;
  }

  return result;
}

@end