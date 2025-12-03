@interface DMCRatchet
+ (BOOL)isEnabled;
+ (id)_ratchetCalloutForOperation:(unint64_t)operation;
+ (id)_ratchetCountdownForOperation:(unint64_t)operation;
+ (id)_ratchetReasonForOperation:(unint64_t)operation;
+ (id)_ratchetStrictTextForOperation:(unint64_t)operation;
+ (id)_ratchetTextForOperation:(unint64_t)operation;
+ (id)_ratchetTitleForOperation:(unint64_t)operation;
+ (unint64_t)_responseFromRatchetResult:(id)result error:(id)error;
+ (void)isAuthorizedForOperation:(unint64_t)operation completion:(id)completion;
@end

@implementation DMCRatchet

+ (BOOL)isEnabled
{
  if (getLARatchetManagerClass())
  {
    sharedInstance = [getLARatchetManagerClass() sharedInstance];
    isFeatureEnabled = [sharedInstance isFeatureEnabled];

    return isFeatureEnabled;
  }

  else
  {
    v5 = *DMCLogObjects();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_1B1630000, v5, OS_LOG_TYPE_ERROR, "LARatchetManager is unavailable", v6, 2u);
    }

    return 0;
  }
}

+ (void)isAuthorizedForOperation:(unint64_t)operation completion:(id)completion
{
  v28[9] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (([self isEnabled] & 1) == 0)
  {
    v17 = *DMCLogObjects();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v18 = "DMCRatchet is authorized because LARatchet is disabled";
      v19 = v17;
      v20 = OS_LOG_TYPE_DEFAULT;
LABEL_8:
      _os_log_impl(&dword_1B1630000, v19, v20, v18, buf, 2u);
    }

LABEL_9:
    completionCopy[2](completionCopy, 0);
    goto LABEL_10;
  }

  if (!getLARatchetClass())
  {
    v21 = *DMCLogObjects();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v18 = "DMCRatchet is authorized because LARatchet is unavailable";
      v19 = v21;
      v20 = OS_LOG_TYPE_ERROR;
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v23 = [objc_alloc(getLARatchetClass()) initWithIdentifier:@"com.apple.devicemanagementclient.DMCRatchet"];
  v7 = MEMORY[0x1E695DF90];
  v27[0] = &unk_1F28682C0;
  v8 = [self _ratchetTitleForOperation:operation];
  v28[0] = v8;
  v27[1] = &unk_1F28682D8;
  v9 = [self _ratchetTextForOperation:operation];
  v28[1] = v9;
  v27[2] = &unk_1F28682F0;
  v10 = [self _ratchetStrictTextForOperation:operation];
  v28[2] = v10;
  v27[3] = &unk_1F2868308;
  v11 = [self _ratchetCountdownForOperation:operation];
  v28[3] = v11;
  v27[4] = &unk_1F2868320;
  v12 = [self _ratchetReasonForOperation:operation];
  v28[4] = v12;
  v27[5] = &unk_1F2868338;
  v13 = [self _ratchetCalloutForOperation:operation];
  v28[5] = v13;
  v27[6] = &unk_1F2868350;
  v14 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=General&path=ManagedConfigurationList"];
  v28[6] = v14;
  v28[7] = MEMORY[0x1E695E118];
  v27[7] = &unk_1F2868368;
  v27[8] = &unk_1F2868380;
  v28[8] = MEMORY[0x1E695E110];
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:9];
  v16 = [v7 dictionaryWithDictionary:v15];

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __50__DMCRatchet_isAuthorizedForOperation_completion___block_invoke;
  v24[3] = &unk_1E7ADD178;
  v25 = completionCopy;
  [v23 armWithOptions:v16 completion:v24];

LABEL_10:
  v22 = *MEMORY[0x1E69E9840];
}

uint64_t __50__DMCRatchet_isAuthorizedForOperation_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [DMCRatchet _responseFromRatchetResult:a2 error:a3];
  v5 = *(v3 + 16);

  return v5(v3, v4);
}

+ (unint64_t)_responseFromRatchetResult:(id)result error:(id)error
{
  v38 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  errorCopy = error;
  v7 = [resultCopy objectForKeyedSubscript:&unk_1F2868338];

  if (!v7)
  {
    if (!errorCopy)
    {
      v13 = *DMCLogObjects();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v34 = resultCopy;
        _os_log_impl(&dword_1B1630000, v13, OS_LOG_TYPE_DEFAULT, "DMCRatchet is unauthorized with result: %{public}@", buf, 0xCu);
      }

      goto LABEL_31;
    }

    if ([errorCopy code] == 4)
    {
      v12 = *DMCLogObjects();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      *buf = 0;
      v9 = "DMCRatchet is authorized because passcode is not set";
LABEL_13:
      v10 = v12;
      v11 = 2;
      goto LABEL_14;
    }

    if ([errorCopy code] == 5)
    {
      v12 = *DMCLogObjects();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      *buf = 0;
      v9 = "DMCRatchet is authorized because biometry is not enrolled";
      goto LABEL_13;
    }

    if ([errorCopy code] == 1)
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      underlyingErrors = [errorCopy underlyingErrors];
      v18 = [underlyingErrors countByEnumeratingWithState:&v29 objects:v37 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v30;
        while (2)
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v30 != v20)
            {
              objc_enumerationMutation(underlyingErrors);
            }

            if ([*(*(&v29 + 1) + 8 * i) code] == -2)
            {
              v28 = *DMCLogObjects();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1B1630000, v28, OS_LOG_TYPE_DEFAULT, "DMCRatchet canceled by user", buf, 2u);
              }

              v14 = 2;
              goto LABEL_16;
            }
          }

          v19 = [underlyingErrors countByEnumeratingWithState:&v29 objects:v37 count:16];
          if (v19)
          {
            continue;
          }

          break;
        }
      }

      v22 = *DMCLogObjects();
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_31;
      }

      v23 = v22;
      userInfo = [errorCopy userInfo];
      *buf = 138543362;
      v34 = userInfo;
      _os_log_impl(&dword_1B1630000, v23, OS_LOG_TYPE_DEFAULT, "DMCRatchet is unauthorized with generic error user info: %{public}@", buf, 0xCu);
    }

    else
    {
      v25 = *DMCLogObjects();
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
LABEL_31:
        v14 = 1;
        goto LABEL_16;
      }

      v23 = v25;
      code = [errorCopy code];
      userInfo2 = [errorCopy userInfo];
      *buf = 134349314;
      v34 = code;
      v35 = 2114;
      v36 = userInfo2;
      _os_log_impl(&dword_1B1630000, v23, OS_LOG_TYPE_DEFAULT, "DMCRatchet is unauthorized with error code %{public}ld and user info: %{public}@", buf, 0x16u);
    }

    goto LABEL_31;
  }

  v8 = *DMCLogObjects();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v34 = resultCopy;
    v9 = "DMCRatchet is authorized with result: %{public}@";
    v10 = v8;
    v11 = 12;
LABEL_14:
    _os_log_impl(&dword_1B1630000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
  }

LABEL_15:
  v14 = 0;
LABEL_16:

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

+ (id)_ratchetTitleForOperation:(unint64_t)operation
{
  if (operation)
  {
    if (operation != 1)
    {
      goto LABEL_6;
    }

    v4 = @"DMC_SDP_RATCHET_TITLE_MDM_ENROLL";
  }

  else
  {
    v4 = @"DMC_SDP_RATCHET_TITLE_INSTALL_PROFILE";
  }

  self = DMCLocalizedString(v4);
LABEL_6:

  return self;
}

+ (id)_ratchetTextForOperation:(unint64_t)operation
{
  if (operation)
  {
    if (operation != 1)
    {
      goto LABEL_6;
    }

    v4 = @"DMC_SDP_RATCHET_TEXT_MDM_ENROLL";
  }

  else
  {
    v4 = @"DMC_SDP_RATCHET_TEXT_INSTALL_PROFILE";
  }

  self = DMCLocalizedString(v4);
LABEL_6:

  return self;
}

+ (id)_ratchetStrictTextForOperation:(unint64_t)operation
{
  if (operation)
  {
    if (operation != 1)
    {
      goto LABEL_6;
    }

    v4 = @"DMC_SDP_RATCHET_STRICT_TEXT_MDM_ENROLL";
  }

  else
  {
    v4 = @"DMC_SDP_RATCHET_STRICT_TEXT_INSTALL_PROFILE";
  }

  self = DMCLocalizedString(v4);
LABEL_6:

  return self;
}

+ (id)_ratchetCountdownForOperation:(unint64_t)operation
{
  if (operation)
  {
    if (operation != 1)
    {
      goto LABEL_6;
    }

    v4 = @"DMC_SDP_RATCHET_COUNTDOWN_MDM_ENROLL";
  }

  else
  {
    v4 = @"DMC_SDP_RATCHET_COUNTDOWN_INSTALL_PROFILE";
  }

  self = DMCLocalizedString(v4);
LABEL_6:

  return self;
}

+ (id)_ratchetReasonForOperation:(unint64_t)operation
{
  if (operation)
  {
    if (operation != 1)
    {
      goto LABEL_6;
    }

    v4 = @"DMC_SDP_RATCHET_REASON_MDM_ENROLL";
  }

  else
  {
    v4 = @"DMC_SDP_RATCHET_REASON_INSTALL_PROFILE";
  }

  self = DMCLocalizedString(v4);
LABEL_6:

  return self;
}

+ (id)_ratchetCalloutForOperation:(unint64_t)operation
{
  if (operation)
  {
    if (operation != 1)
    {
      goto LABEL_6;
    }

    v4 = @"DMC_SDP_RATCHET_CALLOUT_MDM_ENROLL";
  }

  else
  {
    v4 = @"DMC_SDP_RATCHET_CALLOUT_INSTALL_PROFILE";
  }

  self = DMCLocalizedString(v4);
LABEL_6:

  return self;
}

@end