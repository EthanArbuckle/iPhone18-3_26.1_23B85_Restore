@interface NSData(MD5)
- (id)blt_sha256;
- (id)blt_sha256String;
- (unsigned)MD5:()MD5;
@end

@implementation NSData(MD5)

- (id)blt_sha256
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = CC_SHA256([self bytes], objc_msgSend(self, "length"), md);
  if (v1)
  {
    v1 = [MEMORY[0x277CBEA90] dataWithBytes:md length:32];
  }

  v2 = *MEMORY[0x277D85DE8];

  return v1;
}

- (id)blt_sha256String
{
  blt_sha256 = [self blt_sha256];
  v2 = [blt_sha256 base64EncodedStringWithOptions:0];

  return v2;
}

- (unsigned)MD5:()MD5
{
  if (!a3)
  {
    [NSData(MD5) MD5:];
  }

  bytes = [self bytes];
  v6 = [self length];

  return CC_MD5(bytes, v6, a3);
}

@end