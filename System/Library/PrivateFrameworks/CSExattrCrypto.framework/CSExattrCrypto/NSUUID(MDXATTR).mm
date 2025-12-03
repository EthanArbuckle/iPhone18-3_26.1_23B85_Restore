@interface NSUUID(MDXATTR)
- (uint64_t)MDUUIDData;
@end

@implementation NSUUID(MDXATTR)

- (uint64_t)MDUUIDData
{
  v3[2] = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  v3[1] = 0;
  [self getUUIDBytes:v3];
  result = [MEMORY[0x277CBEA90] dataWithBytes:v3 length:16];
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

@end