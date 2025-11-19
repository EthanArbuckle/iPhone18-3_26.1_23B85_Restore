@interface NSObject(CALExtensions)
- (BOOL)isNull;
@end

@implementation NSObject(CALExtensions)

- (BOOL)isNull
{
  v2 = [MEMORY[0x277CBEB68] null];
  v3 = v2 == a1;

  return v3;
}

@end