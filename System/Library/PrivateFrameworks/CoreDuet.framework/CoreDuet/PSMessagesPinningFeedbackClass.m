@interface PSMessagesPinningFeedbackClass
@end

@implementation PSMessagesPinningFeedbackClass

Class __get_PSMessagesPinningFeedbackClass_block_invoke(uint64_t a1)
{
  PeopleSuggesterLibraryCore();
  result = objc_getClass("_PSMessagesPinningFeedback");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_PSMessagesPinningFeedbackClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end