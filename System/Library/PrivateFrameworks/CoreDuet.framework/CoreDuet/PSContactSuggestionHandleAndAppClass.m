@interface PSContactSuggestionHandleAndAppClass
@end

@implementation PSContactSuggestionHandleAndAppClass

Class __get_PSContactSuggestionHandleAndAppClass_block_invoke(uint64_t a1)
{
  PeopleSuggesterLibraryCore();
  result = objc_getClass("_PSContactSuggestionHandleAndApp");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_PSContactSuggestionHandleAndAppClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end