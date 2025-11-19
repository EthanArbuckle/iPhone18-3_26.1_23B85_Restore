@interface DepthMetaDataSymbolLoc
@end

@implementation DepthMetaDataSymbolLoc

void *__getkCVAFaceTracking_DepthMetaDataSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppleCVALibrary();
  result = dlsym(v2, "kCVAFaceTracking_DepthMetaData");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCVAFaceTracking_DepthMetaDataSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end