@interface FCAppleAccount
+ (id)sharedAccount;
- (ACAccount)activeiTunesAccount;
- (BOOL)isContentStoreFrontSupported;
- (BOOL)isFamilyEligible;
- (BOOL)isFamilySuspended;
- (BOOL)isPrimaryAccountEmailAddress;
- (BOOL)isPrivateDataSyncingEnabled;
- (BOOL)isSignedInStoreFrontSupported;
- (BOOL)isSuspended;
- (BOOL)isUserSignedInToiCloud;
- (BOOL)isUserSignedIntoiTunes;
- (BOOL)isiCloudSuspended;
- (FCAppleAccount)init;
- (NSArray)allEmailAddresses;
- (NSArray)preferredLanguageCodes;
- (NSString)appStoreEmailAddress;
- (NSString)contentStoreFrontID;
- (NSString)endpointConnectionClientID;
- (NSString)firstName;
- (NSString)formattedUsername;
- (NSString)fullName;
- (NSString)lastName;
- (NSString)localizedContentStoreFrontID;
- (NSString)middleName;
- (NSString)normalizedPersonId;
- (NSString)personID;
- (NSString)primaryEmailAddress;
- (NSString)primaryLanguageCode;
- (NSString)supportedContentStoreFrontID;
- (NSString)supportedLocalizedContentStoreFrontID;
- (NSString)username;
- (id)currentStoreFrontID;
- (id)dynamicPrimaryLanguageCodes;
- (id)getGSToken;
- (id)getNewGSTokenPromise;
- (id)iCloudAccountDSID;
- (id)iTunesAccountDSID;
- (id)iTunesAccountName;
- (int64_t)ageCategory;
- (int64_t)dynamicSupportedContentLanguage;
- (int64_t)supportedContentLanguage;
- (void)_accountStoreDidChange;
- (void)_reloadAccountsFromAccountStore;
- (void)_setStoreFrontDependentPropertiesWithStoreFrontLockingEnabled:(void *)a1;
- (void)addObserver:(id)a3;
- (void)checkAllDevicesRunningMinimumiOSVersion:(id)a3 macOSVersion:(id)a4 orInactiveForTimeInterval:(double)a5 completionHandler:(id)a6;
- (void)fetchMinimumDeviceVersionsActiveSinceInterval:(double)a3 completionHandler:(id)a4;
- (void)getGSTokenWithCompletionHandler:(id)a3;
- (void)invalidateGSTokenCache;
- (void)loadStoreFrontWithCompletionHandler:(id)a3;
- (void)removeObserver:(id)a3;
- (void)t_startOverridingContentStoreFrontID:(id)a3;
- (void)t_stopOverridingContentStoreFrontID;
@end

@implementation FCAppleAccount

uint64_t __31__FCAppleAccount_sharedAccount__block_invoke(uint64_t a1)
{
  qword_1EDB27860 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

+ (id)sharedAccount
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__FCAppleAccount_sharedAccount__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_MergedGlobals_197 != -1)
  {
    dispatch_once(&_MergedGlobals_197, block);
  }

  v2 = qword_1EDB27860;

  return v2;
}

- (FCAppleAccount)init
{
  v9.receiver = self;
  v9.super_class = FCAppleAccount;
  v2 = [(FCAppleAccount *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E6959A48] defaultStore];
    accountStore = v2->_accountStore;
    v2->_accountStore = v3;

    v5 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = v5;

    [(FCAppleAccount *)v2 _reloadAccountsFromAccountStore];
    [(FCAppleAccount *)v2 _setStoreFrontDependentPropertiesWithStoreFrontLockingEnabled:?];
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 addObserver:v2 selector:sel__accountStoreDidChange name:*MEMORY[0x1E69597D8] object:v2->_accountStore];
  }

  return v2;
}

- (void)_reloadAccountsFromAccountStore
{
  v40[2] = *MEMORY[0x1E69E9840];
  if (self)
  {
    v4 = objc_getProperty(self, a2, 24, 1);
    v6 = objc_getProperty(self, v5, 32, 1);
    accountStore = self->_accountStore;
  }

  else
  {
    v6 = 0;
    v4 = 0;
    accountStore = 0;
  }

  v8 = *MEMORY[0x1E6959930];
  v40[0] = *MEMORY[0x1E69597F8];
  v40[1] = v8;
  v9 = MEMORY[0x1E695DEC8];
  v10 = accountStore;
  v11 = [v9 arrayWithObjects:v40 count:2];
  v12 = [(ACAccountStore *)v10 accountsWithAccountTypeIdentifiers:v11 error:0];

  v13 = [v12 fc_firstObjectPassingTest:&__block_literal_global_90];
  v14 = [v12 fc_firstObjectPassingTest:&__block_literal_global_92_1];
  v16 = [v12 fc_firstObjectPassingTest:&__block_literal_global_94];
  v17 = v13;
  if (!v13)
  {
    if (self)
    {
      v18 = self->_accountStore;
    }

    else
    {
      v18 = 0;
    }

    v2 = v18;
    v17 = [(ACAccountStore *)v2 aa_primaryAppleAccount];
  }

  if (self)
  {
    objc_setProperty_atomic(self, v15, v17, 24);
  }

  if (v13)
  {
    if (v14)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (v14)
    {
LABEL_11:
      v19 = 0;
      v20 = v14;
      if (!self)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  if (v16)
  {
    v19 = 0;
    v20 = v16;
    if (!self)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (self)
  {
    v37 = self->_accountStore;
  }

  else
  {
    v37 = 0;
  }

  v2 = v37;
  v20 = [(ACAccountStore *)v2 ams_localiTunesAccount];
  v19 = 1;
  if (self)
  {
LABEL_16:
    objc_setProperty_atomic(self, v15, v20, 32);
  }

LABEL_17:
  if (v19)
  {
  }

  v38 = v13;
  v21 = v4;
  v23 = v6;
  if (self)
  {
    v24 = v12;
    v26 = v14;
    if (objc_getProperty(self, v22, 24, 1) == v21)
    {
      LOBYTE(v29) = 0;
    }

    else
    {
      v27 = [objc_getProperty(self v25];
      v28 = [v21 identifier];
      v29 = [v27 isEqualToString:v28] ^ 1;
    }

    v30 = v16;
    if (objc_getProperty(self, v25, 32, 1) == v23)
    {
      LOBYTE(v34) = 0;
    }

    else
    {
      v32 = [objc_getProperty(self v31];
      v33 = [v23 identifier];
      v34 = [v32 isEqualToString:v33] ^ 1;
    }

    v35 = v29 | v34;
    v16 = v30;
    v14 = v26;
    v12 = v24;
    if (v35)
    {
      [(FCAppleAccount *)self _setStoreFrontDependentPropertiesWithStoreFrontLockingEnabled:?];
      [(FCAppleAccount *)self invalidateGSTokenCache];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __48__FCAppleAccount_notifyObserversOfAccountChange__block_invoke;
      block[3] = &unk_1E7C36EA0;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }

  v36 = *MEMORY[0x1E69E9840];
}

uint64_t __49__FCAppleAccount__reloadAccountsFromAccountStore__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 accountType];
  v4 = [v3 identifier];
  if ([v4 isEqualToString:*MEMORY[0x1E69597F8]])
  {
    v5 = [v2 aa_isAccountClass:*MEMORY[0x1E698B760]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __49__FCAppleAccount__reloadAccountsFromAccountStore__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 accountType];
  v4 = [v3 identifier];
  if ([v4 isEqual:*MEMORY[0x1E6959930]])
  {
    v5 = [v2 isActive];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __49__FCAppleAccount__reloadAccountsFromAccountStore__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 accountType];
  v4 = [v3 identifier];
  if ([v4 isEqual:*MEMORY[0x1E6959930]])
  {
    v5 = [v2 ams_isLocalAccount];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)iTunesAccountDSID
{
  if (self)
  {
    self = objc_getProperty(self, a2, 32, 1);
  }

  v2 = [(FCAppleAccount *)self ams_DSID];
  v3 = [v2 stringValue];

  return v3;
}

- (id)currentStoreFrontID
{
  if (self)
  {
    self = objc_getProperty(self, a2, 32, 1);
  }

  v2 = [(FCAppleAccount *)self ams_storefront];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:{@" -, "}];
    v4 = [v2 componentsSeparatedByCharactersInSet:v3];
    v5 = [v4 firstObject];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)iCloudAccountDSID
{
  if (self)
  {
    self = objc_getProperty(self, a2, 24, 1);
    v2 = vars8;
  }

  return [(FCAppleAccount *)self aa_personID];
}

- (void)invalidateGSTokenCache
{
  if (self->_base64GSTokenPromise)
  {
    v3 = [(FCAppleAccount *)self getNewGSTokenPromise];
    base64GSTokenPromise = self->_base64GSTokenPromise;
    self->_base64GSTokenPromise = v3;

    MEMORY[0x1EEE66BB8]();
  }
}

- (NSString)contentStoreFrontID
{
  if (!self || (p_contentStoreFrontID = &self->_overrideContentStoreFrontID, (v4 = self->_overrideContentStoreFrontID) == 0) || (v5 = v4, v6 = NSClassFromString(&cfstr_Xctest.isa), v5, !v6))
  {
    p_contentStoreFrontID = &self->_contentStoreFrontID;
  }

  v7 = *p_contentStoreFrontID;
  if (!v7)
  {
    v8 = FCDefaultLog;
    if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_ERROR, "Received nil storeFront ID. Falling back to U.S.", v10, 2u);
    }

    v7 = @"143441";
  }

  return v7;
}

void __37__FCAppleAccount_primaryLanguageCode__block_invoke(uint64_t a1)
{
  v3 = [(FCAppleAccount *)*(a1 + 32) dynamicPrimaryLanguageCodes];
  v1 = [v3 firstObject];
  v2 = qword_1EDB27878;
  qword_1EDB27878 = v1;
}

- (NSString)primaryLanguageCode
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__FCAppleAccount_primaryLanguageCode__block_invoke;
  block[3] = &unk_1E7C36EA0;
  block[4] = self;
  if (qword_1EDB27880 != -1)
  {
    dispatch_once(&qword_1EDB27880, block);
  }

  return qword_1EDB27878;
}

- (id)dynamicPrimaryLanguageCodes
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = [MEMORY[0x1E695DF58] preferredLanguages];
    v3 = [v2 fc_arrayByTransformingWithBlock:&__block_literal_global_151];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __45__FCAppleAccount_dynamicPrimaryLanguageCodes__block_invoke_2;
    v10[3] = &unk_1E7C38B40;
    v10[4] = a1;
    v4 = [v3 fc_arrayOfObjectsPassingTest:v10];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v11[0] = @"en";
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

id __45__FCAppleAccount_dynamicPrimaryLanguageCodes__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x1E695DF58] componentsFromLocaleIdentifier:a2];
  v3 = [v2 objectForKey:*MEMORY[0x1E695D9B0]];

  return v3;
}

void __40__FCAppleAccount_supportedLanguageCodes__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) contentStoreFrontID];
  if ([v3 isEqualToString:@"143455"])
  {
    [MEMORY[0x1E695DFD8] setWithObjects:{@"en", @"fr", 0}];
  }

  else
  {
    [MEMORY[0x1E695DFD8] setWithObject:@"en"];
  }
  v1 = ;
  v2 = qword_1EDB27868;
  qword_1EDB27868 = v1;
}

uint64_t __45__FCAppleAccount_dynamicPrimaryLanguageCodes__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  if (v2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__FCAppleAccount_supportedLanguageCodes__block_invoke;
    block[3] = &unk_1E7C36EA0;
    block[4] = v2;
    if (qword_1EDB27870 != -1)
    {
      dispatch_once(&qword_1EDB27870, block);
    }

    v2 = qword_1EDB27868;
  }

  v4 = [v2 containsObject:v3];

  return v4;
}

- (BOOL)isContentStoreFrontSupported
{
  v2 = [(FCAppleAccount *)self contentStoreFrontID];
  if (v2)
  {
    v3 = FCSupportedStoreFrontIDs();
    v4 = [v3 containsObject:v2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)supportedContentStoreFrontID
{
  v2 = [(FCAppleAccount *)self contentStoreFrontID];
  if (!v2 || (FCSupportedStoreFrontIDs(), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 containsObject:v2], v3, (v4 & 1) == 0))
  {
    v5 = @"143441";

    v2 = v5;
  }

  return v2;
}

- (BOOL)isPrivateDataSyncingEnabled
{
  if ([(FCAppleAccount *)self isRunningPPT])
  {
    return 0;
  }

  if (self)
  {
    Property = objc_getProperty(self, v3, 24, 1);
  }

  else
  {
    Property = 0;
  }

  v6 = *MEMORY[0x1E6959B38];

  return [Property isEnabledForDataclass:v6];
}

- (BOOL)isUserSignedIntoiTunes
{
  v2 = [(FCAppleAccount *)self iTunesAccountDSID];
  v3 = v2 != 0;

  return v3;
}

- (id)iTunesAccountName
{
  v2 = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 32, 1);
  }

  v3 = [(FCAppleAccount *)self username];
  v4 = [v3 length];

  if (v4)
  {
    if (v2)
    {
      Property = objc_getProperty(v2, v5, 32, 1);
    }

    else
    {
      Property = 0;
    }

    v7 = [Property username];
    v8 = [v7 copy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __48__FCAppleAccount_notifyObserversOfAccountChange__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 56);
  }

  else
  {
    v2 = 0;
  }

  v3 = [v2 copy];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * i) appleAccountChanged];
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)isUserSignedInToiCloud
{
  if (self)
  {
    self = objc_getProperty(self, a2, 24, 1);
  }

  return self != 0;
}

- (NSString)endpointConnectionClientID
{
  v2 = NewsCoreSensitiveUserDefaults();
  v3 = [v2 stringForKey:@"report_concern_user_id"];

  if (!v3)
  {
    v4 = [MEMORY[0x1E696AFB0] UUID];
    v3 = [v4 UUIDString];

    v5 = NewsCoreSensitiveUserDefaults();
    [v5 setValue:v3 forKey:@"report_concern_user_id"];
  }

  return v3;
}

- (id)getGSToken
{
  base64GSTokenPromise = self->_base64GSTokenPromise;
  if (!base64GSTokenPromise)
  {
    v4 = [(FCAppleAccount *)self getNewGSTokenPromise];
    v5 = self->_base64GSTokenPromise;
    self->_base64GSTokenPromise = v4;

    base64GSTokenPromise = self->_base64GSTokenPromise;
  }

  return base64GSTokenPromise;
}

- (id)getNewGSTokenPromise
{
  if (a1)
  {
    v2 = a1;
    v3 = objc_alloc(MEMORY[0x1E69B68F8]);
    var38[0] = MEMORY[0x1E69E9820];
    var38[1] = 3221225472;
    var38[2] = __38__FCAppleAccount_getNewGSTokenPromise__block_invoke;
    var38[3] = &unk_1E7C39ED0;
    var38[4] = v2;
    a1 = [v3 initWithResolver:var38];
    v1 = var38[8];
  }

  return a1;
}

void __38__FCAppleAccount_getNewGSTokenPromise__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v7 = a3;
  v8 = *(a1 + 32);
  if (!v8)
  {
    goto LABEL_17;
  }

  v9 = objc_getProperty(v8, v6, 24, 1);
  if (v9)
  {
    v11 = v9;
    v12 = [*(a1 + 32) iCloudAccountDSID];

    if (v12)
    {
      Property = *(a1 + 32);
      if (Property)
      {
        Property = objc_getProperty(Property, v10, 24, 1);
      }

      v14 = Property;
      v15 = [*(a1 + 32) iCloudAccountDSID];
      goto LABEL_13;
    }
  }

  v16 = *(a1 + 32);
  if (!v16)
  {
LABEL_17:
    v14 = 0;
    goto LABEL_18;
  }

  v14 = objc_getProperty(v16, v10, 32, 1);
  if (!v14)
  {
LABEL_18:
    v17 = 0;
    goto LABEL_19;
  }

  v17 = [*(a1 + 32) iTunesAccountDSID];

  if (!v17)
  {
    v14 = 0;
LABEL_19:
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __38__FCAppleAccount_getNewGSTokenPromise__block_invoke_2;
    v30[3] = &unk_1E7C379C8;
    v31 = v7;
    v20 = v7;
    __38__FCAppleAccount_getNewGSTokenPromise__block_invoke_2(v30);
    v22 = v31;
    goto LABEL_20;
  }

  v19 = *(a1 + 32);
  if (v19)
  {
    v19 = objc_getProperty(v19, v18, 32, 1);
  }

  v14 = v19;
  v15 = [*(a1 + 32) iTunesAccountDSID];
LABEL_13:
  v17 = v15;
  if (!v14 || !v15)
  {
    goto LABEL_19;
  }

  v20 = objc_alloc_init(MEMORY[0x1E698DCB8]);
  [v20 setServiceIdentifier:@"com.apple.gs.news.auth"];
  v21 = [v14 username];
  [v20 setUsername:v21];

  [v20 setDSID:v17];
  [v20 setIsUsernameEditable:0];
  [v20 setAuthenticationType:1];
  v22 = objc_alloc_init(MEMORY[0x1E698DCC0]);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __38__FCAppleAccount_getNewGSTokenPromise__block_invoke_3;
  v25[3] = &unk_1E7C3B718;
  v28 = v7;
  v14 = v14;
  v23 = *(a1 + 32);
  v26 = v14;
  v27 = v23;
  v29 = v5;
  v24 = v7;
  [v22 authenticateWithContext:v20 completion:v25];

LABEL_20:
}

void __38__FCAppleAccount_getNewGSTokenPromise__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] fc_authUserAccountInvalid];
  (*(v1 + 16))(v1, v2);
}

- (ACAccount)activeiTunesAccount
{
  if (self)
  {
    self = objc_getProperty(self, a2, 32, 1);
    v2 = vars8;
  }

  return self;
}

- (void)_setStoreFrontDependentPropertiesWithStoreFrontLockingEnabled:(void *)a1
{
  v18 = NewsCoreUserDefaults();
  v4 = [v18 stringForKey:@"FCAppleAccountContentStoreFrontiTunesDSIDKey"];
  v5 = [v18 stringForKey:@"FCAppleAccountContentStoreFrontIDKey"];
  v6 = [a1 iTunesAccountDSID];
  v7 = [a1 currentStoreFrontID];
  v19 = 0;
  v20 = 0;
  FCAppleAccountDetermineContentStoreFrontID(v4, v6, v5, v7, &v20, &v19);
  v8 = v20;
  v9 = v19;
  if (a2)
  {
    if (v8)
    {
      [v18 setObject:v8 forKey:@"FCAppleAccountContentStoreFrontiTunesDSIDKey"];
      if (v9)
      {
LABEL_4:
        [v18 setObject:v9 forKey:@"FCAppleAccountContentStoreFrontIDKey"];
        goto LABEL_7;
      }
    }

    else
    {
      [v18 removeObjectForKey:@"FCAppleAccountContentStoreFrontiTunesDSIDKey"];
      if (v9)
      {
        goto LABEL_4;
      }
    }

    [v18 removeObjectForKey:@"FCAppleAccountContentStoreFrontIDKey"];
  }

LABEL_7:
  v10 = [v9 copy];
  v11 = a1[10];
  a1[10] = v10;

  v12 = [v7 copy];
  v13 = a1[9];
  a1[9] = v12;

  v14 = [a1 iCloudAccountDSID];
  v15 = v14;
  if (!v14)
  {
    v14 = v6;
  }

  v16 = [v14 copy];
  v17 = a1[8];
  a1[8] = v16;
}

- (BOOL)isPrimaryAccountEmailAddress
{
  if (self)
  {
    self = objc_getProperty(self, a2, 24, 1);
  }

  v2 = [(FCAppleAccount *)self username];
  v3 = [v2 ea_isLegalEmailAddress];

  return v3;
}

- (NSString)localizedContentStoreFrontID
{
  v3 = [(FCAppleAccount *)self contentStoreFrontID];
  v4 = v3;
  if ([(__CFString *)v3 isEqualToString:@"143455"])
  {
    v4 = v3;
    if ([(FCAppleAccount *)self supportedContentLanguage]== 1)
    {
      v4 = @"143455-fr-ca";
    }
  }

  return v4;
}

- (BOOL)isSignedInStoreFrontSupported
{
  v2 = [(FCAppleAccount *)self currentStoreFrontID];
  if (v2)
  {
    v3 = FCSupportedStoreFrontIDs();
    v4 = [v3 containsObject:v2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)supportedLocalizedContentStoreFrontID
{
  v3 = [(FCAppleAccount *)self contentStoreFrontID];
  if (v3 && (FCSupportedStoreFrontIDs(), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 containsObject:v3], v4, (v5 & 1) != 0))
  {
    v6 = [(FCAppleAccount *)self localizedContentStoreFrontID];
  }

  else
  {
    v6 = @"143441";
  }

  v7 = v6;

  return v7;
}

- (NSArray)preferredLanguageCodes
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__FCAppleAccount_preferredLanguageCodes__block_invoke;
  block[3] = &unk_1E7C36EA0;
  block[4] = self;
  if (qword_1EDB27890 != -1)
  {
    dispatch_once(&qword_1EDB27890, block);
  }

  return qword_1EDB27888;
}

uint64_t __40__FCAppleAccount_preferredLanguageCodes__block_invoke(uint64_t a1)
{
  v1 = [(FCAppleAccount *)*(a1 + 32) dynamicPrimaryLanguageCodes];
  v2 = qword_1EDB27888;
  qword_1EDB27888 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

- (int64_t)supportedContentLanguage
{
  v2 = [(FCAppleAccount *)self primaryLanguageCode];
  v3 = [v2 isEqualToString:@"fr"];

  return v3;
}

- (int64_t)dynamicSupportedContentLanguage
{
  v2 = [(FCAppleAccount *)self dynamicPrimaryLanguageCodes];
  v3 = [v2 firstObject];
  v4 = [v3 isEqualToString:@"fr"];

  return v4;
}

- (void)loadStoreFrontWithCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = +[FCAMSBag bag];
  v5 = [v4 URLForKey:@"metrics/metricsUrl"];
  v6 = [v5 valuePromise];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__FCAppleAccount_loadStoreFrontWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E7C451E8;
  v9 = v3;
  v7 = v3;
  [v6 addFinishBlock:v8];
}

void __54__FCAppleAccount_loadStoreFrontWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = FCDefaultLog;
    if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
    {
      v10 = 138543362;
      v11 = v6;
      _os_log_error_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_ERROR, "failed to obtain metrics URL from bag with error: %{public}@", &v10, 0xCu);
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))();
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)checkAllDevicesRunningMinimumiOSVersion:(id)a3 macOSVersion:(id)a4 orInactiveForTimeInterval:(double)a5 completionHandler:(id)a6
{
  var1 = a4.var1;
  var0 = a4.var0;
  v9 = a3.var1;
  v10 = a3.var0;
  v28[1] = *MEMORY[0x1E69E9840];
  v12 = a6;
  v14 = objc_alloc_init(MEMORY[0x1E698DD68]);
  if (self)
  {
    Property = objc_getProperty(self, v13, 24, 1);
  }

  else
  {
    Property = 0;
  }

  v16 = [Property aa_altDSID];
  [v14 setAltDSID:v16];

  [v14 setIncludeUntrustedDevices:1];
  v28[0] = *MEMORY[0x1E698DC58];
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
  [v14 setServices:v17];

  [v14 setOperatingSystems:&unk_1F2E6FAE0];
  v18 = objc_alloc_init(MEMORY[0x1E698DCC0]);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __115__FCAppleAccount_checkAllDevicesRunningMinimumiOSVersion_macOSVersion_orInactiveForTimeInterval_completionHandler___block_invoke;
  v21[3] = &unk_1E7C45230;
  v23 = a5;
  v24 = v10;
  v25 = v9;
  v26 = var0;
  v27 = var1;
  v22 = v12;
  v19 = v12;
  [v18 fetchDeviceListWithContext:v14 completion:v21];

  v20 = *MEMORY[0x1E69E9840];
}

void __115__FCAppleAccount_checkAllDevicesRunningMinimumiOSVersion_macOSVersion_orInactiveForTimeInterval_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = FCDefaultLog;
  if (v6)
  {
    if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v41 = v6;
      _os_log_error_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_ERROR, "encountered error fetching device list: %{public}@", buf, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v30 = a1;
    if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      *buf = 134217984;
      v41 = [v5 count];
      _os_log_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_DEFAULT, "successfully fetched device list with %lu devices", buf, 0xCu);
    }

    v9 = [MEMORY[0x1E695DF90] dictionary];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v31 = v5;
    obj = v5;
    v10 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v37;
      do
      {
        v13 = 0;
        do
        {
          if (*v37 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v36 + 1) + 8 * v13);
          v15 = FCDefaultLog;
          if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
          {
            v16 = v15;
            v17 = [v14 model];
            v18 = [v14 buildNumber];
            v19 = [v14 lastUpdatedDate];
            v20 = [v19 fc_stringWithISO8601Format];
            *buf = 138543874;
            v41 = v17;
            v42 = 2114;
            v43 = v18;
            v44 = 2114;
            v45[0] = v20;
            _os_log_impl(&dword_1B63EF000, v16, OS_LOG_TYPE_DEFAULT, "fetched device: %{public}@ %{public}@; last updated %{public}@", buf, 0x20u);
          }

          v21 = [v14 serialNumber];
          if (v21)
          {
            v22 = [v9 objectForKeyedSubscript:v21];
            if (!v22 || ([v14 lastUpdatedDate], v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "lastUpdatedDate"), v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v23, "fc_isLaterThan:", v24), v24, v23, v25))
            {
              [v9 setObject:v14 forKeyedSubscript:v21];
            }
          }

          else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "serialNumber"];
            *buf = 136315906;
            v41 = "[FCAppleAccount checkAllDevicesRunningMinimumiOSVersion:macOSVersion:orInactiveForTimeInterval:completionHandler:]_block_invoke";
            v42 = 2080;
            v43 = "FCAppleAccount.m";
            v44 = 1024;
            LODWORD(v45[0]) = 434;
            WORD2(v45[0]) = 2114;
            *(v45 + 6) = v26;
            _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
      }

      while (v11);
    }

    v27 = [v9 allValues];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[4] = *(v30 + 40);
    v28 = *(v30 + 64);
    v34 = *(v30 + 48);
    v35 = v28;
    v33[2] = __115__FCAppleAccount_checkAllDevicesRunningMinimumiOSVersion_macOSVersion_orInactiveForTimeInterval_completionHandler___block_invoke_55;
    v33[3] = &__block_descriptor_72_e24_B16__0__AKRemoteDevice_8l;
    [v27 fc_allObjectsPassTest:v33];

    (*(*(v30 + 32) + 16))();
    v6 = 0;
    v5 = v31;
  }

  v29 = *MEMORY[0x1E69E9840];
}

uint64_t __115__FCAppleAccount_checkAllDevicesRunningMinimumiOSVersion_macOSVersion_orInactiveForTimeInterval_completionHandler___block_invoke_55(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 operatingSystemVersion];
  v5 = [v4 componentsSeparatedByString:@"."];

  v6 = [v5 firstObject];
  v7 = [v6 integerValue];

  if ([v5 count] < 2)
  {
    v9 = 0;
  }

  else
  {
    v8 = [v5 objectAtIndexedSubscript:1];
    v9 = [v8 integerValue];
  }

  v10 = [v3 lastUpdatedDate];
  [v10 fc_timeIntervalUntilNow];
  v12 = v11;
  v13 = *(a1 + 32);

  if (v12 > v13)
  {
    v14 = 1;
    goto LABEL_21;
  }

  v15 = [v3 operatingSystemName];
  v16 = [v15 isEqualToString:@"iOS"];

  if (v16)
  {
    v17 = 48;
    v18 = 40;
  }

  else
  {
    v19 = [v3 operatingSystemName];
    v20 = [v19 isEqualToString:@"macOS"];

    if (!v20)
    {
      v21 = 0;
      v22 = 0;
      goto LABEL_12;
    }

    v17 = 64;
    v18 = 56;
  }

  v21 = *(a1 + v18);
  v22 = *(a1 + v17);
LABEL_12:
  v24 = v7 == v21 && v9 >= v22;
  v14 = v7 > v21 || v24;
LABEL_21:

  return v14;
}

- (void)fetchMinimumDeviceVersionsActiveSinceInterval:(double)a3 completionHandler:(id)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E698DD68]);
  if (self)
  {
    Property = objc_getProperty(self, v7, 24, 1);
  }

  else
  {
    Property = 0;
  }

  v10 = [Property aa_altDSID];
  [v8 setAltDSID:v10];

  [v8 setIncludeUntrustedDevices:1];
  v18[0] = *MEMORY[0x1E698DC58];
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  [v8 setServices:v11];

  [v8 setOperatingSystems:&unk_1F2E6FAF8];
  v12 = objc_alloc_init(MEMORY[0x1E698DCC0]);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __82__FCAppleAccount_fetchMinimumDeviceVersionsActiveSinceInterval_completionHandler___block_invoke;
  v15[3] = &unk_1E7C45280;
  v16 = v6;
  v17 = a3;
  v13 = v6;
  [v12 fetchDeviceListWithContext:v8 completion:v15];

  v14 = *MEMORY[0x1E69E9840];
}

void __82__FCAppleAccount_fetchMinimumDeviceVersionsActiveSinceInterval_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v99 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    v72 = a1;
    v9 = FCDefaultLog;
    if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      *buf = 134217984;
      *&buf[4] = [v5 count];
      _os_log_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_DEFAULT, "successfully fetched device list with %lu devices", buf, 0xCu);
    }

    v11 = [MEMORY[0x1E695DF90] dictionary];
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v65 = v5;
    obj = v5;
    v12 = [obj countByEnumeratingWithState:&v81 objects:v98 count:16];
    v74 = v11;
    if (v12)
    {
      v13 = v12;
      v14 = *v82;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v82 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v81 + 1) + 8 * i);
          v17 = FCDefaultLog;
          if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
          {
            v18 = v17;
            v19 = [v16 model];
            v20 = [v16 buildNumber];
            v21 = [v16 lastUpdatedDate];
            v22 = [v21 fc_stringWithISO8601Format];
            *buf = 138543874;
            *&buf[4] = v19;
            *&buf[12] = 2114;
            *&buf[14] = v20;
            *&buf[22] = 2114;
            *&v93 = v22;
            _os_log_impl(&dword_1B63EF000, v18, OS_LOG_TYPE_DEFAULT, "fetched device: %{public}@ %{public}@; last updated %{public}@", buf, 0x20u);

            v11 = v74;
          }

          v23 = [v16 serialNumber];
          if (v23)
          {
            v24 = [v11 objectForKeyedSubscript:v23];
            if (!v24)
            {
              goto LABEL_15;
            }

            v25 = [v16 lastUpdatedDate];
            v26 = [v24 lastUpdatedDate];
            v27 = [v25 fc_isLaterThan:v26];

            v11 = v74;
            if (v27)
            {
LABEL_15:
              [v11 setObject:v16 forKeyedSubscript:v23];
            }
          }

          else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "serialNumber"];
            *buf = 136315906;
            *&buf[4] = "[FCAppleAccount fetchMinimumDeviceVersionsActiveSinceInterval:completionHandler:]_block_invoke";
            *&buf[12] = 2080;
            *&buf[14] = "FCAppleAccount.m";
            *&buf[22] = 1024;
            LODWORD(v93) = 511;
            WORD2(v93) = 2114;
            *(&v93 + 6) = v28;
            _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
          }
        }

        v13 = [obj countByEnumeratingWithState:&v81 objects:v98 count:16];
      }

      while (v13);
    }

    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v73 = [v11 allValues];
    v29 = [v73 countByEnumeratingWithState:&v77 objects:v97 count:16];
    if (!v29)
    {
      v70 = 0;
      v71 = 0;
      v68 = 0;
      v69 = 0;
      v66 = 0;
      v67 = 0;
      v31 = 0;
      obja = 0;
      v33 = a1;
      goto LABEL_87;
    }

    v30 = v29;
    v70 = 0;
    v71 = 0;
    v68 = 0;
    v69 = 0;
    v66 = 0;
    v67 = 0;
    v31 = 0;
    obja = 0;
    v32 = *v78;
    v33 = a1;
    while (1)
    {
      v34 = 0;
      do
      {
        if (*v78 != v32)
        {
          objc_enumerationMutation(v73);
        }

        v35 = *(*(&v77 + 1) + 8 * v34);
        v36 = [v35 lastUpdatedDate];
        [v36 fc_timeIntervalUntilNow];
        v38 = v37;
        v39 = *(v33 + 40);

        if (v38 <= v39)
        {
          v40 = [v35 operatingSystemVersion];
          v41 = [v40 componentsSeparatedByString:@"."];

          v42 = [v41 firstObject];
          v43 = [v42 integerValue];

          if ([v41 count] < 2)
          {
            v45 = 0;
          }

          else
          {
            v44 = [v41 objectAtIndexedSubscript:1];
            v45 = [v44 integerValue];
          }

          v46 = [v35 operatingSystemName];
          v47 = [v46 isEqualToString:@"iOS"];

          if (v47)
          {
            if (v45 < v71)
            {
              v48 = v43;
            }

            else
            {
              v48 = v70;
            }

            if (v45 < v71)
            {
              v49 = v45;
            }

            else
            {
              v49 = v71;
            }

            if (v43 > v70)
            {
              v48 = v70;
              v49 = v71;
            }

            if (v43 < v70)
            {
              v48 = v43;
              v49 = v45;
            }

            if (v70)
            {
              v50 = v48;
            }

            else
            {
              v50 = v43;
            }

            if (v70)
            {
              v51 = v49;
            }

            else
            {
              v51 = v45;
            }

            v70 = v50;
            v71 = v51;
            goto LABEL_66;
          }

          v52 = [v35 operatingSystemName];
          v53 = [v52 isEqualToString:@"macOS"];

          if (v53)
          {
            if (v45 < v68)
            {
              v54 = v43;
            }

            else
            {
              v54 = v69;
            }

            if (v45 < v68)
            {
              v55 = v45;
            }

            else
            {
              v55 = v68;
            }

            if (v43 > v69)
            {
              v54 = v69;
              v55 = v68;
            }

            if (v43 < v69)
            {
              v54 = v43;
              v55 = v45;
            }

            if (v69)
            {
              v56 = v54;
            }

            else
            {
              v56 = v43;
            }

            if (v69)
            {
              v57 = v55;
            }

            else
            {
              v57 = v45;
            }

            v68 = v57;
            v69 = v56;
LABEL_66:
            v43 = v31;
            v45 = obja;
            v33 = v72;
LABEL_67:

            v31 = v43;
            obja = v45;
            goto LABEL_68;
          }

          v58 = [v35 operatingSystemName];
          v59 = [v58 isEqualToString:@"watchOS"];

          if (v59)
          {
            if (!v67)
            {
              v66 = v45;
              v67 = v43;
              goto LABEL_66;
            }

            v33 = v72;
            if (v43 < v67 || v43 <= v67 && v45 < v66)
            {
              v66 = v45;
              v67 = v43;
            }
          }

          else
          {
            v60 = [v35 operatingSystemName];
            v61 = [v60 isEqualToString:@"visionOS"];

            if (!v61)
            {
              goto LABEL_66;
            }

            v33 = v72;
            if (!v31 || v43 < v31 || v43 <= v31 && v45 < obja)
            {
              goto LABEL_67;
            }
          }

          v43 = v31;
          v45 = obja;
          goto LABEL_67;
        }

LABEL_68:
        ++v34;
      }

      while (v30 != v34);
      v62 = [v73 countByEnumeratingWithState:&v77 objects:v97 count:16];
      v30 = v62;
      if (!v62)
      {
LABEL_87:

        v63 = *(*(v33 + 32) + 16);
        *buf = v70;
        *&buf[8] = v71;
        *&buf[16] = v69;
        *&v93 = v68;
        *(&v93 + 1) = v67;
        v94 = v66;
        v95 = v31;
        v96 = obja;
        v63();
        v7 = 0;
        v5 = v65;
        v8 = v74;
        goto LABEL_88;
      }
    }
  }

  v85[0] = MEMORY[0x1E69E9820];
  v85[1] = 3221225472;
  v85[2] = __82__FCAppleAccount_fetchMinimumDeviceVersionsActiveSinceInterval_completionHandler___block_invoke_2;
  v85[3] = &unk_1E7C45258;
  v86 = v6;
  v87 = *(a1 + 32);
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  __82__FCAppleAccount_fetchMinimumDeviceVersionsActiveSinceInterval_completionHandler___block_invoke_2(v85);

  v8 = v86;
LABEL_88:

  v64 = *MEMORY[0x1E69E9840];
}

uint64_t __82__FCAppleAccount_fetchMinimumDeviceVersionsActiveSinceInterval_completionHandler___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
  {
    v15 = *(a1 + 32);
    LODWORD(v16[0]) = 138543362;
    *(v16 + 4) = v15;
    _os_log_error_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_ERROR, "encountered error fetching device list: %{public}@", v16, 0xCu);
  }

  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = *(v8 + 16);
  v11 = *(a1 + 64);
  v16[0] = *(a1 + 48);
  v16[1] = v11;
  v12 = *(a1 + 96);
  v16[2] = *(a1 + 80);
  v16[3] = v12;
  result = v10(v8, v16, v9, v3, v4, v5, v6, v7);
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)getGSTokenWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(FCAppleAccount *)self getGSToken];
  v6 = zalgo();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __50__FCAppleAccount_getGSTokenWithCompletionHandler___block_invoke;
  v13[3] = &unk_1E7C452A8;
  v7 = v4;
  v14 = v7;
  v8 = [v5 thenOn:v6 then:v13];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __50__FCAppleAccount_getGSTokenWithCompletionHandler___block_invoke_2;
  v11[3] = &unk_1E7C39F48;
  v12 = v7;
  v9 = v7;
  v10 = [v5 error:v11];
}

void __38__FCAppleAccount_getNewGSTokenPromise__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5 && (v7 = *MEMORY[0x1E698DB98], [v5 objectForKeyedSubscript:*MEMORY[0x1E698DB98]], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v9 = [v5 objectForKeyedSubscript:@"AKAltDSID"];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [*(a1 + 32) aa_altDSID];
    }

    v12 = v11;

    [*(a1 + 40) setAltDSID:v12];
    v13 = [v5 objectForKeyedSubscript:v7];
    v14 = [v13 objectForKeyedSubscript:@"com.apple.gs.news.auth"];
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", v12, v14];
    v16 = [v15 dataUsingEncoding:4];
    v17 = [v16 base64EncodedStringWithOptions:0];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v19 = *(a1 + 48);
    v18 = v6;
    v19[2](v19, v18);
  }
}

- (void)addObserver:(id)a3
{
  if (self)
  {
    self = self->_observers;
  }

  [(FCAppleAccount *)self addObject:a3];
}

- (void)removeObserver:(id)a3
{
  if (self)
  {
    self = self->_observers;
  }

  [(FCAppleAccount *)self removeObject:a3];
}

- (NSString)primaryEmailAddress
{
  if (self)
  {
    self = objc_getProperty(self, a2, 24, 1);
  }

  v2 = [(FCAppleAccount *)self aa_primaryEmail];
  v3 = [v2 copy];

  return v3;
}

- (NSString)appStoreEmailAddress
{
  v3 = [(FCAppleAccount *)self iTunesAccountName];
  v4 = [v3 ea_isLegalEmailAddress];

  if (v4)
  {
    v5 = [(FCAppleAccount *)self iTunesAccountName];
    v6 = [v5 copy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSArray)allEmailAddresses
{
  v3 = objc_opt_new();
  v4 = [(FCAppleAccount *)self appStoreEmailAddress];

  if (v4)
  {
    v5 = [(FCAppleAccount *)self appStoreEmailAddress];
    v6 = [v5 copy];
    [v3 addObject:v6];
  }

  v7 = [(FCAppleAccount *)self primaryEmailAddress];

  if (v7)
  {
    v8 = [(FCAppleAccount *)self primaryEmailAddress];
    v9 = [v8 copy];
    [v3 addObject:v9];
  }

  v10 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v3];
  v11 = [v10 array];

  return v11;
}

- (NSString)username
{
  if (self)
  {
    self = objc_getProperty(self, a2, 24, 1);
  }

  v2 = [(FCAppleAccount *)self username];
  v3 = [v2 copy];

  return v3;
}

- (NSString)formattedUsername
{
  if (self)
  {
    self = objc_getProperty(self, a2, 24, 1);
  }

  v2 = [(FCAppleAccount *)self aa_formattedUsername];
  v3 = [v2 copy];

  return v3;
}

- (NSString)firstName
{
  if (self)
  {
    self = objc_getProperty(self, a2, 24, 1);
  }

  v2 = [(FCAppleAccount *)self aa_firstName];
  v3 = [v2 copy];

  return v3;
}

- (NSString)middleName
{
  if (self)
  {
    self = objc_getProperty(self, a2, 24, 1);
  }

  v2 = [(FCAppleAccount *)self aa_middleName];
  v3 = [v2 copy];

  return v3;
}

- (NSString)lastName
{
  if (self)
  {
    self = objc_getProperty(self, a2, 24, 1);
  }

  v2 = [(FCAppleAccount *)self aa_lastName];
  v3 = [v2 copy];

  return v3;
}

- (NSString)fullName
{
  if (self)
  {
    self = objc_getProperty(self, a2, 24, 1);
  }

  v2 = [(FCAppleAccount *)self aa_fullName];
  v3 = [v2 copy];

  return v3;
}

- (NSString)personID
{
  if (self)
  {
    self = objc_getProperty(self, a2, 24, 1);
  }

  v2 = [(FCAppleAccount *)self aa_personID];
  v3 = [v2 copy];

  return v3;
}

- (NSString)normalizedPersonId
{
  if (self)
  {
    self = objc_getProperty(self, a2, 24, 1);
  }

  v2 = [(FCAppleAccount *)self aa_normalizedPersonID];
  v3 = [v2 copy];

  return v3;
}

- (int64_t)ageCategory
{
  if (self)
  {
    self = objc_getProperty(self, a2, 24, 1);
    v2 = vars8;
  }

  return [(FCAppleAccount *)self aa_ageCategory];
}

- (BOOL)isSuspended
{
  if (self)
  {
    self = objc_getProperty(self, a2, 24, 1);
    v2 = vars8;
  }

  return [(FCAppleAccount *)self aa_isSuspended];
}

- (BOOL)isiCloudSuspended
{
  if (self)
  {
    self = objc_getProperty(self, a2, 24, 1);
  }

  v2 = [(FCAppleAccount *)self aa_suspensionInfo];
  v3 = [v2 isiCloudSuspended];

  return v3;
}

- (BOOL)isFamilySuspended
{
  if (self)
  {
    self = objc_getProperty(self, a2, 24, 1);
  }

  v2 = [(FCAppleAccount *)self aa_suspensionInfo];
  v3 = [v2 isFamilySuspended];

  return v3;
}

- (BOOL)isFamilyEligible
{
  if (self)
  {
    self = objc_getProperty(self, a2, 24, 1);
    v2 = vars8;
  }

  return [(FCAppleAccount *)self aa_isFamilyEligible];
}

- (void)_accountStoreDidChange
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__reloadAccountsFromAccountStore object:0];

  [(FCAppleAccount *)self performSelector:sel__reloadAccountsFromAccountStore withObject:0 afterDelay:1.0];
}

- (void)t_startOverridingContentStoreFrontID:(id)a3
{
  if (self)
  {
    objc_setProperty_nonatomic_copy(self, a2, a3, 40);
  }
}

- (void)t_stopOverridingContentStoreFrontID
{
  if (self)
  {
    objc_setProperty_nonatomic_copy(self, a2, 0, 40);
  }
}

@end