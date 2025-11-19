@interface DKEventStreamClass
@end

@implementation DKEventStreamClass

Class __get_DKEventStreamClass_block_invoke(uint64_t a1)
{
  CoreDuetLibrary();
  result = objc_getClass("_DKEventStream");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __get_DKEventStreamClass_block_invoke_cold_1();
  }

  get_DKEventStreamClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __get_DKEventStreamClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class get_DKEventStreamClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"BBServer.m" lineNumber:105 description:{@"Unable to find class %s", "_DKEventStream"}];

  __break(1u);
}

@end