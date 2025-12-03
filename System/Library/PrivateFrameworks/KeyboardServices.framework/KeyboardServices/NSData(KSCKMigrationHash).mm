@interface NSData(KSCKMigrationHash)
- (uint64_t)_hashCKMigration;
@end

@implementation NSData(KSCKMigrationHash)

- (uint64_t)_hashCKMigration
{
  v5 = *MEMORY[0x277D85DE8];
  CC_MD5([self bytes], objc_msgSend(self, "length"), md);
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