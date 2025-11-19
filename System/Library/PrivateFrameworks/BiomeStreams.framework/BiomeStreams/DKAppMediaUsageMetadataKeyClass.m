@interface DKAppMediaUsageMetadataKeyClass
@end

@implementation DKAppMediaUsageMetadataKeyClass

Class __get_DKAppMediaUsageMetadataKeyClass_block_invoke(uint64_t a1)
{
  CoreDuetLibrary_0();
  result = objc_getClass("_DKAppMediaUsageMetadataKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __get_DKAppMediaUsageMetadataKeyClass_block_invoke_cold_1();
  }

  get_DKAppMediaUsageMetadataKeyClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end