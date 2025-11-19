@interface PSAutocompleteSuggestionClass
@end

@implementation PSAutocompleteSuggestionClass

Class __get_PSAutocompleteSuggestionClass_block_invoke(uint64_t a1)
{
  PeopleSuggesterLibraryCore();
  result = objc_getClass("_PSAutocompleteSuggestion");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_PSAutocompleteSuggestionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end