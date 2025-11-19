@interface NSBundle
@end

@implementation NSBundle

uint64_t __45__NSBundle_NMSAdditions__nanoMusicSyncBundle__block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoMusicSync"];
  v1 = nanoMusicSyncBundle___nanoMusicSyncBundle;
  nanoMusicSyncBundle___nanoMusicSyncBundle = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end