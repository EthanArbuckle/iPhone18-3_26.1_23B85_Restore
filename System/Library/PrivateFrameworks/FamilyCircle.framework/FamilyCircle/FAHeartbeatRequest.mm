@interface FAHeartbeatRequest
- (void)startRequestWithCompletionHandler:(id)handler;
@end

@implementation FAHeartbeatRequest

- (void)startRequestWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__FAHeartbeatRequest_startRequestWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7CA46D8;
  v8 = handlerCopy;
  v5 = handlerCopy;
  v6 = [(FAFamilyCircleRequest *)self serviceRemoteObjectWithErrorHandler:v7];
  [v6 runHeartbeatWithOptions:0 replyBlock:v5];
}

void __56__FAHeartbeatRequest_startRequestWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
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