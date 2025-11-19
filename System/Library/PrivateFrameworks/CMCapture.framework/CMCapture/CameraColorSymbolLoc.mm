@interface CameraColorSymbolLoc
@end

@implementation CameraColorSymbolLoc

void *__getkCVAFaceTracking_CameraColorSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppleCVALibrary();
  result = dlsym(v2, "kCVAFaceTracking_CameraColor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCVAFaceTracking_CameraColorSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end