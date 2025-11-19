@interface Invalidated
@end

@implementation Invalidated

void ___Invalidated_f_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 httpClientDidCloseConnectionDueToServer:*(a1 + 32)];
}

@end