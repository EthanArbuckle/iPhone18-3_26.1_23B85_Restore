@interface NSData(DataWithIntegerAddition)
+ (id)dataWithInteger:()DataWithIntegerAddition;
@end

@implementation NSData(DataWithIntegerAddition)

+ (id)dataWithInteger:()DataWithIntegerAddition
{
  v5 = a3;
  v3 = [MEMORY[0x277CBEA90] dataWithBytes:&v5 length:8];

  return v3;
}

@end