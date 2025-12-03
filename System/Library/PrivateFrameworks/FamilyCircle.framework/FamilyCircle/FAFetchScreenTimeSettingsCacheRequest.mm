@interface FAFetchScreenTimeSettingsCacheRequest
- (FAFetchScreenTimeSettingsCacheRequest)initWithFamilyMemberDSID:(id)d;
- (id)enableSettings:(id *)settings;
- (void)startRequestWithCompletionHandler:(id)handler;
@end

@implementation FAFetchScreenTimeSettingsCacheRequest

- (FAFetchScreenTimeSettingsCacheRequest)initWithFamilyMemberDSID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = FAFetchScreenTimeSettingsCacheRequest;
  v6 = [(FAFamilyCircleRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_memberDSID, d);
  }

  return v7;
}

- (void)startRequestWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __75__FAFetchScreenTimeSettingsCacheRequest_startRequestWithCompletionHandler___block_invoke;
  v9[3] = &unk_1E7CA46D8;
  v10 = handlerCopy;
  v5 = handlerCopy;
  v6 = [(FAFamilyCircleRequest *)self serviceRemoteObjectWithErrorHandler:v9];
  memberDSID = [(FAFetchScreenTimeSettingsCacheRequest *)self memberDSID];
  requestOptions = [(FAFamilyCircleRequest *)self requestOptions];
  [v6 enableSettingsForMemberDSID:memberDSID options:requestOptions replyBlock:v5];
}

void __75__FAFetchScreenTimeSettingsCacheRequest_startRequestWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _FALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[FAFetchScreenTimeSettingsCacheRequest startRequestWithCompletionHandler:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_1B70B0000, v4, OS_LOG_TYPE_DEFAULT, "%s: Error from service - %@", &v6, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

- (id)enableSettings:(id *)settings
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__4;
  v22 = __Block_byref_object_dispose__4;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__4;
  v16 = __Block_byref_object_dispose__4;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __56__FAFetchScreenTimeSettingsCacheRequest_enableSettings___block_invoke;
  v11[3] = &unk_1E7CA5670;
  v11[4] = &v18;
  v5 = [(FAFamilyCircleRequest *)self synchronousRemoteObjectWithErrorHandler:v11];
  memberDSID = [(FAFetchScreenTimeSettingsCacheRequest *)self memberDSID];
  requestOptions = [(FAFamilyCircleRequest *)self requestOptions];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__FAFetchScreenTimeSettingsCacheRequest_enableSettings___block_invoke_2;
  v10[3] = &unk_1E7CA5698;
  v10[4] = &v12;
  v10[5] = &v18;
  [v5 enableSettingsForMemberDSID:memberDSID options:requestOptions replyBlock:v10];

  if (settings)
  {
    *settings = v19[5];
  }

  v8 = v13[5];

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);

  return v8;
}

void __56__FAFetchScreenTimeSettingsCacheRequest_enableSettings___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

@end