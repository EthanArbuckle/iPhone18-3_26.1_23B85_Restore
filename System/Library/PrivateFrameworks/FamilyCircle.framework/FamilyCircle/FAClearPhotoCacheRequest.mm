@interface FAClearPhotoCacheRequest
- (void)startRequestWithCompletionHandler:(id)a3;
@end

@implementation FAClearPhotoCacheRequest

- (void)startRequestWithCompletionHandler:(id)a3
{
  v4 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__FAClearPhotoCacheRequest_startRequestWithCompletionHandler___block_invoke;
  v10[3] = &unk_1E7CA46D8;
  v5 = v4;
  v11 = v5;
  v6 = [(FAFamilyCircleRequest *)self serviceRemoteObjectWithErrorHandler:v10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62__FAClearPhotoCacheRequest_startRequestWithCompletionHandler___block_invoke_17;
  v8[3] = &unk_1E7CA46D8;
  v9 = v5;
  v7 = v5;
  [v6 clearPhotoCacheWithReplyBlock:v8];
}

void __62__FAClearPhotoCacheRequest_startRequestWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _FALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1B70B0000, v4, OS_LOG_TYPE_DEFAULT, "FAClearPhotoCacheRequest: Error from service - %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

void __62__FAClearPhotoCacheRequest_startRequestWithCompletionHandler___block_invoke_17(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _FALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1B70B0000, v4, OS_LOG_TYPE_DEFAULT, "Cleared photos cache with error: %@", &v7, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

@end