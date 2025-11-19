@interface DetectedFacesArraySymbolLoc
@end

@implementation DetectedFacesArraySymbolLoc

void *__getkCVAFaceTracking_DetectedFacesArraySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppleCVALibrary();
  result = dlsym(v2, "kCVAFaceTracking_DetectedFacesArray");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCVAFaceTracking_DetectedFacesArraySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end