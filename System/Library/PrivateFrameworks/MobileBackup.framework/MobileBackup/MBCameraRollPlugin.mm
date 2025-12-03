@interface MBCameraRollPlugin
- (BOOL)shouldScrubSQLiteFileCopyAtRelativePath:(id)path domain:(id)domain;
- (MBCameraRollPlugin)init;
- (id)scrubSQLiteFileCopyAtRelativePath:(id)path copyTemporaryPath:(id)temporaryPath domain:(id)domain;
- (id)startingBackupWithEngine:(id)engine;
- (void)_populatePathsForEngine:(id)engine domainName:(id)name;
- (void)_updateCameraRollBackupStateWithEngine:(id)engine foundiCPLSyncMarker:(BOOL)marker;
@end

@implementation MBCameraRollPlugin

- (MBCameraRollPlugin)init
{
  v5.receiver = self;
  v5.super_class = MBCameraRollPlugin;
  v2 = [(MBCameraRollPlugin *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MBCameraRollPlugin *)v2 setCloudPhotosSyncedMarkerPath:@"/var/mobile/Media/PhotoData/CPL/initialsync_marker"];
  }

  return v3;
}

- (void)_populatePathsForEngine:(id)engine domainName:(id)name
{
  engineCopy = engine;
  nameCopy = name;
  if ([engineCopy backupPolicy] == 1)
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Mega backup policy, so backing up photos", buf, 2u);
      _MBLog();
    }

    [(MBCameraRollPlugin *)self _updateCameraRollBackupStateWithEngine:engineCopy foundiCPLSyncMarker:0];
  }

  else
  {
    cloudPhotosSyncedMarkerPath = [(MBCameraRollPlugin *)self cloudPhotosSyncedMarkerPath];
    v10 = +[NSFileManager defaultManager];
    v11 = [v10 fileExistsAtPath:cloudPhotosSyncedMarkerPath];

    if (v11)
    {
      v12 = +[NSFileManager defaultManager];
      v44 = 0;
      v13 = [v12 attributesOfItemAtPath:cloudPhotosSyncedMarkerPath error:&v44];
      v14 = v44;

      if (!v13)
      {
        v15 = MBGetDefaultLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v46 = cloudPhotosSyncedMarkerPath;
          v47 = 2112;
          v48 = v14;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to fetch the attributes for %@: %@", buf, 0x16u);
          v38 = cloudPhotosSyncedMarkerPath;
          v40 = v14;
          _MBLog();
        }
      }

      v16 = [v13 objectForKeyedSubscript:{NSFileCreationDate, v38, v40}];
      [v16 timeIntervalSince1970];
      v18 = v17;

      v19 = MBGetDefaultLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v46 = cloudPhotosSyncedMarkerPath;
        v47 = 2048;
        v48 = v18;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Found %@ (%.3f)", buf, 0x16u);
        v41 = v18;
        v39 = cloudPhotosSyncedMarkerPath;
        _MBLog();
      }

      v43 = v13;

      v20 = MBGetDefaultLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Cloud photos is enabled and fully synced - excluding camera roll from backup", buf, 2u);
        _MBLog();
      }

      [(MBCameraRollPlugin *)self _updateCameraRollBackupStateWithEngine:engineCopy foundiCPLSyncMarker:1];
      domainManager = [engineCopy domainManager];
      v22 = [domainManager domainForName:nameCopy];

      relativePathsToBackupAndRestore = [v22 relativePathsToBackupAndRestore];
      v42 = [relativePathsToBackupAndRestore containsObject:@"Media/MediaAnalysis/.backup"];

      relativePathsToBackupAndRestore2 = [v22 relativePathsToBackupAndRestore];
      v25 = [relativePathsToBackupAndRestore2 containsObject:@"Media/PhotoData"];

      relativePathsToBackupAndRestore3 = [v22 relativePathsToBackupAndRestore];
      v27 = [relativePathsToBackupAndRestore3 containsObject:@"Media/PhotoData/private"];

      relativePathsToBackupAndRestore4 = [v22 relativePathsToBackupAndRestore];
      v29 = [relativePathsToBackupAndRestore4 containsObject:@"Media/PhotoData/internal/photosuiconfiguration"];

      relativePathsToBackupAndRestore5 = [v22 relativePathsToBackupAndRestore];

      if (relativePathsToBackupAndRestore5)
      {
        relativePathsToBackupAndRestore6 = [v22 relativePathsToBackupAndRestore];
        v32 = [relativePathsToBackupAndRestore6 mutableCopy];
      }

      else
      {
        v32 = objc_opt_new();
      }

      v34 = objc_opt_new();
      v35 = v34;
      if ((v25 | v27))
      {
        [v34 addObject:@"Media/PhotoData/private"];
        [v32 removeObject:@"Media/PhotoData/private"];
        [v32 removeObject:@"Media/PhotoData"];
      }

      if ((v25 | v29))
      {
        [v35 addObject:@"Media/PhotoData/internal/photosuiconfiguration"];
        [v32 removeObject:@"Media/PhotoData/internal/photosuiconfiguration"];
        [v32 removeObject:@"Media/PhotoData"];
      }

      if (v42)
      {
        [v35 addObject:@"Media/MediaAnalysis/.backup"];
        [v32 removeObject:@"Media/MediaAnalysis/.backup"];
      }

      [v22 setRelativePathsToBackupAndRestore:{v35, v39, v41}];
      relativePathsNotToBackup = [v22 relativePathsNotToBackup];

      if (relativePathsNotToBackup)
      {
        relativePathsNotToBackup2 = [v22 relativePathsNotToBackup];
        [v32 unionSet:relativePathsNotToBackup2];
      }

      [v22 setRelativePathsNotToBackup:v32];
    }

    else
    {
      v33 = MBGetDefaultLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Cloud photos is not enabled or not fully synced", buf, 2u);
        _MBLog();
      }

      [(MBCameraRollPlugin *)self _updateCameraRollBackupStateWithEngine:engineCopy foundiCPLSyncMarker:0];
    }
  }
}

- (void)_updateCameraRollBackupStateWithEngine:(id)engine foundiCPLSyncMarker:(BOOL)marker
{
  markerCopy = marker;
  engineCopy = engine;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = engineCopy;
    v7 = +[MBAppManager appManager];
    persona = [v6 persona];
    v9 = [v7 isDomainNameEnabled:@"CameraRollDomain" forPersona:persona];

    v10 = 1;
    if (markerCopy)
    {
      v10 = 2;
    }

    if (v9)
    {
      v11 = v10;
    }

    else
    {
      v11 = 3;
    }

    [v6 setCameraRollBackupState:v11];
    if (![v6 cameraRollBackupState])
    {
      __assert_rtn("[MBCameraRollPlugin _updateCameraRollBackupStateWithEngine:foundiCPLSyncMarker:]", "MBCameraRollPlugin.m", 136, "ckEngine.cameraRollBackupState != MBCameraRollBackupStateUnspecified");
    }

    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      cameraRollBackupState = [v6 cameraRollBackupState];
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "MBCameraRollBackupState: %ld", buf, 0xCu);
      [v6 cameraRollBackupState];
      _MBLog();
    }
  }
}

- (id)startingBackupWithEngine:(id)engine
{
  engineCopy = engine;
  if ([engineCopy backsUpPrimaryAccount])
  {
    if (!MBIsInternalInstall() || (+[MBBehaviorOptions sharedOptions](MBBehaviorOptions, "sharedOptions"), v5 = objc_claimAutoreleasedReturnValue(), [v5 domainsToBackUpRegex], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, !v6))
    {
      [(MBCameraRollPlugin *)self _populatePathsForEngine:engineCopy domainName:@"CameraRollDomain"];
    }
  }

  return 0;
}

- (BOOL)shouldScrubSQLiteFileCopyAtRelativePath:(id)path domain:(id)domain
{
  pathCopy = path;
  if ([domain isCameraRollDomain])
  {
    v6 = [pathCopy isEqualToString:@"Media/PhotoData/Photos.sqlite"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)scrubSQLiteFileCopyAtRelativePath:(id)path copyTemporaryPath:(id)temporaryPath domain:(id)domain
{
  pathCopy = path;
  temporaryPathCopy = temporaryPath;
  if (![(MBCameraRollPlugin *)self shouldScrubSQLiteFileCopyAtRelativePath:pathCopy domain:domain])
  {
    v11 = 0;
    goto LABEL_22;
  }

  ppDb = 0;
  memset(&v32, 0, sizeof(v32));
  if (lstat([temporaryPathCopy fileSystemRepresentation], &v32))
  {
    v10 = *__error();
    v11 = [MBError posixErrorWithPath:temporaryPathCopy format:@"lstat error"];
    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v35 = temporaryPathCopy;
      v36 = 2114;
      v37 = pathCopy;
      v38 = 1024;
      LODWORD(v39) = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "lstat failed at %{public}@ (%{public}@): %{errno}d", buf, 0x1Cu);
      _MBLog();
    }
  }

  else
  {
    st_size = v32.st_size;
    v14 = MBGetDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v35 = temporaryPathCopy;
      v36 = 2114;
      v37 = pathCopy;
      v38 = 2048;
      v39 = *&st_size;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Scrubbing the SQLite database at %{public}@ (%{public}@) (%lld bytes)", buf, 0x20u);
      v30 = pathCopy;
      v31 = st_size;
      _MBLog();
    }

    +[NSDate timeIntervalSinceReferenceDate];
    v16 = v15;
    v17 = sqlite3_open_v2([temporaryPathCopy fileSystemRepresentation], &ppDb, 2, 0);
    if (v17)
    {
      v18 = v17;
      v19 = MBGetDefaultLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v35 = temporaryPathCopy;
        v36 = 2114;
        v37 = pathCopy;
        v38 = 1024;
        LODWORD(v39) = v18;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "sqlite3_open_v2 failed at %{public}@ (%{public}@): %d", buf, 0x1Cu);
        v30 = pathCopy;
        v31 = v18;
        _MBLog();
      }

      [MBError errorWithCode:1 path:temporaryPathCopy format:@"sqlite3_open_v2 failed: %d", v18, v30, v31];
    }

    else
    {
      v20 = sqlite3_exec(ppDb, "update ZDETECTEDFACEPRINT set ZDATA = NULL;", 0, 0, 0);
      if (!v20)
      {
        +[NSDate timeIntervalSinceReferenceDate];
        v25 = v24;
        v26 = lstat([temporaryPathCopy fileSystemRepresentation], &v32);
        v27 = v32.st_size;
        v28 = MBGetDefaultLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138544130;
          if (v26)
          {
            v29 = -1;
          }

          else
          {
            v29 = v27;
          }

          v35 = temporaryPathCopy;
          v36 = 2114;
          v37 = pathCopy;
          v38 = 2048;
          v39 = v25 - v16;
          v40 = 2048;
          v41 = v29;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Finished scrubbing the SQLite database at %{public}@ (%{public}@) in %.3fs (%lld bytes)", buf, 0x2Au);
          _MBLog();
        }

        v11 = 0;
        goto LABEL_18;
      }

      v21 = v20;
      v22 = MBGetDefaultLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v35 = temporaryPathCopy;
        v36 = 2114;
        v37 = pathCopy;
        v38 = 1024;
        LODWORD(v39) = v21;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "sqlite3_exec failed at %{public}@ (%{public}@): %d", buf, 0x1Cu);
        v31 = v21;
        _MBLog();
      }

      [MBError errorWithCode:1 path:temporaryPathCopy format:@"sqlite3_exec failed: %s (%d)", sqlite3_errmsg(ppDb), v21, v31];
    }
    v11 = ;
  }

LABEL_18:
  if (ppDb)
  {
    sqlite3_close(ppDb);
  }

  if (v11)
  {
    [MBSQLiteFileHandle removeJournalsForSQLiteFileAtPath:temporaryPathCopy error:0];
  }

LABEL_22:

  return v11;
}

@end