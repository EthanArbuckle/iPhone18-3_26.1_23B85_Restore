@interface TrackedFacesArraySymbolLoc
@end

@implementation TrackedFacesArraySymbolLoc

void *__getkCVAFaceTracking_TrackedFacesArraySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppleCVALibrary();
  result = dlsym(v2, "kCVAFaceTracking_TrackedFacesArray");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCVAFaceTracking_TrackedFacesArraySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end