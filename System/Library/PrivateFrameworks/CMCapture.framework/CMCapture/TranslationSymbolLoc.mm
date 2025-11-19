@interface TranslationSymbolLoc
@end

@implementation TranslationSymbolLoc

void *__getkCVAFaceTracking_TranslationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppleCVALibrary();
  result = dlsym(v2, "kCVAFaceTracking_Translation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCVAFaceTracking_TranslationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end