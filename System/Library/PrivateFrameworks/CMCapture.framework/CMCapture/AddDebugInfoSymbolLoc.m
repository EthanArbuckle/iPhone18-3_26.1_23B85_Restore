@interface AddDebugInfoSymbolLoc
@end

@implementation AddDebugInfoSymbolLoc

void *__getkCVAFaceTracking_AddDebugInfoSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppleCVALibrary();
  result = dlsym(v2, "kCVAFaceTracking_AddDebugInfo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCVAFaceTracking_AddDebugInfoSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end