@interface FAEnableScreenTimeSettingsRequest
- (FAEnableScreenTimeSettingsRequest)initWithFamilyMemberDSID:(id)d screentimeModelCache:(id)cache;
- (id)enableSettings:(id *)settings;
- (void)startRequestWithCompletionHandler:(id)handler;
@end

@implementation FAEnableScreenTimeSettingsRequest

- (FAEnableScreenTimeSettingsRequest)initWithFamilyMemberDSID:(id)d screentimeModelCache:(id)cache
{
  dCopy = d;
  cacheCopy = cache;
  v12.receiver = self;
  v12.super_class = FAEnableScreenTimeSettingsRequest;
  v9 = [(FAFamilyCircleRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_memberDSID, d);
    objc_storeStrong(&v10->_screentimeModelCache, cache);
  }

  return v10;
}

- (void)startRequestWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __71__FAEnableScreenTimeSettingsRequest_startRequestWithCompletionHandler___block_invoke;
  v11[3] = &unk_1E7CA46D8;
  v12 = handlerCopy;
  v5 = handlerCopy;
  v6 = [(FAFamilyCircleRequest *)self serviceRemoteObjectWithErrorHandler:v11];
  v7 = _FALogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [FAEnableScreenTimeSettingsRequest startRequestWithCompletionHandler:v7];
  }

  memberDSID = [(FAEnableScreenTimeSettingsRequest *)self memberDSID];
  screentimeModelCache = [(FAEnableScreenTimeSettingsRequest *)self screentimeModelCache];
  requestOptions = [(FAFamilyCircleRequest *)self requestOptions];
  [v6 enableSettingsForMemberDSID:memberDSID screentimeModelCache:screentimeModelCache options:requestOptions replyBlock:v5];
}

void __71__FAEnableScreenTimeSettingsRequest_startRequestWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _FALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[FAEnableScreenTimeSettingsRequest startRequestWithCompletionHandler:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_1B70B0000, v4, OS_LOG_TYPE_DEFAULT, "%s: Error from service - %@", &v6, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

- (id)enableSettings:(id *)settings
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__5;
  v23 = __Block_byref_object_dispose__5;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__5;
  v17 = __Block_byref_object_dispose__5;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52__FAEnableScreenTimeSettingsRequest_enableSettings___block_invoke;
  v12[3] = &unk_1E7CA5670;
  v12[4] = &v19;
  v5 = [(FAFamilyCircleRequest *)self synchronousRemoteObjectWithErrorHandler:v12];
  memberDSID = [(FAEnableScreenTimeSettingsRequest *)self memberDSID];
  screentimeModelCache = [(FAEnableScreenTimeSettingsRequest *)self screentimeModelCache];
  requestOptions = [(FAFamilyCircleRequest *)self requestOptions];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52__FAEnableScreenTimeSettingsRequest_enableSettings___block_invoke_2;
  v11[3] = &unk_1E7CA5698;
  v11[4] = &v13;
  v11[5] = &v19;
  [v5 enableSettingsForMemberDSID:memberDSID screentimeModelCache:screentimeModelCache options:requestOptions replyBlock:v11];

  if (settings)
  {
    *settings = v20[5];
  }

  v9 = v14[5];

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);

  return v9;
}

void __52__FAEnableScreenTimeSettingsRequest_enableSettings___block_invoke_2(uint64_t a1, void *a2, void *a3)
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