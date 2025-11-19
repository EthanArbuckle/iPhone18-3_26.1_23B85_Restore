@interface NetworkFailureThresholdMultiplierSymbolLoc
@end

@implementation NetworkFailureThresholdMultiplierSymbolLoc

void *__getkCVAFaceTracking_NetworkFailureThresholdMultiplierSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppleCVALibrary();
  result = dlsym(v2, "kCVAFaceTracking_NetworkFailureThresholdMultiplier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCVAFaceTracking_NetworkFailureThresholdMultiplierSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end