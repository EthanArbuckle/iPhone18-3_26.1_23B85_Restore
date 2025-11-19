@interface IMAutomationBatchMessageOperations
- (id)beginRecordingMessagesToReplayDatabase:(id)a3 error:(id *)a4;
- (id)sendMessagesfromReplayDatabase:(id)a3 userInfo:(id)a4 error:(id *)a5;
- (id)stopRecordingDatabaseError:(id *)a3;
@end

@implementation IMAutomationBatchMessageOperations

- (id)sendMessagesfromReplayDatabase:(id)a3 userInfo:(id)a4 error:(id *)a5
{
  v28[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v9 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v7, v8);
  v11 = objc_msgSend_fileExistsAtPath_(v9, v10, v6);

  if (v11)
  {
    v14 = objc_msgSend_sharedController(IMDaemonController, v12, v13);
    v17 = objc_msgSend_remoteDaemon(v14, v15, v16);
    objc_msgSend_replayMessagesFromDatabasePath_(v17, v18, v6);
  }

  else
  {
    v19 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v12, @"Requested to replay a database that does not exist at path: %@", v6);
    v21 = v19;
    if (a5)
    {
      v27 = v19;
      v28[0] = *MEMORY[0x1E696A578];
      v22 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v20, v28, &v27, 1);
      v23 = objc_alloc(MEMORY[0x1E696ABC0]);
      *a5 = objc_msgSend_initWithDomain_code_userInfo_(v23, v24, @"com.messages.automation", 1, v22);
    }
  }

  v25 = *MEMORY[0x1E69E9840];
  return 0;
}

- (id)beginRecordingMessagesToReplayDatabase:(id)a3 error:(id *)a4
{
  v4 = a3;
  v7 = objc_msgSend_sharedController(IMDaemonController, v5, v6);
  v10 = objc_msgSend_remoteDaemon(v7, v8, v9);
  objc_msgSend_beginRecordingMessagesToReplayDatabase_(v10, v11, v4);

  return 0;
}

- (id)stopRecordingDatabaseError:(id *)a3
{
  v3 = objc_msgSend_sharedController(IMDaemonController, a2, a3);
  v6 = objc_msgSend_remoteDaemon(v3, v4, v5);
  objc_msgSend_stopRecordingMessagesReplayDatabase(v6, v7, v8);

  return 0;
}

@end