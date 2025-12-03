@interface CDPDRecoveryKeyValidatorImpl
- (CDPDRecoveryKeyValidatorImpl)initWithContext:(id)context delegate:(id)delegate octagonTrustProxy:(id)proxy;
- (void)confirmRecoveryKey:(id)key completion:(id)completion;
- (void)generateRecoveryKey:(id)key;
- (void)setRecoveryKey:(id)key;
@end

@implementation CDPDRecoveryKeyValidatorImpl

- (CDPDRecoveryKeyValidatorImpl)initWithContext:(id)context delegate:(id)delegate octagonTrustProxy:(id)proxy
{
  contextCopy = context;
  delegateCopy = delegate;
  proxyCopy = proxy;
  v12 = [(CDPDRecoveryKeyValidatorImpl *)self init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_context, context);
    objc_storeWeak(&v13->_delegate, delegateCopy);
    v13->_recoveryKeyVerified = 0;
    objc_storeStrong(&v13->_octagonTrustProxy, proxy);
  }

  return v13;
}

- (void)confirmRecoveryKey:(id)key completion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  completionCopy = completion;
  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_24510B000, v8, OS_LOG_TYPE_DEFAULT, "%@ : Confirming recovery key", buf, 0xCu);
  }

  if (!completionCopy)
  {
    [CDPDRecoveryKeyValidatorImpl confirmRecoveryKey:completion:];
  }

  recoveryKey = [(CDPDRecoveryKeyValidatorImpl *)self recoveryKey];
  v10 = [recoveryKey isEqualToString:keyCopy];

  if (v10)
  {
    octagonTrustProxy = self->_octagonTrustProxy;
    altDSID = [(CDPContext *)self->_context altDSID];
    v25 = 0;
    v13 = [(CDPDOctagonTrustProxy *)octagonTrustProxy cacheRecoveryKey:keyCopy forAltDSID:altDSID error:&v25];
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
    v19 = [(CDPDOctagonTrustProxy *)v18 registerRecoveryKey:keyCopy error:&v24];
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

    completionCopy[2](completionCopy, v19, v20);
  }

  else
  {
    v17 = _CDPLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [CDPDRecoveryKeyValidatorImpl confirmRecoveryKey:v17 completion:?];
    }

    completionCopy[2](completionCopy, 0, 0);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)generateRecoveryKey:(id)key
{
  v14 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_24510B000, v5, OS_LOG_TYPE_DEFAULT, "%@ : Generating recovery key", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = 0;
  v7 = [WeakRetained generateRecoveryKeyWithInfo:MEMORY[0x277CBEC10] error:&v11];
  v8 = v11;
  [(CDPDRecoveryKeyValidatorImpl *)self setRecoveryKey:v7];

  recoveryKey = [(CDPDRecoveryKeyValidatorImpl *)self recoveryKey];
  keyCopy[2](keyCopy, recoveryKey, v8);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)setRecoveryKey:(id)key
{
  keyCopy = key;
  [(CDPDRecoveryKeyValidatorImpl *)self setRecoveryKeyVerified:0];
  recoveryKey = self->_recoveryKey;
  self->_recoveryKey = keyCopy;
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