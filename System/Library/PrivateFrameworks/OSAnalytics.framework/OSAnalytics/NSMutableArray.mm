@interface NSMutableArray
@end

@implementation NSMutableArray

uint64_t __79__NSMutableArray_OSABinaryImageListExtension__sortByAddressAndSetInferredSizes__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 symbolInfo];
  v7 = [v6 start];
  v8 = [v5 symbolInfo];
  if (v7 >= [v8 start])
  {
    v10 = [v4 symbolInfo];
    v11 = [v10 start];
    v12 = [v5 symbolInfo];
    v9 = v11 != [v12 start];
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

@end