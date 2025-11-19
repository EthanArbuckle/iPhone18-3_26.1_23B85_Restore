@interface MPCPlayerPlaybackRateCommand
@end

@implementation MPCPlayerPlaybackRateCommand

BOOL __49___MPCPlayerPlaybackRateCommand_setPlaybackRate___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  [a2 floatValue];
  return vabds_f32(v2, v3) <= 0.0001;
}

@end