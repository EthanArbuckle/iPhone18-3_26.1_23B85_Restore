@interface MADPhotosDataStoreClient
- (BOOL)_createDirectoryAtURL:(id)l;
- (BOOL)flushWALCheckpointForPersistentStoreAtURL:(id)l persistentStoreCoordinator:(id)coordinator;
- (id)copyPersistentStoreForPhotoLibrary:(id)library toURL:(id)l;
@end

@implementation MADPhotosDataStoreClient

- (BOOL)_createDirectoryAtURL:(id)l
{
  lCopy = l;
  v4 = +[NSFileManager defaultManager];
  v35 = lCopy;
  path = [lCopy path];
  v6 = [v4 fileExistsAtPath:path];

  v7 = MediaAnalysisLogLevel();
  if (v6)
  {
    if (v7 >= 6)
    {
      v8 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v8))
      {
        path2 = [lCopy path];
        *buf = 138412290;
        v43 = path2;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "[MADPhotosDataStoreClient] Directory exists at %@. Removing its contents...", buf, 0xCu);
      }
    }

    path3 = [lCopy path];
    v11 = [v4 contentsOfDirectoryAtPath:path3 error:0];

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v37 objects:v46 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v38;
      v16 = VCPLogToOSLogType[6];
      while (2)
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v38 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v18 = *(*(&v37 + 1) + 8 * i);
          path4 = [v35 path];
          v20 = [NSString stringWithFormat:@"%@/%@", path4, v18];

          v36 = 0;
          [v4 removeItemAtPath:v20 error:&v36];
          v21 = v36;
          v22 = MediaAnalysisLogLevel();
          if (v21)
          {
            if (v22 >= 3)
            {
              v32 = VCPLogToOSLogType[3];
              if (os_log_type_enabled(&_os_log_default, v32))
              {
                *buf = 138412546;
                v43 = v20;
                v44 = 2112;
                v45 = v21;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v32, "[MADPhotosDataStoreClient] Failed to remove %@ with error %@", buf, 0x16u);
              }
            }

            goto LABEL_32;
          }

          if (v22 >= 6 && os_log_type_enabled(&_os_log_default, v16))
          {
            *buf = 138412290;
            v43 = v20;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v16, "[MADPhotosDataStoreClient] Successfully removed %@", buf, 0xCu);
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v37 objects:v46 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_24;
  }

  if (v7 >= 3)
  {
    v23 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v23))
    {
      path5 = [lCopy path];
      *buf = 138412290;
      v43 = path5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v23, "[MADPhotosDataStoreClient] Directory does not exist at %@ yet. Creating it...", buf, 0xCu);
    }
  }

  path6 = [lCopy path];
  v47 = NSFilePosixPermissions;
  v48 = &off_1002946C8;
  v26 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
  v41 = 0;
  v27 = [v4 createDirectoryAtPath:path6 withIntermediateDirectories:1 attributes:v26 error:&v41];
  v12 = v41;

  v28 = MediaAnalysisLogLevel();
  if (v27)
  {
    if (v28 >= 6)
    {
      v29 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v29))
      {
        path7 = [lCopy path];
        *buf = 138412290;
        v43 = path7;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v29, "[MADPhotosDataStoreClient] Successfully created directory at %@", buf, 0xCu);
      }
    }

LABEL_24:
    v31 = 1;
    goto LABEL_33;
  }

  if (v28 >= 3)
  {
    v33 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v33))
    {
      *buf = 138412290;
      v43 = v12;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v33, "[MADPhotosDataStoreClient] Failed to create directory (%@); backup failed", buf, 0xCu);
    }
  }

LABEL_32:
  v31 = 0;
LABEL_33:

  return v31;
}

- (id)copyPersistentStoreForPhotoLibrary:(id)library toURL:(id)l
{
  libraryCopy = library;
  lCopy = l;
  uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];
  if ([(MADPhotosDataStoreClient *)self _createDirectoryAtURL:uRLByDeletingLastPathComponent])
  {
    v9 = [MADPhotosDataStoreClient defaultDatabasePathForPhotoLibrary:libraryCopy];
    v10 = [NSURL fileURLWithPath:v9];

    v70[0] = NSPersistentHistoryTrackingKey;
    v70[1] = NSReadOnlyPersistentStoreOption;
    v71[0] = &__kCFBooleanTrue;
    v71[1] = &__kCFBooleanFalse;
    v70[2] = NSMigratePersistentStoresAutomaticallyOption;
    v70[3] = NSInferMappingModelAutomaticallyOption;
    v71[2] = &__kCFBooleanTrue;
    v71[3] = &__kCFBooleanTrue;
    v11 = [NSDictionary dictionaryWithObjects:v71 forKeys:v70 count:4];
    sharedClient = [objc_opt_class() sharedClient];
    v13 = [sharedClient persistentStoreCoordinatorForPhotoLibrary:libraryCopy];

    *&v65 = 0;
    *(&v65 + 1) = &v65;
    v66 = 0x3032000000;
    v67 = sub_10009EEF4;
    v68 = sub_10009EF04;
    v69 = 0;
    v55 = 0;
    v56 = &v55;
    v57 = 0x2020000000;
    v58 = 0;
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_10009EF0C;
    v48[3] = &unk_100285388;
    v53 = &v55;
    v14 = v13;
    v49 = v14;
    v46 = lCopy;
    v50 = v46;
    v15 = v11;
    v51 = v15;
    v16 = v10;
    v52 = v16;
    v54 = &v65;
    [v14 performBlockAndWait:v48];
    if (v56[3])
    {
      if (MediaAnalysisLogLevel() >= 7)
      {
        v17 = &_os_log_default;
        v18 = VCPLogToOSLogType[7];
        if (os_log_type_enabled(&_os_log_default, v18))
        {
          path = [v16 path];
          persistentStores = [v14 persistentStores];
          firstObject = [persistentStores firstObject];
          options = [firstObject options];
          *buf = 138412546;
          v60 = path;
          v61 = 2112;
          v62 = options;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v18, "[MADPhotosDataStoreClient] Store options for persistent store at %@: %@", buf, 0x16u);
        }
      }

      if (MediaAnalysisLogLevel() >= 6)
      {
        v22 = &_os_log_default;
        v23 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v23))
        {
          path2 = [v16 path];
          path3 = [v46 path];
          *buf = 138412546;
          v60 = path2;
          v61 = 2112;
          v62 = path3;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v23, "[MADPhotosDataStoreClient] Successfully copied persistent store from %@ to %@", buf, 0x16u);
        }
      }

      v26 = [NSPersistentStoreCoordinator alloc];
      managedObjectModel = [v14 managedObjectModel];
      v28 = [v26 initWithManagedObjectModel:managedObjectModel];

      v47 = 0;
      v29 = [v28 addPersistentStoreWithType:NSSQLiteStoreType configuration:0 URL:v46 options:v15 error:&v47];
      v30 = v47;
      if (v30)
      {
        if (MediaAnalysisLogLevel() >= 3)
        {
          v31 = &_os_log_default;
          v32 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v32))
          {
            path4 = [v46 path];
            *buf = 138412290;
            v60 = path4;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v32, "[MADPhotosDataStoreClient] Failed to add new persistent store at %@ to new PSC", buf, 0xCu);
          }
        }

        v34 = 0;
      }

      else
      {
        if (MediaAnalysisLogLevel() >= 6)
        {
          v41 = &_os_log_default;
          v42 = VCPLogToOSLogType[6];
          if (os_log_type_enabled(&_os_log_default, v42))
          {
            path5 = [v46 path];
            *buf = 138412290;
            v60 = path5;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v42, "[MADPhotosDataStoreClient] Successfully added new persistent store at %@ to new PSC", buf, 0xCu);
          }
        }

        v34 = v28;
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() < 3)
      {
        v34 = 0;
LABEL_33:

        _Block_object_dispose(&v55, 8);
        _Block_object_dispose(&v65, 8);

        goto LABEL_34;
      }

      v28 = &_os_log_default;
      v36 = &_os_log_default;
      v37 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v37))
      {
        path6 = [v16 path];
        path7 = [v46 path];
        v40 = *(*(&v65 + 1) + 40);
        *buf = 138412802;
        v60 = path6;
        v61 = 2112;
        v62 = path7;
        v63 = 2112;
        v64 = v40;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v37, "[MADPhotosDataStoreClient] Failed to copy persistent store from %@ to %@ with error %@", buf, 0x20u);

        v34 = 0;
        v28 = &_os_log_default;
      }

      else
      {
        v34 = 0;
      }
    }

    goto LABEL_33;
  }

  if (MediaAnalysisLogLevel() >= 3)
  {
    v35 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v35))
    {
      LODWORD(v65) = 138412290;
      *(&v65 + 4) = uRLByDeletingLastPathComponent;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v35, "Failed to create directory at %@", &v65, 0xCu);
    }
  }

  v34 = 0;
LABEL_34:

  return v34;
}

- (BOOL)flushWALCheckpointForPersistentStoreAtURL:(id)l persistentStoreCoordinator:(id)coordinator
{
  lCopy = l;
  coordinatorCopy = coordinator;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v7 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v7))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = lCopy;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[MADPhotosDataStoreClient] Flushing WAL checkpoint for persistent store at %@", &buf, 0xCu);
    }
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v17 = 0x2020000000;
  v18 = 1;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10009F130;
  v12[3] = &unk_1002853B0;
  v8 = coordinatorCopy;
  v13 = v8;
  v9 = lCopy;
  v14 = v9;
  p_buf = &buf;
  [v8 performBlockAndWait:v12];
  v10 = *(*(&buf + 1) + 24);

  _Block_object_dispose(&buf, 8);
  return v10 & 1;
}

@end