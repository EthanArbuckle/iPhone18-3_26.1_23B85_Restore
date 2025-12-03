@interface NSObject(BLTNSNullRemoval)
- (id)objectWithNoNSNulls:()BLTNSNullRemoval;
@end

@implementation NSObject(BLTNSNullRemoval)

- (id)objectWithNoNSNulls:()BLTNSNullRemoval
{
  null = [MEMORY[0x277CBEB68] null];

  if (null == self)
  {
    selfCopy = 0;
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

@end