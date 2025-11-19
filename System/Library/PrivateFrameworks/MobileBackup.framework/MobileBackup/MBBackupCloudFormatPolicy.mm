@interface MBBackupCloudFormatPolicy
+ (int64_t)_snapshotFormatForAccount:(id)a3 behaviorOptionsFormat:(int64_t)a4 previousSnapshot:(id)a5;
+ (int64_t)snapshotFormatForAccount:(id)a3 previousSnapshot:(id)a4 error:(id *)a5;
@end

@implementation MBBackupCloudFormatPolicy

+ (int64_t)snapshotFormatForAccount:(id)a3 previousSnapshot:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = +[MBBehaviorOptions sharedOptions];
  v17 = 0;
  v11 = [v10 _snapshotFormat:&v17];
  v12 = v17;
  v13 = v12;
  if (v12)
  {
    if (a5)
    {
      v14 = v12;
      *a5 = v13;
    }

    v15 = -1;
  }

  else
  {
    v15 = [a1 _snapshotFormatForAccount:v8 behaviorOptionsFormat:v11 previousSnapshot:v9];
  }

  return v15;
}

+ (int64_t)_snapshotFormatForAccount:(id)a3 behaviorOptionsFormat:(int64_t)a4 previousSnapshot:(id)a5
{
  v7 = a5;
  if (a4 == -1)
  {
    a4 = [a3 _snapshotFormat];
    if (MBSnapshotFormatSupportedForBackup())
    {
      v8 = MBGetDefaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = MBStringForSnapshotFormat();
        *buf = 138412290;
        v16 = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "=cloud-backup-policy= Server-specified snapshot format: %@", buf, 0xCu);

        goto LABEL_13;
      }
    }

    else if (v7 && (a4 = [v7 snapshotFormat], MBSnapshotFormatSupportedForBackup()))
    {
      v8 = MBGetDefaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v11 = MBStringForSnapshotFormat();
        *buf = 138412290;
        v16 = v11;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "=cloud-backup-policy= Previous snapshot format: %@", buf, 0xCu);

        goto LABEL_13;
      }
    }

    else
    {
      v8 = MBGetDefaultLog();
      a4 = 3;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = MBStringForSnapshotFormat();
        *buf = 138412290;
        v16 = v12;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "=cloud-backup-policy= Default snapshot format: %@", buf, 0xCu);

        goto LABEL_13;
      }
    }
  }

  else
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = MBStringForSnapshotFormat();
      *buf = 138412290;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "=cloud-backup-policy= Behavior option specified snapshot format: %@", buf, 0xCu);

LABEL_13:
      v14 = MBStringForSnapshotFormat();
      _MBLog();
    }
  }

  return a4;
}

@end