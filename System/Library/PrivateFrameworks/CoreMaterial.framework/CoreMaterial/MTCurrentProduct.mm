@interface MTCurrentProduct
@end

@implementation MTCurrentProduct

void ___MTCurrentProduct_block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = 0;
  }

  v2 = _MTCurrentProduct___currentProduct;
  _MTCurrentProduct___currentProduct = v1;
}

@end