@interface _IMDModernSpotlightClientStateManager
- (_IMDModernSpotlightClientStateManager)init;
- (id)_missingSpotlightIndexError;
- (void)_currentClientStateWithCompletion:(id)completion;
- (void)_saveClientState:(id)state withCompletion:(id)completion;
@end

@implementation _IMDModernSpotlightClientStateManager

- (_IMDModernSpotlightClientStateManager)init
{
  v8.receiver = self;
  v8.super_class = _IMDModernSpotlightClientStateManager;
  v4 = [(_IMDModernSpotlightClientStateManager *)&v8 init];
  if (v4 && objc_msgSend__needsMigrationFromDefaults(MEMORY[0x1E69A82A8], v2, v3))
  {
    v5 = objc_alloc_init(_IMDLegacySpotlightClientStateManager);
    objc_msgSend__migrateClientStateFromManager_(v4, v6, v5);
  }

  return v4;
}

- (id)_missingSpotlightIndexError
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696ABC0]);
  v3 = *MEMORY[0x1E69A7C30];
  v10 = *MEMORY[0x1E696A278];
  v11[0] = @"Failed to open the Spotlight index.";
  v5 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v4, v11, &v10, 1);
  v7 = objc_msgSend_initWithDomain_code_userInfo_(v2, v6, v3, 1, v5);

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)_currentClientStateWithCompletion:(id)completion
{
  completionCopy = completion;
  v7 = IMCoreSpotlightCriticalIndex();
  if (v7)
  {
    v8 = sub_1B7B906BC();
    if (!v8)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = sub_1B7B907C8;
      v11[3] = &unk_1E7CBB628;
      v12 = completionCopy;
      objc_msgSend_fetchLastClientStateWithCompletionHandler_(v7, v10, v11);

      goto LABEL_10;
    }

    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_INFO, "Simulating error during fetch due to defaults", buf, 2u);
      }
    }
  }

  else
  {
    v8 = objc_msgSend__missingSpotlightIndexError(self, v5, v6);
  }

  (*(completionCopy + 2))(completionCopy, 0, v8);
LABEL_10:
}

- (void)_saveClientState:(id)state withCompletion:(id)completion
{
  v28 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  completionCopy = completion;
  IMDIndexingAssertClientRequestQueue();
  v8 = IMLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v27 = stateCopy;
    _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "Saving client state: %@", buf, 0xCu);
  }

  v9 = IMCoreSpotlightIndex();
  if (v9)
  {
    v11 = sub_1B7B90D14();
    if (v11)
    {
      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_INFO, "Simulating error during save due to defaults", buf, 2u);
        }
      }

      completionCopy[2](completionCopy, v11);
    }

    else
    {
      v25 = 0;
      v16 = objc_msgSend_dataWithError_(stateCopy, v10, &v25);
      v11 = v25;
      if (v11)
      {
        if (IMOSLoggingEnabled())
        {
          v19 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v27 = v11;
            _os_log_impl(&dword_1B7AD5000, v19, OS_LOG_TYPE_INFO, "Failed to serialize client state: %@", buf, 0xCu);
          }
        }

        completionCopy[2](completionCopy, v11);
      }

      else
      {
        objc_msgSend_beginIndexBatch(v9, v17, v18);
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = sub_1B7B90E20;
        v22[3] = &unk_1E7CBB398;
        v23 = 0;
        v24 = completionCopy;
        objc_msgSend_endIndexBatchWithClientState_completionHandler_(v9, v20, v16, v22);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v15, OS_LOG_TYPE_INFO, "Couldn't open Spotlight index to save client state", buf, 2u);
      }
    }

    v11 = objc_msgSend__missingSpotlightIndexError(self, v13, v14);
    completionCopy[2](completionCopy, v11);
  }

  v21 = *MEMORY[0x1E69E9840];
}

@end