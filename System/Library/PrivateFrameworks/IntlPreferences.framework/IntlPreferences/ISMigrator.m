@interface ISMigrator
+ (id)migratorForNewUserAccountWithVersion:(id)a3;
+ (id)migratorFromSchemaVersion:(unint64_t)a3;
+ (id)migratorFromVersion:(id)a3 toVersion:(id)a4;
- (BOOL)previousVersionIsOlderThanMacOS:(id)a3 iOS:(id)a4 watchOS:(id)a5 tvOS:(id)a6;
@end

@implementation ISMigrator

+ (id)migratorFromVersion:(id)a3 toVersion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 migratorFromVersion:v7 toVersion:v6 platform:{objc_msgSend(objc_opt_class(), "currentPlatform")}];

  return v8;
}

+ (id)migratorForNewUserAccountWithVersion:(id)a3
{
  v4 = a3;
  v5 = [a1 migratorFromVersion:&stru_28419F558 toVersion:v4 platform:objc_msgSend(objc_opt_class() newUserAccount:{"currentPlatform"), 1}];

  return v5;
}

+ (id)migratorFromSchemaVersion:(unint64_t)a3
{
  v4 = objc_opt_new();
  [v4 setPlatform:{objc_msgSend(objc_opt_class(), "currentPlatform")}];
  [v4 setPreviousSchemaVersion:a3];

  return v4;
}

- (BOOL)previousVersionIsOlderThanMacOS:(id)a3 iOS:(id)a4 watchOS:(id)a5 tvOS:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(ISMigrator *)self platform];
  v15 = 0;
  if (v14 > 2)
  {
    v16 = v12;
    if (v14 != 3)
    {
      if (v14 != 4)
      {
        goto LABEL_9;
      }

      v16 = v13;
    }

LABEL_8:
    v15 = v16;
    goto LABEL_9;
  }

  v16 = v10;
  if (v14 == 1)
  {
    goto LABEL_8;
  }

  v16 = v11;
  if (v14 == 2)
  {
    goto LABEL_8;
  }

LABEL_9:
  v17 = [(ISMigrator *)self previousVersion];
  v18 = [v17 compare:v15 options:64] == -1;

  return v18;
}

@end