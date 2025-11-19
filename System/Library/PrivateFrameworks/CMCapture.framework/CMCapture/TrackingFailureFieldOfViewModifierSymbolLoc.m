@interface TrackingFailureFieldOfViewModifierSymbolLoc
@end

@implementation TrackingFailureFieldOfViewModifierSymbolLoc

void *__getkCVAFaceTracking_TrackingFailureFieldOfViewModifierSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppleCVALibrary();
  result = dlsym(v2, "kCVAFaceTracking_TrackingFailureFieldOfViewModifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCVAFaceTracking_TrackingFailureFieldOfViewModifierSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end