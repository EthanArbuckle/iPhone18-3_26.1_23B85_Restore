@interface SmoothDataSymbolLoc
@end

@implementation SmoothDataSymbolLoc

void *__getkCVAFaceTracking_SmoothDataSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppleCVALibrary();
  result = dlsym(v2, "kCVAFaceTracking_SmoothData");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCVAFaceTracking_SmoothDataSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end