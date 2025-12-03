@interface NSString(SubCalDigest)
- (id)modTagForSubCal;
@end

@implementation NSString(SubCalDigest)

- (id)modTagForSubCal
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [self length];
  v3 = 2 * v2;
  v4 = malloc_type_malloc(2 * v2, 0xEBDA0727uLL);
  [self getCharacters:v4];
  memset(&c, 0, sizeof(c));
  CC_SHA1_Init(&c);
  data = 0;
  CC_SHA1_Update(&c, &data, 4u);
  CC_SHA1_Update(&c, v4, v3);
  CC_SHA1_Final(md, &c);
  free(v4);
  v5 = [MEMORY[0x277CBEA90] dataWithBytes:md length:20];
  da_hexString = [v5 da_hexString];

  v7 = *MEMORY[0x277D85DE8];

  return da_hexString;
}

@end