@interface TotalGainSymbolLoc
@end

@implementation TotalGainSymbolLoc

void *__getkCVAFaceTracking_TotalGainSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppleCVALibrary();
  result = dlsym(v2, "kCVAFaceTracking_TotalGain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCVAFaceTracking_TotalGainSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end