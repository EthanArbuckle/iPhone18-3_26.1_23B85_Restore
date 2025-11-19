@interface MBBooksPlugin
- (id)startingBackupWithEngine:(id)a3;
- (void)_populatePathsForEngine:(id)a3 domainName:(id)a4;
@end

@implementation MBBooksPlugin

- (void)_populatePathsForEngine:(id)a3 domainName:(id)a4
{
  v5 = a4;
  v6 = [a3 domainManager];
  v7 = [v6 domainForName:v5];

  v8 = objc_opt_new();
  v9 = +[MCProfileConnection sharedConnection];
  v10 = [v9 isEnterpriseBookBackupAllowed];

  if ((v10 & 1) == 0)
  {
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Managed books backup disallowed. Excluding from backup.", v15, 2u);
      _MBLog();
    }

    v12 = [v7 standardizedRelativePathFor:@"/var/mobile/Media/Books/Managed"];
    [v8 addObject:v12];
  }

  v13 = [v7 relativePathsNotToBackup];

  if (v13)
  {
    v14 = [v7 relativePathsNotToBackup];
    [v8 unionSet:v14];
  }

  [v7 setRelativePathsNotToBackup:v8];
}

- (id)startingBackupWithEngine:(id)a3
{
  v4 = a3;
  if ([v4 backsUpPrimaryAccount])
  {
    if (!MBIsInternalInstall() || (+[MBBehaviorOptions sharedOptions](MBBehaviorOptions, "sharedOptions"), v5 = objc_claimAutoreleasedReturnValue(), [v5 domainsToBackUpRegex], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, !v6))
    {
      [(MBBooksPlugin *)self _populatePathsForEngine:v4 domainName:@"BooksDomain"];
    }
  }

  return 0;
}

@end