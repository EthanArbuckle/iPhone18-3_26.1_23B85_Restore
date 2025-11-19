@interface NanoPhotosUI
@end

@implementation NanoPhotosUI

uint64_t __nanophotos_log_NanoPhotosUI_block_invoke()
{
  _MergedGlobals = os_log_create("com.apple.NanoPhotos", "NanoPhotosUI");

  return MEMORY[0x2821F96F8]();
}

@end