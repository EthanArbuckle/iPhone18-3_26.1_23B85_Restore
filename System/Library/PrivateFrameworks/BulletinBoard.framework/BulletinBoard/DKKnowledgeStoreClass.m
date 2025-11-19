@interface DKKnowledgeStoreClass
@end

@implementation DKKnowledgeStoreClass

Class __get_DKKnowledgeStoreClass_block_invoke(uint64_t a1)
{
  CoreDuetLibrary();
  result = objc_getClass("_DKKnowledgeStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __get_DKKnowledgeStoreClass_block_invoke_cold_1();
  }

  get_DKKnowledgeStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __get_DKKnowledgeStoreClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class get_DKKnowledgeStoreClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"BBServer.m" lineNumber:109 description:{@"Unable to find class %s", "_DKKnowledgeStore"}];

  __break(1u);
}

@end