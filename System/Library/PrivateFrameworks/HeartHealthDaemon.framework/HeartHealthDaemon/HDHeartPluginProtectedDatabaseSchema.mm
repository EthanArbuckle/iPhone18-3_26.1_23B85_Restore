@interface HDHeartPluginProtectedDatabaseSchema
- (NSArray)databaseEntities;
- (int64_t)currentSchemaVersion;
- (void)addMigrationTo:(int64_t)to onMigrator:(id)migrator forSchema:(id)schema function:(void *)function;
- (void)luck_addMigrationStepsForSchemaName:(id)name migrator:(id)migrator;
- (void)registerMigrationStepsForSchemaName:(id)name migrator:(id)migrator;
@end

@implementation HDHeartPluginProtectedDatabaseSchema

- (int64_t)currentSchemaVersion
{
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  futureMigrationsEnabled = [mEMORY[0x277CCDD30] futureMigrationsEnabled];

  if (futureMigrationsEnabled)
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

- (void)registerMigrationStepsForSchemaName:(id)name migrator:(id)migrator
{
  migratorCopy = migrator;
  nameCopy = name;
  [(HDHeartPluginProtectedDatabaseSchema *)self crystal_addMigrationStepsForSchemaName:nameCopy migrator:migratorCopy];
  [(HDHeartPluginProtectedDatabaseSchema *)self luck_addMigrationStepsForSchemaName:nameCopy migrator:migratorCopy];
}

- (void)addMigrationTo:(int64_t)to onMigrator:(id)migrator forSchema:(id)schema function:(void *)function
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __85__HDHeartPluginProtectedDatabaseSchema_addMigrationTo_onMigrator_forSchema_function___block_invoke;
  v6[3] = &__block_descriptor_40_e70_q40__0__HDDatabaseMigrator_8__HDDatabaseMigrationTransaction_16q24__32l;
  v6[4] = function;
  [migrator addMigrationForSchema:schema toVersion:to foreignKeyStatus:0 handler:v6];
}

- (void)luck_addMigrationStepsForSchemaName:(id)name migrator:(id)migrator
{
  migratorCopy = migrator;
  nameCopy = name;
  [(HDHeartPluginProtectedDatabaseSchema *)self addMigrationTo:5 onMigrator:migratorCopy forSchema:nameCopy function:_HDAddHeartCLogTables];
  [(HDHeartPluginProtectedDatabaseSchema *)self addMigrationTo:6 onMigrator:migratorCopy forSchema:nameCopy function:_HDAddHeartCLogTables];
}

@end