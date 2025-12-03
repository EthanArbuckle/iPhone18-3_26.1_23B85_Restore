@interface MBCacheDelete
- (id)periodic:(id)periodic urgency:(int)urgency;
- (id)purge:(id)purge urgency:(int)urgency;
- (void)cancelPurge;
@end

@implementation MBCacheDelete

- (id)purge:(id)purge urgency:(int)urgency
{
  purgeCopy = purge;
  v5 = [purgeCopy objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  v33 = [purgeCopy objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v6 = +[MBPersona allPersonae];
  v7 = [v6 countByEnumeratingWithState:&v36 objects:v54 count:16];
  if (v7)
  {
    v8 = *v37;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v37 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v36 + 1) + 8 * i);
        volumeMountPoint = [v10 volumeMountPoint];
        v12 = [volumeMountPoint isEqualToString:v5];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v36 objects:v54 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = MBGetDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v47 = v33;
    v48 = 2048;
    urgencyCopy = urgency;
    v50 = 2112;
    v51 = v5;
    v52 = 2112;
    v53 = v7;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Requested to purge %@ with urgency %ld for volume %@ for persona %@", buf, 0x2Au);
    v30 = v5;
    v31 = v7;
    v27 = v33;
    urgencyCopy2 = urgency;
    _MBLog();
  }

  v14 = [NSDate dateWithTimeIntervalSinceNow:-60.0];
  v35 = 0;
  v15 = [MBFileSystemManager deleteAllSnapshotsForVolume:v5 withPrefix:@"com.apple.mobilebackup" latestCreationDate:v14 error:&v35];
  v16 = v35;
  if ((v15 & 1) == 0)
  {
    v17 = MBGetDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v47 = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to remove MobileBackup file system snapshots: %@", buf, 0xCu);
      v27 = v16;
      _MBLog();
    }
  }

  v34 = v16;
  v18 = [MBFileSystemManager deleteAllSnapshotsForVolume:v5 withPrefix:@"com.appleinternal.mobilebackup" error:&v34, v27, urgencyCopy2, v30, v31];
  v19 = v34;

  if ((v18 & 1) == 0)
  {
    v20 = MBGetDefaultLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v47 = v19;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to remove internal MobileBackup file system snapshots: %@", buf, 0xCu);
      v28 = v19;
      _MBLog();
    }
  }

  if (!v7)
  {
    v44[0] = @"CACHE_DELETE_VOLUME";
    v44[1] = @"CACHE_DELETE_AMOUNT";
    v45[0] = v5;
    v45[1] = &off_100021A80;
    v25 = [NSDictionary dictionaryWithObjects:v45 forKeys:v44 count:2];
    goto LABEL_29;
  }

  if ([v7 isPersonalPersona])
  {
    v21 = [NSDate dateWithTimeIntervalSinceNow:-604800.0];
    [MBFileSystemManager removeAbandonedDriveBackupDirectoriesWithLatestCreationDate:v21 persona:v7];
    if (urgency < 2)
    {
      v42[0] = @"CACHE_DELETE_VOLUME";
      v42[1] = @"CACHE_DELETE_AMOUNT";
      v43[0] = v5;
      v43[1] = &off_100021A80;
      v25 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:2];
      goto LABEL_28;
    }

    v22 = [NSDate dateWithTimeIntervalSinceNow:-864000.0];
    [MBFileSystemManager removeDeviceTransferDirectoryWithEarliestCreationDate:v22];
  }

  v21 = [NSDate dateWithTimeIntervalSinceNow:-3600.0, v28];
  v23 = [v7 removeRestorePrefetchCachesOlderThanDate:v21];
  v40[0] = @"CACHE_DELETE_VOLUME";
  v40[1] = @"CACHE_DELETE_AMOUNT";
  v41[0] = v5;
  v24 = [NSNumber numberWithUnsignedLongLong:v23];
  v41[1] = v24;
  v25 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:2];

LABEL_28:
LABEL_29:

  return v25;
}

- (id)periodic:(id)periodic urgency:(int)urgency
{
  periodicCopy = periodic;
  v6 = [periodicCopy objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  v7 = [periodicCopy objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];

  v8 = MBGetDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v14 = v7;
    v15 = 2048;
    urgencyCopy = urgency;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Requested to periodic purge %@ with urgency %ld for volume %@. Unsupported", buf, 0x20u);
    _MBLog();
  }

  v11[0] = @"CACHE_DELETE_VOLUME";
  v11[1] = @"CACHE_DELETE_AMOUNT";
  v12[0] = v6;
  v12[1] = &off_100021A80;
  v9 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];

  return v9;
}

- (void)cancelPurge
{
  v2 = MBGetDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Requested to cancel purge. Not supported.", v3, 2u);
    _MBLog();
  }
}

@end