@interface MBBackupCloudFormatPolicy
+ (int64_t)_snapshotFormatForAccount:(id)account behaviorOptionsFormat:(int64_t)format previousSnapshot:(id)snapshot;
+ (int64_t)snapshotFormatForAccount:(id)account previousSnapshot:(id)snapshot error:(id *)error;
@end

@implementation MBBackupCloudFormatPolicy

+ (int64_t)snapshotFormatForAccount:(id)account previousSnapshot:(id)snapshot error:(id *)error
{
  accountCopy = account;
  snapshotCopy = snapshot;
  v10 = +[MBBehaviorOptions sharedOptions];
  v17 = 0;
  v11 = [v10 _snapshotFormat:&v17];
  v12 = v17;
  v13 = v12;
  if (v12)
  {
    if (error)
    {
      v14 = v12;
      *error = v13;
    }

    v15 = -1;
  }

  else
  {
    v15 = [self _snapshotFormatForAccount:accountCopy behaviorOptionsFormat:v11 previousSnapshot:snapshotCopy];
  }

  return v15;
}

+ (int64_t)_snapshotFormatForAccount:(id)account behaviorOptionsFormat:(int64_t)format previousSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  if (format == -1)
  {
    format = [account _snapshotFormat];
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

    else if (snapshotCopy && (format = [snapshotCopy snapshotFormat], MBSnapshotFormatSupportedForBackup()))
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
      format = 3;
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

  return format;
}

@end