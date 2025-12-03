@interface IDSEventReportingManager
- (BOOL)serverEnabledEventReporting;
- (void)reportClientEvent:(id)event withCompletion:(id)completion;
@end

@implementation IDSEventReportingManager

- (void)reportClientEvent:(id)event withCompletion:(id)completion
{
  v52 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  completionCopy = completion;
  if (completionCopy)
  {
    if ([(IDSEventReportingManager *)self serverEnabledEventReporting])
    {
      if (_os_feature_enabled_impl())
      {
        if (eventCopy)
        {
          v39[0] = 0;
          v39[1] = v39;
          v39[2] = 0x2020000000;
          v40 = 0;
          v36[0] = MEMORY[0x1E69E9820];
          v36[1] = 3221225472;
          v36[2] = sub_195A47470;
          v36[3] = &unk_1E743FC00;
          v38 = v39;
          v37 = completionCopy;
          v8 = MEMORY[0x19A8BBEF0](v36);
          registration = [MEMORY[0x1E69A6138] registration];
          if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
          {
            reportType = [eventCopy reportType];
            LODWORD(buf) = 138412290;
            *(&buf + 4) = reportType;
            _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "Reporting event of type %@ to server with completion", &buf, 0xCu);
          }

          v30 = MEMORY[0x1E69E9820];
          v31 = 3221225472;
          v32 = sub_195A474C4;
          v33 = &unk_1E743FC28;
          v34 = eventCopy;
          v11 = v8;
          v35 = v11;
          v12 = &v30;
          v13 = v11;
          *&buf = MEMORY[0x1E69E9820];
          *(&buf + 1) = 3221225472;
          v48 = sub_195A47558;
          v49 = &unk_1E743FC78;
          v50 = v13;
          v51 = v12;
          v14 = v12;
          v15 = v13;
          [IDSXPCDaemonController performDaemonControllerTask:&buf, v30, v31, v32, v33];

          _Block_object_dispose(v39, 8);
        }

        else
        {
          registration2 = [MEMORY[0x1E69A6138] registration];
          if (os_log_type_enabled(registration2, OS_LOG_TYPE_ERROR))
          {
            sub_195B2A320();
          }

          v26 = MEMORY[0x1E696ABC0];
          v41 = *MEMORY[0x1E696A278];
          v42 = @"Missing event parameter";
          v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
          v28 = [v26 errorWithDomain:@"IDSEventReportingManagerErrorDomain" code:200 userInfo:v27];
          (*(completionCopy + 2))(completionCopy, 0, v28);
        }
      }

      else
      {
        registration3 = [MEMORY[0x1E69A6138] registration];
        if (os_log_type_enabled(registration3, OS_LOG_TYPE_ERROR))
        {
          sub_195B2A2E0();
        }

        v22 = MEMORY[0x1E696ABC0];
        v43 = *MEMORY[0x1E696A278];
        v44 = @"Event reporting disabled by feature flag";
        v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
        v24 = [v22 errorWithDomain:@"IDSEventReportingManagerErrorDomain" code:100 userInfo:v23];
        (*(completionCopy + 2))(completionCopy, 0, v24);
      }
    }

    else
    {
      registration4 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration4, OS_LOG_TYPE_ERROR))
      {
        sub_195B2A2A0();
      }

      v18 = MEMORY[0x1E696ABC0];
      v45 = *MEMORY[0x1E696A278];
      v46 = @"Event reporting dsiabled by server";
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
      v20 = [v18 errorWithDomain:@"IDSEventReportingManagerErrorDomain" code:100 userInfo:v19];
      (*(completionCopy + 2))(completionCopy, 0, v20);
    }
  }

  else
  {
    registration5 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration5, OS_LOG_TYPE_ERROR))
    {
      sub_195B2A3A0();
    }
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (BOOL)serverEnabledEventReporting
{
  v2 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:0];
  v3 = [v2 objectForKey:@"client-report-ckv-reliability-enabled"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

@end