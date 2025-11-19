@interface RotationSymbolLoc
@end

@implementation RotationSymbolLoc

void *__getkCVAFaceTracking_RotationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppleCVALibrary();
  result = dlsym(v2, "kCVAFaceTracking_Rotation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCVAFaceTracking_RotationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end