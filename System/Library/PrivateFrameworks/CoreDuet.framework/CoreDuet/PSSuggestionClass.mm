@interface PSSuggestionClass
@end

@implementation PSSuggestionClass

Class __get_PSSuggestionClass_block_invoke(uint64_t a1)
{
  PeopleSuggesterLibraryCore();
  result = objc_getClass("_PSSuggestion");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_PSSuggestionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end