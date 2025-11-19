@interface CameraDepthSymbolLoc
@end

@implementation CameraDepthSymbolLoc

void *__getkCVAFaceTracking_CameraDepthSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppleCVALibrary();
  result = dlsym(v2, "kCVAFaceTracking_CameraDepth");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCVAFaceTracking_CameraDepthSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end