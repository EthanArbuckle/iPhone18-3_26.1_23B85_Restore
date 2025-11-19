@interface FALaunchOutOfProcessRequest
- (void)launchOutOfProcessUIWithOptions:(id)a3 completion:(id)a4;
@end

@implementation FALaunchOutOfProcessRequest

- (void)launchOutOfProcessUIWithOptions:(id)a3 completion:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__FALaunchOutOfProcessRequest_launchOutOfProcessUIWithOptions_completion___block_invoke;
  v10[3] = &unk_1E7CA46D8;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(FAFamilyCircleRequest *)self serviceRemoteObjectWithErrorHandler:v10];
  [v9 launchOutOfProcessFamilyWithOptions:v8 completion:v7];
}

void __74__FALaunchOutOfProcessRequest_launchOutOfProcessUIWithOptions_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _FALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1B70B0000, v4, OS_LOG_TYPE_DEFAULT, "FARegisterPushTokenRequest: Error from service - %@", &v7, 0xCu);
  }

  if (*(a1 + 32))
  {
    v5 = [[FACircleStateResponse alloc] initWithLoadSuccess:0 error:v3 userInfo:0];
    (*(*(a1 + 32) + 16))();
  }

  v6 = *MEMORY[0x1E69E9840];
}

@end