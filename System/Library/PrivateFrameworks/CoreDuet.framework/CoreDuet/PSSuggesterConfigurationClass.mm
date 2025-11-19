@interface PSSuggesterConfigurationClass
@end

@implementation PSSuggesterConfigurationClass

Class __get_PSSuggesterConfigurationClass_block_invoke(uint64_t a1)
{
  PeopleSuggesterLibraryCore();
  result = objc_getClass("_PSSuggesterConfiguration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_PSSuggesterConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end