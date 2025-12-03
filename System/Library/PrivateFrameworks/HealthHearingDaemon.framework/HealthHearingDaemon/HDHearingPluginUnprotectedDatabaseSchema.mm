@interface HDHearingPluginUnprotectedDatabaseSchema
- (NSArray)databaseEntities;
- (void)registerMigrationStepsForSchemaName:(id)name migrator:(id)migrator;
@end

@implementation HDHearingPluginUnprotectedDatabaseSchema

- (NSArray)databaseEntities
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)registerMigrationStepsForSchemaName:(id)name migrator:(id)migrator
{
  migratorCopy = migrator;
  nameCopy = name;
  [migratorCopy addMigrationForSchema:nameCopy toVersion:3 foreignKeyStatus:0 handler:&__block_literal_global_1];
  [migratorCopy addMigrationForSchema:nameCopy toVersion:4 foreignKeyStatus:0 handler:&__block_literal_global_304];
  [migratorCopy addMigrationForSchema:nameCopy toVersion:5 foreignKeyStatus:0 handler:&__block_literal_global_309];
  [migratorCopy addMigrationForSchema:nameCopy toVersion:6 foreignKeyStatus:0 handler:&__block_literal_global_314];
  [migratorCopy addMigrationForSchema:nameCopy toVersion:7 foreignKeyStatus:0 handler:&__block_literal_global_316];
  [migratorCopy addMigrationForSchema:nameCopy toVersion:8 foreignKeyStatus:0 handler:&__block_literal_global_321];
  [migratorCopy addMigrationForSchema:nameCopy toVersion:9 foreignKeyStatus:0 handler:&__block_literal_global_323];
}

uint64_t __89__HDHearingPluginUnprotectedDatabaseSchema_registerMigrationStepsForSchemaName_migrator___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = [a3 unprotectedDatabase];
  LODWORD(a5) = [v6 executeSQLStatements:&unk_2863A9C80 error:a5];

  return a5 ^ 1;
}

uint64_t __89__HDHearingPluginUnprotectedDatabaseSchema_registerMigrationStepsForSchemaName_migrator___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = [a3 unprotectedDatabase];
  LODWORD(a5) = [v6 executeUncachedSQL:@"DROP TABLE IF EXISTS hearing_headphone_audio_exposure_data;" error:a5];

  return a5 ^ 1;
}

uint64_t __89__HDHearingPluginUnprotectedDatabaseSchema_registerMigrationStepsForSchemaName_migrator___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = [a3 unprotectedDatabase];
  LODWORD(a5) = [v6 executeUncachedSQL:@"DELETE FROM hearing_headphone_audio_exposure_statistics;" error:a5];

  return a5 ^ 1;
}

uint64_t __89__HDHearingPluginUnprotectedDatabaseSchema_registerMigrationStepsForSchemaName_migrator___block_invoke_4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = [a3 unprotectedDatabase];
  LODWORD(a5) = [v6 executeUncachedSQL:@"DELETE FROM hearing_headphone_audio_exposure_statistics;" error:a5];

  return a5 ^ 1;
}

uint64_t __89__HDHearingPluginUnprotectedDatabaseSchema_registerMigrationStepsForSchemaName_migrator___block_invoke_5(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = [a3 unprotectedDatabase];
  LODWORD(a5) = [v6 executeUncachedSQL:@"DELETE FROM key_value WHERE domain='Hearing' and key='_LargestSevenDayDoseToday';" error:a5];

  return a5 ^ 1;
}

uint64_t __89__HDHearingPluginUnprotectedDatabaseSchema_registerMigrationStepsForSchemaName_migrator___block_invoke_6(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = [a3 unprotectedDatabase];
  LODWORD(a5) = [v6 executeUncachedSQL:@"DELETE FROM hearing_headphone_audio_exposure_statistics;" error:a5];

  return a5 ^ 1;
}

uint64_t __89__HDHearingPluginUnprotectedDatabaseSchema_registerMigrationStepsForSchemaName_migrator___block_invoke_7(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = [a3 unprotectedDatabase];
  LODWORD(a5) = [v6 executeSQLStatements:&unk_2863A9C98 error:a5];

  return a5 ^ 1;
}

@end