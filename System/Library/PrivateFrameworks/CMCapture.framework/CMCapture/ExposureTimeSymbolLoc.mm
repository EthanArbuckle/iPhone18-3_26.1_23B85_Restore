@interface ExposureTimeSymbolLoc
@end

@implementation ExposureTimeSymbolLoc

void *__getkCVAFaceTracking_ExposureTimeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppleCVALibrary();
  result = dlsym(v2, "kCVAFaceTracking_ExposureTime");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCVAFaceTracking_ExposureTimeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end