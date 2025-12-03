@interface NSData(SHA256Hash)
- (id)hmmtr_sha256hash;
@end

@implementation NSData(SHA256Hash)

- (id)hmmtr_sha256hash
{
  v7 = *MEMORY[0x277D85DE8];
  CC_SHA256([self bytes], objc_msgSend(self, "length"), md);
  v1 = [MEMORY[0x277CCAB68] stringWithCapacity:64];
  for (i = 0; i != 32; ++i)
  {
    [v1 appendFormat:@"%02x", md[i]];
  }

  v3 = [MEMORY[0x277CCACA8] stringWithString:v1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

@end