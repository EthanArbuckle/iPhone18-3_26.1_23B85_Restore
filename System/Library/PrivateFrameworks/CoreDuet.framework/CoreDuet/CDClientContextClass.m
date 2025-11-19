@interface CDClientContextClass
@end

@implementation CDClientContextClass

Class __get_CDClientContextClass_block_invoke(uint64_t a1)
{
  CoreDuetContextLibraryCore();
  result = objc_getClass("_CDClientContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_CDClientContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end