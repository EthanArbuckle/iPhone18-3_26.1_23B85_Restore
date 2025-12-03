@interface NSObject(CALExtensions)
- (BOOL)isNull;
@end

@implementation NSObject(CALExtensions)

- (BOOL)isNull
{
  null = [MEMORY[0x277CBEB68] null];
  v3 = null == self;

  return v3;
}

@end