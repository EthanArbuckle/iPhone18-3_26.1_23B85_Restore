@interface DataClassMigrator
+ (id)dataClassMigratorForBundleAtPath:(id)a3;
- (BOOL)didMigrateBackupFromDifferentDevice;
- (BOOL)didRestoreFromBackup;
- (BOOL)didRestoreFromCloudBackup;
- (BOOL)didUpgrade;
- (BOOL)shouldPreserveSettingsAfterRestore;
- (BOOL)wasPasscodeSetInBackup;
@end

@implementation DataClassMigrator

- (BOOL)didUpgrade
{
  v2 = [(NSDictionary *)self->_context objectForKey:@"SyntheticDidUpgrade"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)didRestoreFromBackup
{
  v2 = [(NSDictionary *)self->_context objectForKey:@"DidRestoreFromBackup"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)didMigrateBackupFromDifferentDevice
{
  v2 = [(NSDictionary *)self->_context objectForKey:@"DidMigrateBackupFromDifferentDevice"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)didRestoreFromCloudBackup
{
  v2 = [(NSDictionary *)self->_context objectForKey:@"DidRestoreFromCloudBackup"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)shouldPreserveSettingsAfterRestore
{
  v2 = [(NSDictionary *)self->_context objectForKey:@"ShouldPreserveSettingsAfterRestore"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)wasPasscodeSetInBackup
{
  v2 = [(NSDictionary *)self->_context objectForKey:@"WasPasscodeSetInBackup"];
  v3 = [v2 BOOLValue];

  return v3;
}

+ (id)dataClassMigratorForBundleAtPath:(id)a3
{
  v4 = a3;
  _DMLogFunc(v3, 7, @"Will create migrator bundle at %@");
  v5 = [MEMORY[0x277CCA8D8] bundleWithPath:{v4, v4}];
  if (!v5)
  {
    _DMLogFunc(v3, 3, @"%@ Failed to create migration plugin bundle at %@");
LABEL_8:
    v12 = 0;
    v9 = 0;
    goto LABEL_9;
  }

  _DMLogFunc(v3, 7, @"Will load migrator bundle");
  v14 = 0;
  v6 = [v5 loadAndReturnError:&v14];
  v7 = v14;
  v8 = v7;
  if ((v6 & 1) == 0)
  {
    _DMLogFunc(v3, 3, @"Cannot load migrator bundle at %@ with error %@");

    goto LABEL_8;
  }

  _DMLogFunc(v3, 7, @"Will get migrator bundle identifier");
  v9 = [v5 bundleIdentifier];
  _DMLogFunc(v3, 7, @"Will check migrator principal class");
  v10 = [v5 principalClass];
  if (([(objc_class *)v10 isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    _DMLogFunc(v3, 7, @"Will instantiate migrator principal class");
    v11 = objc_alloc_init(v10);
    v12 = v11;
    if (v11)
    {
      [v11 setDmBundleIdentifier:v9];
    }

    else
    {
      _DMLogFunc(v3, 3, @"Cannot instantiate migrator at %@");
    }
  }

  else
  {
    _DMLogFunc(v3, 3, @"Wrong principal class (%@) for migration plugin bundle at %@");
    v12 = 0;
  }

LABEL_9:

  return v12;
}

@end