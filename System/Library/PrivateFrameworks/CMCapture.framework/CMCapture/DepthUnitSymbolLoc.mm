@interface DepthUnitSymbolLoc
@end

@implementation DepthUnitSymbolLoc

void *__getkCVAFaceTracking_DepthUnitSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppleCVALibrary();
  result = dlsym(v2, "kCVAFaceTracking_DepthUnit");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCVAFaceTracking_DepthUnitSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end