@interface NSString(SHA256Hash)
- (id)sha256Hash;
@end

@implementation NSString(SHA256Hash)

- (id)sha256Hash
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 UTF8String];
  v2 = strlen(v1);
  CC_SHA256(v1, v2, md);
  v3 = [MEMORY[0x277CCAB68] stringWithCapacity:64];
  for (i = 0; i != 32; ++i)
  {
    [v3 appendFormat:@"%02x", md[i]];
  }

  v5 = [MEMORY[0x277CCACA8] stringWithString:v3];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

@end