@interface FASettingProtoAccountRestrictionsRequest
- (void)setRestrictionsWithCompletion:(id)a3;
@end

@implementation FASettingProtoAccountRestrictionsRequest

- (void)setRestrictionsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(FAFamilyCircleRequest *)self serviceRemoteObjectWithErrorHandler:&__block_literal_global_15];
  [v5 setRestrictionsForProtoAccountWithCompletion:v4];
}

void __74__FASettingProtoAccountRestrictionsRequest_setRestrictionsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _FAAgeAttestationLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __74__FASettingProtoAccountRestrictionsRequest_setRestrictionsWithCompletion___block_invoke_cold_1(v2, v3);
  }
}

void __74__FASettingProtoAccountRestrictionsRequest_setRestrictionsWithCompletion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B70B0000, a2, OS_LOG_TYPE_ERROR, "Failed to create a connection with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end