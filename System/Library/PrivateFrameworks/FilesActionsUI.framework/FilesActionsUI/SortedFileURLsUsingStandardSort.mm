@interface SortedFileURLsUsingStandardSort
@end

@implementation SortedFileURLsUsingStandardSort

uint64_t ___SortedFileURLsUsingStandardSort_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 lastPathComponent];
  v6 = [v5 stringByDeletingPathExtension];

  v7 = [v4 lastPathComponent];

  v8 = [v7 stringByDeletingPathExtension];

  v9 = [v6 localizedStandardCompare:v8];
  return v9;
}

@end