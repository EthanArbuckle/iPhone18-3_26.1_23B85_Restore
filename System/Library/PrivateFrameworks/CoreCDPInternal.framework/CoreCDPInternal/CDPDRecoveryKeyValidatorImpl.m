@interface CDPDRecoveryKeyValidatorImpl
- (CDPDRecoveryKeyValidatorImpl)initWithContext:(id)a3 delegate:(id)a4 octagonTrustProxy:(id)a5;
- (void)confirmRecoveryKey:(id)a3 completion:(id)a4;
- (void)generateRecoveryKey:(id)a3;
- (void)setRecoveryKey:(id)a3;
@end

@implementation CDPDRecoveryKeyValidatorImpl

- (CDPDRecoveryKeyValidatorImpl)initWithContext:(id)a3 delegate:(id)a4 octagonTrustProxy:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(CDPDRecoveryKeyValidatorImpl *)self init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_context, a3);
    objc_storeWeak(&v13->_delegate, v10);
    v13->_recoveryKeyVerified = 0;
    objc_storeStrong(&v13->_octagonTrustProxy, a5);
  }

  return v13;
}

- (void)confirmRecoveryKey:(id)a3 completion:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = self;
    _os_log_impl(&dword_24510B000, v8, OS_LOG_TYPE_DEFAULT, "%@ : Confirming recovery key", buf, 0xCu);
  }

  if (!v7)
  {
    [CDPDRecoveryKeyValidatorImpl confirmRecoveryKey:completion:];
  }

  v9 = [(CDPDRecoveryKeyValidatorImpl *)self recoveryKey];
  v10 = [v9 isEqualToString:v6];

  if (v10)
  {
    octagonTrustProxy = self->_octagonTrustProxy;
    v12 = [(CDPContext *)self->_context altDSID];
    v25 = 0;
    v13 = [(CDPDOctagonTrustProxy *)octagonTrustProxy cacheRecoveryKey:v6 forAltDSID:v12 error:&v25];
    v14 = v25;

    v15 = _CDPLogSystem();
    v16 = v15;
    if (v13)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_24510B000, v16, OS_LOG_TYPE_DEFAULT, "cached reovery key", buf, 2u);
      }
    }

    else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __62__CDPDAccountRecoveryValidator_confirmRecoveryKey_completion___block_invoke_cold_1(v16);
    }

    v18 = self->_octagonTrustProxy;
    v24 = 0;
    v19 = [(CDPDOctagonTrustProxy *)v18 registerRecoveryKey:v6 error:&v24];
    v20 = v24;
    v21 = _CDPLogSystem();
    v22 = v21;
    if (v19)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_24510B000, v22, OS_LOG_TYPE_DEFAULT, "Registered recovery key in local trust systems", buf, 2u);
      }

      [(CDPDRecoveryKeyValidatorImpl *)self setRecoveryKeyVerified:1];
    }

    else
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [CDPDRecoveryKeyValidatorImpl confirmRecoveryKey:v20 completion:v22];
      }
    }

    v7[2](v7, v19, v20);
  }

  else
  {
    v17 = _CDPLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [CDPDRecoveryKeyValidatorImpl confirmRecoveryKey:v17 completion:?];
    }

    v7[2](v7, 0, 0);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)generateRecoveryKey:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = self;
    _os_log_impl(&dword_24510B000, v5, OS_LOG_TYPE_DEFAULT, "%@ : Generating recovery key", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = 0;
  v7 = [WeakRetained generateRecoveryKeyWithInfo:MEMORY[0x277CBEC10] error:&v11];
  v8 = v11;
  [(CDPDRecoveryKeyValidatorImpl *)self setRecoveryKey:v7];

  v9 = [(CDPDRecoveryKeyValidatorImpl *)self recoveryKey];
  v4[2](v4, v9, v8);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)setRecoveryKey:(id)a3
{
  v4 = a3;
  [(CDPDRecoveryKeyValidatorImpl *)self setRecoveryKeyVerified:0];
  recoveryKey = self->_recoveryKey;
  self->_recoveryKey = v4;
}

- (void)confirmRecoveryKey:(uint64_t)a1 completion:(NSObject *)a2 .cold.3(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 141558274;
  v4 = 1752392040;
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_24510B000, a2, OS_LOG_TYPE_ERROR, "Failed to register recovery key in local trust systems with error: %{mask.hash}@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end