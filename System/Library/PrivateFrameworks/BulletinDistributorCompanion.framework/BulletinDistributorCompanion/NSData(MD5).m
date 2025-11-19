@interface NSData(MD5)
- (id)blt_sha256;
- (id)blt_sha256String;
- (unsigned)MD5:()MD5;
@end

@implementation NSData(MD5)

- (id)blt_sha256
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = CC_SHA256([a1 bytes], objc_msgSend(a1, "length"), md);
  if (v1)
  {
    v1 = [MEMORY[0x277CBEA90] dataWithBytes:md length:32];
  }

  v2 = *MEMORY[0x277D85DE8];

  return v1;
}

- (id)blt_sha256String
{
  v1 = [a1 blt_sha256];
  v2 = [v1 base64EncodedStringWithOptions:0];

  return v2;
}

- (unsigned)MD5:()MD5
{
  if (!a3)
  {
    [NSData(MD5) MD5:];
  }

  v5 = [a1 bytes];
  v6 = [a1 length];

  return CC_MD5(v5, v6, a3);
}

@end