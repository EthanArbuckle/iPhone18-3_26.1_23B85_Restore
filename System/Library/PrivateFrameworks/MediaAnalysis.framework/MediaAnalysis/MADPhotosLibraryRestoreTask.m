@interface MADPhotosLibraryRestoreTask
+ (id)taskWithPhotoLibrary:(id)a3 progressHandler:(id)a4 completionHandler:(id)a5 cancelBlock:(id)a6;
- (BOOL)isCancelled;
- (MADPhotosLibraryRestoreTask)initWithPhotoLibrary:(id)a3 progressHandler:(id)a4 completionHandler:(id)a5 cancelBlock:(id)a6;
- (int)performRestoreForTask:(unint64_t)a3;
- (int)run;
@end

@implementation MADPhotosLibraryRestoreTask

- (MADPhotosLibraryRestoreTask)initWithPhotoLibrary:(id)a3 progressHandler:(id)a4 completionHandler:(id)a5 cancelBlock:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v27.receiver = self;
  v27.super_class = MADPhotosLibraryRestoreTask;
  v15 = [(MADPhotosLibraryRestoreTask *)&v27 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_photoLibrary, a3);
    if (v12)
    {
      v17 = v12;
    }

    else
    {
      v17 = &stru_1002842E8;
    }

    v18 = objc_retainBlock(v17);
    progressHandler = v16->_progressHandler;
    v16->_progressHandler = v18;

    if (v13)
    {
      v20 = v13;
    }

    else
    {
      v20 = &stru_100284308;
    }

    v21 = objc_retainBlock(v20);
    completionHandler = v16->_completionHandler;
    v16->_completionHandler = v21;

    if (v14)
    {
      v23 = v14;
    }

    else
    {
      v23 = &stru_100284328;
    }

    v24 = objc_retainBlock(v23);
    cancelBlock = v16->_cancelBlock;
    v16->_cancelBlock = v24;
  }

  return v16;
}

+ (id)taskWithPhotoLibrary:(id)a3 progressHandler:(id)a4 completionHandler:(id)a5 cancelBlock:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [[a1 alloc] initWithPhotoLibrary:v10 progressHandler:v11 completionHandler:v12 cancelBlock:v13];

  return v14;
}

- (BOOL)isCancelled
{
  if ((*(self->_cancelBlock + 2))())
  {
    v3 = 1;
  }

  else
  {
    v3 = atomic_load(&self->_cancel);
  }

  return v3 & 1;
}

- (int)performRestoreForTask:(unint64_t)a3
{
  v5 = VCPTaskIDDescription();
  v6 = +[NSFileManager defaultManager];
  if (![(MADPhotosLibraryRestoreTask *)self isCancelled])
  {
    v9 = [(PHPhotoLibrary *)self->_photoLibrary mad_restoreStatusFilepath];
    if (!v9)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v15 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v15))
        {
          *buf = 138412290;
          v56 = v5;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "[Restore][%@] Unknown restore status filepath; skipping restore", buf, 0xCu);
        }
      }

      v8 = 0;
      goto LABEL_66;
    }

    v48 = [NSURL fileURLWithPath:v9 isDirectory:0];
    v10 = MADLastAnalysisRestoreTimestampKeyForTask(a3);
    if (!v10)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v16 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v16))
        {
          *buf = 138412290;
          v56 = v5;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v16, "[Restore][%@] Unknown last restore timestmap key; skipping restore", buf, 0xCu);
        }
      }

      v8 = 0;
      goto LABEL_65;
    }

    v47 = MADAnalysisRestoreAttemptsKeyForTask(a3);
    if (!v47)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v17 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v17))
        {
          *buf = 138412290;
          v56 = v5;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v17, "[Restore][%@] Unknown restore attempts key; skipping restore", buf, 0xCu);
        }
      }

      v8 = 0;
      goto LABEL_64;
    }

    if ([v6 fileExistsAtPath:v9])
    {
      v54 = 0;
      v46 = [NSDictionary dictionaryWithContentsOfURL:v48 error:&v54];
      v11 = v54;
      if (v11)
      {
        v12 = v11;
        if (MediaAnalysisLogLevel() < 3)
        {
          goto LABEL_41;
        }

        v13 = VCPLogToOSLogType[3];
        if (!os_log_type_enabled(&_os_log_default, v13))
        {
          goto LABEL_41;
        }

        *buf = 138412546;
        v56 = v5;
        v57 = 2112;
        v58 = v12;
        v14 = "[Restore][%@] Failed to read restore status file (%@); skipping restore";
LABEL_40:
        _os_log_impl(&_mh_execute_header, &_os_log_default, v13, v14, buf, 0x16u);
LABEL_41:
        v8 = 0;
LABEL_63:

LABEL_64:
LABEL_65:

LABEL_66:
        goto LABEL_67;
      }

      v12 = [v46 objectForKeyedSubscript:v10];
      if (v12)
      {
        if (MediaAnalysisLogLevel() < 5)
        {
          goto LABEL_41;
        }

        v13 = VCPLogToOSLogType[5];
        if (!os_log_type_enabled(&_os_log_default, v13))
        {
          goto LABEL_41;
        }

        *buf = 138412546;
        v56 = v5;
        v57 = 2112;
        v58 = v12;
        v14 = "[Restore][%@] Last restore date is %@; skipping restore";
        goto LABEL_40;
      }

      v33 = [v46 objectForKeyedSubscript:v47];
      if ([v33 unsignedIntValue] >= 3)
      {
        if (MediaAnalysisLogLevel() >= 5)
        {
          v43 = VCPLogToOSLogType[5];
          if (os_log_type_enabled(&_os_log_default, v43))
          {
            *buf = 138412546;
            v56 = v5;
            v57 = 2112;
            v58 = v33;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v43, "[Restore][%@] Restore has been attempted %@ time(s); skipping restore", buf, 0x16u);
          }
        }

        v8 = 0;
        v12 = v33;
        goto LABEL_63;
      }
    }

    else
    {
      v46 = 0;
    }

    v18 = +[NSMutableDictionary dictionary];
    v12 = v18;
    if (v46)
    {
      [v18 addEntriesFromDictionary:?];
    }

    if ((_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl())
    {
      v19 = [(PHPhotoLibrary *)self->_photoLibrary vcp_mediaAnalysisCoreDataBackupFilepath];
      if (([v6 fileExistsAtPath:v19] & 1) == 0)
      {
        if (MediaAnalysisLogLevel() >= 5)
        {
          v20 = VCPLogToOSLogType[5];
          if (os_log_type_enabled(&_os_log_default, v20))
          {
            *buf = 138412290;
            v56 = v5;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v20, "[Restore][%@] No CoreData backup present; Checking legacy backup...", buf, 0xCu);
          }
        }

        v21 = [(PHPhotoLibrary *)self->_photoLibrary vcp_mediaAnalysisBackupFilepath];

        v19 = v21;
      }
    }

    else
    {
      v19 = [(PHPhotoLibrary *)self->_photoLibrary vcp_mediaAnalysisBackupFilepath];
    }

    if ([v6 fileExistsAtPath:v19])
    {
      v22 = [v46 objectForKeyedSubscript:v47];
      v23 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v22 unsignedIntValue] + 1);
      [v12 setObject:v23 forKeyedSubscript:v47];

      v52 = 0;
      LOBYTE(v23) = [v12 writeToURL:v48 error:&v52];
      v45 = v52;
      if (v23)
      {
        v24 = VCPSignPostLog();
        spid = os_signpost_id_generate(v24);

        v25 = VCPSignPostLog();
        v26 = v25;
        if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
        {
          *buf = 138412290;
          v56 = v5;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v26, OS_SIGNPOST_INTERVAL_BEGIN, spid, "MADPhotosLibraryRestore", "_%@", buf, 0xCu);
        }

        photoLibrary = self->_photoLibrary;
        if (a3 == 1)
        {
          v51[0] = _NSConcreteStackBlock;
          v51[1] = 3221225472;
          v51[2] = sub_10005A2D0;
          v51[3] = &unk_100283000;
          v51[4] = self;
          v28 = [VCPRestoreDatabaseTask taskWithPhotoLibrary:photoLibrary cancelBlock:v51];
          [v28 start];

          goto LABEL_72;
        }

        progressHandler = self->_progressHandler;
        completionHandler = self->_completionHandler;
        v50[0] = _NSConcreteStackBlock;
        v50[1] = 3221225472;
        v50[2] = sub_10005A2D8;
        v50[3] = &unk_100283000;
        v50[4] = self;
        v36 = [MADPhotosRestoreAnalysisTask taskWithPhotoLibrary:photoLibrary forTaskID:a3 progressHandler:progressHandler completionHandler:completionHandler andCancelBlock:v50];
        v37 = [v36 run] == -128;

        if (!v37)
        {
LABEL_72:
          v38 = VCPSignPostLog();
          v39 = v38;
          if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
          {
            *buf = 138412290;
            v56 = v5;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v39, OS_SIGNPOST_INTERVAL_END, spid, "MADPhotosLibraryRestore", "_%@", buf, 0xCu);
          }

          v40 = +[NSDate now];
          [v12 setObject:v40 forKeyedSubscript:v10];

          v49 = v45;
          LOBYTE(v40) = [v12 writeToURL:v48 error:&v49];
          v41 = v49;

          if ((v40 & 1) == 0 && MediaAnalysisLogLevel() >= 3)
          {
            v42 = VCPLogToOSLogType[3];
            if (os_log_type_enabled(&_os_log_default, v42))
            {
              *buf = 138412802;
              v56 = v5;
              v57 = 2112;
              v58 = v12;
              v59 = 2112;
              v60 = v41;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v42, "[Restore][%@] Failed to write restore status %@: %@", buf, 0x20u);
            }
          }

          v8 = 0;

          goto LABEL_62;
        }

        v8 = -128;
LABEL_61:

LABEL_62:
        goto LABEL_63;
      }

      if (MediaAnalysisLogLevel() < 3 || (v31 = VCPLogToOSLogType[3], !os_log_type_enabled(&_os_log_default, v31)))
      {
LABEL_60:
        v8 = 0;
        goto LABEL_61;
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 5)
      {
        v29 = VCPLogToOSLogType[5];
        if (os_log_type_enabled(&_os_log_default, v29))
        {
          *buf = 138412290;
          v56 = v5;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v29, "[Restore][%@] No backup present; skipping restore", buf, 0xCu);
        }
      }

      v30 = +[NSDate now];
      [v12 setObject:v30 forKeyedSubscript:v10];

      v53 = 0;
      LOBYTE(v30) = [v12 writeToURL:v48 error:&v53];
      v45 = v53;
      if (v30)
      {
        goto LABEL_60;
      }

      if (MediaAnalysisLogLevel() < 3)
      {
        goto LABEL_60;
      }

      v31 = VCPLogToOSLogType[3];
      if (!os_log_type_enabled(&_os_log_default, v31))
      {
        goto LABEL_60;
      }
    }

    *buf = 138412802;
    v56 = v5;
    v57 = 2112;
    v58 = v12;
    v59 = 2112;
    v60 = v45;
    _os_log_impl(&_mh_execute_header, &_os_log_default, v31, "[Restore][%@] Failed to write restore status %@: %@", buf, 0x20u);
    goto LABEL_60;
  }

  if (MediaAnalysisLogLevel() >= 3)
  {
    v7 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v7))
    {
      *buf = 138412290;
      v56 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[Restore][%@] Cancelling restore", buf, 0xCu);
    }
  }

  v8 = -128;
LABEL_67:

  return v8;
}

- (int)run
{
  if (MediaAnalysisLogLevel() >= 5)
  {
    v3 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v3))
    {
      v4 = [objc_opt_class() taskName];
      v5 = [(PHPhotoLibrary *)self->_photoLibrary photoLibraryURL];
      *buf = 138412546;
      v28 = v4;
      v29 = 2112;
      v30 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "[%@] Attempting restore for library %@", buf, 0x16u);
    }
  }

  v6 = +[NSFileManager defaultManager];
  v7 = [(PHPhotoLibrary *)self->_photoLibrary mad_restoreDirectory];
  if (([v6 fileExistsAtPath:v7] & 1) == 0)
  {
    v25 = NSFilePosixPermissions;
    v26 = &off_100294500;
    v8 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v23 = 0;
    v9 = [v6 createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:v8 error:&v23];
    v10 = v23;

    if ((v9 & 1) == 0)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v17 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v17))
        {
          *buf = 138412290;
          v28 = v10;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v17, "Failed to create restore directory (%@); restore failed", buf, 0xCu);
        }
      }

      goto LABEL_20;
    }
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [objc_opt_class() allowedRestoreTasks];
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v11)
  {
    v12 = *v20;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        v15 = objc_autoreleasePoolPush();
        LODWORD(v14) = -[MADPhotosLibraryRestoreTask performRestoreForTask:](self, "performRestoreForTask:", [v14 unsignedIntegerValue]);
        objc_autoreleasePoolPop(v15);
        if (v14 == -128)
        {
          v16 = -128;
          goto LABEL_21;
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_20:
  v16 = 0;
LABEL_21:

  return v16;
}

@end