@interface DepthSourceSymbolLoc
@end

@implementation DepthSourceSymbolLoc

void *__getkCVAFaceTracking_DepthSourceSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppleCVALibrary();
  result = dlsym(v2, "kCVAFaceTracking_DepthSource");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCVAFaceTracking_DepthSourceSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end