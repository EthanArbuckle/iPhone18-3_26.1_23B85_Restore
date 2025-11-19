@interface CPSHeroImagePreferredSize
@end

@implementation CPSHeroImagePreferredSize

double ___CPSHeroImagePreferredSize_block_invoke()
{
  v0 = MGGetSInt32Answer();
  if (_CPSScreenScale_onceToken != -1)
  {
    _CPSScreenScale_cold_1();
  }

  if (v0 >= 414)
  {
    v1 = 414;
  }

  else
  {
    v1 = v0;
  }

  result = v1 * *&_CPSScreenScale_scale;
  *&_CPSHeroImagePreferredSize_preferredSize_0 = result;
  _CPSHeroImagePreferredSize_preferredSize_1 = round((result + result) / 3.0);
  return result;
}

@end