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
  emailAddressStrings = [v7 emailAddressStrings];
  firstObject = [emailAddressStrings firstObject];

  if (!firstObject)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDACAccountAdditions.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"emailAddress"}];
  }

  promise = [MEMORY[0x1E699B868] promise];
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
  ed_accountIsNonPersonal = [self ed_accountIsNonPersonal];
  if (!ed_accountIsNonPersonal || a4)
  {
    v18 = [objc_alloc(MEMORY[0x1E699B240]) initWithString:firstObject];
    v19 = v18;
    if (v18)
    {
      domain = [v18 domain];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __73__ACAccount_EDAdditions__ed_accountIsPersonalDomainForMailAccount_force___block_invoke;
      v28[3] = &unk_1E824FFD8;
      v29 = v7;
      v30 = promise;
      [v13 isPersonalDomain:domain completion:v28];

      v21 = v29;
    }

    else
    {
      edLog = [MEMORY[0x1E6959A28] edLog];
      if (os_log_type_enabled(edLog, OS_LOG_TYPE_ERROR))
      {
        ef_publicDescription = [v7 ef_publicDescription];
        [(ACAccount(EDAdditions) *)ef_publicDescription ed_accountIsPersonalDomainForMailAccount:buf force:edLog];
      }

      v21 = [MEMORY[0x1E696ABC0] em_internalErrorWithReason:@"Failed to parse email address from ACAccount"];
      [promise finishWithError:v21];
    }
  }

  else
  {
    edLog2 = [MEMORY[0x1E6959A28] edLog];
    if (os_log_type_enabled(edLog2, OS_LOG_TYPE_INFO))
    {
      bOOLValue = [ed_accountIsNonPersonal BOOLValue];
      ef_publicDescription2 = [v7 ef_publicDescription];
      *buf = 67109378;
      *&buf[4] = bOOLValue;
      LOWORD(v36) = 2114;
      *(&v36 + 2) = ef_publicDescription2;
      _os_log_impl(&dword_1C61EF000, edLog2, OS_LOG_TYPE_INFO, "Account isNonPersonal=%{BOOL}d %{public}@", buf, 0x12u);
    }

    [promise finishWithResult:ed_accountIsNonPersonal];
  }

  future = [promise future];

  v25 = *MEMORY[0x1E69E9840];

  return future;
}

- (void)ed_accountIsPersonalDomainForMailAccount:()EDAdditions force:.cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "Failed to parse email address for account %{public}@", buf, 0xCu);
}

@end