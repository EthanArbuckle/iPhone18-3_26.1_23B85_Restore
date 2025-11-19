@interface FAUpdateFamilyInviteStatusRequest
- (FAUpdateFamilyInviteStatusRequest)initWithInviteCode:(id)a3 inviteStatus:(int64_t)a4 responseFormat:(int64_t)a5 additionalRequestParameters:(id)a6;
- (void)startRequestWithCompletionHandler:(id)a3;
@end

@implementation FAUpdateFamilyInviteStatusRequest

- (FAUpdateFamilyInviteStatusRequest)initWithInviteCode:(id)a3 inviteStatus:(int64_t)a4 responseFormat:(int64_t)a5 additionalRequestParameters:(id)a6
{
  v11 = a3;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = FAUpdateFamilyInviteStatusRequest;
  v13 = [(FAFamilyCircleRequest *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_inviteCode, a3);
    v14->_inviteStatus = a4;
    v14->_responseFormat = a5;
    objc_storeStrong(&v14->_additionalRequestParameters, a6);
  }

  return v14;
}

- (void)startRequestWithCompletionHandler:(id)a3
{
  v4 = a3;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __71__FAUpdateFamilyInviteStatusRequest_startRequestWithCompletionHandler___block_invoke;
  v15[3] = &unk_1E7CA46D8;
  v5 = v4;
  v16 = v5;
  v6 = [(FAFamilyCircleRequest *)self serviceRemoteObjectWithErrorHandler:v15];
  v7 = [(FAUpdateFamilyInviteStatusRequest *)self inviteStatus];
  v8 = [(FAUpdateFamilyInviteStatusRequest *)self inviteCode];
  v9 = [(FAFamilyCircleRequest *)self requestOptions];
  v10 = [(FAUpdateFamilyInviteStatusRequest *)self responseFormat];
  v11 = [(FAUpdateFamilyInviteStatusRequest *)self additionalRequestParameters];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __71__FAUpdateFamilyInviteStatusRequest_startRequestWithCompletionHandler___block_invoke_17;
  v13[3] = &unk_1E7CA47F0;
  v14 = v5;
  v12 = v5;
  [v6 updateFamilyInviteStatusWith:v7 inviteCode:v8 options:v9 responseFormat:v10 additionalRequestParameters:v11 replyBlock:v13];
}

void __71__FAUpdateFamilyInviteStatusRequest_startRequestWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _FALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1B70B0000, v4, OS_LOG_TYPE_DEFAULT, "FAUpdateFamilyInviteStatusRequest: Error from service - %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

@end