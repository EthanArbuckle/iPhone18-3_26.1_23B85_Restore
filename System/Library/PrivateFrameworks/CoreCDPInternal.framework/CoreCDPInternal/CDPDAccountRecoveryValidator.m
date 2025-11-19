@interface CDPDAccountRecoveryValidator
- (CDPDAccountRecoveryValidator)initWithContext:(id)a3 authProvider:(id)a4 octagonTrustProxy:(id)a5;
- (id)_cdpErrorFromAuthKitError:(id)a3;
- (void)confirmRecoveryKey:(id)a3 completion:(id)a4;
- (void)generateRecoveryKey:(id)a3;
@end

@implementation CDPDAccountRecoveryValidator

- (CDPDAccountRecoveryValidator)initWithContext:(id)a3 authProvider:(id)a4 octagonTrustProxy:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(CDPDAccountRecoveryValidator *)self init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_authProvider, a4);
    objc_storeStrong(&v13->_context, a3);
    objc_storeStrong(&v13->_octagonTrustProxy, a5);
  }

  return v13;
}

- (void)confirmRecoveryKey:(id)a3 completion:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = self;
    _os_log_impl(&dword_24510B000, v8, OS_LOG_TYPE_DEFAULT, "%@ : Confirming recovery key", buf, 0xCu);
  }

  if (!v7)
  {
    [CDPDAccountRecoveryValidator confirmRecoveryKey:completion:];
  }

  if (!self->_authProvider)
  {
    [CDPDAccountRecoveryValidator confirmRecoveryKey:completion:];
  }

  v9 = [MEMORY[0x277CE44D8] analyticsEventWithContext:self->_context eventName:*MEMORY[0x277CFD800] category:*MEMORY[0x277CFD930]];
  authProvider = self->_authProvider;
  context = self->_context;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __62__CDPDAccountRecoveryValidator_confirmRecoveryKey_completion___block_invoke;
  v16[3] = &unk_278E244A8;
  v16[4] = self;
  v17 = v6;
  v18 = v9;
  v19 = v7;
  v12 = v7;
  v13 = v9;
  v14 = v6;
  [(CDPAuthProviderInternal *)authProvider cdpContext:context verifyMasterKey:v14 completion:v16];

  v15 = *MEMORY[0x277D85DE8];
}

void __62__CDPDAccountRecoveryValidator_confirmRecoveryKey_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) setRecoveredInfo:a2];
    [*(a1 + 32) setRecoveryKey:*(a1 + 40)];
    [*(a1 + 48) setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CE4590]];
    v6 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
    [v6 sendEvent:*(a1 + 48)];

    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(v7 + 24);
    v10 = [*(v7 + 16) altDSID];
    v20 = 0;
    v11 = [v9 cacheRecoveryKey:v8 forAltDSID:v10 error:&v20];
    v12 = v20;

    v13 = _CDPLogSystem();
    v14 = v13;
    if (v11)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_24510B000, v14, OS_LOG_TYPE_DEFAULT, "cached reovery key", buf, 2u);
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __62__CDPDAccountRecoveryValidator_confirmRecoveryKey_completion___block_invoke_cold_1(v14);
    }

    v18 = *(*(a1 + 56) + 16);
  }

  else
  {
    [*(a1 + 48) setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277CE4590]];
    v15 = _CDPLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 32);
      *buf = 138412546;
      v22 = v16;
      v23 = 2112;
      v24 = v5;
      _os_log_impl(&dword_24510B000, v15, OS_LOG_TYPE_DEFAULT, "%@ : recovery failed with error %@", buf, 0x16u);
    }

    [*(a1 + 48) populateUnderlyingErrorsStartingWithRootError:v5];
    v17 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
    [v17 sendEvent:*(a1 + 48)];

    v12 = [*(a1 + 32) _cdpErrorFromAuthKitError:v5];
    v18 = *(*(a1 + 56) + 16);
  }

  v18();

  v19 = *MEMORY[0x277D85DE8];
}

- (void)generateRecoveryKey:(id)a3
{
  v3 = a3;
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [CDPDAccountRecoveryValidator generateRecoveryKey:v4];
  }

  if (v3)
  {
    v5 = _CDPStateError();
    v3[2](v3, 0, v5);
  }
}

- (id)_cdpErrorFromAuthKitError:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 domain];
    if ([v5 isEqualToString:*MEMORY[0x277CEFF48]])
    {
      [v4 code];
    }

    v6 = _CDPStateErrorWithUnderlying();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end