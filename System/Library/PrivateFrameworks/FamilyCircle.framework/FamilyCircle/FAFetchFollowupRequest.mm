@interface FAFetchFollowupRequest
- (FAFetchFollowupRequest)initWithAltDSID:(id)a3;
- (void)startRequestWithCompletionHandler:(id)a3;
@end

@implementation FAFetchFollowupRequest

- (FAFetchFollowupRequest)initWithAltDSID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FAFetchFollowupRequest;
  v6 = [(FAFamilyCircleRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_altDSID, a3);
  }

  return v7;
}

- (void)startRequestWithCompletionHandler:(id)a3
{
  v4 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__FAFetchFollowupRequest_startRequestWithCompletionHandler___block_invoke;
  v9[3] = &unk_1E7CA46D8;
  v10 = v4;
  v5 = v4;
  v6 = [(FAFamilyCircleRequest *)self serviceRemoteObjectWithErrorHandler:v9];
  altDSID = self->_altDSID;
  v8 = [(FAFamilyCircleRequest *)self requestOptions];
  [v6 fetchFollowupsWithAltDSID:altDSID options:v8 replyBlock:v5];
}

void __60__FAFetchFollowupRequest_startRequestWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _FALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1B70B0000, v4, OS_LOG_TYPE_DEFAULT, "FAFetchFollowupRequest: Error from service - %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

@end