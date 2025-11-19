@interface FigRoutingSessionManager
@end

@implementation FigRoutingSessionManager

uint64_t __FigRoutingSessionManager_ensureConfigurationInitialized_block_invoke()
{
  gConfigurationMutex = FigSimpleMutexCreate();
  LOWORD(gConfiguration) = 257;
  *(&gConfiguration + 4) = 0x3F0000003F4CCCCDLL;
  xmmword_1EB75D788 = xmmword_1B19D9E80;
  xmmword_1EB75D798 = xmmword_1B19D9E90;
  xmmword_1EB75D7A8 = xmmword_1B19D9EA0;
  xmmword_1EB75D7B8 = xmmword_1B19D9EB0;

  return FigMobileAsset_RegisterForAssetUpdates();
}

@end