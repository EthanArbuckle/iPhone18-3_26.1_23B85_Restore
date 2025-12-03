@interface UTType(BRAdditions)
- (uint64_t)br_isDocumentType;
@end

@implementation UTType(BRAdditions)

- (uint64_t)br_isDocumentType
{
  if ([self conformsToType:*MEMORY[0x1E6982DC8]] & 1) != 0 || (objc_msgSend(self, "conformsToType:", *MEMORY[0x1E6982C80]))
  {
    return 0;
  }

  else
  {
    return [self conformsToType:*MEMORY[0x1E6982FF8]] ^ 1;
  }
}

@end