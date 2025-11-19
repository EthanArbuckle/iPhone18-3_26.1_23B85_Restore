@interface PSContactHandleFeatureProviderClass
@end

@implementation PSContactHandleFeatureProviderClass

Class __get_PSContactHandleFeatureProviderClass_block_invoke(uint64_t a1)
{
  PeopleSuggesterLibraryCore();
  result = objc_getClass("_PSContactHandleFeatureProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_PSContactHandleFeatureProviderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end