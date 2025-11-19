@interface DKDigitalHealthMetadataKeyClass
@end

@implementation DKDigitalHealthMetadataKeyClass

Class __get_DKDigitalHealthMetadataKeyClass_block_invoke(uint64_t a1)
{
  CoreDuetLibrary();
  result = objc_getClass("_DKDigitalHealthMetadataKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __get_DKDigitalHealthMetadataKeyClass_block_invoke_cold_1();
  }

  get_DKDigitalHealthMetadataKeyClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __get_DKDigitalHealthMetadataKeyClass_block_invoke_0(uint64_t a1)
{
  CoreDuetLibrary_0();
  result = objc_getClass("_DKDigitalHealthMetadataKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __get_DKDigitalHealthMetadataKeyClass_block_invoke_cold_1_0();
  }

  get_DKDigitalHealthMetadataKeyClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end