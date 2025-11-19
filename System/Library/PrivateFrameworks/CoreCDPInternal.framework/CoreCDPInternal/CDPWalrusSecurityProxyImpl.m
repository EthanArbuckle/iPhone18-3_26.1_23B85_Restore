@interface CDPWalrusSecurityProxyImpl
- (void)webAccessStatusWithCompletion:(id)a3;
@end

@implementation CDPWalrusSecurityProxyImpl

- (void)webAccessStatusWithCompletion:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  os_unfair_lock_lock(&_accountSettingsLock);
  v4 = [MEMORY[0x277CFD4A8] contextForPrimaryAccount];
  v5 = [v4 cliqueConfiguration];
  v16 = 0;
  v6 = [MEMORY[0x277CDBD48] fetchAccountWideSettingsDefaultWithForceFetch:0 configuration:v5 error:&v16];
  v7 = v16;
  os_unfair_lock_unlock(&_accountSettingsLock);
  v8 = _CDPLogSystem();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(CDPWalrusSecurityProxyImpl *)v7 webAccessStatusWithCompletion:v9];
    }

    v3[2](v3, 0, v7);
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v6 webAccess];
      v11 = [v10 enabled];
      *buf = 67109120;
      v18 = v11;
      _os_log_impl(&dword_24510B000, v9, OS_LOG_TYPE_DEFAULT, "Successfully fetched web access status (%{BOOL}d)", buf, 8u);
    }

    v12 = [v6 webAccess];
    v13 = [v12 enabled];

    if (v13)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    v3[2](v3, v14, 0);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)webAccessStatusWithCompletion:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 description];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_24510B000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch web access status with error: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)setWebAccessStatusEnabled:(uint64_t)a1 completion:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_24510B000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch existing account settings with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)setWebAccessStatusEnabled:(NSObject *)a3 completion:.cold.2(char a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a1 & 1;
  v5 = [a2 description];
  v7[0] = 67109378;
  v7[1] = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_24510B000, a3, OS_LOG_TYPE_ERROR, "Failed to update web access status (%{BOOL}d) with error: %@", v7, 0x12u);

  v6 = *MEMORY[0x277D85DE8];
}

@end