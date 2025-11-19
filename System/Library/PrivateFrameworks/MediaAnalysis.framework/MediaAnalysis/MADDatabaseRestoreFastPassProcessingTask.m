@interface MADDatabaseRestoreFastPassProcessingTask
+ (id)taskWithCancelBlock:(id)a3 progressHandler:(id)a4 andCompletionHandler:(id)a5;
- (BOOL)run:(id *)a3;
- (MADDatabaseRestoreFastPassProcessingTask)initWithCancelBlock:(id)a3 progressHandler:(id)a4 andCompletionHandler:(id)a5;
@end

@implementation MADDatabaseRestoreFastPassProcessingTask

- (MADDatabaseRestoreFastPassProcessingTask)initWithCancelBlock:(id)a3 progressHandler:(id)a4 andCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10007F488;
  v17[3] = &unk_100284038;
  v10 = a5;
  v18 = v10;
  v16.receiver = self;
  v16.super_class = MADDatabaseRestoreFastPassProcessingTask;
  v11 = [(MADDatabaseRestoreFastPassProcessingTask *)&v16 initWithCompletionHandler:v17];
  if (v11)
  {
    if (v9)
    {
      v12 = v9;
    }

    else
    {
      v12 = &stru_100285080;
    }

    v13 = objc_retainBlock(v12);
    progressHandler = v11->_progressHandler;
    v11->_progressHandler = v13;

    [(MADDatabaseRestoreFastPassProcessingTask *)v11 setCancelBlock:v8];
  }

  return v11;
}

+ (id)taskWithCancelBlock:(id)a3 progressHandler:(id)a4 andCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [[a1 alloc] initWithCancelBlock:v8 progressHandler:v9 andCompletionHandler:v10];

  return v11;
}

- (BOOL)run:(id *)a3
{
  if (MediaAnalysisLogLevel() >= 5)
  {
    v3 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v3))
    {
      *buf = 138412290;
      v95 = @"[Restore-FP]";
      _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "%@ Running MADDatabaseRestoreFastPassProcessingTask ... ", buf, 0xCu);
    }
  }

  v4 = [(MADDatabaseRestoreFastPassProcessingTask *)self cancelBlock];
  if (!v4 || ([(MADDatabaseRestoreFastPassProcessingTask *)self cancelBlock], v5 = objc_claimAutoreleasedReturnValue(), v6 = v5[2](), v5, v4, !v6))
  {
    v11 = +[VCPWatchdog sharedWatchdog];
    [v11 pet];

    v12 = VCPSignPostLog();
    spid = os_signpost_id_generate(v12);

    v13 = VCPSignPostLog();
    v14 = v13;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, spid, "MADDatabaseRestoreFastPassProcessingTask", "", buf, 2u);
    }

    v15 = +[VCPPhotoLibraryManager sharedManager];
    v16 = +[PHPhotoLibrary systemPhotoLibraryURL];
    v74 = [v15 photoLibraryWithURL:v16];

    if (v74)
    {
      if ([v74 isReadyForAnalysisCPLInitialDownloadCompleted])
      {
        if (_os_feature_enabled_impl())
        {
          v105 = v74;
          v17 = [NSArray arrayWithObjects:&v105 count:1];
          v18 = [(MADDatabaseRestoreFastPassProcessingTask *)self cancelBlock];
          obj = [MADPhotosDatabaseMigrationProcessingTask taskWithPhotoLibraries:v17 progressHandler:0 completionHandler:0 cancelBlock:v18];
        }

        else
        {
          v17 = [(MADDatabaseRestoreFastPassProcessingTask *)self cancelBlock];
          obj = [MADPhotosLibraryRestoreTask taskWithPhotoLibrary:v74 progressHandler:0 completionHandler:0 cancelBlock:v17];
        }

        if ([obj run])
        {
          if (a3)
          {
            v103 = NSLocalizedDescriptionKey;
            v32 = objc_opt_class();
            v33 = NSStringFromClass(v32);
            v34 = [NSString stringWithFormat:@"%@[%@] Failed during processing", @"[Restore-FP]", v33];
            v104 = v34;
            v35 = [NSDictionary dictionaryWithObjects:&v104 forKeys:&v103 count:1];
            v36 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:v35];
            v37 = *a3;
            *a3 = v36;
          }

          goto LABEL_30;
        }

        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v39 = +[MADDatabaseRestoreFastPassBackgroundSystemTask featureCodes];
        v40 = [v39 countByEnumeratingWithState:&v85 objects:v102 count:16];
        if (!v40)
        {
          goto LABEL_49;
        }

        v41 = *v86;
        type = VCPLogToOSLogType[3];
        v42 = VCPLogToOSLogType[5];
LABEL_36:
        v43 = 0;
        while (1)
        {
          if (*v86 != v41)
          {
            objc_enumerationMutation(v39);
          }

          v44 = *(*(&v85 + 1) + 8 * v43);
          v45 = [v44 unsignedIntegerValue];
          v84 = 0;
          v46 = [BGSystemTaskCheckpoints reportFeatureCheckpoint:50 forFeature:v45 error:&v84];
          v47 = v84;
          if (v46)
          {
            if (MediaAnalysisLogLevel() < 5 || !os_log_type_enabled(&_os_log_default, v42))
            {
              goto LABEL_47;
            }

            *buf = 138412802;
            v95 = @"[Restore-FP]";
            v96 = 2048;
            v97 = 50;
            v98 = 2112;
            v99 = v44;
            v48 = v42;
            v49 = "%@ MADDatabaseRestoreFastPassProcessingTask Reported checkpoint %lu for %@";
            v50 = 32;
          }

          else
          {
            if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(&_os_log_default, type))
            {
              goto LABEL_47;
            }

            *buf = 138413058;
            v95 = @"[Restore-FP]";
            v96 = 2048;
            v97 = 50;
            v98 = 2112;
            v99 = v44;
            v100 = 2112;
            v101 = v47;
            v48 = type;
            v49 = "%@ MADDatabaseRestoreFastPassProcessingTask Failed to report checkpoint %lu for %@ - %@";
            v50 = 42;
          }

          _os_log_impl(&_mh_execute_header, &_os_log_default, v48, v49, buf, v50);
LABEL_47:

          if (v40 == ++v43)
          {
            v40 = [v39 countByEnumeratingWithState:&v85 objects:v102 count:16];
            if (!v40)
            {
LABEL_49:

              v83[0] = _NSConcreteStackBlock;
              v83[1] = 3221225472;
              v83[2] = sub_100080500;
              v83[3] = &unk_100283000;
              v83[4] = self;
              v51 = objc_retainBlock(v83);
              v81 = 0u;
              v82 = 0u;
              v79 = 0u;
              v80 = 0u;
              v52 = [&off_100296128 countByEnumeratingWithState:&v79 objects:v93 count:16];
              if (v52)
              {
                *typea = *v80;
                v76 = VCPLogToOSLogType[3];
                while (2)
                {
                  for (i = 0; i != v52; i = i + 1)
                  {
                    if (*v80 != *typea)
                    {
                      objc_enumerationMutation(&off_100296128);
                    }

                    v54 = *(*(&v79 + 1) + 8 * i);
                    v55 = objc_autoreleasePoolPush();
                    v56 = (v51[2])(v51);
                    v57 = v56;
                    if (v56)
                    {
                      v58 = [NSString stringWithFormat:@"%@ Operation canceled", @"[Restore-FP]"];
                      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v76))
                      {
                        *buf = 138412290;
                        v95 = v58;
                        _os_log_impl(&_mh_execute_header, &_os_log_default, v76, "%@", buf, 0xCu);
                      }

                      if (a3)
                      {
                        v91 = NSLocalizedDescriptionKey;
                        v59 = [NSString stringWithFormat:@"%@", v58];
                        v92 = v59;
                        v60 = [NSDictionary dictionaryWithObjects:&v92 forKeys:&v91 count:1];
                        v61 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-128 userInfo:v60];
                        v62 = *a3;
                        *a3 = v61;
                      }
                    }

                    else
                    {
                      +[MADProgressManager updateProgressForTask:photoLibrary:reuseCachedValue:cancelOrExtendTimeoutBlock:](MADProgressManager, "updateProgressForTask:photoLibrary:reuseCachedValue:cancelOrExtendTimeoutBlock:", [v54 unsignedIntegerValue], v74, 0, v51);
                    }

                    objc_autoreleasePoolPop(v55);
                    if (v57)
                    {
                      v10 = 0;
                      goto LABEL_78;
                    }
                  }

                  v52 = [&off_100296128 countByEnumeratingWithState:&v79 objects:v93 count:16];
                  if (v52)
                  {
                    continue;
                  }

                  break;
                }
              }

              if ((v51[2])(v51))
              {
                v63 = [NSString stringWithFormat:@"%@ Operation canceled", @"[Restore-FP]"];
                if (MediaAnalysisLogLevel() >= 3)
                {
                  v64 = VCPLogToOSLogType[3];
                  if (os_log_type_enabled(&_os_log_default, v64))
                  {
                    *buf = 138412290;
                    v95 = v63;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, v64, "%@", buf, 0xCu);
                  }
                }

                if (a3)
                {
                  v89 = NSLocalizedDescriptionKey;
                  v65 = [NSString stringWithFormat:@"%@", v63];
                  v90 = v65;
                  v66 = [NSDictionary dictionaryWithObjects:&v90 forKeys:&v89 count:1];
                  v67 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-128 userInfo:v66];
                  v68 = *a3;
                  *a3 = v67;
                }

                v10 = 0;
              }

              else
              {
                (*(self->_progressHandler + 2))(100.0);
                v69 = VCPSignPostLog();
                v70 = v69;
                if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v69))
                {
                  *buf = 0;
                  _os_signpost_emit_with_name_impl(&_mh_execute_header, v70, OS_SIGNPOST_INTERVAL_END, spid, "MADDatabaseRestoreFastPassProcessingTask", "", buf, 2u);
                }

                v63 = [(MADDatabaseRestoreFastPassProcessingTask *)self completionHandler];
                (v63->data)(v63, 0, 0);
                v10 = 1;
              }

LABEL_78:
LABEL_31:
              v7 = v74;
LABEL_32:

              return v10;
            }

            goto LABEL_36;
          }
        }
      }

      v106 = NSLocalizedDescriptionKey;
      v26 = [v74 photoLibraryURL];
      v27 = [v26 path];
      v28 = [NSString stringWithFormat:@"%@ Photo Library not ready (initial download) for analysis (%@)", @"[Restore-FP]", v27];
      v107 = v28;
      v29 = [NSDictionary dictionaryWithObjects:&v107 forKeys:&v106 count:1];
      obj = [NSError errorWithDomain:NSOSStatusErrorDomain code:-23812 userInfo:v29];

      v23 = a3;
      if (MediaAnalysisLogLevel() >= 3)
      {
        v30 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v30))
        {
          v31 = [obj description];
          *buf = 138412290;
          v95 = v31;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v30, "%@", buf, 0xCu);

          v23 = a3;
        }
      }

      if (!v23)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v108 = NSLocalizedDescriptionKey;
      v19 = [0 photoLibraryURL];
      v20 = [v19 path];
      v21 = [NSString stringWithFormat:@"%@ Failed to open Photo Library (%@)", @"[Restore-FP]", v20];
      v109 = v21;
      v22 = [NSDictionary dictionaryWithObjects:&v109 forKeys:&v108 count:1];
      obj = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:v22];

      v23 = a3;
      if (MediaAnalysisLogLevel() >= 3)
      {
        v24 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v24))
        {
          v25 = [obj description];
          *buf = 138412290;
          v95 = v25;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v24, "%@", buf, 0xCu);

          v23 = a3;
        }
      }

      if (!v23)
      {
        goto LABEL_30;
      }
    }

    objc_storeStrong(v23, obj);
LABEL_30:
    v10 = 0;
    goto LABEL_31;
  }

  if (a3)
  {
    v110 = NSLocalizedDescriptionKey;
    v7 = [NSString stringWithFormat:@"%@ Operation canceled", @"[Restore-FP]"];
    v111 = v7;
    obj = [NSDictionary dictionaryWithObjects:&v111 forKeys:&v110 count:1];
    v8 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-128 userInfo:?];
    v9 = *a3;
    *a3 = v8;

    v10 = 0;
    goto LABEL_32;
  }

  return 0;
}

@end