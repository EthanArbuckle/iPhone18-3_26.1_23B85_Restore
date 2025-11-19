@interface WDMultiSelectManualEntryItem
@end

@implementation WDMultiSelectManualEntryItem

uint64_t __46___WDMultiSelectManualEntryItem_generateValue__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 accessoryType];
  if (result == 3)
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

@end