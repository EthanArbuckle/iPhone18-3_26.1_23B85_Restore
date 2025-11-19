@interface DKEventQueryClass
@end

@implementation DKEventQueryClass

void __get_DKEventQueryClass_block_invoke(uint64_t a1)
{
  CoreDuetLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("_DKEventQuery");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_DKEventQueryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __get_DKEventQueryClass_block_invoke_cold_1();
    CoreDuetLibrary_0();
  }
}

@end