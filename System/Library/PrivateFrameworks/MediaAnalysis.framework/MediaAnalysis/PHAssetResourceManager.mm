@interface PHAssetResourceManager
+ (id)vcp_fileCacheDirectoryPath;
+ (int)vcp_requestFileURLForAssetResource:(id)resource taskID:(unint64_t)d completionHandler:(id)handler;
+ (int)vcp_requestInMemoryDownload:(id)download taskID:(unint64_t)d data:(id *)data cancel:(id)cancel;
+ (void)vcp_createFileCacheDirectoryIfNeeded;
+ (void)vcp_flushFileCache;
+ (void)vcp_flushResourceURL:(id)l;
+ (void)vcp_reportDownloadBytes:(unint64_t)bytes taskID:(unint64_t)d;
@end

@implementation PHAssetResourceManager

+ (id)vcp_fileCacheDirectoryPath
{
  v2 = NSTemporaryDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"com.apple.mediaanalysis"];

  return v3;
}

+ (void)vcp_createFileCacheDirectoryIfNeeded
{
  v2 = +[PHAssetResourceManager vcp_fileCacheDirectoryPath];
  v20 = 0;
  v3 = +[NSFileManager defaultManager];
  v4 = [v3 fileExistsAtPath:v2 isDirectory:&v20];

  if (v4)
  {
    if (v20)
    {
      if (MediaAnalysisLogLevel() >= 7)
      {
        v5 = VCPLogToOSLogType[7];
        if (os_log_type_enabled(&_os_log_default, v5))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "[Resource] Resource file cache directory exists", buf, 2u);
        }
      }

      goto LABEL_15;
    }

    v14 = +[NSFileManager defaultManager];
    v19 = 0;
    v15 = [v14 removeItemAtPath:v2 error:&v19];
    v6 = v19;

    if ((v15 & 1) == 0 && MediaAnalysisLogLevel() >= 3)
    {
      v16 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v16))
      {
        v17 = [v6 description];
        *buf = 138412290;
        v22 = v17;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v16, "[Resource] Failed to remove file obstructing resource file cache directory (%@)", buf, 0xCu);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = +[NSFileManager defaultManager];
  v18 = v6;
  v8 = [v7 createDirectoryAtPath:v2 withIntermediateDirectories:1 attributes:0 error:&v18];
  v9 = v18;

  v10 = MediaAnalysisLogLevel();
  if (v8)
  {
    if (v10 >= 6)
    {
      v11 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v11))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "[Resource] Created resource file cache directory", buf, 2u);
      }
    }
  }

  else if (v10 >= 3)
  {
    v12 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v12))
    {
      v13 = [v9 description];
      *buf = 138412290;
      v22 = v13;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v12, "[Resource] Failed to create resource file cache directory (%@)", buf, 0xCu);
    }
  }

LABEL_15:
}

+ (int)vcp_requestFileURLForAssetResource:(id)resource taskID:(unint64_t)d completionHandler:(id)handler
{
  resourceCopy = resource;
  handlerCopy = handler;
  [objc_opt_class() vcp_createFileCacheDirectoryIfNeeded];
  vcp_uniformTypeIdentifier = [resourceCopy vcp_uniformTypeIdentifier];
  preferredFilenameExtension = [vcp_uniformTypeIdentifier preferredFilenameExtension];

  assetLocalIdentifier = [resourceCopy assetLocalIdentifier];
  v11 = [PHObject uuidFromLocalIdentifier:assetLocalIdentifier];
  v12 = [NSNumber numberWithUnsignedInteger:d];
  stringValue = [v12 stringValue];
  v14 = [v11 stringByAppendingPathExtension:stringValue];
  v15 = [v14 stringByAppendingPathExtension:preferredFilenameExtension];

  vcp_fileCacheDirectoryPath = [objc_opt_class() vcp_fileCacheDirectoryPath];
  v17 = [vcp_fileCacheDirectoryPath stringByAppendingPathComponent:v15];

  v18 = [NSURL fileURLWithPath:v17];
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_100021504;
  v37[3] = &unk_1002832F0;
  v19 = resourceCopy;
  v38 = v19;
  v20 = v18;
  v39 = v20;
  v21 = objc_retainBlock(v37);
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100021744;
  v33[3] = &unk_100283318;
  v22 = v19;
  v35 = v20;
  v36 = handlerCopy;
  v34 = v22;
  v23 = v20;
  v24 = handlerCopy;
  v25 = objc_retainBlock(v33);
  v26 = objc_alloc_init(PHAssetResourceRequestOptions);
  [v26 setNetworkAccessAllowed:1];
  [v26 setDownloadPriority:0];
  [v26 setDownloadIntent:6];
  [v26 setPruneAfterAvailableOnLowDisk:1];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100021854;
  v31[3] = &unk_1002828A8;
  v32 = v22;
  v27 = v22;
  [v26 setProgressHandler:v31];
  v28 = +[PHAssetResourceManager defaultManager];
  LODWORD(v14) = [v28 requestFileURLForAssetResource:v27 options:v26 urlReceivedHandler:v21 completionHandler:v25];

  return v14;
}

+ (void)vcp_flushResourceURL:(id)l
{
  lCopy = l;
  if (MediaAnalysisLogLevel() >= 7)
  {
    v4 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      path = [lCopy path];
      *buf = 138412290;
      v14 = path;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "[Resource] Flushing cached resource: %@", buf, 0xCu);
    }
  }

  v6 = +[NSFileManager defaultManager];
  v12 = 0;
  v7 = [v6 removeItemAtURL:lCopy error:&v12];
  v8 = v12;

  if ((v7 & 1) == 0 && MediaAnalysisLogLevel() >= 3)
  {
    v9 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v9))
    {
      path2 = [lCopy path];
      v11 = [v8 description];
      *buf = 138412546;
      v14 = path2;
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "[Resource] Failed to delete %@ (%@)", buf, 0x16u);
    }
  }
}

+ (void)vcp_flushFileCache
{
  if (MediaAnalysisLogLevel() >= 7)
  {
    v3 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v3))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "[Resource] Flushing file cache", buf, 2u);
    }
  }

  v4 = +[NSFileManager defaultManager];
  vcp_fileCacheDirectoryPath = [objc_opt_class() vcp_fileCacheDirectoryPath];
  v6 = [v4 enumeratorAtPath:vcp_fileCacheDirectoryPath];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        vcp_fileCacheDirectoryPath2 = [objc_opt_class() vcp_fileCacheDirectoryPath];
        v14 = [vcp_fileCacheDirectoryPath2 stringByAppendingPathComponent:v12];

        v15 = [NSURL fileURLWithPath:v14];
        [self vcp_flushResourceURL:v15];
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v9);
  }
}

+ (void)vcp_reportDownloadBytes:(unint64_t)bytes taskID:(unint64_t)d
{
  if (MediaAnalysisLogLevel() >= 7)
  {
    v5 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v5))
    {
      v6 = VCPAnalyticsEventDasDutyCycleTaskKey;
      v7 = VCPTaskIDDescription();
      qos_class_self();
      v8 = VCPMAQoSDescription();
      *buf = 138413058;
      v19 = v6;
      v20 = 2112;
      v21 = v7;
      v22 = 2112;
      v23 = v8;
      v24 = 2048;
      bytesCopy = bytes;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "[DAS QoS] %@: %@ (%@) download %lu bytes", buf, 0x2Au);
    }
  }

  v9 = +[VCPMADCoreAnalyticsManager sharedManager];
  v10 = VCPAnalyticsEventDasDutyCycleTaskKey;
  v15 = VCPAnalyticsFieldKeyTaskName;
  v11 = VCPTaskIDDescription();
  v16 = VCPAnalyticsFieldKeyQoS;
  qos_class_self();
  v12 = VCPMAQoSDescription();
  v13 = [NSNumber numberWithUnsignedInteger:bytes, v15, v16, VCPAnalyticsFieldKeyDownloadAssetCount, VCPAnalyticsFieldKeyDownloadBytes, v11, v12, &off_100294CE0];
  v17[3] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v17 forKeys:&v15 count:4];
  [v9 sendEvent:v10 withAnalytics:v14];
}

+ (int)vcp_requestInMemoryDownload:(id)download taskID:(unint64_t)d data:(id *)data cancel:(id)cancel
{
  downloadCopy = download;
  cancelCopy = cancel;
  obj = self;
  objc_sync_enter(obj);
  assetLocalIdentifier = [downloadCopy assetLocalIdentifier];
  if (MediaAnalysisLogLevel() >= 6)
  {
    v13 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v13))
    {
      *buf = 138412546;
      *&buf[4] = assetLocalIdentifier;
      *&buf[12] = 2112;
      *&buf[14] = downloadCopy;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "[%@] Attempt to download resource: %@", buf, 0x16u);
    }
  }

  v14 = objc_alloc_init(PHAssetResourceRequestOptions);
  [v14 setNetworkAccessAllowed:1];
  [v14 setDownloadIsTransient:1];
  v44 = v14;
  v54[0] = _NSConcreteStackBlock;
  v54[1] = 3221225472;
  v54[2] = sub_1001706C0;
  v54[3] = &unk_1002828A8;
  v15 = assetLocalIdentifier;
  v55 = v15;
  v42 = objc_retainBlock(v54);
  [v14 setProgressHandler:v42];
  v16 = objc_alloc_init(NSMutableData);
  v17 = dispatch_semaphore_create(0);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v61 = 0;
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_100170794;
  v47[3] = &unk_100287848;
  v40 = v15;
  v48 = v40;
  v51 = buf;
  v52 = obj;
  v18 = v16;
  v49 = v18;
  dCopy = d;
  v19 = v17;
  v50 = v19;
  v20 = objc_retainBlock(v47);
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_100170940;
  v45[3] = &unk_100287870;
  v21 = v18;
  v46 = v21;
  v41 = objc_retainBlock(v45);
  v22 = +[PHAssetResourceManager defaultManager];
  v23 = [v22 requestDataForAssetResource:downloadCopy options:v44 dataReceivedHandler:v41 completionHandler:v20];

  if (!v23)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v31 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v31))
      {
        *v56 = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v31, "Failed to issue resource request", v56, 2u);
      }
    }

LABEL_29:
    v30 = -23802;
    goto LABEL_30;
  }

  v39 = v23;
  dataCopy = data;
  v25 = v21;
  if (cancelCopy)
  {
    v26 = -100000000;
    while (1)
    {
      v27 = dispatch_time(0, 100000000);
      if (!dispatch_semaphore_wait(v19, v27))
      {
        goto LABEL_22;
      }

      v26 += 100000000;
      if (v26 >= 0xDF2517701)
      {
        v33 = v39;
        v21 = v25;
        if (MediaAnalysisLogLevel() >= 4)
        {
          v36 = VCPLogToOSLogType[4];
          if (os_log_type_enabled(&_os_log_default, v36))
          {
            *v56 = 138412546;
            v57 = v40;
            v58 = 1024;
            v59 = v39;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v36, "[%@] Download resource timed-out (ID:%d)", v56, 0x12u);
          }
        }

        goto LABEL_28;
      }

      if (cancelCopy[2](cancelCopy))
      {
        v21 = v25;
        if (MediaAnalysisLogLevel() >= 6)
        {
          v28 = VCPLogToOSLogType[6];
          if (os_log_type_enabled(&_os_log_default, v28))
          {
            *v56 = 138412546;
            v57 = v40;
            v58 = 1024;
            v59 = v39;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v28, "[%@] Cancelling download (ID:%d)", v56, 0x12u);
          }
        }

        v29 = +[PHAssetResourceManager defaultManager];
        [v29 cancelDataRequest:v39];

        dispatch_semaphore_wait(v19, 0xFFFFFFFFFFFFFFFFLL);
        v30 = -128;
        goto LABEL_30;
      }
    }
  }

  v32 = dispatch_time(0, 60000000000);
  if (dispatch_semaphore_wait(v19, v32))
  {
    v33 = v39;
    if (MediaAnalysisLogLevel() >= 4)
    {
      v34 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v34))
      {
        *v56 = 138412546;
        v57 = v40;
        v58 = 1024;
        v59 = v39;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v34, "[%@] Download resource timed-out (ID:%d)", v56, 0x12u);
      }
    }

LABEL_28:
    v37 = +[PHAssetResourceManager defaultManager];
    [v37 cancelDataRequest:v33];

    dispatch_semaphore_wait(v19, 0xFFFFFFFFFFFFFFFFLL);
    goto LABEL_29;
  }

LABEL_22:
  v21 = v25;
  if (dataCopy)
  {
    v35 = v25;
    *dataCopy = v25;
  }

  v30 = *(*&buf[8] + 24);
LABEL_30:

  _Block_object_dispose(buf, 8);
  objc_sync_exit(obj);

  return v30;
}

@end