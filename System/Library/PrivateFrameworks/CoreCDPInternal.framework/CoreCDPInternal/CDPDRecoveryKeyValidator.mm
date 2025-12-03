@interface CDPDRecoveryKeyValidator
- (void)_validateRecoveryKey:(id)key completion:(id)completion;
- (void)validateRecoveryKey:(id)key withCompletion:(id)completion;
@end

@implementation CDPDRecoveryKeyValidator

- (void)_validateRecoveryKey:(id)key completion:(id)completion
{
  completionCopy = completion;
  keyCopy = key;
  v8 = objc_alloc_init(CDPDSecureBackupContext);
  [(CDPDSecureBackupContext *)v8 setRecoveryKey:keyCopy];

  delegate = [(CDPDDeviceSecretValidator *)self delegate];

  if (delegate)
  {
    delegate2 = [(CDPDDeviceSecretValidator *)self delegate];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __60__CDPDRecoveryKeyValidator__validateRecoveryKey_completion___block_invoke;
    v13[3] = &unk_278E247D0;
    v14 = completionCopy;
    [delegate2 secretValidator:self validateRecoveryKeyWithContext:v8 completion:v13];

    v11 = v14;
LABEL_7:

    goto LABEL_8;
  }

  v12 = _CDPLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [CDPDRecoveryKeyValidator _validateRecoveryKey:v12 completion:?];
  }

  if (completionCopy)
  {
    v11 = [MEMORY[0x277CCA9B8] cdp_errorWithCode:0];
    (*(completionCopy + 2))(completionCopy, 0, v11);
    goto LABEL_7;
  }

LABEL_8:
}

void __60__CDPDRecoveryKeyValidator__validateRecoveryKey_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v5)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = *(v6 + 16);
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = *(v6 + 16);
  }

  v7();
LABEL_7:
}

- (void)validateRecoveryKey:(id)key withCompletion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__CDPDRecoveryKeyValidator_validateRecoveryKey_withCompletion___block_invoke;
  v8[3] = &unk_278E247D0;
  v9 = completionCopy;
  v7 = completionCopy;
  [(CDPDRecoveryKeyValidator *)self _validateRecoveryKey:key completion:v8];
}

void __63__CDPDRecoveryKeyValidator_validateRecoveryKey_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v5)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = *(v6 + 16);
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = *(v6 + 16);
  }

  v7();
LABEL_7:
}

@end