@interface CDPDAuthProxyImpl
- (BOOL)isPrimaryAppleIDLoggedIn;
- (id)_authContextFromCDPContext:(id)context;
- (void)cdpContext:(id)context persistMasterKeyVerifier:(id)verifier completion:(id)completion;
- (void)cdpContext:(id)context persistRecoveryKey:(id)key keyType:(unint64_t)type completion:(id)completion;
- (void)cdpContext:(id)context verifyMasterKey:(id)key completion:(id)completion;
- (void)getUserInformationForAltDSID:(id)d completion:(id)completion;
@end

@implementation CDPDAuthProxyImpl

- (void)cdpContext:(id)context persistRecoveryKey:(id)key keyType:(unint64_t)type completion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  completionCopy = completion;
  keyCopy = key;
  v13 = _CDPLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    altDSID = [contextCopy altDSID];
    v19 = 134218498;
    typeCopy = type;
    v21 = 2160;
    v22 = 1752392040;
    v23 = 2112;
    v24 = altDSID;
    _os_log_impl(&dword_24510B000, v13, OS_LOG_TYPE_DEFAULT, "Attempting to persist verifier for keyType: %ld for %{mask.hash}@", &v19, 0x20u);
  }

  v15 = [(CDPDAuthProxyImpl *)self _authContextFromCDPContext:contextCopy];
  [v15 setAuthenticationType:1];
  v16 = objc_alloc_init(MEMORY[0x277CF0288]);
  [v16 setVerifier:keyCopy];

  [v16 setKeyType:0];
  v17 = objc_alloc_init(MEMORY[0x277CF0178]);
  [v17 persistRecoveryKeyWithContext:v16 authContext:v15 completion:completionCopy];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)cdpContext:(id)context persistMasterKeyVerifier:(id)verifier completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  verifierCopy = verifier;
  completionCopy = completion;
  v11 = _CDPLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    altDSID = [contextCopy altDSID];
    v16 = 138412802;
    v17 = verifierCopy;
    v18 = 2160;
    v19 = 1752392040;
    v20 = 2112;
    v21 = altDSID;
    _os_log_impl(&dword_24510B000, v11, OS_LOG_TYPE_DEFAULT, "Attempting to persist verifier: %@ for %{mask.hash}@", &v16, 0x20u);
  }

  v13 = [(CDPDAuthProxyImpl *)self _authContextFromCDPContext:contextCopy];
  [v13 setAuthenticationType:1];
  v14 = objc_alloc_init(MEMORY[0x277CF0178]);
  [v14 persistMasterKeyVerifier:verifierCopy context:v13 completion:completionCopy];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)cdpContext:(id)context verifyMasterKey:(id)key completion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  v10 = [(CDPDAuthProxyImpl *)self _authContextFromCDPContext:context];
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
      v17 = completionCopy;
      [v12 verifyMasterKey:keyCopy context:v11 completion:v16];
      v13 = v17;
    }

    else
    {
      v15 = _CDPLogSystem();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [CDPDAuthProxyImpl cdpContext:v15 verifyMasterKey:? completion:?];
      }

      if (!completionCopy)
      {
        goto LABEL_15;
      }

      v13 = _CDPStateError();
      (*(completionCopy + 2))(completionCopy, 0, v13);
    }

LABEL_15:
    goto LABEL_16;
  }

  v14 = _CDPLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [CDPDAuthProxyImpl cdpContext:v14 verifyMasterKey:? completion:?];
  }

  if (completionCopy)
  {
    v11 = _CDPStateError();
    (*(completionCopy + 2))(completionCopy, 0, v11);
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

- (id)_authContextFromCDPContext:(id)context
{
  v3 = MEMORY[0x277CF0170];
  contextCopy = context;
  v5 = objc_alloc_init(v3);
  [v5 setIsUsernameEditable:0];
  appleID = [contextCopy appleID];
  [v5 setUsername:appleID];

  altDSID = [contextCopy altDSID];
  [v5 setAltDSID:altDSID];

  dsid = [contextCopy dsid];

  stringValue = [dsid stringValue];
  [v5 setDSID:stringValue];

  return v5;
}

- (BOOL)isPrimaryAppleIDLoggedIn
{
  mEMORY[0x277CF0130] = [MEMORY[0x277CF0130] sharedInstance];
  primaryAuthKitAccount = [mEMORY[0x277CF0130] primaryAuthKitAccount];

  return primaryAuthKitAccount != 0;
}

- (void)getUserInformationForAltDSID:(id)d completion:(id)completion
{
  v5 = MEMORY[0x277CF0178];
  completionCopy = completion;
  dCopy = d;
  v8 = objc_alloc_init(v5);
  [v8 getUserInformationForAltDSID:dCopy completion:completionCopy];
}

@end