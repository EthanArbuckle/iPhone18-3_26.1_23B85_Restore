@interface NSArray
@end

@implementation NSArray

uint64_t __60__NSArray_PHAssetResource__vcp_smallMovieDerivativeResource__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 type] == 103)
  {
    v3 = [v2 vcp_isMovie];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end