@interface CDContextualKeyPathClass
@end

@implementation CDContextualKeyPathClass

Class __get_CDContextualKeyPathClass_block_invoke(uint64_t a1)
{
  CoreDuetContextLibraryCore();
  result = objc_getClass("_CDContextualKeyPath");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_CDContextualKeyPathClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end