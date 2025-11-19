@interface MDMBootstrapTokenUtilities
+ (BOOL)validateBootstrapToken:(id)a3 error:(id *)a4;
+ (BOOL)validateBootstrapTokenContext:(id)a3 error:(id *)a4;
+ (id)_bootstrapTokenExists;
+ (id)_deleteBootstrapTokenFailedUnknown;
+ (id)_failedToCheckBootstrapTokenExistence;
+ (id)_failedToSyncBootstrapTokenUnknown;
+ (id)_generateBootstrapTokenContextFailed;
+ (id)_generateBootstrapTokenFailed;
+ (id)_generateBootstrapTokenFailedUnknown;
+ (id)_generateTokenDataFailed;
+ (void)deleteBootstrapTokenWithToken:(id)a3 devicePasscode:(id)a4 completionHandler:(id)a5;
+ (void)deleteBootstrapTokenWithToken:(id)a3 devicePasscodeContext:(id)a4 completionHandler:(id)a5;
+ (void)deleteBootstrapTokenWithTokenContext:(id)a3 devicePasscodeContext:(id)a4 completionHandler:(id)a5;
+ (void)generateBootstrapTokenWithDevicePasscode:(id)a3 completionHandler:(id)a4;
+ (void)generateBootstrapTokenWithDevicePasscodeContext:(id)a3 completionHandler:(id)a4;
@end

@implementation MDMBootstrapTokenUtilities

+ (void)generateBootstrapTokenWithDevicePasscode:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v8 = MDMCreateLAContextWithPasscodeData(a3);
  v7 = [v8 externalizedContext];
  [a1 generateBootstrapTokenWithDevicePasscodeContext:v7 completionHandler:v6];
}

+ (void)generateBootstrapTokenWithDevicePasscodeContext:(id)a3 completionHandler:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277D77BF8] sharedManager];
  v38 = 0;
  v9 = [v8 checkBootstrapUserExistsWithError:&v38];
  v10 = v38;

  if (v9)
  {
    v11 = *DMCLogObjects();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2561F5000, v11, OS_LOG_TYPE_DEFAULT, "Bootstrap token exists already. Returning...", buf, 2u);
    }

    v12 = [a1 _bootstrapTokenExists];
    v7[2](v7, 0, v12);

    goto LABEL_38;
  }

  if (!v10)
  {
    goto LABEL_9;
  }

  v13 = [v10 code];
  v14 = *DMCLogObjects();
  if (v13 == 2)
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

      v20 = MDMCreateLAContextWithPasscodeData(v16);
      v21 = [v20 externalizedContext];

      if (v21)
      {
        v22 = [MEMORY[0x277D77BF8] sharedManager];
        v23 = [v20 externalizedContext];
        v36 = v6;
        v37 = v10;
        v24 = [v22 createBootstrapUserWithTokenInACMCredential:v23 withDevicePasscodeInACMCredential:v6 withError:&v37];
        v25 = v37;

        if (v24)
        {
          v26 = *DMCLogObjects();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_2561F5000, v26, OS_LOG_TYPE_DEBUG, "createBootstrapUserWithToken finished with no error", buf, 2u);
          }

          (v7)[2](v7, v16, 0);
          v10 = v25;
          v6 = v36;
        }

        else
        {
          v30 = *DMCLogObjects();
          v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
          if (v25)
          {
            v6 = v36;
            if (v31)
            {
              *buf = 138543362;
              v40 = v25;
              _os_log_impl(&dword_2561F5000, v30, OS_LOG_TYPE_ERROR, "Failed to generate bootstrap token with error: %{public}@", buf, 0xCu);
            }

            v32 = [a1 _generateBootstrapTokenFailed];
            v7[2](v7, 0, v32);

            v10 = v25;
          }

          else
          {
            v6 = v36;
            if (v31)
            {
              *buf = 0;
              _os_log_impl(&dword_2561F5000, v30, OS_LOG_TYPE_ERROR, "Unknown reason for failing generating bootstrap token", buf, 2u);
            }

            v33 = [a1 _generateBootstrapTokenFailedUnknown];
            v7[2](v7, 0, v33);

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

        v29 = [a1 _generateBootstrapTokenContextFailed];
        v7[2](v7, 0, v29);
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

      v20 = [a1 _generateTokenDataFailed];
      v7[2](v7, 0, v20);
    }

    goto LABEL_38;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v40 = v10;
    _os_log_impl(&dword_2561F5000, v14, OS_LOG_TYPE_ERROR, "checkBootstrapUserExistsWithError failed with error: %{public}@.", buf, 0xCu);
  }

  v7[2](v7, 0, v10);
LABEL_38:

  v34 = *MEMORY[0x277D85DE8];
}

+ (void)deleteBootstrapTokenWithToken:(id)a3 devicePasscode:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a3;
  v11 = MDMCreateLAContextWithPasscodeData(a4);
  v10 = [v11 externalizedContext];
  [a1 deleteBootstrapTokenWithToken:v9 devicePasscodeContext:v10 completionHandler:v8];
}

+ (void)deleteBootstrapTokenWithToken:(id)a3 devicePasscodeContext:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = MDMCreateLAContextWithPasscodeData(a3);
  v11 = [v10 externalizedContext];

  if (v11)
  {
    v12 = [v10 externalizedContext];
    [a1 deleteBootstrapTokenWithTokenContext:v12 devicePasscodeContext:v8 completionHandler:v9];
  }

  else
  {
    v13 = *DMCLogObjects();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_impl(&dword_2561F5000, v13, OS_LOG_TYPE_ERROR, "Failed to generate token data context", v15, 2u);
    }

    v14 = [a1 _generateBootstrapTokenContextFailed];
    (*(v9 + 2))(v9, v14);
  }
}

+ (void)deleteBootstrapTokenWithTokenContext:(id)a3 devicePasscodeContext:(id)a4 completionHandler:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = MEMORY[0x277D77BF8];
  v10 = a4;
  v11 = a3;
  v12 = [v9 sharedManager];
  v19 = 0;
  v13 = [v12 deleteBootstrapUserWithTokenInACMCredential:v11 withDevicePasscodeInACMCredential:v10 withError:&v19];

  v14 = v19;
  if (v13)
  {
    v8[2](v8, 0);
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

      (v8)[2](v8, v14);
    }

    else
    {
      if (v16)
      {
        *buf = 0;
        _os_log_impl(&dword_2561F5000, v15, OS_LOG_TYPE_ERROR, "Unknown reason for failing deleting bootstrap token", buf, 2u);
      }

      v18 = [a1 _deleteBootstrapTokenFailedUnknown];
      (v8)[2](v8, v18);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

+ (BOOL)validateBootstrapToken:(id)a3 error:(id *)a4
{
  v6 = MDMCreateLAContextWithPasscodeData(a3);
  v7 = [v6 externalizedContext];

  if (v7)
  {
    v8 = [v6 externalizedContext];
    LOBYTE(a4) = [a1 validateBootstrapTokenContext:v8 error:a4];
  }

  else
  {
    v9 = *DMCLogObjects();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_impl(&dword_2561F5000, v9, OS_LOG_TYPE_ERROR, "Failed to generate token data context", v12, 2u);
    }

    if (a4)
    {
      v10 = [a1 _generateBootstrapTokenContextFailed];
      if (v10)
      {
        v10 = v10;
        *a4 = v10;
      }

      LOBYTE(a4) = 0;
    }
  }

  return a4;
}

+ (BOOL)validateBootstrapTokenContext:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x277D77BF8];
  v6 = a3;
  v7 = [v5 sharedManager];
  LOBYTE(a4) = [v7 validateBootstrapUserWithTokenInACMCredential:v6 withError:a4];

  return a4;
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