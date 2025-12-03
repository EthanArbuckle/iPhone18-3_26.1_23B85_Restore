@interface DASDelegateService
+ (void)initialize;
- (void)appLaunchResumeInfoWithStartDate:(id)date withEndDate:(id)endDate withReply:(id)reply;
- (void)evaluateTailspinAt:(id)at withReply:(id)reply;
@end

@implementation DASDelegateService

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    qword_1000086D8 = os_log_create("com.apple.DASDelegateService", "DASDelegateService");

    _objc_release_x1();
  }
}

- (void)appLaunchResumeInfoWithStartDate:(id)date withEndDate:(id)endDate withReply:(id)reply
{
  dateCopy = date;
  endDateCopy = endDate;
  replyCopy = reply;
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
    v15 = [v12 processLogArchiveWithPath:0 startDate:dateCopy endDate:endDateCopy errorOut:&v24];
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

        v19 = replyCopy[2];
        v20 = replyCopy;
        v21 = v13;
      }

      else
      {
        if (os_log_type_enabled(qword_1000086D8, OS_LOG_TYPE_DEBUG))
        {
          sub_100001D20(v18);
        }

        v19 = replyCopy[2];
        v20 = replyCopy;
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

      (replyCopy[2])(replyCopy, 0, v16);
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

    (replyCopy[2])(replyCopy, 0, v13);
  }
}

- (void)evaluateTailspinAt:(id)at withReply:(id)reply
{
  atCopy = at;
  replyCopy = reply;
  v5 = qword_1000086D8;
  if (os_log_type_enabled(qword_1000086D8, OS_LOG_TYPE_DEBUG))
  {
    sub_100001D64(atCopy, v5);
  }

  initForFileParsing = [[SASampleStore alloc] initForFileParsing];
  [initForFileParsing setDataGatheringOptions:{objc_msgSend(initForFileParsing, "dataGatheringOptions") & 0xFFFFFFFFFFFFF801}];
  v6 = atCopy;
  v48 = 0;
  v7 = [initForFileParsing parseKTraceFile:objc_msgSend(atCopy warningsOut:"UTF8String") errorOut:{0, &v48}];
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
    [initForFileParsing enumerateTasks:{v41, v30}];
    allKeys = [v9 allKeys];
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_100001AE0;
    v39[3] = &unk_100004228;
    v11 = v9;
    v40 = v11;
    v12 = [allKeys sortedArrayUsingComparator:v39];

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
            v50 = atCopy;
            v51 = 2114;
            v52 = v28;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "%{public}@, %{public}@ on allow list", buf, 0x16u);
          }

          replyCopy[2](replyCopy, v28, v19, 0);

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
      sub_100001E64(atCopy, v27);
    }

    replyCopy[2](replyCopy, 0, v19, 0);
LABEL_26:

    _Block_object_dispose(&v44, 8);
  }

  else
  {
    v14 = v8;
    v15 = qword_1000086D8;
    if (os_log_type_enabled(qword_1000086D8, OS_LOG_TYPE_ERROR))
    {
      sub_100001DDC(atCopy, v14, v15);
    }

    v54 = NSDebugDescriptionErrorKey;
    v55 = v14;
    v11 = [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1, v30];
    v16 = [NSError errorWithDomain:NSPOSIXErrorDomain code:79 userInfo:v11];
    (replyCopy)[2](replyCopy, 0, 0, v16);
  }
}

@end