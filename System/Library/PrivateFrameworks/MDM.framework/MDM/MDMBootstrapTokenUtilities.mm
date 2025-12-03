@interface MDMBootstrapTokenUtilities
+ (BOOL)validateBootstrapToken:(id)token error:(id *)error;
+ (BOOL)validateBootstrapTokenContext:(id)context error:(id *)error;
+ (id)_bootstrapTokenExists;
+ (id)_deleteBootstrapTokenFailedUnknown;
+ (id)_failedToCheckBootstrapTokenExistence;
+ (id)_failedToSyncBootstrapTokenUnknown;
+ (id)_generateBootstrapTokenContextFailed;
+ (id)_generateBootstrapTokenFailed;
+ (id)_generateBootstrapTokenFailedUnknown;
+ (id)_generateTokenDataFailed;
+ (void)deleteBootstrapTokenWithToken:(id)token devicePasscode:(id)passcode completionHandler:(id)handler;
+ (void)deleteBootstrapTokenWithToken:(id)token devicePasscodeContext:(id)context completionHandler:(id)handler;
+ (void)deleteBootstrapTokenWithTokenContext:(id)context devicePasscodeContext:(id)passcodeContext completionHandler:(id)handler;
+ (void)generateBootstrapTokenWithDevicePasscode:(id)passcode completionHandler:(id)handler;
+ (void)generateBootstrapTokenWithDevicePasscodeContext:(id)context completionHandler:(id)handler;
@end

@implementation MDMBootstrapTokenUtilities

+ (void)generateBootstrapTokenWithDevicePasscode:(id)passcode completionHandler:(id)handler
{
  handlerCopy = handler;
  v8 = MDMCreateLAContextWithPasscodeData(passcode);
  externalizedContext = [v8 externalizedContext];
  [self generateBootstrapTokenWithDevicePasscodeContext:externalizedContext completionHandler:handlerCopy];
}

+ (void)generateBootstrapTokenWithDevicePasscodeContext:(id)context completionHandler:(id)handler
{
  v41 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  handlerCopy = handler;
  mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
  v38 = 0;
  v9 = [mEMORY[0x277D77BF8] checkBootstrapUserExistsWithError:&v38];
  v10 = v38;

  if (v9)
  {
    v11 = *DMCLogObjects();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2561F5000, v11, OS_LOG_TYPE_DEFAULT, "Bootstrap token exists already. Returning...", buf, 2u);
    }

    _bootstrapTokenExists = [self _bootstrapTokenExists];
    handlerCopy[2](handlerCopy, 0, _bootstrapTokenExists);

    goto LABEL_38;
  }

  if (!v10)
  {
    goto LABEL_9;
  }

  code = [v10 code];
  v14 = *DMCLogObjects();
  if (code == 2)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v40 = v10;
      _os_log_impl(&dword_2561F5000, v14, OS_LOG_TYPE_DEFAULT, "checkBootstrapUserExistsWithError failed with error: %{public}@. This probably means the user doesn't exist", buf, 0xCu);
    }

LABEL_9:
    if (SecRandomCopyBytes(*MEMORY[0x277CDC540], 0x1DuLL, v35))
    {
      v15 = 0;
    }

    else
    {
      v15 = [MEMORY[0x277CBEA90] dataWithBytes:v35 length:29];
    }

    v16 = [MEMORY[0x277D03500] bootstrapTokenOverrideWithDefaultValue:v15];

    if (v16)
    {
      if ([MEMORY[0x277D034F8] isAppleInternal])
      {
        v17 = *DMCLogObjects();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v18 = v17;
          v19 = [v16 base64EncodedStringWithOptions:0];
          *buf = 138412290;
          v40 = v19;
          _os_log_impl(&dword_2561F5000, v18, OS_LOG_TYPE_DEBUG, "Creating bootstrap user with token base 64 String: %@", buf, 0xCu);
        }
      }

      _generateTokenDataFailed = MDMCreateLAContextWithPasscodeData(v16);
      externalizedContext = [_generateTokenDataFailed externalizedContext];

      if (externalizedContext)
      {
        mEMORY[0x277D77BF8]2 = [MEMORY[0x277D77BF8] sharedManager];
        externalizedContext2 = [_generateTokenDataFailed externalizedContext];
        v36 = contextCopy;
        v37 = v10;
        v24 = [mEMORY[0x277D77BF8]2 createBootstrapUserWithTokenInACMCredential:externalizedContext2 withDevicePasscodeInACMCredential:contextCopy withError:&v37];
        v25 = v37;

        if (v24)
        {
          v26 = *DMCLogObjects();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_2561F5000, v26, OS_LOG_TYPE_DEBUG, "createBootstrapUserWithToken finished with no error", buf, 2u);
          }

          (handlerCopy)[2](handlerCopy, v16, 0);
          v10 = v25;
          contextCopy = v36;
        }

        else
        {
          v30 = *DMCLogObjects();
          v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
          if (v25)
          {
            contextCopy = v36;
            if (v31)
            {
              *buf = 138543362;
              v40 = v25;
              _os_log_impl(&dword_2561F5000, v30, OS_LOG_TYPE_ERROR, "Failed to generate bootstrap token with error: %{public}@", buf, 0xCu);
            }

            _generateBootstrapTokenFailed = [self _generateBootstrapTokenFailed];
            handlerCopy[2](handlerCopy, 0, _generateBootstrapTokenFailed);

            v10 = v25;
          }

          else
          {
            contextCopy = v36;
            if (v31)
            {
              *buf = 0;
              _os_log_impl(&dword_2561F5000, v30, OS_LOG_TYPE_ERROR, "Unknown reason for failing generating bootstrap token", buf, 2u);
            }

            _generateBootstrapTokenFailedUnknown = [self _generateBootstrapTokenFailedUnknown];
            handlerCopy[2](handlerCopy, 0, _generateBootstrapTokenFailedUnknown);

            v10 = 0;
          }
        }
      }

      else
      {
        v28 = *DMCLogObjects();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_2561F5000, v28, OS_LOG_TYPE_ERROR, "Failed to generate token data context", buf, 2u);
        }

        _generateBootstrapTokenContextFailed = [self _generateBootstrapTokenContextFailed];
        handlerCopy[2](handlerCopy, 0, _generateBootstrapTokenContextFailed);
      }
    }

    else
    {
      v27 = *DMCLogObjects();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_2561F5000, v27, OS_LOG_TYPE_ERROR, "Failed to generate token data", buf, 2u);
      }

      _generateTokenDataFailed = [self _generateTokenDataFailed];
      handlerCopy[2](handlerCopy, 0, _generateTokenDataFailed);
    }

    goto LABEL_38;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v40 = v10;
    _os_log_impl(&dword_2561F5000, v14, OS_LOG_TYPE_ERROR, "checkBootstrapUserExistsWithError failed with error: %{public}@.", buf, 0xCu);
  }

  handlerCopy[2](handlerCopy, 0, v10);
LABEL_38:

  v34 = *MEMORY[0x277D85DE8];
}

+ (void)deleteBootstrapTokenWithToken:(id)token devicePasscode:(id)passcode completionHandler:(id)handler
{
  handlerCopy = handler;
  tokenCopy = token;
  v11 = MDMCreateLAContextWithPasscodeData(passcode);
  externalizedContext = [v11 externalizedContext];
  [self deleteBootstrapTokenWithToken:tokenCopy devicePasscodeContext:externalizedContext completionHandler:handlerCopy];
}

+ (void)deleteBootstrapTokenWithToken:(id)token devicePasscodeContext:(id)context completionHandler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  v10 = MDMCreateLAContextWithPasscodeData(token);
  externalizedContext = [v10 externalizedContext];

  if (externalizedContext)
  {
    externalizedContext2 = [v10 externalizedContext];
    [self deleteBootstrapTokenWithTokenContext:externalizedContext2 devicePasscodeContext:contextCopy completionHandler:handlerCopy];
  }

  else
  {
    v13 = *DMCLogObjects();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_impl(&dword_2561F5000, v13, OS_LOG_TYPE_ERROR, "Failed to generate token data context", v15, 2u);
    }

    _generateBootstrapTokenContextFailed = [self _generateBootstrapTokenContextFailed];
    (*(handlerCopy + 2))(handlerCopy, _generateBootstrapTokenContextFailed);
  }
}

+ (void)deleteBootstrapTokenWithTokenContext:(id)context devicePasscodeContext:(id)passcodeContext completionHandler:(id)handler
{
  v22 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v9 = MEMORY[0x277D77BF8];
  passcodeContextCopy = passcodeContext;
  contextCopy = context;
  sharedManager = [v9 sharedManager];
  v19 = 0;
  v13 = [sharedManager deleteBootstrapUserWithTokenInACMCredential:contextCopy withDevicePasscodeInACMCredential:passcodeContextCopy withError:&v19];

  v14 = v19;
  if (v13)
  {
    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    v15 = *DMCLogObjects();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (v14)
    {
      if (v16)
      {
        *buf = 138543362;
        v21 = v14;
        _os_log_impl(&dword_2561F5000, v15, OS_LOG_TYPE_ERROR, "Failed to delete bootstrap token with error: %{public}@", buf, 0xCu);
      }

      (handlerCopy)[2](handlerCopy, v14);
    }

    else
    {
      if (v16)
      {
        *buf = 0;
        _os_log_impl(&dword_2561F5000, v15, OS_LOG_TYPE_ERROR, "Unknown reason for failing deleting bootstrap token", buf, 2u);
      }

      _deleteBootstrapTokenFailedUnknown = [self _deleteBootstrapTokenFailedUnknown];
      (handlerCopy)[2](handlerCopy, _deleteBootstrapTokenFailedUnknown);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

+ (BOOL)validateBootstrapToken:(id)token error:(id *)error
{
  v6 = MDMCreateLAContextWithPasscodeData(token);
  externalizedContext = [v6 externalizedContext];

  if (externalizedContext)
  {
    externalizedContext2 = [v6 externalizedContext];
    LOBYTE(error) = [self validateBootstrapTokenContext:externalizedContext2 error:error];
  }

  else
  {
    v9 = *DMCLogObjects();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_impl(&dword_2561F5000, v9, OS_LOG_TYPE_ERROR, "Failed to generate token data context", v12, 2u);
    }

    if (error)
    {
      _generateBootstrapTokenContextFailed = [self _generateBootstrapTokenContextFailed];
      if (_generateBootstrapTokenContextFailed)
      {
        _generateBootstrapTokenContextFailed = _generateBootstrapTokenContextFailed;
        *error = _generateBootstrapTokenContextFailed;
      }

      LOBYTE(error) = 0;
    }
  }

  return error;
}

+ (BOOL)validateBootstrapTokenContext:(id)context error:(id *)error
{
  v5 = MEMORY[0x277D77BF8];
  contextCopy = context;
  sharedManager = [v5 sharedManager];
  LOBYTE(error) = [sharedManager validateBootstrapUserWithTokenInACMCredential:contextCopy withError:error];

  return error;
}

+ (id)_generateTokenDataFailed
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D03478];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:66002 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

+ (id)_generateBootstrapTokenContextFailed
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D03478];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:66002 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

+ (id)_generateBootstrapTokenFailed
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D03478];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:66002 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

+ (id)_generateBootstrapTokenFailedUnknown
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D03478];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:66002 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

+ (id)_bootstrapTokenExists
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D03478];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:66001 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

+ (id)_failedToCheckBootstrapTokenExistence
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D03478];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:66000 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

+ (id)_failedToSyncBootstrapTokenUnknown
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D03480];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:12132 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

+ (id)_deleteBootstrapTokenFailedUnknown
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D03478];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:66003 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

@end