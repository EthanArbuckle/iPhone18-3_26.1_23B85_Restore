@interface ApplyBinaryFilter
@end

@implementation ApplyBinaryFilter

uint64_t __mt_ApplyBinaryFilter_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 40);
  v9 = *(*(a1 + 32) + 64);
  kdebug_trace();
  mt_ApplyBinaryFilter(*(a1 + 32), (*(a1 + 40) + 1), a2, a3, a4, 0);
  v10 = *(a1 + 40);
  v11 = *(*(a1 + 32) + 64);

  return kdebug_trace();
}

@end