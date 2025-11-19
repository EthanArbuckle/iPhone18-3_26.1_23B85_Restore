@interface ACAccount(EDAdditions)
+ (id)edLog;
- (id)ed_accountIsPersonalDomainForMailAccount:()EDAdditions force:;
@end

@implementation ACAccount(EDAdditions)

+ (id)edLog
{
  if (edLog_onceToken != -1)
  {
    +[ACAccount(EDAdditions) edLog];
  }

  v1 = edLog_log;

  return v1;
}

- (id)ed_accountIsPersonalDomainForMailAccount:()EDAdditions force:
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [v7 emailAddressStrings];
  v9 = [v8 firstObject];

  if (!v9)
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:a1 file:@"EDACAccountAdditions.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"emailAddress"}];
  }

  v10 = [MEMORY[0x1E699B868] promise];
  v31 = 0;
  v32 = &v31;
  v33 = 0x2050000000;
  v11 = getMCCSecretAgentControllerClass_softClass;
  v34 = getMCCSecretAgentControllerClass_softClass;
  if (!getMCCSecretAgentControllerClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&v36 = 3221225472;
    *(&v36 + 1) = __getMCCSecretAgentControllerClass_block_invoke;
    v37 = &unk_1E8250000;
    v38 = &v31;
    __getMCCSecretAgentControllerClass_block_invoke(buf);
    v11 = v32[3];
  }

  v12 = v11;
  _Block_object_dispose(&v31, 8);
  v13 = objc_alloc_init(v11);
  v14 = [a1 ed_accountIsNonPersonal];
  if (!v14 || a4)
  {
    v18 = [objc_alloc(MEMORY[0x1E699B240]) initWithString:v9];
    v19 = v18;
    if (v18)
    {
      v20 = [v18 domain];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __73__ACAccount_EDAdditions__ed_accountIsPersonalDomainForMailAccount_force___block_invoke;
      v28[3] = &unk_1E824FFD8;
      v29 = v7;
      v30 = v10;
      [v13 isPersonalDomain:v20 completion:v28];

      v21 = v29;
    }

    else
    {
      v22 = [MEMORY[0x1E6959A28] edLog];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = [v7 ef_publicDescription];
        [(ACAccount(EDAdditions) *)v23 ed_accountIsPersonalDomainForMailAccount:buf force:v22];
      }

      v21 = [MEMORY[0x1E696ABC0] em_internalErrorWithReason:@"Failed to parse email address from ACAccount"];
      [v10 finishWithError:v21];
    }
  }

  else
  {
    v15 = [MEMORY[0x1E6959A28] edLog];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [v14 BOOLValue];
      v17 = [v7 ef_publicDescription];
      *buf = 67109378;
      *&buf[4] = v16;
      LOWORD(v36) = 2114;
      *(&v36 + 2) = v17;
      _os_log_impl(&dword_1C61EF000, v15, OS_LOG_TYPE_INFO, "Account isNonPersonal=%{BOOL}d %{public}@", buf, 0x12u);
    }

    [v10 finishWithResult:v14];
  }

  v24 = [v10 future];

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

- (void)ed_accountIsPersonalDomainForMailAccount:()EDAdditions force:.cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "Failed to parse email address for account %{public}@", buf, 0xCu);
}

@end