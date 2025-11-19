@interface PSFeedbackClass
@end

@implementation PSFeedbackClass

Class __get_PSFeedbackClass_block_invoke(uint64_t a1)
{
  PeopleSuggesterLibraryCore();
  result = objc_getClass("_PSFeedback");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_PSFeedbackClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end