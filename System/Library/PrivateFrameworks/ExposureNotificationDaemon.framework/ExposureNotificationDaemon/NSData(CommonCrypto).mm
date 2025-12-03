@interface NSData(CommonCrypto)
- (id)sha256;
@end

@implementation NSData(CommonCrypto)

- (id)sha256
{
  v5 = *MEMORY[0x277D85DE8];
  memset(v4, 0, sizeof(v4));
  v1 = CC_SHA256([self bytes], objc_msgSend(self, "length"), v4);
  if (v1)
  {
    v1 = [MEMORY[0x277CBEA98] dataWithBytes:v4 length:32];
  }

  v2 = *MEMORY[0x277D85DE8];

  return v1;
}

@end