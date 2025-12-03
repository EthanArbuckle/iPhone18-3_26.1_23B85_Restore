@interface IXSRemoteUninstaller
+ (BOOL)isUninstallProhibited;
- (IXSRemoteUninstaller)initWithBundleID:(id)d;
- (IXSRemoteUninstallerDelegate)delegate;
- (void)beginUninstall;
@end

@implementation IXSRemoteUninstaller

- (IXSRemoteUninstaller)initWithBundleID:(id)d
{
  dCopy = d;
  v8.receiver = self;
  v8.super_class = IXSRemoteUninstaller;
  v5 = [(IXSRemoteUninstaller *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(IXSRemoteUninstaller *)v5 setBundleID:dCopy];
  }

  return v6;
}

- (void)beginUninstall
{
  if ([objc_opt_class() isUninstallProhibited])
  {
    delegate = [(IXSRemoteUninstaller *)self delegate];
    if (delegate)
    {
      v13 = delegate;
      bundleID = [(IXSRemoteUninstaller *)self bundleID];
      v6 = sub_100006524("[IXSRemoteUninstaller beginUninstall]", 77, @"IXRemoteErrorDomain", 10, 0, 0, @"Cannot uninstall %@ because it's prohibited by ManagedConfiguration", v5, bundleID);

      [v13 remoteUninstaller:self completedWithError:v6];
      delegate = v13;
    }
  }

  else
  {
    v7 = +[UMUserManager sharedManager];
    isMultiUser = [v7 isMultiUser];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100010808;
    v16[3] = &unk_100020B20;
    v16[4] = self;
    v18 = isMultiUser;
    v9 = v7;
    v17 = v9;
    v10 = objc_retainBlock(v16);
    v11 = v10;
    if (isMultiUser)
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