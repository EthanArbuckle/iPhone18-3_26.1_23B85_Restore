@interface MBFileSystemManager
+ (BOOL)_createSnapshotForVolumeFd:(int)a3 volumeMountPoint:(id)a4 name:(id)a5 error:(id *)a6 cancelationHandler:(id)a7;
+ (BOOL)_deleteSnapshotForVolume:(id)a3 name:(id)a4 error:(id *)a5;
+ (BOOL)_mountSnapshotForVolumeFd:(int)a3 volumeMountPoint:(id)a4 name:(id)a5 mountPoint:(id)a6 error:(id *)a7;
+ (BOOL)_unmountWithRetry:(id)a3 startTime:(double)a4 timeout:(double)a5 error:(id *)a6 cancelationHandler:(id)a7;
+ (BOOL)createSnapshotForVolume:(id)a3 name:(id)a4 error:(id *)a5 cancelationHandler:(id)a6;
+ (BOOL)deleteAllSnapshotsAcrossVolumes:(id)a3 withPrefix:(id)a4 error:(id *)a5;
+ (BOOL)deleteAllSnapshotsForVolume:(id)a3 withPrefix:(id)a4 error:(id *)a5;
+ (BOOL)deleteAllSnapshotsForVolume:(id)a3 withPrefix:(id)a4 latestCreationDate:(id)a5 error:(id *)a6;
+ (BOOL)renameSnapshotForVolume:(id)a3 name:(id)a4 newName:(id)a5 error:(id *)a6;
+ (BOOL)startFilesystemKeyRollingWithPath:(id)a3 error:(id *)a4;
+ (BOOL)stopFilesystemKeyRollingWithPath:(id)a3 error:(id *)a4;
+ (BOOL)unmount:(id)a3 error:(id *)a4;
+ (BOOL)unmount:(id)a3 timeout:(double)a4 error:(id *)a5 cancelationHandler:(id)a6;
+ (BOOL)unmountAndDeleteSnapshotForVolume:(id)a3 name:(id)a4 mountPoint:(id)a5 error:(id *)a6;
+ (BOOL)unmountAndRenameSnapshotForVolume:(id)a3 name:(id)a4 mountPoint:(id)a5 newName:(id)a6 error:(id *)a7;
+ (BOOL)volumeSupportsLocalSnapshots:(id)a3;
+ (id)_deleteFileSystemSnapshots:(id)a3 block:(id)a4;
+ (id)createAndMountSnapshotForVolume:(id)a3 name:(id)a4 atFirstAvailableMountPoint:(id)a5 error:(id *)a6 cancelationHandler:(id)a7;
+ (id)fetchAllAPFSVolumeMountPoints;
+ (id)listSnapshotsForVolume:(id)a3 error:(id *)a4;
+ (id)volumeMountPointForFile:(id)a3 error:(id *)a4;
+ (id)volumeUUIDWithVolumeMountPoint:(id)a3 error:(id *)a4;
+ (unint64_t)fileSystemCapacity;
+ (void)removeAbandonedDriveBackupDirectoriesWithLatestCreationDate:(id)a3 persona:(id)a4;
+ (void)removeDeviceTransferDirectoryWithEarliestCreationDate:(id)a3;
@end

@implementation MBFileSystemManager

+ (BOOL)volumeSupportsLocalSnapshots:(id)a3
{
  v3 = a3;
  v4 = open([v3 fileSystemRepresentation], 0);
  if (v4 < 0)
  {
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = *__error();
      *v29 = 138412546;
      *&v29[4] = v3;
      *&v29[12] = 1024;
      *&v29[14] = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Unable to open %@: %{errno}d while checking if FS supports snapshot", v29, 0x12u);
      v24 = *__error();
      _MBLog(@"E ", "Unable to open %@: %{errno}d while checking if FS supports snapshot", v15, v16, v17, v18, v19, v20, v3);
    }
  }

  else
  {
    v5 = v4;
    v26 = 0;
    v25 = xmmword_100018D98;
    v30 = 0;
    memset(v29, 0, sizeof(v29));
    if (!fgetattrlist(v4, &v25, v29, 0x24uLL, 0))
    {
      v22 = *&v29[8] & *&v29[24];
      close(v5);
      v21 = (v22 >> 17) & 1;
      goto LABEL_11;
    }

    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v28 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Couldn't get attr list for filesystem path %@", buf, 0xCu);
      _MBLog(@"E ", "Couldn't get attr list for filesystem path %@", v7, v8, v9, v10, v11, v12, v3);
    }

    close(v5);
  }

  LOBYTE(v21) = 0;
LABEL_11:

  return v21;
}

+ (unint64_t)fileSystemCapacity
{
  v2 = atomic_load(&qword_10002A0F0);
  if (!v2)
  {
    v3 = +[NSFileManager defaultManager];
    v15 = 0;
    v4 = [v3 attributesOfFileSystemForPath:@"/var/mobile" error:&v15];
    v5 = v15;

    if (v4)
    {
      v6 = [v4 objectForKeyedSubscript:NSFileSystemSize];
      v2 = [v6 unsignedLongLongValue];

      atomic_store(v2, &qword_10002A0F0);
    }

    else
    {
      v7 = MBGetDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v17 = @"/var/mobile";
        v18 = 2112;
        v19 = v5;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to get filesystem capacity at %@: %@", buf, 0x16u);
        _MBLog(@"E ", "Failed to get filesystem capacity at %@: %@", v8, v9, v10, v11, v12, v13, @"/var/mobile");
      }

      v2 = -1;
    }
  }

  return v2;
}

+ (BOOL)createSnapshotForVolume:(id)a3 name:(id)a4 error:(id *)a5 cancelationHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = v10;
  v14 = MBGetDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v46 = v11;
    v47 = 2114;
    v48 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Creating filesystem snapshot %{public}@ at %{public}@", buf, 0x16u);
    _MBLog(@"Df", "Creating filesystem snapshot %{public}@ at %{public}@", v15, v16, v17, v18, v19, v20, v11);
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v22 = v21;
  v23 = open([v13 fileSystemRepresentation], 0);
  if ((v23 & 0x80000000) != 0)
  {
    v36 = *__error();
    v37 = MBGetDefaultLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v46 = v13;
      v47 = 1024;
      LODWORD(v48) = v36;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Failed to open %{public}@: %{errno}d", buf, 0x12u);
      _MBLog(@"E ", "Failed to open %{public}@: %{errno}d", v38, v39, v40, v41, v42, v43, v13);
    }

    if (a5)
    {
      [MBError errorWithErrno:v36 path:v13 format:@"Failed to open snapshot path"];
      *a5 = v35 = 0;
      goto LABEL_13;
    }

LABEL_12:
    v35 = 0;
    goto LABEL_13;
  }

  v24 = v23;
  v25 = [a1 _createSnapshotForVolumeFd:v23 volumeMountPoint:v13 name:v11 error:a5 cancelationHandler:v12];
  close(v24);
  if (!v25)
  {
    goto LABEL_12;
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v27 = v26;
  v28 = MBGetDefaultLog();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v46 = v11;
    v47 = 2114;
    v48 = v13;
    v49 = 2048;
    v50 = v27 - v22;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Created filesystem snapshot %{public}@ at %{public}@ in %.3fs", buf, 0x20u);
    _MBLog(@"Df", "Created filesystem snapshot %{public}@ at %{public}@ in %.3fs", v29, v30, v31, v32, v33, v34, v11);
  }

  v35 = 1;
LABEL_13:

  return v35;
}

+ (BOOL)_createSnapshotForVolumeFd:(int)a3 volumeMountPoint:(id)a4 name:(id)a5 error:(id *)a6 cancelationHandler:(id)a7
{
  v9 = a4;
  v10 = a5;
  v11 = a7;
  v12 = 0;
  v13 = 0;
  while (1)
  {
    v14 = objc_autoreleasePoolPush();
    if (v11)
    {
      if (v11[2](v11))
      {
        break;
      }
    }

    v15 = fs_snapshot_create(a3, [v10 fileSystemRepresentation], 0);
    v16 = v15 == 0;
    if (!v15)
    {
      goto LABEL_12;
    }

    v17 = *__error();
    v18 = [MBError errorWithErrno:v17 path:v9 format:@"Failed to create snapshot: %d", v17];

    v19 = MBGetDefaultLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138544130;
      v40 = v10;
      v41 = 2114;
      v42 = v9;
      v43 = 1024;
      v44 = v13;
      v45 = 1024;
      v46 = v17;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to create filesystem snapshot %{public}@ at %{public}@ (%d): %{errno}d", buf, 0x22u);
      _MBLog(@"E ", "Failed to create filesystem snapshot %{public}@ at %{public}@ (%d): %{errno}d", v20, v21, v22, v23, v24, v25, v10);
    }

    if (v17 != 36)
    {
      v12 = v18;
LABEL_12:
      v26 = a6;
      goto LABEL_16;
    }

    sleep(0xAu);
    objc_autoreleasePoolPop(v14);
    ++v13;
    v12 = v18;
    if (v13 == 30)
    {
      v16 = 0;
      v26 = a6;
      if (!a6)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  v27 = MBGetDefaultLog();
  v26 = a6;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v40 = v10;
    v41 = 2114;
    v42 = v9;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Failed to create filesystem snapshot %{public}@ at %{public}@ (canceled)", buf, 0x16u);
    _MBLog(@"E ", "Failed to create filesystem snapshot %{public}@ at %{public}@ (canceled)", v28, v29, v30, v31, v32, v33, v10);
  }

  v34 = [MBError errorWithCode:202 format:@"Failed to create snapshot"];

  v16 = 0;
  v12 = v34;
LABEL_16:
  objc_autoreleasePoolPop(v14);
  v18 = v12;
  if (!v26)
  {
    goto LABEL_18;
  }

LABEL_17:
  v35 = v18;
  *v26 = v18;
LABEL_18:

  return v16;
}

+ (id)createAndMountSnapshotForVolume:(id)a3 name:(id)a4 atFirstAvailableMountPoint:(id)a5 error:(id *)a6 cancelationHandler:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  if (![v13 count])
  {
    sub_10001434C();
  }

  v15 = open([v11 fileSystemRepresentation], 0x100000);
  if ((v15 & 0x80000000) != 0)
  {
    v33 = *__error();
    v34 = MBGetDefaultLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v60 = v11;
      v61 = 1024;
      LODWORD(v62) = v33;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Unable to open %@: %{errno}d", buf, 0x12u);
      _MBLog(@"E ", "Unable to open %@: %{errno}d", v35, v36, v37, v38, v39, v40, v11);
    }

    if (a6)
    {
      [MBError errorWithErrno:v33 path:v11 format:@"Unable to open snapshot path"];
      *a6 = v32 = 0;
    }

    else
    {
      v32 = 0;
    }

    goto LABEL_36;
  }

  v16 = v15;
  if (![objc_opt_class() _createSnapshotForVolumeFd:v15 volumeMountPoint:v11 name:v12 error:a6 cancelationHandler:v14])
  {
    v32 = 0;
    goto LABEL_34;
  }

  v53 = v14;
  v50 = [v12 fileSystemRepresentation];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v13;
  v17 = [obj countByEnumeratingWithState:&v55 objects:v65 count:16];
  if (!v17)
  {
    goto LABEL_15;
  }

  v18 = v17;
  v19 = *v56;
  v51 = v13;
  v52 = v12;
  while (2)
  {
    for (i = 0; i != v18; i = i + 1)
    {
      if (*v56 != v19)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v55 + 1) + 8 * i);
      v22 = [v21 fileSystemRepresentation];
      v23 = [objc_opt_class() volumeMountPointForFile:v21 error:a6];
      v24 = v23;
      if (!v11)
      {
        v32 = 0;
        goto LABEL_32;
      }

      if (![v23 isEqualToString:v21])
      {
        if (fs_snapshot_mount(v16, v22, v50, 0))
        {
          v41 = *__error();
          v42 = MBGetDefaultLog();
          v12 = v52;
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412802;
            v60 = v52;
            v61 = 2080;
            v62 = v22;
            v63 = 1024;
            v64 = v41;
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "Unable to mount snapshot %@ at mount point %s: %{errno}d", buf, 0x1Cu);
            _MBLog(@"E ", "Unable to mount snapshot %@ at mount point %s: %{errno}d", v43, v44, v45, v46, v47, v48, v52);
          }

          if (a6)
          {
            [MBError errorWithErrno:v41 path:v21 format:@"Unable to mount snapshot"];
            *a6 = v32 = 0;
          }

          else
          {
            v32 = 0;
          }

          goto LABEL_33;
        }

        v32 = v21;
LABEL_32:
        v12 = v52;
LABEL_33:
        v14 = v53;

        v13 = v51;
        goto LABEL_34;
      }

      v25 = MBGetDefaultLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v60 = v24;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Mount point %@ is already in use", buf, 0xCu);
        _MBLog(@"I ", "Mount point %@ is already in use", v26, v27, v28, v29, v30, v31, v24);
      }
    }

    v18 = [obj countByEnumeratingWithState:&v55 objects:v65 count:16];
    v13 = v51;
    v12 = v52;
    if (v18)
    {
      continue;
    }

    break;
  }

LABEL_15:

  [objc_opt_class() _deleteSnapshotForVolume:v11 name:v12 error:0];
  if (a6)
  {
    [MBError errorWithCode:14 format:@"No free mount points for APFS snapshot"];
    *a6 = v32 = 0;
  }

  else
  {
    v32 = 0;
  }

  v14 = v53;
LABEL_34:
  if (v16)
  {
    close(v16);
  }

LABEL_36:

  return v32;
}

+ (BOOL)_mountSnapshotForVolumeFd:(int)a3 volumeMountPoint:(id)a4 name:(id)a5 mountPoint:(id)a6 error:(id *)a7
{
  v10 = a5;
  v11 = a6;
  realpath_DARWIN_EXTSN([v11 fileSystemRepresentation], v28);
  v12 = fs_snapshot_mount(a3, v28, [v10 fileSystemRepresentation], 0);
  if (v12)
  {
    v13 = *__error();
    v14 = MBGetDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v23 = v10;
      v24 = 2080;
      v25 = v28;
      v26 = 1024;
      v27 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Unable to mount snapshot %@ at mount point %s: %{errno}d", buf, 0x1Cu);
      _MBLog(@"E ", "Unable to mount snapshot %@ at mount point %s: %{errno}d", v15, v16, v17, v18, v19, v20, v10);
    }

    if (a7)
    {
      *a7 = [MBError errorWithErrno:v13 path:v11 format:@"Unable to mount snapshot"];
    }
  }

  return v12 == 0;
}

+ (BOOL)_unmountWithRetry:(id)a3 startTime:(double)a4 timeout:(double)a5 error:(id *)a6 cancelationHandler:(id)a7
{
  v11 = a3;
  v12 = a7;
  v13 = 31;
  while (!v12 || !v12[2](v12))
  {
    v29 = 0;
    v14 = [a1 unmount:v11 error:&v29];
    v15 = v29;
    if ((v14 & 1) != 0 || [MBError isError:v15 withCode:4])
    {
      v25 = 1;
LABEL_17:

      goto LABEL_18;
    }

    Current = CFAbsoluteTimeGetCurrent();
    if (![MBError isError:v15 withCode:14]|| vabdd_f64(Current, a4) > a5)
    {
      if (a6)
      {
        v26 = v15;
        v25 = 0;
        *a6 = v15;
      }

      else
      {
        v25 = 0;
      }

      goto LABEL_17;
    }

    v17 = MBGetDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = v11;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Retrying unmount for %@ after EBUSY", buf, 0xCu);
      _MBLog(@"Df", "Retrying unmount for %@ after EBUSY", v18, v19, v20, v21, v22, v23, v11);
    }

    sleep(0xAu);
    if (!--v13)
    {
      v24 = a6;
      if (a6)
      {
        [MBError errorWithCode:15 format:@"Timed out trying to unmount %@", v11];
        goto LABEL_21;
      }

LABEL_22:
      v25 = 0;
      goto LABEL_18;
    }
  }

  v24 = a6;
  if (!a6)
  {
    goto LABEL_22;
  }

  [MBError errorWithCode:202 format:@"Cancelled while trying to unmount %@", v11];
LABEL_21:
  *v24 = v25 = 0;
LABEL_18:

  return v25;
}

+ (BOOL)unmount:(id)a3 timeout:(double)a4 error:(id *)a5 cancelationHandler:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = objc_opt_new();
  Current = CFAbsoluteTimeGetCurrent();
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v14 = v10;
  v15 = [v14 countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v44;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v44 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v43 + 1) + 8 * i);
        v42 = 0;
        v20 = [a1 _unmountWithRetry:v19 startTime:&v42 timeout:v11 error:Current cancelationHandler:a4];
        v21 = v42;
        if ((v20 & 1) == 0)
        {
          [v12 addObject:v21];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v16);
  }

  v22 = [v12 count];
  if (v22)
  {
    if (a5)
    {
      *a5 = [MBError errorWithErrors:v12];
    }

    v23 = MBGetDefaultLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [v14 count];
      v25 = [v14 count];
      *buf = 134218240;
      v48 = v24;
      v49 = 2048;
      v50 = v25;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Failed to unmount %llu/%llu snapshots", buf, 0x16u);
      v26 = [v14 count];
      [v14 count];
      _MBLog(@"E ", "Failed to unmount %llu/%llu snapshots", v27, v28, v29, v30, v31, v32, v26);
    }
  }

  else
  {
    v23 = MBGetDefaultLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v33 = [v14 count];
      *buf = 134217984;
      v48 = v33;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Unmounted %llu mount points", buf, 0xCu);
      v41 = [v14 count];
      _MBLog(@"Df", "Unmounted %llu mount points", v34, v35, v36, v37, v38, v39, v41);
    }
  }

  return v22 == 0;
}

+ (BOOL)unmount:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    if (a4)
    {
      v16 = [MBError errorWithCode:5 description:@"No mountpoint specified from which to unmount the current snapshot"];
      goto LABEL_17;
    }

LABEL_18:
    v24 = 0;
    goto LABEL_19;
  }

  if (unmount([v5 fileSystemRepresentation], 0))
  {
    v7 = *__error();
    v8 = MBGetDefaultLog();
    v9 = v8;
    if (v7 == 22)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v33 = v6;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Nothing to unmount at %{public}@", buf, 0xCu);
        _MBLog(@"Df", "Nothing to unmount at %{public}@", v10, v11, v12, v13, v14, v15, v6);
      }

      if (a4)
      {
        v16 = [MBError errorWithCode:4 path:v6 format:@"Nothing to unmount"];
LABEL_17:
        v24 = 0;
        *a4 = v16;
        goto LABEL_19;
      }
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v33 = v6;
        v34 = 1024;
        v35 = v7;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "unmount failed at %{public}@: %{errno}d", buf, 0x12u);
        _MBLog(@"E ", "unmount failed at %{public}@: %{errno}d", v25, v26, v27, v28, v29, v30, v6);
      }

      if (a4)
      {
        v16 = [MBError errorWithErrno:v7 path:v6 format:@"Unable to unmount snapshot"];
        goto LABEL_17;
      }
    }

    goto LABEL_18;
  }

  v17 = MBGetDefaultLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v33 = v6;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Unmounted snapshot at %{public}@", buf, 0xCu);
    _MBLog(@"Df", "Unmounted snapshot at %{public}@", v18, v19, v20, v21, v22, v23, v6);
  }

  v24 = 1;
LABEL_19:

  return v24;
}

+ (BOOL)_deleteSnapshotForVolume:(id)a3 name:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = open([v7 fileSystemRepresentation], 0);
  if (v9 < 0)
  {
    v21 = *__error();
    v22 = MBGetDefaultLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v46 = v7;
      v47 = 1024;
      LODWORD(v48) = v21;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed to open %{public}@: %{errno}d", buf, 0x12u);
      _MBLog(@"E ", "Failed to open %{public}@: %{errno}d", v23, v24, v25, v26, v27, v28, v7);
    }

    v29 = [MBError errorWithErrno:v21 path:v7 format:@"Unable to open snapshot path"];
    if (a5)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v10 = v9;
    if (fs_snapshot_delete(v9, [v8 fileSystemRepresentation], 0))
    {
      v11 = *__error();
      v12 = MBGetDefaultLog();
      v13 = v12;
      if (v11 == 2)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v46 = v8;
          v47 = 2114;
          v48 = v7;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Snapshot %{public}@ not found at %{public}@", buf, 0x16u);
          _MBLog(@"Df", "Snapshot %{public}@ not found at %{public}@", v14, v15, v16, v17, v18, v19, v8);
        }

        v20 = [MBError errorWithCode:4 path:v7 format:@"Snapshot not found"];
      }

      else
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543874;
          v46 = v8;
          v47 = 2114;
          v48 = v7;
          v49 = 1024;
          v50 = v11;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to delete snapshot %{public}@ at %{public}@: %{errno}d", buf, 0x1Cu);
          _MBLog(@"E ", "Failed to delete snapshot %{public}@ at %{public}@: %{errno}d", v37, v38, v39, v40, v41, v42, v8);
        }

        v20 = [MBError errorWithErrno:v11 path:v7 format:@"Unable to delete snapshot"];
      }

      v29 = v20;
    }

    else
    {
      v30 = MBGetDefaultLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v46 = v8;
        v47 = 2114;
        v48 = v7;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Deleted snapshot %{public}@ at %{public}@", buf, 0x16u);
        _MBLog(@"Df", "Deleted snapshot %{public}@ at %{public}@", v31, v32, v33, v34, v35, v36, v8);
      }

      v29 = 0;
    }

    close(v10);
    if (a5)
    {
LABEL_19:
      if (v29)
      {
        v43 = v29;
        *a5 = v29;
      }
    }
  }

  return v29 == 0;
}

+ (BOOL)renameSnapshotForVolume:(id)a3 name:(id)a4 newName:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = open([v9 fileSystemRepresentation], 0x100000);
  if (v12 < 0)
  {
    v23 = *__error();
    v24 = MBGetDefaultLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v35 = v9;
      v36 = 1024;
      LODWORD(v37) = v23;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Unable to open %@: %{errno}d", buf, 0x12u);
      _MBLog(@"E ", "Unable to open %@: %{errno}d", v25, v26, v27, v28, v29, v30, v9);
    }

    if (a6)
    {
      [MBError errorWithErrno:v23 path:v9 format:@"Unable to open snapshot path"];
      *a6 = v31 = 0;
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    v13 = v12;
    if (fs_snapshot_rename(v12, [v10 fileSystemRepresentation], objc_msgSend(v11, "fileSystemRepresentation"), 0))
    {
      v14 = *__error();
      v15 = MBGetDefaultLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v35 = v10;
        v36 = 2112;
        v37 = v11;
        v38 = 1024;
        v39 = v14;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Unable to rename snapshot: %@ -> %@: %{errno}d", buf, 0x1Cu);
        _MBLog(@"E ", "Unable to rename snapshot: %@ -> %@: %{errno}d", v16, v17, v18, v19, v20, v21, v10);
      }

      v22 = [MBError errorWithErrno:v14 path:v9 format:@"Unable to rename snapshot"];
    }

    else
    {
      v22 = 0;
    }

    close(v13);
    v31 = v22 == 0;
    if (a6 && v22)
    {
      v32 = v22;
      *a6 = v22;
    }
  }

  return v31;
}

+ (BOOL)unmountAndDeleteSnapshotForVolume:(id)a3 name:(id)a4 mountPoint:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17 = 0;
  v12 = [objc_opt_class() unmount:v11 error:&v17];

  v13 = v17;
  if (v12)
  {
    goto LABEL_4;
  }

  if ([MBError isError:v13 withCode:4])
  {

    v13 = 0;
LABEL_4:
    v14 = [objc_opt_class() _deleteSnapshotForVolume:v9 name:v10 error:a6];
    goto LABEL_5;
  }

  if (a6)
  {
    v16 = v13;
    v14 = 0;
    *a6 = v13;
  }

  else
  {
    v14 = 0;
  }

LABEL_5:

  return v14;
}

+ (BOOL)unmountAndRenameSnapshotForVolume:(id)a3 name:(id)a4 mountPoint:(id)a5 newName:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = a5;
  v15 = [objc_opt_class() unmount:v14 error:a7];

  if (v15)
  {
    v16 = [objc_opt_class() renameSnapshotForVolume:v11 name:v12 newName:v13 error:a7];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)_deleteFileSystemSnapshots:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
  v45 = a1;
  v54 = 0;
  v46 = v6;
  v8 = [objc_opt_class() listSnapshotsForVolume:v6 error:&v54];
  v9 = v54;
  v10 = v9;
  if (v8)
  {
    if ([v8 count])
    {
      v48 = v10;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v43 = v8;
      obj = v8;
      v11 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
      if (!v11)
      {
        goto LABEL_19;
      }

      v12 = v11;
      v13 = *v51;
      v44 = v7;
      while (1)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v51 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v50 + 1) + 8 * i);
          v16 = objc_autoreleasePoolPush();
          if ((v7[2](v7, v15) & 1) == 0)
          {
            v21 = MBGetDefaultLog();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              v57 = v15;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "Ignoring snapshot: %{public}@", buf, 0xCu);
              _MBLog(@"Db", "Ignoring snapshot: %{public}@", v28, v29, v30, v31, v32, v33, v15);
            }

            goto LABEL_15;
          }

          v17 = v13;
          v18 = [v15 name];
          v49 = v48;
          v19 = [v45 _deleteSnapshotForVolume:v46 name:v18 error:&v49];
          v20 = v49;

          if (v19)
          {
            v21 = MBGetDefaultLog();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v57 = v15;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Deleted snapshot: %{public}@", buf, 0xCu);
              _MBLog(@"Df", "Deleted snapshot: %{public}@", v22, v23, v24, v25, v26, v27, v15);
            }

            v48 = v20;
            v13 = v17;
            v7 = v44;
LABEL_15:

            goto LABEL_17;
          }

          v48 = v20;
          v13 = v17;
          v7 = v44;
LABEL_17:
          objc_autoreleasePoolPop(v16);
        }

        v12 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
        if (!v12)
        {
LABEL_19:

          v34 = 0;
          v8 = v43;
          v10 = v48;
          goto LABEL_24;
        }
      }
    }

    v35 = MBGetDefaultLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v57 = v6;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "No snapshots to delete for %{public}@", buf, 0xCu);
      _MBLog(@"I ", "No snapshots to delete for %{public}@", v36, v37, v38, v39, v40, v41, v6);
    }

    v34 = 0;
  }

  else
  {
    v10 = v9;
    v34 = v10;
  }

LABEL_24:

  return v34;
}

+ (BOOL)deleteAllSnapshotsAcrossVolumes:(id)a3 withPrefix:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      v14 = 0;
      do
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v22 + 1) + 8 * v14);
        v21 = 0;
        v16 = [MBFileSystemManager deleteAllSnapshotsForVolume:v15 withPrefix:v8 error:&v21];
        v17 = v21;
        if ((v16 & 1) == 0)
        {
          [v9 addObject:v17];
        }

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }

  v18 = [v9 count];
  v19 = v18;
  if (a5 && v18)
  {
    *a5 = [MBError errorWithErrors:v9];
  }

  return v19 == 0;
}

+ (BOOL)deleteAllSnapshotsForVolume:(id)a3 withPrefix:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = objc_opt_class();
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000035C0;
  v14[3] = &unk_100024740;
  v15 = v7;
  v10 = v7;
  v11 = [v9 _deleteFileSystemSnapshots:v8 block:v14];

  if (a5 && v11)
  {
    v12 = v11;
    *a5 = v11;
  }

  return v11 == 0;
}

+ (BOOL)deleteAllSnapshotsForVolume:(id)a3 withPrefix:(id)a4 latestCreationDate:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v11)
  {
    sub_100014378();
  }

  v12 = v11;
  v13 = objc_opt_class();
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10000371C;
  v19[3] = &unk_100024768;
  v20 = v12;
  v21 = v10;
  v14 = v10;
  v15 = v12;
  v16 = [v13 _deleteFileSystemSnapshots:v9 block:v19];
  if (a6 && v16)
  {
    v16 = v16;
    *a6 = v16;
  }

  v17 = v16 == 0;

  return v17;
}

+ (void)removeAbandonedDriveBackupDirectoriesWithLatestCreationDate:(id)a3 persona:(id)a4
{
  v94 = a3;
  v5 = a4;
  v6 = [v5 cacheDirectory];
  v7 = [NSURL fileURLWithPath:v6 isDirectory:1];

  v8 = MBGetDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v120 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Removing drive backup snapshots underneath %@", buf, 0xCu);
    _MBLog(@"Df", "Removing drive backup snapshots underneath %@", v9, v10, v11, v12, v13, v14, v7);
  }

  v15 = +[NSFileManager defaultManager];
  v16 = NSURLIsDirectoryKey;
  v124[0] = NSURLIsDirectoryKey;
  v124[1] = NSURLCreationDateKey;
  v17 = [NSArray arrayWithObjects:v124 count:2];
  v18 = objc_opt_new();
  v19 = [v5 snapshotDatabaseDirectory];
  [v18 addObject:v19];

  v20 = [v5 restoreSnapshotsDatabaseDirectory];
  [v18 addObject:v20];

  v93 = v5;
  v21 = [v5 restoreDepotRootsByVolume];
  v22 = [v21 allValues];
  v98 = v18;
  [v18 addObjectsFromArray:v22];

  v95 = v15;
  v91 = v17;
  v92 = v7;
  [v15 enumeratorAtURL:v7 includingPropertiesForKeys:v17 options:1 errorHandler:&stru_1000247A8];
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v23 = v117 = 0u;
  v24 = [v23 countByEnumeratingWithState:&v114 objects:v123 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v115;
    v27 = &MGCopyAnswer_ptr;
    v97 = v23;
    v96 = *v115;
    do
    {
      v28 = 0;
      v99 = v25;
      do
      {
        if (*v115 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v29 = *(*(&v114 + 1) + 8 * v28);
        context = objc_autoreleasePoolPush();
        v30 = objc_alloc(v27[208]);
        v31 = [v29 lastPathComponent];
        v32 = [v30 initWithUUIDString:v31];

        if (v32)
        {
          v103 = v32;
          v112 = 0;
          v113 = 0;
          v33 = [v29 getResourceValue:&v113 forKey:v16 error:&v112];
          v34 = v113;
          v102 = v112;
          if (v33)
          {
            if ([v34 BOOLValue])
            {
              v100 = v28;
              v101 = v34;
              v110 = 0u;
              v111 = 0u;
              v108 = 0u;
              v109 = 0u;
              v35 = v98;
              v36 = [v35 countByEnumeratingWithState:&v108 objects:v118 count:16];
              if (v36)
              {
                v37 = v36;
                v38 = *v109;
                do
                {
                  for (i = 0; i != v37; i = i + 1)
                  {
                    if (*v109 != v38)
                    {
                      objc_enumerationMutation(v35);
                    }

                    v40 = *(*(&v108 + 1) + 8 * i);
                    v41 = [v29 path];
                    v42 = [v40 mb_stringByAppendingSlash];
                    if ([v41 hasPrefix:v42])
                    {
                      v43 = MBGetDefaultLog();
                      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
                      {
                        *buf = 138412290;
                        v120 = v40;
                        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "Ignoring %@ since it's in the exclude list", buf, 0xCu);
                        _MBLog(@"I ", "Ignoring %@ since it's in the exclude list", v44, v45, v46, v47, v48, v49, v40);
                      }
                    }
                  }

                  v37 = [v35 countByEnumeratingWithState:&v108 objects:v118 count:16];
                }

                while (v37);
              }

              v106 = 0;
              v107 = 0;
              v50 = [v29 getResourceValue:&v107 forKey:NSURLCreationDateKey error:&v106];
              v51 = v107;
              v52 = v106;

              if (v50)
              {
                v26 = v96;
                if (v51 && [v94 compare:v51] == -1)
                {
                  v56 = MBGetDefaultLog();
                  v23 = v97;
                  v25 = v99;
                  if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
                  {
                    [v51 timeIntervalSince1970];
                    *buf = 138412546;
                    v120 = v29;
                    v121 = 2048;
                    v122 = v82;
                    _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_INFO, "Ignoring %@ since it was created at %.3f", buf, 0x16u);
                    [v51 timeIntervalSince1970];
                    _MBLog(@"I ", "Ignoring %@ since it was created at %.3f", v83, v84, v85, v86, v87, v88, v29);
                  }
                }

                else
                {
                  v105 = v52;
                  v53 = [v95 removeItemAtURL:v29 error:&v105];
                  v54 = v105;

                  v55 = MBGetDefaultLog();
                  v56 = v55;
                  if (v53)
                  {
                    v23 = v97;
                    v25 = v99;
                    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      v120 = v29;
                      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Removed drive backup snapshot directory: %@", buf, 0xCu);
                      _MBLog(@"Df", "Removed drive backup snapshot directory: %@", v57, v58, v59, v60, v61, v62, v29);
                    }
                  }

                  else
                  {
                    v23 = v97;
                    v25 = v99;
                    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412546;
                      v120 = v29;
                      v121 = 2112;
                      v122 = v54;
                      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "Failed to remove drive backup snapshot directory %@: %@", buf, 0x16u);
                      _MBLog(@"E ", "Failed to remove drive backup snapshot directory %@: %@", v76, v77, v78, v79, v80, v81, v29);
                    }
                  }

                  v52 = v54;
                }
              }

              else
              {
                v56 = MBGetDefaultLog();
                v26 = v96;
                if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v120 = v29;
                  v121 = 2112;
                  v122 = v52;
                  _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "Failed to get NSURLCreationDateKey for %@: %@", buf, 0x16u);
                  _MBLog(@"E ", "Failed to get NSURLCreationDateKey for %@: %@", v70, v71, v72, v73, v74, v75, v29);
                }

                v23 = v97;
                v25 = v99;
              }

              v32 = v103;

              v63 = v52;
              v16 = NSURLIsDirectoryKey;
              v27 = &MGCopyAnswer_ptr;
              v28 = v100;
LABEL_40:

              v34 = v101;
            }

            else
            {
              v63 = v102;
              v32 = v103;
            }

            goto LABEL_42;
          }

          v101 = v34;
          v51 = MBGetDefaultLog();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v120 = v29;
            v121 = 2112;
            v122 = v102;
            _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "Failed to get NSURLIsDirectoryKey for %@: %@", buf, 0x16u);
            v90 = v29;
            v63 = v102;
            _MBLog(@"E ", "Failed to get NSURLIsDirectoryKey for %@: %@", v64, v65, v66, v67, v68, v69, v90);
          }

          else
          {
            v63 = v102;
          }

          v32 = v103;
          goto LABEL_40;
        }

LABEL_42:

        objc_autoreleasePoolPop(context);
        v28 = v28 + 1;
      }

      while (v28 != v25);
      v89 = [v23 countByEnumeratingWithState:&v114 objects:v123 count:16];
      v25 = v89;
    }

    while (v89);
  }
}

+ (id)listSnapshotsForVolume:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v86 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Listing all snapshots at %{public}@", buf, 0xCu);
    _MBLog(@"Db", "Listing all snapshots at %{public}@", v6, v7, v8, v9, v10, v11, v4);
  }

  v80 = v4;
  v79 = open([v4 fileSystemRepresentation], 0);
  if (v79 != -1)
  {
    v12 = objc_opt_new();
    while (1)
    {
      *&v83.bitmapcount = xmmword_100018DB0;
      *&v83.fileattr = 0;
      v13 = fs_snapshot_list(v79, &v83, buf, 0x400uLL, 0);
      if (v13 < 0)
      {
        v61 = *__error();
        v62 = MBGetDefaultLog();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          *v84 = 138543618;
          *&v84[4] = v80;
          *&v84[12] = 1024;
          *&v84[14] = v61;
          _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "fs_snapshot_list failed at %{public}@: %{errno}d", v84, 0x12u);
          _MBLog(@"E ", "fs_snapshot_list failed at %{public}@: %{errno}d", v63, v64, v65, v66, v67, v68, v80);
        }

        v49 = [MBError errorWithErrno:v61 path:v80 format:@"fs_snapshot_list failed"];
        close(v79);
        v50 = a4;
        if (!v49)
        {
          goto LABEL_45;
        }

LABEL_40:
        v69 = MBGetDefaultLog();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v86 = v80;
          v87 = 2114;
          v88 = v49;
          _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_ERROR, "Failed to list file system snapshots at %{public}@: %{public}@", buf, 0x16u);
          v50 = a4;
          _MBLog(@"E ", "Failed to list file system snapshots at %{public}@: %{public}@", v70, v71, v72, v73, v74, v75, v80);
        }

        if (v50)
        {
          v76 = v49;
          v60 = 0;
          *v50 = v49;
        }

        else
        {
          v60 = 0;
        }

LABEL_48:

LABEL_49:
        v59 = v80;
        goto LABEL_50;
      }

      if (!v13)
      {
        close(v79);
LABEL_45:
        v60 = v12;
        v49 = 0;
        goto LABEL_48;
      }

      v82 = v13;
      v81 = 0;
      v14 = 0;
      v15 = 1;
      do
      {
        v16 = &buf[v14];
        v17 = v14 + 24;
        v19 = *&buf[v14];
        v18 = *&buf[v14 + 4];
        if ((v18 & 0x20000000) != 0)
        {
          v20 = *&buf[v17];
          if (v20)
          {
            v21 = MBGetDefaultLog();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              *v84 = 67109120;
              *&v84[4] = v20;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to read attributes for directory entry: %{errno}d\n", v84, 8u);
              _MBLog(@"E ", "Failed to read attributes for directory entry: %{errno}d\n", v22, v23, v24, v25, v26, v27, v20);
            }

            v28 = [MBError errorWithErrno:v20 path:v80 format:@"Failed to read snapshot attributes"];

            v29 = 0;
            v30 = 0;
            v31 = 0;
            v32 = 0;
            v81 = v28;
            goto LABEL_29;
          }

          v17 = v14 + 28;
        }

        if ((v18 & 1) != 0 && (v33 = &buf[v17], v17 += 8, (v34 = *(v33 + 1)) != 0))
        {
          v35 = &v33[*v33];
          v36 = (v34 - 1);
          if (v35[v36])
          {
            sub_1000143A4();
          }

          v31 = [[NSString alloc] initWithBytes:v35 length:v36 encoding:4];
          v18 = *(v16 + 1);
          if ((v18 & 0x200) != 0)
          {
LABEL_18:
            v37 = &buf[v17];
            v17 += 16;
            v29 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:*v37 - kCFAbsoluteTimeIntervalSince1970 + v37[1] * 0.000000001];
            if ((*(v16 + 1) & 0x800000) != 0)
            {
              goto LABEL_19;
            }

            goto LABEL_23;
          }
        }

        else
        {
          v31 = 0;
          if ((v18 & 0x200) != 0)
          {
            goto LABEL_18;
          }
        }

        v29 = 0;
        if ((v18 & 0x800000) != 0)
        {
LABEL_19:
          *v84 = *&buf[v17];
          v17 += 16;
          v38 = [[NSUUID alloc] initWithUUIDBytes:v84];
          v30 = [v38 UUIDString];

          if (v31)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }

LABEL_23:
        v30 = 0;
        if (v31)
        {
LABEL_24:
          v39 = [[MBFileSystemSnapshot alloc] initWithName:v31 uuid:v30 creationDate:v29];
          v40 = v12;
          [v12 addObject:v39];
          v41 = MBGetDefaultLog();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            *v84 = 138543362;
            *&v84[4] = v39;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "Found file system snapshot: %{public}@", v84, 0xCu);
            _MBLog(@"I ", "Found file system snapshot: %{public}@", v42, v43, v44, v45, v46, v47, v39);
          }

          v12 = v40;
        }

LABEL_27:
        if (v17 >= 1025)
        {
          sub_1000143D0();
        }

        v32 = 1;
LABEL_29:

        if (!v32)
        {
          break;
        }

        v14 += v19;
      }

      while (v15++ < v82);
      v49 = v81;
      if (v81)
      {
        close(v79);
        v50 = a4;
        goto LABEL_40;
      }
    }
  }

  v51 = *__error();
  v52 = MBGetDefaultLog();
  if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v86 = v80;
    v87 = 1024;
    LODWORD(v88) = v51;
    _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "Failed to open %{public}@: %{errno}d", buf, 0x12u);
    _MBLog(@"E ", "Failed to open %{public}@: %{errno}d", v53, v54, v55, v56, v57, v58, v80);
  }

  if (!a4)
  {
    v60 = 0;
    goto LABEL_49;
  }

  v59 = v80;
  [MBError errorWithErrno:v51 path:v80 format:@"Unable to open snapshot path"];
  *a4 = v60 = 0;
LABEL_50:

  return v60;
}

+ (id)volumeMountPointForFile:(id)a3 error:(id *)a4
{
  v5 = a3;
  memset(&v9, 0, 512);
  if (statfs([v5 fileSystemRepresentation], &v9))
  {
    v6 = __error();
    if (a4)
    {
      [MBError errorWithErrno:*v6 path:v5 format:@"statfs failed"];
      *a4 = v7 = 0;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = [NSString mb_stringWithFileSystemRepresentation:v9.f_mntonname];
  }

  return v7;
}

+ (id)fetchAllAPFSVolumeMountPoints
{
  v2 = getfsstat(&v8, 43360, 1);
  v3 = [[NSMutableArray alloc] initWithCapacity:v2 & ~(v2 >> 31)];
  if (v2 >= 1)
  {
    v4 = v2;
    f_mntonname = v8.f_mntonname;
    do
    {
      if (!strcmp("apfs", f_mntonname - 16) && (*(f_mntonname - 22) & 0x10) == 0)
      {
        v6 = [NSString mb_stringWithFileSystemRepresentation:f_mntonname];
        [v3 addObject:v6];
      }

      f_mntonname += 2168;
      --v4;
    }

    while (v4);
  }

  return v3;
}

+ (BOOL)startFilesystemKeyRollingWithPath:(id)a3 error:(id *)a4
{
  v5 = a3;
  if (!v5)
  {
    sub_1000143FC();
  }

  v6 = v5;
  v24 = xmmword_100018DE0;
  v7 = fsctl([v5 fileSystemRepresentation], 0xC0104A3DuLL, &v24, 0);
  if (v7 == -1)
  {
    v15 = *__error();
    v16 = MBGetDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v26) = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "fsctl(APFS_KEY_ROLLING_START) failed: %{errno}d", buf, 8u);
      _MBLog(@"E ", "fsctl(APFS_KEY_ROLLING_START) failed: %{errno}d", v17, v18, v19, v20, v21, v22, v15);
    }

    if (a4)
    {
      *a4 = [MBError errorWithErrno:v15 format:@"Failed to start APFS key rolling"];
    }
  }

  else
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v26 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Started APFS key rolling for %{public}@", buf, 0xCu);
      _MBLog(@"Df", "Started APFS key rolling for %{public}@", v9, v10, v11, v12, v13, v14, v6);
    }
  }

  return v7 != -1;
}

+ (BOOL)stopFilesystemKeyRollingWithPath:(id)a3 error:(id *)a4
{
  v5 = a3;
  if (!v5)
  {
    sub_100014428();
  }

  v6 = v5;
  v24 = xmmword_100018DF0;
  v7 = fsctl([v5 fileSystemRepresentation], 0xC0104A3DuLL, &v24, 0);
  if (v7 == -1)
  {
    v15 = *__error();
    v16 = MBGetDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v26) = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "fsctl(APFS_KEY_ROLLING_STOP) failed: %{errno}d", buf, 8u);
      _MBLog(@"E ", "fsctl(APFS_KEY_ROLLING_STOP) failed: %{errno}d", v17, v18, v19, v20, v21, v22, v15);
    }

    if (a4)
    {
      *a4 = [MBError errorWithErrno:v15 format:@"Failed to stop APFS key rolling"];
    }
  }

  else
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v26 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Stopped APFS key rolling for %{public}@", buf, 0xCu);
      _MBLog(@"Df", "Stopped APFS key rolling for %{public}@", v9, v10, v11, v12, v13, v14, v6);
    }
  }

  return v7 != -1;
}

+ (void)removeDeviceTransferDirectoryWithEarliestCreationDate:(id)a3
{
  v3 = a3;
  v4 = +[NSFileManager defaultManager];
  if ([v4 fileExistsAtPath:@"/var/mobile/Library/Caches/Backup/DT"])
  {
    v49 = 0;
    v5 = [v4 attributesOfItemAtPath:@"/var/mobile/Library/Caches/Backup/DT" error:&v49];
    v6 = COERCE_DOUBLE(v49);
    if (v5)
    {
      v7 = [v5 objectForKeyedSubscript:NSFileCreationDate];
      if (v7)
      {
        if (v3 && [v3 compare:v7] == -1)
        {
          v22 = MBGetDefaultLog();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            [v7 timeIntervalSince1970];
            *buf = 138412546;
            v51 = @"/var/mobile/Library/Caches/Backup/DT";
            v52 = 2048;
            v53 = v41;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Ignoring %@ since it was created at %.3f", buf, 0x16u);
            [v7 timeIntervalSince1970];
            _MBLog(@"I ", "Ignoring %@ since it was created at %.3f", v42, v43, v44, v45, v46, v47, @"/var/mobile/Library/Caches/Backup/DT");
          }
        }

        else
        {
          v8 = MBGetDefaultLog();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            [v7 timeIntervalSince1970];
            *buf = 138412546;
            v51 = @"/var/mobile/Library/Caches/Backup/DT";
            v52 = 2048;
            v53 = v9;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Removing %@ created at %.3f", buf, 0x16u);
            [v7 timeIntervalSince1970];
            _MBLog(@"Df", "Removing %@ created at %.3f", v10, v11, v12, v13, v14, v15, @"/var/mobile/Library/Caches/Backup/DT");
          }

          +[NSDate timeIntervalSinceReferenceDate];
          v17 = v16;
          v48 = v6;
          v18 = [v4 mb_moveToTmpDirThenRemoveItemAtPath:@"/var/mobile/Library/Caches/Backup/DT" error:&v48];
          v19 = COERCE_DOUBLE(*&v48);

          if (v18)
          {
            +[NSDate timeIntervalSinceReferenceDate];
            v21 = v20;
            v22 = MBGetDefaultLog();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v51 = @"/var/mobile/Library/Caches/Backup/DT";
              v52 = 2048;
              v53 = v21 - v17;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Removed %@ in %.3fs", buf, 0x16u);
              _MBLog(@"Df", "Removed %@ in %.3fs", v23, v24, v25, v26, v27, v28, @"/var/mobile/Library/Caches/Backup/DT");
            }
          }

          else
          {
            v22 = MBGetDefaultLog();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v51 = @"/var/mobile/Library/Caches/Backup/DT";
              v52 = 2112;
              v53 = v19;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed to remove %@: %@", buf, 0x16u);
              _MBLog(@"E ", "Failed to remove %@: %@", v35, v36, v37, v38, v39, v40, @"/var/mobile/Library/Caches/Backup/DT");
            }
          }

          v6 = v19;
        }
      }
    }

    else
    {
      v7 = MBGetDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v51 = @"/var/mobile/Library/Caches/Backup/DT";
        v52 = 2112;
        v53 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to fetch attributes at %@: %@", buf, 0x16u);
        _MBLog(@"E ", "Failed to fetch attributes at %@: %@", v29, v30, v31, v32, v33, v34, @"/var/mobile/Library/Caches/Backup/DT");
      }
    }
  }
}

+ (id)volumeUUIDWithVolumeMountPoint:(id)a3 error:(id *)a4
{
  v5 = a3;
  if (!v5)
  {
    sub_1000144AC();
  }

  if (!a4)
  {
    sub_100014480();
  }

  v6 = v5;
  v7 = open([v5 fileSystemRepresentation], 0);
  if (v7 < 0)
  {
    v10 = *__error();
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v32 = 138543618;
      *&v32[4] = v6;
      *&v32[12] = 1024;
      *&v32[14] = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "open failed at %{public}@: %{errno}d", v32, 0x12u);
      _MBLog(@"E ", "open failed at %{public}@: %{errno}d", v18, v19, v20, v21, v22, v23, v6);
    }

    goto LABEL_9;
  }

  v8 = v7;
  *&v32[16] = 0;
  *v32 = xmmword_100018DC8;
  v30[0] = 0;
  v30[1] = 0;
  v31 = 0;
  v9 = fgetattrlist(v7, v32, v30, 0x14uLL, 0);
  v10 = *__error();
  close(v8);
  if (v9)
  {
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v27 = v6;
      v28 = 1024;
      v29 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "fgetattrlist failed at %{public}@: %{errno}d", buf, 0x12u);
      _MBLog(@"E ", "fgetattrlist failed at %{public}@: %{errno}d", v12, v13, v14, v15, v16, v17, v6);
    }

LABEL_9:

    [MBError errorWithErrno:v10 path:v6 format:@"open error"];
    *a4 = v24 = 0;
    goto LABEL_11;
  }

  v24 = [[NSUUID alloc] initWithUUIDBytes:v30 + 4];
  if (!v24)
  {
    sub_100014454();
  }

LABEL_11:

  return v24;
}

@end