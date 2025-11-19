@interface EDMessageQueryHelperEntry
@end

@implementation EDMessageQueryHelperEntry

uint64_t __80___EDMessageQueryHelperEntry_initWithMessage_sortDescriptors_sectionPredicates___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _BYTE *a5)
{
  result = [a4 evaluateWithObject:*(a1 + 32)];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
    *a5 = 1;
  }

  return result;
}

@end