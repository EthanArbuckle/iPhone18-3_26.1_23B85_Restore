@interface _IMDLegacySpotlightClientStateManager
- (_IMDLegacySpotlightClientStateManager)init;
- (void)_currentClientStateWithCompletion:(id)a3;
- (void)_saveClientState:(id)a3 withCompletion:(id)a4;
@end

@implementation _IMDLegacySpotlightClientStateManager

- (_IMDLegacySpotlightClientStateManager)init
{
  v8.receiver = self;
  v8.super_class = _IMDLegacySpotlightClientStateManager;
  v4 = [(_IMDLegacySpotlightClientStateManager *)&v8 init];
  if (v4 && objc_msgSend__needsMigrationToDefaults(MEMORY[0x1E69A82A8], v2, v3))
  {
    v5 = objc_alloc_init(_IMDModernSpotlightClientStateManager);
    objc_msgSend__migrateClientStateFromManager_(v4, v6, v5);
  }

  return v4;
}

- (void)_currentClientStateWithCompletion:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = sub_1B7B906BC();
  if (v4)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "Simulating error during fetch due to defaults", &v12, 2u);
      }
    }

    v3[2](v3, 0, v4);
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x1E69A82A8]);
    inited = objc_msgSend_initImportingFromDefaults(v6, v7, v8);
    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = inited;
      _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_INFO, "Current client state: %@", &v12, 0xCu);
    }

    (v3)[2](v3, inited, 0);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_saveClientState:(id)a3 withCompletion:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  IMDIndexingAssertClientRequestQueue();
  v7 = IMLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v13 = 138412290;
    v14 = v5;
    _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "Saving client state: %@", &v13, 0xCu);
  }

  v10 = sub_1B7B90D14();
  if (v10)
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_INFO, "Simulating error during save due to defaults", &v13, 2u);
      }
    }

    v6[2](v6, v10);
  }

  else
  {
    objc_msgSend__writeToDefaults(v5, v8, v9);
    notify_post("com.apple.imdpersistenceagent.notification.spotlightclientstateupdated");
    v6[2](v6, 0);
  }

  v12 = *MEMORY[0x1E69E9840];
}

@end