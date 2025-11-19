@interface CDPContext
@end

@implementation CDPContext

void __55__CDPContext_Daemon__reauthenticateUserWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _CDPLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = v6;
    _os_log_impl(&dword_24510B000, v7, OS_LOG_TYPE_DEFAULT, "Renew request completed! Error: %@", &v17, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v9 = [v5 passwordEquivToken];

    if (v9)
    {
      v10 = _CDPLogSystem();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        __55__CDPContext_Daemon__reauthenticateUserWithCompletion___block_invoke_cold_1(v10);
      }

      v11 = [v5 passwordEquivToken];
      [WeakRetained setPasswordEquivToken:v11];
    }
  }

  v12 = [MEMORY[0x277CFD4A8] isSubsetOfContextTypeSignIn:{objc_msgSend(*(a1 + 32), "type")}];
  if (v6 && v12 && [MEMORY[0x277CFD560] isAudioAccessory])
  {
    v13 = _CDPLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      __55__CDPContext_Daemon__reauthenticateUserWithCompletion___block_invoke_cold_2();
    }
  }

  v14 = *(a1 + 40);
  if (v14)
  {
    v15 = [v5 passwordEquivToken];
    (*(v14 + 16))(v14, v15 != 0, v6);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __55__CDPContext_Daemon__reauthenticateUserWithCompletion___block_invoke_19(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5 && ([v5 objectForKeyedSubscript:*MEMORY[0x277CEFFC8]], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = _CDPLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_24510B000, v8, OS_LOG_TYPE_DEFAULT, "Silent re-authentication succeeded", v14, 2u);
    }

    [*(a1 + 32) updateWithAuthenticationResults:v5];
    v9 = *(a1 + 40);
    if (v9)
    {
      v10 = *(v9 + 16);
LABEL_16:
      v10();
    }
  }

  else
  {
    v11 = _CDPLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __55__CDPContext_Daemon__reauthenticateUserWithCompletion___block_invoke_19_cold_1();
    }

    if ([MEMORY[0x277CFD4A8] isSubsetOfContextTypeSignIn:{objc_msgSend(*(a1 + 32), "type")}] && objc_msgSend(MEMORY[0x277CFD560], "isAudioAccessory"))
    {
      v12 = _CDPLogSystem();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        __55__CDPContext_Daemon__reauthenticateUserWithCompletion___block_invoke_19_cold_2();
      }
    }

    v13 = *(a1 + 40);
    if (v13)
    {
      v10 = *(v13 + 16);
      goto LABEL_16;
    }
  }
}

void __55__CDPContext_Daemon__reauthenticateUserWithCompletion___block_invoke_cold_2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_fault_impl(&dword_24510B000, v0, OS_LOG_TYPE_FAULT, "CDP Reauthentication on HomePod failed. Error: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __55__CDPContext_Daemon__reauthenticateUserWithCompletion___block_invoke_19_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_24510B000, v0, OS_LOG_TYPE_ERROR, "Silent re-authentication failed: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __55__CDPContext_Daemon__reauthenticateUserWithCompletion___block_invoke_19_cold_2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_fault_impl(&dword_24510B000, v0, OS_LOG_TYPE_FAULT, "CDP Reauth on HomePod failed. Error: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end