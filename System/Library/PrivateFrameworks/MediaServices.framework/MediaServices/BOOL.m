@interface BOOL
@end

@implementation BOOL

uint64_t __msv_dispatch_sync_BOOL_block_invoke(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

@end