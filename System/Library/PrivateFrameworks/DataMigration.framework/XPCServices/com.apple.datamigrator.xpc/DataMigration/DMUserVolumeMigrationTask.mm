@interface DMUserVolumeMigrationTask
+ (id)createTaskIfAppropriateWithEnvironment:(id)environment;
+ (void)_migrateSharedAndPrimaryUserVolumeWithUserManager:(id)manager;
@end

@implementation DMUserVolumeMigrationTask

+ (id)createTaskIfAppropriateWithEnvironment:(id)environment
{
  environmentCopy = environment;
  if ([environmentCopy deviceModeIsSharediPad] && !objc_msgSend(environmentCopy, "userSessionIsLoginWindow"))
  {
    v4 = 0;
  }

  else
  {
    v4 = objc_alloc_init(DMUserVolumeMigrationTask);
    [(DMUserVolumeMigrationTask *)v4 setName:@"User volume migration"];
    [(DMUserVolumeMigrationTask *)v4 setEstimatedDurationTimeInterval:10.0];
    [(DMUserVolumeMigrationTask *)v4 setTelemetryIdentifier:@"com.apple.datamigrator.UserVolumeMigration"];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10000B764;
    v6[3] = &unk_1000246D8;
    v7 = environmentCopy;
    [(DMUserVolumeMigrationTask *)v4 setWorkBlock:v6];
  }

  return v4;
}

+ (void)_migrateSharedAndPrimaryUserVolumeWithUserManager:(id)manager
{
  managerCopy = manager;
  _DMLogFunc();
  v9 = 0;
  v4 = [managerCopy migrateSharedAndPrimaryUserVolumeWithError:&v9];
  v5 = v9;
  v6 = v5;
  if (v4)
  {
    v7 = v5;
  }

  else
  {
    do
    {
      _DMLogFunc();
      _DMLogFunc();
      v9 = v6;
      v8 = [managerCopy migrateSharedAndPrimaryUserVolumeWithError:{&v9, v6}];
      v7 = v9;

      v6 = v7;
    }

    while (!v8);
  }

  _DMLogFunc();
}

@end