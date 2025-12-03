@interface FAUpdateFamilyInviteStatusRequest
- (FAUpdateFamilyInviteStatusRequest)initWithInviteCode:(id)code inviteStatus:(int64_t)status responseFormat:(int64_t)format additionalRequestParameters:(id)parameters;
- (void)startRequestWithCompletionHandler:(id)handler;
@end

@implementation FAUpdateFamilyInviteStatusRequest

- (FAUpdateFamilyInviteStatusRequest)initWithInviteCode:(id)code inviteStatus:(int64_t)status responseFormat:(int64_t)format additionalRequestParameters:(id)parameters
{
  codeCopy = code;
  parametersCopy = parameters;
  v16.receiver = self;
  v16.super_class = FAUpdateFamilyInviteStatusRequest;
  v13 = [(FAFamilyCircleRequest *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_inviteCode, code);
    v14->_inviteStatus = status;
    v14->_responseFormat = format;
    objc_storeStrong(&v14->_additionalRequestParameters, parameters);
  }

  return v14;
}

- (void)startRequestWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __71__FAUpdateFamilyInviteStatusRequest_startRequestWithCompletionHandler___block_invoke;
  v15[3] = &unk_1E7CA46D8;
  v5 = handlerCopy;
  v16 = v5;
  v6 = [(FAFamilyCircleRequest *)self serviceRemoteObjectWithErrorHandler:v15];
  inviteStatus = [(FAUpdateFamilyInviteStatusRequest *)self inviteStatus];
  inviteCode = [(FAUpdateFamilyInviteStatusRequest *)self inviteCode];
  requestOptions = [(FAFamilyCircleRequest *)self requestOptions];
  responseFormat = [(FAUpdateFamilyInviteStatusRequest *)self responseFormat];
  additionalRequestParameters = [(FAUpdateFamilyInviteStatusRequest *)self additionalRequestParameters];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __71__FAUpdateFamilyInviteStatusRequest_startRequestWithCompletionHandler___block_invoke_17;
  v13[3] = &unk_1E7CA47F0;
  v14 = v5;
  v12 = v5;
  [v6 updateFamilyInviteStatusWith:inviteStatus inviteCode:inviteCode options:requestOptions responseFormat:responseFormat additionalRequestParameters:additionalRequestParameters replyBlock:v13];
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