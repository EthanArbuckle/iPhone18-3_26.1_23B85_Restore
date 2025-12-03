@interface NetworkQualityDiagnosticExtension
- (id)attachmentsForParameters:(id)parameters;
@end

@implementation NetworkQualityDiagnosticExtension

- (id)attachmentsForParameters:(id)parameters
{
  parametersCopy = parameters;
  if (objc_opt_class())
  {
    v4 = objc_alloc_init(NSOperationQueue);
    v5 = dispatch_get_global_queue(33, 0);
    [v4 setUnderlyingQueue:v5];

    [v4 setMaxConcurrentOperationCount:1];
    v6 = objc_alloc_init(NetworkQualityConfiguration);
    [v6 setParallel:0];
    [v6 setMaxRuntime:10];
    v7 = dispatch_semaphore_create(0);
    v42 = 0;
    v43 = &v42;
    v44 = 0x3032000000;
    v45 = sub_1000040CC;
    v46 = sub_1000040DC;
    v47 = 0;
    v8 = +[NSDate now];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_1000040E4;
    v37[3] = &unk_100008308;
    v9 = v6;
    v38 = v9;
    v39 = v4;
    v41 = &v42;
    v10 = v7;
    v40 = v10;
    v33 = v39;
    [v39 addOperationWithBlock:v37];
    v11 = dispatch_time(0, 15000000000);
    dispatch_semaphore_wait(v10, v11);
    v12 = +[NSFileManager defaultManager];
    temporaryDirectory = [v12 temporaryDirectory];

    path = [temporaryDirectory path];
    v15 = [path stringByAppendingString:@"/networkQuality.json"];
    v32 = parametersCopy;

    path2 = [temporaryDirectory path];
    v17 = [path2 stringByAppendingString:@"/networkQuality.txt"];

    v34 = v8;
    v18 = sub_100002A6C(v8, v43[5], v9, 1, 0);
    v19 = v18;
    if (v18)
    {
      v20 = [v18 dataUsingEncoding:4];
      v36 = 0;
      v21 = [v20 writeToFile:v17 options:1 error:&v36];
      v22 = v36;

      if (v21)
      {
        goto LABEL_12;
      }

      sub_100000C70();
      if (os_log_type_enabled(qword_10000C3C8, OS_LOG_TYPE_ERROR))
      {
        sub_100004340();
      }
    }

    else
    {
      v22 = v17;
    }

    v17 = 0;
LABEL_12:

    v24 = sub_1000031A0(v34, v43[5], v9);
    v25 = v24;
    if (v24)
    {
      v26 = [v24 dataUsingEncoding:4];
      v35 = 0;
      v27 = [v26 writeToFile:v15 options:1 error:&v35];
      v28 = v35;

      if (v27)
      {
LABEL_19:

        v23 = objc_alloc_init(NSMutableArray);
        if (v15)
        {
          v29 = [DEAttachmentItem attachmentWithPath:v15];
          [v29 setDeleteOnAttach:&__kCFBooleanTrue];
          [v23 addObject:v29];
        }

        if (v17)
        {
          v30 = [DEAttachmentItem attachmentWithPath:v17];
          [v30 setDeleteOnAttach:&__kCFBooleanTrue];
          [v23 addObject:v30];
        }

        _Block_object_dispose(&v42, 8);
        parametersCopy = v32;
        goto LABEL_24;
      }

      sub_100000C70();
      if (os_log_type_enabled(qword_10000C3C8, OS_LOG_TYPE_ERROR))
      {
        sub_1000043BC();
      }
    }

    else
    {
      v28 = v15;
    }

    v15 = 0;
    goto LABEL_19;
  }

  sub_100000C70();
  if (os_log_type_enabled(qword_10000C3C8, OS_LOG_TYPE_ERROR))
  {
    sub_100004438();
  }

  v23 = 0;
LABEL_24:

  return v23;
}

@end