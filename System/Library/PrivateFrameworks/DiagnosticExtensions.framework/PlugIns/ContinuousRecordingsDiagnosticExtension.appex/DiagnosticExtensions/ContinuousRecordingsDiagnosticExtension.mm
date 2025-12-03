@interface ContinuousRecordingsDiagnosticExtension
+ (OS_os_log)log;
- (id)attachmentsForParameters:(id)parameters;
- (id)directoryRegexForComponentID:(id)d;
- (void)forceFlushHIDContinuousRecorder;
@end

@implementation ContinuousRecordingsDiagnosticExtension

+ (OS_os_log)log
{
  if (log_once != -1)
  {
    +[ContinuousRecordingsDiagnosticExtension log];
  }

  v3 = log_os_log;

  return v3;
}

void __46__ContinuousRecordingsDiagnosticExtension_log__block_invoke(id a1)
{
  log_os_log = os_log_create("com.apple.ContinuousRecording", "DiagnosticExtension");

  _objc_release_x1();
}

- (id)attachmentsForParameters:(id)parameters
{
  parametersCopy = parameters;
  [(ContinuousRecordingsDiagnosticExtension *)self forceFlushHIDContinuousRecorder];
  v5 = [parametersCopy objectForKeyedSubscript:@"componentID"];
  v31 = [(ContinuousRecordingsDiagnosticExtension *)self directoryRegexForComponentID:v5];
  if (v31)
  {
    [parametersCopy objectForKeyedSubscript:@"DEExtensionAttachmentsParamConsentProvidedKey"];
    v26 = v5;
    v27 = parametersCopy;
    v25 = v28 = self;
    if ([v25 BOOLValue])
    {
      v29 = 0;
    }

    else
    {
      v29 = [NSRegularExpression regularExpressionWithPattern:@"private" options:4 error:0];
    }

    v7 = [NSURL alloc];
    stringByStandardizingPath = [@"/private/var/mobile/Library/Logs/ContinuousRecordings" stringByStandardizingPath];
    v9 = [v7 initFileURLWithPath:stringByStandardizingPath isDirectory:1];

    v10 = +[NSFileManager defaultManager];
    v39[0] = NSURLNameKey;
    v39[1] = NSURLIsDirectoryKey;
    v11 = [NSArray arrayWithObjects:v39 count:2];
    v24 = v9;
    v12 = [v10 enumeratorAtURL:v9 includingPropertiesForKeys:v11 options:5 errorHandler:0];

    v30 = objc_opt_new();
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v35;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v35 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v34 + 1) + 8 * i);
          v33 = 0;
          [v18 getResourceValue:&v33 forKey:NSURLIsDirectoryKey error:0];
          v19 = v33;
          if ([v19 BOOLValue])
          {
            v32 = 0;
            [v18 getResourceValue:&v32 forKey:NSURLNameKey error:0];
            v20 = v32;
            v21 = [v31 firstMatchInString:v20 options:0 range:{0, objc_msgSend(v20, "length")}];

            if (v21)
            {
              v22 = [(ContinuousRecordingsDiagnosticExtension *)v28 filesInDir:v18 matchingPattern:0 excludingPattern:v29];
              [v30 addObjectsFromArray:v22];
            }
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v15);
    }

    v5 = v26;
    parametersCopy = v27;
  }

  else
  {
    v6 = [objc_opt_class() log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(ContinuousRecordingsDiagnosticExtension *)v5 attachmentsForParameters:v6];
    }

    v30 = objc_opt_new();
  }

  return v30;
}

- (id)directoryRegexForComponentID:(id)d
{
  if (d)
  {
    dCopy = d;
    v4 = +[NSBundle mainBundle];
    v5 = [v4 objectForInfoDictionaryKey:@"ComponentDirectoryPatterns"];

    stringValue = [dCopy stringValue];

    v7 = [v5 objectForKeyedSubscript:stringValue];

    if (v7 || (+[NSBundle mainBundle](NSBundle, "mainBundle"), v8 = objc_claimAutoreleasedReturnValue(), [v8 objectForInfoDictionaryKey:@"FallbackDirectoryPattern"], v7 = objc_claimAutoreleasedReturnValue(), v8, v7))
    {
      v9 = [NSRegularExpression regularExpressionWithPattern:v7 options:0 error:0];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)forceFlushHIDContinuousRecorder
{
  v2 = dispatch_group_create();
  v3 = dispatch_queue_create("HIDContinuousRecorderDiagnosticExtension", 0);
  out_token = -1;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = __74__ContinuousRecordingsDiagnosticExtension_forceFlushHIDContinuousRecorder__block_invoke;
  handler[3] = &unk_1000041B8;
  v4 = v2;
  v12 = v4;
  notify_register_dispatch("com.apple.HIDContinuousRecorder.forceFlushFinished", &out_token, v3, handler);
  dispatch_group_enter(v4);
  v5 = [objc_opt_class() log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Sending force flush command to HID continuous recording session filter", v10, 2u);
  }

  notify_post("com.apple.HIDContinuousRecorder.forceFlush");
  v6 = dispatch_time(0, 5000000000);
  v7 = dispatch_group_wait(v4, v6);
  v8 = [objc_opt_class() log];
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(ContinuousRecordingsDiagnosticExtension *)v9 forceFlushHIDContinuousRecorder];
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Successfully force flushed HID continuous recording session filter", v10, 2u);
  }

  if (out_token != -1)
  {
    notify_cancel(out_token);
  }
}

void __74__ContinuousRecordingsDiagnosticExtension_forceFlushHIDContinuousRecorder__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    dispatch_group_leave(v1);
  }
}

- (void)attachmentsForParameters:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "No directory pattern found for componentID %@", &v2, 0xCu);
}

@end