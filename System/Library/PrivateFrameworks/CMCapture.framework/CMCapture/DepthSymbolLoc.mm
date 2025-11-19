@interface DepthSymbolLoc
@end

@implementation DepthSymbolLoc

void *__getkCVAFaceTracking_DepthSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppleCVALibrary();
  result = dlsym(v2, "kCVAFaceTracking_Depth");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCVAFaceTracking_DepthSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end