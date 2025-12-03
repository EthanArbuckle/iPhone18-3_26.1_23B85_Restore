@interface HRTFEnrollmentService
- (BOOL)_checkForAssetExistence:(AssetDownloadOptions)existence assetURL:(id *)l error:(id *)error;
- (HRTFEnrollmentService)initWithConnection:(id)connection;
- (id)_assetPath;
- (id)getAssetDownloadOptions;
- (id)requestedVersion;
- (void)cancelAssetDownloadSession;
- (void)checkForAssetExistence:(unsigned int)existence withCompletion:(id)completion;
- (void)dealloc;
- (void)downloadAsset:(unint64_t)asset withCompletion:(id)completion;
- (void)downloadAssetV2:(unint64_t)v2 withCompletion:(id)completion;
- (void)invalidate;
- (void)processCaptureData:(id)data withFaceData:(id)faceData;
- (void)requestDataWithOffset:(unint64_t)offset length:(unint64_t)length withCompletion:(id)completion;
- (void)startSessionWithTerminationCallback:(id)callback;
- (void)startSessionWithTerminationCallback:(id)callback withCallback:(id)withCallback;
- (void)stopSession:(id)session;
- (void)updateWithData:(id)data error:(id *)error;
- (void)xpcConnectionUpdateResultSize:(unint64_t)size;
- (void)xpcConnectionUpdateState:(unint64_t)state withProgress:(float)progress facePoseStatus:(id)status earPoseStatus:(id)poseStatus errorStatus:(id)errorStatus;
@end

@implementation HRTFEnrollmentService

- (HRTFEnrollmentService)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v15.receiver = self;
  v15.super_class = HRTFEnrollmentService;
  v6 = [(HRTFEnrollmentService *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
    v8 = v7;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000043D8;
    v13[3] = &unk_1000103F8;
    v14 = v8;
    [(NSXPCConnection *)v7->_connection setInvalidationHandler:v13];
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.HRTFEnrollmentService", v9);
    queue = v8->_queue;
    v8->_queue = v10;
  }

  return v7;
}

- (void)dealloc
{
  session = self->_session;
  if (session)
  {
    self->_session = 0;
  }

  v4.receiver = self;
  v4.super_class = HRTFEnrollmentService;
  [(HRTFEnrollmentService *)&v4 dealloc];
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000044BC;
  block[3] = &unk_1000103F8;
  block[4] = self;
  selfCopy = self;
  dispatch_async(queue, block);
}

- (id)requestedVersion
{
  requestedVersion = self->_requestedVersion;
  if (!requestedVersion)
  {
    v4 = [[_Version alloc] initWithString:@"1.0"];
    v5 = self->_requestedVersion;
    self->_requestedVersion = v4;

    requestedVersion = self->_requestedVersion;
  }

  return requestedVersion;
}

- (BOOL)_checkForAssetExistence:(AssetDownloadOptions)existence assetURL:(id *)l error:(id *)error
{
  existenceCopy = existence;
  group = dispatch_group_create();
  v103 = 0;
  v104 = &v103;
  v105 = 0x2020000000;
  v106 = 3;
  lCopy = l;
  v84 = [[MAAssetQuery alloc] initWithType:@"com.apple.MobileAsset.HRTFModels"];
  [v84 returnTypes:2];
  while (1)
  {
    [v84 queryMetaDataSync];
    if (![v84 resultCode])
    {
      results = [v84 results];
      v10 = results == 0;

      if (v10)
      {
        if (qword_1000164B0 != -1)
        {
          sub_1000086E8();
        }

        v44 = qword_1000164A8;
        if (os_log_type_enabled(qword_1000164A8, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "No asset found in the catalog", buf, 2u);
        }

        v45 = [NSError alloc];
        v43 = [v45 initWithDomain:kHRTFEnrollmentErrorDomain code:2 userInfo:0];
        v6 = v43;
        if (!error)
        {
          goto LABEL_59;
        }

LABEL_50:
        v46 = v43;
LABEL_51:
        v47 = 0;
        *error = v6;
        goto LABEL_70;
      }

      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      results2 = [v84 results];
      v12 = [results2 countByEnumeratingWithState:&v96 objects:v111 count:16];
      if (v12)
      {
        v88 = 0;
        obj = results2;
        v86 = 0;
        v13 = *v97;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v97 != v13)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v96 + 1) + 8 * i);
            attributes = [v15 attributes];
            v17 = [_Version alloc];
            v18 = [attributes objectForKeyedSubscript:@"ContentVersion"];
            v19 = [(_Version *)v17 initWithString:v18];

            v20 = [_Version alloc];
            v21 = [attributes objectForKeyedSubscript:@"CompatibleVersion"];
            v22 = [(_Version *)v20 initWithString:v21];

            requestedVersion = [(HRTFEnrollmentService *)self requestedVersion];
            v24 = [(_Version *)v22 compareTo:requestedVersion]== 1;

            if (!v24 && (!v88 || [(_Version *)v19 compareTo:v88]== 1))
            {
              v25 = v15;

              v26 = v19;
              v88 = v26;
              v86 = v25;
            }
          }

          v12 = [obj countByEnumeratingWithState:&v96 objects:v111 count:16];
        }

        while (v12);

        if (v86)
        {
          if (qword_1000164B0 != -1)
          {
            sub_1000086E8();
          }

          v27 = qword_1000164A8;
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            v28 = [(_Version *)v88 description];
            v29 = v28;
            uTF8String = [v28 UTF8String];
            *buf = 136315138;
            v117 = uTF8String;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "selecting asset version: %s", buf, 0xCu);
          }

          if ([v86 state] == 1 || objc_msgSend(v86, "state") == 4)
          {
            if ((existenceCopy & 1) == 0)
            {
              if (qword_1000164B0 != -1)
              {
                sub_1000086E8();
              }

              v31 = qword_1000164A8;
              if (os_log_type_enabled(qword_1000164A8, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Asset not downloaded, user suppressed", buf, 2u);
              }

              v32 = [NSError alloc];
              getLocalUrl = [v32 initWithDomain:kHRTFEnrollmentErrorDomain code:3 userInfo:0];
              goto LABEL_66;
            }

            dispatch_group_enter(group);
            v64 = objc_opt_new();
            [v64 setAllowsCellularAccess:1];
            [v64 setDiscretionary:1];
            v104[3] = 3;
            queue = self->_queue;
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_100005338;
            block[3] = &unk_100010448;
            block[4] = self;
            v6 = v86;
            v95 = v6;
            dispatch_sync(queue, block);
            v93[0] = _NSConcreteStackBlock;
            v93[1] = 3221225472;
            v93[2] = sub_100005344;
            v93[3] = &unk_100010470;
            v93[4] = self;
            [v6 attachProgressCallBack:v93];
            v90[0] = _NSConcreteStackBlock;
            v90[1] = 3221225472;
            v90[2] = sub_100005424;
            v90[3] = &unk_100010420;
            v92 = &v103;
            v66 = group;
            v91 = v66;
            [v6 startDownload:v64 then:v90];
            dispatch_group_wait(v66, 0xFFFFFFFFFFFFFFFFLL);
            v67 = self->_queue;
            v89[0] = _NSConcreteStackBlock;
            v89[1] = 3221225472;
            v89[2] = sub_100005438;
            v89[3] = &unk_1000103F8;
            v89[4] = self;
            dispatch_sync(v67, v89);
            if (v104[3])
            {
              if (qword_1000164B0 != -1)
              {
                sub_1000086E8();
              }

              v68 = qword_1000164A8;
              if (os_log_type_enabled(qword_1000164A8, OS_LOG_TYPE_ERROR))
              {
                v69 = v104[3];
                *buf = 134217984;
                v117 = v69;
                _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "asset download failed: %lu", buf, 0xCu);
              }

              v70 = [NSError alloc];
              v71 = kHRTFEnrollmentErrorDomain;
              v107 = @"Code";
              v72 = [NSNumber numberWithInteger:v104[3]];
              v108 = v72;
              v73 = [NSDictionary dictionaryWithObjects:&v108 forKeys:&v107 count:1];
              v74 = [v70 initWithDomain:v71 code:3 userInfo:v73];

              if (error)
              {
                v75 = v74;
                *error = v74;
              }

              v47 = 0;
              goto LABEL_69;
            }
          }

          getLocalUrl = [v86 getLocalUrl];
          if (qword_1000164B0 != -1)
          {
            sub_1000086E8();
          }

          v76 = qword_1000164A8;
          if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
          {
            v77 = [getLocalUrl description];
            v78 = v77;
            uTF8String2 = [v77 UTF8String];
            *buf = 136315138;
            v117 = uTF8String2;
            _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_INFO, "asset is at %s", buf, 0xCu);
          }

          v47 = 1;
          error = lCopy;
          if (!lCopy)
          {
            goto LABEL_68;
          }

          goto LABEL_67;
        }
      }

      else
      {

        v88 = 0;
      }

      if (qword_1000164B0 != -1)
      {
        sub_1000086E8();
      }

      v56 = qword_1000164A8;
      if (os_log_type_enabled(qword_1000164A8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "No compatible version found in the catalog", buf, 2u);
      }

      v57 = [NSError alloc];
      v58 = kHRTFEnrollmentErrorDomain;
      v109 = @"RequestedVersion";
      requestedVersion2 = [(HRTFEnrollmentService *)self requestedVersion];
      v60 = [requestedVersion2 description];
      v110 = v60;
      v61 = [NSDictionary dictionaryWithObjects:&v110 forKeys:&v109 count:1];
      getLocalUrl = [v57 initWithDomain:v58 code:4 userInfo:v61];

      v86 = 0;
LABEL_66:
      v47 = 0;
      if (!error)
      {
LABEL_68:

        v6 = v86;
LABEL_69:

        goto LABEL_70;
      }

LABEL_67:
      v62 = getLocalUrl;
      *error = getLocalUrl;
      goto LABEL_68;
    }

    if ([v84 resultCode] != 2)
    {
      if (qword_1000164B0 != -1)
      {
        sub_1000086E8();
      }

      v34 = qword_1000164A8;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        resultCode = [v84 resultCode];
        *buf = 134217984;
        v117 = resultCode;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Query failed: %lu", buf, 0xCu);
      }

      v36 = [NSError alloc];
      v37 = kHRTFEnrollmentErrorDomain;
      v112 = @"Code";
      v38 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v84 resultCode]);
      v113 = v38;
      v39 = [NSDictionary dictionaryWithObjects:&v113 forKeys:&v112 count:1];
      v6 = [v36 initWithDomain:v37 code:2 userInfo:v39];

      if (!error)
      {
        goto LABEL_59;
      }

      v40 = v6;
      goto LABEL_51;
    }

    if ((existenceCopy & 1) == 0)
    {
      break;
    }

    dispatch_group_enter(group);
    v6 = objc_opt_new();
    [v6 setAllowsCellularAccess:1];
    [v6 setDiscretionary:1];
    v104[3] = 3;
    v100[0] = _NSConcreteStackBlock;
    v100[1] = 3221225472;
    v100[2] = sub_100005324;
    v100[3] = &unk_100010420;
    v102 = &v103;
    v7 = group;
    v101 = v7;
    [MAAsset startCatalogDownload:@"com.apple.MobileAsset.HRTFModels" options:v6 then:v100];
    v8 = dispatch_time(0, 1000000000);
    if (!dispatch_group_wait(v7, v8) && v104[3])
    {
      if (qword_1000164B0 != -1)
      {
        sub_1000086E8();
      }

      v48 = qword_1000164A8;
      if (os_log_type_enabled(qword_1000164A8, OS_LOG_TYPE_ERROR))
      {
        v49 = v104[3];
        *buf = 134217984;
        v117 = v49;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "Catalog download failed: %lu", buf, 0xCu);
      }

      v50 = [NSError alloc];
      v51 = kHRTFEnrollmentErrorDomain;
      v114 = @"Code";
      v52 = [NSNumber numberWithInteger:v104[3]];
      v115 = v52;
      v53 = [NSDictionary dictionaryWithObjects:&v115 forKeys:&v114 count:1];
      v54 = [v50 initWithDomain:v51 code:3 userInfo:v53];

      if (error)
      {
        v55 = v54;
        *error = v54;
      }

      goto LABEL_59;
    }
  }

  if (qword_1000164B0 != -1)
  {
    sub_1000086E8();
  }

  v41 = qword_1000164A8;
  if (os_log_type_enabled(qword_1000164A8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "Asset catalog not downloaded, suppressed by user", buf, 2u);
  }

  v42 = [NSError alloc];
  v43 = [v42 initWithDomain:kHRTFEnrollmentErrorDomain code:3 userInfo:0];
  v6 = v43;
  if (error)
  {
    goto LABEL_50;
  }

LABEL_59:
  v47 = 0;
LABEL_70:

  _Block_object_dispose(&v103, 8);
  return v47;
}

- (void)checkForAssetExistence:(unsigned int)existence withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = dispatch_get_global_queue(21, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005508;
  block[3] = &unk_100010498;
  existenceCopy = existence;
  block[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(v7, block);
}

- (void)cancelAssetDownloadSession
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_100005678;
  v9 = sub_100005688;
  v10 = 0;
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100005690;
  v4[3] = &unk_1000104C0;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync(queue, v4);
  v3 = v6[5];
  if (v3)
  {
    [v3 cancelDownload:&stru_100010500];
  }

  _Block_object_dispose(&v5, 8);
}

- (id)_assetPath
{
  v9 = 0;
  v10 = 0;
  v2 = [(HRTFEnrollmentService *)self _checkForAssetExistence:0 assetURL:&v10 error:&v9];
  v3 = v10;
  v4 = v9;
  if (v2)
  {
    v5 = v3;
  }

  else
  {
    if (qword_1000164B0 != -1)
    {
      sub_1000086E8();
    }

    v6 = qword_1000164A8;
    if (os_log_type_enabled(qword_1000164A8, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "ML asset does not exist", v8, 2u);
    }

    v5 = 0;
  }

  return v5;
}

- (void)xpcConnectionUpdateState:(unint64_t)state withProgress:(float)progress facePoseStatus:(id)status earPoseStatus:(id)poseStatus errorStatus:(id)errorStatus
{
  statusCopy = status;
  poseStatusCopy = poseStatus;
  errorStatusCopy = errorStatus;
  queue = self->_queue;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10000589C;
  v20[3] = &unk_100010528;
  v23 = errorStatusCopy;
  stateCopy = state;
  progressCopy = progress;
  v20[4] = self;
  v21 = statusCopy;
  v22 = poseStatusCopy;
  v16 = errorStatusCopy;
  v17 = poseStatusCopy;
  v18 = statusCopy;
  selfCopy = self;
  dispatch_async(queue, v20);
}

- (void)xpcConnectionUpdateResultSize:(unint64_t)size
{
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000059B0;
  v5[3] = &unk_100010550;
  v5[4] = self;
  v5[5] = size;
  selfCopy = self;
  dispatch_async(queue, v5);
}

- (void)updateWithData:(id)data error:(id *)error
{
  dataCopy = data;
  v7 = dataCopy;
  if (*error)
  {
    [(HRTFEnrollmentService *)self xpcConnectionUpdateState:5 withProgress:0 facePoseStatus:0 earPoseStatus:0.0 errorStatus:?];
    goto LABEL_53;
  }

  step = [dataCopy step];
  v9 = step;
  v10 = 1.0;
  if (step > 1)
  {
    if (step != 2)
    {
      if (step == 3)
      {
        v14 = 0;
        v15 = 4;
        goto LABEL_19;
      }

      goto LABEL_10;
    }

    v14 = 0;
    v15 = 3;
  }

  else
  {
    if (step)
    {
      if (step == 1)
      {
        captureUpdateData = [v7 captureUpdateData];
        earCaptureUpdateData = [captureUpdateData earCaptureUpdateData];
        [earCaptureUpdateData progress];
        v10 = v13;

        v94 = 0;
        v95 = 2;
        goto LABEL_21;
      }

LABEL_10:
      v14 = 0;
      v15 = 6;
      goto LABEL_19;
    }

    captureUpdateData2 = [v7 captureUpdateData];
    faceCaptureUpdateData = [captureUpdateData2 faceCaptureUpdateData];
    [faceCaptureUpdateData progress];
    v10 = v18;

    captureUpdateData3 = [v7 captureUpdateData];
    faceCaptureUpdateData2 = [captureUpdateData3 faceCaptureUpdateData];
    poseStatusList = [faceCaptureUpdateData2 poseStatusList];

    captureUpdateData4 = [v7 captureUpdateData];
    faceCaptureUpdateData3 = [captureUpdateData4 faceCaptureUpdateData];
    trackedData = [faceCaptureUpdateData3 trackedData];

    if (trackedData)
    {
      captureUpdateData5 = [v7 captureUpdateData];
      faceCaptureUpdateData4 = [captureUpdateData5 faceCaptureUpdateData];
      trackedData2 = [faceCaptureUpdateData4 trackedData];
      yawAngle = [trackedData2 yawAngle];
      [yawAngle doubleValue];
      v30 = v29;

      captureUpdateData6 = [v7 captureUpdateData];
      faceCaptureUpdateData5 = [captureUpdateData6 faceCaptureUpdateData];
      trackedData3 = [faceCaptureUpdateData5 trackedData];
      pitchAngle = [trackedData3 pitchAngle];
      [pitchAngle doubleValue];
      v36 = v35;
    }

    else
    {
      v36 = -100.0;
      v30 = -100.0;
    }

    if (_os_feature_enabled_impl())
    {
      v37 = [[NSDictionary alloc] initWithObjects:&__NSArray0__struct forKeys:&__NSArray0__struct];
    }

    else
    {
      v37 = [poseStatusList objectAtIndexedSubscript:1];
    }

    v38 = v37;
    v39 = [HRTFEnrollmentPoseStatus alloc];
    v40 = [poseStatusList objectAtIndexedSubscript:0];
    v14 = [(HRTFEnrollmentPoseStatus *)v39 initWithCurrentYawPose:v40 pitchPose:v38 yawAngle:v30 pitchAngle:v36 faceBoundingBox:self->_faceBoundingBox.origin.x, self->_faceBoundingBox.origin.y, self->_faceBoundingBox.size.width, self->_faceBoundingBox.size.height];

    v15 = 1;
  }

LABEL_19:
  if (_os_feature_enabled_impl())
  {
    v94 = v14;
    v95 = v15;
LABEL_21:
    captureUpdateData7 = [v7 captureUpdateData];
    earCaptureUpdateData2 = [captureUpdateData7 earCaptureUpdateData];
    leftEarStatusList = [earCaptureUpdateData2 leftEarStatusList];

    captureUpdateData8 = [v7 captureUpdateData];
    earCaptureUpdateData3 = [captureUpdateData8 earCaptureUpdateData];
    rightEarStatusList = [earCaptureUpdateData3 rightEarStatusList];

    v48 = [[NSDictionary alloc] initWithObjects:&__NSArray0__struct forKeys:&__NSArray0__struct];
    captureUpdateData9 = [v7 captureUpdateData];
    earCaptureUpdateData4 = [captureUpdateData9 earCaptureUpdateData];
    trackedData4 = [earCaptureUpdateData4 trackedData];

    if (!trackedData4)
    {
      v84 = 0;
      x = CGRectZero.origin.x;
      y = CGRectZero.origin.y;
      width = CGRectZero.size.width;
      height = CGRectZero.size.height;
      error = 1;
      v61 = -100.0;
      v67 = -100.0;
      v15 = v95;
      goto LABEL_37;
    }

    captureUpdateData10 = [v7 captureUpdateData];
    earCaptureUpdateData5 = [captureUpdateData10 earCaptureUpdateData];
    trackedData5 = [earCaptureUpdateData5 trackedData];
    detectionData = [trackedData5 detectionData];
    earSide = [detectionData earSide];

    captureUpdateData11 = [v7 captureUpdateData];
    earCaptureUpdateData6 = [captureUpdateData11 earCaptureUpdateData];
    trackedData6 = [earCaptureUpdateData6 trackedData];
    detectionData2 = [trackedData6 detectionData];
    [detectionData2 yawAngle];
    v61 = v60;

    captureUpdateData12 = [v7 captureUpdateData];
    earCaptureUpdateData7 = [captureUpdateData12 earCaptureUpdateData];
    trackedData7 = [earCaptureUpdateData7 trackedData];
    detectionData3 = [trackedData7 detectionData];
    [detectionData3 pitchAngle];
    v67 = v66;

    captureUpdateData13 = [v7 captureUpdateData];
    earCaptureUpdateData8 = [captureUpdateData13 earCaptureUpdateData];
    trackedData8 = [earCaptureUpdateData8 trackedData];
    detectionData4 = [trackedData8 detectionData];
    [detectionData4 boundingBox];
    x = v72;
    y = v74;
    width = v76;
    height = v78;

    captureUpdateData14 = [v7 captureUpdateData];
    earCaptureUpdateData9 = [captureUpdateData14 earCaptureUpdateData];
    trackedData9 = [earCaptureUpdateData9 trackedData];
    error = [trackedData9 error];

    if (error > 2)
    {
      v15 = v95;
      if (error != 3)
      {
        v84 = earSide;
        if (error == 4)
        {
          goto LABEL_37;
        }

        if (error == 8)
        {
          error = 0;
          goto LABEL_37;
        }

        goto LABEL_35;
      }
    }

    else
    {
      v15 = v95;
      if (error)
      {
        v84 = earSide;
        if (error == 1)
        {
          error = 2;
          goto LABEL_37;
        }

        if (error == 2)
        {
          error = 5;
LABEL_37:
          height = [[HRTFEnrollmentEarPoseStatus alloc] initWithLeftYawPose:leftEarStatusList rightYawPose:rightEarStatusList leftpitchPose:v48 rightpitchPose:v48 earSide:v84 yawAngle:error pitchAngle:v61 earBoundingBox:v67 earCaptureStatus:x, y, width, height];

          v14 = v94;
          goto LABEL_38;
        }

LABEL_35:
        error = 7;
        goto LABEL_37;
      }

      error = 1;
    }

    v84 = earSide;
    goto LABEL_37;
  }

  height = 0;
LABEL_38:
  if (v9 == 2)
  {
    v86 = 1.0;
  }

  else
  {
    v86 = v10;
  }

  if (v9 == 3)
  {
    postProcessUpdateData = [v7 postProcessUpdateData];
    result = [postProcessUpdateData result];

    if (!result)
    {
      if (qword_1000164B0 != -1)
      {
        sub_100008710();
      }

      v89 = qword_1000164A8;
      if (os_log_type_enabled(qword_1000164A8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_ERROR, "failed to retreive audio profile.", buf, 2u);
      }
    }

    resultData = self->_resultData;
    self->_resultData = result;

    [(HRTFEnrollmentService *)self xpcConnectionUpdateResultSize:[(NSData *)self->_resultData length]];
    *&v91 = v10;
    [(HRTFEnrollmentService *)self xpcConnectionUpdateState:v15 withProgress:0 facePoseStatus:0 earPoseStatus:0 errorStatus:v91];
  }

  else
  {
    *&v41 = v86;
    [(HRTFEnrollmentService *)self xpcConnectionUpdateState:v15 withProgress:v14 facePoseStatus:height earPoseStatus:0 errorStatus:v41];
    if (qword_1000164B0 != -1)
    {
      sub_100008710();
    }

    v92 = qword_1000164A8;
    if (os_log_type_enabled(qword_1000164A8, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      v97 = v15;
      v98 = 2048;
      v99 = v86;
      _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_INFO, "algorithm update, state: %lu, progress: %.2f", buf, 0x16u);
    }
  }

LABEL_53:
}

- (void)startSessionWithTerminationCallback:(id)callback
{
  callbackCopy = callback;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000062E4;
  v7[3] = &unk_100010578;
  v7[4] = self;
  v8 = callbackCopy;
  v6 = callbackCopy;
  objc_copyWeak(&v9, &location);
  dispatch_sync(queue, v7);
  objc_destroyWeak(&v9);

  objc_destroyWeak(&location);
}

- (void)startSessionWithTerminationCallback:(id)callback withCallback:(id)withCallback
{
  objc_storeStrong(&self->_downloadedModelPath, callback);

  [(HRTFEnrollmentService *)self startSessionWithTerminationCallback:&stru_100010598];
}

- (void)stopSession:(id)session
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000067E4;
  block[3] = &unk_1000103F8;
  block[4] = self;
  sessionCopy = session;
  dispatch_sync(queue, block);
  sessionCopy[2](sessionCopy);
}

- (void)processCaptureData:(id)data withFaceData:(id)faceData
{
  dataCopy = data;
  faceDataCopy = faceData;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006994;
  block[3] = &unk_1000105C0;
  block[4] = self;
  v13 = dataCopy;
  v14 = faceDataCopy;
  v9 = faceDataCopy;
  v10 = dataCopy;
  selfCopy = self;
  dispatch_sync(queue, block);
}

- (void)requestDataWithOffset:(unint64_t)offset length:(unint64_t)length withCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100006D60;
  v11[3] = &unk_1000105E8;
  lengthCopy = length;
  offsetCopy = offset;
  v11[4] = self;
  v12 = completionCopy;
  v10 = completionCopy;
  dispatch_sync(queue, v11);
}

- (void)downloadAssetV2:(unint64_t)v2 withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = objc_retainBlock(completionCopy);
  downloadAssetsCallbackV2 = self->_downloadAssetsCallbackV2;
  self->_downloadAssetsCallbackV2 = v7;

  v68 = 0;
  v69 = &v68;
  v70 = 0x2020000000;
  v71 = 0;
  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = sub_100005678;
  v66 = sub_100005688;
  v67 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = sub_100005678;
  v60 = sub_100005688;
  v61 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  obj = 0;
  v9 = [VGHRTFAssetManager getAssetWithError:&obj];
  objc_storeStrong(&v67, obj);
  if (qword_1000164B0 != -1)
  {
    sub_1000086E8();
  }

  v10 = qword_1000164A8;
  if (os_log_type_enabled(qword_1000164A8, OS_LOG_TYPE_INFO))
  {
    v11 = v63[5];
    *buf = 138412290;
    *&buf[4] = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "getAssetWithError returned with %@", buf, 0xCu);
  }

  if (!v9)
  {
    if (qword_1000164B0 != -1)
    {
      sub_1000086E8();
    }

    v23 = qword_1000164A8;
    if (!os_log_type_enabled(qword_1000164A8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 0;
    v19 = "No asset provided for downloading";
    v20 = v23;
    v21 = OS_LOG_TYPE_ERROR;
    v22 = 2;
    goto LABEL_15;
  }

  [v9 refreshState];
  if ([v9 wasLocal])
  {
    *(v69 + 24) = 1;
    getLocalFileUrl = [v9 getLocalFileUrl];
    path = [getLocalFileUrl path];
    v14 = v57[5];
    v57[5] = path;

    if (qword_1000164B0 != -1)
    {
      sub_1000086E8();
    }

    v15 = qword_1000164A8;
    if (!os_log_type_enabled(qword_1000164A8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_16;
    }

    v16 = *(v69 + 24);
    v17 = v57[5];
    v18 = v63[5];
    *buf = 67109634;
    *&buf[4] = v16;
    *&buf[8] = 2112;
    *&buf[10] = v17;
    *&buf[18] = 2112;
    *&buf[20] = v18;
    v19 = "Asset was present locally isDownloaded :%d, path %@, error %@";
    v20 = v15;
    v21 = OS_LOG_TYPE_INFO;
    v22 = 28;
LABEL_15:
    _os_log_impl(&_mh_execute_header, v20, v21, v19, buf, v22);
LABEL_16:
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, *(v69 + 24), v57[5], v63[5], v53[3]);
    }

    goto LABEL_32;
  }

  getAssetDownloadOptions = [(HRTFEnrollmentService *)self getAssetDownloadOptions];
  if (qword_1000164B0 != -1)
  {
    sub_1000086E8();
  }

  v25 = qword_1000164A8;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    assetType = [v9 assetType];
    assetId = [v9 assetId];
    *buf = 138412546;
    *&buf[4] = assetType;
    *&buf[12] = 2112;
    *&buf[14] = assetId;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Downloading HRTF asset with type: %@ and id: %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  *&buf[24] = 3;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 1;
  v28 = dispatch_group_create();
  v29 = v28;
  if (v2 == 1)
  {
    dispatch_group_enter(v28);
  }

  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_1000074B0;
  v35[3] = &unk_100010610;
  v40 = buf;
  v41 = &v52;
  v42 = &v62;
  v36 = v9;
  v30 = completionCopy;
  v43 = &v68;
  v44 = &v56;
  v39 = v30;
  selfCopy = self;
  v45 = &v47;
  v2Copy = v2;
  v31 = v29;
  v38 = v31;
  [v36 startDownload:getAssetDownloadOptions completionWithError:v35];
  if (v2 == 1)
  {
    v32 = dispatch_time(0, 5000000);
    dispatch_group_wait(v31, v32);
    if (*(v48 + 24) == 1)
    {
      if (qword_1000164B0 != -1)
      {
        sub_1000086E8();
      }

      v33 = qword_1000164A8;
      if (os_log_type_enabled(qword_1000164A8, OS_LOG_TYPE_INFO))
      {
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "downloadAsset succeeded timed out for HRTFAssetDownloadFlagsLocalDownloadState", v34, 2u);
      }

      (*(v30 + 2))(v30, *(v69 + 24), v57[5], v63[5], v53[3]);
    }
  }

  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(buf, 8);

LABEL_32:
  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v56, 8);

  _Block_object_dispose(&v62, 8);
  _Block_object_dispose(&v68, 8);
}

- (void)downloadAsset:(unint64_t)asset withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = objc_retainBlock(completionCopy);
  downloadAssetsCallback = self->_downloadAssetsCallback;
  self->_downloadAssetsCallback = v7;

  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v66 = 0;
  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = sub_100005678;
  v61 = sub_100005688;
  v62 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = sub_100005678;
  v55 = sub_100005688;
  v56 = 0;
  obj = 0;
  v9 = [VGHRTFAssetManager getAssetWithError:&obj];
  objc_storeStrong(&v62, obj);
  if (qword_1000164B0 != -1)
  {
    sub_1000086E8();
  }

  v10 = qword_1000164A8;
  if (os_log_type_enabled(qword_1000164A8, OS_LOG_TYPE_INFO))
  {
    v11 = v58[5];
    *buf = 138412290;
    *&buf[4] = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "getAssetWithError returned with %@", buf, 0xCu);
  }

  if (!v9)
  {
    if (qword_1000164B0 != -1)
    {
      sub_1000086E8();
    }

    v23 = qword_1000164A8;
    if (!os_log_type_enabled(qword_1000164A8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 0;
    v19 = "No asset provided for downloading";
    v20 = v23;
    v21 = OS_LOG_TYPE_ERROR;
    v22 = 2;
    goto LABEL_15;
  }

  [v9 refreshState];
  if ([v9 wasLocal])
  {
    *(v64 + 24) = 1;
    getLocalFileUrl = [v9 getLocalFileUrl];
    path = [getLocalFileUrl path];
    v14 = v52[5];
    v52[5] = path;

    if (qword_1000164B0 != -1)
    {
      sub_1000086E8();
    }

    v15 = qword_1000164A8;
    if (!os_log_type_enabled(qword_1000164A8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_16;
    }

    v16 = *(v64 + 24);
    v17 = v52[5];
    v18 = v58[5];
    *buf = 67109634;
    *&buf[4] = v16;
    *&buf[8] = 2112;
    *&buf[10] = v17;
    *&buf[18] = 2112;
    *&buf[20] = v18;
    v19 = "Asset was present locally isDownloaded :%d, path %@, error %@";
    v20 = v15;
    v21 = OS_LOG_TYPE_INFO;
    v22 = 28;
LABEL_15:
    _os_log_impl(&_mh_execute_header, v20, v21, v19, buf, v22);
LABEL_16:
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, *(v64 + 24), v52[5], v58[5]);
    }

    goto LABEL_32;
  }

  getAssetDownloadOptions = [(HRTFEnrollmentService *)self getAssetDownloadOptions];
  if (qword_1000164B0 != -1)
  {
    sub_1000086E8();
  }

  v25 = qword_1000164A8;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    assetType = [v9 assetType];
    assetId = [v9 assetId];
    *buf = 138412546;
    *&buf[4] = assetType;
    *&buf[12] = 2112;
    *&buf[14] = assetId;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Downloading HRTF asset with type: %@ and id: %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  *&buf[24] = 3;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 1;
  v28 = dispatch_group_create();
  v29 = v28;
  if (asset == 1)
  {
    dispatch_group_enter(v28);
  }

  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_100007FB4;
  v35[3] = &unk_100010638;
  v40 = buf;
  v41 = &v57;
  v36 = v9;
  v30 = completionCopy;
  v42 = &v63;
  v43 = &v51;
  v39 = v30;
  selfCopy = self;
  v44 = &v46;
  assetCopy = asset;
  v31 = v29;
  v38 = v31;
  [v36 startDownload:getAssetDownloadOptions completionWithError:v35];
  if (asset == 1)
  {
    v32 = dispatch_time(0, 5000000);
    dispatch_group_wait(v31, v32);
    if (*(v47 + 24) == 1)
    {
      if (qword_1000164B0 != -1)
      {
        sub_1000086E8();
      }

      v33 = qword_1000164A8;
      if (os_log_type_enabled(qword_1000164A8, OS_LOG_TYPE_INFO))
      {
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "downloadAsset succeeded timed out for HRTFAssetDownloadFlagsLocalDownloadState", v34, 2u);
      }

      (*(v30 + 2))(v30, *(v64 + 24), v52[5], v58[5]);
    }
  }

  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(buf, 8);

LABEL_32:
  _Block_object_dispose(&v51, 8);

  _Block_object_dispose(&v57, 8);
  _Block_object_dispose(&v63, 8);
}

- (id)getAssetDownloadOptions
{
  v2 = objc_opt_new();
  [v2 setDiscretionary:0];
  [v2 setRequiresPowerPluggedIn:0];
  [v2 setAllowsCellularAccess:1];

  return v2;
}

@end