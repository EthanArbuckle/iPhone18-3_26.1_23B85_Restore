@interface PSPredictionContextClass
@end

@implementation PSPredictionContextClass

Class __get_PSPredictionContextClass_block_invoke(uint64_t a1)
{
  PeopleSuggesterLibraryCore();
  result = objc_getClass("_PSPredictionContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_PSPredictionContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end