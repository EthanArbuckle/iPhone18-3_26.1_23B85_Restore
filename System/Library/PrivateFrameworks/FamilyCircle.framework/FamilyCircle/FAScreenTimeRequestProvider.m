@interface FAScreenTimeRequestProvider
- (BOOL)areContactsManagedForDSID:(id)a3;
- (BOOL)isScreenTimeSetupForDSID:(id)a3;
- (void)cacheScreenTimeSettingToDiskWithDSID:(id)a3 screentimeObject:(id)a4 completionHandler:(id)a5;
- (void)enableScreenTimeSettingsForDSID:(id)a3 screentimeObject:(id)a4 completionHandler:(id)a5;
- (void)forceRefreshScreenTimeForDSID:(id)a3 completionHandler:(id)a4;
@end

@implementation FAScreenTimeRequestProvider

- (void)cacheScreenTimeSettingToDiskWithDSID:(id)a3 screentimeObject:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[FASaveScreenTimeSettingsCacheRequest alloc] initWithFamilyMemberDSID:v9 screentimeObject:v8];

  [(FASaveScreenTimeSettingsCacheRequest *)v10 startRequestWithCompletionHandler:v7];
}

- (void)enableScreenTimeSettingsForDSID:(id)a3 screentimeObject:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[FAEnableScreenTimeSettingsRequest alloc] initWithFamilyMemberDSID:v9 screentimeModelCache:v8];

  [(FAEnableScreenTimeSettingsRequest *)v10 startRequestWithCompletionHandler:v7];
}

- (void)forceRefreshScreenTimeForDSID:(id)a3 completionHandler:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = _FALogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138477827;
    *(&buf + 4) = v5;
    _os_log_impl(&dword_1B70B0000, v7, OS_LOG_TYPE_DEFAULT, "Force screentime refresh dsid: %{private}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__8;
  v26 = __Block_byref_object_dispose__8;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2050000000;
  v8 = getSTPrivateServiceClientClass_softClass;
  v22 = getSTPrivateServiceClientClass_softClass;
  if (!getSTPrivateServiceClientClass_softClass)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __getSTPrivateServiceClientClass_block_invoke;
    v18[3] = &unk_1E7CA4F30;
    v18[4] = &v19;
    __getSTPrivateServiceClientClass_block_invoke(v18);
    v8 = v20[3];
  }

  v9 = v8;
  _Block_object_dispose(&v19, 8);
  v27 = objc_alloc_init(v8);
  v10 = *(*(&buf + 1) + 40);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __79__FAScreenTimeRequestProvider_forceRefreshScreenTimeForDSID_completionHandler___block_invoke;
  v14[3] = &unk_1E7CA5860;
  v11 = v5;
  v15 = v11;
  v12 = v6;
  v16 = v12;
  p_buf = &buf;
  [v10 forceFamilyFetchWithCompletionHandler:v14];

  _Block_object_dispose(&buf, 8);
  v13 = *MEMORY[0x1E69E9840];
}

void __79__FAScreenTimeRequestProvider_forceRefreshScreenTimeForDSID_completionHandler___block_invoke(void *a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _FALogSystem();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __79__FAScreenTimeRequestProvider_forceRefreshScreenTimeForDSID_completionHandler___block_invoke_cold_1(a1, v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a1[4];
    v10 = 138477827;
    v11 = v6;
    _os_log_impl(&dword_1B70B0000, v5, OS_LOG_TYPE_DEFAULT, "Completed screentime refresh. It is now aware of family member with dsid: %{private}@", &v10, 0xCu);
  }

  (*(a1[5] + 16))();
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)isScreenTimeSetupForDSID:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(getSTUserIDClass()) initWithDSID:v3];

  getSTSetupClientClass();
  v5 = objc_opt_new();
  v9 = 0;
  v6 = [v5 currentConfigurationForUser:v4 error:&v9];
  v7 = [v6 screenTimeState] == 1;

  return v7;
}

- (BOOL)areContactsManagedForDSID:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(getSTUserIDClass()) initWithDSID:v3];

  getSTSetupClientClass();
  v5 = objc_opt_new();
  v9 = 0;
  v6 = [v5 currentConfigurationForUser:v4 error:&v9];
  v7 = [v6 contactManagementState] == 2;

  return v7;
}

void __79__FAScreenTimeRequestProvider_forceRefreshScreenTimeForDSID_completionHandler___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v5 = 138478083;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_1B70B0000, log, OS_LOG_TYPE_ERROR, "Error force refreshing screentime for %{private}@ %@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end