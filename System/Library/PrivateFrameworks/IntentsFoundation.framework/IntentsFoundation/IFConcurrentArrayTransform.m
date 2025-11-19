@interface IFConcurrentArrayTransform
@end

@implementation IFConcurrentArrayTransform

id ___IFConcurrentArrayTransform_block_invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*(a1 + 40) + 16))(*(a1 + 40), [*(a1 + 32) objectAtIndex:a2], a2);
  if (result)
  {
    *(*(*(*(a1 + 48) + 8) + 24) + 8 * a2) = result;
  }

  return result;
}

@end