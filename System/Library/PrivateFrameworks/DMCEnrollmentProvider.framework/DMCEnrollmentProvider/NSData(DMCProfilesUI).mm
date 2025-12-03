@interface NSData(DMCProfilesUI)
- (id)DMCProfileHexString;
@end

@implementation NSData(DMCProfilesUI)

- (id)DMCProfileHexString
{
  v2 = [MEMORY[0x277CCAB68] stringWithCapacity:{2 * objc_msgSend(self, "length")}];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__NSData_DMCProfilesUI__DMCProfileHexString__block_invoke;
  v6[3] = &unk_278EE8260;
  v7 = v2;
  v3 = v2;
  [self enumerateByteRangesUsingBlock:v6];
  v4 = [v3 copy];

  return v4;
}

@end