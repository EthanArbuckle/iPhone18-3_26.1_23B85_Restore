@interface PSAttachmentClass
@end

@implementation PSAttachmentClass

Class __get_PSAttachmentClass_block_invoke(uint64_t a1)
{
  PeopleSuggesterLibraryCore();
  result = objc_getClass("_PSAttachment");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_PSAttachmentClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end