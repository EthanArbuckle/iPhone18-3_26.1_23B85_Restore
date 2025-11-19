@interface HDHearingPlugin
+ (BOOL)shouldLoadPluginForDaemon:(id)a3;
- (id)_databaseSchemaForProtectionClass:(int64_t)a3;
- (id)databaseEntitiesForProtectionClass:(int64_t)a3;
- (id)extensionForProfile:(id)a3;
- (id)orderedSyncEntities;
- (id)taskServerClasses;
- (int64_t)currentSchemaVersionForProtectionClass:(int64_t)a3;
- (void)registerMigrationStepsForProtectionClass:(int64_t)a3 migrator:(id)a4;
@end

@implementation HDHearingPlugin

+ (BOOL)shouldLoadPluginForDaemon:(id)a3
{
  v3 = [a3 behavior];
  v4 = [v3 isRealityDevice];

  return v4 ^ 1;
}

- (id)extensionForProfile:(id)a3
{
  v3 = a3;
  if ([v3 profileType] == 1)
  {
    v4 = [[HDHearingProfileExtension alloc] initWithProfile:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)taskServerClasses
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)orderedSyncEntities
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (int64_t)currentSchemaVersionForProtectionClass:(int64_t)a3
{
  v3 = [(HDHearingPlugin *)self _databaseSchemaForProtectionClass:a3];
  v4 = [v3 currentSchemaVersion];

  return v4;
}

- (id)databaseEntitiesForProtectionClass:(int64_t)a3
{
  v3 = [(HDHearingPlugin *)self _databaseSchemaForProtectionClass:a3];
  v4 = [v3 databaseEntities];

  return v4;
}

- (void)registerMigrationStepsForProtectionClass:(int64_t)a3 migrator:(id)a4
{
  v6 = a4;
  v8 = [(HDHearingPlugin *)self _databaseSchemaForProtectionClass:a3];
  v7 = [(HDHearingPlugin *)self schemaName];
  [v8 registerMigrationStepsForSchemaName:v7 migrator:v6];
}

- (id)_databaseSchemaForProtectionClass:(int64_t)a3
{
  if (a3 == 1)
  {
    v4 = &off_2796C5E88;
  }

  else
  {
    if (a3 != 2)
    {
      goto LABEL_6;
    }

    v4 = off_2796C5E80;
  }

  self = objc_alloc_init(*v4);
LABEL_6:

  return self;
}

@end