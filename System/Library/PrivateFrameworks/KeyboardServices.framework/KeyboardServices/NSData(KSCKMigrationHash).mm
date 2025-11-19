@interface NSData(KSCKMigrationHash)
- (uint64_t)_hashCKMigration;
@end

@implementation NSData(KSCKMigrationHash)

- (uint64_t)_hashCKMigration
{
  v5 = *MEMORY[0x277D85DE8];
  CC_MD5([a1 bytes], objc_msgSend(a1, "length"), md);
  if (v4 >= 0)
  {
    result = v4;
  }

  else
  {
    result = -v4;
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

@end