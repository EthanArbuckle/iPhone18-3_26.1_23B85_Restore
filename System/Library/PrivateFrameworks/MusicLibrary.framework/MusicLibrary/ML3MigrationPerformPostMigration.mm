@interface ML3MigrationPerformPostMigration
@end

@implementation ML3MigrationPerformPostMigration

uint64_t ___ML3MigrationPerformPostMigration_block_invoke_26(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) notifyContentsDidChange];
  }

  return result;
}

@end