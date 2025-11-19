@interface HandleEvent
@end

@implementation HandleEvent

void ___HandleEvent_f_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 httpClient:*(a1 + 32) didReceiveEvent:*(a1 + 40)];
}

@end