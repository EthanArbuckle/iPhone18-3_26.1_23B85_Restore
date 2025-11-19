@interface MXSessionCreate
@end

@implementation MXSessionCreate

MXSessionSidekick *___MXSessionCreate_block_invoke(uint64_t a1)
{
  result = [[MXSessionSidekick alloc] initWithSession:*(a1 + 40)];
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

@end