@interface CKMediaObjectGenerateOOPPreviewMetadata
@end

@implementation CKMediaObjectGenerateOOPPreviewMetadata

uint64_t ___CKMediaObjectGenerateOOPPreviewMetadata_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

@end