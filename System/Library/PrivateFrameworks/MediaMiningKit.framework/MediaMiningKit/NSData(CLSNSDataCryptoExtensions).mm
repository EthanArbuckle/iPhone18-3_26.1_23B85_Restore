@interface NSData(CLSNSDataCryptoExtensions)
- (id)cls_hexString;
- (id)cls_sha1Hash;
@end

@implementation NSData(CLSNSDataCryptoExtensions)

- (id)cls_hexString
{
  v2 = [self length];
  bytes = [self bytes];
  v4 = malloc_type_calloc(1uLL, (2 * v2) | 1, 0xCC7C4C37uLL);
  if (v4)
  {
    v5 = v4;
    if (v2)
    {
      v6 = 0;
      v7 = 0;
      v8 = 1;
      do
      {
        snprintf(&v5[v6], ((2 * v2) | 1) - v6, "%02x", *(bytes + v7));
        v7 = v8;
        v9 = v2 > v8++;
        v6 += 2;
      }

      while (v9);
    }

    v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v5 length:2 * v2 encoding:4];
    free(v5);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)cls_sha1Hash
{
  v6 = *MEMORY[0x277D85DE8];
  memset(&v4, 0, sizeof(v4));
  CC_SHA1_Init(&v4);
  CC_SHA1_Update(&v4, [self bytes], objc_msgSend(self, "length"));
  CC_SHA1_Final(md, &v4);
  v2 = [MEMORY[0x277CBEA90] dataWithBytes:md length:20];

  return v2;
}

@end