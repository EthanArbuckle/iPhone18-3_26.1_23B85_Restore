@interface MBBooksPlugin
- (id)startingBackupWithEngine:(id)engine;
- (void)_populatePathsForEngine:(id)engine domainName:(id)name;
@end

@implementation MBBooksPlugin

- (void)_populatePathsForEngine:(id)engine domainName:(id)name
{
  nameCopy = name;
  domainManager = [engine domainManager];
  v7 = [domainManager domainForName:nameCopy];

  v8 = objc_opt_new();
  v9 = +[MCProfileConnection sharedConnection];
  isEnterpriseBookBackupAllowed = [v9 isEnterpriseBookBackupAllowed];

  if ((isEnterpriseBookBackupAllowed & 1) == 0)
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

  relativePathsNotToBackup = [v7 relativePathsNotToBackup];

  if (relativePathsNotToBackup)
  {
    relativePathsNotToBackup2 = [v7 relativePathsNotToBackup];
    [v8 unionSet:relativePathsNotToBackup2];
  }

  [v7 setRelativePathsNotToBackup:v8];
}

- (id)startingBackupWithEngine:(id)engine
{
  engineCopy = engine;
  if ([engineCopy backsUpPrimaryAccount])
  {
    if (!MBIsInternalInstall() || (+[MBBehaviorOptions sharedOptions](MBBehaviorOptions, "sharedOptions"), v5 = objc_claimAutoreleasedReturnValue(), [v5 domainsToBackUpRegex], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, !v6))
    {
      [(MBBooksPlugin *)self _populatePathsForEngine:engineCopy domainName:@"BooksDomain"];
    }
  }

  return 0;
}

@end