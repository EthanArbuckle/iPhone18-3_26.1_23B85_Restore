@interface IXGlobalConfiguration
+ (id)sharedInstance;
- (BOOL)isiPad;
- (IXGlobalConfiguration)init;
- (NSURL)frameworkURL;
- (NSURL)userVolumeURL;
- (id)_dataStorageHomeURLWithError:(id *)a3;
- (id)_userTempDirURLWithError:(id *)a3;
- (id)dataDirectoryAbortingOnError;
- (id)dataDirectoryWithError:(id *)a3;
- (id)extractedInstallableStagingDirectory:(id *)a3;
- (id)iconStagingDirectoryWithError:(id *)a3;
- (id)promiseStagingRootAbortingOnErrorForInstallLocation:(id)a3 usingUniqueName:(id)a4;
- (id)promiseStagingRootForInstallLocation:(id)a3 usingUniqueName:(id)a4 error:(id *)a5;
- (id)remoteInstallationStagingDirectory:(id *)a3;
- (id)removabilityDirectoryAbortingOnError;
- (id)removabilityDirectoryWithError:(id *)a3;
- (void)createDirectories;
- (void)dataDirectoryAbortingOnError;
- (void)init;
@end

@implementation IXGlobalConfiguration

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__IXGlobalConfiguration_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_shared;

  return v2;
}

uint64_t __39__IXGlobalConfiguration_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedInstance_shared = objc_alloc_init(objc_opt_class());

  return MEMORY[0x1EEE66BB8]();
}

- (IXGlobalConfiguration)init
{
  v17 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = IXGlobalConfiguration;
  v2 = [(IXGlobalConfiguration *)&v15 init];
  v3 = v2;
  if (v2)
  {
    v2->_dynamicPropertyLock._os_unfair_lock_opaque = 0;
    v4 = sysconf(71);
    if (v4 == -1)
    {
      [(IXGlobalConfiguration *)&v14 init];
    }

    memset(&v14, 0, sizeof(v14));
    v13 = 0;
    if (getpwnam_r("mobile", &v14, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v4, &v13) || !v13)
    {
      [(IXGlobalConfiguration *)&v12 init];
    }

    pw_dir = v14.pw_dir;
    v3->_daemonUID = v14.pw_uid;
    v3->_daemonGID = v14.pw_gid;
    v6 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:pw_dir isDirectory:1 relativeToURL:0];
    daemonUserHome = v3->_daemonUserHome;
    v3->_daemonUserHome = v6;

    v8 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:"/" isDirectory:1 relativeToURL:0];
    rootPath = v3->_rootPath;
    v3->_rootPath = v8;
  }

  v10 = *MEMORY[0x1E69E9840];
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
  OUTLINED_FUNCTION_1_0(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  __break(1u);
}

- (id)_dataStorageHomeURLWithError:(id *)a3
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
      v9 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:v7 isDirectory:1 relativeToURL:0];
      v10 = self->_dataStorageHome;
      self->_dataStorageHome = v9;

      free(v8);
      v6 = 0;
    }

    else
    {
      v11 = IXGetLoggingHandle(kIXLoggingSubsystem);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(IXGlobalConfiguration *)&v16 _dataStorageHomeURLWithError:v11];
      }

      v6 = _CreateError("[IXGlobalConfiguration _dataStorageHomeURLWithError:]", 220, @"IXErrorDomain", 1uLL, 0, 0, @"Failed to get group container path for group 'systemgroup.com.apple.installcoordinationd' container_system_group_path_for_identifier returned %llu", v12, v16);;
    }

    dataStorageHome = self->_dataStorageHome;
  }

  v13 = dataStorageHome;
  os_unfair_lock_unlock(&self->_dynamicPropertyLock);
  if (a3 && !v13)
  {
    v14 = v6;
    *a3 = v6;
  }

  return v13;
}

- (id)dataDirectoryWithError:(id *)a3
{
  v3 = [(IXGlobalConfiguration *)self _dataStorageHomeURLWithError:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 urlByAppendingPathComponents:&unk_1F5607658 lastIsDirectory:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)dataDirectoryAbortingOnError
{
  v9 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v2 = [(IXGlobalConfiguration *)self dataDirectoryWithError:&v7];
  v3 = v7;
  if (!v2)
  {
    [(IXGlobalConfiguration *)&v6 dataDirectoryAbortingOnError];
  }

  v4 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)promiseStagingRootForInstallLocation:(id)a3 usingUniqueName:(id)a4 error:(id *)a5
{
  v7 = MEMORY[0x1E69B1988];
  v8 = a4;
  v9 = a3;
  v10 = [v7 sharedInstance];
  v11 = [v10 stagingLocationForInstallLocation:v9 withinStagingSubsytem:2 usingUniqueName:v8 error:a5];

  if (v11)
  {
    v12 = v11;
  }

  return v11;
}

- (id)promiseStagingRootAbortingOnErrorForInstallLocation:(id)a3 usingUniqueName:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v13 = 0;
  v8 = [(IXGlobalConfiguration *)self promiseStagingRootForInstallLocation:v6 usingUniqueName:v7 error:&v13];
  v9 = v13;
  if (!v8)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    v12 = v9;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v14 = 138412802;
    v15 = v6;
    v16 = 2112;
    v17 = v7;
    v18 = 2112;
    v19 = v12;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)removabilityDirectoryWithError:(id *)a3
{
  v3 = [(IXGlobalConfiguration *)self dataDirectoryWithError:a3];
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
  v9 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v2 = [(IXGlobalConfiguration *)self removabilityDirectoryWithError:&v7];
  v3 = v7;
  if (!v2)
  {
    [(IXGlobalConfiguration *)&v6 createDirectories];
  }

  v4 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)remoteInstallationStagingDirectory:(id *)a3
{
  v3 = [(IXGlobalConfiguration *)self dataDirectoryWithError:a3];
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

- (id)_userTempDirURLWithError:(id *)a3
{
  v13 = *MEMORY[0x1E69E9840];
  bzero(v12, 0x400uLL);
  if (confstr(65537, v12, 0x400uLL))
  {
    v4 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:v12 isDirectory:1 relativeToURL:0];
    v5 = 0;
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = __error();
    v7 = *v6;
    v8 = *MEMORY[0x1E696A798];
    strerror(*v6);
    v5 = _CreateError("[IXGlobalConfiguration _userTempDirURLWithError:]", 312, v8, v7, 0, 0, @"Failed to initialize temporary directory: error = %d (%s)", v9, v7);
    v4 = 0;
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  if (!v4)
  {
    v5 = v5;
    *a3 = v5;
  }

LABEL_7:

  v10 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)iconStagingDirectoryWithError:(id *)a3
{
  v9 = 0;
  v4 = [(IXGlobalConfiguration *)self _userTempDirURLWithError:&v9];
  v5 = v9;
  if (v4)
  {
    v6 = [v4 URLByAppendingPathComponent:@"TempIcons" isDirectory:1];
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = 0;
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  if (!v6)
  {
    v7 = v5;
    *a3 = v5;
  }

LABEL_7:

  return v6;
}

- (id)extractedInstallableStagingDirectory:(id *)a3
{
  v9 = 0;
  v4 = [(IXGlobalConfiguration *)self _userTempDirURLWithError:&v9];
  v5 = v9;
  if (v4)
  {
    v6 = [v4 URLByAppendingPathComponent:@"ExtractedApps" isDirectory:1];
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = 0;
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  if (!v6)
  {
    v7 = v5;
    *a3 = v5;
  }

LABEL_7:

  return v6;
}

- (NSURL)frameworkURL
{
  v2 = [(IXGlobalConfiguration *)self rootPath];
  v3 = [v2 urlByAppendingPathComponents:&unk_1F5607670 lastIsDirectory:1];

  return v3;
}

- (NSURL)userVolumeURL
{
  v2 = [(IXGlobalConfiguration *)self rootPath];
  v3 = [v2 urlByAppendingPathComponents:&unk_1F5607688 lastIsDirectory:1];

  return v3;
}

- (void)init
{
  v4 = *__error();
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  OUTLINED_FUNCTION_4();
  strerror(v4);
  OUTLINED_FUNCTION_3_0();
  v5 = *a1;
  _os_crash_msg();
  __break(1u);
}

- (void)_dataStorageHomeURLWithError:(uint64_t *)a1 .cold.1(uint64_t *a1, NSObject *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 136315650;
  v5 = "[IXGlobalConfiguration _dataStorageHomeURLWithError:]";
  v6 = 2048;
  v7 = v2;
  v8 = 2112;
  v9 = 0;
  _os_log_error_impl(&dword_1DA47A000, a2, OS_LOG_TYPE_ERROR, "%s: Failed to get group container path for group 'systemgroup.com.apple.installcoordinationd'; container_system_group_path_for_identifier returned %llu : %@", &v4, 0x20u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)dataDirectoryAbortingOnError
{
  OUTLINED_FUNCTION_1_0(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  __break(1u);
}

@end