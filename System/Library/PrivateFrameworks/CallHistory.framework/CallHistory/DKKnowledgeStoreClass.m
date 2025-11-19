@interface DKKnowledgeStoreClass
@end

@implementation DKKnowledgeStoreClass

CHConfiguration *__get_DKKnowledgeStoreClass_block_invoke(uint64_t a1)
{
  CoreDuetLibrary_0();
  result = objc_getClass("_DKKnowledgeStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_DKKnowledgeStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __get_DKKnowledgeStoreClass_block_invoke_cold_1();
    return [(CHConfiguration *)v3 initWithDataSource:v4, v5];
  }

  return result;
}

@end