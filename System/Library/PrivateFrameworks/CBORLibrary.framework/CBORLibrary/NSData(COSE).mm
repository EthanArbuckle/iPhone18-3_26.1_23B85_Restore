@interface NSData(COSE)
+ (id)dataWithCOSE:()COSE;
@end

@implementation NSData(COSE)

+ (id)dataWithCOSE:()COSE
{
  v3 = MEMORY[0x277CBEA90];
  sourceObject = [(COSE *)a3 sourceObject];
  v5 = [v3 dataWithCBOR:sourceObject];

  return v5;
}

@end