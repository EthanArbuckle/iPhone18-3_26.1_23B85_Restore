@interface ACAccount
@end

@implementation ACAccount

void __31__ACAccount_EDAdditions__edLog__block_invoke()
{
  v0 = os_log_create("com.apple.email", "MailAccount");
  v1 = edLog_log;
  edLog_log = v0;
}

void __73__ACAccount_EDAdditions__ed_accountIsPersonalDomainForMailAccount_force___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = [MEMORY[0x1E6959A28] edLog];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(a1 + 32) ef_publicDescription];
      __73__ACAccount_EDAdditions__ed_accountIsPersonalDomainForMailAccount_force___block_invoke_cold_1(v7, v5, buf, v6);
    }
  }

  v8 = [MEMORY[0x1E6959A28] edLog];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [*(a1 + 32) ef_publicDescription];
    v13[0] = 67109378;
    v13[1] = a2 ^ 1;
    v14 = 2114;
    v15 = v9;
    _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_INFO, "Account isNonPersonal=%{BOOL}d, %{public}@", v13, 0x12u);
  }

  v10 = *(a1 + 40);
  v11 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  [v10 finishWithResult:v11 error:v5];

  v12 = *MEMORY[0x1E69E9840];
}

void __73__ACAccount_EDAdditions__ed_accountIsPersonalDomainForMailAccount_force___block_invoke_cold_1(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "Failed to get isPersonal status for %{public}@, error: %{public}@", buf, 0x16u);
}

@end