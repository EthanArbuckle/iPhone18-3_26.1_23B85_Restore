@interface CCItemField(CCPhotosPetRelationshipContent_type)
- (uint64_t)photosPetRelationshipContentType;
@end

@implementation CCItemField(CCPhotosPetRelationshipContent_type)

- (uint64_t)photosPetRelationshipContentType
{
  LODWORD(result) = [a1 uint32Value];
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

@end