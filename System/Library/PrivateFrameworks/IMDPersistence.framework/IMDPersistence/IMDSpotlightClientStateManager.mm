@interface IMDSpotlightClientStateManager
+ (id)sharedManager;
- (id)_timeoutError;
- (id)currentClientStateWithError:(id *)error;
- (id)description;
- (void)_currentClientStateWithCompletion:(id)completion;
- (void)_migrateClientStateFromManager:(id)manager;
- (void)_saveClientState:(id)state withCompletion:(id)completion;
- (void)currentClientStateWithCompletion:(id)completion;
- (void)saveClientState:(id)state;
- (void)saveClientState:(id)state withCompletion:(id)completion;
- (void)saveClientState:(id)state withError:(id *)error;
@end

@implementation IMDSpotlightClientStateManager

+ (id)sharedManager
{
  if (qword_1EBA53A88 != -1)
  {
    sub_1B7CF8D40();
  }

  v3 = qword_1EBA53A60;

  return v3;
}

- (void)_migrateClientStateFromManager:(id)manager
{
  managerCopy = manager;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1B7B8F54C;
  v6[3] = &unk_1E7CB6770;
  v7 = managerCopy;
  selfCopy = self;
  v5 = managerCopy;
  IMDIndexingClientRequest(v6);
}

- (id)currentClientStateWithError:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  if (qword_1EBA53B98 != -1)
  {
    sub_1B7CF8D54();
  }

  if (*&qword_1EBA540A8 > 0.0)
  {
    v5 = IMLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = qword_1EBA540A8;
      _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_DEFAULT, "Beginning simulated hang of %f seconds", &buf, 0xCu);
    }

    usleep((*&qword_1EBA540A8 * 1000000.0));
    v6 = IMLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = qword_1EBA540A8;
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_DEFAULT, "Finished simulated hang of %f seconds", &buf, 0xCu);
    }
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v27 = 0x3032000000;
  v28 = sub_1B7AE1A34;
  v29 = sub_1B7AE2530;
  v30 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_1B7AE1A34;
  v24 = sub_1B7AE2530;
  v25 = 0;
  v7 = dispatch_semaphore_create(0);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1B7B8FA8C;
  v16[3] = &unk_1E7CBB588;
  p_buf = &buf;
  v19 = &v20;
  v8 = v7;
  v17 = v8;
  objc_msgSend__currentClientStateWithCompletion_(self, v9, v16);
  v10 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v8, v10))
  {
    if (error)
    {
      objc_msgSend__timeoutError(self, v11, v12);
      *error = v13 = 0;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    if (error)
    {
      *error = v21[5];
    }

    v13 = *(*(&buf + 1) + 40);
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&buf, 8);

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (void)currentClientStateWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B7B8FBBC;
  v7[3] = &unk_1E7CBB5D8;
  v8 = completionCopy;
  v5 = completionCopy;
  objc_msgSend__currentClientStateWithCompletion_(self, v6, v7);
}

- (void)_currentClientStateWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x1E695DF30], v4, *MEMORY[0x1E695D930], @"Not yet implemented", 0);
  objc_exception_throw(v5);
}

- (void)saveClientState:(id)state
{
  v16 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  v9 = 0;
  objc_msgSend_saveClientState_withError_(self, v5, stateCopy, &v9);
  v6 = v9;
  if (v6 && IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      selfCopy = self;
      v12 = 2112;
      v13 = v6;
      v14 = 2112;
      v15 = stateCopy;
      _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "Failed to save client state to %@ with error: %@ client state: %@", buf, 0x20u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (id)_timeoutError
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696ABC0]);
  v3 = *MEMORY[0x1E69A7C30];
  v10 = *MEMORY[0x1E696A278];
  v11[0] = @"Timed out talking to Spotlight.";
  v5 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v4, v11, &v10, 1);
  v7 = objc_msgSend_initWithDomain_code_userInfo_(v2, v6, v3, 2, v5);

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)saveClientState:(id)state withError:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  if (qword_1EBA53B90 != -1)
  {
    sub_1B7CF8D68();
  }

  if (*&qword_1EBA540B0 > 0.0)
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = qword_1EBA540B0;
      _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_DEFAULT, "Beginning simulated hang of %f seconds", &buf, 0xCu);
    }

    usleep((*&qword_1EBA540B0 * 1000000.0));
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = qword_1EBA540B0;
      _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_DEFAULT, "Finished simulated hang of %f seconds", &buf, 0xCu);
    }
  }

  v9 = dispatch_semaphore_create(0);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v24 = 0x3032000000;
  v25 = sub_1B7AE1A34;
  v26 = sub_1B7AE2530;
  v27 = 0;
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = sub_1B7B90180;
  v20 = &unk_1E7CBB600;
  p_buf = &buf;
  v10 = v9;
  v21 = v10;
  objc_msgSend__saveClientState_withCompletion_(self, v11, stateCopy, &v17);
  v12 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v10, v12))
  {
    if (error)
    {
      v15 = objc_msgSend__timeoutError(self, v13, v14, v17, v18, v19, v20);
LABEL_14:
      *error = v15;
    }
  }

  else if (error)
  {
    v15 = *(*(&buf + 1) + 40);
    goto LABEL_14;
  }

  _Block_object_dispose(&buf, 8);
  v16 = *MEMORY[0x1E69E9840];
}

- (void)saveClientState:(id)state withCompletion:(id)completion
{
  completionCopy = completion;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7B90284;
  v9[3] = &unk_1E7CBB328;
  v10 = completionCopy;
  v7 = completionCopy;
  objc_msgSend__saveClientState_withCompletion_(self, v8, state, v9);
}

- (void)_saveClientState:(id)state withCompletion:(id)completion
{
  stateCopy = state;
  completionCopy = completion;
  v8 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x1E695DF30], v7, *MEMORY[0x1E695D930], @"Not yet implemented", 0);
  objc_exception_throw(v8);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v7 = objc_msgSend_stringWithFormat_(v3, v6, @"<%@ %p>", v5, self);

  return v7;
}

@end