@interface ColorSymbolLoc
@end

@implementation ColorSymbolLoc

void *__getkCVAFaceTracking_ColorSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppleCVALibrary();
  result = dlsym(v2, "kCVAFaceTracking_Color");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCVAFaceTracking_ColorSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end