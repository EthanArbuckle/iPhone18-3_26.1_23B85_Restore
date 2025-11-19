@interface CallbackSymbolLoc
@end

@implementation CallbackSymbolLoc

void *__getkCVAFaceTracking_CallbackSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppleCVALibrary();
  result = dlsym(v2, "kCVAFaceTracking_Callback");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCVAFaceTracking_CallbackSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end