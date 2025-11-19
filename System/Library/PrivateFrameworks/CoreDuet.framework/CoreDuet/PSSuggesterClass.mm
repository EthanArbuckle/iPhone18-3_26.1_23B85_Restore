@interface PSSuggesterClass
@end

@implementation PSSuggesterClass

Class __get_PSSuggesterClass_block_invoke(uint64_t a1)
{
  PeopleSuggesterLibraryCore();
  result = objc_getClass("_PSSuggester");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_PSSuggesterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end