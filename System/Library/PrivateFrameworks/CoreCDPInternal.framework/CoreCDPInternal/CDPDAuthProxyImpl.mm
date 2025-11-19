@interface CDPDAuthProxyImpl
- (BOOL)isPrimaryAppleIDLoggedIn;
- (id)_authContextFromCDPContext:(id)a3;
- (void)cdpContext:(id)a3 persistMasterKeyVerifier:(id)a4 completion:(id)a5;
- (void)cdpContext:(id)a3 persistRecoveryKey:(id)a4 keyType:(unint64_t)a5 completion:(id)a6;
- (void)cdpContext:(id)a3 verifyMasterKey:(id)a4 completion:(id)a5;
- (void)getUserInformationForAltDSID:(id)a3 completion:(id)a4;
@end

@implementation CDPDAuthProxyImpl

- (void)cdpContext:(id)a3 persistRecoveryKey:(id)a4 keyType:(unint64_t)a5 completion:(id)a6
{
  v25 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  v12 = a4;
  v13 = _CDPLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v10 altDSID];
    v19 = 134218498;
    v20 = a5;
    v21 = 2160;
    v22 = 1752392040;
    v23 = 2112;
    v24 = v14;
    _os_log_impl(&dword_24510B000, v13, OS_LOG_TYPE_DEFAULT, "Attempting to persist verifier for keyType: %ld for %{mask.hash}@", &v19, 0x20u);
  }

  v15 = [(CDPDAuthProxyImpl *)self _authContextFromCDPContext:v10];
  [v15 setAuthenticationType:1];
  v16 = objc_alloc_init(MEMORY[0x277CF0288]);
  [v16 setVerifier:v12];

  [v16 setKeyType:0];
  v17 = objc_alloc_init(MEMORY[0x277CF0178]);
  [v17 persistRecoveryKeyWithContext:v16 authContext:v15 completion:v11];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)cdpContext:(id)a3 persistMasterKeyVerifier:(id)a4 completion:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _CDPLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v8 altDSID];
    v16 = 138412802;
    v17 = v9;
    v18 = 2160;
    v19 = 1752392040;
    v20 = 2112;
    v21 = v12;
    _os_log_impl(&dword_24510B000, v11, OS_LOG_TYPE_DEFAULT, "Attempting to persist verifier: %@ for %{mask.hash}@", &v16, 0x20u);
  }

  v13 = [(CDPDAuthProxyImpl *)self _authContextFromCDPContext:v8];
  [v13 setAuthenticationType:1];
  v14 = objc_alloc_init(MEMORY[0x277CF0178]);
  [v14 persistMasterKeyVerifier:v9 context:v13 completion:v10];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)cdpContext:(id)a3 verifyMasterKey:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(CDPDAuthProxyImpl *)self _authContextFromCDPContext:a3];
  if (objc_opt_respondsToSelector())
  {
    [v10 setIsRKVerification:1];
  }

  [v10 setAuthenticationType:1];
  if (objc_opt_respondsToSelector())
  {
    v11 = [MEMORY[0x277CF0140] recoveryContextWithAuthContext:v10];
    v12 = objc_alloc_init(MEMORY[0x277CF0178]);
    if (objc_opt_respondsToSelector())
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __59__CDPDAuthProxyImpl_cdpContext_verifyMasterKey_completion___block_invoke;
      v16[3] = &unk_278E24620;
      v17 = v9;
      [v12 verifyMasterKey:v8 context:v11 completion:v16];
      v13 = v17;
    }

    else
    {
      v15 = _CDPLogSystem();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [CDPDAuthProxyImpl cdpContext:v15 verifyMasterKey:? completion:?];
      }

      if (!v9)
      {
        goto LABEL_15;
      }

      v13 = _CDPStateError();
      (*(v9 + 2))(v9, 0, v13);
    }

LABEL_15:
    goto LABEL_16;
  }

  v14 = _CDPLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [CDPDAuthProxyImpl cdpContext:v14 verifyMasterKey:? completion:?];
  }

  if (v9)
  {
    v11 = _CDPStateError();
    (*(v9 + 2))(v9, 0, v11);
LABEL_16:
  }
}

void __59__CDPDAuthProxyImpl_cdpContext_verifyMasterKey_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v5)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = *(v6 + 16);
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = *(v6 + 16);
  }

  v7();
LABEL_7:
}

- (id)_authContextFromCDPContext:(id)a3
{
  v3 = MEMORY[0x277CF0170];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setIsUsernameEditable:0];
  v6 = [v4 appleID];
  [v5 setUsername:v6];

  v7 = [v4 altDSID];
  [v5 setAltDSID:v7];

  v8 = [v4 dsid];

  v9 = [v8 stringValue];
  [v5 setDSID:v9];

  return v5;
}

- (BOOL)isPrimaryAppleIDLoggedIn
{
  v2 = [MEMORY[0x277CF0130] sharedInstance];
  v3 = [v2 primaryAuthKitAccount];

  return v3 != 0;
}

- (void)getUserInformationForAltDSID:(id)a3 completion:(id)a4
{
  v5 = MEMORY[0x277CF0178];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(v5);
  [v8 getUserInformationForAltDSID:v7 completion:v6];
}

@end