@interface CanBeNowPlayingAppAttributeSymbolLoc
@end

@implementation CanBeNowPlayingAppAttributeSymbolLoc

void *__getAVSystemController_CanBeNowPlayingAppAttributeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaExperienceLibrary();
  result = dlsym(v2, "AVSystemController_CanBeNowPlayingAppAttribute");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVSystemController_CanBeNowPlayingAppAttributeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVSystemController_CanBeNowPlayingAppAttributeSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = MediaExperienceLibrary_1();
  result = dlsym(v2, "AVSystemController_CanBeNowPlayingAppAttribute");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVSystemController_CanBeNowPlayingAppAttributeSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end