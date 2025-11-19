@interface NSObject(BLTNSNullRemoval)
- (id)objectWithNoNSNulls:()BLTNSNullRemoval;
@end

@implementation NSObject(BLTNSNullRemoval)

- (id)objectWithNoNSNulls:()BLTNSNullRemoval
{
  v2 = [MEMORY[0x277CBEB68] null];

  if (v2 == a1)
  {
    v3 = 0;
  }

  else
  {
    v3 = a1;
  }

  return v3;
}

@end