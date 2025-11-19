@interface CDClientContextClass
@end

@implementation CDClientContextClass

Class __get_CDClientContextClass_block_invoke(uint64_t a1)
{
  CoreDuetContextLibrary();
  result = objc_getClass("_CDClientContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __get_CDClientContextClass_block_invoke_cold_1();
  }

  get_CDClientContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __get_CDClientContextClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class get_CDClientContextClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"BBServer.m" lineNumber:114 description:{@"Unable to find class %s", "_CDClientContext"}];

  __break(1u);
}

@end