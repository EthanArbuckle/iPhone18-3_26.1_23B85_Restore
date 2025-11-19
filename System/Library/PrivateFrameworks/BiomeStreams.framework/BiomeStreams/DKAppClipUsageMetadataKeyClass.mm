@interface DKAppClipUsageMetadataKeyClass
@end

@implementation DKAppClipUsageMetadataKeyClass

Class __get_DKAppClipUsageMetadataKeyClass_block_invoke(uint64_t a1)
{
  CoreDuetLibrary_0();
  result = objc_getClass("_DKAppClipUsageMetadataKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __get_DKAppClipUsageMetadataKeyClass_block_invoke_cold_1();
  }

  get_DKAppClipUsageMetadataKeyClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end