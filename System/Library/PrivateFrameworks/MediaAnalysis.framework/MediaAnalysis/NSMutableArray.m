@interface NSMutableArray
@end

@implementation NSMutableArray

uint64_t __49__NSMutableArray_PHAssetResource__vcp_sortBySize__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 vcp_size];
  v6 = v5;
  v8 = v7;
  [v4 vcp_size];
  v11 = v9 * v10;
  if (v6 * v8 < v11)
  {
    v12 = -1;
  }

  else
  {
    v12 = v6 * v8 > v11;
  }

  return v12;
}

@end