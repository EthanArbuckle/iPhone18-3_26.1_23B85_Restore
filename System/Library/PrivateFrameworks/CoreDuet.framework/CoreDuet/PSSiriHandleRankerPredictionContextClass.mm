@interface PSSiriHandleRankerPredictionContextClass
@end

@implementation PSSiriHandleRankerPredictionContextClass

Class __get_PSSiriHandleRankerPredictionContextClass_block_invoke(uint64_t a1)
{
  PeopleSuggesterLibraryCore();
  result = objc_getClass("_PSSiriHandleRankerPredictionContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_PSSiriHandleRankerPredictionContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end