@interface CCItemField(CCAssistantSchema_type)
- (uint64_t)assistantSchemaType;
@end

@implementation CCItemField(CCAssistantSchema_type)

- (uint64_t)assistantSchemaType
{
  LODWORD(result) = [a1 uint32Value];
  if (result >= 0x2F)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

@end