@interface PSCandidateClass
@end

@implementation PSCandidateClass

Class __get_PSCandidateClass_block_invoke(uint64_t a1)
{
  PeopleSuggesterLibraryCore();
  result = objc_getClass("_PSCandidate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_PSCandidateClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end