@interface GeometryLandmarksSymbolLoc
@end

@implementation GeometryLandmarksSymbolLoc

void *__getkCVAFaceTracking_GeometryLandmarksSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppleCVALibrary();
  result = dlsym(v2, "kCVAFaceTracking_GeometryLandmarks");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCVAFaceTracking_GeometryLandmarksSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end