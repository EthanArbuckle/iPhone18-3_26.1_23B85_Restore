@interface ExtrinsicsSymbolLoc
@end

@implementation ExtrinsicsSymbolLoc

void *__getkCVAFaceTracking_ExtrinsicsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppleCVALibrary();
  result = dlsym(v2, "kCVAFaceTracking_Extrinsics");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCVAFaceTracking_ExtrinsicsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end