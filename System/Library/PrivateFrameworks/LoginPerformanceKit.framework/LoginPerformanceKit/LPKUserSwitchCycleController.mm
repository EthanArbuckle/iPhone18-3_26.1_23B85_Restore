@interface LPKUserSwitchCycleController
- (BOOL)_isLoginSession;
- (BOOL)_validateUserSwitchExpectation;
- (BOOL)startUserSwitchWithType:(unint64_t)a3 count:(int64_t)a4 username:(id)a5 password:(id)a6 loginDelay:(int64_t)a7 logoutDelay:(int64_t)a8;
- (BOOL)triggerTestUserSwitchIfNeeded;
- (LPKUserSwitchCycleController)initWithDelegate:(id)a3;
- (LPKUserSwitchCycleResponder)delegate;
- (unint64_t)_currentEnvironment;
- (void)_clearOutLocalPerfTestDefaults;
- (void)_fixTestStatesForRetry;
- (void)_isLoginSession;
- (void)_loginAccount:(id)a3 password:(id)a4 localLoginOnly:(BOOL)a5 delay:(double)a6;
- (void)_scheduleRetryWithTimeout:(double)a3;
- (void)_setUserSwitchDestinationExpectation:(unint64_t)a3 retryIfFailed:(BOOL)a4 completionHandler:(id)a5;
- (void)_triggerFastLogoutWithDelay:(double)a3;
- (void)_triggerFullLogoutWithDelay:(double)a3;
- (void)_updateLocalPerfTestCycleCount:(int64_t)a3;
- (void)_validateUserSwitchExpectation;
- (void)triggerTestUserSwitchIfNeeded;
@end

@implementation LPKUserSwitchCycleController

- (LPKUserSwitchCycleController)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = LPKUserSwitchCycleController;
  v5 = [(LPKUserSwitchCycleController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
  }

  return v6;
}

- (BOOL)startUserSwitchWithType:(unint64_t)a3 count:(int64_t)a4 username:(id)a5 password:(id)a6 loginDelay:(int64_t)a7 logoutDelay:(int64_t)a8
{
  v43 = *MEMORY[0x277D85DE8];
  v14 = a5;
  v15 = a6;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  if ([MEMORY[0x277D244C0] isInternalBuild])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v40 = a3;
      v41 = 2048;
      v42 = a4;
      _os_log_impl(&dword_2561AB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Starting user switch cycle with type: %lu for %ld times", buf, 0x16u);
    }

    v16 = dispatch_semaphore_create(0);
    v17 = [MEMORY[0x277D244D0] sharedStorage];
    v38[0] = MEMORY[0x277CBEC38];
    v37[0] = @"LPKIsLocalUserSwitchTestOngoing";
    v37[1] = @"LPKLocalUserSwitchTestType";
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v38[1] = v18;
    v37[2] = @"LPKLocalUserSwitchTestRemainCycleCount";
    v19 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    v20 = v19;
    v21 = @"Local User";
    if (v14)
    {
      v21 = v14;
    }

    v38[2] = v19;
    v38[3] = v21;
    v37[3] = @"LPKLocalUserSwitchTestUsername";
    v37[4] = @"LPKLocalUserSwitchTestPassword";
    v22 = &stru_28683D458;
    if (v15)
    {
      v22 = v15;
    }

    v38[4] = v22;
    v37[5] = @"LPKLocalUserSwitchTestLoginDelay";
    v23 = [MEMORY[0x277CCABB0] numberWithInteger:a7];
    v38[5] = v23;
    v37[6] = @"LPKLocalUserSwitchTestLogoutDelay";
    v24 = [MEMORY[0x277CCABB0] numberWithInteger:a8];
    v38[6] = v24;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:7];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __103__LPKUserSwitchCycleController_startUserSwitchWithType_count_username_password_loginDelay_logoutDelay___block_invoke;
    v30[3] = &unk_279827BD0;
    v32 = &v33;
    v30[4] = self;
    v26 = v16;
    v31 = v26;
    [v17 saveKeyValuePairs:v25 completionHandler:v30];

    dispatch_semaphore_wait(v26, 0xFFFFFFFFFFFFFFFFLL);
    v27 = *(v34 + 24);
  }

  else
  {
    v27 = *(v34 + 24);
  }

  _Block_object_dispose(&v33, 8);

  v28 = *MEMORY[0x277D85DE8];
  return v27 & 1;
}

intptr_t __103__LPKUserSwitchCycleController_startUserSwitchWithType_count_username_password_loginDelay_logoutDelay___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) triggerTestUserSwitchIfNeeded];
  }

  v3 = *(a1 + 40);

  return dispatch_semaphore_signal(v3);
}

- (BOOL)triggerTestUserSwitchIfNeeded
{
  v51[1] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D244C0] isInternalBuild])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v47 = "[LPKUserSwitchCycleController triggerTestUserSwitchIfNeeded]";
      _os_log_impl(&dword_2561AB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }

    v3 = [MEMORY[0x277D244D0] sharedStorage];
    v4 = [v3 retrieveValueForKey:@"LPKIsLocalUserSwitchTestOngoing"];
    v5 = [v4 BOOLValue];

    if (!v5)
    {
      goto LABEL_31;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v47 = "[LPKUserSwitchCycleController triggerTestUserSwitchIfNeeded]";
      _os_log_impl(&dword_2561AB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Local user switch test is ongoing", buf, 0xCu);
    }

    v6 = [v3 retrieveValueForKey:@"LPKLocalUserSwitchTestRemainCycleCount"];
    v7 = [v6 integerValue];

    if (![(LPKUserSwitchCycleController *)self _validateUserSwitchExpectation])
    {
      v8 = [v3 retrieveValueForKey:@"LPKLocalUserSwitchTestIsPerformanceTest"];
      v9 = [v8 BOOLValue];

      v10 = [v3 retrieveValueForKey:@"LPKLocalUserSwitchTestRetryCount"];
      v11 = [v10 unsignedIntValue];

      if (!v9 || !v11)
      {
        [(LPKUserSwitchCycleController *)self _clearOutLocalPerfTestDefaults];
        goto LABEL_31;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2561AB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "We are doing performance test, try to recover", buf, 2u);
      }

      [(LPKUserSwitchCycleController *)self _fixTestStatesForRetry];
    }

    if (v7)
    {
      v12 = [v3 retrieveValueForKey:@"LPKLocalUserSwitchTestType"];
      v13 = [v12 unsignedIntegerValue];

      v14 = [v3 retrieveValueForKey:@"LPKLocalUserSwitchTestUsername"];
      v15 = [v3 retrieveValueForKey:@"LPKLocalUserSwitchTestPassword"];
      v16 = [v3 retrieveValueForKey:@"LPKLocalUserSwitchTestLoginDelay"];
      v17 = [v16 integerValue];

      v18 = 5.0;
      if (v17 >= 5.0)
      {
        v19 = v17;
      }

      else
      {
        v19 = 5.0;
      }

      v20 = [v3 retrieveValueForKey:@"LPKLocalUserSwitchTestLogoutDelay"];
      v21 = [v20 integerValue];

      if (v21 >= 5.0)
      {
        v18 = v21;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v47 = "[LPKUserSwitchCycleController triggerTestUserSwitchIfNeeded]";
        v48 = 2048;
        v49 = v13;
        _os_log_impl(&dword_2561AB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Will perform switch type: %ld", buf, 0x16u);
      }

      v22 = objc_opt_new();
      if ([(__CFString *)v14 length])
      {
        v23 = v22;
        v24 = v14;
      }

      else
      {
        v24 = @"Local User";
        v23 = v22;
      }

      [v23 setUsername:v24];
      if (-[__CFString length](v14, "length") && [v15 length])
      {
        v31 = 0;
      }

      else
      {

        v15 = 0;
        v31 = 1;
      }

      v32 = v18;
      if (v13 > 1)
      {
        if (v13 == 2)
        {
          if (![(LPKUserSwitchCycleController *)self _isLoginSession])
          {
            [(LPKUserSwitchCycleController *)self _updateLocalPerfTestCycleCount:v7 - 1];
            [(LPKUserSwitchCycleController *)self _triggerFastLogoutWithDelay:v32];
            goto LABEL_63;
          }

          goto LABEL_61;
        }

        if (v13 == 3)
        {
          if ([(LPKUserSwitchCycleController *)self _isLoginSession])
          {
LABEL_61:
            [(LPKUserSwitchCycleController *)self _loginAccount:v14 password:v15 localLoginOnly:v31 delay:v19];
            goto LABEL_63;
          }

          [(LPKUserSwitchCycleController *)self _updateLocalPerfTestCycleCount:v7 - 1];
LABEL_59:
          [(LPKUserSwitchCycleController *)self _triggerFullLogoutWithDelay:v32];
LABEL_63:

LABEL_64:
          v25 = 1;
          goto LABEL_65;
        }
      }

      else
      {
        if (!v13)
        {
          if ([(LPKUserSwitchCycleController *)self _isLoginSession])
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              v47 = "[LPKUserSwitchCycleController triggerTestUserSwitchIfNeeded]";
              _os_log_impl(&dword_2561AB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Will trigger first time login", buf, 0xCu);
            }

            [(LPKUserSwitchCycleController *)self _updateLocalPerfTestCycleCount:v7 - 1];
            v35 = [MEMORY[0x277D77BF8] sharedManager];
            v36 = [v35 userExists:v22];

            if (v36)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315138;
                v47 = "[LPKUserSwitchCycleController triggerTestUserSwitchIfNeeded]";
                _os_log_impl(&dword_2561AB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: User exist, we need to delete the user first", buf, 0xCu);
              }

              v37 = [MEMORY[0x277D77BF8] sharedManager];
              v40[0] = MEMORY[0x277D85DD0];
              v40[1] = 3221225472;
              v40[2] = __61__LPKUserSwitchCycleController_triggerTestUserSwitchIfNeeded__block_invoke_46;
              v40[3] = &unk_279827C20;
              v40[4] = self;
              v41 = v14;
              v44 = v31;
              v42 = v15;
              v43 = v19;
              [v37 deleteUser:v22 completionHandler:v40];

              goto LABEL_63;
            }

            goto LABEL_61;
          }

          goto LABEL_59;
        }

        if (v13 == 1)
        {
          if ([(LPKUserSwitchCycleController *)self _isLoginSession])
          {
            v33 = [MEMORY[0x277D77BF8] sharedManager];
            v34 = [v33 userExists:v22];

            if (v34)
            {
              [(LPKUserSwitchCycleController *)self _updateLocalPerfTestCycleCount:v7 - 1];
            }

            goto LABEL_61;
          }

          goto LABEL_59;
        }
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [LPKUserSwitchCycleController triggerTestUserSwitchIfNeeded];
      }

      goto LABEL_63;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v47 = "[LPKUserSwitchCycleController triggerTestUserSwitchIfNeeded]";
      _os_log_impl(&dword_2561AB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: No more user switch to do", buf, 0xCu);
    }

    v26 = [MEMORY[0x277D77BF8] sharedManager];
    v27 = [v26 currentUser];
    v28 = [v27 isLoginUser];

    v29 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (!v28)
    {
      if (v29)
      {
        *buf = 136315138;
        v47 = "[LPKUserSwitchCycleController triggerTestUserSwitchIfNeeded]";
        _os_log_impl(&dword_2561AB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Not login user, trigger full logout", buf, 0xCu);
      }

      [(LPKUserSwitchCycleController *)self _triggerFullLogoutWithDelay:5.0];
      goto LABEL_64;
    }

    if (v29)
    {
      *buf = 136315138;
      v47 = "[LPKUserSwitchCycleController triggerTestUserSwitchIfNeeded]";
      _os_log_impl(&dword_2561AB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Is login user, dump result", buf, 0xCu);
    }

    [(LPKUserSwitchCycleController *)self _clearOutLocalPerfTestDefaults];
    v50 = @"LPKLocalUserSwitchTestHasFinishedSuccessfully";
    v51[0] = MEMORY[0x277CBEC38];
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:&v50 count:1];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __61__LPKUserSwitchCycleController_triggerTestUserSwitchIfNeeded__block_invoke;
    v45[3] = &unk_279827BF8;
    v45[4] = self;
    [v3 saveKeyValuePairs:v30 completionHandler:v45];

LABEL_31:
    v25 = 0;
LABEL_65:

    goto LABEL_66;
  }

  v25 = 0;
LABEL_66:
  v38 = *MEMORY[0x277D85DE8];
  return v25;
}

void __61__LPKUserSwitchCycleController_triggerTestUserSwitchIfNeeded__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 performanceTestDidFinishSuccessfully];
}

- (void)_clearOutLocalPerfTestDefaults
{
  v7[10] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D244D0] sharedStorage];
  v7[0] = @"LPKIsLocalUserSwitchTestOngoing";
  v7[1] = @"LPKLocalUserSwitchTestType";
  v7[2] = @"LPKLocalUserSwitchTestRemainCycleCount";
  v7[3] = @"LPKLocalUserSwitchTestUsername";
  v7[4] = @"LPKLocalUserSwitchTestPassword";
  v7[5] = @"LPKUserSwitchDestination";
  v7[6] = @"LPKLocalUserSwitchTestHasFinishedSuccessfully";
  v7[7] = @"LPKLocalUserSwitchTestIsPerformanceTest";
  v7[8] = @"TestHasBeenPrewarmed";
  v7[9] = @"LPKLocalUserSwitchTestRetryCount";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:10];
  [v3 clearKeys:v4 completionHandler:0];

  v5 = [(LPKUserSwitchCycleController *)self delegate];
  [v5 performanceTestWillTerminate];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_updateLocalPerfTestCycleCount:(int64_t)a3
{
  v9[2] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277D244D0] sharedStorage];
  v8[0] = @"LPKLocalUserSwitchTestRemainCycleCount";
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v8[1] = @"TestHasBeenPrewarmed";
  v9[0] = v5;
  v9[1] = MEMORY[0x277CBEC38];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
  [v4 saveKeyValuePairs:v6 completionHandler:0];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_loginAccount:(id)a3 password:(id)a4 localLoginOnly:(BOOL)a5 delay:(double)a6
{
  v10 = a3;
  v11 = a4;
  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __76__LPKUserSwitchCycleController__loginAccount_password_localLoginOnly_delay___block_invoke;
  v14[3] = &unk_279827C98;
  objc_copyWeak(v17, &location);
  v17[1] = *&a6;
  v12 = v10;
  v15 = v12;
  v13 = v11;
  v16 = v13;
  v18 = a5;
  [(LPKUserSwitchCycleController *)self _setUserSwitchDestinationExpectation:2 retryIfFailed:1 completionHandler:v14];

  objc_destroyWeak(v17);
  objc_destroyWeak(&location);
}

void __76__LPKUserSwitchCycleController__loginAccount_password_localLoginOnly_delay___block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      v6 = dispatch_time(0, (*(a1 + 56) * 1000000000.0));
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __76__LPKUserSwitchCycleController__loginAccount_password_localLoginOnly_delay___block_invoke_2;
      v7[3] = &unk_279827C70;
      v7[4] = v5;
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v10 = *(a1 + 64);
      dispatch_after(v6, MEMORY[0x277D85CD0], v7);
    }

    else
    {
      [WeakRetained _clearOutLocalPerfTestDefaults];
    }
  }
}

void __76__LPKUserSwitchCycleController__loginAccount_password_localLoginOnly_delay___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D244D0] sharedStorage];
  v3 = [v2 retrieveValueForKey:@"LPKIsLocalUserSwitchTestOngoing"];
  v4 = [v3 BOOLValue];

  v5 = *(a1 + 32);
  if (v4)
  {
    [v5 _scheduleRetryWithTimeout:65.0];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      *buf = 136315394;
      v15 = "[LPKUserSwitchCycleController _loginAccount:password:localLoginOnly:delay:]_block_invoke_2";
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_2561AB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Calling into LoginUI to login account: %@", buf, 0x16u);
    }

    v7 = [*(a1 + 32) delegate];
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __76__LPKUserSwitchCycleController__loginAccount_password_localLoginOnly_delay___block_invoke_49;
    v13[3] = &unk_279827C48;
    v13[4] = *(a1 + 32);
    [v7 forceLoggingInAppleID:v8 password:v9 localLoginOnly:v10 completionHandler:v13];

    v11 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v12 = *MEMORY[0x277D85DE8];

    [v5 _clearOutLocalPerfTestDefaults];
  }
}

void __76__LPKUserSwitchCycleController__loginAccount_password_localLoginOnly_delay___block_invoke_49(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __76__LPKUserSwitchCycleController__loginAccount_password_localLoginOnly_delay___block_invoke_49_cold_1();
    }

    v4 = [v3 domain];
    if ([v4 isEqualToString:*MEMORY[0x277CCA050]])
    {
      if ([v3 code] == 4099)
      {

        goto LABEL_11;
      }

      v5 = [v3 code];

      if (v5 == 4097)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __76__LPKUserSwitchCycleController__loginAccount_password_localLoginOnly_delay___block_invoke_49_cold_2();
    }

    [*(a1 + 32) _clearOutLocalPerfTestDefaults];
  }

LABEL_11:
}

- (void)_triggerFastLogoutWithDelay:(double)a3
{
  v10 = *MEMORY[0x277D85DE8];
  if (![(LPKUserSwitchCycleController *)self _isLoginSession])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v9 = "[LPKUserSwitchCycleController _triggerFastLogoutWithDelay:]";
      _os_log_impl(&dword_2561AB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __60__LPKUserSwitchCycleController__triggerFastLogoutWithDelay___block_invoke;
    v6[3] = &unk_279827CE8;
    objc_copyWeak(v7, buf);
    v7[1] = *&a3;
    [(LPKUserSwitchCycleController *)self _setUserSwitchDestinationExpectation:0 retryIfFailed:1 completionHandler:v6];
    objc_destroyWeak(v7);
    objc_destroyWeak(buf);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __60__LPKUserSwitchCycleController__triggerFastLogoutWithDelay___block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      v6 = dispatch_time(0, (*(a1 + 40) * 1000000000.0));
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __60__LPKUserSwitchCycleController__triggerFastLogoutWithDelay___block_invoke_2;
      block[3] = &unk_279827CC0;
      block[4] = v5;
      dispatch_after(v6, MEMORY[0x277D85CD0], block);
    }

    else
    {
      [WeakRetained _clearOutLocalPerfTestDefaults];
    }
  }
}

void __60__LPKUserSwitchCycleController__triggerFastLogoutWithDelay___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277D244D0] sharedStorage];
  v3 = [v2 retrieveValueForKey:@"LPKIsLocalUserSwitchTestOngoing"];
  v4 = [v3 BOOLValue];

  v5 = *(a1 + 32);
  if (v4)
  {
    [v5 _scheduleRetryWithTimeout:370.0];
    v6 = [MEMORY[0x277D244B0] sharedController];
    [v6 logoutWithLogoutType:1 completionHandler:0];
  }

  else
  {

    [v5 _clearOutLocalPerfTestDefaults];
  }
}

- (void)_triggerFullLogoutWithDelay:(double)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277D77BF8] sharedManager];
  v6 = [v5 currentUser];
  v7 = [v6 isLoginUser];

  if ((v7 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v12 = "[LPKUserSwitchCycleController _triggerFullLogoutWithDelay:]";
      _os_log_impl(&dword_2561AB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __60__LPKUserSwitchCycleController__triggerFullLogoutWithDelay___block_invoke;
    v9[3] = &unk_279827CE8;
    objc_copyWeak(v10, buf);
    v10[1] = *&a3;
    [(LPKUserSwitchCycleController *)self _setUserSwitchDestinationExpectation:0 retryIfFailed:1 completionHandler:v9];
    objc_destroyWeak(v10);
    objc_destroyWeak(buf);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __60__LPKUserSwitchCycleController__triggerFullLogoutWithDelay___block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      v6 = dispatch_time(0, (*(a1 + 40) * 1000000000.0));
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __60__LPKUserSwitchCycleController__triggerFullLogoutWithDelay___block_invoke_2;
      block[3] = &unk_279827CC0;
      block[4] = v5;
      dispatch_after(v6, MEMORY[0x277D85CD0], block);
    }

    else
    {
      [WeakRetained _clearOutLocalPerfTestDefaults];
    }
  }
}

void __60__LPKUserSwitchCycleController__triggerFullLogoutWithDelay___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277D244D0] sharedStorage];
  v3 = [v2 retrieveValueForKey:@"LPKIsLocalUserSwitchTestOngoing"];
  v4 = [v3 BOOLValue];

  v5 = *(a1 + 32);
  if (v4)
  {
    [v5 _scheduleRetryWithTimeout:370.0];
    v6 = [MEMORY[0x277D244B0] sharedController];
    [v6 logoutWithLogoutType:0 completionHandler:0];
  }

  else
  {

    [v5 _clearOutLocalPerfTestDefaults];
  }
}

- (void)_setUserSwitchDestinationExpectation:(unint64_t)a3 retryIfFailed:(BOOL)a4 completionHandler:(id)a5
{
  v19[1] = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = [MEMORY[0x277D244D0] sharedStorage];
  v18 = @"LPKUserSwitchDestination";
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v19[0] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __101__LPKUserSwitchCycleController__setUserSwitchDestinationExpectation_retryIfFailed_completionHandler___block_invoke;
  v14[3] = &unk_279827D10;
  v17 = a4;
  v15 = v8;
  v16 = a3;
  v14[4] = self;
  v12 = v8;
  [v9 saveKeyValuePairs:v11 completionHandler:v14];

  v13 = *MEMORY[0x277D85DE8];
}

void __101__LPKUserSwitchCycleController__setUserSwitchDestinationExpectation_retryIfFailed_completionHandler___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    goto LABEL_8;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __101__LPKUserSwitchCycleController__setUserSwitchDestinationExpectation_retryIfFailed_completionHandler___block_invoke_cold_1();
  }

  if (*(a1 + 56) != 1)
  {
LABEL_8:
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_2561AB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Retry setting user switch destination expectation", v6, 2u);
    }

    [*(a1 + 32) _setUserSwitchDestinationExpectation:*(a1 + 48) retryIfFailed:0 completionHandler:*(a1 + 40)];
  }
}

- (unint64_t)_currentEnvironment
{
  v3 = [MEMORY[0x277D77BF8] sharedManager];
  v4 = [v3 currentUser];
  v5 = [v4 isLoginUser];

  if (v5)
  {
    return 0;
  }

  if ([(LPKUserSwitchCycleController *)self _isLoginSession])
  {
    return 1;
  }

  return 2;
}

- (BOOL)_validateUserSwitchExpectation
{
  v3 = [MEMORY[0x277D244D0] sharedStorage];
  v4 = [v3 retrieveValueForKey:@"LPKUserSwitchDestination"];

  if (v4 && (v5 = [v4 integerValue], v5 != -[LPKUserSwitchCycleController _currentEnvironment](self, "_currentEnvironment")))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [LPKUserSwitchCycleController _validateUserSwitchExpectation];
    }

    v7 = objc_opt_new();
    v8 = @"Logout";
    if (v5 == 2)
    {
      v8 = @"Login";
    }

    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ failed", v8];
    [v7 logErrorEventForTopic:@"Shared iPad User Switch Test" reason:v9 error:0 details:0];

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)_isLoginSession
{
  IsLoginSession = MKBUserSessionIsLoginSession();

  return IsLoginSession;
}

- (void)_fixTestStatesForRetry
{
  v20 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v19 = "[LPKUserSwitchCycleController _fixTestStatesForRetry]";
    _os_log_impl(&dword_2561AB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v3 = [MEMORY[0x277D244D0] sharedStorage];
  v4 = [v3 retrieveValueForKey:@"LPKLocalUserSwitchTestRemainCycleCount"];
  v5 = [v4 integerValue];

  v6 = [v3 retrieveValueForKey:@"LPKLocalUserSwitchTestRetryCount"];
  v7 = [v6 unsignedIntValue];

  v8 = [v3 retrieveValueForKey:@"TestHasBeenPrewarmed"];
  v9 = [v8 BOOLValue];

  v10 = [(LPKUserSwitchCycleController *)self _currentEnvironment];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{v10, @"LPKUserSwitchDestination"}];
  v17[0] = v11;
  v16[1] = @"LPKLocalUserSwitchTestRemainCycleCount";
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:v5 + v9];
  v17[1] = v12;
  v16[2] = @"LPKLocalUserSwitchTestRetryCount";
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7 - 1];
  v17[2] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
  [v3 saveKeyValuePairs:v14 error:0];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_scheduleRetryWithTimeout:(double)a3
{
  v4 = dispatch_time(0, (a3 * 1000000000.0));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__LPKUserSwitchCycleController__scheduleRetryWithTimeout___block_invoke;
  block[3] = &unk_279827CC0;
  block[4] = self;
  dispatch_after(v4, MEMORY[0x277D85CD0], block);
}

uint64_t __58__LPKUserSwitchCycleController__scheduleRetryWithTimeout___block_invoke(uint64_t a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __58__LPKUserSwitchCycleController__scheduleRetryWithTimeout___block_invoke_cold_1();
  }

  [*(a1 + 32) _fixTestStatesForRetry];
  return [*(a1 + 32) triggerTestUserSwitchIfNeeded];
}

- (LPKUserSwitchCycleResponder)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)triggerTestUserSwitchIfNeeded
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __76__LPKUserSwitchCycleController__loginAccount_password_localLoginOnly_delay___block_invoke_49_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __76__LPKUserSwitchCycleController__loginAccount_password_localLoginOnly_delay___block_invoke_49_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __101__LPKUserSwitchCycleController__setUserSwitchDestinationExpectation_retryIfFailed_completionHandler___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_validateUserSwitchExpectation
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_isLoginSession
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

@end