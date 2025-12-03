@interface HDHearingPlugin
+ (BOOL)shouldLoadPluginForDaemon:(id)daemon;
- (id)_databaseSchemaForProtectionClass:(int64_t)class;
- (id)databaseEntitiesForProtectionClass:(int64_t)class;
- (id)extensionForProfile:(id)profile;
- (id)orderedSyncEntities;
- (id)taskServerClasses;
- (int64_t)currentSchemaVersionForProtectionClass:(int64_t)class;
- (void)registerMigrationStepsForProtectionClass:(int64_t)class migrator:(id)migrator;
@end

@implementation HDHearingPlugin

+ (BOOL)shouldLoadPluginForDaemon:(id)daemon
{
  behavior = [daemon behavior];
  isRealityDevice = [behavior isRealityDevice];

  return isRealityDevice ^ 1;
}

- (id)extensionForProfile:(id)profile
{
  profileCopy = profile;
  if ([profileCopy profileType] == 1)
  {
    v4 = [[HDHearingProfileExtension alloc] initWithProfile:profileCopy];
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

- (int64_t)currentSchemaVersionForProtectionClass:(int64_t)class
{
  v3 = [(HDHearingPlugin *)self _databaseSchemaForProtectionClass:class];
  currentSchemaVersion = [v3 currentSchemaVersion];

  return currentSchemaVersion;
}

- (id)databaseEntitiesForProtectionClass:(int64_t)class
{
  v3 = [(HDHearingPlugin *)self _databaseSchemaForProtectionClass:class];
  databaseEntities = [v3 databaseEntities];

  return databaseEntities;
}

- (void)registerMigrationStepsForProtectionClass:(int64_t)class migrator:(id)migrator
{
  migratorCopy = migrator;
  v8 = [(HDHearingPlugin *)self _databaseSchemaForProtectionClass:class];
  schemaName = [(HDHearingPlugin *)self schemaName];
  [v8 registerMigrationStepsForSchemaName:schemaName migrator:migratorCopy];
}

- (id)_databaseSchemaForProtectionClass:(int64_t)class
{
  if (class == 1)
  {
    v4 = &off_2796C5E88;
  }

  else
  {
    if (class != 2)
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