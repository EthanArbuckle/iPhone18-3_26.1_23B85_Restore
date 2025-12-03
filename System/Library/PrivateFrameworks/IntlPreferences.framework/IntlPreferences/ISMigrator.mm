@interface ISMigrator
+ (id)migratorForNewUserAccountWithVersion:(id)version;
+ (id)migratorFromSchemaVersion:(unint64_t)version;
+ (id)migratorFromVersion:(id)version toVersion:(id)toVersion;
- (BOOL)previousVersionIsOlderThanMacOS:(id)s iOS:(id)oS watchOS:(id)watchOS tvOS:(id)tvOS;
@end

@implementation ISMigrator

+ (id)migratorFromVersion:(id)version toVersion:(id)toVersion
{
  toVersionCopy = toVersion;
  versionCopy = version;
  v8 = [self migratorFromVersion:versionCopy toVersion:toVersionCopy platform:{objc_msgSend(objc_opt_class(), "currentPlatform")}];

  return v8;
}

+ (id)migratorForNewUserAccountWithVersion:(id)version
{
  versionCopy = version;
  v5 = [self migratorFromVersion:&stru_28419F558 toVersion:versionCopy platform:objc_msgSend(objc_opt_class() newUserAccount:{"currentPlatform"), 1}];

  return v5;
}

+ (id)migratorFromSchemaVersion:(unint64_t)version
{
  v4 = objc_opt_new();
  [v4 setPlatform:{objc_msgSend(objc_opt_class(), "currentPlatform")}];
  [v4 setPreviousSchemaVersion:version];

  return v4;
}

- (BOOL)previousVersionIsOlderThanMacOS:(id)s iOS:(id)oS watchOS:(id)watchOS tvOS:(id)tvOS
{
  sCopy = s;
  oSCopy = oS;
  watchOSCopy = watchOS;
  tvOSCopy = tvOS;
  platform = [(ISMigrator *)self platform];
  v15 = 0;
  if (platform > 2)
  {
    v16 = watchOSCopy;
    if (platform != 3)
    {
      if (platform != 4)
      {
        goto LABEL_9;
      }

      v16 = tvOSCopy;
    }

LABEL_8:
    v15 = v16;
    goto LABEL_9;
  }

  v16 = sCopy;
  if (platform == 1)
  {
    goto LABEL_8;
  }

  v16 = oSCopy;
  if (platform == 2)
  {
    goto LABEL_8;
  }

LABEL_9:
  previousVersion = [(ISMigrator *)self previousVersion];
  v18 = [previousVersion compare:v15 options:64] == -1;

  return v18;
}

@end