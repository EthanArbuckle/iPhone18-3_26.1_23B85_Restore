@interface PSContactSuggestionClass
@end

@implementation PSContactSuggestionClass

Class __get_PSContactSuggestionClass_block_invoke(uint64_t a1)
{
  PeopleSuggesterLibraryCore();
  result = objc_getClass("_PSContactSuggestion");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_PSContactSuggestionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end