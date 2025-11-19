@interface DetectedFaceFaceIDSymbolLoc
@end

@implementation DetectedFaceFaceIDSymbolLoc

void *__getkCVAFaceTracking_DetectedFaceFaceIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppleCVALibrary();
  result = dlsym(v2, "kCVAFaceTracking_DetectedFaceFaceID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCVAFaceTracking_DetectedFaceFaceIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end