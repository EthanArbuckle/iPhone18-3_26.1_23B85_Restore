@interface DKPREventClass
@end

@implementation DKPREventClass

Class __get_DKPREventClass_block_invoke(uint64_t a1)
{
  CoreDuetLibrary_1();
  result = objc_getClass("_DKPREvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __get_DKPREventClass_block_invoke_cold_1();
  }

  get_DKPREventClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end