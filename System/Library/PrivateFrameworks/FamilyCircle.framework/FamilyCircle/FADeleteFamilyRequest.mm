@interface FADeleteFamilyRequest
- (FADeleteFamilyRequest)init;
- (void)startRequestWithCompletionHandler:(id)handler;
@end

@implementation FADeleteFamilyRequest

- (FADeleteFamilyRequest)init
{
  v6.receiver = self;
  v6.super_class = FADeleteFamilyRequest;
  v2 = [(FAFamilyCircleRequest *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (void)startRequestWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__FADeleteFamilyRequest_startRequestWithCompletionHandler___block_invoke;
  v10[3] = &unk_1E7CA46D8;
  v5 = handlerCopy;
  v11 = v5;
  v6 = [(FAFamilyCircleRequest *)self serviceRemoteObjectWithErrorHandler:v10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__FADeleteFamilyRequest_startRequestWithCompletionHandler___block_invoke_1;
  v8[3] = &unk_1E7CA47F0;
  v9 = v5;
  v7 = v5;
  [v6 removeFamilyWithReplyBlock:v8];
}

void __59__FADeleteFamilyRequest_startRequestWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _FALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1B70B0000, v4, OS_LOG_TYPE_DEFAULT, "FARemoveFamilyMemberRequest: Error from service - %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

@end