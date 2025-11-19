@interface HDHeartDaemonPlugin
+ (BOOL)shouldLoadPluginForDaemon:(id)a3;
- (HDHeartDaemonPlugin)init;
- (HDHeartDaemonPlugin)initWithHeartNotificationsUserDefaults:(id)a3;
- (id)_databaseSchemaForProtectionClass:(int64_t)a3;
- (id)databaseEntitiesForProtectionClass:(int64_t)a3;
- (id)demoDataGeneratorClasses;
- (id)extensionForHealthDaemon:(id)a3;
- (id)extensionForProfile:(id)a3;
- (id)stateSyncEntityClasses;
- (id)taskServerClasses;
- (int64_t)currentSchemaVersionForProtectionClass:(int64_t)a3;
- (void)handleDatabaseObliteration;
- (void)registerMigrationStepsForProtectionClass:(int64_t)a3 migrator:(id)a4;
@end

@implementation HDHeartDaemonPlugin

- (HDHeartDaemonPlugin)init
{
  v3 = objc_alloc(MEMORY[0x277CBEBD0]);
  v4 = [v3 initWithSuiteName:*MEMORY[0x277CCE458]];
  v5 = [(HDHeartDaemonPlugin *)self initWithHeartNotificationsUserDefaults:v4];

  return v5;
}

- (HDHeartDaemonPlugin)initWithHeartNotificationsUserDefaults:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HDHeartDaemonPlugin;
  v6 = [(HDHeartDaemonPlugin *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_heartNotificationsUserDefaults, a3);
  }

  return v7;
}

+ (BOOL)shouldLoadPluginForDaemon:(id)a3
{
  v3 = [a3 behavior];
  v4 = [v3 isRealityDevice];

  return v4 ^ 1;
}

- (id)extensionForProfile:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [[HDHeartProfileExtension alloc] initWithProfile:v4 heartNotificationsUserDefaults:self->_heartNotificationsUserDefaults];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)extensionForHealthDaemon:(id)a3
{
  v4 = a3;
  v5 = [[HDHeartDaemonExtension alloc] initWithHealthDaemon:v4 heartNotificationsUserDefaults:self->_heartNotificationsUserDefaults];

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

- (int64_t)currentSchemaVersionForProtectionClass:(int64_t)a3
{
  v3 = [(HDHeartDaemonPlugin *)self _databaseSchemaForProtectionClass:a3];
  v4 = [v3 currentSchemaVersion];

  return v4;
}

- (id)databaseEntitiesForProtectionClass:(int64_t)a3
{
  v3 = [(HDHeartDaemonPlugin *)self _databaseSchemaForProtectionClass:a3];
  v4 = [v3 databaseEntities];

  return v4;
}

- (void)registerMigrationStepsForProtectionClass:(int64_t)a3 migrator:(id)a4
{
  v6 = a4;
  v8 = [(HDHeartDaemonPlugin *)self _databaseSchemaForProtectionClass:a3];
  v7 = [(HDHeartDaemonPlugin *)self schemaName];
  [v8 registerMigrationStepsForSchemaName:v7 migrator:v6];
}

- (id)demoDataGeneratorClasses
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)_databaseSchemaForProtectionClass:(int64_t)a3
{
  if (a3 == 1)
  {
    v4 = off_27865ECA8;
  }

  else
  {
    if (a3 != 2)
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