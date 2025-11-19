@interface IntrinsicsSymbolLoc
@end

@implementation IntrinsicsSymbolLoc

void *__getkCVAFaceTracking_IntrinsicsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppleCVALibrary();
  result = dlsym(v2, "kCVAFaceTracking_Intrinsics");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCVAFaceTracking_IntrinsicsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end