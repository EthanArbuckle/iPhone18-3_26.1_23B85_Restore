@interface NSData(COSE)
+ (id)dataWithCOSE:()COSE;
@end

@implementation NSData(COSE)

+ (id)dataWithCOSE:()COSE
{
  v3 = MEMORY[0x277CBEA90];
  v4 = [(COSE *)a3 sourceObject];
  v5 = [v3 dataWithCBOR:v4];

  return v5;
}

@end