@interface MIStagingManager
+ (id)_createStagingDirectoryInRoot:(id)root withRelativePath:(id)path stagingSubsystem:(unint64_t)subsystem usingUniqueName:(id)name error:(id *)error;
+ (id)_relativeStagingPathForExternalVolumeWithinStagingSubsystem:(unint64_t)subsystem;
+ (id)sharedInstance;
- (BOOL)_checkKnownStagingLocationsForVolumeUUID:(id)d inStagingSubsystem:(unint64_t)subsystem usingUniqueName:(id)name stagingLocation:(id *)location error:(id *)error;
- (id)_configureStagingDirectoryWithRoot:(id)root withRelativePath:(id)path stagingSubsystem:(unint64_t)subsystem usingUniqueName:(id)name error:(id *)error;
- (id)_stagingLocationForVolumeUUID:(id)d withVolumeMountPoint:(id)point inStagingSubsytem:(unint64_t)subsytem usingUniqueName:(id)name error:(id *)error;
- (id)allStagingLocationsWithinSubsystem:(unint64_t)subsystem error:(id *)error;
- (id)resolveStagingBaseForVolumeUUID:(id)d withinStagingSubsystem:(unint64_t)subsystem error:(id *)error;
- (id)stagingLocationForInstallLocation:(id)location withinStagingSubsytem:(unint64_t)subsytem usingUniqueName:(id)name error:(id *)error;
- (id)stagingLocationForSystemContentWithinSubsystem:(unint64_t)subsystem error:(id *)error;
- (id)stagingLocationForURL:(id)l withinStagingSubsytem:(unint64_t)subsytem usingUniqueName:(id)name error:(id *)error;
- (id)stagingLocationForUserContentWithinSubsystem:(unint64_t)subsystem error:(id *)error;
- (id)stagingRecordForSystemContentWithinSubsystem:(unint64_t)subsystem error:(id *)error;
- (id)stagingRecordForUserContentWithinSubsystem:(unint64_t)subsystem error:(id *)error;
@end

@implementation MIStagingManager

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001A44;
  block[3] = &unk_100024848;
  block[4] = self;
  if (qword_10002DF08 != -1)
  {
    dispatch_once(&qword_10002DF08, block);
  }

  v2 = qword_10002DF00;

  return v2;
}

- (id)stagingRecordForSystemContentWithinSubsystem:(unint64_t)subsystem error:(id *)error
{
  if (subsystem == 3)
  {
    cachesDirectory = [NSURL fileURLWithPath:@"/private/var/tmp" isDirectory:1 relativeToURL:0];
    v8 = @"com.apple.appinstall.temp";
LABEL_8:
    v10 = 0;
    v12 = 0;
    v13 = 0;
    if (!cachesDirectory)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (subsystem != 2)
  {
    if (subsystem == 1)
    {
      v6 = +[MIDaemonConfiguration sharedInstance];
      cachesDirectory = [v6 cachesDirectory];

      v8 = @"com.apple.mobile.installd.staging";
      goto LABEL_8;
    }

    v10 = _CreateAndLogError("[MIStagingManager stagingRecordForSystemContentWithinSubsystem:error:]", 89, MIInstallerErrorDomain, 4, 0, 0, @"Failed to find staging location for unknown subsystem", v4, v17);
LABEL_13:
    v12 = 0;
    v13 = 0;
    v8 = 0;
    if (!error)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v9 = +[MIDaemonConfiguration sharedInstance];
  v18 = 0;
  cachesDirectory = [v9 installCoordinationStagingWithError:&v18];
  v10 = v18;

  if (!cachesDirectory)
  {
    goto LABEL_13;
  }

  v11 = [@"Library" stringByAppendingPathComponent:@"InstallCoordination"];
  v8 = [v11 stringByAppendingPathComponent:@"PromiseStaging"];

LABEL_9:
  v12 = [[MIStagingRecord alloc] initWithStagingBase:cachesDirectory relativePath:v8];
  v13 = cachesDirectory;
LABEL_10:
  if (!error)
  {
    goto LABEL_16;
  }

LABEL_14:
  if (!v12)
  {
    v14 = v10;
    *error = v10;
  }

LABEL_16:
  v15 = v12;

  return v12;
}

- (id)stagingLocationForSystemContentWithinSubsystem:(unint64_t)subsystem error:(id *)error
{
  v12 = 0;
  v6 = [(MIStagingManager *)self stagingRecordForSystemContentWithinSubsystem:subsystem error:&v12];
  v7 = v12;
  if (v6)
  {
    v8 = [[MIStagingRootAbsolute alloc] initWithStagingSubsystem:subsystem contentType:1];
    v9 = [[MIStagingLocation alloc] initWithStagingRoot:v8 relativeStagingBaseDirectory:0];
    if (!error)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v9 = 0;
    v8 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  if (!v9)
  {
    v10 = v7;
    *error = v7;
  }

LABEL_7:

  return v9;
}

- (id)stagingRecordForUserContentWithinSubsystem:(unint64_t)subsystem error:(id *)error
{
  v7 = +[MIDaemonConfiguration sharedInstance];
  hasEAPFSVolumeSplit = [v7 hasEAPFSVolumeSplit];

  if ((hasEAPFSVolumeSplit & 1) == 0)
  {
    v12 = [(MIStagingManager *)self stagingRecordForSystemContentWithinSubsystem:subsystem error:error];
    goto LABEL_19;
  }

  if (subsystem == 3)
  {
    v10 = +[MIDaemonConfiguration sharedInstance];
    currentUserInstallCoordinationCachesDirectory = [v10 currentUserInstallCoordinationCachesDirectory];
    v14 = @"com.apple.appinstall.temp";
  }

  else
  {
    if (subsystem == 2)
    {
      v10 = +[MIDaemonConfiguration sharedInstance];
      currentUserInstallCoordinationCachesDirectory2 = [v10 currentUserInstallCoordinationCachesDirectory];
    }

    else
    {
      if (subsystem != 1)
      {
        v16 = _CreateAndLogError("[MIStagingManager stagingRecordForUserContentWithinSubsystem:error:]", 160, MIInstallerErrorDomain, 4, 0, 0, @"Failed to find staging location for unknown subsystem", v9, v19);
        currentUserInstallCoordinationCachesDirectory = 0;
        goto LABEL_15;
      }

      v10 = +[MIDaemonConfiguration sharedInstance];
      currentUserInstallCoordinationCachesDirectory2 = [v10 currentUserCachesDirectory];
    }

    currentUserInstallCoordinationCachesDirectory = currentUserInstallCoordinationCachesDirectory2;
    v14 = @"com.apple.appinstallation";
  }

  if (currentUserInstallCoordinationCachesDirectory)
  {
    v15 = [[MIStagingRecord alloc] initWithStagingBase:currentUserInstallCoordinationCachesDirectory relativePath:v14];
    v16 = 0;
    if (!error)
    {
      goto LABEL_18;
    }

LABEL_16:
    if (!v15)
    {
      v17 = v16;
      *error = v16;
    }

    goto LABEL_18;
  }

  v16 = 0;
LABEL_15:
  v15 = 0;
  if (error)
  {
    goto LABEL_16;
  }

LABEL_18:
  v12 = v15;

LABEL_19:

  return v12;
}

- (id)stagingLocationForUserContentWithinSubsystem:(unint64_t)subsystem error:(id *)error
{
  v12 = 0;
  v6 = [(MIStagingManager *)self stagingRecordForUserContentWithinSubsystem:subsystem error:&v12];
  v7 = v12;
  if (v6)
  {
    v8 = [[MIStagingRootAbsolute alloc] initWithStagingSubsystem:subsystem contentType:2];
    v9 = [[MIStagingLocation alloc] initWithStagingRoot:v8 relativeStagingBaseDirectory:0];
    if (!error)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v9 = 0;
    v8 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  if (!v9)
  {
    v10 = v7;
    *error = v7;
  }

LABEL_7:

  return v9;
}

- (id)allStagingLocationsWithinSubsystem:(unint64_t)subsystem error:(id *)error
{
  v7 = objc_opt_new();
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_100002330;
  v40 = sub_100002340;
  v41 = +[MIFileManager defaultManager];
  if (subsystem - 1 > 2)
  {
    v16 = _CreateAndLogError("[MIStagingManager allStagingLocationsWithinSubsystem:error:]", 280, MIInstallerErrorDomain, 4, 0, 0, @"Failed to find staging location for unknown subsystem", v8, v26);
    if (!v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v35 = 0;
  v9 = [(MIStagingManager *)self stagingRecordForSystemContentWithinSubsystem:subsystem error:&v35];
  v10 = v35;
  if (v9)
  {
    v11 = v37[5];
    completeURL = [v9 completeURL];
    LODWORD(v11) = [v11 itemExistsAtURL:completeURL];

    if (v11)
    {
      v13 = [[MIStagingRootAbsolute alloc] initWithStagingSubsystem:subsystem contentType:1];
      v14 = [[MIStagingLocation alloc] initWithStagingRoot:v13 relativeStagingBaseDirectory:0];
      [v7 addObject:v14];
    }

    v34 = v10;
    v15 = [(MIStagingManager *)self stagingRecordForUserContentWithinSubsystem:subsystem error:&v34];
    v16 = v34;

    if (v15)
    {
      v17 = v37[5];
      completeURL2 = [v15 completeURL];
      LODWORD(v17) = [v17 itemExistsAtURL:completeURL2];

      if (v17)
      {
        v19 = [[MIStagingRootAbsolute alloc] initWithStagingSubsystem:subsystem contentType:2];
        v20 = [[MIStagingLocation alloc] initWithStagingRoot:v19 relativeStagingBaseDirectory:0];
        [v7 addObject:v20];
      }

      v21 = +[MIUserManagement sharedInstance];
      allPersonaVolumeDaemonContainersMap = [v21 allPersonaVolumeDaemonContainersMap];

      v26 = _NSConcreteStackBlock;
      v27 = 3221225472;
      v28 = sub_100002348;
      v29 = &unk_100024870;
      selfCopy = self;
      v32 = &v36;
      subsystemCopy = subsystem;
      v31 = v7;
      [allPersonaVolumeDaemonContainersMap enumerateKeysAndObjectsUsingBlock:&v26];

      if (!v16)
      {
LABEL_9:
        v23 = [v7 copy];
        v10 = 0;
        if (!error)
        {
          goto LABEL_17;
        }

        goto LABEL_15;
      }
    }

LABEL_12:
    v23 = 0;
    v10 = v16;
    if (!error)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v23 = 0;
  if (!error)
  {
    goto LABEL_17;
  }

LABEL_15:
  if (!v23)
  {
    v24 = v10;
    *error = v10;
  }

LABEL_17:
  _Block_object_dispose(&v36, 8);

  return v23;
}

+ (id)_relativeStagingPathForExternalVolumeWithinStagingSubsystem:(unint64_t)subsystem
{
  if (subsystem > 3)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_100024890[subsystem];
  }

  return [@".AppInstallationStaging" stringByAppendingPathComponent:v3];
}

+ (id)_createStagingDirectoryInRoot:(id)root withRelativePath:(id)path stagingSubsystem:(unint64_t)subsystem usingUniqueName:(id)name error:(id *)error
{
  rootCopy = root;
  pathCopy = path;
  nameCopy = name;
  v13 = +[MIFileManager defaultManager];
  v14 = [rootCopy URLByAppendingPathComponent:pathCopy isDirectory:1];
  if (([v13 itemExistsAtURL:v14] & 1) == 0)
  {
    v24 = 0;
    v19 = [v13 createRelativeDirectoryPath:pathCopy inBaseDirectory:rootCopy mode:493 class:4 error:&v24];
    v15 = v24;

    if (!v19)
    {
      v14 = 0;
      if (!error)
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    }

    v14 = v19;
    if (nameCopy)
    {
      goto LABEL_3;
    }

LABEL_7:
    v22 = v15;
    v19 = [v13 createTemporaryDirectoryInDirectoryURL:v14 error:&v22];
    v18 = v22;
    v16 = v15;
    goto LABEL_9;
  }

  v15 = 0;
  if (!nameCopy)
  {
    goto LABEL_7;
  }

LABEL_3:
  v16 = [v14 URLByAppendingPathComponent:nameCopy isDirectory:1];
  v23 = v15;
  v17 = [v13 createDirectoryAtURL:v16 withIntermediateDirectories:0 mode:493 error:&v23];
  v18 = v23;

  if (v17)
  {
    v16 = v16;
    v19 = v16;
  }

  else
  {
    v19 = 0;
  }

LABEL_9:

  v15 = v18;
  if (!error)
  {
    goto LABEL_12;
  }

LABEL_10:
  if (!v19)
  {
    v20 = v15;
    *error = v15;
  }

LABEL_12:

  return v19;
}

- (id)_configureStagingDirectoryWithRoot:(id)root withRelativePath:(id)path stagingSubsystem:(unint64_t)subsystem usingUniqueName:(id)name error:(id *)error
{
  nameCopy = name;
  pathCopy = path;
  rootCopy = root;
  v14 = +[MIFileManager defaultManager];
  v58 = 0;
  v15 = [objc_opt_class() _createStagingDirectoryInRoot:rootCopy withRelativePath:pathCopy stagingSubsystem:subsystem usingUniqueName:nameCopy error:&v58];

  v16 = v58;
  v17 = v16;
  if (v15)
  {
    switch(subsystem)
    {
      case 3uLL:
        uRLByDeletingLastPathComponent = [v15 URLByDeletingLastPathComponent];
        v51 = v17;
        v35 = [v14 setPermissionsForURL:uRLByDeletingLastPathComponent toMode:489 error:&v51];
        v24 = v51;

        if (!v35)
        {
          goto LABEL_22;
        }

        v50 = v24;
        v36 = [v14 setDataProtectionClassOfItemAtURL:uRLByDeletingLastPathComponent toClass:4 ifPredicate:0 error:&v50];
        v31 = v50;

        if (v36)
        {
          v49 = v31;
          v37 = [v14 setPermissionsForURL:v15 toMode:511 error:&v49];
          v24 = v49;

          if (!v37)
          {
            goto LABEL_22;
          }

          v48 = v24;
          v33 = [v14 setDataProtectionClassOfItemAtURL:v15 toClass:4 ifPredicate:0 error:&v48];
          v34 = v48;
          goto LABEL_18;
        }

        break;
      case 2uLL:
        uRLByDeletingLastPathComponent = [v15 URLByDeletingLastPathComponent];
        v55 = v17;
        v29 = [v14 setPermissionsForURL:uRLByDeletingLastPathComponent toMode:489 error:&v55];
        v24 = v55;

        if (!v29)
        {
          goto LABEL_22;
        }

        v54 = v24;
        v30 = [v14 setDataProtectionClassOfItemAtURL:uRLByDeletingLastPathComponent toClass:4 ifPredicate:0 error:&v54];
        v31 = v54;

        if (v30)
        {
          v53 = v31;
          v32 = [v14 setPermissionsForURL:v15 toMode:493 error:&v53];
          v24 = v53;

          if (!v32)
          {
            goto LABEL_22;
          }

          v52 = v24;
          v33 = [v14 setDataProtectionClassOfItemAtURL:v15 toClass:4 ifPredicate:0 error:&v52];
          v34 = v52;
LABEL_18:
          v38 = v34;

          v24 = v38;
          if ((v33 & 1) == 0)
          {
            goto LABEL_23;
          }

          goto LABEL_19;
        }

        break;
      case 1uLL:
        v18 = +[MIDaemonConfiguration sharedInstance];
        v19 = [v18 uid];

        v20 = +[MIDaemonConfiguration sharedInstance];
        v21 = [v20 gid];

        uRLByDeletingLastPathComponent2 = [v15 URLByDeletingLastPathComponent];
        v57 = v17;
        LOBYTE(v45) = 0;
        v23 = [v14 bulkSetPropertiesForPath:objc_msgSend(uRLByDeletingLastPathComponent2 UID:"fileSystemRepresentation") GID:v19 mode:v21 flags:493 dataProtectionClass:0 removeACL:4 error:{v45, &v57}];
        v24 = v57;

        if (!v23 || (v56 = v24, LOBYTE(v46) = 0, v25 = [v14 bulkSetPropertiesForPath:objc_msgSend(v15 UID:"fileSystemRepresentation") GID:v19 mode:v21 flags:493 dataProtectionClass:0 removeACL:4 error:{v46, &v56}], v26 = v56, v24, v24 = v26, (v25 & 1) == 0))
        {
LABEL_23:
          v47 = 0;
          v41 = [v14 removeItemAtURL:v15 error:&v47];
          v42 = v47;
          if ((v41 & 1) == 0 && (!gLogHandle || *(gLogHandle + 44) >= 3))
          {
            MOLogWrite();
          }

          if (error)
          {
            goto LABEL_28;
          }

LABEL_9:
          v27 = 0;
          goto LABEL_29;
        }

LABEL_19:
        v27 = v15;
        goto LABEL_29;
      default:
        v39 = MIInstallerErrorDomain;
        uRLByDeletingLastPathComponent = MIStringForStagingSubsystem();
        v24 = _CreateAndLogError("[MIStagingManager _configureStagingDirectoryWithRoot:withRelativePath:stagingSubsystem:usingUniqueName:error:]", 444, v39, 4, 0, 0, @"Failed to find the right ownership information to set for unknown subsystem %@", v40, uRLByDeletingLastPathComponent);

LABEL_22:
        goto LABEL_23;
    }

    v24 = v31;
    goto LABEL_22;
  }

  v24 = v16;
  if (!error)
  {
    goto LABEL_9;
  }

LABEL_28:
  v43 = v24;
  v27 = 0;
  *error = v24;
LABEL_29:

  return v27;
}

- (BOOL)_checkKnownStagingLocationsForVolumeUUID:(id)d inStagingSubsystem:(unint64_t)subsystem usingUniqueName:(id)name stagingLocation:(id *)location error:(id *)error
{
  dCopy = d;
  nameCopy = name;
  v45 = 0;
  v13 = [(MIStagingManager *)self stagingRecordForSystemContentWithinSubsystem:subsystem error:&v45];
  v14 = v45;
  if (!v13)
  {
    v22 = 0;
    v17 = 0;
    if (!error)
    {
LABEL_24:
      v27 = 0;
      v25 = 0;
      goto LABEL_25;
    }

LABEL_7:
    v26 = v14;
    v27 = 0;
    v25 = 0;
    *error = v14;
    goto LABEL_25;
  }

  v39 = nameCopy;
  v15 = +[MIFileManager defaultManager];
  stagingBase = [v13 stagingBase];
  v44 = v14;
  v17 = [v15 volumeUUIDForURL:stagingBase error:&v44];
  v18 = v44;

  if (!v17)
  {
    v22 = 0;
    goto LABEL_9;
  }

  if (![v17 isEqual:dCopy])
  {
    v28 = +[MIDaemonConfiguration sharedInstance];
    hasEAPFSVolumeSplit = [v28 hasEAPFSVolumeSplit];

    if (!hasEAPFSVolumeSplit)
    {
      v22 = 0;
      goto LABEL_17;
    }

    v42 = v18;
    v22 = [(MIStagingManager *)self stagingRecordForUserContentWithinSubsystem:subsystem error:&v42];
    v14 = v42;

    if (!v22)
    {
      goto LABEL_23;
    }

    v37 = +[MIFileManager defaultManager];
    stagingBase2 = [v22 stagingBase];
    v41 = v14;
    v35 = [v37 volumeUUIDForURL:stagingBase2 error:&v41];
    v18 = v41;

    v17 = v35;
    if (v35)
    {
      if ([v35 isEqual:dCopy])
      {
        v36 = [[MIStagingRootAbsolute alloc] initWithStagingSubsystem:subsystem contentType:2];
        stagingBase3 = [v22 stagingBase];
        relativePath = [v22 relativePath];
        v40 = v18;
        v21 = [(MIStagingManager *)self _configureStagingDirectoryWithRoot:stagingBase3 withRelativePath:relativePath stagingSubsystem:subsystem usingUniqueName:v39 error:&v40];
        v14 = v40;

        if (v21)
        {
          v17 = v35;
          goto LABEL_5;
        }

        v17 = v35;
        goto LABEL_22;
      }

LABEL_17:
      v25 = 0;
      goto LABEL_18;
    }

LABEL_9:
    v14 = v18;
    goto LABEL_23;
  }

  v36 = [[MIStagingRootAbsolute alloc] initWithStagingSubsystem:subsystem contentType:1];
  stagingBase4 = [v13 stagingBase];
  relativePath2 = [v13 relativePath];
  v43 = v18;
  v21 = [(MIStagingManager *)self _configureStagingDirectoryWithRoot:stagingBase4 withRelativePath:relativePath2 stagingSubsystem:subsystem usingUniqueName:v39 error:&v43];
  v14 = v43;

  v22 = 0;
  if (!v21)
  {
LABEL_22:

LABEL_23:
    nameCopy = v39;
    if (!error)
    {
      goto LABEL_24;
    }

    goto LABEL_7;
  }

LABEL_5:
  v23 = [MIStagingLocation alloc];
  lastPathComponent = [v21 lastPathComponent];
  v25 = [v23 initWithStagingRoot:v36 relativeStagingBaseDirectory:lastPathComponent];

  v18 = v14;
LABEL_18:
  nameCopy = v39;
  if (location)
  {
    v33 = v25;
    *location = v25;
  }

  v27 = 1;
  v14 = v18;
LABEL_25:

  return v27;
}

- (id)_stagingLocationForVolumeUUID:(id)d withVolumeMountPoint:(id)point inStagingSubsytem:(unint64_t)subsytem usingUniqueName:(id)name error:(id *)error
{
  dCopy = d;
  pointCopy = point;
  nameCopy = name;
  v32 = 0;
  v33 = 0;
  LODWORD(point) = [(MIStagingManager *)self _checkKnownStagingLocationsForVolumeUUID:dCopy inStagingSubsystem:subsytem usingUniqueName:nameCopy stagingLocation:&v33 error:&v32];
  v14 = v33;
  v15 = v32;
  v16 = v15;
  v17 = 0;
  if (!point || v14)
  {
    v21 = v15;
    v20 = 0;
    v22 = 0;
    v19 = 0;
    if (!error)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v18 = +[MIUserManagement sharedInstance];
    v19 = [v18 personaVolumeDaemonContainerForUUID:dCopy];

    if (v19)
    {
      v20 = [objc_opt_class() _relativeStagingPathForExternalVolumeWithinStagingSubsystem:subsytem];
      v31 = v16;
      v17 = [(MIStagingManager *)self _configureStagingDirectoryWithRoot:v19 withRelativePath:v20 stagingSubsystem:subsytem usingUniqueName:nameCopy error:&v31];
      v21 = v31;

      if (!v17)
      {
        v14 = 0;
        v22 = 0;
        if (!error)
        {
          goto LABEL_14;
        }

        goto LABEL_12;
      }

      v22 = [[MIStagingRootVolumeUUID alloc] initWithVolumeUUID:dCopy stagingSubsystem:subsytem];
      v23 = [MIStagingLocation alloc];
      lastPathComponent = [v17 lastPathComponent];
      v14 = [v23 initWithStagingRoot:v22 relativeStagingBaseDirectory:lastPathComponent];
    }

    else
    {
      v25 = MIInstallerErrorDomain;
      lastPathComponent = [pointCopy path];
      v21 = _CreateAndLogError("[MIStagingManager _stagingLocationForVolumeUUID:withVolumeMountPoint:inStagingSubsytem:usingUniqueName:error:]", 598, v25, 166, 0, 0, @"Failed to locate an appropriate staging directory for volume UUID %@ with mount point %@", v26, dCopy);

      v14 = 0;
      v17 = 0;
      v20 = 0;
      v22 = 0;
    }

    if (!error)
    {
      goto LABEL_14;
    }
  }

LABEL_12:
  if (!v14)
  {
    v27 = v21;
    *error = v21;
  }

LABEL_14:
  v28 = v14;

  return v14;
}

- (id)stagingLocationForURL:(id)l withinStagingSubsytem:(unint64_t)subsytem usingUniqueName:(id)name error:(id *)error
{
  lCopy = l;
  nameCopy = name;
  bzero(v25, 0x420uLL);
  v12 = +[MIFileManager defaultManager];
  v24 = 0;
  v13 = [v12 copyVolumeInfo:v25 forURL:lCopy error:&v24];
  v15 = v24;
  if (v13)
  {
    if (v26 ^ 0x73667061 | v27)
    {
      v16 = _CreateAndLogError("[MIStagingManager stagingLocationForURL:withinStagingSubsytem:usingUniqueName:error:]", 642, MIInstallerErrorDomain, 166, 0, 0, @"Expected install path %@ to be located on an APFS formatted volume got %s", v14, lCopy);;
      v17 = 0;
      v18 = 0;
      v19 = 0;
    }

    else
    {
      v17 = [[NSUUID alloc] initWithUUIDBytes:v25];
      v18 = [NSURL fileURLWithFileSystemRepresentation:&v28 isDirectory:1 relativeToURL:0];
      v23 = v15;
      v19 = [(MIStagingManager *)self _stagingLocationForVolumeUUID:v17 withVolumeMountPoint:v18 inStagingSubsytem:subsytem usingUniqueName:nameCopy error:&v23];
      v16 = v23;
    }

    v15 = v16;
    if (!error)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    if (!error)
    {
      goto LABEL_10;
    }
  }

  if (!v19)
  {
    v20 = v15;
    *error = v15;
  }

LABEL_10:
  v21 = v19;

  return v21;
}

- (id)stagingLocationForInstallLocation:(id)location withinStagingSubsytem:(unint64_t)subsytem usingUniqueName:(id)name error:(id *)error
{
  nameCopy = name;
  v19 = 0;
  v11 = [MILocation URLForLocation:location isAppBundle:0 error:&v19];
  v12 = v19;
  v13 = v12;
  if (v11)
  {
    v18 = v12;
    v14 = [(MIStagingManager *)self stagingLocationForURL:v11 withinStagingSubsytem:subsytem usingUniqueName:nameCopy error:&v18];
    v15 = v18;

    v13 = v15;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v14 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  if (!v14)
  {
    v16 = v13;
    *error = v13;
  }

LABEL_7:

  return v14;
}

- (id)resolveStagingBaseForVolumeUUID:(id)d withinStagingSubsystem:(unint64_t)subsystem error:(id *)error
{
  dCopy = d;
  v8 = [objc_opt_class() _relativeStagingPathForExternalVolumeWithinStagingSubsystem:subsystem];
  v9 = +[MIUserManagement sharedInstance];
  v10 = [v9 personaVolumeDaemonContainerForUUID:dCopy];

  if (v10)
  {
    v11 = [v10 URLByAppendingPathComponent:v8 isDirectory:1];
    if (!error)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v11 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  if (!v11)
  {
    *error = 0;
  }

LABEL_7:

  return v11;
}

@end