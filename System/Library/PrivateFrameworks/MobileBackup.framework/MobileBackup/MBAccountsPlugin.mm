@interface MBAccountsPlugin
- (id)endingRestoreWithPolicy:(id)policy engine:(id)engine;
@end

@implementation MBAccountsPlugin

- (id)endingRestoreWithPolicy:(id)policy engine:(id)engine
{
  if ([engine restoresPrimaryAccount])
  {
    v4 = MBGetDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Enabling backup for the account", buf, 2u);
      _MBLog();
    }

    v5 = dispatch_group_create();
    dispatch_group_enter(v5);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10025A344;
    v8[3] = &unk_1003BC010;
    v9 = v5;
    v6 = v5;
    [MBServiceAccount setBackupEnabled:1 completion:v8];
    MBGroupWaitForever();
  }

  return 0;
}

@end