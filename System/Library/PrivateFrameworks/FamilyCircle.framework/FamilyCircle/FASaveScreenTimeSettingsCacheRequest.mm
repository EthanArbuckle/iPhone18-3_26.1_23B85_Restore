@interface FASaveScreenTimeSettingsCacheRequest
- (FASaveScreenTimeSettingsCacheRequest)initWithFamilyMemberDSID:(id)d screentimeObject:(id)object;
- (void)startRequestWithCompletionHandler:(id)handler;
@end

@implementation FASaveScreenTimeSettingsCacheRequest

- (FASaveScreenTimeSettingsCacheRequest)initWithFamilyMemberDSID:(id)d screentimeObject:(id)object
{
  dCopy = d;
  objectCopy = object;
  v12.receiver = self;
  v12.super_class = FASaveScreenTimeSettingsCacheRequest;
  v9 = [(FAFamilyCircleRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_memberDSID, d);
    objc_storeStrong(&v10->_object, object);
  }

  return v10;
}

- (void)startRequestWithCompletionHandler:(id)handler
{
  v16 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __74__FASaveScreenTimeSettingsCacheRequest_startRequestWithCompletionHandler___block_invoke;
  v12[3] = &unk_1E7CA46D8;
  v13 = handlerCopy;
  v5 = handlerCopy;
  v6 = [(FAFamilyCircleRequest *)self serviceRemoteObjectWithErrorHandler:v12];
  v7 = _FALogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1B70B0000, v7, OS_LOG_TYPE_DEFAULT, "Starting caching of object: %@", buf, 0xCu);
  }

  object = [(FASaveScreenTimeSettingsCacheRequest *)self object];
  memberDSID = [(FASaveScreenTimeSettingsCacheRequest *)self memberDSID];
  requestOptions = [(FAFamilyCircleRequest *)self requestOptions];
  [v6 cacheObjectSettings:object dsid:memberDSID options:requestOptions replyBlock:v5];

  v11 = *MEMORY[0x1E69E9840];
}

void __74__FASaveScreenTimeSettingsCacheRequest_startRequestWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _FALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[FASaveScreenTimeSettingsCacheRequest startRequestWithCompletionHandler:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_1B70B0000, v4, OS_LOG_TYPE_DEFAULT, "%s: Error from service - %@", &v6, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

@end