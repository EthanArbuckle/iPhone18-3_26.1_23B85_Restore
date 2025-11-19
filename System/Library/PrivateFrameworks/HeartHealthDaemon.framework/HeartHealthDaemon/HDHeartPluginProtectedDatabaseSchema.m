@interface HDHeartPluginProtectedDatabaseSchema
- (NSArray)databaseEntities;
- (int64_t)currentSchemaVersion;
- (void)addMigrationTo:(int64_t)a3 onMigrator:(id)a4 forSchema:(id)a5 function:(void *)a6;
- (void)luck_addMigrationStepsForSchemaName:(id)a3 migrator:(id)a4;
- (void)registerMigrationStepsForSchemaName:(id)a3 migrator:(id)a4;
@end

@implementation HDHeartPluginProtectedDatabaseSchema

- (int64_t)currentSchemaVersion
{
  v2 = [MEMORY[0x277CCDD30] sharedBehavior];
  v3 = [v2 futureMigrationsEnabled];

  if (v3)
  {
    return 100000;
  }

  else
  {
    return 6;
  }
}

- (NSArray)databaseEntities
{
  v2 = [MEMORY[0x277CBEB18] arrayWithObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];

  return v2;
}

- (void)registerMigrationStepsForSchemaName:(id)a3 migrator:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(HDHeartPluginProtectedDatabaseSchema *)self crystal_addMigrationStepsForSchemaName:v7 migrator:v6];
  [(HDHeartPluginProtectedDatabaseSchema *)self luck_addMigrationStepsForSchemaName:v7 migrator:v6];
}

- (void)addMigrationTo:(int64_t)a3 onMigrator:(id)a4 forSchema:(id)a5 function:(void *)a6
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __85__HDHeartPluginProtectedDatabaseSchema_addMigrationTo_onMigrator_forSchema_function___block_invoke;
  v6[3] = &__block_descriptor_40_e70_q40__0__HDDatabaseMigrator_8__HDDatabaseMigrationTransaction_16q24__32l;
  v6[4] = a6;
  [a4 addMigrationForSchema:a5 toVersion:a3 foreignKeyStatus:0 handler:v6];
}

- (void)luck_addMigrationStepsForSchemaName:(id)a3 migrator:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(HDHeartPluginProtectedDatabaseSchema *)self addMigrationTo:5 onMigrator:v6 forSchema:v7 function:_HDAddHeartCLogTables];
  [(HDHeartPluginProtectedDatabaseSchema *)self addMigrationTo:6 onMigrator:v6 forSchema:v7 function:_HDAddHeartCLogTables];
}

@end