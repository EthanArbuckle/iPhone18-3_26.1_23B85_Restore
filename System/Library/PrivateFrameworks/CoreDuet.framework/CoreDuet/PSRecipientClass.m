@interface PSRecipientClass
@end

@implementation PSRecipientClass

Class __get_PSRecipientClass_block_invoke(uint64_t a1)
{
  PeopleSuggesterLibraryCore();
  result = objc_getClass("_PSRecipient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_PSRecipientClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end