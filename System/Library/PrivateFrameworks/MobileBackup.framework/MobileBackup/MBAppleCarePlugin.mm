@interface MBAppleCarePlugin
- (id)endedBackupWithEngine:(id)engine error:(id)error;
- (id)endedRestoreWithPolicy:(id)policy engine:(id)engine error:(id)error;
- (void)_logEventWithSubtype:(id)subtype code:(int64_t)code;
@end

@implementation MBAppleCarePlugin

- (void)_logEventWithSubtype:(id)subtype code:(int64_t)code
{
  subtypeCopy = subtype;
  if (!subtypeCopy)
  {
    __assert_rtn("[MBAppleCarePlugin _logEventWithSubtype:code:]", "MBAppleCarePlugin.m", 19, "subtype");
  }

  v6 = subtypeCopy;
  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v12 = v6;
    v13 = 2048;
    codeCopy = code;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Logging event for AppleCare: [backup, %@, %lu]", buf, 0x16u);
    _MBLog();
  }

  v10[0] = @"backup";
  v10[1] = v6;
  v8 = [NSNumber numberWithInteger:code];
  v10[2] = v8;
  v9 = [NSArray arrayWithObjects:v10 count:3];

  logEventForAppleCare();
}

- (id)endedBackupWithEngine:(id)engine error:(id)error
{
  engineCopy = engine;
  errorCopy = error;
  if ([engineCopy isServiceEngine])
  {
    v8 = @"iCloudBackup";
  }

  else if ([engineCopy isDeviceTransferEngine])
  {
    v8 = @"D2DBackup";
  }

  else if ([engineCopy isDriveEngine])
  {
    v8 = @"iTunesBackup";
  }

  else
  {
    v8 = 0;
  }

  -[MBAppleCarePlugin _logEventWithSubtype:code:](self, "_logEventWithSubtype:code:", v8, [errorCopy code]);

  return 0;
}

- (id)endedRestoreWithPolicy:(id)policy engine:(id)engine error:(id)error
{
  engineCopy = engine;
  errorCopy = error;
  if ([engineCopy isServiceEngine])
  {
    v9 = @"iCloudRestore";
  }

  else if ([engineCopy isDeviceTransferEngine])
  {
    v9 = @"D2DRestore";
  }

  else if ([engineCopy isDriveEngine])
  {
    v9 = @"iTunesRestore";
  }

  else
  {
    v9 = 0;
  }

  -[MBAppleCarePlugin _logEventWithSubtype:code:](self, "_logEventWithSubtype:code:", v9, [errorCopy code]);

  return 0;
}

@end