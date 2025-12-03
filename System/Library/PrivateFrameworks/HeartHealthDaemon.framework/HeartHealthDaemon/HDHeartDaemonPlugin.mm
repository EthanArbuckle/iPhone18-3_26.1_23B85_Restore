@interface HDHeartDaemonPlugin
+ (BOOL)shouldLoadPluginForDaemon:(id)daemon;
- (HDHeartDaemonPlugin)init;
- (HDHeartDaemonPlugin)initWithHeartNotificationsUserDefaults:(id)defaults;
- (id)_databaseSchemaForProtectionClass:(int64_t)class;
- (id)databaseEntitiesForProtectionClass:(int64_t)class;
- (id)demoDataGeneratorClasses;
- (id)extensionForHealthDaemon:(id)daemon;
- (id)extensionForProfile:(id)profile;
- (id)stateSyncEntityClasses;
- (id)taskServerClasses;
- (int64_t)currentSchemaVersionForProtectionClass:(int64_t)class;
- (void)handleDatabaseObliteration;
- (void)registerMigrationStepsForProtectionClass:(int64_t)class migrator:(id)migrator;
@end

@implementation HDHeartDaemonPlugin

- (HDHeartDaemonPlugin)init
{
  v3 = objc_alloc(MEMORY[0x277CBEBD0]);
  v4 = [v3 initWithSuiteName:*MEMORY[0x277CCE458]];
  v5 = [(HDHeartDaemonPlugin *)self initWithHeartNotificationsUserDefaults:v4];

  return v5;
}

- (HDHeartDaemonPlugin)initWithHeartNotificationsUserDefaults:(id)defaults
{
  defaultsCopy = defaults;
  v9.receiver = self;
  v9.super_class = HDHeartDaemonPlugin;
  v6 = [(HDHeartDaemonPlugin *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_heartNotificationsUserDefaults, defaults);
  }

  return v7;
}

+ (BOOL)shouldLoadPluginForDaemon:(id)daemon
{
  behavior = [daemon behavior];
  isRealityDevice = [behavior isRealityDevice];

  return isRealityDevice ^ 1;
}

- (id)extensionForProfile:(id)profile
{
  profileCopy = profile;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [[HDHeartProfileExtension alloc] initWithProfile:profileCopy heartNotificationsUserDefaults:self->_heartNotificationsUserDefaults];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)extensionForHealthDaemon:(id)daemon
{
  daemonCopy = daemon;
  v5 = [[HDHeartDaemonExtension alloc] initWithHealthDaemon:daemonCopy heartNotificationsUserDefaults:self->_heartNotificationsUserDefaults];

  return v5;
}

- (void)handleDatabaseObliteration
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEBD0];
  v3 = *MEMORY[0x277CCE458];
  v6[0] = *MEMORY[0x277CCE460];
  v6[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  [v2 hk_deleteDomainsNamed:v4];

  v5 = *MEMORY[0x277D85DE8];
}

- (id)taskServerClasses
{
  v5[6] = *MEMORY[0x277D85DE8];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = objc_opt_class();
  v5[3] = objc_opt_class();
  v5[4] = objc_opt_class();
  v5[5] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:6];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (int64_t)currentSchemaVersionForProtectionClass:(int64_t)class
{
  v3 = [(HDHeartDaemonPlugin *)self _databaseSchemaForProtectionClass:class];
  currentSchemaVersion = [v3 currentSchemaVersion];

  return currentSchemaVersion;
}

- (id)databaseEntitiesForProtectionClass:(int64_t)class
{
  v3 = [(HDHeartDaemonPlugin *)self _databaseSchemaForProtectionClass:class];
  databaseEntities = [v3 databaseEntities];

  return databaseEntities;
}

- (void)registerMigrationStepsForProtectionClass:(int64_t)class migrator:(id)migrator
{
  migratorCopy = migrator;
  v8 = [(HDHeartDaemonPlugin *)self _databaseSchemaForProtectionClass:class];
  schemaName = [(HDHeartDaemonPlugin *)self schemaName];
  [v8 registerMigrationStepsForSchemaName:schemaName migrator:migratorCopy];
}

- (id)demoDataGeneratorClasses
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)_databaseSchemaForProtectionClass:(int64_t)class
{
  if (class == 1)
  {
    v4 = off_27865ECA8;
  }

  else
  {
    if (class != 2)
    {
      goto LABEL_6;
    }

    v4 = off_27865ECA0;
  }

  self = objc_alloc_init(*v4);
LABEL_6:

  return self;
}

- (id)stateSyncEntityClasses
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end