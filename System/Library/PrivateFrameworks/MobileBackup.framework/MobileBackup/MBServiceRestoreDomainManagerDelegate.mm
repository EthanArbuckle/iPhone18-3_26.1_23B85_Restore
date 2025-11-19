@interface MBServiceRestoreDomainManagerDelegate
+ (id)domainForName:(id)a3 containerID:(id)a4 engine:(id)a5;
@end

@implementation MBServiceRestoreDomainManagerDelegate

+ (id)domainForName:(id)a3 containerID:(id)a4 engine:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!v8 && ([v7 isEqualToString:@"SkippedFilesDomain"] & 1) == 0)
  {
    objc_exception_throw([[MBException alloc] initWithCode:11 format:{@"Unknown domain: %@", v7}]);
  }

  v10 = [v9 persona];
  if (!v10)
  {
    __assert_rtn("+[MBServiceRestoreDomainManagerDelegate domainForName:containerID:engine:]", "MBServiceRestoreDomainManagerDelegate.m", 25, "persona");
  }

  v11 = v10;
  v12 = [v10 volumeMountPoint];
  if ([MBDomain isLegacyPerAppPlaceholderName:v7])
  {
    v13 = [v11 placeholderRestoreDirectory];
    if (!v13)
    {
      __assert_rtn("+[MBServiceRestoreDomainManagerDelegate domainForName:containerID:engine:]", "MBServiceRestoreDomainManagerDelegate.m", 30, "placeholderRestoreDirectory");
    }

    v14 = v13;
    v15 = [v13 stringByAppendingPathComponent:v8];
    v16 = MBGetDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v34 = v7;
      v35 = 2112;
      v36 = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "=cloud-domain-delegate= Creating placeholder domain for %@ (%@)", buf, 0x16u);
      v31 = v7;
      v32 = v15;
      _MBLog();
    }

    v17 = [MBDomain appPlaceholderDomainWithIdentifier:v8 volumeMountPoint:v12 rootPath:v15];
LABEL_9:
    v18 = v17;
    v19 = [NSSet set:v31];
    [v18 setRelativePathsToBackupAndRestore:v19];

    v20 = [NSSet setWithObject:&stru_1003C3430];
    [v18 setRelativePathsToRestoreOnly:v20];

LABEL_19:
    goto LABEL_20;
  }

  if ([MBDomain isSystemContainerName:v7])
  {
    v14 = [v11 systemContainerRestoreRootWithContainerID:v8];
    v21 = MBGetDefaultLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v34 = v7;
      v35 = 2112;
      v36 = v14;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "=cloud-domain-delegate= Creating system container domain for %@ at %@", buf, 0x16u);
      _MBLog();
    }

    v22 = [v11 systemContainersVolumeMountPoint];
    v23 = [MBDomain systemContainerDomainWithIdentifier:v8 volumeMountPoint:v22 rootPath:v14];
LABEL_18:
    v18 = v23;

    v25 = +[NSSet set];
    [v18 setRelativePathsToBackupAndRestore:v25];

    v15 = [NSSet setWithObject:&stru_1003C3430];
    [v18 setRelativePathsToRestoreOnly:v15];
    goto LABEL_19;
  }

  if ([MBDomain isSystemSharedContainerName:v7])
  {
    v14 = [v11 sharedSystemContainerRestoreRootWithContainerID:v8];
    v24 = MBGetDefaultLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v34 = v7;
      v35 = 2112;
      v36 = v14;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "=cloud-domain-delegate= Creating system shared container domain for %@ at %@", buf, 0x16u);
      _MBLog();
    }

    v22 = [v11 systemContainersVolumeMountPoint];
    v23 = [MBDomain systemSharedContainerDomainWithIdentifier:v8 volumeMountPoint:v22 rootPath:v14];
    goto LABEL_18;
  }

  if ([v7 isEqualToString:@"SkippedFilesDomain"])
  {
    v27 = MBGetDefaultLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "=cloud-domain-delegate= Creating skipped files domain", buf, 2u);
      _MBLog();
    }

    v14 = [v11 skippedFileRecordsPlistPath];
    v15 = [v14 stringByDeletingLastPathComponent];
    v17 = [MBDomain skippedFilesDomainWithVolumeMountPoint:v12 rootPath:v15];
    goto LABEL_9;
  }

  v28 = [MBDomain containerTypeWithName:v7];
  v29 = [v9 appManager];
  v14 = [v29 containerWithIdentifier:v8 containerType:v28];

  if (!v14)
  {
    v30 = MBGetDefaultLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v34 = v7;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "=cloud-domain-delegate= Creating uninstalled container domain for %@", buf, 0xCu);
      _MBLog();
    }

    v15 = [MBContainer uninstalledContainerWithDomainName:v7 volumeMountPoint:v12];
    v18 = [v15 domain];
    goto LABEL_19;
  }

  v18 = [v14 domain];
LABEL_20:

  return v18;
}

@end