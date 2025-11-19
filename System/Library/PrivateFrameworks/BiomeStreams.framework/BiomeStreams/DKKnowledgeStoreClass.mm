@interface DKKnowledgeStoreClass
@end

@implementation DKKnowledgeStoreClass

Class __get_DKKnowledgeStoreClass_block_invoke(uint64_t a1)
{
  CoreDuetLibrary_0();
  result = objc_getClass("_DKKnowledgeStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __get_DKKnowledgeStoreClass_block_invoke_cold_1();
  }

  get_DKKnowledgeStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __get_DKKnowledgeStoreClass_block_invoke_0(uint64_t a1)
{
  CoreDuetLibrary_2();
  result = objc_getClass("_DKKnowledgeStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __get_DKKnowledgeStoreClass_block_invoke_cold_1_0();
  }

  get_DKKnowledgeStoreClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __get_DKKnowledgeStoreClass_block_invoke_1(uint64_t a1)
{
  CoreDuetLibrary_3();
  result = objc_getClass("_DKKnowledgeStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __get_DKKnowledgeStoreClass_block_invoke_cold_1_1();
  }

  get_DKKnowledgeStoreClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end