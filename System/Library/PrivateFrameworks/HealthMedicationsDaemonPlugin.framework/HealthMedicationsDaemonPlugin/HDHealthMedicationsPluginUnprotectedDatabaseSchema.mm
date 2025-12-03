@interface HDHealthMedicationsPluginUnprotectedDatabaseSchema
- (int64_t)currentSchemaVersion;
@end

@implementation HDHealthMedicationsPluginUnprotectedDatabaseSchema

- (int64_t)currentSchemaVersion
{
  mEMORY[0x277D115D0] = [MEMORY[0x277D115D0] sharedBehavior];
  [mEMORY[0x277D115D0] medicationsFutureMigrationsEnabled];

  return 0;
}

@end