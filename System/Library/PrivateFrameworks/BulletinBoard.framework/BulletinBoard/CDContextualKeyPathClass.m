@interface CDContextualKeyPathClass
@end

@implementation CDContextualKeyPathClass

Class __get_CDContextualKeyPathClass_block_invoke(uint64_t a1)
{
  CoreDuetContextLibrary();
  result = objc_getClass("_CDContextualKeyPath");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __get_CDContextualKeyPathClass_block_invoke_cold_1();
  }

  get_CDContextualKeyPathClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __get_CDContextualKeyPathClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class get_CDContextualKeyPathClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"BBServer.m" lineNumber:113 description:{@"Unable to find class %s", "_CDContextualKeyPath"}];

  __break(1u);
}

@end