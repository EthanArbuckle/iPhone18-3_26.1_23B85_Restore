@interface PoseSymbolLoc
@end

@implementation PoseSymbolLoc

void *__getkCVAFaceTracking_PoseSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppleCVALibrary();
  result = dlsym(v2, "kCVAFaceTracking_Pose");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCVAFaceTracking_PoseSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end