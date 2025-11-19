@interface NSData(CRKAdditions)
- (id)crk_hexString;
- (id)crk_sha1Hash;
@end

@implementation NSData(CRKAdditions)

- (id)crk_sha1Hash
{
  v5 = *MEMORY[0x277D85DE8];
  CC_SHA1([a1 bytes], objc_msgSend(a1, "length"), md);
  v1 = [MEMORY[0x277CCAB68] stringWithCapacity:40];
  for (i = 0; i != 20; ++i)
  {
    [v1 appendFormat:@"%02x", md[i]];
  }

  return v1;
}

- (id)crk_hexString
{
  v2 = [a1 bytes];
  v3 = [MEMORY[0x277CCAB68] stringWithCapacity:{2 * objc_msgSend(a1, "length")}];
  if ([a1 length])
  {
    v4 = 0;
    do
    {
      [v3 appendFormat:@"%02x", *(v2 + v4++)];
    }

    while ([a1 length] > v4);
  }

  return v3;
}

@end