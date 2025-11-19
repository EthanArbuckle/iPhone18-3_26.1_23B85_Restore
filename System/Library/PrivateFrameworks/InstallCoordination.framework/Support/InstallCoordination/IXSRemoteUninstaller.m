@interface IXSRemoteUninstaller
+ (BOOL)isUninstallProhibited;
- (IXSRemoteUninstaller)initWithBundleID:(id)a3;
- (IXSRemoteUninstallerDelegate)delegate;
- (void)beginUninstall;
@end

@implementation IXSRemoteUninstaller

- (IXSRemoteUninstaller)initWithBundleID:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = IXSRemoteUninstaller;
  v5 = [(IXSRemoteUninstaller *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(IXSRemoteUninstaller *)v5 setBundleID:v4];
  }

  return v6;
}

- (void)beginUninstall
{
  if ([objc_opt_class() isUninstallProhibited])
  {
    v3 = [(IXSRemoteUninstaller *)self delegate];
    if (v3)
    {
      v13 = v3;
      v4 = [(IXSRemoteUninstaller *)self bundleID];
      v6 = sub_100006524("[IXSRemoteUninstaller beginUninstall]", 77, @"IXRemoteErrorDomain", 10, 0, 0, @"Cannot uninstall %@ because it's prohibited by ManagedConfiguration", v5, v4);

      [v13 remoteUninstaller:self completedWithError:v6];
      v3 = v13;
    }
  }

  else
  {
    v7 = +[UMUserManager sharedManager];
    v8 = [v7 isMultiUser];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100010808;
    v16[3] = &unk_100020B20;
    v16[4] = self;
    v18 = v8;
    v9 = v7;
    v17 = v9;
    v10 = objc_retainBlock(v16);
    v11 = v10;
    if (v8)
    {
      v12 = sub_10000C504(off_100026A70);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        sub_100013488(self, v12);
      }

      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100010A40;
      v14[3] = &unk_100020978;
      v15 = v11;
      [v9 terminateSyncWithCompletionHandler:v14];
    }

    else
    {
      (v10[2])(v10);
    }
  }
}

+ (BOOL)isUninstallProhibited
{
  v2 = +[MCProfileConnection sharedConnection];
  v3 = [v2 effectiveBoolValueForSetting:MCFeatureAppRemovalAllowed] == 2;

  return v3;
}

- (IXSRemoteUninstallerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end