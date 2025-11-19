@interface LuxLevelSymbolLoc
@end

@implementation LuxLevelSymbolLoc

void *__getkCVAFaceTracking_LuxLevelSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppleCVALibrary();
  result = dlsym(v2, "kCVAFaceTracking_LuxLevel");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCVAFaceTracking_LuxLevelSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end