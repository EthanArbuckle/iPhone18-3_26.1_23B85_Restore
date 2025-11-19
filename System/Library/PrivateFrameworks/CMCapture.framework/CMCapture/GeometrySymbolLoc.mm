@interface GeometrySymbolLoc
@end

@implementation GeometrySymbolLoc

void *__getkCVAFaceTracking_GeometrySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppleCVALibrary();
  result = dlsym(v2, "kCVAFaceTracking_Geometry");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCVAFaceTracking_GeometrySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end