@interface StopSuppressingLikelyDestinations
@end

@implementation StopSuppressingLikelyDestinations

uint64_t __routingSessionManagerResilientRemote_StopSuppressingLikelyDestinations_block_invoke(uint64_t a1, uint64_t a2)
{
  VTable = CMBaseObjectGetVTable();
  v4 = *(*(VTable + 16) + 88);
  if (!v4)
  {
    return 4294954514;
  }

  v5 = *(VTable + 16) + 88;

  return v4(a2);
}

@end