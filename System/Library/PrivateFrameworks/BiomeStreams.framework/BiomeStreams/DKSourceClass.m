@interface DKSourceClass
@end

@implementation DKSourceClass

Class __get_DKSourceClass_block_invoke(uint64_t a1)
{
  CoreDuetLibrary_2();
  result = objc_getClass("_DKSource");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __get_DKSourceClass_block_invoke_cold_1();
  }

  get_DKSourceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end