@interface CNAuthorizationContext
+ (BOOL)shouldIgnoreAssumedIdentity:(id)a3;
+ (BOOL)shouldIgnoreAssumedIdentityForBundleIdentifier:(id)a3;
+ (CNAuthorizationContext)sharedInstance;
+ (id)os_log;
- (BOOL)cachedAddressingGrammarAccessGranted;
- (BOOL)cachedNotesAccessGranted;
- (BOOL)checkClientIsFirstOrSecondParty;
- (BOOL)checkTCCEntitlementNamesAllowContacts:(id)a3;
- (BOOL)doesClientHaveEntitlement:(id)a3;
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
- (BOOL)requestAccessWithError:(id *)a3;
- (BOOL)shouldAlwaysQueryAuthorizationStatus;
- (BOOL)shouldAlwaysQueryAuthorizationStatusImpl;
- (CNAuthorizationContext)initWithAuditToken:(id)a3 assumedIdentity:(id)a4;
- (CNAuthorizationContext)initWithAuditToken:(id)a3 assumedIdentity:(id)a4 tccServices:(id)a5;
- (NSString)clientBundleIdentifier;
- (id)clientBundleIdentifierImpl;
- (id)errorForStatus:(int64_t)a3;
- (id)requestAuthorizationFuture:(int64_t)a3;
- (int64_t)cachedAuthorizationStatus;
- (int64_t)resolveRequestAuthorizationFuture:(id)a3;
- (void)checkClientIsFirstOrSecondParty;
- (void)isClientTCCKilledOnAuthorizationChange;
- (void)isThirdPartyNotesEntitled;
- (void)requestAuthorization:(int64_t)a3 completionHandler:(id)a4;
- (void)resetCachedStatus;
- (void)simulateStatus:(int64_t)a3;
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
  v3 = [(CNAuthorizationContext *)self authorizationStatus];
  if (!v3)
  {
    v4 = [(CNAuthorizationContext *)self requestAuthorizationFuture:0];
    v3 = [(CNAuthorizationContext *)self resolveRequestAuthorizationFuture:v4];
  }

  return (v3 & 0xFFFFFFFFFFFFFFFELL) == 2;
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
  v4 = [v3 integerValue];

  return v4;
}

- (BOOL)shouldAlwaysQueryAuthorizationStatus
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__CNAuthorizationContext_shouldAlwaysQueryAuthorizationStatus__block_invoke;
  v5[3] = &unk_1E6ED51B8;
  v5[4] = self;
  v2 = cn_objectResultWithObjectLock(self, v5);
  v3 = [v2 BOOLValue];

  return v3;
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
    LOBYTE(v3) = 1;
  }

  else
  {
    v3 = [(CNAuthorizationContext *)self isGreenTeaDevice];
    if (v3 && ([(CNAuthorizationContext *)self isClientTCCUncoupledProcess]|| (v3 = [(CNAuthorizationContext *)self isClientTCCCoupledProcess])))
    {
      LOBYTE(v3) = ![(CNAuthorizationContext *)self isClientTCCKilledOnAuthorizationChange];
    }
  }

  return v3;
}

- (BOOL)isUnitTesting
{
  v2 = [(CNAuthorizationContext *)self tccServices];
  v3 = [v2 isUnitTesting];

  return v3;
}

- (BOOL)isGreenTeaDevice
{
  v2 = +[(CNEnvironmentBase *)CNEnvironment];
  v3 = [v2 isGreenTeaDevice];

  return v3;
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
  v2 = [(CNAuthorizationContext *)self tccServices];
  v3 = [v2 isAuthorizationRestricted];

  return v3;
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
  v4 = [v3 BOOLValue];

  return v4;
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
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)isNotesAccessGrantedImpl
{
  v3 = [(CNAuthorizationContext *)self isAccessGranted];
  if (v3)
  {
    if ([(CNAuthorizationContext *)self isFirstPartyNotesEntitled])
    {
      LOBYTE(v3) = 1;
    }

    else
    {

      LOBYTE(v3) = [(CNAuthorizationContext *)self isThirdPartyNotesEntitled];
    }
  }

  return v3;
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
  v3 = [v2 BOOLValue];

  return v3;
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
  v3 = [(CNAuthorizationContext *)self isAccessGranted];
  if (v3)
  {

    LOBYTE(v3) = [(CNAuthorizationContext *)self isFirstPartyAddressingGrammarEntitled];
  }

  return v3;
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
  v3 = [v2 BOOLValue];

  return v3;
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

- (CNAuthorizationContext)initWithAuditToken:(id)a3 assumedIdentity:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = [objc_opt_class() shouldIgnoreAssumedIdentity:v7];
  }

  v9 = [objc_opt_class() sharedInstance];
  v10 = v9;
  if ((v8 & 1) == 0)
  {

    self = [(CNAuthorizationContext *)self initWithAuditToken:v6 assumedIdentity:v7 tccServices:0];
    v10 = self;
  }

  return v10;
}

- (CNAuthorizationContext)initWithAuditToken:(id)a3 assumedIdentity:(id)a4 tccServices:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v24.receiver = self;
  v24.super_class = CNAuthorizationContext;
  v12 = [(CNAuthorizationContext *)&v24 init];
  if (v12)
  {
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = +[CNTCCFactory defaultTCC];
    }

    tccServices = v12->_tccServices;
    v12->_tccServices = v13;

    objc_storeStrong(&v12->_cnAuditToken, a3);
    objc_storeStrong(&v12->_assumedIdentity, a4);
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
  v3 = [v2 BOOLValue];

  return v3;
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

- (BOOL)requestAccessWithError:(id *)a3
{
  v4 = [(CNAuthorizationContext *)self isAccessGrantedRequestingAccessIfNeeded];
  if (!v4)
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CNContactsFoundationErrorDomain" code:7 userInfo:0];
    if (a3)
    {
      v5 = v5;
      *a3 = v5;
    }
  }

  return v4;
}

- (void)requestAuthorization:(int64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [(CNAuthorizationContext *)self authorizationStatus];
  if (v7)
  {
    v8 = v7;
    v9 = [(CNAuthorizationContext *)self errorForStatus:v7];
    v6[2](v6, v8, v9);
  }

  else
  {
    v9 = [(CNAuthorizationContext *)self requestAuthorizationFuture:a3];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __65__CNAuthorizationContext_requestAuthorization_completionHandler___block_invoke;
    v13[3] = &unk_1E6ED64E8;
    v13[4] = self;
    v10 = v6;
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

- (id)errorForStatus:(int64_t)a3
{
  if (a3 == 1)
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CNContactsFoundationErrorDomain" code:7 userInfo:{0, v3}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)simulateStatus:(int64_t)a3
{
  v4 = [(CNAuthorizationContext *)self tccServices];
  [v4 simulateStatus:a3];
}

- (void)stopSimulation
{
  v2 = [(CNAuthorizationContext *)self tccServices];
  [v2 stopSimulation];
}

+ (BOOL)shouldIgnoreAssumedIdentity:(id)a3
{
  if (!a3)
  {
    return 1;
  }

  v4 = a3;
  v5 = [(objc_class *)+[CNTCCFactory defaultClass](CNTCCFactory bundleIdentifierForIdentity:"bundleIdentifierForIdentity:", v4];

  v6 = [a1 shouldIgnoreAssumedIdentityForBundleIdentifier:v5];
  v7 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(CNAuthorizationContext *)v6 shouldIgnoreAssumedIdentity:v5, v7];
  }

  return v6;
}

+ (BOOL)shouldIgnoreAssumedIdentityForBundleIdentifier:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 length])
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
  v3 = [(CNAuthorizationContext *)self assumedIdentity];

  if (!v3)
  {
    return 0;
  }

  return [(CNAuthorizationContext *)self doesClientHaveEntitlement:@"com.apple.private.attribution.explicitly-assumed-identities"];
}

- (BOOL)doesClientHaveEntitlement:(id)a3
{
  v26[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CNAuthorizationContext *)self cnAuditToken];

  v6 = +[(CNEnvironmentBase *)CNEnvironment];
  v7 = [v6 entitlementVerifier];
  if (v5)
  {
    v8 = [(CNAuthorizationContext *)self cnAuditToken];
    v9 = v8;
    if (v8)
    {
      [v8 audit_token];
    }

    else
    {
      memset(buf, 0, sizeof(buf));
    }

    v26[0] = v4;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
    v21 = 0;
    v10 = [v7 valuesForAuditToken:buf forEntitlements:v12 error:&v21];
    v11 = v21;
  }

  else
  {
    v25 = v4;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
    v20 = 0;
    v10 = [v7 valuesForCurrentProcessForEntitlements:v9 error:&v20];
    v11 = v20;
  }

  if (v11)
  {
    v13 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v17 = [(CNAuthorizationContext *)self cnAuditToken];
      if (v17)
      {
        v18 = @"audit token";
      }

      else
      {
        v18 = @"current process";
      }

      v19 = [v11 userInfo];
      *buf = 138413058;
      *&buf[4] = v18;
      *&buf[12] = 2112;
      *&buf[14] = v4;
      *&buf[22] = 2112;
      *&buf[24] = v11;
      v23 = 2112;
      v24 = v19;
      _os_log_error_impl(&dword_1859F0000, v13, OS_LOG_TYPE_ERROR, "Error checking %@ entitlement %@: %@ %@", buf, 0x2Au);
    }
  }

  v14 = off_1EF43F068(&__block_literal_global_44_0, v10);

  v15 = *MEMORY[0x1E69E9840];
  return !v14;
}

- (BOOL)isClientTCCKilledOnAuthorizationChange
{
  v3 = [(CNAuthorizationContext *)self cnAuditToken];

  v4 = +[(CNEnvironmentBase *)CNEnvironment];
  v5 = [v4 entitlementVerifier];
  v6 = v5;
  if (v3)
  {
    v7 = [(CNAuthorizationContext *)self cnAuditToken];
    v8 = v7;
    if (v7)
    {
      [v7 audit_token];
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
    v9 = [v5 currentProcessHasBooleanEntitlement:@"com.apple.private.tcc.kill-on-assumed-identity-authorization-change" error:&v13];
    v10 = v13;
  }

  if (v10)
  {
    v11 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CNAuthorizationContext isClientTCCKilledOnAuthorizationChange];
    }
  }

  return v9;
}

- (BOOL)isThirdPartyNotesEntitled
{
  v3 = [(CNAuthorizationContext *)self cnAuditToken];

  v4 = +[(CNEnvironmentBase *)CNEnvironment];
  v5 = [v4 entitlementVerifier];
  v6 = v5;
  if (v3)
  {
    v7 = [(CNAuthorizationContext *)self cnAuditToken];
    v8 = v7;
    if (v7)
    {
      [v7 audit_token];
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
    v9 = [v5 currentProcessHasBooleanEntitlement:@"com.apple.developer.contacts.notes" error:&v13];
    v10 = v13;
  }

  if (v10)
  {
    v11 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CNAuthorizationContext isThirdPartyNotesEntitled];
    }
  }

  return v9;
}

- (BOOL)checkTCCEntitlementNamesAllowContacts:(id)a3
{
  v4 = a3;
  v5 = [(CNAuthorizationContext *)self cnAuditToken];

  v6 = +[(CNEnvironmentBase *)CNEnvironment];
  v7 = [v6 entitlementVerifier];
  v8 = v7;
  if (v5)
  {
    v9 = [(CNAuthorizationContext *)self cnAuditToken];
    v10 = v9;
    if (v9)
    {
      [v9 audit_token];
    }

    else
    {
      memset(v17, 0, sizeof(v17));
    }

    v16 = 0;
    LOBYTE(v11) = [v8 auditToken:v17 hasArrayWithStringValue:@"kTCCServiceAddressBook" forAnyEntitlement:v4 error:&v16];
    v12 = v16;
  }

  else
  {
    v15 = 0;
    v11 = [v7 currentProcessHasArrayWithStringValue:@"kTCCServiceAddressBook" forAnyEntitlement:v4 error:&v15];
    v12 = v15;
  }

  if (v12)
  {
    v13 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
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
  v3 = [(CNAuthorizationContext *)self cnAuditToken];

  v4 = +[(CNEnvironmentBase *)CNEnvironment];
  v5 = [v4 entitlementVerifier];
  v6 = v5;
  if (v3)
  {
    v7 = [(CNAuthorizationContext *)self cnAuditToken];
    v8 = v7;
    if (v7)
    {
      [v7 audit_token];
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
    v9 = [v5 currentProcessIsFirstOrSecondPartyWithError:&v13];
    v10 = v13;
  }

  if (v10)
  {
    v11 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CNAuthorizationContext checkClientIsFirstOrSecondParty];
    }
  }

  return v9;
}

- (id)clientBundleIdentifierImpl
{
  v3 = [(CNAuthorizationContext *)self tccServices];
  v4 = [(CNAuthorizationContext *)self cnAuditToken];
  v5 = [(CNAuthorizationContext *)self assumedIdentity];
  v6 = [v3 bundleIdentifierForAuditToken:v4 assumedIdentity:v5];

  v7 = off_1EF4401A8(&__block_literal_global_2_2, v6);

  return v7;
}

- (id)requestAuthorizationFuture:(int64_t)a3
{
  v5 = objc_alloc_init(CNPromise);
  v6 = [(CNAuthorizationContext *)self tccServices];
  v7 = [(CNAuthorizationContext *)self cnAuditToken];
  v8 = [(CNAuthorizationContext *)self assumedIdentity];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __53__CNAuthorizationContext_requestAuthorizationFuture___block_invoke;
  v15 = &unk_1E6ED6560;
  v16 = self;
  v17 = v5;
  v9 = v5;
  [v6 requestAuthorization:a3 auditToken:v7 assumedIdentity:v8 completionHandler:&v12];

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

- (int64_t)resolveRequestAuthorizationFuture:(id)a3
{
  v8 = 0;
  v3 = [a3 result:&v8];
  v4 = v8;
  if (!v3)
  {
    v5 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [CNAuthorizationContext resolveRequestAuthorizationFuture:v4];
    }

    v3 = MEMORY[0x1E695E110];
  }

  v6 = [v3 integerValue];

  return v6;
}

- (void)resetCachedStatus
{
  v3 = [(CNAuthorizationContext *)self authorizationStatusLock];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__CNAuthorizationContext_resetCachedStatus__block_invoke;
  v8[3] = &unk_1E6ED5830;
  v8[4] = self;
  CNRunWithLock(v3, v8);

  v4 = [(CNAuthorizationContext *)self notesAccessStatusLock];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__CNAuthorizationContext_resetCachedStatus__block_invoke_2;
  v7[3] = &unk_1E6ED5830;
  v7[4] = self;
  CNRunWithLock(v4, v7);

  v5 = [(CNAuthorizationContext *)self addressingGrammarAccessStatusLock];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__CNAuthorizationContext_resetCachedStatus__block_invoke_3;
  v6[3] = &unk_1E6ED5830;
  v6[4] = self;
  CNRunWithLock(v5, v6);
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
  v1 = [v0 cnAuditToken];
  v2 = [OUTLINED_FUNCTION_2_0() userInfo];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)isThirdPartyNotesEntitled
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
  v1 = [v0 cnAuditToken];
  v2 = [OUTLINED_FUNCTION_2_0() userInfo];
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