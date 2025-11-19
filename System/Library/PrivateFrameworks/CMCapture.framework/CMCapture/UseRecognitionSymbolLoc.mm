@interface UseRecognitionSymbolLoc
@end

@implementation UseRecognitionSymbolLoc

void *__getkCVAFaceTracking_UseRecognitionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppleCVALibrary();
  result = dlsym(v2, "kCVAFaceTracking_UseRecognition");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCVAFaceTracking_UseRecognitionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end