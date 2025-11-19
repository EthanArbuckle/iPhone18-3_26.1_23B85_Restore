@interface NSString(SFUCryptoUtilsAdditions)
- (id)tsu_sha256HexHashString;
@end

@implementation NSString(SFUCryptoUtilsAdditions)

- (id)tsu_sha256HexHashString
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [OISFUCryptoUtils sha256HashFromString:a1];
  v2 = v9;
  [v1 getBytes:v9 length:32];
  v3 = 65;
  v4 = malloc_type_malloc(0x41uLL, 0x100004077774924uLL);
  v5 = v4;
  do
  {
    v6 = *v2++;
    snprintf(v5, v3, "%02x", v6);
    v5 += 2;
    v3 -= 2;
  }

  while (v3 != 1);
  v4[64] = 0;
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:v4];
  free(v4);

  return v7;
}

@end