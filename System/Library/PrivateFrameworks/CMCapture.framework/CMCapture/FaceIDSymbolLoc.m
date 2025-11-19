@interface FaceIDSymbolLoc
@end

@implementation FaceIDSymbolLoc

void *__getkCVAFaceTracking_FaceIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppleCVALibrary();
  result = dlsym(v2, "kCVAFaceTracking_FaceID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCVAFaceTracking_FaceIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end