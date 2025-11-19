@interface CCItemField(CCMediaLinkedIdentifier_type)
- (uint64_t)mediaLinkedIdentifierType;
@end

@implementation CCItemField(CCMediaLinkedIdentifier_type)

- (uint64_t)mediaLinkedIdentifierType
{
  LODWORD(result) = [a1 uint32Value];
  if (result >= 0xD)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

@end