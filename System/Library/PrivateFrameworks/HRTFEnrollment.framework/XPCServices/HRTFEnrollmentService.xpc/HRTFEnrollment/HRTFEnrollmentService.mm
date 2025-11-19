@interface HRTFEnrollmentService
- (BOOL)_checkForAssetExistence:(AssetDownloadOptions)a3 assetURL:(id *)a4 error:(id *)a5;
- (HRTFEnrollmentService)initWithConnection:(id)a3;
- (id)_assetPath;
- (id)getAssetDownloadOptions;
- (id)requestedVersion;
- (void)cancelAssetDownloadSession;
- (void)checkForAssetExistence:(unsigned int)a3 withCompletion:(id)a4;
- (void)dealloc;
- (void)downloadAsset:(unint64_t)a3 withCompletion:(id)a4;
- (void)downloadAssetV2:(unint64_t)a3 withCompletion:(id)a4;
- (void)invalidate;
- (void)processCaptureData:(id)a3 withFaceData:(id)a4;
- (void)requestDataWithOffset:(unint64_t)a3 length:(unint64_t)a4 withCompletion:(id)a5;
- (void)startSessionWithTerminationCallback:(id)a3;
- (void)startSessionWithTerminationCallback:(id)a3 withCallback:(id)a4;
- (void)stopSession:(id)a3;
- (void)updateWithData:(id)a3 error:(id *)a4;
- (void)xpcConnectionUpdateResultSize:(unint64_t)a3;
- (void)xpcConnectionUpdateState:(unint64_t)a3 withProgress:(float)a4 facePoseStatus:(id)a5 earPoseStatus:(id)a6 errorStatus:(id)a7;
@end

@implementation HRTFEnrollmentService

- (HRTFEnrollmentService)initWithConnection:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = HRTFEnrollmentService;
  v6 = [(HRTFEnrollmentService *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
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
  v3 = self;
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

- (BOOL)_checkForAssetExistence:(AssetDownloadOptions)a3 assetURL:(id *)a4 error:(id *)a5
{
  v82 = a3;
  group = dispatch_group_create();
  v103 = 0;
  v104 = &v103;
  v105 = 0x2020000000;
  v106 = 3;
  v80 = a4;
  v84 = [[MAAssetQuery alloc] initWithType:@"com.apple.MobileAsset.HRTFModels"];
  [v84 returnTypes:2];
  while (1)
  {
    [v84 queryMetaDataSync];
    if (![v84 resultCode])
    {
      v9 = [v84 results];
      v10 = v9 == 0;

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
        if (!a5)
        {
          goto LABEL_59;
        }

LABEL_50:
        v46 = v43;
LABEL_51:
        v47 = 0;
        *a5 = v6;
        goto LABEL_70;
      }

      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v11 = [v84 results];
      v12 = [v11 countByEnumeratingWithState:&v96 objects:v111 count:16];
      if (v12)
      {
        v88 = 0;
        obj = v11;
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
            v16 = [v15 attributes];
            v17 = [_Version alloc];
            v18 = [v16 objectForKeyedSubscript:@"ContentVersion"];
            v19 = [(_Version *)v17 initWithString:v18];

            v20 = [_Version alloc];
            v21 = [v16 objectForKeyedSubscript:@"CompatibleVersion"];
            v22 = [(_Version *)v20 initWithString:v21];

            v23 = [(HRTFEnrollmentService *)self requestedVersion];
            v24 = [(_Version *)v22 compareTo:v23]== 1;

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
            v30 = [v28 UTF8String];
            *buf = 136315138;
            v117 = v30;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "selecting asset version: %s", buf, 0xCu);
          }

          if ([v86 state] == 1 || objc_msgSend(v86, "state") == 4)
          {
            if ((v82 & 1) == 0)
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
              v33 = [v32 initWithDomain:kHRTFEnrollmentErrorDomain code:3 userInfo:0];
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

              if (a5)
              {
                v75 = v74;
                *a5 = v74;
              }

              v47 = 0;
              goto LABEL_69;
            }
          }

          v33 = [v86 getLocalUrl];
          if (qword_1000164B0 != -1)
          {
            sub_1000086E8();
          }

          v76 = qword_1000164A8;
          if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
          {
            v77 = [v33 description];
            v78 = v77;
            v79 = [v77 UTF8String];
            *buf = 136315138;
            v117 = v79;
            _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_INFO, "asset is at %s", buf, 0xCu);
          }

          v47 = 1;
          a5 = v80;
          if (!v80)
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
      v59 = [(HRTFEnrollmentService *)self requestedVersion];
      v60 = [v59 description];
      v110 = v60;
      v61 = [NSDictionary dictionaryWithObjects:&v110 forKeys:&v109 count:1];
      v33 = [v57 initWithDomain:v58 code:4 userInfo:v61];

      v86 = 0;
LABEL_66:
      v47 = 0;
      if (!a5)
      {
LABEL_68:

        v6 = v86;
LABEL_69:

        goto LABEL_70;
      }

LABEL_67:
      v62 = v33;
      *a5 = v33;
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
        v35 = [v84 resultCode];
        *buf = 134217984;
        v117 = v35;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Query failed: %lu", buf, 0xCu);
      }

      v36 = [NSError alloc];
      v37 = kHRTFEnrollmentErrorDomain;
      v112 = @"Code";
      v38 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v84 resultCode]);
      v113 = v38;
      v39 = [NSDictionary dictionaryWithObjects:&v113 forKeys:&v112 count:1];
      v6 = [v36 initWithDomain:v37 code:2 userInfo:v39];

      if (!a5)
      {
        goto LABEL_59;
      }

      v40 = v6;
      goto LABEL_51;
    }

    if ((v82 & 1) == 0)
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

      if (a5)
      {
        v55 = v54;
        *a5 = v54;
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
  if (a5)
  {
    goto LABEL_50;
  }

LABEL_59:
  v47 = 0;
LABEL_70:

  _Block_object_dispose(&v103, 8);
  return v47;
}

- (void)checkForAssetExistence:(unsigned int)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = dispatch_get_global_queue(21, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005508;
  block[3] = &unk_100010498;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
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

- (void)xpcConnectionUpdateState:(unint64_t)a3 withProgress:(float)a4 facePoseStatus:(id)a5 earPoseStatus:(id)a6 errorStatus:(id)a7
{
  v12 = a5;
  v13 = a6;
  v14 = a7;
  queue = self->_queue;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10000589C;
  v20[3] = &unk_100010528;
  v23 = v14;
  v24 = a3;
  v25 = a4;
  v20[4] = self;
  v21 = v12;
  v22 = v13;
  v16 = v14;
  v17 = v13;
  v18 = v12;
  v19 = self;
  dispatch_async(queue, v20);
}

- (void)xpcConnectionUpdateResultSize:(unint64_t)a3
{
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000059B0;
  v5[3] = &unk_100010550;
  v5[4] = self;
  v5[5] = a3;
  v4 = self;
  dispatch_async(queue, v5);
}

- (void)updateWithData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = v6;
  if (*a4)
  {
    [(HRTFEnrollmentService *)self xpcConnectionUpdateState:5 withProgress:0 facePoseStatus:0 earPoseStatus:0.0 errorStatus:?];
    goto LABEL_53;
  }

  v8 = [v6 step];
  v9 = v8;
  v10 = 1.0;
  if (v8 > 1)
  {
    if (v8 != 2)
    {
      if (v8 == 3)
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
    if (v8)
    {
      if (v8 == 1)
      {
        v11 = [v7 captureUpdateData];
        v12 = [v11 earCaptureUpdateData];
        [v12 progress];
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

    v16 = [v7 captureUpdateData];
    v17 = [v16 faceCaptureUpdateData];
    [v17 progress];
    v10 = v18;

    v19 = [v7 captureUpdateData];
    v20 = [v19 faceCaptureUpdateData];
    v21 = [v20 poseStatusList];

    v22 = [v7 captureUpdateData];
    v23 = [v22 faceCaptureUpdateData];
    v24 = [v23 trackedData];

    if (v24)
    {
      v25 = [v7 captureUpdateData];
      v26 = [v25 faceCaptureUpdateData];
      v27 = [v26 trackedData];
      v28 = [v27 yawAngle];
      [v28 doubleValue];
      v30 = v29;

      v31 = [v7 captureUpdateData];
      v32 = [v31 faceCaptureUpdateData];
      v33 = [v32 trackedData];
      v34 = [v33 pitchAngle];
      [v34 doubleValue];
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
      v37 = [v21 objectAtIndexedSubscript:1];
    }

    v38 = v37;
    v39 = [HRTFEnrollmentPoseStatus alloc];
    v40 = [v21 objectAtIndexedSubscript:0];
    v14 = [(HRTFEnrollmentPoseStatus *)v39 initWithCurrentYawPose:v40 pitchPose:v38 yawAngle:v30 pitchAngle:v36 faceBoundingBox:self->_faceBoundingBox.origin.x, self->_faceBoundingBox.origin.y, self->_faceBoundingBox.size.width, self->_faceBoundingBox.size.height];

    v15 = 1;
  }

LABEL_19:
  if (_os_feature_enabled_impl())
  {
    v94 = v14;
    v95 = v15;
LABEL_21:
    v42 = [v7 captureUpdateData];
    v43 = [v42 earCaptureUpdateData];
    v44 = [v43 leftEarStatusList];

    v45 = [v7 captureUpdateData];
    v46 = [v45 earCaptureUpdateData];
    v47 = [v46 rightEarStatusList];

    v48 = [[NSDictionary alloc] initWithObjects:&__NSArray0__struct forKeys:&__NSArray0__struct];
    v49 = [v7 captureUpdateData];
    v50 = [v49 earCaptureUpdateData];
    v51 = [v50 trackedData];

    if (!v51)
    {
      v84 = 0;
      x = CGRectZero.origin.x;
      y = CGRectZero.origin.y;
      width = CGRectZero.size.width;
      height = CGRectZero.size.height;
      v83 = 1;
      v61 = -100.0;
      v67 = -100.0;
      v15 = v95;
      goto LABEL_37;
    }

    v52 = [v7 captureUpdateData];
    v53 = [v52 earCaptureUpdateData];
    v54 = [v53 trackedData];
    v55 = [v54 detectionData];
    v93 = [v55 earSide];

    v56 = [v7 captureUpdateData];
    v57 = [v56 earCaptureUpdateData];
    v58 = [v57 trackedData];
    v59 = [v58 detectionData];
    [v59 yawAngle];
    v61 = v60;

    v62 = [v7 captureUpdateData];
    v63 = [v62 earCaptureUpdateData];
    v64 = [v63 trackedData];
    v65 = [v64 detectionData];
    [v65 pitchAngle];
    v67 = v66;

    v68 = [v7 captureUpdateData];
    v69 = [v68 earCaptureUpdateData];
    v70 = [v69 trackedData];
    v71 = [v70 detectionData];
    [v71 boundingBox];
    x = v72;
    y = v74;
    width = v76;
    height = v78;

    v80 = [v7 captureUpdateData];
    v81 = [v80 earCaptureUpdateData];
    v82 = [v81 trackedData];
    v83 = [v82 error];

    if (v83 > 2)
    {
      v15 = v95;
      if (v83 != 3)
      {
        v84 = v93;
        if (v83 == 4)
        {
          goto LABEL_37;
        }

        if (v83 == 8)
        {
          v83 = 0;
          goto LABEL_37;
        }

        goto LABEL_35;
      }
    }

    else
    {
      v15 = v95;
      if (v83)
      {
        v84 = v93;
        if (v83 == 1)
        {
          v83 = 2;
          goto LABEL_37;
        }

        if (v83 == 2)
        {
          v83 = 5;
LABEL_37:
          v85 = [[HRTFEnrollmentEarPoseStatus alloc] initWithLeftYawPose:v44 rightYawPose:v47 leftpitchPose:v48 rightpitchPose:v48 earSide:v84 yawAngle:v83 pitchAngle:v61 earBoundingBox:v67 earCaptureStatus:x, y, width, height];

          v14 = v94;
          goto LABEL_38;
        }

LABEL_35:
        v83 = 7;
        goto LABEL_37;
      }

      v83 = 1;
    }

    v84 = v93;
    goto LABEL_37;
  }

  v85 = 0;
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
    v87 = [v7 postProcessUpdateData];
    v88 = [v87 result];

    if (!v88)
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
    self->_resultData = v88;

    [(HRTFEnrollmentService *)self xpcConnectionUpdateResultSize:[(NSData *)self->_resultData length]];
    *&v91 = v10;
    [(HRTFEnrollmentService *)self xpcConnectionUpdateState:v15 withProgress:0 facePoseStatus:0 earPoseStatus:0 errorStatus:v91];
  }

  else
  {
    *&v41 = v86;
    [(HRTFEnrollmentService *)self xpcConnectionUpdateState:v15 withProgress:v14 facePoseStatus:v85 earPoseStatus:0 errorStatus:v41];
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

- (void)startSessionWithTerminationCallback:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000062E4;
  v7[3] = &unk_100010578;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  objc_copyWeak(&v9, &location);
  dispatch_sync(queue, v7);
  objc_destroyWeak(&v9);

  objc_destroyWeak(&location);
}

- (void)startSessionWithTerminationCallback:(id)a3 withCallback:(id)a4
{
  objc_storeStrong(&self->_downloadedModelPath, a3);

  [(HRTFEnrollmentService *)self startSessionWithTerminationCallback:&stru_100010598];
}

- (void)stopSession:(id)a3
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000067E4;
  block[3] = &unk_1000103F8;
  block[4] = self;
  v4 = a3;
  dispatch_sync(queue, block);
  v4[2](v4);
}

- (void)processCaptureData:(id)a3 withFaceData:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006994;
  block[3] = &unk_1000105C0;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  v11 = self;
  dispatch_sync(queue, block);
}

- (void)requestDataWithOffset:(unint64_t)a3 length:(unint64_t)a4 withCompletion:(id)a5
{
  v8 = a5;
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100006D60;
  v11[3] = &unk_1000105E8;
  v13 = a4;
  v14 = a3;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  dispatch_sync(queue, v11);
}

- (void)downloadAssetV2:(unint64_t)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = objc_retainBlock(v6);
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
    v12 = [v9 getLocalFileUrl];
    v13 = [v12 path];
    v14 = v57[5];
    v57[5] = v13;

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
    if (v6)
    {
      (*(v6 + 2))(v6, *(v69 + 24), v57[5], v63[5], v53[3]);
    }

    goto LABEL_32;
  }

  v24 = [(HRTFEnrollmentService *)self getAssetDownloadOptions];
  if (qword_1000164B0 != -1)
  {
    sub_1000086E8();
  }

  v25 = qword_1000164A8;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v26 = [v9 assetType];
    v27 = [v9 assetId];
    *buf = 138412546;
    *&buf[4] = v26;
    *&buf[12] = 2112;
    *&buf[14] = v27;
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
  if (a3 == 1)
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
  v30 = v6;
  v43 = &v68;
  v44 = &v56;
  v39 = v30;
  v37 = self;
  v45 = &v47;
  v46 = a3;
  v31 = v29;
  v38 = v31;
  [v36 startDownload:v24 completionWithError:v35];
  if (a3 == 1)
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

- (void)downloadAsset:(unint64_t)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = objc_retainBlock(v6);
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
    v12 = [v9 getLocalFileUrl];
    v13 = [v12 path];
    v14 = v52[5];
    v52[5] = v13;

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
    if (v6)
    {
      (*(v6 + 2))(v6, *(v64 + 24), v52[5], v58[5]);
    }

    goto LABEL_32;
  }

  v24 = [(HRTFEnrollmentService *)self getAssetDownloadOptions];
  if (qword_1000164B0 != -1)
  {
    sub_1000086E8();
  }

  v25 = qword_1000164A8;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v26 = [v9 assetType];
    v27 = [v9 assetId];
    *buf = 138412546;
    *&buf[4] = v26;
    *&buf[12] = 2112;
    *&buf[14] = v27;
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
  if (a3 == 1)
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
  v30 = v6;
  v42 = &v63;
  v43 = &v51;
  v39 = v30;
  v37 = self;
  v44 = &v46;
  v45 = a3;
  v31 = v29;
  v38 = v31;
  [v36 startDownload:v24 completionWithError:v35];
  if (a3 == 1)
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