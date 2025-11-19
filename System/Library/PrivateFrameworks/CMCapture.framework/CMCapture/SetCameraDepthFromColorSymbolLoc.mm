@interface SetCameraDepthFromColorSymbolLoc
@end

@implementation SetCameraDepthFromColorSymbolLoc

void *__getkCVAFaceTracking_SetCameraDepthFromColorSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppleCVALibrary();
  result = dlsym(v2, "kCVAFaceTracking_SetCameraDepthFromColor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCVAFaceTracking_SetCameraDepthFromColorSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end