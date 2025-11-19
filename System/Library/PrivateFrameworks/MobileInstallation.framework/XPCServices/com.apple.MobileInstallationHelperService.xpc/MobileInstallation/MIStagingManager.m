@interface MIStagingManager
+ (id)_createStagingDirectoryInRoot:(id)a3 withRelativePath:(id)a4 stagingSubsystem:(unint64_t)a5 usingUniqueName:(id)a6 error:(id *)a7;
+ (id)_relativeStagingPathForExternalVolumeWithinStagingSubsystem:(unint64_t)a3;
+ (id)sharedInstance;
- (BOOL)_checkKnownStagingLocationsForVolumeUUID:(id)a3 inStagingSubsystem:(unint64_t)a4 usingUniqueName:(id)a5 stagingLocation:(id *)a6 error:(id *)a7;
- (id)_configureStagingDirectoryWithRoot:(id)a3 withRelativePath:(id)a4 stagingSubsystem:(unint64_t)a5 usingUniqueName:(id)a6 error:(id *)a7;
- (id)_stagingLocationForVolumeUUID:(id)a3 withVolumeMountPoint:(id)a4 inStagingSubsytem:(unint64_t)a5 usingUniqueName:(id)a6 error:(id *)a7;
- (id)allStagingLocationsWithinSubsystem:(unint64_t)a3 error:(id *)a4;
- (id)resolveStagingBaseForVolumeUUID:(id)a3 withinStagingSubsystem:(unint64_t)a4 error:(id *)a5;
- (id)stagingLocationForInstallLocation:(id)a3 withinStagingSubsytem:(unint64_t)a4 usingUniqueName:(id)a5 error:(id *)a6;
- (id)stagingLocationForSystemContentWithinSubsystem:(unint64_t)a3 error:(id *)a4;
- (id)stagingLocationForURL:(id)a3 withinStagingSubsytem:(unint64_t)a4 usingUniqueName:(id)a5 error:(id *)a6;
- (id)stagingLocationForUserContentWithinSubsystem:(unint64_t)a3 error:(id *)a4;
- (id)stagingRecordForSystemContentWithinSubsystem:(unint64_t)a3 error:(id *)a4;
- (id)stagingRecordForUserContentWithinSubsystem:(unint64_t)a3 error:(id *)a4;
@end

@implementation MIStagingManager

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001A44;
  block[3] = &unk_100024848;
  block[4] = a1;
  if (qword_10002DF08 != -1)
  {
    dispatch_once(&qword_10002DF08, block);
  }

  v2 = qword_10002DF00;

  return v2;
}

- (id)stagingRecordForSystemContentWithinSubsystem:(unint64_t)a3 error:(id *)a4
{
  if (a3 == 3)
  {
    v7 = [NSURL fileURLWithPath:@"/private/var/tmp" isDirectory:1 relativeToURL:0];
    v8 = @"com.apple.appinstall.temp";
LABEL_8:
    v10 = 0;
    v12 = 0;
    v13 = 0;
    if (!v7)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (a3 != 2)
  {
    if (a3 == 1)
    {
      v6 = +[MIDaemonConfiguration sharedInstance];
      v7 = [v6 cachesDirectory];

      v8 = @"com.apple.mobile.installd.staging";
      goto LABEL_8;
    }

    v10 = _CreateAndLogError("[MIStagingManager stagingRecordForSystemContentWithinSubsystem:error:]", 89, MIInstallerErrorDomain, 4, 0, 0, @"Failed to find staging location for unknown subsystem", v4, v17);
LABEL_13:
    v12 = 0;
    v13 = 0;
    v8 = 0;
    if (!a4)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v9 = +[MIDaemonConfiguration sharedInstance];
  v18 = 0;
  v7 = [v9 installCoordinationStagingWithError:&v18];
  v10 = v18;

  if (!v7)
  {
    goto LABEL_13;
  }

  v11 = [@"Library" stringByAppendingPathComponent:@"InstallCoordination"];
  v8 = [v11 stringByAppendingPathComponent:@"PromiseStaging"];

LABEL_9:
  v12 = [[MIStagingRecord alloc] initWithStagingBase:v7 relativePath:v8];
  v13 = v7;
LABEL_10:
  if (!a4)
  {
    goto LABEL_16;
  }

LABEL_14:
  if (!v12)
  {
    v14 = v10;
    *a4 = v10;
  }

LABEL_16:
  v15 = v12;

  return v12;
}

- (id)stagingLocationForSystemContentWithinSubsystem:(unint64_t)a3 error:(id *)a4
{
  v12 = 0;
  v6 = [(MIStagingManager *)self stagingRecordForSystemContentWithinSubsystem:a3 error:&v12];
  v7 = v12;
  if (v6)
  {
    v8 = [[MIStagingRootAbsolute alloc] initWithStagingSubsystem:a3 contentType:1];
    v9 = [[MIStagingLocation alloc] initWithStagingRoot:v8 relativeStagingBaseDirectory:0];
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v9 = 0;
    v8 = 0;
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  if (!v9)
  {
    v10 = v7;
    *a4 = v7;
  }

LABEL_7:

  return v9;
}

- (id)stagingRecordForUserContentWithinSubsystem:(unint64_t)a3 error:(id *)a4
{
  v7 = +[MIDaemonConfiguration sharedInstance];
  v8 = [v7 hasEAPFSVolumeSplit];

  if ((v8 & 1) == 0)
  {
    v12 = [(MIStagingManager *)self stagingRecordForSystemContentWithinSubsystem:a3 error:a4];
    goto LABEL_19;
  }

  if (a3 == 3)
  {
    v10 = +[MIDaemonConfiguration sharedInstance];
    v13 = [v10 currentUserInstallCoordinationCachesDirectory];
    v14 = @"com.apple.appinstall.temp";
  }

  else
  {
    if (a3 == 2)
    {
      v10 = +[MIDaemonConfiguration sharedInstance];
      v11 = [v10 currentUserInstallCoordinationCachesDirectory];
    }

    else
    {
      if (a3 != 1)
      {
        v16 = _CreateAndLogError("[MIStagingManager stagingRecordForUserContentWithinSubsystem:error:]", 160, MIInstallerErrorDomain, 4, 0, 0, @"Failed to find staging location for unknown subsystem", v9, v19);
        v13 = 0;
        goto LABEL_15;
      }

      v10 = +[MIDaemonConfiguration sharedInstance];
      v11 = [v10 currentUserCachesDirectory];
    }

    v13 = v11;
    v14 = @"com.apple.appinstallation";
  }

  if (v13)
  {
    v15 = [[MIStagingRecord alloc] initWithStagingBase:v13 relativePath:v14];
    v16 = 0;
    if (!a4)
    {
      goto LABEL_18;
    }

LABEL_16:
    if (!v15)
    {
      v17 = v16;
      *a4 = v16;
    }

    goto LABEL_18;
  }

  v16 = 0;
LABEL_15:
  v15 = 0;
  if (a4)
  {
    goto LABEL_16;
  }

LABEL_18:
  v12 = v15;

LABEL_19:

  return v12;
}

- (id)stagingLocationForUserContentWithinSubsystem:(unint64_t)a3 error:(id *)a4
{
  v12 = 0;
  v6 = [(MIStagingManager *)self stagingRecordForUserContentWithinSubsystem:a3 error:&v12];
  v7 = v12;
  if (v6)
  {
    v8 = [[MIStagingRootAbsolute alloc] initWithStagingSubsystem:a3 contentType:2];
    v9 = [[MIStagingLocation alloc] initWithStagingRoot:v8 relativeStagingBaseDirectory:0];
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v9 = 0;
    v8 = 0;
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  if (!v9)
  {
    v10 = v7;
    *a4 = v7;
  }

LABEL_7:

  return v9;
}

- (id)allStagingLocationsWithinSubsystem:(unint64_t)a3 error:(id *)a4
{
  v7 = objc_opt_new();
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_100002330;
  v40 = sub_100002340;
  v41 = +[MIFileManager defaultManager];
  if (a3 - 1 > 2)
  {
    v16 = _CreateAndLogError("[MIStagingManager allStagingLocationsWithinSubsystem:error:]", 280, MIInstallerErrorDomain, 4, 0, 0, @"Failed to find staging location for unknown subsystem", v8, v26);
    if (!v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v35 = 0;
  v9 = [(MIStagingManager *)self stagingRecordForSystemContentWithinSubsystem:a3 error:&v35];
  v10 = v35;
  if (v9)
  {
    v11 = v37[5];
    v12 = [v9 completeURL];
    LODWORD(v11) = [v11 itemExistsAtURL:v12];

    if (v11)
    {
      v13 = [[MIStagingRootAbsolute alloc] initWithStagingSubsystem:a3 contentType:1];
      v14 = [[MIStagingLocation alloc] initWithStagingRoot:v13 relativeStagingBaseDirectory:0];
      [v7 addObject:v14];
    }

    v34 = v10;
    v15 = [(MIStagingManager *)self stagingRecordForUserContentWithinSubsystem:a3 error:&v34];
    v16 = v34;

    if (v15)
    {
      v17 = v37[5];
      v18 = [v15 completeURL];
      LODWORD(v17) = [v17 itemExistsAtURL:v18];

      if (v17)
      {
        v19 = [[MIStagingRootAbsolute alloc] initWithStagingSubsystem:a3 contentType:2];
        v20 = [[MIStagingLocation alloc] initWithStagingRoot:v19 relativeStagingBaseDirectory:0];
        [v7 addObject:v20];
      }

      v21 = +[MIUserManagement sharedInstance];
      v22 = [v21 allPersonaVolumeDaemonContainersMap];

      v26 = _NSConcreteStackBlock;
      v27 = 3221225472;
      v28 = sub_100002348;
      v29 = &unk_100024870;
      v30 = self;
      v32 = &v36;
      v33 = a3;
      v31 = v7;
      [v22 enumerateKeysAndObjectsUsingBlock:&v26];

      if (!v16)
      {
LABEL_9:
        v23 = [v7 copy];
        v10 = 0;
        if (!a4)
        {
          goto LABEL_17;
        }

        goto LABEL_15;
      }
    }

LABEL_12:
    v23 = 0;
    v10 = v16;
    if (!a4)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v23 = 0;
  if (!a4)
  {
    goto LABEL_17;
  }

LABEL_15:
  if (!v23)
  {
    v24 = v10;
    *a4 = v10;
  }

LABEL_17:
  _Block_object_dispose(&v36, 8);

  return v23;
}

+ (id)_relativeStagingPathForExternalVolumeWithinStagingSubsystem:(unint64_t)a3
{
  if (a3 > 3)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_100024890[a3];
  }

  return [@".AppInstallationStaging" stringByAppendingPathComponent:v3];
}

+ (id)_createStagingDirectoryInRoot:(id)a3 withRelativePath:(id)a4 stagingSubsystem:(unint64_t)a5 usingUniqueName:(id)a6 error:(id *)a7
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = +[MIFileManager defaultManager];
  v14 = [v10 URLByAppendingPathComponent:v11 isDirectory:1];
  if (([v13 itemExistsAtURL:v14] & 1) == 0)
  {
    v24 = 0;
    v19 = [v13 createRelativeDirectoryPath:v11 inBaseDirectory:v10 mode:493 class:4 error:&v24];
    v15 = v24;

    if (!v19)
    {
      v14 = 0;
      if (!a7)
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    }

    v14 = v19;
    if (v12)
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
  if (!v12)
  {
    goto LABEL_7;
  }

LABEL_3:
  v16 = [v14 URLByAppendingPathComponent:v12 isDirectory:1];
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
  if (!a7)
  {
    goto LABEL_12;
  }

LABEL_10:
  if (!v19)
  {
    v20 = v15;
    *a7 = v15;
  }

LABEL_12:

  return v19;
}

- (id)_configureStagingDirectoryWithRoot:(id)a3 withRelativePath:(id)a4 stagingSubsystem:(unint64_t)a5 usingUniqueName:(id)a6 error:(id *)a7
{
  v11 = a6;
  v12 = a4;
  v13 = a3;
  v14 = +[MIFileManager defaultManager];
  v58 = 0;
  v15 = [objc_opt_class() _createStagingDirectoryInRoot:v13 withRelativePath:v12 stagingSubsystem:a5 usingUniqueName:v11 error:&v58];

  v16 = v58;
  v17 = v16;
  if (v15)
  {
    switch(a5)
    {
      case 3uLL:
        v28 = [v15 URLByDeletingLastPathComponent];
        v51 = v17;
        v35 = [v14 setPermissionsForURL:v28 toMode:489 error:&v51];
        v24 = v51;

        if (!v35)
        {
          goto LABEL_22;
        }

        v50 = v24;
        v36 = [v14 setDataProtectionClassOfItemAtURL:v28 toClass:4 ifPredicate:0 error:&v50];
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
        v28 = [v15 URLByDeletingLastPathComponent];
        v55 = v17;
        v29 = [v14 setPermissionsForURL:v28 toMode:489 error:&v55];
        v24 = v55;

        if (!v29)
        {
          goto LABEL_22;
        }

        v54 = v24;
        v30 = [v14 setDataProtectionClassOfItemAtURL:v28 toClass:4 ifPredicate:0 error:&v54];
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

        v22 = [v15 URLByDeletingLastPathComponent];
        v57 = v17;
        LOBYTE(v45) = 0;
        v23 = [v14 bulkSetPropertiesForPath:objc_msgSend(v22 UID:"fileSystemRepresentation") GID:v19 mode:v21 flags:493 dataProtectionClass:0 removeACL:4 error:{v45, &v57}];
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

          if (a7)
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
        v28 = MIStringForStagingSubsystem();
        v24 = _CreateAndLogError("[MIStagingManager _configureStagingDirectoryWithRoot:withRelativePath:stagingSubsystem:usingUniqueName:error:]", 444, v39, 4, 0, 0, @"Failed to find the right ownership information to set for unknown subsystem %@", v40, v28);

LABEL_22:
        goto LABEL_23;
    }

    v24 = v31;
    goto LABEL_22;
  }

  v24 = v16;
  if (!a7)
  {
    goto LABEL_9;
  }

LABEL_28:
  v43 = v24;
  v27 = 0;
  *a7 = v24;
LABEL_29:

  return v27;
}

- (BOOL)_checkKnownStagingLocationsForVolumeUUID:(id)a3 inStagingSubsystem:(unint64_t)a4 usingUniqueName:(id)a5 stagingLocation:(id *)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a5;
  v45 = 0;
  v13 = [(MIStagingManager *)self stagingRecordForSystemContentWithinSubsystem:a4 error:&v45];
  v14 = v45;
  if (!v13)
  {
    v22 = 0;
    v17 = 0;
    if (!a7)
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
    *a7 = v14;
    goto LABEL_25;
  }

  v39 = v12;
  v15 = +[MIFileManager defaultManager];
  v16 = [v13 stagingBase];
  v44 = v14;
  v17 = [v15 volumeUUIDForURL:v16 error:&v44];
  v18 = v44;

  if (!v17)
  {
    v22 = 0;
    goto LABEL_9;
  }

  if (![v17 isEqual:v11])
  {
    v28 = +[MIDaemonConfiguration sharedInstance];
    v29 = [v28 hasEAPFSVolumeSplit];

    if (!v29)
    {
      v22 = 0;
      goto LABEL_17;
    }

    v42 = v18;
    v22 = [(MIStagingManager *)self stagingRecordForUserContentWithinSubsystem:a4 error:&v42];
    v14 = v42;

    if (!v22)
    {
      goto LABEL_23;
    }

    v37 = +[MIFileManager defaultManager];
    v30 = [v22 stagingBase];
    v41 = v14;
    v35 = [v37 volumeUUIDForURL:v30 error:&v41];
    v18 = v41;

    v17 = v35;
    if (v35)
    {
      if ([v35 isEqual:v11])
      {
        v36 = [[MIStagingRootAbsolute alloc] initWithStagingSubsystem:a4 contentType:2];
        v31 = [v22 stagingBase];
        v32 = [v22 relativePath];
        v40 = v18;
        v21 = [(MIStagingManager *)self _configureStagingDirectoryWithRoot:v31 withRelativePath:v32 stagingSubsystem:a4 usingUniqueName:v39 error:&v40];
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

  v36 = [[MIStagingRootAbsolute alloc] initWithStagingSubsystem:a4 contentType:1];
  v19 = [v13 stagingBase];
  v20 = [v13 relativePath];
  v43 = v18;
  v21 = [(MIStagingManager *)self _configureStagingDirectoryWithRoot:v19 withRelativePath:v20 stagingSubsystem:a4 usingUniqueName:v39 error:&v43];
  v14 = v43;

  v22 = 0;
  if (!v21)
  {
LABEL_22:

LABEL_23:
    v12 = v39;
    if (!a7)
    {
      goto LABEL_24;
    }

    goto LABEL_7;
  }

LABEL_5:
  v23 = [MIStagingLocation alloc];
  v24 = [v21 lastPathComponent];
  v25 = [v23 initWithStagingRoot:v36 relativeStagingBaseDirectory:v24];

  v18 = v14;
LABEL_18:
  v12 = v39;
  if (a6)
  {
    v33 = v25;
    *a6 = v25;
  }

  v27 = 1;
  v14 = v18;
LABEL_25:

  return v27;
}

- (id)_stagingLocationForVolumeUUID:(id)a3 withVolumeMountPoint:(id)a4 inStagingSubsytem:(unint64_t)a5 usingUniqueName:(id)a6 error:(id *)a7
{
  v12 = a3;
  v30 = a4;
  v13 = a6;
  v32 = 0;
  v33 = 0;
  LODWORD(a4) = [(MIStagingManager *)self _checkKnownStagingLocationsForVolumeUUID:v12 inStagingSubsystem:a5 usingUniqueName:v13 stagingLocation:&v33 error:&v32];
  v14 = v33;
  v15 = v32;
  v16 = v15;
  v17 = 0;
  if (!a4 || v14)
  {
    v21 = v15;
    v20 = 0;
    v22 = 0;
    v19 = 0;
    if (!a7)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v18 = +[MIUserManagement sharedInstance];
    v19 = [v18 personaVolumeDaemonContainerForUUID:v12];

    if (v19)
    {
      v20 = [objc_opt_class() _relativeStagingPathForExternalVolumeWithinStagingSubsystem:a5];
      v31 = v16;
      v17 = [(MIStagingManager *)self _configureStagingDirectoryWithRoot:v19 withRelativePath:v20 stagingSubsystem:a5 usingUniqueName:v13 error:&v31];
      v21 = v31;

      if (!v17)
      {
        v14 = 0;
        v22 = 0;
        if (!a7)
        {
          goto LABEL_14;
        }

        goto LABEL_12;
      }

      v22 = [[MIStagingRootVolumeUUID alloc] initWithVolumeUUID:v12 stagingSubsystem:a5];
      v23 = [MIStagingLocation alloc];
      v24 = [v17 lastPathComponent];
      v14 = [v23 initWithStagingRoot:v22 relativeStagingBaseDirectory:v24];
    }

    else
    {
      v25 = MIInstallerErrorDomain;
      v24 = [v30 path];
      v21 = _CreateAndLogError("[MIStagingManager _stagingLocationForVolumeUUID:withVolumeMountPoint:inStagingSubsytem:usingUniqueName:error:]", 598, v25, 166, 0, 0, @"Failed to locate an appropriate staging directory for volume UUID %@ with mount point %@", v26, v12);

      v14 = 0;
      v17 = 0;
      v20 = 0;
      v22 = 0;
    }

    if (!a7)
    {
      goto LABEL_14;
    }
  }

LABEL_12:
  if (!v14)
  {
    v27 = v21;
    *a7 = v21;
  }

LABEL_14:
  v28 = v14;

  return v14;
}

- (id)stagingLocationForURL:(id)a3 withinStagingSubsytem:(unint64_t)a4 usingUniqueName:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  bzero(v25, 0x420uLL);
  v12 = +[MIFileManager defaultManager];
  v24 = 0;
  v13 = [v12 copyVolumeInfo:v25 forURL:v10 error:&v24];
  v15 = v24;
  if (v13)
  {
    if (v26 ^ 0x73667061 | v27)
    {
      v16 = _CreateAndLogError("[MIStagingManager stagingLocationForURL:withinStagingSubsytem:usingUniqueName:error:]", 642, MIInstallerErrorDomain, 166, 0, 0, @"Expected install path %@ to be located on an APFS formatted volume got %s", v14, v10);;
      v17 = 0;
      v18 = 0;
      v19 = 0;
    }

    else
    {
      v17 = [[NSUUID alloc] initWithUUIDBytes:v25];
      v18 = [NSURL fileURLWithFileSystemRepresentation:&v28 isDirectory:1 relativeToURL:0];
      v23 = v15;
      v19 = [(MIStagingManager *)self _stagingLocationForVolumeUUID:v17 withVolumeMountPoint:v18 inStagingSubsytem:a4 usingUniqueName:v11 error:&v23];
      v16 = v23;
    }

    v15 = v16;
    if (!a6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    if (!a6)
    {
      goto LABEL_10;
    }
  }

  if (!v19)
  {
    v20 = v15;
    *a6 = v15;
  }

LABEL_10:
  v21 = v19;

  return v21;
}

- (id)stagingLocationForInstallLocation:(id)a3 withinStagingSubsytem:(unint64_t)a4 usingUniqueName:(id)a5 error:(id *)a6
{
  v10 = a5;
  v19 = 0;
  v11 = [MILocation URLForLocation:a3 isAppBundle:0 error:&v19];
  v12 = v19;
  v13 = v12;
  if (v11)
  {
    v18 = v12;
    v14 = [(MIStagingManager *)self stagingLocationForURL:v11 withinStagingSubsytem:a4 usingUniqueName:v10 error:&v18];
    v15 = v18;

    v13 = v15;
    if (!a6)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v14 = 0;
    if (!a6)
    {
      goto LABEL_7;
    }
  }

  if (!v14)
  {
    v16 = v13;
    *a6 = v13;
  }

LABEL_7:

  return v14;
}

- (id)resolveStagingBaseForVolumeUUID:(id)a3 withinStagingSubsystem:(unint64_t)a4 error:(id *)a5
{
  v7 = a3;
  v8 = [objc_opt_class() _relativeStagingPathForExternalVolumeWithinStagingSubsystem:a4];
  v9 = +[MIUserManagement sharedInstance];
  v10 = [v9 personaVolumeDaemonContainerForUUID:v7];

  if (v10)
  {
    v11 = [v10 URLByAppendingPathComponent:v8 isDirectory:1];
    if (!a5)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v11 = 0;
    if (!a5)
    {
      goto LABEL_7;
    }
  }

  if (!v11)
  {
    *a5 = 0;
  }

LABEL_7:

  return v11;
}

@end