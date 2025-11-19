@interface DKIdentifier
@end

@implementation DKIdentifier

_DKObjectType *__79___DKIdentifier_MOConversion___identifierFromManagedObject_readMetadata_cache___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) identifierType];

  return [(_DKObjectType *)_DKIdentifierType objectTypeWithTypeCode:v1];
}

@end