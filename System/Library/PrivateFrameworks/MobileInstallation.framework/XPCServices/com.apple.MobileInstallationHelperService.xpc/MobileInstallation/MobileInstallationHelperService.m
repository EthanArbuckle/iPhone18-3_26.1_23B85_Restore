@interface MobileInstallationHelperService
- (BOOL)_createDirectoryAndSetToDaemonOwnershipAt:(id)a3 withError:(id *)a4;
- (BOOL)_moveAndUpdateOwnershipFromURL:(id)a3 toURL:(id)a4 withError:(id *)a5;
- (BOOL)_validateArgsForMethodWithName:(const char *)a3 bundleIdentifier:(id)a4 targetURL:(id)a5 error:(id *)a6;
- (BOOL)_validateArgsForMethodWithName:(const char *)a3 bundleIdentifier:(id)a4 wrapperURL:(id)a5 data:(id)a6 error:(id *)a7;
- (MILimitedConcurrencyQueue)installAndStagingQueue;
- (NSString)clientName;
- (NSXPCConnection)xpcConnection;
- (id)_issueSandboxExtensionForURL:(id)a3 error:(id *)a4;
- (id)_onQueue_validateParametersForStagingLocation:(id)a3 atRelativePath:(id)a4 toDestinationURL:(id)a5 error:(id *)a6;
- (id)_verifyAtleastOneBooleanEntitlementFromArray:(id)a3;
- (id)_verifyBooleanEntitlement:(id)a3;
- (unint64_t)_changeOwnerTo:(unsigned int)a3 atURL:(id)a4;
- (void)_onQueue_cloneItemAtURL:(id)a3 toURL:(id)a4 onBehalfOf:(id *)a5 completion:(id)a6;
- (void)_onQueue_createSafeHarborWithIdentifier:(id)a3 forPersona:(id)a4 containerType:(unint64_t)a5 andMigrateDataFrom:(id)a6 completion:(id)a7;
- (void)_onQueue_makeSymlinkFromAppDataContainerToBundleForIdentifier:(id)a3 forPersona:(id)a4 completion:(id)a5;
- (void)_onQueue_moveItemInStagingLocation:(id)a3 atRelativePath:(id)a4 toDestinationURL:(id)a5 onBehalfOf:(id *)a6 completion:(id)a7;
- (void)_onQueue_stageItemAtURL:(id)a3 toStagingLocation:(id)a4 options:(id)a5 completion:(id)a6;
- (void)_writeMigrationFileToDiskAtURL:(id)a3;
- (void)allStagingLocationsWithinSubsystem:(unint64_t)a3 completion:(id)a4;
- (void)cloneItemAtURL:(id)a3 toURL:(id)a4 onBehalfOf:(id *)a5 completion:(id)a6;
- (void)createAppSnapshotWithBundleID:(id)a3 snapshotToURL:(id)a4 onlyV1AppIfPresent:(BOOL)a5 placeholderOnly:(BOOL)a6 completion:(id)a7;
- (void)createSafeHarborWithIdentifier:(id)a3 forPersona:(id)a4 containerType:(unint64_t)a5 andMigrateDataFrom:(id)a6 completion:(id)a7;
- (void)dieForTesting;
- (void)getPidForTestingWithCompletion:(id)a3;
- (void)isDataContainerEmpty:(id)a3 ofContainerType:(unint64_t)a4 completion:(id)a5;
- (void)makeSymlinkFromAppDataContainerToBundleForIdentifier:(id)a3 forPersona:(id)a4 completion:(id)a5;
- (void)migrateMobileContentWithCompletion:(id)a3;
- (void)moveItemInStagingLocation:(id)a3 atRelativePath:(id)a4 toDestinationURL:(id)a5 onBehalfOf:(id *)a6 completion:(id)a7;
- (void)resolveStagingBaseWithSandboxExtensionForVolumeUUID:(id)a3 withinStagingSubsystem:(unint64_t)a4 completion:(id)a5;
- (void)setTestModeForIdentifierPrefix:(id)a3 testMode:(unint64_t)a4 validationData:(id)a5;
- (void)setTestingEnabled:(BOOL)a3;
- (void)stageItemAtURL:(id)a3 toStagingLocation:(id)a4 options:(id)a5 completion:(id)a6;
- (void)stagingLocationForInstallLocation:(id)a3 withinStagingSubsytem:(unint64_t)a4 usingUniqueName:(id)a5 completion:(id)a6;
- (void)stagingLocationForSystemContentWithinSubsystem:(unint64_t)a3 completion:(id)a4;
- (void)stagingLocationForURL:(id)a3 withinStagingSubsytem:(unint64_t)a4 usingUniqueName:(id)a5 completion:(id)a6;
- (void)stagingLocationForUserContentWithinSubsystem:(unint64_t)a3 completion:(id)a4;
- (void)stagingURLWithSandboxExtensionForSystemContentWithinSubsystem:(unint64_t)a3 completion:(id)a4;
- (void)stagingURLWithSandboxExtensionForUserContentWithinSubsystem:(unint64_t)a3 completion:(id)a4;
- (void)volumeUUIDForURL:(id)a3 completion:(id)a4;
- (void)wipeStagingRootAndSetUpPerUserDataDirWithCompletion:(id)a3;
@end

@implementation MobileInstallationHelperService

- (MILimitedConcurrencyQueue)installAndStagingQueue
{
  if (qword_10002DF68 != -1)
  {
    sub_10001628C();
  }

  v3 = qword_10002DF70;

  return v3;
}

- (id)_verifyBooleanEntitlement:(id)a3
{
  v4 = a3;
  v5 = [(MobileInstallationHelperService *)self xpcConnection];
  v7 = v5;
  if (!v5)
  {
    v10 = _CreateAndLogError("[MobileInstallationHelperService _verifyBooleanEntitlement:]", 149, MIInstallerErrorDomain, 4, 0, 0, @"Failed to get XPC connection", v6, v17);
    goto LABEL_10;
  }

  v8 = [v5 valueForEntitlement:v4];
  v9 = v8;
  if (!v8)
  {
    v11 = MIInstallerErrorDomain;
    v12 = [(MobileInstallationHelperService *)self clientName];
    _CreateAndLogError("[MobileInstallationHelperService _verifyBooleanEntitlement:]", 154, v11, 2, 0, 0, @"Client %@ does not have the required entitlement '%@'", v13, v12);
    v10 = LABEL_8:;

    goto LABEL_9;
  }

  if ((MIBooleanValue(v8, 0) & 1) == 0)
  {
    v14 = MIInstallerErrorDomain;
    v12 = [(MobileInstallationHelperService *)self clientName];
    _CreateAndLogError("[MobileInstallationHelperService _verifyBooleanEntitlement:]", 158, v14, 2, 0, 0, @"Client %@ has the entitlement '%@' but its value is FALSE", v15, v12);
    goto LABEL_8;
  }

  v10 = 0;
LABEL_9:

LABEL_10:

  return v10;
}

- (id)_verifyAtleastOneBooleanEntitlementFromArray:(id)a3
{
  v4 = a3;
  v6 = [(MobileInstallationHelperService *)self xpcConnection];
  if (v6)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = v4;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v24;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v23 + 1) + 8 * i);
          v13 = [v6 valueForEntitlement:{v12, v20, v21}];
          v14 = v13;
          if (v13)
          {
            if (MIBooleanValue(v13, 0))
            {

              v18 = 0;
              goto LABEL_17;
            }

            if (!gLogHandle || *(gLogHandle + 44) >= 3)
            {
              v20 = [(MobileInstallationHelperService *)self clientName];
              v21 = v12;
              MOLogWrite();
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v15 = MIInstallerErrorDomain;
    v16 = [(MobileInstallationHelperService *)self clientName];
    v18 = _CreateAndLogError("[MobileInstallationHelperService _verifyAtleastOneBooleanEntitlementFromArray:]", 193, v15, 2, 0, 0, @"Client %@ did not have any of the entitlements in %@", v17, v16);
    v7 = v16;
LABEL_17:

    v4 = v22;
  }

  else
  {
    v18 = _CreateAndLogError("[MobileInstallationHelperService _verifyAtleastOneBooleanEntitlementFromArray:]", 172, MIInstallerErrorDomain, 4, 0, 0, @"Failed to get XPC connection", v5, v20);
  }

  return v18;
}

- (NSString)clientName
{
  v2 = [(MobileInstallationHelperService *)self xpcConnection];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 processIdentifier];
    v5 = MICopyProcessNameForPid();
    v6 = [NSString stringWithFormat:@"%@ (pid %d)", v5, v4];
  }

  else
  {
    v6 = @"Unknown client";
  }

  return v6;
}

- (unint64_t)_changeOwnerTo:(unsigned int)a3 atURL:(id)a4
{
  v5 = a4;
  v17[0] = [v5 fileSystemRepresentation];
  v17[1] = 0;
  v6 = fts_open(v17, 84, 0);
  if (v6)
  {
    v7 = v6;
    v8 = fts_read(v6);
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      while (1)
      {
        fts_info = v9->fts_info;
        if (fts_info > 0xD)
        {
          break;
        }

        if (((1 << fts_info) & 0x310A) != 0)
        {
          if (lchown(v9->fts_path, a3, a3))
          {
            if (!gLogHandle || *(gLogHandle + 44) >= 3)
            {
              fts_path = v9->fts_path;
              v13 = __error();
              strerror(*v13);
              goto LABEL_14;
            }

            goto LABEL_15;
          }
        }

        else if (fts_info != 6)
        {
          break;
        }

LABEL_16:
        v9 = fts_read(v7);
        if (!v9)
        {
          goto LABEL_23;
        }
      }

      if (!gLogHandle || *(gLogHandle + 44) >= 3)
      {
        v16 = v9->fts_path;
        strerror(v9->fts_errno);
LABEL_14:
        MOLogWrite();
      }

LABEL_15:
      ++v10;
      goto LABEL_16;
    }

    v10 = 0;
LABEL_23:
    fts_close(v7);
  }

  else
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v14 = __error();
      strerror(*v14);
      MOLogWrite();
    }

    v10 = 1;
  }

  return v10;
}

- (BOOL)_moveAndUpdateOwnershipFromURL:(id)a3 toURL:(id)a4 withError:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = +[MIFileManager defaultManager];
  v10 = [v9 itemDoesNotExistAtURL:v8];

  if (v10)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 5)
    {
      v11 = [v7 path];
      [v8 path];
      v24 = v22 = v11;
      MOLogWrite();
    }

    v12 = [MIFileManager defaultManager:v22];
    v26 = 0;
    v13 = [v12 moveItemIfExistsAtURL:v7 toURL:v8 error:&v26];
    v14 = v26;

    if ((v13 & 1) == 0)
    {
      v20 = _CreateAndLogError("[MobileInstallationHelperService _moveAndUpdateOwnershipFromURL:toURL:withError:]", 276, MIInstallerErrorDomain, 4, v14, 0, @"Failed to move data directory into installd's home directory", v15, v23);
      goto LABEL_10;
    }

    v16 = +[MIDaemonConfiguration sharedInstance];
    v17 = -[MobileInstallationHelperService _changeOwnerTo:atURL:](self, "_changeOwnerTo:atURL:", [v16 uid], v8);

    if (v17)
    {
      v18 = MIInstallerErrorDomain;
      v25 = [v8 path];
      v20 = _CreateAndLogError("[MobileInstallationHelperService _moveAndUpdateOwnershipFromURL:toURL:withError:]", 281, v18, 109, v14, 0, @"%llu errors changing ownership for installd at %@", v19, v17);

      v14 = v25;
LABEL_10:

      v14 = v20;
    }
  }

  else
  {
    v14 = 0;
  }

  return 1;
}

- (void)_writeMigrationFileToDiskAtURL:(id)a3
{
  v3 = a3;
  v4 = +[NSDate date];
  v5 = [v4 description];

  v6 = _CFCopySystemVersionDictionary();
  v7 = v6;
  if (v6)
  {
    v8 = [v6 objectForKeyedSubscript:_kCFSystemVersionBuildVersionKey];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = @"Unknown";
    }
  }

  else
  {
    v10 = @"Unknown";
  }

  v13[0] = @"MIHMigrationVersionNumber";
  v13[1] = @"MIHMigrationTime";
  v14[0] = v10;
  v14[1] = v5;
  v11 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
  if ([v11 writeToURL:v3 atomically:1])
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 5)
    {
      MOLogWrite();
    }
  }

  else if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    v12 = [v3 path];
    MOLogWrite();
  }
}

- (void)migrateMobileContentWithCompletion:(id)a3
{
  v36 = a3;
  v39 = self;
  v4 = [(MobileInstallationHelperService *)self _verifyBooleanEntitlement:@"com.apple.private.MobileInstallationHelperService.InstallDaemonOpsEnabled"];
  if (v4)
  {
    v36[2](v36, v4);
    goto LABEL_23;
  }

  v5 = +[MIDaemonConfiguration sharedInstance];
  v6 = [v5 oldDataDirectoryPath];
  v7 = +[MIDaemonConfiguration sharedInstance];
  v8 = [v7 dataDirectory];
  v46 = 0;
  v9 = [(MobileInstallationHelperService *)v39 _moveAndUpdateOwnershipFromURL:v6 toURL:v8 withError:&v46];

  v10 = +[MIFileManager defaultManager];
  v11 = +[MIDaemonConfiguration sharedInstance];
  v12 = [v11 oldLoggingPath];
  v45 = 0;
  v35 = [v10 urlsForItemsInDirectoryAtURL:v12 ignoringSymlinks:1 error:&v45];
  v4 = v45;

  if (v35)
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = v35;
    v13 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
    if (v13)
    {
      v38 = *v42;
      do
      {
        v14 = 0;
        v15 = v4;
        do
        {
          if (*v42 != v38)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v41 + 1) + 8 * v14);
          v17 = +[MIDaemonConfiguration sharedInstance];
          v18 = [v17 logDirectory];
          v19 = [v16 lastPathComponent];
          v20 = [v18 URLByAppendingPathComponent:v19 isDirectory:0];
          v40 = v15;
          v21 = [(MobileInstallationHelperService *)v39 _moveAndUpdateOwnershipFromURL:v16 toURL:v20 withError:&v40];
          v4 = v40;

          LOBYTE(v9) = v21 & v9;
          v14 = v14 + 1;
          v15 = v4;
        }

        while (v13 != v14);
        v13 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
      }

      while (v13);
    }

    if (v9)
    {
      goto LABEL_12;
    }

    goto LABEL_16;
  }

  v26 = [v4 domain];
  if (![v26 isEqualToString:NSPOSIXErrorDomain])
  {

    goto LABEL_18;
  }

  v27 = [v4 code] == 2;

  if (!v27)
  {
LABEL_18:
    v22 = +[MIDaemonConfiguration sharedInstance];
    v23 = [v22 oldLoggingPath];
    v24 = [v23 path];
    v29 = _CreateAndLogError("[MobileInstallationHelperService migrateMobileContentWithCompletion:]", 339, MIInstallerErrorDomain, 109, v4, 0, @"Failed to get items for deletion: %@ : %@", v28, v24);

    v25 = 0;
    v4 = v29;
    goto LABEL_19;
  }

  if (v9)
  {
LABEL_12:
    v22 = +[MIFileManager defaultManager];
    v23 = +[MIDaemonConfiguration sharedInstance];
    v24 = [v23 oldLoggingPath];
    [v22 removeItemAtURL:v24 error:0];
    v25 = 1;
LABEL_19:

    goto LABEL_20;
  }

LABEL_16:
  v25 = 0;
LABEL_20:
  v30 = +[MIFileManager defaultManager];
  v31 = +[MIDaemonConfiguration sharedInstance];
  v32 = [v31 oldArchiveDirectory];
  [v30 removeItemAtURL:v32 error:0];

  if (v25)
  {
    v33 = +[MIDaemonConfiguration sharedInstance];
    v34 = [v33 roleUserMigrationMarkerFilePath];
    [(MobileInstallationHelperService *)v39 _writeMigrationFileToDiskAtURL:v34];
  }

  v36[2](v36, v4);
LABEL_23:
}

- (BOOL)_createDirectoryAndSetToDaemonOwnershipAt:(id)a3 withError:(id *)a4
{
  v5 = a3;
  v6 = +[MIFileManager defaultManager];
  v7 = +[MIDaemonConfiguration sharedInstance];
  v8 = [v7 uid];

  v9 = +[MIDaemonConfiguration sharedInstance];
  v10 = [v9 gid];

  v19 = 0;
  v11 = [v6 createDirectoryAtURL:v5 withIntermediateDirectories:0 mode:493 class:4 error:&v19];
  v12 = v19;
  v13 = v12;
  if (v11)
  {
    v18 = v12;
    v14 = [v6 setOwnerOfURL:v5 toUID:v8 gid:v10 error:&v18];
    v15 = v18;

    v13 = v15;
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v14 = 0;
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  if ((v14 & 1) == 0)
  {
    v16 = v13;
    *a4 = v13;
  }

LABEL_7:

  return v14;
}

- (void)wipeStagingRootAndSetUpPerUserDataDirWithCompletion:(id)a3
{
  v61 = a3;
  v63 = +[MIFileManager defaultManager];
  v3 = [(MobileInstallationHelperService *)self _verifyBooleanEntitlement:@"com.apple.private.MobileInstallationHelperService.InstallDaemonOpsEnabled"];
  if (v3)
  {
    v61[2](v61, v3);
    goto LABEL_32;
  }

  v4 = +[MIDaemonConfiguration sharedInstance];
  v5 = [v4 uid];

  v6 = +[MIDaemonConfiguration sharedInstance];
  v7 = [v6 gid];

  v8 = +[MIDaemonConfiguration sharedInstance];
  v9 = [v8 currentUserCachesDirectory];

  if (!v9)
  {
    _CreateAndLogError("[MobileInstallationHelperService wipeStagingRootAndSetUpPerUserDataDirWithCompletion:]", 421, MIInstallerErrorDomain, 4, 0, 0, @"Failed to get user caches directory", v10, v53);
    v26 = 0;
    v3 = obj = 0;
    goto LABEL_30;
  }

  v77 = 0;
  v11 = [(MobileInstallationHelperService *)self _createDirectoryAndSetToDaemonOwnershipAt:v9 withError:&v77];
  v12 = v77;
  v14 = v12;
  v58 = v9;
  if ((v11 & 1) == 0)
  {
    v27 = _CreateAndLogError("[MobileInstallationHelperService wipeStagingRootAndSetUpPerUserDataDirWithCompletion:]", 426, MIInstallerErrorDomain, 4, v12, 0, @"Failed to create user caches directory at %@ : %@", v13, v9);
    v26 = 0;
    obj = 0;
LABEL_25:
    v28 = v14;
LABEL_26:
    v3 = v27;
    goto LABEL_27;
  }

  v15 = +[MIStagingManager sharedInstance];
  v76 = v14;
  v16 = [v15 allStagingLocationsWithinSubsystem:1 error:&v76];
  v56 = v7;
  v57 = v5;
  v17 = v76;

  if (!v16)
  {
    v26 = 0;
    obj = 0;
    v3 = v17;
    goto LABEL_29;
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = v16;
  v18 = [obj countByEnumeratingWithState:&v72 objects:v81 count:16];
  if (!v18)
  {
    v14 = v17;
    goto LABEL_34;
  }

  v19 = *v73;
  v14 = v17;
  do
  {
    for (i = 0; i != v18; i = i + 1)
    {
      if (*v73 != v19)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v72 + 1) + 8 * i);
      v71 = v14;
      v22 = [v21 privilegedResolveWithError:{&v71, v53, v54}];
      v23 = v71;

      v14 = v23;
      if (v22)
      {
        v70 = v23;
        v24 = [v63 removeItemAtURL:v22 keepParent:1 error:&v70];
        v25 = v70;

        v14 = v25;
        if (v24)
        {
          goto LABEL_20;
        }

        if (!gLogHandle || *(gLogHandle + 44) >= 3)
        {
          v53 = [v22 path];
          v54 = v25;
          MOLogWrite();
        }
      }

      else if (!gLogHandle || *(gLogHandle + 44) >= 3)
      {
        v53 = v21;
        v54 = v23;
        MOLogWrite();
      }

      v14 = 0;
LABEL_20:
    }

    v18 = [obj countByEnumeratingWithState:&v72 objects:v81 count:16];
  }

  while (v18);
LABEL_34:

  v29 = +[MIDaemonConfiguration sharedInstance];
  v26 = [v29 currentUserDataDirectory];

  if (!v26)
  {
    v27 = _CreateAndLogError("[MobileInstallationHelperService wipeStagingRootAndSetUpPerUserDataDirWithCompletion:]", 459, MIInstallerErrorDomain, 4, 0, 0, @"Failed to get current user data directory", v30, v53);
    v26 = 0;
    goto LABEL_25;
  }

  v69 = v14;
  v31 = [(MobileInstallationHelperService *)self _createDirectoryAndSetToDaemonOwnershipAt:v26 withError:&v69];
  v28 = v69;

  if ((v31 & 1) == 0)
  {
    v27 = _CreateAndLogError("[MobileInstallationHelperService wipeStagingRootAndSetUpPerUserDataDirWithCompletion:]", 465, MIInstallerErrorDomain, 4, v28, 0, @"Failed to create user data directory at %@ : %@", v32, v26);
    goto LABEL_26;
  }

  v68 = v28;
  v33 = MIAssumeIdentity(v57, v56, &v68);
  v3 = v68;

  if (v33)
  {
    v34 = v26;
    if (access([v26 fileSystemRepresentation], 7))
    {
      __errnuma = *__error();
      [v26 MI_allAccessURLs];
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v28 = v65 = 0u;
      v35 = 0;
      v36 = [v28 countByEnumeratingWithState:&v64 objects:v80 count:16];
      if (v36)
      {
        v37 = *v65;
        while (2)
        {
          v38 = 0;
          v39 = v35;
          do
          {
            if (*v65 != v37)
            {
              objc_enumerationMutation(v28);
            }

            v40 = *(*(&v64 + 1) + 8 * v38);
            v41 = v40;
            if (!access([v40 fileSystemRepresentation], 1))
            {
              v35 = v39;
              goto LABEL_53;
            }

            v35 = v40;

            v38 = v38 + 1;
            v39 = v35;
          }

          while (v36 != v38);
          v36 = [v28 countByEnumeratingWithState:&v64 objects:v80 count:16];
          if (v36)
          {
            continue;
          }

          break;
        }
      }

LABEL_53:

      MIRestoreIdentity();
      [v63 logAccessPermissionsForURL:v26];
      if (v35)
      {
        memset(&v79, 0, sizeof(v79));
        v42 = v35;
        if (lstat([v35 fileSystemRepresentation], &v79))
        {
          v43 = *__error();
          v44 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
          {
            v45 = [v35 path];
            v46 = strerror(v43);
            sub_1000162A0(v45, v46, buf);
          }

          if (!gLogHandle || *(gLogHandle + 44) >= 3)
          {
            v47 = [v35 path];
            strerror(v43);
            MOLogWrite();
            goto LABEL_71;
          }
        }

        else
        {
          v51 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
          {
            v52 = [v35 path];
            sub_10001630C(v52, &v79, buf);
          }

          if (!gLogHandle || *(gLogHandle + 44) >= 3)
          {
            v47 = [v35 path];
            MOLogWrite();
LABEL_71:
          }
        }
      }

      else
      {
        v48 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
        {
          v49 = [v26 path];
          v50 = strerror(__errnuma);
          sub_1000163B4(v49, v50, &v79);
        }

        if (!gLogHandle || *(gLogHandle + 44) >= 3)
        {
          v55 = [v26 path];
          strerror(__errnuma);
          MOLogWrite();
        }
      }

LABEL_27:
LABEL_29:
      v9 = v58;
      goto LABEL_30;
    }

    MIRestoreIdentity();
  }

  else
  {
    if (gLogHandle && *(gLogHandle + 44) < 3)
    {
      goto LABEL_29;
    }

    MOLogWrite();
LABEL_30:
  }

  v61[2](v61, v3);
LABEL_32:
}

- (void)_onQueue_stageItemAtURL:(id)a3 toStagingLocation:(id)a4 options:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v49 = 0;
  v14 = +[MIFileManager defaultManager];
  v15 = [(MobileInstallationHelperService *)self _verifyBooleanEntitlement:@"com.apple.private.MobileInstallationHelperService.InstallDaemonOpsEnabled"];
  if (!v15)
  {
    if (v12)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v29 = MIInstallerErrorDomain;
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        v16 = _CreateAndLogError("[MobileInstallationHelperService _onQueue_stageItemAtURL:toStagingLocation:options:completion:]", 608, v29, 104, 0, 0, @"Options parameter is not an instance of MIInstallOptions found %@", v32, v31);;

        goto LABEL_3;
      }
    }

    v18 = [v12 performAPFSClone];
    v48 = 0;
    v44 = [v11 privilegedResolveWithError:&v48];
    v19 = v48;
    v16 = v19;
    if (!v44)
    {
      v17 = 0;
LABEL_23:

      v13[2](v13, v17, v49, v16);
      goto LABEL_24;
    }

    v47 = v19;
    v20 = [v14 itemExistsAtURL:v10 error:&v47];
    v21 = v47;

    if (v20)
    {
      v22 = [v10 lastPathComponent];
      v17 = [v44 URLByAppendingPathComponent:v22];

      if (v18)
      {
        v23 = 2;
      }

      else
      {
        v23 = 0;
      }

      v39 = v23;
      v40 = [v10 lastPathComponent];
      v42 = +[MIDaemonConfiguration sharedInstance];
      v24 = [v42 uid];
      v25 = +[MIDaemonConfiguration sharedInstance];
      v46 = v21;
      v26 = [v14 stageURL:v10 toItemName:v40 inStagingDir:v44 stagingMode:v39 settingUID:v24 gid:objc_msgSend(v25 hasSymlink:"gid") error:{&v49, &v46}];
      v16 = v46;

      if (v26)
      {
LABEL_17:
        if (v16)
        {
          v45 = 0;
          v35 = [v14 removeItemAtURL:v44 error:&v45];
          v36 = v45;
          if ((v35 & 1) == 0 && (!gLogHandle || *(gLogHandle + 44) >= 3))
          {
            v37 = [v44 path];
            MOLogWrite();
          }
        }

        goto LABEL_23;
      }

      v43 = [v10 lastPathComponent];
      v41 = [v44 URLByAppendingPathComponent:v43 isDirectory:0];
      v38 = [v41 path];
      v28 = _CreateAndLogError("[MobileInstallationHelperService _onQueue_stageItemAtURL:toStagingLocation:options:completion:]", 647, MIInstallerErrorDomain, 107, v16, 0, @"Failed to stage %@ to %@", v27, v10);

      v21 = v43;
      v16 = v28;
    }

    else
    {
      v33 = [v10 fileSystemRepresentation];
      _CreateAndLogError("[MobileInstallationHelperService _onQueue_stageItemAtURL:toStagingLocation:options:completion:]", 622, MIInstallerErrorDomain, 3, v21, &off_1000282C0, @"Could not access item to be installed at %s", v34, v33);
      v16 = v17 = 0;
    }

    goto LABEL_17;
  }

  v16 = v15;
LABEL_3:
  v13[2](v13, 0, 0, v16);
  v17 = 0;
LABEL_24:
}

- (void)stageItemAtURL:(id)a3 toStagingLocation:(id)a4 options:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  objc_opt_class();
  v14 = v10;
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15)
  {
    v17 = [(MobileInstallationHelperService *)self installAndStagingQueue];
    v18 = [v14 path];
    v19 = [NSString stringWithUTF8String:"[MobileInstallationHelperService stageItemAtURL:toStagingLocation:options:completion:]"];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100011904;
    v22[3] = &unk_100024CA0;
    v22[4] = self;
    v23 = v14;
    v24 = v11;
    v25 = v12;
    v26 = v13;
    [v17 runAsyncForIdentifier:v18 description:v19 operation:v22];
  }

  else
  {
    v20 = _CreateAndLogError("[MobileInstallationHelperService stageItemAtURL:toStagingLocation:options:completion:]", 674, MIInstallerErrorDomain, 104, 0, 0, @"url parameter is not a valid url", v16, v21);
    (*(v13 + 2))(v13, 0, 0, v20);
  }
}

- (void)_onQueue_makeSymlinkFromAppDataContainerToBundleForIdentifier:(id)a3 forPersona:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MobileInstallationHelperService *)self _verifyBooleanEntitlement:@"com.apple.private.MobileInstallationHelperService.InstallDaemonOpsEnabled"];
  if (v11)
  {
    goto LABEL_2;
  }

  objc_opt_class();
  v13 = v8;
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    v28 = 0;
    v16 = MIAssumeMobileIdentity(&v28);
    v12 = v28;
    if ((v16 & 1) == 0)
    {
      goto LABEL_21;
    }

    v27 = v12;
    v17 = [MIDataContainer containerWithIdentifier:v13 forPersona:v9 ofContentClass:2 createIfNeeded:0 created:0 error:&v27];
    v18 = v27;

    if (v17)
    {
      v26 = v18;
      v20 = [MIBundleContainer appBundleContainerWithIdentifier:v13 createIfNeeded:0 created:0 error:&v26];
      v12 = v26;

      if (v20)
      {
        v22 = [v20 bundle];
        v23 = v22;
        if (v22 && [v22 bundleType] == 4 && (objc_msgSend(v23, "isPlaceholder") & 1) == 0)
        {
          [v17 makeSymlinkToBundleInContainerIfNeeded:v20];
        }

        goto LABEL_20;
      }

      v24 = _CreateAndLogError("[MobileInstallationHelperService _onQueue_makeSymlinkFromAppDataContainerToBundleForIdentifier:forPersona:completion:]", 739, MIInstallerErrorDomain, 26, v12, 0, @"Failed to find app bundle container with identifier %@", v21, v13);
      v20 = v12;
    }

    else
    {
      v24 = _CreateAndLogError("[MobileInstallationHelperService _onQueue_makeSymlinkFromAppDataContainerToBundleForIdentifier:forPersona:completion:]", 733, MIInstallerErrorDomain, 26, v18, 0, @"Failed to get app data container with identifier %@", v19, v13);
      v20 = v18;
    }

    v12 = v24;
LABEL_20:

    MIRestoreIdentity();
LABEL_21:
    v10[2](v10, v12);
    goto LABEL_22;
  }

  v11 = _CreateAndLogError("[MobileInstallationHelperService _onQueue_makeSymlinkFromAppDataContainerToBundleForIdentifier:forPersona:completion:]", 714, MIInstallerErrorDomain, 104, 0, 0, @"identifier parameter is not a string", v15, v25);
LABEL_2:
  v12 = v11;
  v10[2](v10, v11);
LABEL_22:
}

- (void)makeSymlinkFromAppDataContainerToBundleForIdentifier:(id)a3 forPersona:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (qword_10002DF78 != -1)
  {
    sub_100016420();
  }

  v11 = qword_10002DF80;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100011E38;
  v15[3] = &unk_100024B48;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)_onQueue_createSafeHarborWithIdentifier:(id)a3 forPersona:(id)a4 containerType:(unint64_t)a5 andMigrateDataFrom:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = +[MIFileManager defaultManager];
  v17 = [(MobileInstallationHelperService *)self _verifyBooleanEntitlement:@"com.apple.private.MobileInstallationHelperService.InstallDaemonOpsEnabled"];
  if (v17)
  {
    goto LABEL_2;
  }

  objc_opt_class();
  v20 = v12;
  if (objc_opt_isKindOfClass())
  {
    v19 = v20;
  }

  else
  {
    v19 = 0;
  }

  if (!v19)
  {
    v22 = MIInstallerErrorDomain;
    v23 = @"Identifier parameter was not a string";
    v24 = 797;
LABEL_29:
    v18 = _CreateAndLogError("[MobileInstallationHelperService _onQueue_createSafeHarborWithIdentifier:forPersona:containerType:andMigrateDataFrom:completion:]", v24, v22, 104, 0, 0, v23, v21, v39);
    v15[2](v15, v18);
    goto LABEL_3;
  }

  if (a5 - 15 <= 0xFFFFFFFFFFFFFFF1)
  {
    v17 = _CreateAndLogError("[MobileInstallationHelperService _onQueue_createSafeHarborWithIdentifier:forPersona:containerType:andMigrateDataFrom:completion:]", 803, MIInstallerErrorDomain, 104, 0, 0, @"Container type parameter did not correspond to a defined container content class.", v21, v39);
LABEL_2:
    v18 = v17;
    v15[2](v15, v17);
    v19 = 0;
    goto LABEL_3;
  }

  objc_opt_class();
  v25 = v14;
  if (objc_opt_isKindOfClass())
  {
    v19 = v25;
  }

  else
  {
    v19 = 0;
  }

  if (!v19)
  {
    v22 = MIInstallerErrorDomain;
    v23 = @"incomingURL parameter is not a valid url";
    v24 = 809;
    goto LABEL_29;
  }

  v52 = v25;
  *v62 = 0;
  MIGetCurrentMobileUserInfo(&v62[1], v62);
  v26 = +[MIStagingManager sharedInstance];
  v61 = 0;
  v54 = [v26 stagingLocationForURL:v25 withinStagingSubsytem:1 usingUniqueName:0 error:&v61];
  v18 = v61;

  if (!v54)
  {
    v34 = 0;
    v19 = 0;
    goto LABEL_35;
  }

  v60 = v18;
  v19 = [v54 privilegedResolveWithError:&v60];
  v27 = v60;

  if (!v19)
  {
    v34 = 0;
    v18 = v27;
    goto LABEL_35;
  }

  v59 = v27;
  v50 = [v16 setOwnerOfURL:v19 toUID:v62[1] gid:v62[0] error:&v59];
  v28 = v59;

  if ((v50 & 1) == 0)
  {
    v35 = [v19 path];
    v37 = _CreateAndLogError("[MobileInstallationHelperService _onQueue_createSafeHarborWithIdentifier:forPersona:containerType:andMigrateDataFrom:completion:]", 841, MIInstallerErrorDomain, 105, v28, 0, @"Failed to chown temporary staging directory %@ to mobile/mobile", v36, v35);
    v34 = 0;
LABEL_34:

    v18 = v37;
    goto LABEL_35;
  }

  v29 = [v52 lastPathComponent];
  v49 = [v19 URLByAppendingPathComponent:v29 isDirectory:1];

  if (!gLogHandle || *(gLogHandle + 44) >= 5)
  {
    v51 = [v52 path];
    [v49 path];
    v45 = v44 = v51;
    v41 = v13;
    v43 = a5;
    v39 = v20;
    MOLogWrite();
  }

  v58 = 0;
  v47 = [v49 lastPathComponent];
  v46 = [v49 URLByDeletingLastPathComponent];
  v57 = v28;
  LOBYTE(v40) = 0;
  v30 = [v16 stageURLByMoving:v52 toItemName:v47 inStagingDir:v46 settingUID:v62[1] gid:v62[0] dataProtectionClass:0xFFFFFFFFLL breakHardlinks:v40 hasSymlink:&v58 error:&v57];
  v48 = v57;

  if ((v30 & 1) == 0)
  {
    v35 = [v52 path];
    v42 = [v19 path];
    v37 = _CreateAndLogError("[MobileInstallationHelperService _onQueue_createSafeHarborWithIdentifier:forPersona:containerType:andMigrateDataFrom:completion:]", 852, MIInstallerErrorDomain, 4, v48, 0, @"Failed to stage safe harbor content at %@ to %@", v38, v35);

    v28 = v42;
    v34 = v49;
    goto LABEL_34;
  }

  v56 = v48;
  v31 = MIAssumeMobileIdentity(&v56);
  v18 = v56;

  if (v31)
  {
    v32 = v18;
    v53 = +[MISafeHarborManager defaultManager];
    v55 = v18;
    v33 = [v53 fromMIH_createSafeHarborWithIdentifier:v20 forPersona:v13 containerType:a5 andMigrateDataFrom:v49 containsOneOrMoreSymlinks:v58 withError:&v55];
    v18 = v55;

    if ((v33 & 1) == 0 && (!gLogHandle || *(gLogHandle + 44) >= 3))
    {
      MOLogWrite();
    }

    MIRestoreIdentity();
    goto LABEL_36;
  }

  v34 = v49;
LABEL_35:

LABEL_36:
  if (v19)
  {
    [v16 removeItemAtURL:v19 error:0];
  }

  v15[2](v15, v18);
LABEL_3:
}

- (void)createSafeHarborWithIdentifier:(id)a3 forPersona:(id)a4 containerType:(unint64_t)a5 andMigrateDataFrom:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  if (qword_10002DF88 != -1)
  {
    sub_100016434();
  }

  v16 = qword_10002DF90;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100012730;
  v21[3] = &unk_100024D08;
  v21[4] = self;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v25 = v15;
  v26 = a5;
  v17 = v15;
  v18 = v14;
  v19 = v13;
  v20 = v12;
  dispatch_async(v16, v21);
}

- (void)isDataContainerEmpty:(id)a3 ofContainerType:(unint64_t)a4 completion:(id)a5
{
  v7 = a3;
  v22 = a5;
  v24 = [v7 path];
  v8 = [v24 length];
  v40 = 0;
  v23 = [MIMCMContainer defaultDirectoriesForContainerType:a4 error:&v40];
  v9 = v40;
  if (!v23)
  {
    v21 = 0;
    goto LABEL_18;
  }

  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v10 = v23;
  v11 = [v10 countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (!v11)
  {
    v21 = 1;
    goto LABEL_17;
  }

  v25 = v8 + 1;
  v26 = *v33;
  v12 = v9;
  while (2)
  {
    for (i = 0; i != v11; i = i + 1)
    {
      if (*v33 != v26)
      {
        objc_enumerationMutation(v10);
      }

      v14 = *(*(&v32 + 1) + 8 * i);
      v15 = +[MIFileManager defaultManager];
      v16 = [v7 URLByAppendingPathComponent:v14 isDirectory:1];
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_100012A98;
      v27[3] = &unk_100024D30;
      v31 = v25;
      v17 = v10;
      v28 = v17;
      v29 = v7;
      v30 = &v36;
      v18 = [v15 traverseDirectoryAtURL:v16 withBlock:v27];

      if (v18)
      {
        v9 = _CreateAndLogError("[MobileInstallationHelperService isDataContainerEmpty:ofContainerType:completion:]", 933, MIInstallerErrorDomain, 4, v18, 0, @"Failed to traverse container: %@", v19, v24);

LABEL_16:
        v21 = 0;
        goto LABEL_17;
      }

      v20 = *(v37 + 24);

      if (v20)
      {
        v9 = 0;
        goto LABEL_16;
      }

      v12 = 0;
    }

    v11 = [v17 countByEnumeratingWithState:&v32 objects:v41 count:16];
    v12 = 0;
    v9 = 0;
    v21 = 1;
    if (v11)
    {
      continue;
    }

    break;
  }

LABEL_17:

  _Block_object_dispose(&v36, 8);
LABEL_18:
  v22[2](v22, v21, v9);
}

- (void)createAppSnapshotWithBundleID:(id)a3 snapshotToURL:(id)a4 onlyV1AppIfPresent:(BOOL)a5 placeholderOnly:(BOOL)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  if (qword_10002DF98 != -1)
  {
    sub_100016448();
  }

  v15 = qword_10002DFA0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000130CC;
  block[3] = &unk_100024D78;
  block[4] = self;
  v20 = v12;
  v23 = a5;
  v24 = a6;
  v21 = v13;
  v22 = v14;
  v16 = v14;
  v17 = v13;
  v18 = v12;
  dispatch_async(v15, block);
}

- (BOOL)_validateArgsForMethodWithName:(const char *)a3 bundleIdentifier:(id)a4 targetURL:(id)a5 error:(id *)a6
{
  v9 = a4;
  v10 = a5;
  objc_opt_class();
  v11 = v9;
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    objc_opt_class();
    v14 = v10;
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    if (v15)
    {
      v17 = 0;
      goto LABEL_15;
    }

    _CreateAndLogError("[MobileInstallationHelperService _validateArgsForMethodWithName:bundleIdentifier:targetURL:error:]", 1642, MIInstallerErrorDomain, 104, 0, 0, @"Parameter validation failed for: %s, wrapperURL parameter was not a valid url", v16, a3);
  }

  else
  {
    _CreateAndLogError("[MobileInstallationHelperService _validateArgsForMethodWithName:bundleIdentifier:targetURL:error:]", 1637, MIInstallerErrorDomain, 104, 0, 0, @"Parameter validation failed for: %s, bundleIdentifier parameter was not a string", v13, a3);
  }
  v17 = ;
  if (a6 && v17)
  {
    v17 = v17;
    *a6 = v17;
  }

LABEL_15:
  v18 = v17 == 0;

  return v18;
}

- (BOOL)_validateArgsForMethodWithName:(const char *)a3 bundleIdentifier:(id)a4 wrapperURL:(id)a5 data:(id)a6 error:(id *)a7
{
  v12 = a6;
  v20 = 0;
  LODWORD(a4) = [(MobileInstallationHelperService *)self _validateArgsForMethodWithName:a3 bundleIdentifier:a4 targetURL:a5 error:&v20];
  v13 = v20;
  if (a4)
  {
    objc_opt_class();
    v14 = v12;
    v15 = (objc_opt_isKindOfClass() & 1) != 0 ? v14 : 0;

    if (!v15)
    {
      v17 = _CreateAndLogError("[MobileInstallationHelperService _validateArgsForMethodWithName:bundleIdentifier:wrapperURL:data:error:]", 1663, MIInstallerErrorDomain, 104, 0, 0, @"Parameter validation failed for: %s, data parameter was not a data object", v16, a3);

      v13 = v17;
    }
  }

  if (a7 && v13)
  {
    v18 = v13;
    *a7 = v13;
  }

  return v13 == 0;
}

- (id)_onQueue_validateParametersForStagingLocation:(id)a3 atRelativePath:(id)a4 toDestinationURL:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = +[MIFileManager defaultManager];
  objc_opt_class();
  v13 = v10;
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (!v14)
  {
    _CreateAndLogError("[MobileInstallationHelperService _onQueue_validateParametersForStagingLocation:atRelativePath:toDestinationURL:error:]", 2174, MIInstallerErrorDomain, 104, 0, 0, @"Parameter validation failed, pathRelativeToStagingURL %@ parameter was not a valid string", v15, v13);
    v20 = LABEL_12:;
LABEL_14:
    v21 = 0;
    v22 = 0;
    goto LABEL_15;
  }

  objc_opt_class();
  v16 = v11;
  if (objc_opt_isKindOfClass())
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (!v17)
  {
    v20 = _CreateAndLogError("[MobileInstallationHelperService _onQueue_validateParametersForStagingLocation:atRelativePath:toDestinationURL:error:]", 2179, MIInstallerErrorDomain, 104, 0, 0, @"Parameter validation failed, destinationURL %@ parameter was not a valid url", v18, v16);
    v14 = 0;
    goto LABEL_14;
  }

  v14 = [v13 pathComponents];
  if ([v14 containsObject:@".."])
  {
    _CreateAndLogError("[MobileInstallationHelperService _onQueue_validateParametersForStagingLocation:atRelativePath:toDestinationURL:error:]", 2185, MIInstallerErrorDomain, 104, 0, 0, @"Relative path string %@ contains '..', which isn't allowed", v19, v13);
    goto LABEL_12;
  }

  v32 = 0;
  v22 = [v9 privilegedResolveWithError:&v32];
  v20 = v32;
  if (v22)
  {
    v21 = [v22 URLByAppendingPathComponent:v13 isDirectory:0];
    v26 = [v12 realPathForURL:v21 ifChildOfURL:v22];
    if (v26)
    {
      v24 = v26;
      goto LABEL_18;
    }

    v30 = MIInstallerErrorDomain;
    v27 = [v21 path];
    v29 = [v22 path];
    v31 = _CreateAndLogError("[MobileInstallationHelperService _onQueue_validateParametersForStagingLocation:atRelativePath:toDestinationURL:error:]", 2197, v30, 104, 0, 0, @"Path %@ isn't a child of %@", v28, v27);

    v20 = v31;
  }

  else
  {
    v21 = 0;
  }

LABEL_15:
  if (a6)
  {
    v23 = v20;
    v24 = 0;
    *a6 = v20;
  }

  else
  {
    v24 = 0;
  }

LABEL_18:

  return v24;
}

- (void)_onQueue_moveItemInStagingLocation:(id)a3 atRelativePath:(id)a4 toDestinationURL:(id)a5 onBehalfOf:(id *)a6 completion:(id)a7
{
  v12 = a5;
  v13 = a7;
  v14 = a4;
  v15 = a3;
  v16 = +[MIFileManager defaultManager];
  v42 = 0;
  v17 = [(MobileInstallationHelperService *)self _onQueue_validateParametersForStagingLocation:v15 atRelativePath:v14 toDestinationURL:v12 error:&v42];

  v18 = v42;
  if (v17)
  {
    v19 = [v12 URLByDeletingLastPathComponent];
    v41 = v18;
    v20 = *&a6->var0[4];
    *atoken.val = *a6->var0;
    *&atoken.val[4] = v20;
    v21 = sub_10001399C(v19, &atoken, &v41);
    v22 = v41;

    if (v21)
    {
      if ([v16 itemExistsAtURL:v17])
      {
        if (![v16 itemExistsAtURL:v12])
        {
          v33 = *&a6->var0[4];
          *atoken.val = *a6->var0;
          *&atoken.val[4] = v33;
          v34 = audit_token_to_euid(&atoken);
          v35 = *&a6->var0[4];
          *atoken.val = *a6->var0;
          *&atoken.val[4] = v35;
          v39 = v22;
          v36 = [v16 standardizeOwnershipAtURL:v17 toUID:v34 GID:audit_token_to_egid(&atoken) removeACLs:0 setProtectionClass:0 foundSymlink:0 error:&v39];
          v18 = v39;

          if (!v36)
          {
            goto LABEL_11;
          }

          v38 = v18;
          v37 = [v16 secureRenameFromSourceURL:v17 toDestinationURL:v12 destinationStatus:2 error:&v38];
          v24 = v38;

          if ((v37 & 1) == 0)
          {
            v18 = v24;
            goto LABEL_11;
          }

          v18 = 0;
          goto LABEL_10;
        }

        v23 = MIInstallerErrorDomain;
        v24 = [v17 path];
        v25 = [v12 path];
        _CreateAndLogError("[MobileInstallationHelperService _onQueue_moveItemInStagingLocation:atRelativePath:toDestinationURL:onBehalfOf:completion:]", 2232, v23, 2, 0, 0, @"Failed to move item from %@ to %@ because destination already exists", v26, v24);
      }

      else
      {
        v31 = MIInstallerErrorDomain;
        v24 = [v17 path];
        v25 = [v12 path];
        _CreateAndLogError("[MobileInstallationHelperService _onQueue_moveItemInStagingLocation:atRelativePath:toDestinationURL:onBehalfOf:completion:]", 2226, v31, 104, 0, 0, @"Failed to move item from %@ to %@ because source doesn't exist", v32, v24);
      }
      v18 = ;

      v22 = v25;
    }

    else
    {
      v27 = *&a6->var0[4];
      *atoken.val = *a6->var0;
      *&atoken.val[4] = v27;
      v28 = audit_token_to_euid(&atoken);
      v29 = MIInstallerErrorDomain;
      v24 = [v12 path];
      v18 = _CreateAndLogError("[MobileInstallationHelperService _onQueue_moveItemInStagingLocation:atRelativePath:toDestinationURL:onBehalfOf:completion:]", 2221, v29, 3, v22, 0, @"Unable to confirm write access for user %u to %@", v30, v28);
    }

LABEL_10:
  }

LABEL_11:
  v13[2](v13, v18);
}

- (void)moveItemInStagingLocation:(id)a3 atRelativePath:(id)a4 toDestinationURL:(id)a5 onBehalfOf:(id *)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = [(MobileInstallationHelperService *)self _verifyBooleanEntitlement:@"com.apple.private.MobileInstallationHelperService.InstallDaemonOpsEnabled"];
  if (!v16)
  {
    if (v12)
    {
      objc_opt_class();
      v19 = v14;
      if (objc_opt_isKindOfClass())
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      if (v20)
      {
        v22 = [(MobileInstallationHelperService *)self installAndStagingQueue];
        v23 = [v19 path];
        v24 = [NSString stringWithUTF8String:"[MobileInstallationHelperService moveItemInStagingLocation:atRelativePath:toDestinationURL:onBehalfOf:completion:]"];
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_100013E2C;
        v27[3] = &unk_100024DA0;
        v27[4] = self;
        v28 = v12;
        v29 = v13;
        v30 = v19;
        v25 = *&a6->var0[4];
        v32 = *a6->var0;
        v33 = v25;
        v31 = v15;
        [v22 runAsyncForIdentifier:v23 description:v24 operation:v27];

        goto LABEL_12;
      }

      _CreateAndLogError("[MobileInstallationHelperService moveItemInStagingLocation:atRelativePath:toDestinationURL:onBehalfOf:completion:]", 2271, MIInstallerErrorDomain, 104, 0, 0, @"Parameter validation failed, destinationURL %@ parameter was not a valid url", v21, v19);
    }

    else
    {
      _CreateAndLogError("[MobileInstallationHelperService moveItemInStagingLocation:atRelativePath:toDestinationURL:onBehalfOf:completion:]", 2265, MIInstallerErrorDomain, 104, 0, 0, @"Parameter validation failed, stagingLocation %@ parameter was not a valid instance of the MIStagingLocation class", v17, 0);
    }
    v26 = ;
    (*(v15 + 2))(v15, v26);

    goto LABEL_12;
  }

  v18 = v16;
  (*(v15 + 2))(v15, v16);

LABEL_12:
}

- (void)_onQueue_cloneItemAtURL:(id)a3 toURL:(id)a4 onBehalfOf:(id *)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = +[MIFileManager defaultManager];
  v13 = [v10 URLByDeletingLastPathComponent];
  v66 = 0;
  v14 = *&a5->var0[4];
  *atoken.val = *a5->var0;
  *&atoken.val[4] = v14;
  v15 = sub_10001399C(v13, &atoken, &v66);
  v16 = v66;

  if ((v15 & 1) == 0)
  {
    v30 = *&a5->var0[4];
    *atoken.val = *a5->var0;
    *&atoken.val[4] = v30;
    v31 = audit_token_to_euid(&atoken);
    v32 = MIInstallerErrorDomain;
    v18 = [v10 path];
    v29 = _CreateAndLogError("[MobileInstallationHelperService _onQueue_cloneItemAtURL:toURL:onBehalfOf:completion:]", 2291, v32, 3, v16, 0, @"Unable to confirm write access for user %u to %@", v33, v31);
    goto LABEL_22;
  }

  if (([v12 itemExistsAtURL:v9] & 1) == 0)
  {
    v34 = MIInstallerErrorDomain;
    v18 = [v9 path];
    v56 = [v10 path];
    v29 = _CreateAndLogError("[MobileInstallationHelperService _onQueue_cloneItemAtURL:toURL:onBehalfOf:completion:]", 2296, v34, 104, 0, 0, @"Failed to clone item from %@ to %@ because the source doesn't exist.", v35, v18);

    v16 = v56;
    goto LABEL_22;
  }

  v17 = +[MIStagingManager sharedInstance];
  v64 = v16;
  v18 = [v17 stagingLocationForURL:v10 withinStagingSubsytem:3 usingUniqueName:0 error:&v64];
  v19 = v64;

  if (!v18)
  {
    v36 = MIInstallerErrorDomain;
    v18 = [v9 path];
    v16 = [v10 path];
    v29 = _CreateAndLogError("[MobileInstallationHelperService _onQueue_cloneItemAtURL:toURL:onBehalfOf:completion:]", 2302, v36, 4, v19, 0, @"Failed to clone item from %@ to %@ because the staging location could not be created.", v37, v18);

    goto LABEL_22;
  }

  v63 = v19;
  v16 = [v18 privilegedResolveWithError:&v63];
  v20 = v63;

  if (!v16)
  {
    v38 = MIInstallerErrorDomain;
    v16 = [v9 path];
    v57 = [v10 path];
    v29 = _CreateAndLogError("[MobileInstallationHelperService _onQueue_cloneItemAtURL:toURL:onBehalfOf:completion:]", 2308, v38, 4, v20, 0, @"Failed to clone item from %@ to %@ because the staging location could not be resolved.", v39, v16);

    goto LABEL_22;
  }

  v59 = v20;
  v21 = [v10 lastPathComponent];
  v22 = [v16 URLByAppendingPathComponent:v21 isDirectory:0];

  v60 = v22;
  if (copyfile([v9 fileSystemRepresentation], objc_msgSend(v22, "fileSystemRepresentation"), 0, 0x10C000Fu))
  {
    v23 = *__error();
    v24 = [v9 path];
    v25 = v22;
    v26 = v24;
    v27 = [v25 path];
    strerror(v23);
    v29 = _CreateError("[MobileInstallationHelperService _onQueue_cloneItemAtURL:toURL:onBehalfOf:completion:]", 2319, NSPOSIXErrorDomain, v23, 0, 0, @"copyfile of %@ to %@ failed: %s", v28, v26);
  }

  else
  {
    v40 = *&a5->var0[4];
    *atoken.val = *a5->var0;
    *&atoken.val[4] = v40;
    v41 = audit_token_to_euid(&atoken);
    v42 = *&a5->var0[4];
    *atoken.val = *a5->var0;
    *&atoken.val[4] = v42;
    v43 = audit_token_to_egid(&atoken);
    v44 = [v22 path];
    v45 = lchown([v44 UTF8String], v41, v43);

    if (v45)
    {
      v46 = *__error();
      v47 = [v22 path];
      strerror(v46);
      v26 = v47;
      v29 = _CreateError("[MobileInstallationHelperService _onQueue_cloneItemAtURL:toURL:onBehalfOf:completion:]", 2327, NSPOSIXErrorDomain, v46, 0, 0, @"Failed to lchown %@ : %s", v48, v47);
      v27 = v59;
    }

    else
    {
      v62 = v59;
      v49 = [v12 secureRenameFromSourceURL:v22 toDestinationURL:v10 destinationStatus:2 error:&v62];
      v50 = v62;

      if (v49)
      {
        v29 = 0;
        v26 = v50;
        goto LABEL_17;
      }

      v51 = MIInstallerErrorDomain;
      v26 = [v9 path];
      v58 = [v10 path];
      v29 = _CreateAndLogError("[MobileInstallationHelperService _onQueue_cloneItemAtURL:toURL:onBehalfOf:completion:]", 2332, v51, 4, v50, 0, @"Failed to rename clone from staged path at %@ to caller's destination at %@", v52, v26);

      v27 = v58;
    }
  }

LABEL_17:
  v61 = 0;
  v53 = [v12 removeItemAtURL:v16 error:&v61];
  v54 = v61;
  if ((v53 & 1) == 0 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v55 = [v16 path];
    MOLogWrite();
  }

LABEL_22:
  v11[2](v11, v29);
}

- (void)cloneItemAtURL:(id)a3 toURL:(id)a4 onBehalfOf:(id *)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(MobileInstallationHelperService *)self _verifyBooleanEntitlement:@"com.apple.private.MobileInstallationHelperService.InstallDaemonOpsEnabled"];
  if (!v13)
  {
    objc_opt_class();
    v15 = v10;
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    if (v16)
    {
      objc_opt_class();
      v18 = v11;
      if (objc_opt_isKindOfClass())
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      if (v19)
      {
        v21 = [(MobileInstallationHelperService *)self installAndStagingQueue];
        v22 = [v18 path];
        v23 = [NSString stringWithUTF8String:"[MobileInstallationHelperService cloneItemAtURL:toURL:onBehalfOf:completion:]"];
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_100014710;
        v26[3] = &unk_100024DC8;
        v26[4] = self;
        v27 = v15;
        v28 = v18;
        v24 = *&a5->var0[4];
        v30 = *a5->var0;
        v31 = v24;
        v29 = v12;
        [v21 runAsyncForIdentifier:v22 description:v23 operation:v26];

        goto LABEL_15;
      }

      _CreateAndLogError("[MobileInstallationHelperService cloneItemAtURL:toURL:onBehalfOf:completion:]", 2364, MIInstallerErrorDomain, 104, 0, 0, @"Parameter validation failed, destinationURL %@ parameter was not a valid url", v20, v18);
    }

    else
    {
      _CreateAndLogError("[MobileInstallationHelperService cloneItemAtURL:toURL:onBehalfOf:completion:]", 2358, MIInstallerErrorDomain, 104, 0, 0, @"Parameter validation failed, srcURL %@ parameter was not a valid url", v17, v15);
    }
    v25 = ;
    (*(v12 + 2))(v12, v25);

    goto LABEL_15;
  }

  v14 = v13;
  (*(v12 + 2))(v12, v13);

LABEL_15:
}

- (void)stagingLocationForSystemContentWithinSubsystem:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(MobileInstallationHelperService *)self _verifyAtleastOneBooleanEntitlementFromArray:&off_1000282E8];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
  }

  else
  {
    v10 = +[MIStagingManager sharedInstance];
    v11 = 0;
    v9 = [v10 stagingLocationForSystemContentWithinSubsystem:a3 error:&v11];
    v8 = v11;
  }

  v6[2](v6, v9, v8);
}

- (void)stagingLocationForUserContentWithinSubsystem:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(MobileInstallationHelperService *)self _verifyAtleastOneBooleanEntitlementFromArray:&off_100028300];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
  }

  else
  {
    v10 = +[MIStagingManager sharedInstance];
    v11 = 0;
    v9 = [v10 stagingLocationForUserContentWithinSubsystem:a3 error:&v11];
    v8 = v11;
  }

  v6[2](v6, v9, v8);
}

- (void)allStagingLocationsWithinSubsystem:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(MobileInstallationHelperService *)self _verifyAtleastOneBooleanEntitlementFromArray:&off_100028318];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
  }

  else
  {
    v10 = +[MIStagingManager sharedInstance];
    v11 = 0;
    v9 = [v10 allStagingLocationsWithinSubsystem:a3 error:&v11];
    v8 = v11;
  }

  v6[2](v6, v9, v8);
}

- (void)stagingLocationForURL:(id)a3 withinStagingSubsytem:(unint64_t)a4 usingUniqueName:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [(MobileInstallationHelperService *)self _verifyAtleastOneBooleanEntitlementFromArray:&off_100028330];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
  }

  else
  {
    v16 = +[MIStagingManager sharedInstance];
    v17 = 0;
    v15 = [v16 stagingLocationForURL:v10 withinStagingSubsytem:a4 usingUniqueName:v11 error:&v17];
    v14 = v17;
  }

  v12[2](v12, v15, v14);
}

- (void)stagingLocationForInstallLocation:(id)a3 withinStagingSubsytem:(unint64_t)a4 usingUniqueName:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [(MobileInstallationHelperService *)self _verifyAtleastOneBooleanEntitlementFromArray:&off_100028348];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
  }

  else
  {
    v16 = +[MIStagingManager sharedInstance];
    v17 = 0;
    v15 = [v16 stagingLocationForInstallLocation:v10 withinStagingSubsytem:a4 usingUniqueName:v11 error:&v17];
    v14 = v17;
  }

  v12[2](v12, v15, v14);
}

- (id)_issueSandboxExtensionForURL:(id)a3 error:(id *)a4
{
  v5 = a3;
  [v5 fileSystemRepresentation];
  v6 = sandbox_extension_issue_file();
  if (v6)
  {
    v7 = [[NSString alloc] initWithBytesNoCopy:v6 length:strlen(v6) encoding:4 freeWhenDone:1];
    v8 = 0;
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v9 = *__error();
    v10 = [v5 path];
    v12 = _CreateError("[MobileInstallationHelperService _issueSandboxExtensionForURL:error:]", 2607, NSPOSIXErrorDomain, v9, 0, 0, @"Failed to create sandbox extension for path %@", v11, v10);

    v8 = _CreateAndLogError("[MobileInstallationHelperService _issueSandboxExtensionForURL:error:]", 2608, MIInstallerErrorDomain, 4, v12, 0, @"Could not provide access to staging directory", v13, v16);

    v7 = 0;
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  if (!v7)
  {
    v14 = v8;
    *a4 = v8;
  }

LABEL_7:

  return v7;
}

- (void)resolveStagingBaseWithSandboxExtensionForVolumeUUID:(id)a3 withinStagingSubsystem:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(MobileInstallationHelperService *)self _verifyAtleastOneBooleanEntitlementFromArray:&off_100028360];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = 0;
LABEL_3:
    v14 = 0;
    goto LABEL_10;
  }

  v15 = +[MIStagingManager sharedInstance];
  v18 = 0;
  v13 = [v15 resolveStagingBaseForVolumeUUID:v8 withinStagingSubsystem:a4 error:&v18];
  v11 = v18;

  if (!v13)
  {
    v12 = 0;
    goto LABEL_3;
  }

  v17 = v11;
  v14 = [(MobileInstallationHelperService *)self _issueSandboxExtensionForURL:v13 error:&v17];
  v16 = v17;

  if (v14)
  {
    v12 = v13;
    v13 = v12;
  }

  else
  {
    v12 = 0;
  }

  v11 = v16;
LABEL_10:
  v9[2](v9, v12, v14, v11);
}

- (void)stagingURLWithSandboxExtensionForUserContentWithinSubsystem:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(MobileInstallationHelperService *)self _verifyAtleastOneBooleanEntitlementFromArray:&off_100028378];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = 0;
    v11 = 0;
LABEL_3:
    v12 = 0;
    goto LABEL_10;
  }

  v13 = +[MIStagingManager sharedInstance];
  v16 = 0;
  v11 = [v13 stagingRecordForUserContentWithinSubsystem:a3 error:&v16];
  v8 = v16;

  if (!v11)
  {
    v9 = 0;
    v10 = 0;
    goto LABEL_3;
  }

  v10 = [v11 completeURL];
  v15 = v8;
  v12 = [(MobileInstallationHelperService *)self _issueSandboxExtensionForURL:v10 error:&v15];
  v14 = v15;

  if (v12)
  {
    v9 = v10;
    v10 = v9;
  }

  else
  {
    v9 = 0;
  }

  v8 = v14;
LABEL_10:
  v6[2](v6, v9, v12, v8);
}

- (void)stagingURLWithSandboxExtensionForSystemContentWithinSubsystem:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(MobileInstallationHelperService *)self _verifyAtleastOneBooleanEntitlementFromArray:&off_100028390];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = 0;
    v11 = 0;
LABEL_3:
    v12 = 0;
    goto LABEL_10;
  }

  v13 = +[MIStagingManager sharedInstance];
  v16 = 0;
  v11 = [v13 stagingRecordForSystemContentWithinSubsystem:a3 error:&v16];
  v8 = v16;

  if (!v11)
  {
    v9 = 0;
    v10 = 0;
    goto LABEL_3;
  }

  v10 = [v11 completeURL];
  v15 = v8;
  v12 = [(MobileInstallationHelperService *)self _issueSandboxExtensionForURL:v10 error:&v15];
  v14 = v15;

  if (v12)
  {
    v9 = v10;
    v10 = v9;
  }

  else
  {
    v9 = 0;
  }

  v8 = v14;
LABEL_10:
  v6[2](v6, v9, v12, v8);
}

- (void)volumeUUIDForURL:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  bzero(v21, 0x420uLL);
  v8 = [(MobileInstallationHelperService *)self _verifyAtleastOneBooleanEntitlementFromArray:&off_1000283A8];
  if (v8)
  {
    goto LABEL_2;
  }

  objc_opt_class();
  v11 = v6;
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (!v12)
  {
    v8 = _CreateAndLogError("[MobileInstallationHelperService volumeUUIDForURL:completion:]", 2719, MIInstallerErrorDomain, 104, 0, 0, @"Parameter validation failed, url %@ parameter was not a valid url", v13, v11);
LABEL_2:
    v9 = v8;
LABEL_3:
    v10 = 0;
    goto LABEL_4;
  }

  v14 = +[MIFileManager defaultManager];
  v20 = 0;
  v15 = [v14 copyVolumeInfo:v21 forURL:v11 error:&v20];
  v9 = v20;

  if (!v15)
  {
    goto LABEL_3;
  }

  if (v22 ^ 0x73667061 | v23)
  {
    v16 = MIInstallerErrorDomain;
    v17 = [v11 path];
    v19 = _CreateAndLogError("[MobileInstallationHelperService volumeUUIDForURL:completion:]", 2728, v16, 233, 0, 0, @"Path %@ is present on a non APFS formatted volume", v18, v17);

    v10 = 0;
    v9 = v19;
  }

  else
  {
    v10 = [[NSUUID alloc] initWithUUIDBytes:v21];
  }

LABEL_4:
  v7[2](v7, v10, v9);
}

- (void)getPidForTestingWithCompletion:(id)a3
{
  v5 = a3;
  v4 = getpid();
  (*(a3 + 2))(v5, v4);
}

- (void)dieForTesting
{
  if (!gLogHandle || *(gLogHandle + 44) >= 5)
  {
    v2 = [(MobileInstallationHelperService *)self clientName];
    MOLogWrite();
  }

  exit(1);
}

- (void)setTestingEnabled:(BOOL)a3
{
  v3 = a3;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    v4 = [(MobileInstallationHelperService *)self clientName];
    MOLogWrite();
  }

  if (v3)
  {

    MIHelperServiceEnableTestModes();
  }

  else
  {

    MIHelperServiceDisableTestModes();
  }
}

- (void)setTestModeForIdentifierPrefix:(id)a3 testMode:(unint64_t)a4 validationData:(id)a5
{
  v10 = a3;
  v8 = a5;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    v9 = [(MobileInstallationHelperService *)self clientName];
    MOLogWrite();
  }

  MIHelperServiceSetTestMode(v10, a4, v8);
}

- (NSXPCConnection)xpcConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_xpcConnection);

  return WeakRetained;
}

@end