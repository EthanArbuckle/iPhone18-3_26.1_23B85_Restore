@interface SWCollaborationMetadataClass
@end

@implementation SWCollaborationMetadataClass

void __get_SWCollaborationMetadataClass_block_invoke(uint64_t a1)
{
  SharedWithYouLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("_SWCollaborationMetadata");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_SWCollaborationMetadataClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __get_SWCollaborationMetadataClass_block_invoke_cold_1();
    SharedWithYouLibrary();
  }
}

@end