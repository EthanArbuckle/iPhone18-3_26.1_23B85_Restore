@interface CDContextualKeyPathClass
@end

@implementation CDContextualKeyPathClass

Class __get_CDContextualKeyPathClass_block_invoke(uint64_t a1)
{
  CoreDuetContextLibrary_0();
  result = objc_getClass("_CDContextualKeyPath");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __get_CDContextualKeyPathClass_block_invoke_cold_1();
  }

  get_CDContextualKeyPathClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end