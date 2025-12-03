@interface LKStartupSupport
+ (BOOL)inUserSessionLoginUI;
+ (void)postStartupActions;
+ (void)postStartupTransitionActions;
@end

@implementation LKStartupSupport

+ (BOOL)inUserSessionLoginUI
{
  mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
  if ([mEMORY[0x277D77BF8] isLoginSession])
  {
    mEMORY[0x277D77BF8]2 = [MEMORY[0x277D77BF8] sharedManager];
    currentUser = [mEMORY[0x277D77BF8]2 currentUser];
    v5 = [currentUser isLoginUser] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

+ (void)postStartupActions
{
  mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
  isMultiUser = [mEMORY[0x277D77BF8] isMultiUser];

  if (isMultiUser && _vproc_set_global_on_demand())
  {
    v4 = LKLogDefault;
    if (os_log_type_enabled(LKLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_25618F000, v4, OS_LOG_TYPE_DEFAULT, "_vproc_set_global_on_demand failed", v5, 2u);
    }
  }
}

+ (void)postStartupTransitionActions
{
  mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
  isMultiUser = [mEMORY[0x277D77BF8] isMultiUser];

  if (isMultiUser)
  {
    LKRegisterLoginKitLogging();
    mEMORY[0x277D77BF8]2 = [MEMORY[0x277D77BF8] sharedManager];
    isLoginSession = [mEMORY[0x277D77BF8]2 isLoginSession];

    if (isLoginSession)
    {
      kdebug_trace();
      v6 = LKLogDefault;
      v7 = 0;
      if (os_log_type_enabled(LKLogDefault, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25618F000, v6, OS_LOG_TYPE_DEFAULT, "LoginKit: Logout ended.", buf, 2u);
        v7 = 0;
      }
    }

    else
    {
      kdebug_trace();
      v8 = LKLogDefault;
      if (os_log_type_enabled(LKLogDefault, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25618F000, v8, OS_LOG_TYPE_DEFAULT, "LoginKit: Login ended.", buf, 2u);
      }

      LKAnalyticsSendLoginEvent();
      v7 = 1;
    }

    v9 = +[LKLoginController sharedController];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __48__LKStartupSupport_postStartupTransitionActions__block_invoke;
    v10[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
    v10[4] = v7;
    [v9 checkInWithCurrentEnvironment:v7 completionHandler:v10];
  }
}

void __48__LKStartupSupport_postStartupTransitionActions__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = LKLogDefault;
  v5 = os_log_type_enabled(LKLogDefault, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v9 = 138412290;
      v10 = v3;
      v6 = "Error checking in with logind: %@";
LABEL_6:
      _os_log_impl(&dword_25618F000, v4, OS_LOG_TYPE_DEFAULT, v6, &v9, 0xCu);
    }
  }

  else if (v5)
  {
    v7 = *(a1 + 32);
    v9 = 134217984;
    v10 = v7;
    v6 = "Successfully checked in with current environment: %lu";
    goto LABEL_6;
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end