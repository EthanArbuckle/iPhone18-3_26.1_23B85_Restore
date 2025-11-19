@interface TimestampSymbolLoc
@end

@implementation TimestampSymbolLoc

void *__getkCVAFaceTracking_TimestampSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppleCVALibrary();
  result = dlsym(v2, "kCVAFaceTracking_Timestamp");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCVAFaceTracking_TimestampSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end