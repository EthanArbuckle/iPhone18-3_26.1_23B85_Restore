@interface CDPRecoveryKeyStatusProvider
- (BOOL)idmsHasRK;
- (BOOL)isRecoveryKeySetInOctagonWithError:(id *)error;
- (BOOL)isRecoveryKeySetInSOSWithError:(id *)error;
- (CDPRecoveryKeyStatusProvider)initWithContext:(id)context;
- (void)idmsHasRK;
@end

@implementation CDPRecoveryKeyStatusProvider

- (CDPRecoveryKeyStatusProvider)initWithContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = CDPRecoveryKeyStatusProvider;
  v5 = [(CDPRecoveryKeyStatusProvider *)&v9 init];
  if (v5)
  {
    v6 = [CDPContext preflightContext:contextCopy];
    context = v5->_context;
    v5->_context = v6;
  }

  return v5;
}

- (BOOL)idmsHasRK
{
  mEMORY[0x1E698DC80] = [MEMORY[0x1E698DC80] sharedInstance];
  altDSID = [(CDPContext *)self->_context altDSID];
  v5 = [mEMORY[0x1E698DC80] authKitAccountWithAltDSID:altDSID];

  if (!v5)
  {
    v8 = _CDPLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(CDPRecoveryKeyStatusProvider *)v8 idmsHasRK:v9];
    }

    goto LABEL_7;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_7:
    bOOLValue = 0;
    goto LABEL_8;
  }

  v6 = [mEMORY[0x1E698DC80] hasModernRecoveryKeyForAccount:v5];
  bOOLValue = [v6 BOOLValue];

LABEL_8:
  return bOOLValue;
}

- (BOOL)isRecoveryKeySetInOctagonWithError:(id *)error
{
  cliqueConfiguration = [(CDPContext *)self->_context cliqueConfiguration];
  if (cliqueConfiguration)
  {
    v17 = 0;
    v5 = [MEMORY[0x1E697AA80] isRecoveryKeySetInOctagon:cliqueConfiguration error:&v17];
    v6 = v17;
    if (v6)
    {
      v7 = _CDPLogSystem();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(CDPRecoveryKeyStatusProvider *)v6 isRecoveryKeySetInOctagonWithError:v7, v8, v9, v10, v11, v12, v13];
      }

      if (error)
      {
        v14 = v6;
        v5 = 0;
        *error = v6;
      }

      else
      {
        v5 = 0;
      }
    }
  }

  else
  {
    v15 = _CDPLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [CDPRecoveryKeyStatusProvider isRecoveryKeySetInOctagonWithError:v15];
    }

    if (error)
    {
      [MEMORY[0x1E696ABC0] cdp_errorWithCode:-5217 underlyingError:*error];
      *error = v5 = 0;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isRecoveryKeySetInSOSWithError:(id *)error
{
  cliqueConfiguration = [(CDPContext *)self->_context cliqueConfiguration];
  v16 = 0;
  v5 = [MEMORY[0x1E697AA80] isRecoveryKeySetInSOS:cliqueConfiguration error:&v16];
  v6 = v16;
  if (v6)
  {
    v7 = _CDPLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(CDPRecoveryKeyStatusProvider *)v6 isRecoveryKeySetInSOSWithError:v7, v8, v9, v10, v11, v12, v13];
    }

    if (error)
    {
      v14 = v6;
      v5 = 0;
      *error = v6;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)idmsHasRK
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, self, a3, "%s: Can't find account. Returning...", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)isRecoveryKeySetInOctagonWithError:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, a2, a3, "Received error while checking if RK is set in Octagon: %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)isRecoveryKeySetInSOSWithError:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, a2, a3, "Received error while checking if RK is set in SOS: %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end