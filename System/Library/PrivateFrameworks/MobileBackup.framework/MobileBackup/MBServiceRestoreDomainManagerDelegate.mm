@interface MBServiceRestoreDomainManagerDelegate
+ (id)domainForName:(id)name containerID:(id)d engine:(id)engine;
@end

@implementation MBServiceRestoreDomainManagerDelegate

+ (id)domainForName:(id)name containerID:(id)d engine:(id)engine
{
  nameCopy = name;
  dCopy = d;
  engineCopy = engine;
  if (!dCopy && ([nameCopy isEqualToString:@"SkippedFilesDomain"] & 1) == 0)
  {
    objc_exception_throw([[MBException alloc] initWithCode:11 format:{@"Unknown domain: %@", nameCopy}]);
  }

  persona = [engineCopy persona];
  if (!persona)
  {
    __assert_rtn("+[MBServiceRestoreDomainManagerDelegate domainForName:containerID:engine:]", "MBServiceRestoreDomainManagerDelegate.m", 25, "persona");
  }

  v11 = persona;
  volumeMountPoint = [persona volumeMountPoint];
  if ([MBDomain isLegacyPerAppPlaceholderName:nameCopy])
  {
    placeholderRestoreDirectory = [v11 placeholderRestoreDirectory];
    if (!placeholderRestoreDirectory)
    {
      __assert_rtn("+[MBServiceRestoreDomainManagerDelegate domainForName:containerID:engine:]", "MBServiceRestoreDomainManagerDelegate.m", 30, "placeholderRestoreDirectory");
    }

    skippedFileRecordsPlistPath = placeholderRestoreDirectory;
    stringByDeletingLastPathComponent = [placeholderRestoreDirectory stringByAppendingPathComponent:dCopy];
    v16 = MBGetDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v34 = nameCopy;
      v35 = 2112;
      v36 = stringByDeletingLastPathComponent;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "=cloud-domain-delegate= Creating placeholder domain for %@ (%@)", buf, 0x16u);
      v31 = nameCopy;
      v32 = stringByDeletingLastPathComponent;
      _MBLog();
    }

    v17 = [MBDomain appPlaceholderDomainWithIdentifier:dCopy volumeMountPoint:volumeMountPoint rootPath:stringByDeletingLastPathComponent];
LABEL_9:
    domain = v17;
    v19 = [NSSet set:v31];
    [domain setRelativePathsToBackupAndRestore:v19];

    v20 = [NSSet setWithObject:&stru_1003C3430];
    [domain setRelativePathsToRestoreOnly:v20];

LABEL_19:
    goto LABEL_20;
  }

  if ([MBDomain isSystemContainerName:nameCopy])
  {
    skippedFileRecordsPlistPath = [v11 systemContainerRestoreRootWithContainerID:dCopy];
    v21 = MBGetDefaultLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v34 = nameCopy;
      v35 = 2112;
      v36 = skippedFileRecordsPlistPath;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "=cloud-domain-delegate= Creating system container domain for %@ at %@", buf, 0x16u);
      _MBLog();
    }

    systemContainersVolumeMountPoint = [v11 systemContainersVolumeMountPoint];
    v23 = [MBDomain systemContainerDomainWithIdentifier:dCopy volumeMountPoint:systemContainersVolumeMountPoint rootPath:skippedFileRecordsPlistPath];
LABEL_18:
    domain = v23;

    v25 = +[NSSet set];
    [domain setRelativePathsToBackupAndRestore:v25];

    stringByDeletingLastPathComponent = [NSSet setWithObject:&stru_1003C3430];
    [domain setRelativePathsToRestoreOnly:stringByDeletingLastPathComponent];
    goto LABEL_19;
  }

  if ([MBDomain isSystemSharedContainerName:nameCopy])
  {
    skippedFileRecordsPlistPath = [v11 sharedSystemContainerRestoreRootWithContainerID:dCopy];
    v24 = MBGetDefaultLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v34 = nameCopy;
      v35 = 2112;
      v36 = skippedFileRecordsPlistPath;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "=cloud-domain-delegate= Creating system shared container domain for %@ at %@", buf, 0x16u);
      _MBLog();
    }

    systemContainersVolumeMountPoint = [v11 systemContainersVolumeMountPoint];
    v23 = [MBDomain systemSharedContainerDomainWithIdentifier:dCopy volumeMountPoint:systemContainersVolumeMountPoint rootPath:skippedFileRecordsPlistPath];
    goto LABEL_18;
  }

  if ([nameCopy isEqualToString:@"SkippedFilesDomain"])
  {
    v27 = MBGetDefaultLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "=cloud-domain-delegate= Creating skipped files domain", buf, 2u);
      _MBLog();
    }

    skippedFileRecordsPlistPath = [v11 skippedFileRecordsPlistPath];
    stringByDeletingLastPathComponent = [skippedFileRecordsPlistPath stringByDeletingLastPathComponent];
    v17 = [MBDomain skippedFilesDomainWithVolumeMountPoint:volumeMountPoint rootPath:stringByDeletingLastPathComponent];
    goto LABEL_9;
  }

  v28 = [MBDomain containerTypeWithName:nameCopy];
  appManager = [engineCopy appManager];
  skippedFileRecordsPlistPath = [appManager containerWithIdentifier:dCopy containerType:v28];

  if (!skippedFileRecordsPlistPath)
  {
    v30 = MBGetDefaultLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v34 = nameCopy;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "=cloud-domain-delegate= Creating uninstalled container domain for %@", buf, 0xCu);
      _MBLog();
    }

    stringByDeletingLastPathComponent = [MBContainer uninstalledContainerWithDomainName:nameCopy volumeMountPoint:volumeMountPoint];
    domain = [stringByDeletingLastPathComponent domain];
    goto LABEL_19;
  }

  domain = [skippedFileRecordsPlistPath domain];
LABEL_20:

  return domain;
}

@end