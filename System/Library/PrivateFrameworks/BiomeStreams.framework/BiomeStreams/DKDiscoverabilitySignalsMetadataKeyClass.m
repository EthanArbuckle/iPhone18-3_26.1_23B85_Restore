@interface DKDiscoverabilitySignalsMetadataKeyClass
@end

@implementation DKDiscoverabilitySignalsMetadataKeyClass

Class __get_DKDiscoverabilitySignalsMetadataKeyClass_block_invoke(uint64_t a1)
{
  CoreDuetLibrary_2();
  result = objc_getClass("_DKDiscoverabilitySignalsMetadataKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __get_DKDiscoverabilitySignalsMetadataKeyClass_block_invoke_cold_1();
  }

  get_DKDiscoverabilitySignalsMetadataKeyClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end