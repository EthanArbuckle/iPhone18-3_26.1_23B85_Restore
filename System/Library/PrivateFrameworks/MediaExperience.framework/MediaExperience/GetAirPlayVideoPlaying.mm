@interface GetAirPlayVideoPlaying
@end

@implementation GetAirPlayVideoPlaying

uint64_t __routingSessionManagerResilientRemote_GetAirPlayVideoPlaying_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  VTable = CMBaseObjectGetVTable();
  v5 = *(*(VTable + 16) + 48);
  if (!v5)
  {
    return 4294954514;
  }

  v6 = *(VTable + 16) + 48;

  return v5(a2, v3);
}

@end