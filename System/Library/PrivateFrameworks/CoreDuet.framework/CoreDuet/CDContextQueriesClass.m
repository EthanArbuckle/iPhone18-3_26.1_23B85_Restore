@interface CDContextQueriesClass
@end

@implementation CDContextQueriesClass

Class __get_CDContextQueriesClass_block_invoke(uint64_t a1)
{
  CoreDuetContextLibraryCore();
  result = objc_getClass("_CDContextQueries");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_CDContextQueriesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end