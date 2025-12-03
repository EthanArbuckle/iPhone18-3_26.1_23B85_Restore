@interface IXGlobalConfiguration
+ (id)sharedInstance;
- (BOOL)isiPad;
- (IXGlobalConfiguration)init;
- (NSURL)frameworkURL;
- (NSURL)userVolumeURL;
- (id)_dataStorageHomeURLWithError:(id *)error;
- (id)_userTempDirURLWithError:(id *)error;
- (id)dataDirectoryAbortingOnError;
- (id)dataDirectoryWithError:(id *)error;
- (id)extractedInstallableStagingDirectory:(id *)directory;
- (id)iconStagingDirectoryWithError:(id *)error;
- (id)promiseStagingRootAbortingOnErrorForInstallLocation:(id)location usingUniqueName:(id)name;
- (id)promiseStagingRootForInstallLocation:(id)location usingUniqueName:(id)name error:(id *)error;
- (id)remoteInstallationStagingDirectory:(id *)directory;
- (id)removabilityDirectoryAbortingOnError;
- (id)removabilityDirectoryWithError:(id *)error;
- (void)createDirectories;
@end

@implementation IXGlobalConfiguration

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008620;
  block[3] = &unk_100100D40;
  block[4] = self;
  if (qword_100121C48 != -1)
  {
    dispatch_once(&qword_100121C48, block);
  }

  v2 = qword_100121C40;

  return v2;
}

- (IXGlobalConfiguration)init
{
  v14.receiver = self;
  v14.super_class = IXGlobalConfiguration;
  v2 = [(IXGlobalConfiguration *)&v14 init];
  v3 = v2;
  if (v2)
  {
    v2->_dynamicPropertyLock._os_unfair_lock_opaque = 0;
    v4 = sysconf(71);
    if (v4 == -1)
    {
      sub_100097FA8(&v13, v15);
    }

    memset(&v13, 0, sizeof(v13));
    v12 = 0;
    if (getpwnam_r("mobile", &v13, &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v4, &v12) || !v12)
    {
      sub_100097EF0(&v11, v15);
    }

    pw_dir = v13.pw_dir;
    v3->_daemonUID = v13.pw_uid;
    v3->_daemonGID = v13.pw_gid;
    v6 = [NSURL fileURLWithFileSystemRepresentation:pw_dir isDirectory:1 relativeToURL:0];
    daemonUserHome = v3->_daemonUserHome;
    v3->_daemonUserHome = v6;

    v8 = [NSURL fileURLWithFileSystemRepresentation:"/" isDirectory:1 relativeToURL:0];
    rootPath = v3->_rootPath;
    v3->_rootPath = v8;
  }

  return v3;
}

- (BOOL)isiPad
{
  v2 = MGGetStringAnswer();
  v3 = [v2 isEqualToString:@"iPad"];

  return v3;
}

- (void)createDirectories
{
  v3 = +[IXFileManager defaultManager];
  v31 = 0;
  v4 = [(IXGlobalConfiguration *)self _dataStorageHomeURLWithError:&v31];
  v5 = v31;
  v6 = v5;
  if (!v4)
  {
    sub_100098124(&v32, buf);
  }

  v30 = v5;
  v7 = [v4 setResourceValue:&__kCFBooleanTrue forKey:NSURLIsExcludedFromBackupKey error:&v30];
  v8 = v30;

  if ((v7 & 1) == 0)
  {
    v9 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      path = [v4 path];
      *buf = 136315650;
      *&buf[4] = "[IXGlobalConfiguration createDirectories]";
      *&buf[12] = 2112;
      *&buf[14] = path;
      *&buf[22] = 2112;
      *&buf[24] = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: Failed to set backup exclusion on %@ : %@", buf, 0x20u);
    }
  }

  v29 = v8;
  v11 = [(IXGlobalConfiguration *)self dataDirectoryWithError:&v29];
  v12 = v29;

  if (!v11)
  {
    sub_1000980B8(&v32, buf);
  }

  v28 = v12;
  v13 = [v3 createDirectoryAtURL:v11 withIntermediateDirectories:1 mode:489 class:4 error:&v28];
  v14 = v28;

  if ((v13 & 1) == 0)
  {
    v27 = 0;
    v38 = 0u;
    v39 = 0u;
    v37 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    path2 = [v11 path];
    v32 = 138412546;
    v33 = path2;
    v34 = 2112;
    v35 = v14;
    _os_log_send_and_compose_impl();

    _os_crash_msg();
    __break(1u);
    goto LABEL_18;
  }

  v15 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    path3 = [v11 path];
    *buf = 136315394;
    *&buf[4] = "[IXGlobalConfiguration createDirectories]";
    *&buf[12] = 2112;
    *&buf[14] = path3;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s: Created %@", buf, 0x16u);
  }

  v26 = v14;
  v17 = [(IXGlobalConfiguration *)self removabilityDirectoryWithError:&v26];
  v18 = v26;

  if (!v17)
  {
LABEL_18:
    sub_10009804C(&v32, buf);
  }

  v25 = v18;
  v19 = [v3 createDirectoryAtURL:v17 withIntermediateDirectories:1 mode:489 class:4 error:&v25];
  v20 = v25;

  if ((v19 & 1) == 0)
  {
    v27 = 0;
    v38 = 0u;
    v39 = 0u;
    v37 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    path4 = [v17 path];
    v32 = 138412546;
    v33 = path4;
    v34 = 2112;
    v35 = v20;
    _os_log_send_and_compose_impl();

    _os_crash_msg();
    __break(1u);
  }

  v21 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    path5 = [v17 path];
    *buf = 136315394;
    *&buf[4] = "[IXGlobalConfiguration createDirectories]";
    *&buf[12] = 2112;
    *&buf[14] = path5;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s: Created %@", buf, 0x16u);
  }
}

- (id)_dataStorageHomeURLWithError:(id *)error
{
  os_unfair_lock_lock(&self->_dynamicPropertyLock);
  dataStorageHome = self->_dataStorageHome;
  if (dataStorageHome)
  {
    v6 = 0;
  }

  else
  {
    v16 = 0;
    v7 = container_system_group_path_for_identifier();
    if (v7)
    {
      v8 = v7;
      v9 = [NSURL fileURLWithFileSystemRepresentation:v7 isDirectory:1 relativeToURL:0];
      v10 = self->_dataStorageHome;
      self->_dataStorageHome = v9;

      free(v8);
      v6 = 0;
    }

    else
    {
      v11 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100098190(&v16, v11);
      }

      v6 = sub_1000405FC("[IXGlobalConfiguration _dataStorageHomeURLWithError:]", 220, @"IXErrorDomain", 1uLL, 0, 0, @"Failed to get group container path for group 'systemgroup.com.apple.installcoordinationd' container_system_group_path_for_identifier returned %llu", v12, v16);;
    }

    dataStorageHome = self->_dataStorageHome;
  }

  v13 = dataStorageHome;
  os_unfair_lock_unlock(&self->_dynamicPropertyLock);
  if (error && !v13)
  {
    v14 = v6;
    *error = v6;
  }

  return v13;
}

- (id)dataDirectoryWithError:(id *)error
{
  v3 = [(IXGlobalConfiguration *)self _dataStorageHomeURLWithError:error];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 urlByAppendingPathComponents:&off_10010DF10 lastIsDirectory:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)dataDirectoryAbortingOnError
{
  v6 = 0;
  v2 = [(IXGlobalConfiguration *)self dataDirectoryWithError:&v6];
  v3 = v6;
  if (!v2)
  {
    sub_10009822C(&v5, v7);
  }

  return v2;
}

- (id)promiseStagingRootForInstallLocation:(id)location usingUniqueName:(id)name error:(id *)error
{
  nameCopy = name;
  locationCopy = location;
  v9 = +[MIHelperServiceFrameworkClient sharedInstance];
  v10 = [v9 stagingLocationForInstallLocation:locationCopy withinStagingSubsytem:2 usingUniqueName:nameCopy error:error];

  if (v10)
  {
    v11 = v10;
  }

  return v10;
}

- (id)promiseStagingRootAbortingOnErrorForInstallLocation:(id)location usingUniqueName:(id)name
{
  locationCopy = location;
  nameCopy = name;
  v12 = 0;
  v8 = [(IXGlobalConfiguration *)self promiseStagingRootForInstallLocation:locationCopy usingUniqueName:nameCopy error:&v12];
  v9 = v12;
  if (!v8)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
    v11 = v9;
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    v13 = 138412802;
    v14 = locationCopy;
    v15 = 2112;
    v16 = nameCopy;
    v17 = 2112;
    v18 = v11;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return v8;
}

- (id)removabilityDirectoryWithError:(id *)error
{
  v3 = [(IXGlobalConfiguration *)self dataDirectoryWithError:error];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 URLByAppendingPathComponent:@"Removability" isDirectory:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)removabilityDirectoryAbortingOnError
{
  v6 = 0;
  v2 = [(IXGlobalConfiguration *)self removabilityDirectoryWithError:&v6];
  v3 = v6;
  if (!v2)
  {
    sub_10009804C(&v5, v7);
  }

  return v2;
}

- (id)remoteInstallationStagingDirectory:(id *)directory
{
  v3 = [(IXGlobalConfiguration *)self dataDirectoryWithError:directory];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 URLByAppendingPathComponent:@"RemoteInstallStaging" isDirectory:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_userTempDirURLWithError:(id *)error
{
  bzero(v10, 0x400uLL);
  if (confstr(65537, v10, 0x400uLL))
  {
    v4 = [NSURL fileURLWithFileSystemRepresentation:v10 isDirectory:1 relativeToURL:0];
    v5 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = __error();
    v7 = *v6;
    strerror(*v6);
    v5 = sub_1000405FC("[IXGlobalConfiguration _userTempDirURLWithError:]", 312, NSPOSIXErrorDomain, v7, 0, 0, @"Failed to initialize temporary directory: error = %d (%s)", v8, v7);
    v4 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  if (!v4)
  {
    v5 = v5;
    *error = v5;
  }

LABEL_7:

  return v4;
}

- (id)iconStagingDirectoryWithError:(id *)error
{
  v9 = 0;
  v4 = [(IXGlobalConfiguration *)self _userTempDirURLWithError:&v9];
  v5 = v9;
  if (v4)
  {
    v6 = [v4 URLByAppendingPathComponent:@"TempIcons" isDirectory:1];
    if (!error)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  if (!v6)
  {
    v7 = v5;
    *error = v5;
  }

LABEL_7:

  return v6;
}

- (id)extractedInstallableStagingDirectory:(id *)directory
{
  v9 = 0;
  v4 = [(IXGlobalConfiguration *)self _userTempDirURLWithError:&v9];
  v5 = v9;
  if (v4)
  {
    v6 = [v4 URLByAppendingPathComponent:@"ExtractedApps" isDirectory:1];
    if (!directory)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = 0;
    if (!directory)
    {
      goto LABEL_7;
    }
  }

  if (!v6)
  {
    v7 = v5;
    *directory = v5;
  }

LABEL_7:

  return v6;
}

- (NSURL)frameworkURL
{
  rootPath = [(IXGlobalConfiguration *)self rootPath];
  v3 = [rootPath urlByAppendingPathComponents:&off_10010DF28 lastIsDirectory:1];

  return v3;
}

- (NSURL)userVolumeURL
{
  rootPath = [(IXGlobalConfiguration *)self rootPath];
  v3 = [rootPath urlByAppendingPathComponents:&off_10010DF40 lastIsDirectory:1];

  return v3;
}

@end