@interface CDPADPRegionAvailabilityProvider
- (CDPADPRegionAvailabilityProvider)initWithWalrusConfigProvider:(id)provider;
- (void)isWalrusEnabledForPrimaryAccountWithCompletionHandler:(id)handler;
@end

@implementation CDPADPRegionAvailabilityProvider

- (CDPADPRegionAvailabilityProvider)initWithWalrusConfigProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = CDPADPRegionAvailabilityProvider;
  v6 = [(CDPADPRegionAvailabilityProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configProvider, provider);
  }

  return v7;
}

- (void)isWalrusEnabledForPrimaryAccountWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  configProvider = self->_configProvider;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __90__CDPADPRegionAvailabilityProvider_isWalrusEnabledForPrimaryAccountWithCompletionHandler___block_invoke;
  v7[3] = &unk_278E25208;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(AKWalrusConfigProvider *)configProvider getWalrusConfigWithCompletion:v7];
}

void __90__CDPADPRegionAvailabilityProvider_isWalrusEnabledForPrimaryAccountWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _CDPLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __90__CDPADPRegionAvailabilityProvider_isWalrusEnabledForPrimaryAccountWithCompletionHandler___block_invoke_cold_1(v6, v7);
    }

    v8 = *(a1 + 32);
    if (v8)
    {
      v9 = *(v8 + 16);
LABEL_16:
      v9();
    }
  }

  else
  {
    v10 = _CDPLogSystem();
    v11 = v10;
    if (v5)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        __90__CDPADPRegionAvailabilityProvider_isWalrusEnabledForPrimaryAccountWithCompletionHandler___block_invoke_cold_2(v5, v11);
      }

      if (*(a1 + 32))
      {
        if (![MEMORY[0x277CCACC8] isMainThread])
        {
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __90__CDPADPRegionAvailabilityProvider_isWalrusEnabledForPrimaryAccountWithCompletionHandler___block_invoke_16;
          block[3] = &unk_278E251E0;
          v17 = *(a1 + 32);
          v15 = v5;
          v16 = 0;
          dispatch_async(MEMORY[0x277D85CD0], block);

          goto LABEL_17;
        }

        v12 = *(a1 + 32);
        [v5 featureStatus];
        v9 = *(v12 + 16);
        goto LABEL_16;
      }
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __90__CDPADPRegionAvailabilityProvider_isWalrusEnabledForPrimaryAccountWithCompletionHandler___block_invoke_cold_3(v11);
      }

      v13 = *(a1 + 32);
      if (v13)
      {
        v9 = *(v13 + 16);
        goto LABEL_16;
      }
    }
  }

LABEL_17:
}

uint64_t __90__CDPADPRegionAvailabilityProvider_isWalrusEnabledForPrimaryAccountWithCompletionHandler___block_invoke_16(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) featureStatus] == 1;
  v4 = *(a1 + 40);
  v5 = *(v2 + 16);

  return v5(v2, v3, v4);
}

void __90__CDPADPRegionAvailabilityProvider_isWalrusEnabledForPrimaryAccountWithCompletionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_24510B000, a2, OS_LOG_TYPE_ERROR, "Could not fetch walrus availability configuration. Error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __90__CDPADPRegionAvailabilityProvider_isWalrusEnabledForPrimaryAccountWithCompletionHandler___block_invoke_cold_2(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 134217984;
  v5 = [a1 featureStatus];
  _os_log_debug_impl(&dword_24510B000, a2, OS_LOG_TYPE_DEBUG, "Setting walrus feature availability status for primary account - %ld", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end