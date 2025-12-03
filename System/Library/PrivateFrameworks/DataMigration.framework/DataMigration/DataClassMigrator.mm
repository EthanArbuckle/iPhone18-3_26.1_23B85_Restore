@interface DataClassMigrator
+ (id)dataClassMigratorForBundleAtPath:(id)path;
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
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)didRestoreFromBackup
{
  v2 = [(NSDictionary *)self->_context objectForKey:@"DidRestoreFromBackup"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)didMigrateBackupFromDifferentDevice
{
  v2 = [(NSDictionary *)self->_context objectForKey:@"DidMigrateBackupFromDifferentDevice"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)didRestoreFromCloudBackup
{
  v2 = [(NSDictionary *)self->_context objectForKey:@"DidRestoreFromCloudBackup"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)shouldPreserveSettingsAfterRestore
{
  v2 = [(NSDictionary *)self->_context objectForKey:@"ShouldPreserveSettingsAfterRestore"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)wasPasscodeSetInBackup
{
  v2 = [(NSDictionary *)self->_context objectForKey:@"WasPasscodeSetInBackup"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

+ (id)dataClassMigratorForBundleAtPath:(id)path
{
  pathCopy = path;
  _DMLogFunc(v3, 7, @"Will create migrator bundle at %@");
  v5 = [MEMORY[0x277CCA8D8] bundleWithPath:{pathCopy, pathCopy}];
  if (!v5)
  {
    _DMLogFunc(v3, 3, @"%@ Failed to create migration plugin bundle at %@");
LABEL_8:
    v12 = 0;
    bundleIdentifier = 0;
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
  bundleIdentifier = [v5 bundleIdentifier];
  _DMLogFunc(v3, 7, @"Will check migrator principal class");
  principalClass = [v5 principalClass];
  if (([(objc_class *)principalClass isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    _DMLogFunc(v3, 7, @"Will instantiate migrator principal class");
    v11 = objc_alloc_init(principalClass);
    v12 = v11;
    if (v11)
    {
      [v11 setDmBundleIdentifier:bundleIdentifier];
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