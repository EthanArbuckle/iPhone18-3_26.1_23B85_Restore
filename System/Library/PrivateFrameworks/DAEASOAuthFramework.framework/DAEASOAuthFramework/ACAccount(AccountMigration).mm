@interface ACAccount(AccountMigration)
- (__CFString)migrationStatusString;
- (uint64_t)migrationStatus;
- (void)setMigrationStatus:()AccountMigration;
@end

@implementation ACAccount(AccountMigration)

- (uint64_t)migrationStatus
{
  v2 = *MEMORY[0x277D07A70];
  v3 = [a1 objectForKeyedSubscript:*MEMORY[0x277D07A70]];

  if (!v3)
  {
    return 5;
  }

  v4 = [a1 objectForKeyedSubscript:v2];
  v5 = [v4 unsignedIntegerValue];

  return v5;
}

- (__CFString)migrationStatusString
{
  v1 = [a1 migrationStatus];
  if ((v1 - 1) > 4)
  {
    return @"Attempting";
  }

  else
  {
    return off_278EE0510[v1 - 1];
  }
}

- (void)setMigrationStatus:()AccountMigration
{
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  [a1 setObject:v2 forKeyedSubscript:*MEMORY[0x277D07A70]];
}

@end