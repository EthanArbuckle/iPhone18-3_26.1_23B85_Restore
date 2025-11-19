@interface MDSimpleQueryDeallocate
@end

@implementation MDSimpleQueryDeallocate

uint64_t ___MDSimpleQueryDeallocate_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  if (v3)
  {
    CFRelease(v3);
    *(a2 + 32) = 0;
  }

  v4 = *(a2 + 16);
  if (v4 && *(v4 + 104))
  {
    icu_ctx_release();
    *(*(a2 + 16) + 104) = 0;
  }

  return a2;
}

@end