@interface CNAuthorizationContext
+ (BOOL)shouldIgnoreAssumedIdentity:(id)identity;
+ (BOOL)shouldIgnoreAssumedIdentityForBundleIdentifier:(id)identifier;
+ (CNAuthorizationContext)sharedInstance;
+ (id)os_log;
- (BOOL)cachedAddressingGrammarAccessGranted;
- (BOOL)cachedNotesAccessGranted;
- (BOOL)checkClientIsFirstOrSecondParty;
- (BOOL)checkTCCEntitlementNamesAllowContacts:(id)contacts;
- (BOOL)doesClientHaveEntitlement:(id)entitlement;
- (BOOL)isAccessGranted;
- (BOOL)isAccessGrantedRequestingAccessIfNeeded;
- (BOOL)isAccessRestricted;
- (BOOL)isAddressingGrammarAccessGrantedImpl;
- (BOOL)isClientFirstOrSecondParty;
- (BOOL)isClientFirstOrSecondPartyImpl;
- (BOOL)isClientTCCAllowed;
- (BOOL)isClientTCCAllowedImpl;
- (BOOL)isClientTCCKilledOnAuthorizationChange;
- (BOOL)isClientTCCRegionalAllowed;
- (BOOL)isClientTCCRegionalAllowedImpl;
- (BOOL)isClientTCCUncoupledProcess;
- (BOOL)isFirstPartyAddressingGrammarEntitled;
- (BOOL)isFirstPartyNotesEntitled;
- (BOOL)isGreenTeaDevice;
- (BOOL)isNotesAccessGrantedImpl;
- (BOOL)isThirdPartyNotesEntitled;
- (BOOL)isUnitTesting;
- (BOOL)requestAccessWithError:(id *)error;
- (BOOL)shouldAlwaysQueryAuthorizationStatus;
- (BOOL)shouldAlwaysQueryAuthorizationStatusImpl;
- (CNAuthorizationContext)initWithAuditToken:(id)token assumedIdentity:(id)identity;
- (CNAuthorizationContext)initWithAuditToken:(id)token assumedIdentity:(id)identity tccServices:(id)services;
- (NSString)clientBundleIdentifier;
- (id)clientBundleIdentifierImpl;
- (id)errorForStatus:(int64_t)status;
- (id)requestAuthorizationFuture:(int64_t)future;
- (int64_t)cachedAuthorizationStatus;
- (int64_t)resolveRequestAuthorizationFuture:(id)future;
- (void)checkClientIsFirstOrSecondParty;
- (void)isClientTCCKilledOnAuthorizationChange;
- (void)isThirdPartyNotesEntitled;
- (void)requestAuthorization:(int64_t)authorization completionHandler:(id)handler;
- (void)resetCachedStatus;
- (void)simulateStatus:(int64_t)status;
- (void)stopSimulation;
@end

@implementation CNAuthorizationContext

+ (CNAuthorizationContext)sharedInstance
{
  if (sharedInstance_cn_once_token_2_1 != -1)
  {
    +[CNAuthorizationContext sharedInstance];
  }

  v3 = sharedInstance_cn_once_object_2_1;

  return v3;
}

uint64_t __40__CNAuthorizationContext_sharedInstance__block_invoke()
{
  sharedInstance_cn_once_object_2_1 = [[CNAuthorizationContext alloc] initWithAuditToken:0 assumedIdentity:0 tccServices:0];

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)isAccessGrantedRequestingAccessIfNeeded
{
  authorizationStatus = [(CNAuthorizationContext *)self authorizationStatus];
  if (!authorizationStatus)
  {
    v4 = [(CNAuthorizationContext *)self requestAuthorizationFuture:0];
    authorizationStatus = [(CNAuthorizationContext *)self resolveRequestAuthorizationFuture:v4];
  }

  return (authorizationStatus & 0xFFFFFFFFFFFFFFFELL) == 2;
}

- (int64_t)cachedAuthorizationStatus
{
  authorizationStatusLock = self->_authorizationStatusLock;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__CNAuthorizationContext_cachedAuthorizationStatus__block_invoke;
  v6[3] = &unk_1E6ED6538;
  v6[4] = self;
  v3 = CNResultWithLock(authorizationStatusLock, v6);
  integerValue = [v3 integerValue];

  return integerValue;
}

- (BOOL)shouldAlwaysQueryAuthorizationStatus
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__CNAuthorizationContext_shouldAlwaysQueryAuthorizationStatus__block_invoke;
  v5[3] = &unk_1E6ED51B8;
  v5[4] = self;
  v2 = cn_objectResultWithObjectLock(self, v5);
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

id __62__CNAuthorizationContext_shouldAlwaysQueryAuthorizationStatus__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[5];
  if (!v3)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v2, "shouldAlwaysQueryAuthorizationStatusImpl")}];
    v5 = *(a1 + 32);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v3 = *(*(a1 + 32) + 40);
  }

  return v3;
}

- (BOOL)shouldAlwaysQueryAuthorizationStatusImpl
{
  if ([(CNAuthorizationContext *)self isUnitTesting])
  {
    LOBYTE(isGreenTeaDevice) = 1;
  }

  else
  {
    isGreenTeaDevice = [(CNAuthorizationContext *)self isGreenTeaDevice];
    if (isGreenTeaDevice && ([(CNAuthorizationContext *)self isClientTCCUncoupledProcess]|| (isGreenTeaDevice = [(CNAuthorizationContext *)self isClientTCCCoupledProcess])))
    {
      LOBYTE(isGreenTeaDevice) = ![(CNAuthorizationContext *)self isClientTCCKilledOnAuthorizationChange];
    }
  }

  return isGreenTeaDevice;
}

- (BOOL)isUnitTesting
{
  tccServices = [(CNAuthorizationContext *)self tccServices];
  isUnitTesting = [tccServices isUnitTesting];

  return isUnitTesting;
}

- (BOOL)isGreenTeaDevice
{
  v2 = +[(CNEnvironmentBase *)CNEnvironment];
  isGreenTeaDevice = [v2 isGreenTeaDevice];

  return isGreenTeaDevice;
}

id __51__CNAuthorizationContext_cachedAuthorizationStatus__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) integerValue];
  if (([*(a1 + 32) shouldAlwaysQueryAuthorizationStatus] & 1) != 0 || !v2)
  {
    v4 = [*(a1 + 32) tccServices];
    v5 = [*(a1 + 32) cnAuditToken];
    v6 = [*(a1 + 32) assumedIdentity];
    v7 = [v4 checkAuthorizationStatusOfAuditToken:v5 assumedIdentity:v6];

    v3 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
    objc_storeStrong((*(a1 + 32) + 32), v3);
  }

  else
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInteger:v2];
  }

  return v3;
}

- (BOOL)isAccessRestricted
{
  tccServices = [(CNAuthorizationContext *)self tccServices];
  isAuthorizationRestricted = [tccServices isAuthorizationRestricted];

  return isAuthorizationRestricted;
}

- (BOOL)isAccessGranted
{
  if ([(CNAuthorizationContext *)self isFullAccessGranted])
  {
    return 1;
  }

  return [(CNAuthorizationContext *)self isLimitedAccessGranted];
}

- (BOOL)cachedNotesAccessGranted
{
  notesAccessStatusLock = self->_notesAccessStatusLock;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__CNAuthorizationContext_cachedNotesAccessGranted__block_invoke;
  v6[3] = &unk_1E6ED6538;
  v6[4] = self;
  v3 = CNResultWithLock(notesAccessStatusLock, v6);
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

id __50__CNAuthorizationContext_cachedNotesAccessGranted__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  if (([*(a1 + 32) shouldAlwaysQueryAuthorizationStatus] & 1) != 0 || !v2)
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "isNotesAccessGrantedImpl")}];

    objc_storeStrong((*(a1 + 32) + 48), v3);
    v2 = v3;
  }

  v4 = v2;

  return v4;
}

id __62__CNAuthorizationContext_cachedAddressingGrammarAccessGranted__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  if (([*(a1 + 32) shouldAlwaysQueryAuthorizationStatus] & 1) != 0 || !v2)
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "isAddressingGrammarAccessGrantedImpl")}];

    objc_storeStrong((*(a1 + 32) + 56), v3);
    v2 = v3;
  }

  v4 = v2;

  return v4;
}

- (BOOL)cachedAddressingGrammarAccessGranted
{
  notesAccessStatusLock = self->_notesAccessStatusLock;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__CNAuthorizationContext_cachedAddressingGrammarAccessGranted__block_invoke;
  v6[3] = &unk_1E6ED6538;
  v6[4] = self;
  v3 = CNResultWithLock(notesAccessStatusLock, v6);
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)isNotesAccessGrantedImpl
{
  isAccessGranted = [(CNAuthorizationContext *)self isAccessGranted];
  if (isAccessGranted)
  {
    if ([(CNAuthorizationContext *)self isFirstPartyNotesEntitled])
    {
      LOBYTE(isAccessGranted) = 1;
    }

    else
    {

      LOBYTE(isAccessGranted) = [(CNAuthorizationContext *)self isThirdPartyNotesEntitled];
    }
  }

  return isAccessGranted;
}

id __44__CNAuthorizationContext_isClientTCCAllowed__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[8];
  if (!v3)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v2, "isClientTCCAllowedImpl")}];
    v5 = *(a1 + 32);
    v6 = *(v5 + 64);
    *(v5 + 64) = v4;

    v3 = *(*(a1 + 32) + 64);
  }

  return v3;
}

- (BOOL)isFirstPartyNotesEntitled
{
  if ([(CNAuthorizationContext *)self isClientTCCAllowed])
  {
    return 1;
  }

  return [(CNAuthorizationContext *)self isClientTCCRegionalAllowed];
}

- (BOOL)isClientTCCAllowed
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__CNAuthorizationContext_isClientTCCAllowed__block_invoke;
  v5[3] = &unk_1E6ED51B8;
  v5[4] = self;
  v2 = cn_objectResultWithObjectLock(self, v5);
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isClientTCCAllowedImpl
{
  v6[2] = *MEMORY[0x1E69E9840];
  v6[0] = @"com.apple.private.tcc.allow";
  v6[1] = @"com.apple.private.tcc.allow.overridable";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  LOBYTE(self) = [(CNAuthorizationContext *)self checkTCCEntitlementNamesAllowContacts:v3];

  v4 = *MEMORY[0x1E69E9840];
  return self;
}

- (BOOL)isAddressingGrammarAccessGrantedImpl
{
  isAccessGranted = [(CNAuthorizationContext *)self isAccessGranted];
  if (isAccessGranted)
  {

    LOBYTE(isAccessGranted) = [(CNAuthorizationContext *)self isFirstPartyAddressingGrammarEntitled];
  }

  return isAccessGranted;
}

- (BOOL)isFirstPartyAddressingGrammarEntitled
{
  if ([(CNAuthorizationContext *)self isClientTCCAllowed])
  {
    return 1;
  }

  return [(CNAuthorizationContext *)self isClientTCCRegionalAllowed];
}

- (BOOL)isClientTCCRegionalAllowed
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__CNAuthorizationContext_isClientTCCRegionalAllowed__block_invoke;
  v5[3] = &unk_1E6ED51B8;
  v5[4] = self;
  v2 = cn_objectResultWithObjectLock(self, v5);
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

id __52__CNAuthorizationContext_isClientTCCRegionalAllowed__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[9];
  if (!v3)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v2, "isClientTCCRegionalAllowedImpl")}];
    v5 = *(a1 + 32);
    v6 = *(v5 + 72);
    *(v5 + 72) = v4;

    v3 = *(*(a1 + 32) + 72);
  }

  return v3;
}

- (BOOL)isClientTCCRegionalAllowedImpl
{
  v6[2] = *MEMORY[0x1E69E9840];
  v6[0] = @"com.apple.private.tcc.allow-or-regional-prompt";
  v6[1] = @"com.apple.private.tcc.allow-or-regional-prompt.overridable";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  LOBYTE(self) = [(CNAuthorizationContext *)self checkTCCEntitlementNamesAllowContacts:v3];

  v4 = *MEMORY[0x1E69E9840];
  return self;
}

+ (id)os_log
{
  if (os_log_cn_once_token_1_4 != -1)
  {
    +[CNAuthorizationContext os_log];
  }

  v3 = os_log_cn_once_object_1_4;

  return v3;
}

uint64_t __32__CNAuthorizationContext_os_log__block_invoke()
{
  os_log_cn_once_object_1_4 = os_log_create("com.apple.contacts", "authorization-context");

  return MEMORY[0x1EEE66BB8]();
}

- (CNAuthorizationContext)initWithAuditToken:(id)token assumedIdentity:(id)identity
{
  tokenCopy = token;
  identityCopy = identity;
  if (tokenCopy)
  {
    v8 = 0;
  }

  else
  {
    v8 = [objc_opt_class() shouldIgnoreAssumedIdentity:identityCopy];
  }

  sharedInstance = [objc_opt_class() sharedInstance];
  selfCopy = sharedInstance;
  if ((v8 & 1) == 0)
  {

    self = [(CNAuthorizationContext *)self initWithAuditToken:tokenCopy assumedIdentity:identityCopy tccServices:0];
    selfCopy = self;
  }

  return selfCopy;
}

- (CNAuthorizationContext)initWithAuditToken:(id)token assumedIdentity:(id)identity tccServices:(id)services
{
  tokenCopy = token;
  identityCopy = identity;
  servicesCopy = services;
  v24.receiver = self;
  v24.super_class = CNAuthorizationContext;
  v12 = [(CNAuthorizationContext *)&v24 init];
  if (v12)
  {
    if (servicesCopy)
    {
      v13 = servicesCopy;
    }

    else
    {
      v13 = +[CNTCCFactory defaultTCC];
    }

    tccServices = v12->_tccServices;
    v12->_tccServices = v13;

    objc_storeStrong(&v12->_cnAuditToken, token);
    objc_storeStrong(&v12->_assumedIdentity, identity);
    authorizationStatusCachedValue = v12->_authorizationStatusCachedValue;
    v12->_authorizationStatusCachedValue = &unk_1EF4641E0;

    v16 = objc_alloc_init(CNUnfairLock);
    authorizationStatusLock = v12->_authorizationStatusLock;
    v12->_authorizationStatusLock = v16;

    v18 = objc_alloc_init(CNUnfairLock);
    notesAccessStatusLock = v12->_notesAccessStatusLock;
    v12->_notesAccessStatusLock = v18;

    v20 = objc_alloc_init(CNUnfairLock);
    addressingGrammarAccessStatusLock = v12->_addressingGrammarAccessStatusLock;
    v12->_addressingGrammarAccessStatusLock = v20;

    v22 = v12;
  }

  return v12;
}

- (BOOL)isClientFirstOrSecondParty
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__CNAuthorizationContext_isClientFirstOrSecondParty__block_invoke;
  v5[3] = &unk_1E6ED51B8;
  v5[4] = self;
  v2 = cn_objectResultWithObjectLock(self, v5);
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

id __52__CNAuthorizationContext_isClientFirstOrSecondParty__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[10];
  if (!v3)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v2, "isClientFirstOrSecondPartyImpl")}];
    v5 = *(a1 + 32);
    v6 = *(v5 + 80);
    *(v5 + 80) = v4;

    v3 = *(*(a1 + 32) + 80);
  }

  return v3;
}

- (NSString)clientBundleIdentifier
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__CNAuthorizationContext_clientBundleIdentifier__block_invoke;
  v5[3] = &unk_1E6ED51B8;
  v5[4] = self;
  v2 = cn_objectResultWithObjectLock(self, v5);
  v3 = off_1EF4401C8(&__block_literal_global_4_3, v2);

  return v3;
}

id __48__CNAuthorizationContext_clientBundleIdentifier__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[11];
  if (!v3)
  {
    v4 = [v2 clientBundleIdentifierImpl];
    v5 = *(a1 + 32);
    v6 = *(v5 + 88);
    *(v5 + 88) = v4;

    v3 = *(*(a1 + 32) + 88);
  }

  return v3;
}

- (BOOL)requestAccessWithError:(id *)error
{
  isAccessGrantedRequestingAccessIfNeeded = [(CNAuthorizationContext *)self isAccessGrantedRequestingAccessIfNeeded];
  if (!isAccessGrantedRequestingAccessIfNeeded)
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CNContactsFoundationErrorDomain" code:7 userInfo:0];
    if (error)
    {
      v5 = v5;
      *error = v5;
    }
  }

  return isAccessGrantedRequestingAccessIfNeeded;
}

- (void)requestAuthorization:(int64_t)authorization completionHandler:(id)handler
{
  handlerCopy = handler;
  authorizationStatus = [(CNAuthorizationContext *)self authorizationStatus];
  if (authorizationStatus)
  {
    v8 = authorizationStatus;
    v9 = [(CNAuthorizationContext *)self errorForStatus:authorizationStatus];
    handlerCopy[2](handlerCopy, v8, v9);
  }

  else
  {
    v9 = [(CNAuthorizationContext *)self requestAuthorizationFuture:authorization];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __65__CNAuthorizationContext_requestAuthorization_completionHandler___block_invoke;
    v13[3] = &unk_1E6ED64E8;
    v13[4] = self;
    v10 = handlerCopy;
    v14 = v10;
    [v9 addSuccessBlock:v13];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __65__CNAuthorizationContext_requestAuthorization_completionHandler___block_invoke_2;
    v11[3] = &unk_1E6ED6510;
    v12 = v10;
    [v9 addFailureBlock:v11];
  }
}

void __65__CNAuthorizationContext_requestAuthorization_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) errorForStatus:{objc_msgSend(a2, "integerValue")}];
  (*(*(a1 + 40) + 16))();
}

- (id)errorForStatus:(int64_t)status
{
  if (status == 1)
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CNContactsFoundationErrorDomain" code:7 userInfo:{0, v3}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)simulateStatus:(int64_t)status
{
  tccServices = [(CNAuthorizationContext *)self tccServices];
  [tccServices simulateStatus:status];
}

- (void)stopSimulation
{
  tccServices = [(CNAuthorizationContext *)self tccServices];
  [tccServices stopSimulation];
}

+ (BOOL)shouldIgnoreAssumedIdentity:(id)identity
{
  if (!identity)
  {
    return 1;
  }

  identityCopy = identity;
  identityCopy = [(objc_class *)+[CNTCCFactory defaultClass](CNTCCFactory bundleIdentifierForIdentity:"bundleIdentifierForIdentity:", identityCopy];

  v6 = [self shouldIgnoreAssumedIdentityForBundleIdentifier:identityCopy];
  os_log = [objc_opt_class() os_log];
  if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEBUG))
  {
    [(CNAuthorizationContext *)v6 shouldIgnoreAssumedIdentity:identityCopy, os_log];
  }

  return v6;
}

+ (BOOL)shouldIgnoreAssumedIdentityForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = identifierCopy;
  if (identifierCopy && [identifierCopy length])
  {
    v5 = [&unk_1EF464210 containsObject:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isClientTCCUncoupledProcess
{
  assumedIdentity = [(CNAuthorizationContext *)self assumedIdentity];

  if (!assumedIdentity)
  {
    return 0;
  }

  return [(CNAuthorizationContext *)self doesClientHaveEntitlement:@"com.apple.private.attribution.explicitly-assumed-identities"];
}

- (BOOL)doesClientHaveEntitlement:(id)entitlement
{
  v26[1] = *MEMORY[0x1E69E9840];
  entitlementCopy = entitlement;
  cnAuditToken = [(CNAuthorizationContext *)self cnAuditToken];

  v6 = +[(CNEnvironmentBase *)CNEnvironment];
  entitlementVerifier = [v6 entitlementVerifier];
  if (cnAuditToken)
  {
    cnAuditToken2 = [(CNAuthorizationContext *)self cnAuditToken];
    v9 = cnAuditToken2;
    if (cnAuditToken2)
    {
      [cnAuditToken2 audit_token];
    }

    else
    {
      memset(buf, 0, sizeof(buf));
    }

    v26[0] = entitlementCopy;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
    v21 = 0;
    v10 = [entitlementVerifier valuesForAuditToken:buf forEntitlements:v12 error:&v21];
    v11 = v21;
  }

  else
  {
    v25 = entitlementCopy;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
    v20 = 0;
    v10 = [entitlementVerifier valuesForCurrentProcessForEntitlements:v9 error:&v20];
    v11 = v20;
  }

  if (v11)
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
    {
      cnAuditToken3 = [(CNAuthorizationContext *)self cnAuditToken];
      if (cnAuditToken3)
      {
        v18 = @"audit token";
      }

      else
      {
        v18 = @"current process";
      }

      userInfo = [v11 userInfo];
      *buf = 138413058;
      *&buf[4] = v18;
      *&buf[12] = 2112;
      *&buf[14] = entitlementCopy;
      *&buf[22] = 2112;
      *&buf[24] = v11;
      v23 = 2112;
      v24 = userInfo;
      _os_log_error_impl(&dword_1859F0000, os_log, OS_LOG_TYPE_ERROR, "Error checking %@ entitlement %@: %@ %@", buf, 0x2Au);
    }
  }

  v14 = off_1EF43F068(&__block_literal_global_44_0, v10);

  v15 = *MEMORY[0x1E69E9840];
  return !v14;
}

- (BOOL)isClientTCCKilledOnAuthorizationChange
{
  cnAuditToken = [(CNAuthorizationContext *)self cnAuditToken];

  v4 = +[(CNEnvironmentBase *)CNEnvironment];
  entitlementVerifier = [v4 entitlementVerifier];
  v6 = entitlementVerifier;
  if (cnAuditToken)
  {
    cnAuditToken2 = [(CNAuthorizationContext *)self cnAuditToken];
    v8 = cnAuditToken2;
    if (cnAuditToken2)
    {
      [cnAuditToken2 audit_token];
    }

    else
    {
      memset(v15, 0, sizeof(v15));
    }

    v14 = 0;
    LOBYTE(v9) = [v6 auditToken:v15 hasBooleanEntitlement:@"com.apple.private.tcc.kill-on-assumed-identity-authorization-change" error:&v14];
    v10 = v14;
  }

  else
  {
    v13 = 0;
    v9 = [entitlementVerifier currentProcessHasBooleanEntitlement:@"com.apple.private.tcc.kill-on-assumed-identity-authorization-change" error:&v13];
    v10 = v13;
  }

  if (v10)
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
    {
      [CNAuthorizationContext isClientTCCKilledOnAuthorizationChange];
    }
  }

  return v9;
}

- (BOOL)isThirdPartyNotesEntitled
{
  cnAuditToken = [(CNAuthorizationContext *)self cnAuditToken];

  v4 = +[(CNEnvironmentBase *)CNEnvironment];
  entitlementVerifier = [v4 entitlementVerifier];
  v6 = entitlementVerifier;
  if (cnAuditToken)
  {
    cnAuditToken2 = [(CNAuthorizationContext *)self cnAuditToken];
    v8 = cnAuditToken2;
    if (cnAuditToken2)
    {
      [cnAuditToken2 audit_token];
    }

    else
    {
      memset(v15, 0, sizeof(v15));
    }

    v14 = 0;
    LOBYTE(v9) = [v6 auditToken:v15 hasBooleanEntitlement:@"com.apple.developer.contacts.notes" error:&v14];
    v10 = v14;
  }

  else
  {
    v13 = 0;
    v9 = [entitlementVerifier currentProcessHasBooleanEntitlement:@"com.apple.developer.contacts.notes" error:&v13];
    v10 = v13;
  }

  if (v10)
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
    {
      [CNAuthorizationContext isThirdPartyNotesEntitled];
    }
  }

  return v9;
}

- (BOOL)checkTCCEntitlementNamesAllowContacts:(id)contacts
{
  contactsCopy = contacts;
  cnAuditToken = [(CNAuthorizationContext *)self cnAuditToken];

  v6 = +[(CNEnvironmentBase *)CNEnvironment];
  entitlementVerifier = [v6 entitlementVerifier];
  v8 = entitlementVerifier;
  if (cnAuditToken)
  {
    cnAuditToken2 = [(CNAuthorizationContext *)self cnAuditToken];
    v10 = cnAuditToken2;
    if (cnAuditToken2)
    {
      [cnAuditToken2 audit_token];
    }

    else
    {
      memset(v17, 0, sizeof(v17));
    }

    v16 = 0;
    LOBYTE(v11) = [v8 auditToken:v17 hasArrayWithStringValue:@"kTCCServiceAddressBook" forAnyEntitlement:contactsCopy error:&v16];
    v12 = v16;
  }

  else
  {
    v15 = 0;
    v11 = [entitlementVerifier currentProcessHasArrayWithStringValue:@"kTCCServiceAddressBook" forAnyEntitlement:contactsCopy error:&v15];
    v12 = v15;
  }

  if (v12)
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
    {
      [CNAuthorizationContext checkTCCEntitlementNamesAllowContacts:];
    }
  }

  return v11;
}

- (BOOL)isClientFirstOrSecondPartyImpl
{
  if ([(CNAuthorizationContext *)self checkClientIsFirstOrSecondParty])
  {
    return 1;
  }

  return [(CNAuthorizationContext *)self doesClientHaveEntitlement:@"com.apple.private.contacts"];
}

- (BOOL)checkClientIsFirstOrSecondParty
{
  cnAuditToken = [(CNAuthorizationContext *)self cnAuditToken];

  v4 = +[(CNEnvironmentBase *)CNEnvironment];
  entitlementVerifier = [v4 entitlementVerifier];
  v6 = entitlementVerifier;
  if (cnAuditToken)
  {
    cnAuditToken2 = [(CNAuthorizationContext *)self cnAuditToken];
    v8 = cnAuditToken2;
    if (cnAuditToken2)
    {
      [cnAuditToken2 audit_token];
    }

    else
    {
      memset(v15, 0, sizeof(v15));
    }

    v14 = 0;
    LOBYTE(v9) = [v6 auditToken:v15 isFirstOrSecondPartyWithError:&v14];
    v10 = v14;
  }

  else
  {
    v13 = 0;
    v9 = [entitlementVerifier currentProcessIsFirstOrSecondPartyWithError:&v13];
    v10 = v13;
  }

  if (v10)
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
    {
      [CNAuthorizationContext checkClientIsFirstOrSecondParty];
    }
  }

  return v9;
}

- (id)clientBundleIdentifierImpl
{
  tccServices = [(CNAuthorizationContext *)self tccServices];
  cnAuditToken = [(CNAuthorizationContext *)self cnAuditToken];
  assumedIdentity = [(CNAuthorizationContext *)self assumedIdentity];
  v6 = [tccServices bundleIdentifierForAuditToken:cnAuditToken assumedIdentity:assumedIdentity];

  v7 = off_1EF4401A8(&__block_literal_global_2_2, v6);

  return v7;
}

- (id)requestAuthorizationFuture:(int64_t)future
{
  v5 = objc_alloc_init(CNPromise);
  tccServices = [(CNAuthorizationContext *)self tccServices];
  cnAuditToken = [(CNAuthorizationContext *)self cnAuditToken];
  assumedIdentity = [(CNAuthorizationContext *)self assumedIdentity];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __53__CNAuthorizationContext_requestAuthorizationFuture___block_invoke;
  v15 = &unk_1E6ED6560;
  selfCopy = self;
  v17 = v5;
  v9 = v5;
  [tccServices requestAuthorization:future auditToken:cnAuditToken assumedIdentity:assumedIdentity completionHandler:&v12];

  v10 = [(CNPromise *)v9 future:v12];

  return v10;
}

void __53__CNAuthorizationContext_requestAuthorizationFuture___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
  v4 = [*(a1 + 32) authorizationStatusLock];
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __53__CNAuthorizationContext_requestAuthorizationFuture___block_invoke_2;
  v9 = &unk_1E6ED5168;
  v10 = *(a1 + 32);
  v11 = v3;
  v5 = v3;
  CNRunWithLock(v4, &v6);

  [*(a1 + 40) finishWithResult:{v5, v6, v7, v8, v9, v10}];
}

- (int64_t)resolveRequestAuthorizationFuture:(id)future
{
  v8 = 0;
  v3 = [future result:&v8];
  v4 = v8;
  if (!v3)
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
    {
      [CNAuthorizationContext resolveRequestAuthorizationFuture:v4];
    }

    v3 = MEMORY[0x1E695E110];
  }

  integerValue = [v3 integerValue];

  return integerValue;
}

- (void)resetCachedStatus
{
  authorizationStatusLock = [(CNAuthorizationContext *)self authorizationStatusLock];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__CNAuthorizationContext_resetCachedStatus__block_invoke;
  v8[3] = &unk_1E6ED5830;
  v8[4] = self;
  CNRunWithLock(authorizationStatusLock, v8);

  notesAccessStatusLock = [(CNAuthorizationContext *)self notesAccessStatusLock];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__CNAuthorizationContext_resetCachedStatus__block_invoke_2;
  v7[3] = &unk_1E6ED5830;
  v7[4] = self;
  CNRunWithLock(notesAccessStatusLock, v7);

  addressingGrammarAccessStatusLock = [(CNAuthorizationContext *)self addressingGrammarAccessStatusLock];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__CNAuthorizationContext_resetCachedStatus__block_invoke_3;
  v6[3] = &unk_1E6ED5830;
  v6[4] = self;
  CNRunWithLock(addressingGrammarAccessStatusLock, v6);
}

void __43__CNAuthorizationContext_resetCachedStatus__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  *(v1 + 32) = &unk_1EF4641E0;
}

void __43__CNAuthorizationContext_resetCachedStatus__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 48);
  *(v1 + 48) = 0;
}

void __43__CNAuthorizationContext_resetCachedStatus__block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 56);
  *(v1 + 56) = 0;
}

+ (void)shouldIgnoreAssumedIdentity:(os_log_t)log .cold.1(char a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = @"ignore";
  if ((a1 & 1) == 0)
  {
    v3 = @"honor";
  }

  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_debug_impl(&dword_1859F0000, log, OS_LOG_TYPE_DEBUG, "Will %@ assumed identity for assumed bundle identifier %@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)isClientTCCKilledOnAuthorizationChange
{
  OUTLINED_FUNCTION_3_0();
  v9 = *MEMORY[0x1E69E9840];
  cnAuditToken = [v0 cnAuditToken];
  userInfo = [OUTLINED_FUNCTION_2_0() userInfo];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)isThirdPartyNotesEntitled
{
  OUTLINED_FUNCTION_3_0();
  v9 = *MEMORY[0x1E69E9840];
  cnAuditToken = [v0 cnAuditToken];
  userInfo = [OUTLINED_FUNCTION_2_0() userInfo];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)checkTCCEntitlementNamesAllowContacts:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v9 = *MEMORY[0x1E69E9840];
  v1 = [v0 cnAuditToken];
  v2 = [OUTLINED_FUNCTION_2_0() userInfo];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)checkClientIsFirstOrSecondParty
{
  OUTLINED_FUNCTION_3_0();
  v9 = *MEMORY[0x1E69E9840];
  cnAuditToken = [v0 cnAuditToken];
  userInfo = [OUTLINED_FUNCTION_2_0() userInfo];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)resolveRequestAuthorizationFuture:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = [a1 userInfo];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

@end