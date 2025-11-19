@interface PSContactSuggesterClass
@end

@implementation PSContactSuggesterClass

Class __get_PSContactSuggesterClass_block_invoke(uint64_t a1)
{
  PeopleSuggesterLibraryCore();
  result = objc_getClass("_PSContactSuggester");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_PSContactSuggesterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end