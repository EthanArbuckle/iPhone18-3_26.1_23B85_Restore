@interface DetectedFaceRectSymbolLoc
@end

@implementation DetectedFaceRectSymbolLoc

void *__getkCVAFaceTracking_DetectedFaceRectSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppleCVALibrary();
  result = dlsym(v2, "kCVAFaceTracking_DetectedFaceRect");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCVAFaceTracking_DetectedFaceRectSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end