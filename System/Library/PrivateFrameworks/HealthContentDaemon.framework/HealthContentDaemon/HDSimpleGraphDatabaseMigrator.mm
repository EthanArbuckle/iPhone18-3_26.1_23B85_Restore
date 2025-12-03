@interface HDSimpleGraphDatabaseMigrator
+ (id)_futureMigrationSteps;
+ (id)_migrationSteps;
+ (id)migrationStepsWithBehavior:(id)behavior;
@end

@implementation HDSimpleGraphDatabaseMigrator

+ (id)migrationStepsWithBehavior:(id)behavior
{
  behaviorCopy = behavior;
  v4 = +[HDSimpleGraphDatabaseMigrator _migrationSteps];
  supportsOntologyDatabaseFutureMigrations = [behaviorCopy supportsOntologyDatabaseFutureMigrations];

  if (supportsOntologyDatabaseFutureMigrations)
  {
    v6 = +[HDSimpleGraphDatabaseMigrator _futureMigrationSteps];
    v7 = [v4 arrayByAddingObjectsFromArray:v6];

    v4 = v7;
  }

  return v4;
}

+ (id)_migrationSteps
{
  v7[4] = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v0 = [HDSimpleGraphDatabaseMigrationStep migrationToVersion:5 function:_removeUserDataAndAdHocConcepts];
  v7[0] = v0;
  v1 = [HDSimpleGraphDatabaseMigrationStep migrationToVersion:6 function:_improveOntologyDatabaseSchema];
  v7[1] = v1;
  v2 = [HDSimpleGraphDatabaseMigrationStep migrationToVersion:7 function:_shardedOntologySupport];
  v7[2] = v2;
  v3 = [HDSimpleGraphDatabaseMigrationStep migrationToVersion:8 function:_removeOrphanedSydneyContent];
  v7[3] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:4];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)_futureMigrationSteps
{
  v5[2] = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v0 = [HDSimpleGraphDatabaseMigrationStep migrationToVersion:10001 function:_noOpSuccess];
  v5[0] = v0;
  v1 = [HDSimpleGraphDatabaseMigrationStep migrationToVersion:10002 function:_noOpSuccess];
  v5[1] = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end