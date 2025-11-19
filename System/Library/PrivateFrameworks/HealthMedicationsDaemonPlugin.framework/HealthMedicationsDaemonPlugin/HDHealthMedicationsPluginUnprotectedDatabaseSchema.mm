@interface HDHealthMedicationsPluginUnprotectedDatabaseSchema
- (int64_t)currentSchemaVersion;
@end

@implementation HDHealthMedicationsPluginUnprotectedDatabaseSchema

- (int64_t)currentSchemaVersion
{
  v2 = [MEMORY[0x277D115D0] sharedBehavior];
  [v2 medicationsFutureMigrationsEnabled];

  return 0;
}

@end