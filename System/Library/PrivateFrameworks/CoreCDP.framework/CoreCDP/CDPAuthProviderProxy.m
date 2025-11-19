@interface CDPAuthProviderProxy
+ (id)proxyWithAuthProvider:(id)a3;
- (void)cdpContext:(id)a3 performSilentRecoveryTokenRenewal:(id)a4;
- (void)cdpContext:(id)a3 verifyMasterKey:(id)a4 completion:(id)a5;
@end

@implementation CDPAuthProviderProxy

+ (id)proxyWithAuthProvider:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(CDPAuthProviderProxy);
  authProvider = v4->_authProvider;
  v4->_authProvider = v3;

  return v4;
}

- (void)cdpContext:(id)a3 performSilentRecoveryTokenRenewal:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DED99000, v8, OS_LOG_TYPE_DEFAULT, "Starting token renewal", buf, 2u);
  }

  authProvider = self->_authProvider;
  if (objc_opt_respondsToSelector())
  {
    v10 = self->_authProvider;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __69__CDPAuthProviderProxy_cdpContext_performSilentRecoveryTokenRenewal___block_invoke;
    v12[3] = &unk_1E869D600;
    v13 = v7;
    [(CDPAuthProvider *)v10 cdpContext:v6 performSilentRecoveryTokenRenewal:v12];
    v11 = v13;
LABEL_7:

    goto LABEL_8;
  }

  if (v7)
  {
    v11 = _CDPStateError(-5200, 0);
    (*(v7 + 2))(v7, 0, v11);
    goto LABEL_7;
  }

LABEL_8:
}

void __69__CDPAuthProviderProxy_cdpContext_performSilentRecoveryTokenRenewal___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }

  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __69__CDPAuthProviderProxy_cdpContext_performSilentRecoveryTokenRenewal___block_invoke_cold_1(v8);
  }
}

- (void)cdpContext:(id)a3 verifyMasterKey:(id)a4 completion:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _CDPLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v8 altDSID];
    *buf = 138739971;
    v20 = v12;
    _os_log_impl(&dword_1DED99000, v11, OS_LOG_TYPE_DEFAULT, "Starting MRK verification for %{sensitive}@", buf, 0xCu);
  }

  authProvider = self->_authProvider;
  if (objc_opt_respondsToSelector())
  {
    v14 = self->_authProvider;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __62__CDPAuthProviderProxy_cdpContext_verifyMasterKey_completion___block_invoke;
    v17[3] = &unk_1E869D628;
    v18 = v10;
    [(CDPAuthProvider *)v14 cdpContext:v8 verifyMasterKey:v9 completion:v17];
    v15 = v18;
LABEL_7:

    goto LABEL_8;
  }

  if (v10)
  {
    v15 = _CDPStateError(-5200, 0);
    (*(v10 + 2))(v10, 0, v15);
    goto LABEL_7;
  }

LABEL_8:

  v16 = *MEMORY[0x1E69E9840];
}

void __62__CDPAuthProviderProxy_cdpContext_verifyMasterKey_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }

  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __62__CDPAuthProviderProxy_cdpContext_verifyMasterKey_completion___block_invoke_cold_1(v8);
  }
}

@end