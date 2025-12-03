@interface FMDDeviceIdentityFactory
- (void)baaIdentityAttestationForSigningRequest:(id)request completion:(id)completion;
- (void)identityForPasscodeActivationUnlockWithContext:(id)context completion:(id)completion;
@end

@implementation FMDDeviceIdentityFactory

- (void)identityForPasscodeActivationUnlockWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  v7 = LogCategory_Unspecified();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DF650000, v7, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: identityForPasscodeActivationUnlockWithContext:completion:", buf, 2u);
  }

  v8 = +[FMNSXPCConnectionCache sharedCache];
  v9 = +[FMNSXPCConnectionConfiguration identityConfiguration];
  v10 = [v8 resumeConnectionWithConfiguration:v9];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __86__FMDDeviceIdentityFactory_identityForPasscodeActivationUnlockWithContext_completion___block_invoke;
  v18[3] = &unk_1E86BD0E0;
  v11 = completionCopy;
  v19 = v11;
  [v10 addFailureBlock:v18];
  remoteObjectProxy = [v10 remoteObjectProxy];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __86__FMDDeviceIdentityFactory_identityForPasscodeActivationUnlockWithContext_completion___block_invoke_3;
  v15[3] = &unk_1E86BD108;
  v16 = v10;
  v17 = v11;
  v13 = v10;
  v14 = v11;
  [remoteObjectProxy identityForPasscodeActivationUnlockWithContext:contextCopy completion:v15];
}

void __86__FMDDeviceIdentityFactory_identityForPasscodeActivationUnlockWithContext_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = LogCategory_Unspecified();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __86__FMDDeviceIdentityFactory_identityForPasscodeActivationUnlockWithContext_completion___block_invoke_cold_1(a2, v4);
  }

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, 0, v5);
  }
}

uint64_t __86__FMDDeviceIdentityFactory_identityForPasscodeActivationUnlockWithContext_completion___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 invalidate];
}

- (void)baaIdentityAttestationForSigningRequest:(id)request completion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  requestCopy = request;
  v7 = LogCategory_Unspecified();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v22 = "[FMDDeviceIdentityFactory baaIdentityAttestationForSigningRequest:completion:]";
    _os_log_impl(&dword_1DF650000, v7, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  v8 = +[FMNSXPCConnectionCache sharedCache];
  v9 = +[FMNSXPCConnectionConfiguration identityConfiguration];
  v10 = [v8 resumeConnectionWithConfiguration:v9];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __79__FMDDeviceIdentityFactory_baaIdentityAttestationForSigningRequest_completion___block_invoke;
  v19[3] = &unk_1E86BD0E0;
  v11 = completionCopy;
  v20 = v11;
  [v10 addFailureBlock:v19];
  remoteObjectProxy = [v10 remoteObjectProxy];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __79__FMDDeviceIdentityFactory_baaIdentityAttestationForSigningRequest_completion___block_invoke_5;
  v16[3] = &unk_1E86BD130;
  v17 = v10;
  v18 = v11;
  v13 = v10;
  v14 = v11;
  [remoteObjectProxy baaIdentityAttestationForSigningRequest:requestCopy completion:v16];

  v15 = *MEMORY[0x1E69E9840];
}

void __79__FMDDeviceIdentityFactory_baaIdentityAttestationForSigningRequest_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = LogCategory_Unspecified();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __79__FMDDeviceIdentityFactory_baaIdentityAttestationForSigningRequest_completion___block_invoke_cold_1(a2, v4);
  }

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, 0, v5);
  }
}

uint64_t __79__FMDDeviceIdentityFactory_baaIdentityAttestationForSigningRequest_completion___block_invoke_5(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 invalidate];
}

void __86__FMDDeviceIdentityFactory_identityForPasscodeActivationUnlockWithContext_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_1DF650000, a2, OS_LOG_TYPE_ERROR, "XPC error for identityForPasscodeActivationUnlockWithContext:completion: %li", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __79__FMDDeviceIdentityFactory_baaIdentityAttestationForSigningRequest_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 136315394;
  v4 = "[FMDDeviceIdentityFactory baaIdentityAttestationForSigningRequest:completion:]_block_invoke";
  v5 = 2048;
  v6 = a1;
  _os_log_error_impl(&dword_1DF650000, a2, OS_LOG_TYPE_ERROR, "XPC error for %s %li", &v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

@end