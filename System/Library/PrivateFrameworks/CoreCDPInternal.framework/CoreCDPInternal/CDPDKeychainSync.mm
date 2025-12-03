@interface CDPDKeychainSync
+ (id)_defaultUserVisibleViewSet;
+ (id)keyChainSync;
+ (id)keyChainSyncWithProxy:(id)proxy sosCircleProxy:(id)circleProxy context:(id)context;
- (BOOL)isUserVisibleKeychainSyncAvailable;
- (BOOL)isUserVisibleKeychainSyncEnabled;
- (CDPDKeychainSync)initWithCircleProxy:(id)proxy sosCircleProxy:(id)circleProxy context:(id)context;
- (CDPDKeychainSync)initWithCircleProxy:(id)proxy sosCircleProxy:(id)circleProxy policyProvider:(id)provider;
- (CDPDKeychainSync)initWithContext:(id)context;
- (void)_preflightCircleStatusWithCompletion:(id)completion;
- (void)_processAuthFailure:(id)failure completion:(id)completion;
- (void)_setUserVisibleKeychainSyncEnabled:(BOOL)enabled withCompletion:(id)completion;
- (void)isUserVisibleKeychainSyncEnabled;
- (void)removeNonViewAwarePeersFromCircleWithCompletion:(id)completion;
- (void)updateKeychainSyncStateIfNeededWithCompletion:(id)completion;
@end

@implementation CDPDKeychainSync

+ (id)keyChainSync
{
  contextForPrimaryAccount = [MEMORY[0x277CFD4A8] contextForPrimaryAccount];
  v3 = [[CDPDKeychainSync alloc] initWithContext:contextForPrimaryAccount];

  return v3;
}

+ (id)keyChainSyncWithProxy:(id)proxy sosCircleProxy:(id)circleProxy context:(id)context
{
  contextCopy = context;
  circleProxyCopy = circleProxy;
  proxyCopy = proxy;
  v10 = [[CDPDKeychainSync alloc] initWithCircleProxy:proxyCopy sosCircleProxy:circleProxyCopy context:contextCopy];

  return v10;
}

- (CDPDKeychainSync)initWithContext:(id)context
{
  v4 = MEMORY[0x277CFD498];
  contextCopy = context;
  v6 = [[v4 alloc] initWithContext:contextCopy];
  v7 = [objc_alloc(MEMORY[0x277CFD540]) initWithContext:contextCopy];
  v8 = [[CDPDDefaultKeychainSyncPolicyProvider alloc] initWithContext:contextCopy];

  v9 = [(CDPDKeychainSync *)self initWithCircleProxy:v6 sosCircleProxy:v7 policyProvider:v8];
  return v9;
}

- (CDPDKeychainSync)initWithCircleProxy:(id)proxy sosCircleProxy:(id)circleProxy context:(id)context
{
  contextCopy = context;
  circleProxyCopy = circleProxy;
  proxyCopy = proxy;
  v11 = [[CDPDDefaultKeychainSyncPolicyProvider alloc] initWithContext:contextCopy];

  v12 = [(CDPDKeychainSync *)self initWithCircleProxy:proxyCopy sosCircleProxy:circleProxyCopy policyProvider:v11];
  return v12;
}

- (CDPDKeychainSync)initWithCircleProxy:(id)proxy sosCircleProxy:(id)circleProxy policyProvider:(id)provider
{
  proxyCopy = proxy;
  circleProxyCopy = circleProxy;
  providerCopy = provider;
  v16.receiver = self;
  v16.super_class = CDPDKeychainSync;
  v12 = [(CDPDKeychainSync *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_circleProxy, proxy);
    objc_storeStrong(&v13->_sosCircleProxy, circleProxy);
    objc_storeStrong(&v13->_syncPolicy, provider);
    v14 = v13;
  }

  return v13;
}

- (BOOL)isUserVisibleKeychainSyncAvailable
{
  v15 = *MEMORY[0x277D85DE8];
  syncPolicy = [(CDPDKeychainSync *)self syncPolicy];
  keychainSyncAllowedByMDM = [syncPolicy keychainSyncAllowedByMDM];

  if ((keychainSyncAllowedByMDM & 1) == 0)
  {
    v5 = _CDPLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [CDPDKeychainSync isUserVisibleKeychainSyncAvailable];
    }
  }

  syncPolicy2 = [(CDPDKeychainSync *)self syncPolicy];
  keychainSyncAllowedByServer = [syncPolicy2 keychainSyncAllowedByServer];

  if ((keychainSyncAllowedByServer & 1) == 0)
  {
    v8 = _CDPLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [CDPDKeychainSync isUserVisibleKeychainSyncAvailable];
    }

    keychainSyncAllowedByMDM = 0;
  }

  v9 = _CDPLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"DISALLOWED";
    if (keychainSyncAllowedByMDM)
    {
      v10 = @"ALLOWED";
    }

    v13 = 138543362;
    v14 = v10;
    _os_log_impl(&dword_24510B000, v9, OS_LOG_TYPE_DEFAULT, "isUserVisibleKeychainSyncAllowed: sync is currently %{public}@", &v13, 0xCu);
  }

  v11 = *MEMORY[0x277D85DE8];
  return keychainSyncAllowedByMDM;
}

- (BOOL)isUserVisibleKeychainSyncEnabled
{
  v31 = *MEMORY[0x277D85DE8];
  if ([(CDPDKeychainSync *)self _isThisDeviceInCircle])
  {
    if ([MEMORY[0x277CFD560] deferSOSFromSignIn] && objc_msgSend(MEMORY[0x277CFD560], "sosCompatibilityEnabled") && (-[CDPDKeychainSync sosCircleProxy](self, "sosCircleProxy"), v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "cdpContext"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isSOSCompatibilityOptInNeeded"), v4, v3, v5))
    {
      v6 = _CDPLogSystem();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        [(CDPDKeychainSync *)self isUserVisibleKeychainSyncEnabled];
      }

      sosCircleProxy = self->_sosCircleProxy;
      v24 = 0;
      v8 = [(CDPDCircleProxy *)sosCircleProxy viewMemberForAllUserFacingViews:&v24];
      v9 = v24;
      circleProxy = self->_circleProxy;
      v23 = 0;
      v11 = [(CDPDCircleProxy *)circleProxy fetchUserControllableViewsSyncingEnabled:&v23];
      v12 = v23;
      if (v9)
      {
        v13 = _CDPLogSystem();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [CDPDKeychainSync isUserVisibleKeychainSyncEnabled];
        }
      }

      if (v12)
      {
        v14 = _CDPLogSystem();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [CDPDKeychainSync isUserVisibleKeychainSyncEnabled];
        }
      }

      v15 = _CDPLogSystem();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        selfCopy = self;
        v27 = 1024;
        v28 = v8;
        v29 = 1024;
        v30 = v11;
        _os_log_debug_impl(&dword_24510B000, v15, OS_LOG_TYPE_DEBUG, "%@: SOS compatible mode is on: sosViewEnabled=%{BOOL}d and otViewEnabled=%{BOOL}d", buf, 0x18u);
      }

      v16 = v8 & v11;
    }

    else
    {
      v17 = self->_circleProxy;
      v22 = 0;
      v16 = [(CDPDCircleProxy *)v17 fetchUserControllableViewsSyncingEnabled:&v22];
      v9 = v22;
      v18 = _CDPLogSystem();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [(CDPDKeychainSync *)self isUserVisibleKeychainSyncEnabled];
      }

      if (v9)
      {
        v19 = _CDPLogSystem();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [CDPDKeychainSync isUserVisibleKeychainSyncEnabled];
        }
      }
    }
  }

  else
  {
    v9 = _CDPLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CDPDKeychainSync isUserVisibleKeychainSyncEnabled];
    }

    v16 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)updateKeychainSyncStateIfNeededWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [CDPDKeychainSync updateKeychainSyncStateIfNeededWithCompletion:];
  }

  syncPolicy = [(CDPDKeychainSync *)self syncPolicy];
  userHasExplicitlyDisabledSync = [syncPolicy userHasExplicitlyDisabledSync];

  if (userHasExplicitlyDisabledSync)
  {
    v8 = _CDPLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 0;
      v9 = "updateKeychainSyncStateIfNeeded: User has previously explicitly disabled keychain sync. Ensuring that preference is honored.";
      v10 = &v29;
LABEL_12:
      _os_log_impl(&dword_24510B000, v8, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  if (![(CDPDKeychainSync *)self isUserVisibleKeychainSyncAvailable])
  {
    v8 = _CDPLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v9 = "updateKeychainSyncStateIfNeeded: Keychain sync is not available due to IAM/MDM policy. Ensuring it is disabled";
      v10 = buf;
      goto LABEL_12;
    }

LABEL_13:

    selfCopy2 = self;
    v17 = 0;
LABEL_14:
    [(CDPDKeychainSync *)selfCopy2 _setUserVisibleKeychainSyncEnabled:v17 withCompletion:completionCopy, v26];
    goto LABEL_15;
  }

  _keychainSyncAvailableViaSOS = [(CDPDKeychainSync *)self _keychainSyncAvailableViaSOS];
  v12 = _CDPLogSystem();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (_keychainSyncAvailableViaSOS)
  {
    if (!v13)
    {
      goto LABEL_19;
    }

    v27 = 0;
    v14 = "updateKeychainSyncStateIfNeeded: Keychain sync currently implicitly ON via SOS. Enabling OT views as well.";
    v15 = &v27;
  }

  else
  {
    if (!v13)
    {
      goto LABEL_19;
    }

    LOWORD(v26) = 0;
    v14 = "updateKeychainSyncStateIfNeeded: Ensuring keychain sync is enabled for user.";
    v15 = &v26;
  }

  _os_log_impl(&dword_24510B000, v12, OS_LOG_TYPE_DEFAULT, v14, v15, 2u);
LABEL_19:

  syncPolicy2 = [(CDPDKeychainSync *)self syncPolicy];
  isBuddyFinished = [syncPolicy2 isBuddyFinished];

  v20 = _CDPLogSystem();
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);
  if (isBuddyFinished)
  {
    if (v21)
    {
      [CDPDKeychainSync updateKeychainSyncStateIfNeededWithCompletion:];
    }

    syncPolicy3 = [(CDPDKeychainSync *)self syncPolicy];
    userHasExplicitlyDisabledSync2 = [syncPolicy3 userHasExplicitlyDisabledSync];

    v8 = _CDPLogSystem();
    v24 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
    if (!userHasExplicitlyDisabledSync2)
    {
      if (v24)
      {
        [CDPDKeychainSync updateKeychainSyncStateIfNeededWithCompletion:];
      }

      selfCopy2 = self;
      v17 = 1;
      goto LABEL_14;
    }

    if (v24)
    {
      [CDPDKeychainSync updateKeychainSyncStateIfNeededWithCompletion:];
    }

    goto LABEL_13;
  }

  if (v21)
  {
    [CDPDKeychainSync updateKeychainSyncStateIfNeededWithCompletion:];
  }

  if (completionCopy)
  {
    v25 = _CDPStateError();
    completionCopy[2](completionCopy, 0, v25);
  }

LABEL_15:
}

uint64_t __69__CDPDKeychainSync_setUserVisibleKeychainSyncEnabled_withCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v10 = v5;
  if (a2)
  {
    v6 = *(a1 + 48) == 0;
    v7 = [*(a1 + 32) syncPolicy];
    [v7 setUserHasExplicitlyDisabledSync:v6];
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v10);
  }

  return MEMORY[0x2821F9730]();
}

- (void)_setUserVisibleKeychainSyncEnabled:(BOOL)enabled withCompletion:(id)completion
{
  enabledCopy = enabled;
  v28 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v7 = @"disable";
  if (enabledCopy)
  {
    v7 = @"enable";
  }

  v8 = v7;
  v9 = _CDPLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v27 = v8;
    _os_log_impl(&dword_24510B000, v9, OS_LOG_TYPE_DEFAULT, "_setUserVisibleKeychainSyncEnabled: Attempting to %{public}@ user-visible keychain sync.", buf, 0xCu);
  }

  v10 = os_transaction_create();
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __70__CDPDKeychainSync__setUserVisibleKeychainSyncEnabled_withCompletion___block_invoke;
  aBlock[3] = &unk_278E25438;
  v11 = v8;
  v23 = v11;
  v12 = v10;
  v24 = v12;
  v13 = completionCopy;
  v25 = v13;
  v14 = _Block_copy(aBlock);
  if (enabledCopy && ![(CDPDKeychainSync *)self isUserVisibleKeychainSyncAvailable])
  {
    v16 = _CDPLogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [CDPDKeychainSync _setUserVisibleKeychainSyncEnabled:withCompletion:];
    }

    [(CDPDKeychainSync *)self _setUserVisibleKeychainSyncEnabled:0 withCompletion:0];
    if (v14)
    {
      v17 = _CDPStateError();
      v14[2](v14, 0, v17);
    }
  }

  else if ([(CDPDKeychainSync *)self isUserVisibleKeychainSyncEnabled]== enabledCopy)
  {
    v15 = _CDPLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v27 = v11;
      _os_log_impl(&dword_24510B000, v15, OS_LOG_TYPE_DEFAULT, "_setUserVisibleKeychainSyncEnabled: No need to %{public}@ user-visible keychain because we are alraedy in that state.", buf, 0xCu);
    }

    if (v14)
    {
      v14[2](v14, 1, 0);
    }
  }

  else
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __70__CDPDKeychainSync__setUserVisibleKeychainSyncEnabled_withCompletion___block_invoke_110;
    v19[3] = &unk_278E260D0;
    v19[4] = self;
    v20 = v14;
    v21 = enabledCopy;
    [CDPAuthenticationHelper silentAuthenticationForPrimaryAccountWithCompletion:v19];
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __70__CDPDKeychainSync__setUserVisibleKeychainSyncEnabled_withCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _CDPLogSystem();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v11 = 138543362;
      v12 = v8;
      _os_log_impl(&dword_24510B000, v7, OS_LOG_TYPE_DEFAULT, "_setUserVisibleKeychainSyncEnabled: Sucessfully managed to %{public}@ user-visible keychain", &v11, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __70__CDPDKeychainSync__setUserVisibleKeychainSyncEnabled_withCompletion___block_invoke_cold_1(a1, v5, v7);
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    (*(v9 + 16))(v9, a2, v5);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __70__CDPDKeychainSync__setUserVisibleKeychainSyncEnabled_withCompletion___block_invoke_110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 32);

    [v5 _processAuthFailure:? completion:?];
  }

  else
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __70__CDPDKeychainSync__setUserVisibleKeychainSyncEnabled_withCompletion___block_invoke_2;
    v6[3] = &unk_278E24B38;
    v6[4] = v3;
    v8 = *(a1 + 48);
    v7 = *(a1 + 40);
    [v3 _preflightCircleStatusWithCompletion:v6];
  }
}

void __70__CDPDKeychainSync__setUserVisibleKeychainSyncEnabled_withCompletion___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 48);
    v23 = 0;
    v8 = [v6 _setKeychainSyncState:v7 error:&v23];
    v9 = v23;
    v22[1] = 0;
    if (![MEMORY[0x277CFD560] deferSOSFromSignIn] || !SOSCCFetchCompatibilityMode())
    {
      goto LABEL_13;
    }

    v10 = *(*(a1 + 32) + 16);
    v11 = *(a1 + 48);
    v22[0] = 0;
    v12 = [v10 setUserControllableViewsSyncStatus:v11 error:v22];
    v13 = v22[0];
    v14 = _CDPLogSystem();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      if (v15)
      {
        *buf = 0;
        v16 = "Successfully enabled SOS views";
        v17 = v14;
        v18 = 2;
LABEL_11:
        _os_log_impl(&dword_24510B000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
      }
    }

    else if (v15)
    {
      *buf = 138412290;
      v25 = v13;
      v16 = "Failed to enable SOS views: %@";
      v17 = v14;
      v18 = 12;
      goto LABEL_11;
    }

LABEL_13:
    v20 = *(a1 + 40);
    if (v20)
    {
      (*(v20 + 16))(v20, v8, v9);
    }

    goto LABEL_16;
  }

  v19 = *(a1 + 40);
  if (v19)
  {
    (*(v19 + 16))(v19, 0, v5);
  }

LABEL_16:

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_processAuthFailure:(id)failure completion:(id)completion
{
  failureCopy = failure;
  completionCopy = completion;
  domain = [failureCopy domain];
  if ([domain isEqualToString:*MEMORY[0x277CEFF48]])
  {
    code = [failureCopy code];

    if (code == -7013)
    {
      v9 = _CDPLogSystem();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [CDPDKeychainSync _processAuthFailure:failureCopy completion:v9];
      }

      if (completionCopy)
      {
        v10 = _CDPStateError();
        completionCopy[2](completionCopy, 0, v10);
      }

      goto LABEL_10;
    }
  }

  else
  {
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0, failureCopy);
  }

LABEL_10:
}

- (void)_preflightCircleStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(CDPDKeychainSync *)self _isThisDeviceInCircle])
  {
    completionCopy[2](completionCopy, 1, 0);
  }

  else
  {
    v5 = _CDPLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [CDPDKeychainSync _preflightCircleStatusWithCompletion:];
    }

    if (completionCopy)
    {
      v6 = _CDPStateError();
      (completionCopy)[2](completionCopy, 0, v6);
    }
  }
}

- (void)removeNonViewAwarePeersFromCircleWithCompletion:(id)completion
{
  completionCopy = completion;
  circleProxy = self->_circleProxy;
  v8 = 0;
  v6 = [(CDPDCircleProxy *)circleProxy removeNonViewAwarePeers:&v8];
  v7 = v8;
  if (completionCopy)
  {
    completionCopy[2](completionCopy, v6, v7);
  }
}

+ (id)_defaultUserVisibleViewSet
{
  if (_defaultUserVisibleViewSet_onceToken != -1)
  {
    +[CDPDKeychainSync _defaultUserVisibleViewSet];
  }

  v3 = _defaultUserVisibleViewSet_defaultViewSet;

  return v3;
}

uint64_t __46__CDPDKeychainSync__defaultUserVisibleViewSet__block_invoke()
{
  v0 = *MEMORY[0x277CDBE88];
  _defaultUserVisibleViewSet_defaultViewSet = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CDBEA8], *MEMORY[0x277CDBE88], *MEMORY[0x277CDBEA0], *MEMORY[0x277CDBE98], 0}];

  return MEMORY[0x2821F96F8]();
}

- (void)isUserVisibleKeychainSyncEnabled
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_0_2(&dword_24510B000, v0, v1, "%@: viewMemberForAllUserFacingViews when checking all SOS user facing views are enabled finished with error:%@");
  v2 = *MEMORY[0x277D85DE8];
}

void __70__CDPDKeychainSync__setUserVisibleKeychainSyncEnabled_withCompletion___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138543618;
  *&v4[4] = *(a1 + 32);
  *&v4[12] = 2112;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_0_2(&dword_24510B000, a2, a3, "_setUserVisibleKeychainSyncEnabled: Failed to %{public}@ user-visible keychain with error: %@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_processAuthFailure:(uint64_t)a1 completion:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_24510B000, a2, OS_LOG_TYPE_DEBUG, "CDP State repair is needed because the account is iCDP enabled but HSA2 silent auth failed with error %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end