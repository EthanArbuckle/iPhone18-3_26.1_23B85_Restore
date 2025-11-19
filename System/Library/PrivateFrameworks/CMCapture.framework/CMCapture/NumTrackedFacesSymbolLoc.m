@interface NumTrackedFacesSymbolLoc
@end

@implementation NumTrackedFacesSymbolLoc

void *__getkCVAFaceTracking_NumTrackedFacesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppleCVALibrary();
  result = dlsym(v2, "kCVAFaceTracking_NumTrackedFaces");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCVAFaceTracking_NumTrackedFacesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end