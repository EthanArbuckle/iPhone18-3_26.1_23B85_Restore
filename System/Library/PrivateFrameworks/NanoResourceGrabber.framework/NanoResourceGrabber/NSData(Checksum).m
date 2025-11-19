@interface NSData(Checksum)
- (BOOL)matchesChecksum:()Checksum;
- (id)checksumData;
- (uint64_t)checksumDataToChecksum:()Checksum;
- (uint64_t)matchesChecksumData:()Checksum;
- (unsigned)checksum:()Checksum;
@end

@implementation NSData(Checksum)

- (id)checksumData
{
  v5 = *MEMORY[0x277D85DE8];
  [a1 checksum:v4];
  v1 = [MEMORY[0x277CBEA90] dataWithBytes:v4 length:32];
  v2 = *MEMORY[0x277D85DE8];

  return v1;
}

- (unsigned)checksum:()Checksum
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v5 = [a1 bytes];
  v6 = [a1 length];

  return CC_SHA256(v5, v6, a3);
}

- (uint64_t)checksumDataToChecksum:()Checksum
{
  *a3 = 0u;
  a3[1] = 0u;
  return [a1 getBytes:? length:?];
}

- (BOOL)matchesChecksum:()Checksum
{
  v9[4] = *MEMORY[0x277D85DE8];
  [a1 checksum:v9];
  result = *a3 == v9[0] && a3[1] == v9[1] && a3[2] == v9[2] && a3[3] == v9[3];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (uint64_t)matchesChecksumData:()Checksum
{
  v7 = *MEMORY[0x277D85DE8];
  [a3 checksumDataToChecksum:v6];
  result = [a1 matchesChecksum:v6];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

@end