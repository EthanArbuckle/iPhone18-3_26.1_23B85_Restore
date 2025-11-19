@interface LACPasscodeHelper
+ (id)sharedInstance;
- (BOOL)accountBlockedForUserID:(id)a3;
- (LACPasscodeHelper)init;
- (double)passcodeSuccessAge;
- (id)_currentUserID;
- (id)_userNameFromUID:(id)a3;
- (int)_verifyPasscodeUsingMKB:(id)a3 acmContext:(id)a4 userId:(id)a5 options:(id)a6;
- (int64_t)_verifyPasscode:(id)a3;
- (int64_t)createStash:(id)a3 mode:(int)a4 manifest:(id)a5;
- (int64_t)verifyPasscode:(id)a3;
- (int64_t)verifyPasscode:(id)a3 acmContext:(id)a4 userId:(id)a5 auditToken:(id *)a6;
- (unsigned)_keybagHandleForUserId:(id)a3;
- (void)_increaseFailedAttemptCountForUserID:(id)a3;
- (void)_notifyObserversAboutUpdate;
- (void)_resetFailedAttemptCountForUserID:(id)a3;
- (void)_updatePasscodeSuccessAgeWithUptime:(id)a3;
- (void)keybagStateDidChange:(id)a3;
@end

@implementation LACPasscodeHelper

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_5 != -1)
  {
    +[LACPasscodeHelper sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_5;

  return v3;
}

uint64_t __35__LACPasscodeHelper_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_5 = objc_alloc_init(LACPasscodeHelper);

  return MEMORY[0x1EEE66BB8]();
}

- (LACPasscodeHelper)init
{
  v15.receiver = self;
  v15.super_class = LACPasscodeHelper;
  v2 = [(LACPasscodeHelper *)&v15 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = v3;

    v5 = [[LACKeyBagMKBAdapter alloc] initWithUserId:geteuid()];
    keyBagAdapter = v2->_keyBagAdapter;
    v2->_keyBagAdapter = v5;

    [(LACKeyBagMKBAdapter *)v2->_keyBagAdapter addObserver:v2];
    v7 = +[LACKeyBagProvider sharedInstance];
    keyBagProvider = v2->_keyBagProvider;
    v2->_keyBagProvider = v7;

    if (!+[LACMobileGestalt isSecureBootCapable])
    {
      v9 = MEMORY[0x1E695E0F8];
      v10 = [MEMORY[0x1E695E0F8] mutableCopy];
      failedAttemptsDictionary = v2->_failedAttemptsDictionary;
      v2->_failedAttemptsDictionary = v10;

      v12 = [v9 mutableCopy];
      backoffEndTimeDictionary = v2->_backoffEndTimeDictionary;
      v2->_backoffEndTimeDictionary = v12;
    }
  }

  return v2;
}

- (void)_updatePasscodeSuccessAgeWithUptime:(id)a3
{
  if (a3)
  {
    [a3 doubleValue];
    self->_lastPasscodeSuccessUptime = v4;
  }

  else
  {
    v6 = [MEMORY[0x1E696AE30] processInfo];
    [v6 systemUptime];
    self->_lastPasscodeSuccessUptime = v5;
  }
}

- (double)passcodeSuccessAge
{
  result = 0.0;
  if (self->_lastPasscodeSuccessUptime > 0.0)
  {
    v4 = [MEMORY[0x1E696AE30] processInfo];
    [v4 systemUptime];
    v6 = v5;

    return v6 - self->_lastPasscodeSuccessUptime;
  }

  return result;
}

- (BOOL)accountBlockedForUserID:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(LACPasscodeHelper *)self failedAttemptsForUserID:v4];
  v6 = [(LACPasscodeHelper *)self maxUnlockAttemptsForUserID:v4];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = LACLogPasscode();
    v8 = v7;
    if (v5 < v6)
    {
      v9 = OS_LOG_TYPE_INFO;
    }

    else
    {
      v9 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(v7, v9))
    {
      if (v4)
      {
        v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"user %d", objc_msgSend(v4, "intValue")];
      }

      else
      {
        v10 = @"current user";
      }

      *buf = 138543874;
      v14 = v10;
      v15 = 1024;
      v16 = v5;
      v17 = 1024;
      v18 = v6;
      _os_log_impl(&dword_1B0233000, v8, v9, "%{public}@ has %d failed passcode attempts out of %d", buf, 0x18u);
      if (v4)
      {
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v5 >= v6;
}

- (int64_t)createStash:(id)a3 mode:(int)a4 manifest:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a5;
  v7 = MEMORY[0x1E695DEF0];
  v8 = a3;
  v9 = [v8 bytes];
  v10 = [v8 length];

  v11 = [v7 dataWithBytes:v9 length:v10];
  if (v6)
  {
    v12 = MKBKeyBagKeyStashCreateWithManifest();
    v13 = LACLogPasscode();
    v14 = v13;
    if (v12)
    {
      v15 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      v15 = OS_LOG_TYPE_DEBUG;
    }

    if (os_log_type_enabled(v13, v15))
    {
      v21 = 67109120;
      v22 = v12;
      v16 = "create stash with manifest: %d";
LABEL_12:
      _os_log_impl(&dword_1B0233000, v14, v15, v16, &v21, 8u);
    }
  }

  else
  {
    v12 = MKBKeyBagKeyStashCreateWithMode();
    v17 = LACLogPasscode();
    v14 = v17;
    if (v12)
    {
      v15 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      v15 = OS_LOG_TYPE_DEBUG;
    }

    if (os_log_type_enabled(v17, v15))
    {
      v21 = 67109120;
      v22 = v12;
      v16 = "create stash with mode: %d";
      goto LABEL_12;
    }
  }

  if (v12)
  {
    v18 = 3;
  }

  else
  {
    v18 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

- (int64_t)verifyPasscode:(id)a3 acmContext:(id)a4 userId:(id)a5 auditToken:(id *)a6
{
  v9 = a4;
  v10 = a3;
  v11 = [LACMutablePasscodeVerificationRequest alloc];
  v12 = *&a6->var0[4];
  v16[0] = *a6->var0;
  v16[1] = v12;
  v13 = [(LACMutablePasscodeVerificationRequest *)v11 initWithPasscode:v10 acmContext:v9 rawAuditToken:v16];

  v14 = [(LACPasscodeHelper *)self verifyPasscode:v13];
  return v14;
}

- (int64_t)verifyPasscode:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = LACLogPasscode();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = v4;
    _os_log_impl(&dword_1B0233000, v5, OS_LOG_TYPE_DEFAULT, "Passcode verification will start: %{public}@", &v11, 0xCu);
  }

  v6 = [(LACPasscodeHelper *)self _verifyPasscode:v4];
  v7 = LACLogPasscode();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:v6];
    v11 = 138543362;
    v12 = v8;
    _os_log_impl(&dword_1B0233000, v7, OS_LOG_TYPE_DEFAULT, "Passcode verification did finish: %{public}@", &v11, 0xCu);
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

- (int64_t)_verifyPasscode:(id)a3
{
  v4 = a3;
  v5 = [v4 passcode];
  v6 = [v4 acmContext];
  v7 = [v4 userId];
  v8 = [v4 policy];
  v9 = [v4 options];
  v10 = [v4 bioLockoutRecovery];

  if ([v6 length])
  {
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __37__LACPasscodeHelper__verifyPasscode___block_invoke;
    v42[3] = &unk_1E7A965E0;
    v42[4] = self;
    v39 = v5;
    v37 = v5;
    v43 = v37;
    v11 = v6;
    v44 = v11;
    v12 = v7;
    v45 = v12;
    v13 = v9;
    v46 = v13;
    v47 = v10;
    v14 = __37__LACPasscodeHelper__verifyPasscode___block_invoke(v42);
    if ((v14 + 14) < 2)
    {
      [(LACPasscodeHelper *)self _increaseFailedAttemptCountForUserID:v12];
      if ([(LACPasscodeHelper *)self accountBlockedForUserID:v12])
      {
        v21 = 4;
      }

      else
      {
        v21 = 2;
      }
    }

    else if (v14 == -3)
    {
      [(LACPasscodeHelper *)self _increaseFailedAttemptCountForUserID:v12];
      v21 = 1;
    }

    else if (v14)
    {
      v21 = 3;
    }

    else
    {
      [(LACPasscodeHelper *)self _resetFailedAttemptCountForUserID:v12];
      if (v8 == 1010)
      {
        v15 = [MEMORY[0x1E696AD98] numberWithInteger:1026];
        v16 = [v13 objectForKeyedSubscript:v15];

        v17 = [MEMORY[0x1E696AD98] numberWithInteger:1028];
        v18 = [v13 objectForKeyedSubscript:v17];

        if (v18)
        {
          v19 = [v18 intValue];
        }

        else
        {
          v19 = 1;
        }

        v21 = [(LACPasscodeHelper *)self createStash:v37 mode:v19 manifest:v16, v37];
      }

      else
      {
        v22 = [MEMORY[0x1E696AD98] numberWithInteger:1044];
        v23 = [v13 objectForKeyedSubscript:v22];
        v24 = [v23 BOOLValue];

        if (v24)
        {
          v25 = [[LACACMHelper alloc] initWithExternalizedContext:v11];
          v41 = 0;
          v26 = [(LACACMHelper *)v25 setData:v37 type:5 error:&v41];
          v27 = v41;
          if (!v26)
          {
            v28 = LACLogPasscode();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              [(LACPasscodeHelper *)v27 _verifyPasscode:v28];
            }
          }
        }

        v29 = [MEMORY[0x1E696AD98] numberWithInteger:{1060, v37}];
        v30 = [v13 objectForKeyedSubscript:v29];
        v31 = [v30 BOOLValue];

        if (v31)
        {
          v32 = [[LACACMHelper alloc] initWithExternalizedContext:v11];
          v40 = 0;
          v33 = [(LACACMHelper *)v32 setData:v38 type:7 error:&v40];
          v34 = v40;
          v5 = v39;
          if (!v33)
          {
            v35 = LACLogPasscode();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              [(LACPasscodeHelper *)v34 _verifyPasscode:v35];
            }
          }

          v21 = 0;
          goto LABEL_32;
        }

        v21 = 0;
      }
    }

    v5 = v39;
LABEL_32:

    goto LABEL_33;
  }

  v20 = LACLogPasscode();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    [LACPasscodeHelper _verifyPasscode:v20];
  }

  v21 = 3;
LABEL_33:

  return v21;
}

uint64_t __37__LACPasscodeHelper__verifyPasscode___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _verifyPasscodeUsingMKB:*(a1 + 40) acmContext:*(a1 + 48) userId:*(a1 + 56) options:*(a1 + 64)];
  if (!v2 && (*(a1 + 72) & 1) == 0)
  {
    v3 = +[LACPasscodeHelper sharedInstance];
    [v3 updatePasscodeSuccessAgeWithCurrentSystemUptime];
  }

  return v2;
}

- (int)_verifyPasscodeUsingMKB:(id)a3 acmContext:(id)a4 userId:(id)a5 options:(id)a6
{
  v31[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a6;
  v12 = a4;
  v30 = @"DeviceHandle";
  v13 = [(LACPasscodeHelper *)self];
  v14 = [MEMORY[0x1E696AD98] numberWithInt:v13];
  v31[0] = v14;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];

  v15 = [v10 data];
  v16 = MKBVerifyPasswordWithContext();

  v17 = LACLogPasscode();
  if (os_log_type_enabled(v17, (16 * (v16 != 0))))
  {
    v26 = 67109376;
    v27 = v13;
    v28 = 1024;
    v29 = v16;
    _os_log_impl(&dword_1B0233000, v17, (16 * (v16 != 0)), "MKB password verification for keybag %d returned %d", &v26, 0xEu);
  }

  v18 = [MEMORY[0x1E696AD98] numberWithInteger:1043];
  v19 = [v11 objectForKeyedSubscript:v18];

  v20 = [v19 BOOLValue];
  if (v20)
  {
    v21 = [v10 data];
    v16 = MKBUnlockDevice();

    v22 = LACLogPasscode();
    v23 = 16 * (v16 != 0);
    if (os_log_type_enabled(v22, v23))
    {
      v26 = 67109376;
      v27 = v13;
      v28 = 1024;
      v29 = v16;
      _os_log_impl(&dword_1B0233000, v22, v23, "MKB device unlock for keybag %d returned %d", &v26, 0xEu);
    }
  }

  v24 = *MEMORY[0x1E69E9840];
  return v16;
}

- (void)_notifyObserversAboutUpdate
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = MEMORY[0x1E695DEC8];
  v4 = [(NSHashTable *)self->_observers allObjects];
  v5 = [v3 arrayWithArray:v4];

  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 passcodeSetDidChangeForHelper:self];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)keybagStateDidChange:(id)a3
{
  v4 = [a3 state];
  keyBagDisabled = self->_keyBagDisabled;
  if (!keyBagDisabled || (v4 == 1) != [(NSNumber *)keyBagDisabled BOOLValue])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:v4 == 1];
    v7 = self->_keyBagDisabled;
    self->_keyBagDisabled = v6;

    [(LACPasscodeHelper *)self _notifyObserversAboutUpdate];
  }
}

- (unsigned)_keybagHandleForUserId:(id)a3
{
  if (+[LACMobileGestalt isSharedIPad])
  {
    return -3;
  }

  else
  {
    return 0;
  }
}

- (id)_currentUserID
{
  v2 = MEMORY[0x1E696AD98];
  v3 = getuid();

  return [v2 numberWithUnsignedInt:v3];
}

- (id)_userNameFromUID:(id)a3
{
  v3 = getpwuid([a3 unsignedIntValue]);
  if (v3)
  {
    if (*v3)
    {
      v3 = [MEMORY[0x1E696AEC0] stringWithCString:*v3 encoding:4];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (void)_increaseFailedAttemptCountForUserID:(id)a3
{
  v11 = a3;
  if (!+[LACMobileGestalt isSecureBootCapable])
  {
    v4 = v11;
    if (!v11)
    {
      v4 = [(LACPasscodeHelper *)self _currentUserID];
    }

    v11 = v4;
    v5 = [(NSMutableDictionary *)self->_failedAttemptsDictionary objectForKey:v4];

    if (!v5)
    {
      [(NSMutableDictionary *)self->_failedAttemptsDictionary setObject:&unk_1F26935C8 forKeyedSubscript:v11];
    }

    v6 = [(NSMutableDictionary *)self->_failedAttemptsDictionary objectForKeyedSubscript:v11];
    v7 = [v6 integerValue];

    v8 = [MEMORY[0x1E696AD98] numberWithInteger:v7 + 1];
    [(NSMutableDictionary *)self->_failedAttemptsDictionary setObject:v8 forKeyedSubscript:v11];

    if (v7 >= 14)
    {
      v9 = [MEMORY[0x1E695DF00] date];
      v10 = [v9 dateByAddingTimeInterval:5.0];
      [(NSMutableDictionary *)self->_backoffEndTimeDictionary setObject:v10 forKeyedSubscript:v11];
    }
  }
}

- (void)_resetFailedAttemptCountForUserID:(id)a3
{
  v5 = a3;
  if (!+[LACMobileGestalt isSecureBootCapable])
  {
    v4 = v5;
    if (!v5)
    {
      v4 = [(LACPasscodeHelper *)self _currentUserID];
    }

    v5 = v4;
    [(NSMutableDictionary *)self->_failedAttemptsDictionary removeObjectForKey:v4];
    [(NSMutableDictionary *)self->_backoffEndTimeDictionary removeObjectForKey:v5];
  }
}

- (void)_verifyPasscode:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B0233000, a2, OS_LOG_TYPE_ERROR, "Could not inject secure password (%@)", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_verifyPasscode:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B0233000, a2, OS_LOG_TYPE_ERROR, "Could not inject extractable password (%@)", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end