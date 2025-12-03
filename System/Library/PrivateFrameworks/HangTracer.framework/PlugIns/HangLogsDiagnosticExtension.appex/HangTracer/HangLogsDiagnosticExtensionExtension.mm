@interface HangLogsDiagnosticExtensionExtension
- (id)attachmentsForParameters:(id)parameters;
@end

@implementation HangLogsDiagnosticExtensionExtension

- (id)attachmentsForParameters:(id)parameters
{
  v74 = 0;
  v3 = +[NSFileManager defaultManager];
  v4 = [v3 fileExistsAtPath:@"/tmp/com.apple.HangTracer.HangLogsDiagnosticExtension" isDirectory:&v74];
  v5 = v74;

  if (v4 && (v5 & 1) == 0)
  {
    v6 = shared_ht_log_handle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100013BAC(v6, v7, v8, v9, v10, v11, v12, v13);
    }

LABEL_10:
    v19 = &__NSArray0__struct;
    goto LABEL_41;
  }

  v14 = +[NSFileManager defaultManager];
  v15 = [v14 fileExistsAtPath:@"/tmp/com.apple.HangTracer.HangLogsDiagnosticExtension"];

  if ((v15 & 1) == 0)
  {
    v16 = +[NSFileManager defaultManager];
    v17 = [NSURL fileURLWithPath:@"/tmp/com.apple.HangTracer.HangLogsDiagnosticExtension"];
    v73 = 0;
    [v16 createDirectoryAtURL:v17 withIntermediateDirectories:1 attributes:0 error:&v73];
    v6 = v73;

    if (v6)
    {
      v18 = shared_ht_log_handle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_100013C24(v6, v18);
      }

      goto LABEL_10;
    }
  }

  v6 = getListOfHangArchiveFiles(@"/tmp/com.apple.HangTracer.HangLogsDiagnosticExtension");
  HTCollectHangLogsBundle(@"/tmp/com.apple.HangTracer.HangLogsDiagnosticExtension", 1);
  v20 = 0.0;
  do
  {
    v21 = getListOfHangArchiveFiles(@"/tmp/com.apple.HangTracer.HangLogsDiagnosticExtension");
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v22 = v21;
    v23 = [v22 countByEnumeratingWithState:&v69 objects:v75 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v70;
LABEL_14:
      v26 = 0;
      while (1)
      {
        if (*v70 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v69 + 1) + 8 * v26);
        if ([v6 indexOfObject:v27]== 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        if (v24 == ++v26)
        {
          v24 = [v22 countByEnumeratingWithState:&v69 objects:v75 count:16];
          if (v24)
          {
            goto LABEL_14;
          }

          goto LABEL_20;
        }
      }

      v28 = v27;

      if (!v28)
      {
        goto LABEL_22;
      }

      v19 = objc_opt_new();
      v36 = [DEAttachmentItem attachmentWithPath:v28];
      [v36 setDeleteOnAttach:&__kCFBooleanTrue];
      [v36 setShouldCompress:&__kCFBooleanTrue];
      v67 = v36;
      [v19 addObject:v36];
      v37 = MGCopyAnswer();
      v38 = MGCopyAnswer();
      v39 = objc_opt_new();
      [v39 setDateFormat:@"yyyy-MM-dd-HHmmss"];
      v40 = +[NSDate date];
      v64 = v39;
      v41 = [v39 stringFromDate:v40];
      v65 = v38;
      v66 = v37;
      v42 = [NSString stringWithFormat:@"%@-%@-%@-%@.%@", @"HangHistory", v37, v38, v41, @"log"];

      v43 = [NSString stringWithFormat:@"%@/%@", @"/tmp/com.apple.HangTracer.HangLogsDiagnosticExtension", v42];
      v44 = objc_alloc_init(NSMutableArray);
      v45 = [NSNumber numberWithUnsignedInt:0];
      [v44 addObject:v45];

      v46 = [NSNumber numberWithUnsignedInt:1];
      [v44 addObject:v46];

      v47 = +[NSDate now];
      v48 = [v47 dateByAddingTimeInterval:-86400.0];
      v49 = htCompleteHangHistoryInfo(0, v44, v48, v47);
      v50 = v49;
      v63 = v42;
      if (v49 && [v49 length])
      {
        v68 = 0;
        v51 = [v50 writeToFile:v43 atomically:1 encoding:4 error:&v68];
        v52 = v68;
        if (v51)
        {
LABEL_35:
          if (chmod([v43 UTF8String], 0x1B6u))
          {
            v54 = shared_ht_log_handle();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
            {
              sub_100013DBC(v43, v54, v55, v56, v57, v58, v59, v60);
            }
          }

          v61 = [DEAttachmentItem attachmentWithPath:v43];
          [v61 setDeleteOnAttach:&__kCFBooleanTrue];
          [v19 addObject:v61];

          goto LABEL_40;
        }

        v53 = shared_ht_log_handle();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          sub_100013CF0(v43, v52, v53);
        }
      }

      else
      {
        v53 = shared_ht_log_handle();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          sub_100013D78(v53);
        }

        v52 = 0;
      }

      goto LABEL_35;
    }

LABEL_20:

LABEL_22:
    [NSThread sleepForTimeInterval:0.5];
    v20 = v20 + 0.5;
  }

  while (v20 < 60.0);
  v28 = shared_ht_log_handle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    sub_100013E28(v28, v29, v30, v31, v32, v33, v34, v35);
  }

  v19 = &__NSArray0__struct;
LABEL_40:

LABEL_41:

  return v19;
}

@end