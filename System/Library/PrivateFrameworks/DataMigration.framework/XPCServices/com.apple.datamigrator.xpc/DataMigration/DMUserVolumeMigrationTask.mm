@interface DMUserVolumeMigrationTask
+ (id)createTaskIfAppropriateWithEnvironment:(id)a3;
+ (void)_migrateSharedAndPrimaryUserVolumeWithUserManager:(id)a3;
@end

@implementation DMUserVolumeMigrationTask

+ (id)createTaskIfAppropriateWithEnvironment:(id)a3
{
  v3 = a3;
  if ([v3 deviceModeIsSharediPad] && !objc_msgSend(v3, "userSessionIsLoginWindow"))
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
    v7 = v3;
    [(DMUserVolumeMigrationTask *)v4 setWorkBlock:v6];
  }

  return v4;
}

+ (void)_migrateSharedAndPrimaryUserVolumeWithUserManager:(id)a3
{
  v3 = a3;
  _DMLogFunc();
  v9 = 0;
  v4 = [v3 migrateSharedAndPrimaryUserVolumeWithError:&v9];
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
      v8 = [v3 migrateSharedAndPrimaryUserVolumeWithError:{&v9, v6}];
      v7 = v9;

      v6 = v7;
    }

    while (!v8);
  }

  _DMLogFunc();
}

@end