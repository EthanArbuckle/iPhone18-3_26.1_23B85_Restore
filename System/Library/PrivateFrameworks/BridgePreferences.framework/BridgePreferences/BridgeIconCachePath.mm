@interface BridgeIconCachePath
@end

@implementation BridgeIconCachePath

void ___BridgeIconCachePath_block_invoke()
{
  v0 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277D75128] sharedApplication];
  v1 = [v4 userCachesDirectory];
  v2 = [v0 stringWithFormat:@"%@/BridgeIconCache/", v1];
  v3 = _BridgeIconCachePath___bridgeIconCachePath;
  _BridgeIconCachePath___bridgeIconCachePath = v2;
}

@end