@interface SWMutableCollaborationMetadataClass
@end

@implementation SWMutableCollaborationMetadataClass

Class __get_SWMutableCollaborationMetadataClass_block_invoke(uint64_t a1)
{
  SharedWithYouLibrary();
  result = objc_getClass("_SWMutableCollaborationMetadata");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_SWMutableCollaborationMetadataClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __get_SWMutableCollaborationMetadataClass_block_invoke_cold_1();
    return [(_BlastDoorLPPlatformColor *)v3 copyWithZone:v4, v5];
  }

  return result;
}

@end