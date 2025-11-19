@interface PSCNAutocompleteFeedbackClass
@end

@implementation PSCNAutocompleteFeedbackClass

Class __get_PSCNAutocompleteFeedbackClass_block_invoke(uint64_t a1)
{
  PeopleSuggesterLibraryCore();
  result = objc_getClass("_PSCNAutocompleteFeedback");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_PSCNAutocompleteFeedbackClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end