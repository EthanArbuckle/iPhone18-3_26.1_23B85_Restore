@interface NSData(CRKAdditions)
- (id)crk_hexString;
- (id)crk_sha1Hash;
@end

@implementation NSData(CRKAdditions)

- (id)crk_sha1Hash
{
  v5 = *MEMORY[0x277D85DE8];
  CC_SHA1([self bytes], objc_msgSend(self, "length"), md);
  v1 = [MEMORY[0x277CCAB68] stringWithCapacity:40];
  for (i = 0; i != 20; ++i)
  {
    [v1 appendFormat:@"%02x", md[i]];
  }

  return v1;
}

- (id)crk_hexString
{
  bytes = [self bytes];
  v3 = [MEMORY[0x277CCAB68] stringWithCapacity:{2 * objc_msgSend(self, "length")}];
  if ([self length])
  {
    v4 = 0;
    do
    {
      [v3 appendFormat:@"%02x", *(bytes + v4++)];
    }

    while ([self length] > v4);
  }

  return v3;
}

@end