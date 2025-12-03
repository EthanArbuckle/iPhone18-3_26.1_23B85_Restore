@interface GEOAPUploader
- (BOOL)_debugUploadCountersEnabled;
- (GEOAPUploader)init;
- (id)_additionalHTTPHeadersForAnalyticSessionType:(int)type;
- (id)_urlForAnalyticSessionType:(int)type;
- (id)_urlForBatchId:(unint64_t)id;
- (id)filePathForTaskDescription:(id)description;
- (id)fileURLForTaskDescription:(id)description;
- (id)persistence;
- (id)tempFilePathForTaskDescription;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)_clearExpired;
- (void)_clearHolddownTimer;
- (void)_clearUploadTimer;
- (void)_setupBackgroundTask;
- (void)_startHolddownTimerForDuration:(double)duration;
- (void)_startUploadTimerForDuration:(double)duration;
- (void)_submitBatchForUploadWithBatchId:(unint64_t)id;
- (void)_submitBatchesForUpload;
@end

@implementation GEOAPUploader

- (id)persistence
{
  if (qword_100053178 != -1)
  {
    dispatch_once(&qword_100053178, &stru_10003D030);
  }

  v3 = qword_100053170;

  return v3;
}

- (BOOL)_debugUploadCountersEnabled
{
  v2 = +[GEOPlatform sharedPlatform];
  if ([v2 isInternalInstall])
  {
    v3 = GeoAnalyticsConfig__debug_UploadCountersEnabled[1];
    BOOL = GEOConfigGetBOOL();
  }

  else
  {
    BOOL = 0;
  }

  return BOOL;
}

- (id)_additionalHTTPHeadersForAnalyticSessionType:(int)type
{
  v4 = +[GEOPlatform sharedPlatform];
  isInternalInstall = [v4 isInternalInstall];

  if (isInternalInstall)
  {
    v6 = +[NSMutableDictionary dictionary];
    v7 = +[NSUUID UUID];
    uUIDString = [v7 UUIDString];
    [v6 setObject:uUIDString forKeyedSubscript:@"X-uuid"];

    if (type != 12)
    {
      goto LABEL_9;
    }

    if (v6)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (type == 12)
  {
LABEL_6:
    v6 = +[NSMutableDictionary dictionary];
LABEL_7:
    v9 = +[GEOPlatform sharedPlatform];
    osAndBuildVersion = [v9 osAndBuildVersion];
    [v6 setObject:osAndBuildVersion forKeyedSubscript:@"X-os-version"];

    goto LABEL_9;
  }

  v6 = 0;
LABEL_9:
  if ([v6 count])
  {
    v11 = [v6 copy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_urlForAnalyticSessionType:(int)type
{
  v4 = 0;
  if (([(GEOAPConfigProviding *)self->_configProvider simulateNoURLs]& 1) == 0)
  {
    switch(type)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
      case 15:
      case 16:
      case 17:
      case 19:
      case 20:
        v4 = GEOGetURL();
        break;
      case 9:
        v5 = GeoAnalyticsConfig_NavFullTraceEvent[1];
        v6 = GEOConfigGetString();
        v4 = [NSURL URLWithString:v6];

        break;
      default:
        break;
    }
  }

  return v4;
}

- (id)_urlForBatchId:(unint64_t)id
{
  v4 = GEOBatchAnalyticsSessionType();

  return [(GEOAPUploader *)self _urlForAnalyticSessionType:v4];
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  taskCopy = task;
  errorCopy = error;
  uploadQueue = self->_uploadQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100012AE0;
  block[3] = &unk_10003D188;
  v13 = errorCopy;
  v14 = taskCopy;
  selfCopy = self;
  v10 = taskCopy;
  v11 = errorCopy;
  dispatch_sync(uploadQueue, block);
}

- (id)fileURLForTaskDescription:(id)description
{
  v3 = [(GEOAPUploader *)self filePathForTaskDescription:description];
  v4 = [NSURL fileURLWithPath:v3];

  return v4;
}

- (id)filePathForTaskDescription:(id)description
{
  descriptionCopy = description;
  v4 = +[GEOAPUtils GEOAPCachePath];
  v5 = [v4 stringByAppendingPathComponent:descriptionCopy];

  return v5;
}

- (id)tempFilePathForTaskDescription
{
  v2 = +[GEOAPUtils GEOAPCachePath];
  v3 = objc_alloc_init(NSUUID);
  uUIDString = [v3 UUIDString];
  v5 = [v2 stringByAppendingPathComponent:uUIDString];

  return v5;
}

- (void)_submitBatchForUploadWithBatchId:(unint64_t)id
{
  v53 = [(GEOAPUploader *)self _urlForBatchId:?];
  holddown = self->_holddown;
  if (v53)
  {
    [(GEOAPUploadHolddown *)holddown urlConditionMet];
    v99[3] = 0;
    v100 = 0;
    v101 = &v100;
    v102 = 0x2020000000;
    v103 = 0;
    v99[0] = 0;
    v99[1] = v99;
    v99[2] = 0x2020000000;
    v95 = 0;
    v96 = &v95;
    v97 = 0x2020000000;
    v98 = 0;
    v93[0] = 0;
    v93[1] = v93;
    v93[2] = 0x2020000000;
    v94 = 0;
    *&v105 = 0;
    *(&v105 + 1) = &v105;
    v106 = 0x3032000000;
    v107 = sub_100014FFC;
    v108 = sub_10001500C;
    v109 = 0;
    v87 = 0;
    v88 = &v87;
    v89 = 0x3032000000;
    v90 = sub_100014FFC;
    v91 = sub_10001500C;
    v92 = 0;
    v83 = 0;
    v84 = &v83;
    v85 = 0x2020000000;
    v86 = 0;
    v6 = +[NSUUID UUID];
    uUIDString = [v6 UUIDString];

    v7 = GEOBatchUploadPolicyType();
    v8 = sub_100001E4C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = GEOBatchDescription();
      *buf = 138412546;
      *&buf[4] = uUIDString;
      *&buf[12] = 2112;
      *&buf[14] = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "(%@) upload requested for %@", buf, 0x16u);
    }

    v10 = +[GEOAPUploadPolicies sharedPolicies];
    v11 = [v10 uploadPolicyForUploadPolicyType:v7];

    [v11 maxDelay];
    if (v12 == 0.0)
    {
      v14 = 0.0;
    }

    else
    {
      [v11 maxDelay];
      v14 = arc4random_uniform(v13);
    }

    if (v7 >= 0xE)
    {
      v51 = [NSString stringWithFormat:@"(unknown: %i)", v7];
    }

    else
    {
      v51 = *(&off_10003D1E8 + v7);
    }

    uploadStages = [v11 uploadStages];
    firstObject = [uploadStages firstObject];

    urlSessionConfig = [firstObject urlSessionConfig];
    type = [urlSessionConfig type];

    if (type >= 7)
    {
      v50 = [NSString stringWithFormat:@"(unknown: %i)", type];
    }

    else
    {
      v50 = *(&off_10003D258 + type);
    }

    [firstObject ttl];
    v22 = v21;
    v23 = [GEOAPUploadFileWriter alloc];
    if (v23)
    {
      v104.receiver = v23;
      v104.super_class = GEOAPUploadFileWriter;
      v24 = [(GEOAPUploader *)&v104 init];
      v25 = v24;
      if (!v24)
      {
        goto LABEL_36;
      }

      LODWORD(v24[1]._sessionCache) = 0;
      v24->_uploadTimer = id;
      v26 = +[GEOAPUtils GEOAPCachePath];
      v27 = objc_alloc_init(NSUUID);
      uUIDString2 = [v27 UUIDString];
      v29 = [v26 stringByAppendingPathComponent:uUIDString2];
      holddownTimer = v25->_holddownTimer;
      v25->_holddownTimer = v29;

      v31 = open([(OS_dispatch_source *)v25->_holddownTimer fileSystemRepresentation], 1537, 416);
      LODWORD(v25->_uploadQueue) = v31;
      if (v31 < 0)
      {
        v33 = sub_100001E4C();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v34 = v25->_holddownTimer;
          v35 = __error();
          v36 = strerror(*v35);
          *v113 = 138412546;
          v114 = v34;
          v115 = 2080;
          v116 = v36;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "unable to create upload file '%@' (%s)", v113, 0x16u);
        }
      }

      else
      {
        v32 = GEOBatchAnalyticsSessionType();
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_100015E5C;
        v111 = &unk_10003CFB0;
        v112 = v25;
        [v112 _arpcDataForType:v32 dataBlock:buf];
        v33 = v112;
      }

      uploadQueue = v25->_uploadQueue;
      if (uploadQueue >= 0)
      {
        v38 = v25;

        if (![(GEOAPConfigProviding *)self->_configProvider simulateFileWriteError])
        {
          [(GEOAPUploadHolddown *)self->_holddown createFileConditionMet];
          dateNow = [(GEOAPTimeProviding *)self->_timeProvider dateNow];
          persistence = [(GEOAPUploader *)self persistence];
          v72[0] = _NSConcreteStackBlock;
          v72[1] = 3221225472;
          v72[2] = sub_100015014;
          v72[3] = &unk_10003D0E8;
          v49 = dateNow;
          v73 = v49;
          v76 = v99;
          v77 = &v95;
          v78 = &v100;
          v79 = &v105;
          v80 = &v87;
          v74 = v38;
          v75 = uUIDString;
          v81 = v93;
          idCopy = id;
          v54[0] = _NSConcreteStackBlock;
          v54[1] = 3221225472;
          v54[2] = sub_1000155C4;
          v54[3] = &unk_10003D110;
          v61 = v93;
          v48 = v75;
          v55 = v48;
          v62 = &v95;
          v63 = &v105;
          idCopy2 = id;
          v69 = v22;
          v56 = v50;
          v57 = v51;
          v64 = &v100;
          v65 = &v87;
          v71 = type;
          v38 = v74;
          v66 = &v83;
          v58 = v38;
          selfCopy = self;
          v70 = v14;
          v60 = v53;
          v67 = v99;
          v41 = [persistence selectLogMsgsForBatchUploadWithBatchId:id visitorBlock:v72 completionBlock:v54];

          if (v41)
          {
            [(GEOAPUploadHolddown *)self->_holddown createFileConditionMet];
            if ([(GEOAPUploader *)self _debugUploadCountersEnabled]&& v96[3] && *(v84 + 24) == 1)
            {
              v42 = +[GEOAPDebugPersistence sharedInstance];
              LODWORD(v47) = 1;
              [v42 addInflightUploadWithBatchUUID:v48 createTime:v88[5] sessionType:GEOBatchAnalyticsSessionType() eventCount:*(v96 + 6) uploadSize:*(v101 + 6) uploadPolicy:type stageNum:v47];
            }
          }

          else
          {
            v43 = sub_100001E4C();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
            {
              v44 = GEOBatchDescription();
              *buf = 138412546;
              *&buf[4] = v48;
              *&buf[12] = 2112;
              *&buf[14] = v44;
              _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "(%@) %@ could not start upload", buf, 0x16u);
            }

            [(GEOAPUploadHolddown *)self->_holddown createFileConditionUnmet];
          }

LABEL_40:
          _Block_object_dispose(&v83, 8);
          _Block_object_dispose(&v87, 8);

          _Block_object_dispose(&v105, 8);
          _Block_object_dispose(v93, 8);
          _Block_object_dispose(&v95, 8);
          _Block_object_dispose(v99, 8);
          _Block_object_dispose(&v100, 8);
          goto LABEL_41;
        }

LABEL_37:
        v45 = sub_100001E4C();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v46 = GEOBatchDescription();
          *buf = 138412546;
          *&buf[4] = uUIDString;
          *&buf[12] = 2112;
          *&buf[14] = v46;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "(%@) unable to create upload file writer for %@; unable to upload right now", buf, 0x16u);
        }

        [(GEOAPUploadHolddown *)self->_holddown createFileConditionUnmet];
        goto LABEL_40;
      }
    }

    else
    {
      v25 = 0;
    }

LABEL_36:
    v38 = 0;
    goto LABEL_37;
  }

  [(GEOAPUploadHolddown *)holddown urlConditionUnmet];
  v15 = sub_100001E4C();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = GEOBatchDescription();
    LODWORD(v105) = 138412290;
    *(&v105 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "No URL for %@; unable to upload right now", &v105, 0xCu);
  }

LABEL_41:
}

- (void)_submitBatchesForUpload
{
  v3 = sub_10000E510();
  if (!v3 || (v4 = v3[32], v3, (v4 & 1) == 0))
  {
    persistence = [(GEOAPUploader *)self persistence];
    pendingBatchesReadyForUpload = [persistence pendingBatchesReadyForUpload];

    v7 = [pendingBatchesReadyForUpload count];
    v8 = sub_100001E4C();
    v9 = v8;
    if (v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v20 = [pendingBatchesReadyForUpload count];
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%lu types are ready", buf, 0xCu);
      }

      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v9 = pendingBatchesReadyForUpload;
      v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v15;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v15 != v12)
            {
              objc_enumerationMutation(v9);
            }

            -[GEOAPUploader _submitBatchForUploadWithBatchId:](self, "_submitBatchForUploadWithBatchId:", [*(*(&v14 + 1) + 8 * i) unsignedLongLongValue]);
          }

          v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v11);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "nothing available", buf, 2u);
    }

    sub_1000162C8(self);
  }
}

- (void)_clearExpired
{
  persistence = [(GEOAPUploader *)self persistence];
  [persistence clearExpiredLogMsgsWithResultBlock:&stru_10003D0C0];
}

- (void)_clearHolddownTimer
{
  dispatch_source_set_timer(self->_holddownTimer, 0xFFFFFFFFFFFFFFFFLL, 0, 0);
  v2 = sub_100001E4C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "holddown timer was cleared", v3, 2u);
  }
}

- (void)_startHolddownTimerForDuration:(double)duration
{
  v4 = vcvtpd_s64_f64(duration);
  v5 = dispatch_time(0, 1000000000 * v4);
  dispatch_source_set_timer(self->_holddownTimer, v5, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  v6 = sub_100001E4C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = 134217984;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "holddown timer set for %lld seconds", &v7, 0xCu);
  }
}

- (void)_clearUploadTimer
{
  dispatch_source_set_timer(self->_uploadTimer, 0xFFFFFFFFFFFFFFFFLL, 0, 0);
  v2 = sub_100001E4C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "upload timer was cleared", v3, 2u);
  }
}

- (void)_startUploadTimerForDuration:(double)duration
{
  v4 = vcvtpd_s64_f64(duration);
  v5 = dispatch_time(0, 1000000000 * v4);
  dispatch_source_set_timer(self->_uploadTimer, v5, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  v6 = sub_100001E4C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = 134217984;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "upload timer set for %lld seconds", &v7, 0xCu);
  }
}

- (void)_setupBackgroundTask
{
  if (sub_100005AA4())
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2050000000;
    v3 = qword_1000530B0;
    v15 = qword_1000530B0;
    if (!qword_1000530B0)
    {
      *&buf = _NSConcreteStackBlock;
      *(&buf + 1) = 3221225472;
      v17 = sub_100005C68;
      v18 = &unk_10003CA28;
      v19 = &v12;
      sub_100005C68(&buf);
      v3 = v13[3];
    }

    v4 = v3;
    _Block_object_dispose(&v12, 8);
    sharedScheduler = [v4 sharedScheduler];
    v6 = geo_dispatch_queue_create_with_qos();
    v7 = sub_10000C6AC();
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100016A54;
    v10[3] = &unk_10003D080;
    v10[4] = self;
    v11 = v6;
    v8 = v6;
    if (([sharedScheduler registerForTaskWithIdentifier:@"com.apple.geo.analytics" usingQueue:v8 launchHandler:v10] & 1) == 0)
    {
      v9 = sub_100001E4C();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = @"com.apple.geo.analytics";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "BGSystemTaskScheduler failed to register '%@'", &buf, 0xCu);
      }
    }
  }
}

- (GEOAPUploader)init
{
  v10.receiver = self;
  v10.super_class = GEOAPUploader;
  v2 = [(GEOAPUploader *)&v10 init];
  if (v2)
  {
    v3 = geo_dispatch_queue_create_with_qos();
    uploadQueue = v2->_uploadQueue;
    v2->_uploadQueue = v3;

    v5 = v2->_uploadQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100017130;
    block[3] = &unk_10003D5B8;
    v6 = v2;
    v9 = v6;
    dispatch_async(v5, block);
    [(GEOAPUploader *)v6 _setupBackgroundTask];
  }

  return v2;
}

@end