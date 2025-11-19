@interface PSMapsPredictionContextClass
@end

@implementation PSMapsPredictionContextClass

Class __get_PSMapsPredictionContextClass_block_invoke(uint64_t a1)
{
  PeopleSuggesterLibraryCore();
  result = objc_getClass("_PSMapsPredictionContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_PSMapsPredictionContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end