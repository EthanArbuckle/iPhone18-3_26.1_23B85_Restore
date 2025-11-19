@interface CDPContext(Daemon)
- (void)populateWalrusStatus;
- (void)reauthenticateUserWithCompletion:()Daemon;
@end

@implementation CDPContext(Daemon)

- (void)reauthenticateUserWithCompletion:()Daemon
{
  v4 = a3;
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_24510B000, v5, OS_LOG_TYPE_DEFAULT, "Attempting silent re-authentication...", buf, 2u);
  }

  if ([a1 idmsRecovery])
  {
    v6 = [a1 _authProvider];

    if (v6)
    {
      objc_initWeak(buf, a1);
      v7 = [a1 _authProvider];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __55__CDPContext_Daemon__reauthenticateUserWithCompletion___block_invoke;
      v10[3] = &unk_278E245D0;
      objc_copyWeak(&v12, buf);
      v10[4] = a1;
      v11 = v4;
      [v7 cdpContext:a1 performSilentRecoveryTokenRenewal:v10];

      objc_destroyWeak(&v12);
      objc_destroyWeak(buf);
    }

    else if (v4)
    {
      (*(v4 + 2))(v4, 0, 0);
    }
  }

  else
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __55__CDPContext_Daemon__reauthenticateUserWithCompletion___block_invoke_19;
    v8[3] = &unk_278E245F8;
    v8[4] = a1;
    v9 = v4;
    [CDPAuthenticationHelper silentAuthenticationForContext:a1 withCompletion:v8];
  }
}

- (void)populateWalrusStatus
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_24510B000, v0, OS_LOG_TYPE_ERROR, "Error populating walrus status on context - %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end