@interface DisparityInvalidValueSymbolLoc
@end

@implementation DisparityInvalidValueSymbolLoc

void *__getkCVAFaceTracking_DisparityInvalidValueSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppleCVALibrary();
  result = dlsym(v2, "kCVAFaceTracking_DisparityInvalidValue");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCVAFaceTracking_DisparityInvalidValueSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end