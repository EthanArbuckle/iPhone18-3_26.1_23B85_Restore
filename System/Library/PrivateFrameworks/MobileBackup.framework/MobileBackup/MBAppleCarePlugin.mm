@interface MBAppleCarePlugin
- (id)endedBackupWithEngine:(id)a3 error:(id)a4;
- (id)endedRestoreWithPolicy:(id)a3 engine:(id)a4 error:(id)a5;
- (void)_logEventWithSubtype:(id)a3 code:(int64_t)a4;
@end

@implementation MBAppleCarePlugin

- (void)_logEventWithSubtype:(id)a3 code:(int64_t)a4
{
  v5 = a3;
  if (!v5)
  {
    __assert_rtn("[MBAppleCarePlugin _logEventWithSubtype:code:]", "MBAppleCarePlugin.m", 19, "subtype");
  }

  v6 = v5;
  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v12 = v6;
    v13 = 2048;
    v14 = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Logging event for AppleCare: [backup, %@, %lu]", buf, 0x16u);
    _MBLog();
  }

  v10[0] = @"backup";
  v10[1] = v6;
  v8 = [NSNumber numberWithInteger:a4];
  v10[2] = v8;
  v9 = [NSArray arrayWithObjects:v10 count:3];

  logEventForAppleCare();
}

- (id)endedBackupWithEngine:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isServiceEngine])
  {
    v8 = @"iCloudBackup";
  }

  else if ([v6 isDeviceTransferEngine])
  {
    v8 = @"D2DBackup";
  }

  else if ([v6 isDriveEngine])
  {
    v8 = @"iTunesBackup";
  }

  else
  {
    v8 = 0;
  }

  -[MBAppleCarePlugin _logEventWithSubtype:code:](self, "_logEventWithSubtype:code:", v8, [v7 code]);

  return 0;
}

- (id)endedRestoreWithPolicy:(id)a3 engine:(id)a4 error:(id)a5
{
  v7 = a4;
  v8 = a5;
  if ([v7 isServiceEngine])
  {
    v9 = @"iCloudRestore";
  }

  else if ([v7 isDeviceTransferEngine])
  {
    v9 = @"D2DRestore";
  }

  else if ([v7 isDriveEngine])
  {
    v9 = @"iTunesRestore";
  }

  else
  {
    v9 = 0;
  }

  -[MBAppleCarePlugin _logEventWithSubtype:code:](self, "_logEventWithSubtype:code:", v9, [v8 code]);

  return 0;
}

@end