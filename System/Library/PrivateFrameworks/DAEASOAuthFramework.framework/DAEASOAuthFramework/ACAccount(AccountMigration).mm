@interface ACAccount(AccountMigration)
- (__CFString)migrationStatusString;
- (uint64_t)migrationStatus;
- (void)setMigrationStatus:()AccountMigration;
@end

@implementation ACAccount(AccountMigration)

- (uint64_t)migrationStatus
{
  v2 = *MEMORY[0x277D07A70];
  v3 = [self objectForKeyedSubscript:*MEMORY[0x277D07A70]];

  if (!v3)
  {
    return 5;
  }

  v4 = [self objectForKeyedSubscript:v2];
  unsignedIntegerValue = [v4 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (__CFString)migrationStatusString
{
  migrationStatus = [self migrationStatus];
  if ((migrationStatus - 1) > 4)
  {
    return @"Attempting";
  }

  else
  {
    return off_278EE0510[migrationStatus - 1];
  }
}

- (void)setMigrationStatus:()AccountMigration
{
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  [self setObject:v2 forKeyedSubscript:*MEMORY[0x277D07A70]];
}

@end