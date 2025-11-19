@interface StructuredLightOccludedSymbolLoc
@end

@implementation StructuredLightOccludedSymbolLoc

void *__getkCVAFaceTracking_StructuredLightOccludedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppleCVALibrary();
  result = dlsym(v2, "kCVAFaceTracking_StructuredLightOccluded");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCVAFaceTracking_StructuredLightOccludedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end