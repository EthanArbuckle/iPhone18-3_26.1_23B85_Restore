@interface NSArray
@end

@implementation NSArray

void __45__NSArray_DOCNode__fpfs_syncFPItemsFromNodes__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 48) + 8) + 24) = v3 == 0;
  v4 = v3;
  if (v3 && (*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    [*(a1 + 32) addObject:v3];
  }

  dispatch_group_leave(*(a1 + 40));
}

@end