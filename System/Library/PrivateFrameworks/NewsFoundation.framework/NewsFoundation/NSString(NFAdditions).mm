@interface NSString(NFAdditions)
- (id)nf_sha1;
- (id)nf_stringByReversingString;
@end

@implementation NSString(NFAdditions)

- (id)nf_sha1
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = [a1 dataUsingEncoding:4];
  CC_SHA1([v1 bytes], objc_msgSend(v1, "length"), md);
  v2 = [MEMORY[0x277CCAB68] stringWithCapacity:40];
  for (i = 0; i != 20; ++i)
  {
    [v2 appendFormat:@"%02x", md[i]];
  }

  v4 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)nf_stringByReversingString
{
  v2 = [a1 length];
  v3 = [MEMORY[0x277CCAB68] stringWithCapacity:v2];
  if (v2)
  {
    v4 = v2 - 1;
    do
    {
      v5 = [a1 characterAtIndex:v4];
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%c", v5];
      [v3 appendString:v6];

      --v4;
    }

    while (v4 != -1);
  }

  return v3;
}

@end