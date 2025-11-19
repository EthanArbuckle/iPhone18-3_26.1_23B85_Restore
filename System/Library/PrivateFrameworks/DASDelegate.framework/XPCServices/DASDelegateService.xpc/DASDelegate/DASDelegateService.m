@interface DASDelegateService
+ (void)initialize;
- (void)appLaunchResumeInfoWithStartDate:(id)a3 withEndDate:(id)a4 withReply:(id)a5;
- (void)evaluateTailspinAt:(id)a3 withReply:(id)a4;
@end

@implementation DASDelegateService

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    qword_1000086D8 = os_log_create("com.apple.DASDelegateService", "DASDelegateService");

    _objc_release_x1();
  }
}

- (void)appLaunchResumeInfoWithStartDate:(id)a3 withEndDate:(id)a4 withReply:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v10 = objc_alloc_init(NSMutableArray);
    v11 = objc_alloc_init(SignpostSupportSubsystemCategoryAllowlist);
    [v11 addSubsystem:@"com.apple.FrontBoard" category:@"AppLaunch"];
    [v11 addSubsystem:@"com.apple.UIKit" category:@"AppLifecycle"];
    v12 = objc_alloc_init(SignpostSupportObjectExtractor);
    [v12 setSubsystemCategoryFilter:v11];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1000012CC;
    v25[3] = &unk_1000041D8;
    v13 = v10;
    v26 = v13;
    [v12 setIntervalCompletionProcessingBlock:v25];
    v14 = objc_autoreleasePoolPush();
    v24 = 0;
    v15 = [v12 processLogArchiveWithPath:0 startDate:v7 endDate:v8 errorOut:&v24];
    v16 = v24;
    if (v15)
    {
      v17 = [v13 count];
      v18 = qword_1000086D8;
      if (v17)
      {
        if (os_log_type_enabled(qword_1000086D8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v28 = v13;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Sending extracted app resumes/launches %@", buf, 0xCu);
        }

        v19 = v9[2];
        v20 = v9;
        v21 = v13;
      }

      else
      {
        if (os_log_type_enabled(qword_1000086D8, OS_LOG_TYPE_DEBUG))
        {
          sub_100001D20(v18);
        }

        v19 = v9[2];
        v20 = v9;
        v21 = 0;
      }

      v19(v20, v21, 0);
    }

    else
    {
      v23 = qword_1000086D8;
      if (os_log_type_enabled(qword_1000086D8, OS_LOG_TYPE_ERROR))
      {
        sub_100001CDC(v23);
      }

      (v9[2])(v9, 0, v16);
    }

    objc_autoreleasePoolPop(v14);
  }

  else
  {
    v13 = [NSError errorWithDomain:@"DASDelegateServiceErrorDomain" code:3 userInfo:0];
    v22 = qword_1000086D8;
    if (os_log_type_enabled(qword_1000086D8, OS_LOG_TYPE_ERROR))
    {
      sub_100001C98(v22);
    }

    (v9[2])(v9, 0, v13);
  }
}

- (void)evaluateTailspinAt:(id)a3 withReply:(id)a4
{
  v33 = a3;
  v32 = a4;
  v5 = qword_1000086D8;
  if (os_log_type_enabled(qword_1000086D8, OS_LOG_TYPE_DEBUG))
  {
    sub_100001D64(v33, v5);
  }

  v34 = [[SASampleStore alloc] initForFileParsing];
  [v34 setDataGatheringOptions:{objc_msgSend(v34, "dataGatheringOptions") & 0xFFFFFFFFFFFFF801}];
  v6 = v33;
  v48 = 0;
  v7 = [v34 parseKTraceFile:objc_msgSend(v33 warningsOut:"UTF8String") errorOut:{0, &v48}];
  v8 = v48;
  v30 = v8;
  if (v7)
  {
    v44 = 0;
    v45 = &v44;
    v46 = 0x2020000000;
    v47 = 0;
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_1000019F4;
    v41[3] = &unk_100004200;
    v9 = objc_opt_new();
    v42 = v9;
    v43 = &v44;
    [v34 enumerateTasks:{v41, v30}];
    v10 = [v9 allKeys];
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_100001AE0;
    v39[3] = &unk_100004228;
    v11 = v9;
    v40 = v11;
    v12 = [v10 sortedArrayUsingComparator:v39];

    if ([v12 count] > 9)
    {
      v13 = 10;
    }

    else
    {
      v13 = [v12 count];
    }

    v17 = [v12 subarrayWithRange:{0, v13}];

    v18 = v45[3];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v19 = v17;
    v20 = [v19 countByEnumeratingWithState:&v35 objects:v53 count:16];
    if (v20)
    {
      v21 = v18 / 0xA;
      v22 = *v36;
LABEL_12:
      v23 = 0;
      while (1)
      {
        if (*v36 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v35 + 1) + 8 * v23);
        v25 = [v11 objectForKeyedSubscript:v24];
        v26 = [v25 unsignedLongLongValue] < v21;

        if (v26)
        {
          break;
        }

        if (([v24 containsString:@"Widget"] & 1) != 0 || objc_msgSend(&off_1000044F0, "containsObject:", v24))
        {
          v28 = v24;
          v29 = qword_1000086D8;
          if (os_log_type_enabled(qword_1000086D8, OS_LOG_TYPE_INFO))
          {
            *buf = 138543618;
            v50 = v33;
            v51 = 2114;
            v52 = v28;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "%{public}@, %{public}@ on allow list", buf, 0x16u);
          }

          v32[2](v32, v28, v19, 0);

          goto LABEL_26;
        }

        if (v20 == ++v23)
        {
          v20 = [v19 countByEnumeratingWithState:&v35 objects:v53 count:16];
          if (v20)
          {
            goto LABEL_12;
          }

          break;
        }
      }
    }

    v27 = qword_1000086D8;
    if (os_log_type_enabled(qword_1000086D8, OS_LOG_TYPE_DEBUG))
    {
      sub_100001E64(v33, v27);
    }

    v32[2](v32, 0, v19, 0);
LABEL_26:

    _Block_object_dispose(&v44, 8);
  }

  else
  {
    v14 = v8;
    v15 = qword_1000086D8;
    if (os_log_type_enabled(qword_1000086D8, OS_LOG_TYPE_ERROR))
    {
      sub_100001DDC(v33, v14, v15);
    }

    v54 = NSDebugDescriptionErrorKey;
    v55 = v14;
    v11 = [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1, v30];
    v16 = [NSError errorWithDomain:NSPOSIXErrorDomain code:79 userInfo:v11];
    (v32)[2](v32, 0, 0, v16);
  }
}

@end