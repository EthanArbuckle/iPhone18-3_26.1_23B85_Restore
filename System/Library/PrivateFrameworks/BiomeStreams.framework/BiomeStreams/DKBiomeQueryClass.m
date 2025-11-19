@interface DKBiomeQueryClass
@end

@implementation DKBiomeQueryClass

Class __get_DKBiomeQueryClass_block_invoke(uint64_t a1)
{
  CoreDuetLibrary_3();
  result = objc_getClass("_DKBiomeQuery");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __get_DKBiomeQueryClass_block_invoke_cold_1();
  }

  get_DKBiomeQueryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end