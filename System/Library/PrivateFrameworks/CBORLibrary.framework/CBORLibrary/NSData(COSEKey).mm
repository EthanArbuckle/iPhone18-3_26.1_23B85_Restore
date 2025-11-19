@interface NSData(COSEKey)
+ (id)dataWithCOSEKey:()COSEKey;
@end

@implementation NSData(COSEKey)

+ (id)dataWithCOSEKey:()COSEKey
{
  v3 = MEMORY[0x277CBEA90];
  v4 = [(COSE *)a3 sourceObject];
  v5 = [v3 dataWithCBOR:v4];

  return v5;
}

@end