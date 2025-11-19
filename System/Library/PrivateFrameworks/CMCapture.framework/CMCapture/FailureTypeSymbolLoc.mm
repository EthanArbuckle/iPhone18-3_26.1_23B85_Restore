@interface FailureTypeSymbolLoc
@end

@implementation FailureTypeSymbolLoc

void *__getkCVAFaceTracking_FailureTypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppleCVALibrary();
  result = dlsym(v2, "kCVAFaceTracking_FailureType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCVAFaceTracking_FailureTypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end