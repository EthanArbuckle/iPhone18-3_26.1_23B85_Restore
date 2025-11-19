@interface StartSuppressingLikelyDestinations
@end

@implementation StartSuppressingLikelyDestinations

uint64_t __routingSessionManagerResilientRemote_StartSuppressingLikelyDestinations_block_invoke(uint64_t a1, uint64_t a2)
{
  VTable = CMBaseObjectGetVTable();
  v4 = *(*(VTable + 16) + 80);
  if (!v4)
  {
    return 4294954514;
  }

  v5 = *(VTable + 16) + 80;

  return v4(a2);
}

@end