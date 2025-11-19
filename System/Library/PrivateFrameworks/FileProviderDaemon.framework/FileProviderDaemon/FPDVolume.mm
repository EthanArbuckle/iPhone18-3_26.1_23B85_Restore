@interface FPDVolume
+ (BOOL)getProviderDomainID:(id)a3 location:(unsigned int)a4 foundDomainID:(id *)a5 error:(id *)a6;
+ (id)prettyNameForDomain:(id)a3;
+ (id)prettyNameForNsDomain:(id)a3 provider:(id)a4;
+ (int)_getProviderDomainIDFromFD:(int)a3 shortDescription:(id)a4 location:(unsigned int)a5 domainID:(id *)a6 error:(id *)a7;
+ (unsigned)volumeRoleForStatFS:(const statfs *)a3;
- (BOOL)_computeKnownPathsForRole:(unsigned int)a3;
- (BOOL)_hasCloudStorageDirAtRoot;
- (BOOL)isDefaultVolume;
- (BOOL)isDefaultVolumeForCurrentPersona;
- (BOOL)isDiskSpaceMonitorRunning;
- (BOOL)isInLowDiskSpaceState;
- (BOOL)shouldSkipDiskSpaceMonitor;
- (BOOL)supportsEAPFS;
- (BOOL)writeDomainsProperties:(id)a3 underDirectoryAtURL:(id)a4 error:(id *)a5;
- (FPDVolumeManager)volumeManager;
- (NSURL)purgatoryDirectory;
- (id)_subAppSupportPathForDomain:(id)a3 fileName:(id)a4 error:(id *)a5;
- (id)description;
- (id)readDomainsPropertiesUnderDirectoryAtURL:(id)a3 error:(id *)a4;
- (id)removedURL;
- (id)rootURLForLocation:(unsigned int)a3 error:(id *)a4;
- (id)supportPathForDomain:(id)a3 failIfNotExisting:(BOOL)a4 error:(id *)a5;
- (int64_t)currentAvailableDiskSpace;
- (int64_t)requiredDiskSpaceThreshold;
- (unint64_t)maxTimerIterations;
- (unint64_t)timerDelay;
- (void)currentAvailableDiskSpace;
- (void)isInLowDiskSpaceState;
- (void)monitorLowDiskSpaceRecovery;
- (void)monitorLowDiskSpaceRecoveryForConcreteError:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)reevaluateLowDiskSpaceState;
- (void)removeBrokenEbihilLinksFromRoot;
@end

@implementation FPDVolume

+ (unsigned)volumeRoleForStatFS:(const statfs *)a3
{
  if (!APFSVolumeRole())
  {
    return 3;
  }

  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    +[FPDVolume volumeRoleForStatFS:];
  }

  return 0;
}

- (BOOL)_hasCloudStorageDirAtRoot
{
  v2 = [(NSString *)self->_root stringByAppendingPathComponent:@".CloudStorage"];
  v3 = faccessat(-2, [v2 fileSystemRepresentation], 0, 32) == 0;

  return v3;
}

- (BOOL)_computeKnownPathsForRole:(unsigned int)a3
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 1;
  if (a3 - 1 > 1)
  {
    v7 = MEMORY[0x1E695DFF8];
    v8 = [(NSString *)self->_root stringByAppendingPathComponent:@".CloudStorage/System"];
    v9 = [v7 fileURLWithPath:v8 isDirectory:1];
    systemDirectory = self->_systemDirectory;
    self->_systemDirectory = v9;

    v11 = MEMORY[0x1E695DFF8];
    v12 = [(NSString *)self->_root stringByAppendingPathComponent:@".CloudStorage/Data"];
    v13 = [v11 fileURLWithPath:v12 isDirectory:1];
    syncRootsDirectory = self->_syncRootsDirectory;
    self->_syncRootsDirectory = v13;
LABEL_9:

    v18 = *(v22 + 24);
    goto LABEL_10;
  }

  v5 = [MEMORY[0x1E69DF068] sharedManager];
  [v5 personaGenerationIdentifierWithError:0];

  if (a3 == 2)
  {
    [MEMORY[0x1E69DF088] personaAttributesForPersonaType:2];
  }

  else
  {
    [MEMORY[0x1E69DF088] personaAttributesForPersonaType:0];
  }
  v6 = ;
  v15 = [v6 userPersonaUniqueString];

  if (v15 || ([MEMORY[0x1E69DF068] sharedManager], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isSharedIPad"), v16, (v17 & 1) != 0))
  {
    v12 = v15;
    FPPerformWithPersona();
    syncRootsDirectory = v12;
    goto LABEL_9;
  }

  v20 = fp_current_or_default_log();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    [FPDVolume _computeKnownPathsForRole:];
  }

  v18 = 0;
LABEL_10:
  _Block_object_dispose(&v21, 8);
  return v18 & 1;
}

void __39__FPDVolume__computeKnownPathsForRole___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    v4 = [MEMORY[0x1E69DF068] sharedManager];
    v5 = [v4 personaGenerationIdentifierWithError:0];

    v6 = *(a1 + 56);
    v7 = fp_current_or_default_log();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (v5 == v6)
    {
      if (v8)
      {
        __39__FPDVolume__computeKnownPathsForRole___block_invoke_cold_2(a1);
      }

      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to adopt persona %@ for role %d\nError: %@", *(a1 + 32), *(a1 + 64), v3];
      v10 = objc_opt_new();
      [v10 requestTapToRadarWithTitle:@"Failed to adopt persona" description:v9 keywords:MEMORY[0x1E695E0F0] attachments:MEMORY[0x1E695E0F0] displayReason:@"a problem bringing up a domain occured" providerID:0];
    }

    else
    {
      if (v8)
      {
        __39__FPDVolume__computeKnownPathsForRole___block_invoke_cold_1(a1);
      }
    }
  }

  else
  {
    v11 = [MEMORY[0x1E695DFF8] fp_supportDirectory];
    v12 = *(a1 + 40);
    v13 = *(v12 + 80);
    *(v12 + 80) = v11;

    v14 = [MEMORY[0x1E695DFF8] fp_cloudStorageDirectory];
    v15 = *(a1 + 40);
    v16 = *(v15 + 88);
    *(v15 + 88) = v14;
  }
}

- (id)rootURLForLocation:(unsigned int)a3 error:(id *)a4
{
  if (a3 > 2)
  {
    v5 = 0;
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v5 = *(&self->super.isa + qword_1CF9F4B78[a3]);
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  if (!v5)
  {
    *a4 = [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:2];
  }

LABEL_7:

  return v5;
}

- (BOOL)supportsEAPFS
{
  if (self->_role - 1 > 1)
  {
    return 0;
  }

  if (supportsEAPFS_onceToken != -1)
  {
    [FPDVolume supportsEAPFS];
  }

  return supportsEAPFS_enabled;
}

void __26__FPDVolume_supportsEAPFS__block_invoke()
{
  v0 = IORegistryEntryFromPath(*MEMORY[0x1E696CD60], "IODeviceTree:/filesystems");
  if (v0)
  {
    v1 = v0;
    CFProperty = IORegistryEntryCreateCFProperty(v0, @"e-apfs", *MEMORY[0x1E695E480], 0);
    v3 = fp_current_or_default_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    if (CFProperty)
    {
      if (v4)
      {
        *buf = 0;
        _os_log_impl(&dword_1CEFC7000, v3, OS_LOG_TYPE_DEFAULT, "[NOTICE] eAPFS is supported on the device", buf, 2u);
      }

      CFRelease(CFProperty);
      supportsEAPFS_enabled = 1;
    }

    else
    {
      if (v4)
      {
        *v6 = 0;
        _os_log_impl(&dword_1CEFC7000, v3, OS_LOG_TYPE_DEFAULT, "[NOTICE] eAPFS is NOT supported on the device", v6, 2u);
      }
    }

    IOObjectRelease(v1);
  }

  else
  {
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __26__FPDVolume_supportsEAPFS__block_invoke_cold_1();
    }
  }
}

+ (int)_getProviderDomainIDFromFD:(int)a3 shortDescription:(id)a4 location:(unsigned int)a5 domainID:(id *)a6 error:(id *)a7
{
  v29 = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = "com.apple.file-provider-domain-id";
  v13 = fgetxattr(a3, "com.apple.file-provider-domain-id", 0, 0, 0, 0);
  v14 = v13;
  if (v13 != -1)
  {
    v15 = v13;
    if (!a5)
    {
      goto LABEL_11;
    }

    goto LABEL_3;
  }

  if (*__error() != 93 || (v12 = "com.apple.file-provider-domain-id#PN", v16 = fgetxattr(a3, "com.apple.file-provider-domain-id#PN", 0, 0, 0, 0), v16 == -1))
  {
    v17 = MEMORY[0x1E696ABC0];
    v18 = *__error();
    v19 = v17;
LABEL_19:
    *a7 = [v19 fp_errorWithPOSIXCode:{v18, *v28}];
LABEL_20:
    v23 = -1;
    goto LABEL_29;
  }

  v15 = v16;
  if (a5)
  {
LABEL_3:
    v28[0] = 0;
    fpfs_is_detached_root();
    if (a5 == 2 && v28[0] != 1)
    {
      goto LABEL_20;
    }
  }

LABEL_11:
  v20 = malloc_type_malloc(v15 + 1, 0xA79B60D4uLL);
  if (!v20)
  {
    v19 = MEMORY[0x1E696ABC0];
    v18 = 12;
    goto LABEL_19;
  }

  v21 = v20;
  if (fgetxattr(a3, v12, v20, v15, 0, 0) < 1)
  {
    v24 = [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:*__error()];
    a6 = a7;
    goto LABEL_26;
  }

  v21[v15] = 0;
  if (v14 == -1)
  {
    if (fsetxattr(a3, "com.apple.file-provider-domain-id", v21, v15, 0, 0) < 0)
    {
      v22 = fp_current_or_default_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
LABEL_23:
        v25 = *__error();
        *v28 = 138412546;
        *&v28[4] = v11;
        *&v28[12] = 1024;
        *&v28[14] = v25;
        _os_log_impl(&dword_1CEFC7000, v22, OS_LOG_TYPE_INFO, "[INFO] couldn't upgrade domain xattr on %@: %d", v28, 0x12u);
      }

LABEL_24:

      goto LABEL_25;
    }

    if (fremovexattr(a3, "com.apple.file-provider-domain-id#PN", 0) < 0)
    {
      v22 = fp_current_or_default_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        goto LABEL_23;
      }

      goto LABEL_24;
    }
  }

LABEL_25:
  v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{v21, *v28, *&v28[16], v29}];
LABEL_26:
  *a6 = v24;
  free(v21);
  if (*a7)
  {
    v23 = -1;
  }

  else
  {
    v23 = 0;
  }

LABEL_29:

  v26 = *MEMORY[0x1E69E9840];
  return v23;
}

+ (BOOL)getProviderDomainID:(id)a3 location:(unsigned int)a4 foundDomainID:(id *)a5 error:(id *)a6
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v21 = 0;
  v22[0] = &v21;
  v22[1] = 0x3032000000;
  v22[2] = __Block_byref_object_copy__0;
  v22[3] = __Block_byref_object_dispose__0;
  v23 = 0;
  v18 = 0;
  v19[0] = &v18;
  v19[1] = 0x3032000000;
  v19[2] = __Block_byref_object_copy__0;
  v19[3] = __Block_byref_object_dispose__0;
  v20 = 0;
  v9 = v8;
  [v8 fileSystemRepresentation];
  v10 = v8;
  if ((fpfs_openat() & 0x80000000) != 0 && *(v19[0] + 40))
  {
    v12 = fp_current_or_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [v10 fp_shortDescription];
      v14 = [*(v19[0] + 40) fp_prettyDescription];
      *buf = 138412546;
      v25 = v13;
      v26 = 2112;
      v27 = v14;
      _os_log_impl(&dword_1CEFC7000, v12, OS_LOG_TYPE_INFO, "[INFO] couldn't retrieve provider domainID from %@: %@", buf, 0x16u);
    }

    v15 = v22;
    if ([*(v19[0] + 40) fp_isPOSIXErrorCode:2] & 1) != 0 || (objc_msgSend(*(v19[0] + 40), "fp_isPOSIXErrorCode:", 20) & 1) != 0 || (objc_msgSend(*(v19[0] + 40), "fp_isPOSIXErrorCode:", 13) & 1) != 0 || (objc_msgSend(*(v19[0] + 40), "fp_isPOSIXErrorCode:", 93))
    {
      v11 = 1;
    }

    else
    {
      v11 = 0;
      if (!a6)
      {
        goto LABEL_12;
      }

      v15 = v19;
      a5 = a6;
    }

    *a5 = *(*v15 + 40);
LABEL_12:

    goto LABEL_13;
  }

  *a5 = *(v22[0] + 40);
  v11 = 1;
LABEL_13:
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v21, 8);
  v16 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t __62__FPDVolume_getProviderDomainID_location_foundDomainID_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  v5 = [*(a1 + 32) fp_shortDescription];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  v8 = *(a1 + 64);
  v9 = *(*(a1 + 48) + 8);
  v12 = *(v9 + 40);
  obj = v7;
  v10 = [v4 _getProviderDomainIDFromFD:a2 shortDescription:v5 location:v8 domainID:&obj error:&v12];
  objc_storeStrong((v6 + 40), obj);
  objc_storeStrong((v9 + 40), v12);

  return v10;
}

+ (id)prettyNameForNsDomain:(id)a3 provider:(id)a4
{
  v5 = a4;
  v6 = [a3 displayName];
  v7 = [v5 descriptor];

  v8 = [v7 localizedName];

  if ([v6 isEqualToString:&stru_1F4C2FFD0])
  {
    v9 = v8;
  }

  else
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ - %@", v8, v6];
  }

  v10 = v9;

  v11 = [v10 stringByReplacingOccurrencesOfString:@" " withString:&stru_1F4C2FFD0];

  v12 = [v11 stringByReplacingOccurrencesOfString:@"/" withString:@":"];

  return v12;
}

+ (id)prettyNameForDomain:(id)a3
{
  v4 = a3;
  v5 = [v4 nsDomain];

  if (v5)
  {
    v6 = [v4 provider];

    if (!v6)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ no provider for %@", v4];
      v12 = fp_current_or_default_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        +[FPDVolume prettyNameForDomain:];
      }

      __assert_rtn("+[FPDVolume prettyNameForDomain:]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDVolume.m", 402, [v11 UTF8String]);
    }

    v7 = [v4 nsDomain];
    v8 = [v4 provider];
    v9 = [a1 prettyNameForNsDomain:v7 provider:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)supportPathForDomain:(id)a3 failIfNotExisting:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v8 = MEMORY[0x1E696AC08];
  v9 = a3;
  v10 = [v8 defaultManager];
  v11 = [(FPDVolume *)self findProviderDomainDirectory:v9 location:0 error:a5];

  if (v6 && ([MEMORY[0x1E696AC08] defaultManager], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "path"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v12, "fileExistsAtPath:", v13), v13, v12, !v14))
  {
    if (a5)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4 userInfo:0];
      *a5 = v15 = 0;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = v11;
  }

  return v15;
}

- (id)_subAppSupportPathForDomain:(id)a3 fileName:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [(FPDVolume *)self supportPathForDomain:a3 failIfNotExisting:0 error:a5];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 URLByAppendingPathComponent:v8 isDirectory:1];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSURL)purgatoryDirectory
{
  v2 = [(FPDVolume *)self systemDirectory];
  v3 = [v2 URLByAppendingPathComponent:@"Purgatory" isDirectory:1];

  return v3;
}

- (id)removedURL
{
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [(FPDVolume *)self purgatoryDirectory];
  v5 = [v4 path];
  [v3 fp_createPathIfNeeded:v5];

  v6 = [MEMORY[0x1E696AFB0] UUID];
  v7 = [v6 UUIDString];
  v8 = [@"removed_domain_" stringByAppendingString:v7];

  v9 = [(FPDVolume *)self purgatoryDirectory];
  v10 = [v9 URLByAppendingPathComponent:v8 isDirectory:1];

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  role = self->_role;
  if (role > 3)
  {
    v7 = @"unknown";
  }

  else
  {
    v7 = off_1E83BEE70[role];
  }

  dev = self->_dev;
  v9 = [(NSUUID *)self->_uuid fp_UUID];
  v10 = [(NSString *)self->_root fp_prettyPath];
  v11 = [v3 stringWithFormat:@"<%@:%p role:%@ dev:%d uuid:%@ '%@'>", v5, self, v7, dev, v9, v10];

  return v11;
}

- (BOOL)isDefaultVolumeForCurrentPersona
{
  v3 = [MEMORY[0x1E69DF068] sharedManager];
  v4 = [v3 currentPersona];

  if ([v4 isEnterprisePersona])
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v6 = self->_role == v5;

  return v6;
}

- (int64_t)requiredDiskSpaceThreshold
{
  requiredDiskSpaceThresholdOverride = self->_requiredDiskSpaceThresholdOverride;
  if (requiredDiskSpaceThresholdOverride)
  {

    return [(NSNumber *)requiredDiskSpaceThresholdOverride longLongValue];
  }

  else
  {
    if (os_variant_has_internal_content())
    {
      v4 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.fileproviderd"];
      v5 = [v4 objectForKey:@"low-disk-threshold"];

      if (v5)
      {
        v6 = [v4 integerForKey:@"low-disk-threshold"];

        return v6;
      }
    }

    return 104857600;
  }
}

- (void)monitorLowDiskSpaceRecoveryForConcreteError:(id)a3
{
  v4 = a3;
  if ([(FPDVolume *)self isDiskSpaceMonitorRunning])
  {
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [FPDVolume monitorLowDiskSpaceRecoveryForConcreteError:];
    }
  }

  else
  {
    v6 = [(FPDVolume *)self currentAvailableDiskSpace];
    if (v6 < 0)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[diskspace] low disk space detected through error, setting up fallback could not determine available disk space. Exiting."];
      v11 = fp_current_or_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        +[FPDVolume prettyNameForDomain:];
      }

      __assert_rtn("-[FPDVolume monitorLowDiskSpaceRecoveryForConcreteError:]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDVolume.m", 581, [v10 UTF8String]);
    }

    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:v6 + 209715200];
    requiredDiskSpaceThresholdOverride = self->_requiredDiskSpaceThresholdOverride;
    self->_requiredDiskSpaceThresholdOverride = v7;

    v9 = fp_current_or_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(FPDVolume *)v4 monitorLowDiskSpaceRecoveryForConcreteError:v9];
    }

    [(FPDVolume *)self monitorLowDiskSpaceRecovery];
    if (![(FPDVolume *)self isDiskSpaceMonitorRunning]&& ![(FPDVolume *)self shouldSkipDiskSpaceMonitor])
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[diskspace] low disk space detected through an error, setting up fallback failed. Exiting."];
      v13 = fp_current_or_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        +[FPDVolume prettyNameForDomain:];
      }

      __assert_rtn("-[FPDVolume monitorLowDiskSpaceRecoveryForConcreteError:]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDVolume.m", 589, [v12 UTF8String]);
    }
  }
}

- (int64_t)currentAvailableDiskSpace
{
  v7[271] = *MEMORY[0x1E69E9840];
  bzero(v7, 0x878uLL);
  root = self->_root;
  if ((FPStatFSFromPath() & 0x80000000) != 0)
  {
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [FPDVolume currentAvailableDiskSpace];
    }

    result = -1;
  }

  else
  {
    result = FPFileSystemFreeBytes();
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isInLowDiskSpaceState
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(FPDVolume *)self currentAvailableDiskSpace];
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(FPDVolume *)self isInLowDiskSpaceState];
  }

  if (v3 < 0)
  {
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(FPDVolume *)self isInLowDiskSpaceState];
    }
  }

  else
  {
    v5 = [(FPDVolume *)self requiredDiskSpaceThreshold];
    if (v3 < v5)
    {
      v6 = v5;
      v7 = fp_current_or_default_log();
      v8 = 1;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v9 = [(NSString *)self->_root fp_prettyPath];
        v13 = 138412802;
        v14 = v9;
        v15 = 2048;
        v16 = v3;
        v17 = 2048;
        v18 = v6;
        _os_log_impl(&dword_1CEFC7000, v7, OS_LOG_TYPE_INFO, "[INFO] [diskspace] (%@) In low disk space: %lld bytes (< %lld)", &v13, 0x20u);
      }

      goto LABEL_10;
    }

    if (!os_variant_has_internal_content())
    {
      v8 = 0;
      goto LABEL_11;
    }

    v7 = internalUserDefaults();
    if (![v7 BOOLForKey:@"force-low-disk-state"])
    {
      v8 = 0;
      goto LABEL_10;
    }

    v12 = fp_current_or_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [FPDVolume isInLowDiskSpaceState];
    }
  }

  v8 = 1;
LABEL_10:

LABEL_11:
  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)reevaluateLowDiskSpaceState
{
  v10 = *MEMORY[0x1E69E9840];
  obj = self;
  objc_sync_enter(obj);
  if ([(FPDVolume *)obj _isDiskSpaceMonitorRunning])
  {
    diskSpaceRecoveryTimerCurrentIteration = obj->_diskSpaceRecoveryTimerCurrentIteration;
    if (diskSpaceRecoveryTimerCurrentIteration >= [(FPDVolume *)obj maxTimerIterations])
    {
      v5 = fp_current_or_default_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v9 = [(FPDVolume *)obj maxTimerIterations];
        _os_log_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEFAULT, "[NOTICE] [diskspace] Disk space monitor reached max iterations (%lu), restarting fileproviderd", buf, 0xCu);
      }

      _Exit(0);
    }

    ++obj->_diskSpaceRecoveryTimerCurrentIteration;
    objc_sync_exit(obj);

    if (![(FPDVolume *)obj isInLowDiskSpaceState])
    {
      v6 = fp_current_or_default_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1CEFC7000, v6, OS_LOG_TYPE_DEFAULT, "[NOTICE] [diskspace] Disk space now available, restarting fileproviderd", buf, 2u);
      }

      _Exit(0);
    }

    v3 = *MEMORY[0x1E69E9840];
  }

  else
  {
    objc_sync_exit(obj);
    v4 = *MEMORY[0x1E69E9840];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v8 = a4;
  if ([a3 isEqualToString:@"force-low-disk-state"])
  {
    v9 = internalUserDefaults();

    if (v9 == v8)
    {
      v10 = fp_current_or_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_1CEFC7000, v10, OS_LOG_TYPE_DEFAULT, "[NOTICE] [diskspace] Trying to recover from disconnect due to low disk space after defaults override was modified.", v11, 2u);
      }

      [(FPDVolume *)self reevaluateLowDiskSpaceState];
    }
  }
}

- (BOOL)isDiskSpaceMonitorRunning
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(FPDVolume *)v2 _isDiskSpaceMonitorRunning];
  objc_sync_exit(v2);

  return v3;
}

- (unint64_t)timerDelay
{
  if (!os_variant_has_internal_content())
  {
    return 60;
  }

  v2 = internalUserDefaults();
  v3 = [v2 integerForKey:@"disk-space-monitor-delay"];

  if (!v3)
  {
    return 60;
  }

  return v3;
}

- (unint64_t)maxTimerIterations
{
  if (!os_variant_has_internal_content())
  {
    return 10;
  }

  v2 = internalUserDefaults();
  v3 = [v2 integerForKey:@"disk-space-monitor-max-iterations"];

  if (!v3)
  {
    return 10;
  }

  return v3;
}

- (BOOL)shouldSkipDiskSpaceMonitor
{
  has_internal_content = os_variant_has_internal_content();
  if (has_internal_content)
  {
    v3 = internalUserDefaults();
    v4 = [v3 BOOLForKey:@"disk-space-monitor-skip"];

    LOBYTE(has_internal_content) = v4;
  }

  return has_internal_content;
}

- (void)monitorLowDiskSpaceRecovery
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  if ([(FPDVolume *)v2 _isDiskSpaceMonitorRunning])
  {
    v3 = fp_current_or_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [FPDVolume monitorLowDiskSpaceRecovery];
    }
  }

  else if ([(FPDVolume *)v2 shouldSkipDiskSpaceMonitor])
  {
    v3 = fp_current_or_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [FPDVolume monitorLowDiskSpaceRecovery];
    }
  }

  else
  {
    v4 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v2->_serialQueue);
    v5 = [(FPDVolume *)v2 timerDelay];
    v6 = [(FPDVolume *)v2 maxTimerIterations];
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v17 = v5;
      v18 = 2048;
      v19 = v6;
      _os_log_impl(&dword_1CEFC7000, v7, OS_LOG_TYPE_DEFAULT, "[NOTICE] [diskspace] Setting up to monitor low disk space recovery (delay %lu s, max iterations %lu)", buf, 0x16u);
    }

    v8 = 1000000000 * v5;
    v9 = dispatch_time(0, v8);
    v2->_diskSpaceRecoveryTimerCurrentIteration = 1;
    dispatch_source_set_timer(v4, v9, v8, v8 / 0xA);
    dispatch_set_qos_class_fallback();
    objc_initWeak(buf, v2);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__FPDVolume_monitorLowDiskSpaceRecovery__block_invoke;
    block[3] = &unk_1E83BEE50;
    objc_copyWeak(v15, buf);
    block[4] = v2;
    v15[1] = v6;
    v3 = v4;
    v10 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, block);
    dispatch_source_set_event_handler(v3, v10);

    dispatch_resume(v3);
    objc_storeStrong(&v2->_diskSpaceRecoveryTimer, v4);
    if (os_variant_has_internal_content())
    {
      v11 = internalUserDefaults();
      if ([v11 BOOLForKey:@"force-low-disk-state"])
      {
        v12 = internalUserDefaults();
        [v12 addObserver:v2 forKeyPath:@"force-low-disk-state" options:0 context:0];
      }
    }

    objc_destroyWeak(v15);
    objc_destroyWeak(buf);
  }

  objc_sync_exit(v2);
  v13 = *MEMORY[0x1E69E9840];
}

void __40__FPDVolume_monitorLowDiskSpaceRecovery__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 40));
    v4 = *(a1 + 32);
    objc_sync_enter(v4);
    v5 = v3[3];
    objc_sync_exit(v4);

    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 48);
      v9 = 134218240;
      v10 = v5;
      v11 = 2048;
      v12 = v7;
      _os_log_impl(&dword_1CEFC7000, v6, OS_LOG_TYPE_DEFAULT, "[NOTICE] [diskspace] [%lu/%lu] Trying to recover from disconnect due to low disk space on timed check.", &v9, 0x16u);
    }

    [v3 reevaluateLowDiskSpaceState];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)isDefaultVolume
{
  if (self->_role - 1 >= 2)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ Invalid role for %@ - use an FPDExternalVolume instance instead", self];
    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      +[FPDVolume prettyNameForDomain:];
    }

    __assert_rtn("-[FPDVolume isDefaultVolume]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDVolume.m", 778, [v3 UTF8String]);
  }

  return 1;
}

- (id)readDomainsPropertiesUnderDirectoryAtURL:(id)a3 error:(id *)a4
{
  v5 = [a3 URLByAppendingPathComponent:@"Domains.plist"];
  v6 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v5 error:a4];

  return v6;
}

- (BOOL)writeDomainsProperties:(id)a3 underDirectoryAtURL:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = [MEMORY[0x1E696AE40] dataWithPropertyList:a3 format:200 options:0 error:a5];
  if (v8)
  {
    v9 = [v7 URLByAppendingPathComponent:@"Domains.plist"];
    v10 = [v8 writeToURL:v9 options:1 error:a5];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)removeBrokenEbihilLinksFromRoot
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_6(&dword_1CEFC7000, a1, a3, "[CRIT] %s shouldn't be called on default volumes", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (FPDVolumeManager)volumeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_volumeManager);

  return WeakRetained;
}

+ (void)volumeRoleForStatFS:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  v4 = 1024;
  v5 = v0;
  _os_log_error_impl(&dword_1CEFC7000, v1, OS_LOG_TYPE_ERROR, "[ERROR] Unable to resolve role for volume %{public}s: %u", v3, 0x12u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_computeKnownPathsForRole:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void __39__FPDVolume__computeKnownPathsForRole___block_invoke_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 64);
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_3_4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
  v8 = *MEMORY[0x1E69E9840];
}

void __39__FPDVolume__computeKnownPathsForRole___block_invoke_cold_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 64);
  OUTLINED_FUNCTION_4_4();
  v7 = 2112;
  v8 = v3;
  _os_log_error_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_ERROR, "[ERROR] Failed to adopt persona %@ for role %d: %@", v6, 0x1Cu);
  v5 = *MEMORY[0x1E69E9840];
}

void __26__FPDVolume_supportsEAPFS__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)prettyNameForDomain:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_6(&dword_1CEFC7000, v0, v1, "[CRIT] %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)monitorLowDiskSpaceRecoveryForConcreteError:(NSObject *)a3 .cold.1(uint64_t a1, id *a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [*a2 longLongValue];
  v7 = 138412546;
  v8 = a1;
  v9 = 2048;
  v10 = v5;
  _os_log_error_impl(&dword_1CEFC7000, a3, OS_LOG_TYPE_ERROR, "[ERROR] [diskspace] low disk space detected through an error %@. Monitoring with incremented recovery amount %lld", &v7, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)monitorLowDiskSpaceRecoveryForConcreteError:.cold.4()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(&dword_1CEFC7000, v0, OS_LOG_TYPE_DEBUG, "[DEBUG] [diskspace] Found error %@, but low disk space monitor already running", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)currentAvailableDiskSpace
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)isInLowDiskSpaceState
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 56) fp_prettyPath];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_1CEFC7000, a2, OS_LOG_TYPE_ERROR, "[ERROR] [diskspace] (%@) Received error retrieving free bytes available", v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

@end