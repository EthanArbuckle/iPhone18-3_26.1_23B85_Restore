@interface NTKCFaceDetailCollectionCellLabel
@end

@implementation NTKCFaceDetailCollectionCellLabel

double __49___NTKCFaceDetailCollectionCellLabel__textBounds__block_invoke(uint64_t a1)
{
  v2 = NTKCScreenStyle();
  result = 90.6666667;
  if (*(a1 + 32))
  {
    result = 83.3333333;
  }

  v4 = 93.0;
  if (*(a1 + 32))
  {
    v4 = 75.0;
  }

  if (v2 != 1)
  {
    return v4;
  }

  return result;
}

@end