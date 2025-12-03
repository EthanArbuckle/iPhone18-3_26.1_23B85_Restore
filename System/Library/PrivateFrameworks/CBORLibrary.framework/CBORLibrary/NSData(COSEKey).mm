@interface NSData(COSEKey)
+ (id)dataWithCOSEKey:()COSEKey;
@end

@implementation NSData(COSEKey)

+ (id)dataWithCOSEKey:()COSEKey
{
  v3 = MEMORY[0x277CBEA90];
  sourceObject = [(COSE *)a3 sourceObject];
  v5 = [v3 dataWithCBOR:sourceObject];

  return v5;
}

@end