@interface ThreadPrioritySymbolLoc
@end

@implementation ThreadPrioritySymbolLoc

void *__getkCVAFaceTracking_ThreadPrioritySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppleCVALibrary();
  result = dlsym(v2, "kCVAFaceTracking_ThreadPriority");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCVAFaceTracking_ThreadPrioritySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end