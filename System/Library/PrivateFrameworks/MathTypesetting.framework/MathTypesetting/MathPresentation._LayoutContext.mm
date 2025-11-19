@interface MathPresentation._LayoutContext
- (CGColor)baseFontColor;
- (CGSize)containerSize;
- (CGSize)targetSize;
- (NSString)baseFontName;
@end

@implementation MathPresentation._LayoutContext

- (NSString)baseFontName
{
  sub_258248C50();
  if (v2)
  {
    v3 = sub_2582CBA4C();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CGSize)targetSize
{
  v2 = sub_258248CB0();
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)containerSize
{
  v2 = sub_258248CFC();
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGColor)baseFontColor
{
  v2 = sub_258248D58();

  return v2;
}

@end