@interface MFAccount
+ (BOOL)_setBasicProperty:(id)a3 forKey:(id)a4 persistentAccount:(id)a5;
+ (BOOL)accountIsManaged:(id)a3;
+ (BOOL)accountIsPreventedFromSendingFromExternalProcesses:(id)a3;
+ (BOOL)accountIsRestrictedFromTransfersToOtherAccounts:(id)a3;
+ (BOOL)accountRestrictsRecentsSyncing:(id)a3;
+ (BOOL)isSSLEditable;
+ (id)_basicPropertyForKey:(id)a3 persistentAccount:(id)a4;
+ (id)_newPersistentAccount;
+ (id)accountPropertiesValueForKey:(id)a3 value:(id)a4;
+ (id)accountWithPersistentAccount:(id)a3;
+ (id)accountWithProperties:(id)a3;
+ (id)authSchemesForAccountClass;
+ (id)releaseAllConnectionsScheduler;
+ (id)supportedDataclasses;
- (ACAccount)parentAccount;
- (ACAccount)persistentAccount;
- (ACAccount)systemAccount;
- (BOOL)_BOOLForAccountInfoKey:(id)a3 defaultValue:(BOOL)a4;
- (BOOL)_connectAndAuthenticate:(id)a3;
- (BOOL)_renewCredentialsWithOptions:(id)a3 completion:(id)a4;
- (BOOL)_shouldTryDirectSSLConnectionOnPort:(unsigned int)a3;
- (BOOL)canAuthenticateWithCurrentCredentials;
- (BOOL)connectionsAreConstrained;
- (BOOL)hasPasswordCredential;
- (BOOL)isActive;
- (BOOL)isEnabledForDataclass:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)primaryiCloudAccount;
- (BOOL)renewCredentialsWithOptions:(id)a3 completion:(id)a4;
- (BOOL)shouldFetchACEDBInfoForError:(id)a3;
- (BOOL)supportsMailDrop;
- (BOOL)usesSSL;
- (Class)connectionClass;
- (ECAuthenticationScheme)preferredAuthScheme;
- (MFAccount)initWithPersistentAccount:(id)a3;
- (MFAccount)initWithProperties:(id)a3;
- (NSDictionary)properties;
- (NSString)description;
- (NSString)displayName;
- (NSString)ef_publicDescription;
- (NSString)oauth2Token;
- (NSString)parentAccountIdentifier;
- (NSString)password;
- (NSString)personaIdentifier;
- (NSString)sourceApplicationBundleIdentifier;
- (NSString)uniqueID;
- (id)_credential;
- (id)_credentialCreateIfNecessary:(BOOL)a3 error:(id *)a4;
- (id)_newConnection;
- (id)_objectForAccountInfoKey:(id)a3;
- (id)_password;
- (id)_passwordWithError:(id *)a3;
- (id)_privacySafeDescription;
- (id)accountPropertyForKey:(id)a3;
- (id)authenticatedConnection;
- (id)clientCertificates;
- (id)customDescriptionForError:(id)a3 authScheme:(id)a4 defaultDescription:(id)a5;
- (id)defaultConnectionSettings;
- (id)enabledDataclasses;
- (id)inaccessiblePasswordErrorWithTitle:(id)a3;
- (id)insecureConnectionSettings;
- (id)loginDisabledErrorWithTitle:(id)a3;
- (id)missingPasswordErrorWithTitle:(id)a3;
- (id)nameForMailboxUid:(id)a3;
- (id)secureConnectionSettings;
- (id)valueInAccountPropertiesForKey:(id)a3;
- (id)wrongPasswordOrUsernameErrorWithTitle:(id)a3;
- (unint64_t)credentialAccessibility;
- (unint64_t)hash;
- (unsigned)defaultPortNumber;
- (unsigned)defaultSecurePortNumber;
- (unsigned)portNumber;
- (void)_queueAccountInfoDidChange;
- (void)_setAccountProperties:(id)a3;
- (void)accountInfoDidChange;
- (void)applySettingsAsDefault:(id)a3;
- (void)persistentAccountDidChange:(id)a3 previousAccount:(id)a4;
- (void)removeAccountPropertyForKey:(id)a3;
- (void)removePersistentAccount;
- (void)removeValueInAccountPropertiesForKey:(id)a3;
- (void)reportAuthenticationError:(id)a3 authScheme:(id)a4;
- (void)savePersistentAccount;
- (void)setAccountProperty:(id)a3 forKey:(id)a4;
- (void)setClientCertificates:(id)a3;
- (void)setDisplayName:(id)a3;
- (void)setDomain:(id)a3;
- (void)setHostname:(id)a3;
- (void)setInvalidCredentialsError;
- (void)setMissingPasswordError;
- (void)setOAuth2Token:(id)a3 refreshToken:(id)a4;
- (void)setPassword:(id)a3;
- (void)setPersistentAccount:(id)a3;
- (void)setPortNumber:(unsigned int)a3;
- (void)setPreferredAuthScheme:(id)a3;
- (void)setUsername:(id)a3;
- (void)setUsesSSL:(BOOL)a3;
- (void)setValueInAccountProperties:(id)a3 forKey:(id)a4;
@end

@implementation MFAccount

- (ACAccount)persistentAccount
{
  os_unfair_lock_lock(&self->_persistentAccountLock);
  v3 = self->_persistentAccount;
  os_unfair_lock_unlock(&self->_persistentAccountLock);

  return v3;
}

- (NSString)displayName
{
  v3 = [(MFAccount *)self _objectForAccountInfoKey:@"DisplayName"];
  if (!v3)
  {
    v4 = [(MFAccount *)self username];
    v5 = [(MFAccount *)self hostname];
    v6 = v5;
    if (!v5 || ([v5 isEqualToString:&stru_1F273A5E0] & 1) != 0)
    {
      v3 = 0;
LABEL_10:

      goto LABEL_11;
    }

    if (v4 && ([v4 isEqualToString:&stru_1F273A5E0] & 1) == 0)
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = [objc_opt_class() accountTypeString];
      v3 = [v7 stringWithFormat:@"%@:%@@%@", v8, v4, v6];

      if (!v3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v3 = v6;
    }

    [(MFAccount *)self mf_lock];
    [(MFAccount *)self setAccountProperty:v3 forKey:@"DisplayName"];
    [(MFAccount *)self mf_unlock];
    goto LABEL_10;
  }

LABEL_11:

  return v3;
}

- (void)_queueAccountInfoDidChange
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_accountInfoDidChange object:0];

  [(MFAccount *)self performSelector:sel_accountInfoDidChange withObject:0 afterDelay:0.0];
}

- (NSString)personaIdentifier
{
  v2 = [(MFAccount *)self baseAccount];
  v3 = [v2 personaIdentifier];

  return v3;
}

- (BOOL)primaryiCloudAccount
{
  v2 = [(MFAccount *)self persistentAccount];
  v3 = [v2 parentAccount];
  v4 = [v3 aa_isAccountClass:*MEMORY[0x1E698B760]];

  return v4;
}

- (NSString)uniqueID
{
  v3 = *MEMORY[0x1E6959720];
  v4 = [(MFAccount *)self _objectForAccountInfoKey:*MEMORY[0x1E6959720]];
  if (!v4)
  {
    v5 = [MEMORY[0x1E696AFB0] UUID];
    v4 = [v5 UUIDString];

    [(MFAccount *)self mf_lock];
    [(MFAccount *)self setAccountProperty:v4 forKey:v3];
    [(MFAccount *)self mf_unlock];
  }

  return v4;
}

+ (id)_newPersistentAccount
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [a1 accountTypeIdentifier];
  v3 = +[MFAccountStore sharedAccountStore];
  v4 = [v3 newPersistentAccountWithAccountTypeIdentifier:v2];
  [v3 supportedDataclassesWithAccountTypeIdentifier:v2];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v5 = v14 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    v8 = *MEMORY[0x1E6959B40];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        [v4 setProvisioned:1 forDataclass:{v10, v13}];
        [v4 setEnabled:objc_msgSend(v10 forDataclass:{"isEqualToString:", v8) ^ 1, v10}];
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  [v4 setAuthenticated:1];
  v11 = *MEMORY[0x1E69E9840];
  return v4;
}

- (NSString)ef_publicDescription
{
  v3 = [MEMORY[0x1E699B7B0] currentDevice];
  v4 = [v3 isInternal];

  if (v4)
  {
    [(MFAccount *)self description];
  }

  else
  {
    [(MFAccount *)self _privacySafeDescription];
  }
  v5 = ;

  return v5;
}

- (id)_privacySafeDescription
{
  [(MFAccount *)self mf_lock];
  cachedPrivacySafeDescription = self->_cachedPrivacySafeDescription;
  if (cachedPrivacySafeDescription)
  {
    v4 = cachedPrivacySafeDescription;
  }

  else
  {
    v5 = [(MFAccount *)self _objectForAccountInfoKey:*MEMORY[0x1E6959720]];
    v6 = MEMORY[0x1E696AEC0];
    v7 = objc_opt_class();
    v8 = MEMORY[0x1E699B858];
    v9 = [(MFAccount *)self username];
    v10 = [v8 ec_partiallyRedactedStringForAddress:v9];
    v11 = [(MFAccount *)self hostname];
    v4 = [v6 stringWithFormat:@"<%@ %p> %@ %@ ID=%@", v7, self, v10, v11, v5];

    if (v5)
    {
      objc_storeStrong(&self->_cachedPrivacySafeDescription, v4);
    }
  }

  [(MFAccount *)self mf_unlock];

  return v4;
}

- (unint64_t)hash
{
  v2 = [(MFAccount *)self uniqueID];
  v3 = [v2 hash];

  return v3;
}

- (NSString)parentAccountIdentifier
{
  os_unfair_lock_lock(&self->_persistentAccountLock);
  v3 = [(MFAccount *)self baseAccount];
  v4 = [v3 systemAccount];
  v5 = [v4 parentAccountIdentifier];

  os_unfair_lock_unlock(&self->_persistentAccountLock);

  return v5;
}

- (void)accountInfoDidChange
{
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = [(MFAccount *)self properties];
  [v4 postNotificationName:@"AccountInfoDidChange" object:self userInfo:v3];
}

- (NSDictionary)properties
{
  v3 = [(MFAccount *)self persistentAccount];
  if (v3)
  {
    v4 = [(MFAccount *)self baseAccount];
    v5 = [v4 properties];
  }

  else
  {
    v5 = self->_unsavedAccountProperties;
  }

  return v5;
}

+ (id)releaseAllConnectionsScheduler
{
  if (releaseAllConnectionsScheduler_onceToken != -1)
  {
    +[MFAccount releaseAllConnectionsScheduler];
  }

  v3 = releaseAllConnectionsScheduler_scheduler;

  return v3;
}

void __43__MFAccount_releaseAllConnectionsScheduler__block_invoke()
{
  v0 = [MEMORY[0x1E699B978] serialDispatchQueueSchedulerWithName:@"com.apple.Message.ReleaseAllConnections" qualityOfService:17];
  v1 = releaseAllConnectionsScheduler_scheduler;
  releaseAllConnectionsScheduler_scheduler = v0;
}

- (BOOL)shouldFetchACEDBInfoForError:(id)a3
{
  v3 = a3;
  v4 = [v3 code];
  v5 = [v3 domain];
  v6 = [v5 isEqualToString:*MEMORY[0x1E696A798]];

  v7 = 0x4601u >> (v4 - 51);
  if ((v4 - 51) >= 0xF)
  {
    LOBYTE(v7) = 0;
  }

  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v3 domain];
  v10 = [v9 isEqualToString:@"MFMessageErrorDomain"];

  if (v10)
  {
    v8 = v4 == 1034;
  }

  v11 = [v3 domain];
  v12 = [v11 isEqualToString:*MEMORY[0x1E695AD78]];

  v13 = (v4 - 1) < 2;
  if (!v12)
  {
    v13 = v8;
  }

  if (v13)
  {
    v14 = [objc_opt_class() shouldHealAccounts];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)accountWithProperties:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithProperties:v3];

  return v4;
}

+ (id)authSchemesForAccountClass
{
  if (authSchemesForAccountClass_onceToken != -1)
  {
    +[MFAccount authSchemesForAccountClass];
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__MFAccount_authSchemesForAccountClass__block_invoke_2;
  v5[3] = &__block_descriptor_40_e32_B16__0__ECAuthenticationScheme_8l;
  v5[4] = a1;
  v3 = [authSchemesForAccountClass_knownSchemes ef_filter:v5];

  return v3;
}

void __39__MFAccount_authSchemesForAccountClass__block_invoke()
{
  v0 = [MEMORY[0x1E699B208] knownSchemes];
  v1 = authSchemesForAccountClass_knownSchemes;
  authSchemesForAccountClass_knownSchemes = v0;
}

- (MFAccount)initWithProperties:(id)a3
{
  v4 = a3;
  v5 = [(MFAccount *)self initWithPersistentAccount:0];
  if (v5)
  {
    v6 = [v4 mutableCopy];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = objc_opt_new();
    }

    v9 = v8;

    v10 = [objc_opt_class() _accountClass];
    [v9 setObject:v10 forKey:@"Class"];

    v5->_allowsTrustPrompt = 1;
    [(MFAccount *)v5 _setAccountProperties:v9];
  }

  return v5;
}

- (MFAccount)initWithPersistentAccount:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = [objc_opt_class() _newPersistentAccount];
  }

  v14.receiver = self;
  v14.super_class = MFAccount;
  v5 = [(MFAccount *)&v14 init];
  v6 = v5;
  if (v5)
  {
    v5->_persistentAccountLock._os_unfair_lock_opaque = 0;
    v7 = [MEMORY[0x1E699B1F8] accountWithSystemAccount:v4];
    baseAccount = v6->_baseAccount;
    v6->_baseAccount = v7;

    [(MFAccount *)v6 setPersistentAccount:v4];
    v9 = objc_alloc(MEMORY[0x1E699B7F0]);
    v10 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v11 = [v9 initWithObject:v10];
    currentConnections = v6->_currentConnections;
    v6->_currentConnections = v11;

    v6->_allowsTrustPrompt = 1;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 uniqueID];
    v6 = [(MFAccount *)self uniqueID];
    v7 = [v5 isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)accountWithPersistentAccount:(id)a3
{
  v3 = a3;
  v4 = +[MFAccountStore sharedAccountStore];
  v5 = [v4 existingAccountWithPersistentAccount:v3];

  return v5;
}

- (void)setPersistentAccount:(id)a3
{
  v6 = a3;
  if (v6 && self->_unsavedAccountProperties)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"Account.m" lineNumber:262 description:@"Cannot set persistent account on account with unsaved account properties"];
  }

  persistentAccount = self->_persistentAccount;
  if (persistentAccount != v6)
  {
    if (persistentAccount)
    {
      v8 = MFUserAgent();

      if (v8)
      {
        objc_initWeak(&location, self);
        v9 = [objc_opt_class() releaseAllConnectionsScheduler];
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __34__MFAccount_setPersistentAccount___block_invoke;
        v13[3] = &unk_1E7AA20E0;
        objc_copyWeak(&v14, &location);
        [v9 performBlock:v13];

        objc_destroyWeak(&v14);
        objc_destroyWeak(&location);
      }
    }

    os_unfair_lock_lock(&self->_persistentAccountLock);
    v10 = self->_persistentAccount;
    objc_storeStrong(&self->_persistentAccount, a3);
    if (v6)
    {
      v11 = [(MFAccount *)self baseAccount];
      [v11 setSystemAccount:v6];
    }

    os_unfair_lock_unlock(&self->_persistentAccountLock);
    [(MFAccount *)self persistentAccountDidChange:v6 previousAccount:v10];
  }
}

void __34__MFAccount_setPersistentAccount___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained releaseAllConnections];
}

- (void)persistentAccountDidChange:(id)a3 previousAccount:(id)a4
{
  v4 = [(MFAccount *)self baseAccount:a3];
  [v4 clearCache];
}

- (void)savePersistentAccount
{
  v3 = +[MFAccountStore sharedAccountStore];
  [v3 savePersistentAccountWithAccount:self];
}

- (void)removePersistentAccount
{
  v3 = +[MFAccountStore sharedAccountStore];
  [v3 removePersistentAccountWithAccount:self];
}

- (ACAccount)parentAccount
{
  os_unfair_lock_lock(&self->_persistentAccountLock);
  v3 = [(MFAccount *)self baseAccount];
  v4 = [v3 systemAccount];
  v5 = [v4 parentAccount];

  os_unfair_lock_unlock(&self->_persistentAccountLock);

  return v5;
}

- (NSString)description
{
  [(MFAccount *)self mf_lock];
  cachedDescription = self->_cachedDescription;
  if (cachedDescription)
  {
    v4 = cachedDescription;
  }

  else
  {
    v5 = [(MFAccount *)self _objectForAccountInfoKey:@"DisplayName"];
    v6 = [v5 ef_sha256Digest];
    v7 = [v6 ef_hexString];

    v8 = [(MFAccount *)self _privacySafeDescription];
    v4 = [v8 stringByAppendingFormat:@" displayName=%@", v7];

    if (v5 && v7)
    {
      objc_storeStrong(&self->_cachedDescription, v4);
    }
  }

  [(MFAccount *)self mf_unlock];

  return v4;
}

- (id)accountPropertyForKey:(id)a3
{
  v4 = a3;
  v5 = [(MFAccount *)self persistentAccount];
  if (v5)
  {
    v6 = [objc_opt_class() _basicPropertyForKey:v4 persistentAccount:v5];
    if (v6)
    {
      goto LABEL_6;
    }

    v7 = [v5 accountPropertyForKey:v4];
  }

  else
  {
    v7 = [(NSMutableDictionary *)self->_unsavedAccountProperties objectForKey:v4];
  }

  v6 = v7;
LABEL_6:

  return v6;
}

- (void)setAccountProperty:(id)a3 forKey:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(MFAccount *)self persistentAccount];
  if (v7)
  {
    if (([objc_opt_class() _setBasicProperty:v11 forKey:v6 persistentAccount:v7] & 1) == 0)
    {
      [v7 setAccountProperty:v11 forKey:v6];
    }
  }

  else
  {
    unsavedAccountProperties = self->_unsavedAccountProperties;
    if (!unsavedAccountProperties)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v10 = self->_unsavedAccountProperties;
      self->_unsavedAccountProperties = v9;

      unsavedAccountProperties = self->_unsavedAccountProperties;
    }

    [(NSMutableDictionary *)unsavedAccountProperties setValue:v11 forKey:v6];
  }
}

- (void)removeAccountPropertyForKey:(id)a3
{
  v5 = a3;
  v4 = [(MFAccount *)self persistentAccount];
  if (v4)
  {
    if (([objc_opt_class() _setBasicProperty:0 forKey:v5 persistentAccount:v4] & 1) == 0)
    {
      [v4 setAccountProperty:0 forKey:v5];
    }
  }

  else
  {
    [(NSMutableDictionary *)self->_unsavedAccountProperties removeObjectForKey:v5];
  }
}

+ (id)_basicPropertyForKey:(id)a3 persistentAccount:(id)a4
{
  v5 = a3;
  v6 = a4;
  _MFLockGlobalLock();
  if (v6)
  {
    if ([v5 isEqualToString:*MEMORY[0x1E6959720]])
    {
      v7 = [v6 identifier];
LABEL_8:
      v8 = v7;
      goto LABEL_10;
    }

    if ([v5 isEqualToString:@"Username"])
    {
      v7 = [v6 username];
      goto LABEL_8;
    }

    if ([v5 isEqualToString:@"DisplayName"])
    {
      v7 = [v6 accountDescription];
      goto LABEL_8;
    }
  }

  v8 = 0;
LABEL_10:
  _MFUnlockGlobalLock();

  return v8;
}

+ (BOOL)_setBasicProperty:(id)a3 forKey:(id)a4 persistentAccount:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    _MFLockGlobalLock();
    if ([v8 isEqualToString:*MEMORY[0x1E6959720]])
    {
      [v9 setIdentifier:v7];
    }

    else if ([v8 isEqualToString:@"Username"])
    {
      [v9 setUsername:v7];
    }

    else
    {
      if (![v8 isEqualToString:@"DisplayName"])
      {
        v10 = 0;
        goto LABEL_10;
      }

      [v9 setAccountDescription:v7];
    }

    v10 = 1;
LABEL_10:
    _MFUnlockGlobalLock();
    goto LABEL_11;
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (void)_setAccountProperties:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v18 = a3;
  v17 = [v18 mutableCopy];
  v4 = [v17 objectForKey:@"Password"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    v6 = [v17 objectForKey:@"Password"];
    v19 = [v5 initWithData:v6 encoding:1];
  }

  else
  {
    v19 = v4;
  }

  [v17 removeObjectForKey:@"Password"];
  v7 = [v18 objectForKey:@"OAuth2Token"];
  v8 = [v18 objectForKey:@"OAuth2RefreshToken"];
  [(MFAccount *)self mf_lock];
  if (v7)
  {
    [(MFAccount *)self setOAuth2Token:v7 refreshToken:v8];
  }

  [(MFAccount *)self uniqueID];

  v9 = [objc_opt_class() excludedAccountPropertyKeys];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = v17;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        if (([v9 containsObject:v14] & 1) == 0)
        {
          v15 = [v10 objectForKey:v14];
          [(MFAccount *)self setAccountProperty:v15 forKey:v14];
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  if (v19)
  {
    [(MFAccount *)self setPassword:v19];
  }

  [(MFAccount *)self mf_unlock];

  v16 = *MEMORY[0x1E69E9840];
}

+ (id)accountPropertiesValueForKey:(id)a3 value:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if ([v5 isEqual:@"EmailAddresses"])
  {
    v7 = [MEMORY[0x1E69AD6F8] addressListFromEncodedString:v6];
  }

  return v7;
}

- (void)setValueInAccountProperties:(id)a3 forKey:(id)a4
{
  v7 = a3;
  v6 = a4;
  if ([v6 isEqual:@"Password"])
  {
    [(MFAccount *)self setPassword:v7];
  }

  else
  {
    [(MFAccount *)self setAccountProperty:v7 forKey:v6];
  }

  [(MFAccount *)self _queueAccountInfoDidChange];
}

- (void)removeValueInAccountPropertiesForKey:(id)a3
{
  v4 = a3;
  [(MFAccount *)self mf_lock];
  [(MFAccount *)self removeAccountPropertyForKey:v4];
  [(MFAccount *)self mf_unlock];
}

- (id)valueInAccountPropertiesForKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqual:@"SSLEnabled"])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[MFAccount usesSSL](self, "usesSSL")}];
    goto LABEL_10;
  }

  [(MFAccount *)self mf_lock];
  v5 = [(MFAccount *)self accountPropertyForKey:v4];
  [(MFAccount *)self mf_unlock];
  if ([v4 isEqual:@"Password"])
  {
    v6 = [(MFAccount *)self password];
    goto LABEL_5;
  }

  if ([v4 isEqual:@"EmailAddresses"])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = [v5 allKeys];
      v7 = [v9 componentsJoinedByString:{@", "}];

      v5 = v9;
      goto LABEL_6;
    }

    v6 = [v5 componentsJoinedByString:{@", "}];
LABEL_5:
    v7 = v6;
LABEL_6:

    v5 = v7;
  }

LABEL_10:

  return v5;
}

- (id)_objectForAccountInfoKey:(id)a3
{
  v4 = a3;
  [(MFAccount *)self mf_lock];
  v5 = [(MFAccount *)self accountPropertyForKey:v4];
  [(MFAccount *)self mf_unlock];

  return v5;
}

- (BOOL)_BOOLForAccountInfoKey:(id)a3 defaultValue:(BOOL)a4
{
  v6 = a3;
  [(MFAccount *)self mf_lock];
  v7 = [(MFAccount *)self accountPropertyForKey:v6];
  [(MFAccount *)self mf_unlock];
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      a4 = [v7 BOOLValue];
    }
  }

  return a4;
}

- (BOOL)isActive
{
  v2 = [(MFAccount *)self persistentAccount];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 isActive];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setDisplayName:(id)a3
{
  v6 = a3;
  v4 = [(MFAccount *)self displayName];
  if (v4 != v6)
  {
    v5 = v4 ? v4 : &stru_1F273A5E0;
    if (([(__CFString *)v6 isEqualToString:v5]& 1) == 0)
    {
      [(MFAccount *)self mf_lock];
      [(MFAccount *)self setAccountProperty:v6 forKey:@"DisplayName"];
      [(MFAccount *)self mf_unlock];
      [(MFAccount *)self _queueAccountInfoDidChange];
    }
  }
}

- (void)setUsername:(id)a3
{
  v6 = a3;
  v4 = [(MFAccount *)self username];
  if (v4 != v6)
  {
    v5 = v4 ? v4 : &stru_1F273A5E0;
    if (([(__CFString *)v6 isEqualToString:v5]& 1) == 0)
    {
      [(MFAccount *)self mf_lock];
      if (v6 && [(__CFString *)v6 length])
      {
        [(MFAccount *)self setAccountProperty:v6 forKey:@"Username"];
      }

      else
      {
        [(MFAccount *)self removeAccountPropertyForKey:@"Username"];
      }

      [(MFAccount *)self mf_unlock];
      [(MFAccount *)self releaseAllConnections];
      [(MFAccount *)self _queueAccountInfoDidChange];
    }
  }
}

- (void)setHostname:(id)a3
{
  v8 = a3;
  v4 = [(MFAccount *)self hostname];
  if ([(__CFString *)v8 length])
  {
    v5 = [(__CFString *)v8 mf_stringWithNoExtraSpaces];

    v6 = v5;
  }

  else
  {
    v6 = v8;
  }

  v9 = v6;
  if (v4 != v6)
  {
    v7 = v4 ? v4 : &stru_1F273A5E0;
    if (([(__CFString *)v6 isEqualToString:v7]& 1) == 0)
    {
      [(MFAccount *)self mf_lock];
      if (v9 && [(__CFString *)v9 length])
      {
        [(MFAccount *)self setAccountProperty:v9 forKey:@"Hostname"];
      }

      else
      {
        [(MFAccount *)self removeAccountPropertyForKey:@"Hostname"];
      }

      [(MFAccount *)self mf_unlock];
      [(MFAccount *)self releaseAllConnections];
      [(MFAccount *)self _queueAccountInfoDidChange];
    }
  }
}

+ (BOOL)accountIsManaged:(id)a3
{
  v3 = a3;
  v4 = [v3 accountPropertyForKey:*MEMORY[0x1E6959790]];
  if ([v4 length])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 accountPropertyForKey:@"mcProfileUUID"];
    if ([v6 length])
    {
      v5 = 1;
    }

    else
    {
      v7 = [v3 accountPropertyForKey:@"ManagedTag"];
      v5 = [v7 length] != 0;
    }
  }

  return v5;
}

+ (BOOL)accountIsPreventedFromSendingFromExternalProcesses:(id)a3
{
  v3 = [a3 accountPropertyForKey:@"MFRestrictSendingFromExternalProcesses"];
  v4 = [v3 BOOLValue];

  return v4;
}

+ (BOOL)accountIsRestrictedFromTransfersToOtherAccounts:(id)a3
{
  v3 = [a3 accountPropertyForKey:@"MFRestrictMessageTransfersToOtherAccounts"];
  v4 = [v3 BOOLValue];

  return v4;
}

+ (BOOL)accountRestrictsRecentsSyncing:(id)a3
{
  v3 = [a3 accountPropertyForKey:@"Prevent Recents Syncing"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)supportsMailDrop
{
  if (![(MFAccount *)self isManaged])
  {
    return 1;
  }

  return [(MFAccount *)self _BOOLForAccountInfoKey:@"MFAccountSupportsMailDrop" defaultValue:0];
}

- (id)_credential
{
  v2 = [(MFAccount *)self baseAccount];
  v3 = [v2 credential];

  return v3;
}

- (id)_credentialCreateIfNecessary:(BOOL)a3 error:(id *)a4
{
  v5 = a3;
  v27 = *MEMORY[0x1E69E9840];
  v7 = [(MFAccount *)self persistentAccount];
  v20 = 0;
  v8 = [v7 credentialWithError:&v20];
  v9 = v20;

  if (v9)
  {
    v10 = MFAccountsLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v17 = [v9 ef_publicDescription];
      v18 = v17;
      v19 = "NOT ";
      *buf = 138412802;
      v22 = self;
      if (v5)
      {
        v19 = "";
      }

      v23 = 2080;
      v24 = v19;
      v25 = 2114;
      v26 = v17;
      _os_log_error_impl(&dword_1B0389000, v10, OS_LOG_TYPE_ERROR, "Encountered error while fetching credential for %@ (will %screate new credential): %{public}@", buf, 0x20u);
    }
  }

  if (!v8 && v5)
  {
    v11 = MFAccountsLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(MFAccount *)self ef_publicDescription];
      *buf = 138543362;
      v22 = v12;
      _os_log_impl(&dword_1B0389000, v11, OS_LOG_TYPE_DEFAULT, "Creating new credential for account %{public}@", buf, 0xCu);
    }

    v8 = objc_alloc_init(MEMORY[0x1E6959A30]);
    [(MFAccount *)self mf_lock];
    v13 = [(MFAccount *)self persistentAccount];
    [v13 setCredential:v8];

    [(MFAccount *)self mf_unlock];
  }

  if (a4 && !v8)
  {
    v14 = v9;
    *a4 = v9;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)setPassword:(id)a3
{
  v6 = a3;
  v4 = [(MFAccount *)self baseAccount];
  [v4 setPassword:v6];

  if (v6 && [v6 length])
  {
    v5 = [(MFAccount *)self persistentAccount];
    [v5 setAuthenticated:1];
  }

  else
  {
    [(MFAccount *)self mf_lock];
    [(MFAccount *)self removeAccountPropertyForKey:@"Password"];
    [(MFAccount *)self mf_unlock];
  }

  [(MFAccount *)self _queueAccountInfoDidChange];
}

- (id)_password
{
  v2 = [(MFAccount *)self baseAccount];
  v3 = [v2 password];

  return v3;
}

- (id)_passwordWithError:(id *)a3
{
  v3 = [(MFAccount *)self _credentialCreateIfNecessary:0 error:a3];
  v4 = [v3 password];

  return v4;
}

- (NSString)password
{
  v3 = [(MFAccount *)self preferredAuthScheme];
  v4 = v3;
  if (v3 && ([v3 requiresPassword] & 1) != 0)
  {
    v5 = [(MFAccount *)self _password];
  }

  else
  {
    v5 = &stru_1F273A5E0;
  }

  return v5;
}

- (unint64_t)credentialAccessibility
{
  v6 = 0;
  v2 = [(MFAccount *)self _passwordWithError:&v6];
  v3 = v6;
  if ([v2 length])
  {
    v4 = 0;
  }

  else if ([v3 mf_isInaccessibleAccountCredentialError])
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (NSString)oauth2Token
{
  v2 = [(MFAccount *)self baseAccount];
  v3 = [v2 oauthToken];

  return v3;
}

- (void)setOAuth2Token:(id)a3 refreshToken:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(MFAccount *)self baseAccount];
  [v7 setOAuth2Token:v8 refreshToken:v6];
}

- (NSString)sourceApplicationBundleIdentifier
{
  v2 = self->_sourceApplicationBundleIdentifier;
  if (!v2)
  {
    v3 = MFUserAgent();
    if (v3 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v2 = [v3 sourceApplicationBundleIdentifier];
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

- (BOOL)_renewCredentialsWithOptions:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MFAccount *)self accountForRenewingCredentials];
  if (v8)
  {
    v9 = +[MFAccountStore sharedAccountStore];
    v10 = [v9 persistentStore];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __53__MFAccount__renewCredentialsWithOptions_completion___block_invoke;
    v12[3] = &unk_1E7AA2108;
    v13 = v8;
    v14 = v6;
    v15 = v7;
    [v10 renewCredentialsForAccount:v13 options:v14 completion:v12];
  }

  return v8 != 0;
}

void __53__MFAccount__renewCredentialsWithOptions_completion___block_invoke(uint64_t a1, __CFString *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = MFAccountsLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @", error:";
    v8 = &stru_1F273A5E0;
    *buf = 134218498;
    v17 = a2;
    if (!v5)
    {
      v7 = &stru_1F273A5E0;
    }

    v18 = 2112;
    if (v5)
    {
      v8 = v5;
    }

    v19 = v7;
    v20 = 2112;
    v21 = v8;
    _os_log_impl(&dword_1B0389000, v6, OS_LOG_TYPE_DEFAULT, "Credential renewal result: %ld%@%@", buf, 0x20u);
  }

  if (a2)
  {
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        a2 = v5;
      }

      else
      {
        v14 = *MEMORY[0x1E696AA08];
        v15 = v5;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
        a2 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1032 localizedDescription:0 title:0 userInfo:v11];
      }
    }

    else
    {
      v10 = [*(a1 + 40) objectForKeyedSubscript:*MEMORY[0x1E6959A88]];
      a2 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1032 localizedDescription:v10 title:0 userInfo:0];
    }

    v9 = 1;
  }

  else
  {
    [*(a1 + 32) refresh];
    v9 = 0;
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    (*(v12 + 16))(v12, v9, a2);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (BOOL)renewCredentialsWithOptions:(id)a3 completion:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    [MEMORY[0x1E695DF90] dictionaryWithDictionary:v6];
  }

  else
  {
    [MEMORY[0x1E695DF90] dictionary];
  }
  v8 = ;
  if (![(MFAccount *)self primaryiCloudAccount])
  {
    v9 = *MEMORY[0x1E6959AA8];
    v10 = [v8 objectForKey:*MEMORY[0x1E6959AA8]];

    if (!v10)
    {
      [v8 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v9];
    }

    v11 = *MEMORY[0x1E6959AA0];
    v12 = [v8 objectForKey:*MEMORY[0x1E6959AA0]];

    if (!v12)
    {
      [v8 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v11];
    }
  }

  v13 = MFAccountsLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(MFAccount *)self uniqueID];
    v15 = [v8 objectForKeyedSubscript:*MEMORY[0x1E6959AA8]];
    v16 = [v8 objectForKeyedSubscript:*MEMORY[0x1E6959AA0]];
    v20 = 138543874;
    v21 = v14;
    v22 = 2114;
    v23 = v15;
    v24 = 2114;
    v25 = v16;
    _os_log_impl(&dword_1B0389000, v13, OS_LOG_TYPE_DEFAULT, "Renewing credential for account: %{public}@ with force:%{public}@ avoidUI:%{public}@", &v20, 0x20u);
  }

  v17 = [(MFAccount *)self _renewCredentialsWithOptions:v8 completion:v7];
  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

void __74__MFAccount_promptUserForWebLoginWithURL_shouldConfirm_completionHandler___block_invoke(uint64_t a1, int a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = MFAccountsLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"failure";
    if (a2)
    {
      v7 = @"success";
    }

    *buf = 138412802;
    v16 = v7;
    if (v5)
    {
      v8 = @", error:";
    }

    else
    {
      v8 = &stru_1F273A5E0;
    }

    v17 = 2112;
    v18 = v8;
    if (v5)
    {
      v9 = v5;
    }

    else
    {
      v9 = &stru_1F273A5E0;
    }

    v19 = 2112;
    v20 = v9;
    _os_log_impl(&dword_1B0389000, v6, OS_LOG_TYPE_DEFAULT, "Web login result: %@%@%@", buf, 0x20u);
  }

  if (a2)
  {
    v10 = 0;
  }

  else if (v5)
  {
    v13 = *MEMORY[0x1E696AA08];
    v14 = v5;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v10 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1032 localizedDescription:0 title:0 userInfo:v11];
  }

  else
  {
    v10 = 0;
  }

  (*(*(a1 + 32) + 16))();

  v12 = *MEMORY[0x1E69E9840];
}

- (ACAccount)systemAccount
{
  os_unfair_lock_lock(&self->_persistentAccountLock);
  v3 = [(MFAccount *)self baseAccount];
  v4 = [v3 systemAccount];

  os_unfair_lock_unlock(&self->_persistentAccountLock);

  return v4;
}

- (BOOL)canAuthenticateWithCurrentCredentials
{
  v2 = [(MFAccount *)self authenticatedConnection];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)hasPasswordCredential
{
  v2 = [(MFAccount *)self preferredAuthScheme];
  v3 = [v2 name];
  if ([v3 isEqualToString:*MEMORY[0x1E699B1E8]])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:&stru_1F273A5E0];
  }

  return v4;
}

- (unsigned)portNumber
{
  v3 = [(MFAccount *)self _objectForAccountInfoKey:@"PortNumber"];
  v4 = [v3 intValue];

  if (v4)
  {
    return v4;
  }

  if ([(MFAccount *)self usesSSL])
  {
    v4 = [(MFAccount *)self defaultSecurePortNumber];
    if (v4)
    {
      return v4;
    }
  }

  return [(MFAccount *)self defaultPortNumber];
}

- (unsigned)defaultPortNumber
{
  v2 = objc_opt_class();

  return [v2 defaultPortNumber];
}

- (unsigned)defaultSecurePortNumber
{
  v2 = objc_opt_class();

  return [v2 defaultSecurePortNumber];
}

- (void)setPortNumber:(unsigned int)a3
{
  if ([(MFAccount *)self portNumber]== a3)
  {
    return;
  }

  if (a3)
  {
    if ([(MFAccount *)self usesSSL])
    {
      v5 = [(MFAccount *)self defaultSecurePortNumber];
    }

    else
    {
      v5 = [(MFAccount *)self defaultPortNumber];
    }

    v6 = v5;
    [(MFAccount *)self mf_lock];
    if (v6 != a3)
    {
      v7 = EFStringWithInt();
      [(MFAccount *)self setAccountProperty:v7 forKey:@"PortNumber"];

      goto LABEL_10;
    }
  }

  else
  {
    [(MFAccount *)self mf_lock];
  }

  [(MFAccount *)self removeAccountPropertyForKey:@"PortNumber"];
LABEL_10:
  [(MFAccount *)self mf_unlock];
  [(MFAccount *)self releaseAllConnections];

  [(MFAccount *)self _queueAccountInfoDidChange];
}

- (BOOL)usesSSL
{
  v3 = [objc_opt_class() usesSSL];

  return [(MFAccount *)self _BOOLForAccountInfoKey:@"SSLEnabled" defaultValue:v3];
}

- (void)setUsesSSL:(BOOL)a3
{
  v3 = a3;
  if ([(MFAccount *)self usesSSL]!= a3)
  {
    [(MFAccount *)self mf_lock];
    if (v3)
    {
      v5 = [MEMORY[0x1E696AD98] numberWithBool:1];
      [(MFAccount *)self setAccountProperty:v5 forKey:@"SSLEnabled"];
    }

    else
    {
      [(MFAccount *)self removeAccountPropertyForKey:@"SSLEnabled"];
    }

    [(MFAccount *)self mf_unlock];
    [(MFAccount *)self releaseAllConnections];

    [(MFAccount *)self _queueAccountInfoDidChange];
  }
}

+ (BOOL)isSSLEditable
{
  v2 = [a1 predefinedValueForKey:@"SSLEnabledIsEditable"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setDomain:(id)a3
{
  v6 = a3;
  v4 = [(MFAccount *)self domain];
  if (v4 != v6)
  {
    v5 = v4 ? v4 : &stru_1F273A5E0;
    if (([(__CFString *)v6 isEqualToString:v5]& 1) == 0)
    {
      [(MFAccount *)self mf_lock];
      if (v6 && [(__CFString *)v6 length])
      {
        [(MFAccount *)self setAccountProperty:v6 forKey:@"Domain"];
      }

      else
      {
        [(MFAccount *)self removeAccountPropertyForKey:@"Domain"];
      }

      [(MFAccount *)self mf_unlock];
      [(MFAccount *)self releaseAllConnections];
      [(MFAccount *)self _queueAccountInfoDidChange];
    }
  }
}

- (id)clientCertificates
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = [(MFAccount *)self _objectForAccountInfoKey:@"SSLClientIdentity"];
  if (v3)
  {
    v4 = [MFMessageKeychainManager copyIdentityForPersistentReference:v3 error:0];
    if (v4)
    {
LABEL_3:
      v9[0] = v4;
      v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
      CFRelease(v4);
      goto LABEL_6;
    }
  }

  else
  {
    v6 = [(MFAccount *)self hostname];
    v4 = [MFMessageKeychainManager copyClientSSLIdentityForHostName:v6 error:0];

    if (v4)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
LABEL_6:

  v7 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)setClientCertificates:(id)a3
{
  v7 = a3;
  if ([v7 count])
  {
    v4 = [v7 objectAtIndex:0];
    v5 = CFGetTypeID(v4);
    if (v5 == SecIdentityGetTypeID())
    {
      v6 = [MFMessageKeychainManager persistentReferenceForIdentity:v4 error:0];
      [(MFAccount *)self mf_lock];
      if (v6)
      {
        [(MFAccount *)self setAccountProperty:v6 forKey:@"SSLClientIdentity"];
      }

      else
      {
        [(MFAccount *)self removeAccountPropertyForKey:@"SSLClientIdentity"];
      }

      [(MFAccount *)self mf_unlock];
    }
  }
}

- (ECAuthenticationScheme)preferredAuthScheme
{
  v3 = [(MFAccount *)self _objectForAccountInfoKey:@"AuthenticationScheme"];
  if (![v3 length] && -[MFAccount requiresAuthentication](self, "requiresAuthentication"))
  {
    v4 = *MEMORY[0x1E699B1E8];

    v3 = v4;
  }

  v5 = [MEMORY[0x1E699B208] schemeWithName:v3];

  return v5;
}

- (void)setPreferredAuthScheme:(id)a3
{
  v7 = a3;
  v4 = [(MFAccount *)self preferredAuthScheme];

  v5 = v7;
  if (v4 != v7)
  {
    v6 = [v7 name];
    [(MFAccount *)self mf_lock];
    if (v6)
    {
      [(MFAccount *)self setAccountProperty:v6 forKey:@"AuthenticationScheme"];
    }

    else
    {
      [(MFAccount *)self removeAccountPropertyForKey:@"AuthenticationScheme"];
    }

    [(MFAccount *)self mf_unlock];

    v5 = v7;
  }
}

- (id)_newConnection
{
  v3 = objc_alloc_init([(MFAccount *)self connectionClass]);
  if (v3)
  {
    v4 = [(MFAccount *)self currentConnections];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __27__MFAccount__newConnection__block_invoke;
    v6[3] = &unk_1E7AA2158;
    v7 = v3;
    [v4 performWhileLocked:v6];
  }

  return v3;
}

- (Class)connectionClass
{
  v2 = [(MFAccount *)self preferredAuthScheme];
  v3 = [v2 connectionClassForAccountClass:objc_opt_class()];

  return v3;
}

- (id)authenticatedConnection
{
  v3 = [(MFAccount *)self _newConnection];
  if (v3 && ![(MFAccount *)self _connectAndAuthenticate:v3])
  {

    v3 = 0;
  }

  return v3;
}

- (BOOL)connectionsAreConstrained
{
  v24 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v3 = [(MFAccount *)self currentConnections];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __38__MFAccount_connectionsAreConstrained__block_invoke;
  v13[3] = &unk_1E7AA2180;
  v13[4] = &v14;
  [v3 performWhileLocked:v13];

  v4 = v15[5];
  if (!v4)
  {
    v9 = [MEMORY[0x1E699B828] external];
    v10 = [v9 isConstrained];

    if (v10)
    {
      goto LABEL_3;
    }

LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  if (![v4 isConstrained])
  {
    goto LABEL_7;
  }

LABEL_3:
  v5 = MFAccountsLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(MFAccount *)self ef_publicDescription];
    v7 = v15[5];
    *buf = 138543618;
    v21 = v6;
    v22 = 2112;
    v23 = v7;
    _os_log_impl(&dword_1B0389000, v5, OS_LOG_TYPE_DEFAULT, "Connections constrained for account %{public}@ with connection %@", buf, 0x16u);
  }

  v8 = 1;
LABEL_8:
  _Block_object_dispose(&v14, 8);

  v11 = *MEMORY[0x1E69E9840];
  return v8;
}

void __38__MFAccount_connectionsAreConstrained__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 isValid])
        {
          objc_storeStrong((*(*(a1 + 32) + 8) + 40), v7);
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x1E69E9840];
}

- (id)defaultConnectionSettings
{
  v3 = objc_alloc_init(MFConnectionSettings);
  [(MFConnectionSettings *)v3 setUsesSSL:[(MFAccount *)self usesSSL]];
  v4 = [(MFAccount *)self hostname];
  [(MFConnectionSettings *)v3 setHostname:v4];

  [(MFConnectionSettings *)v3 setPortNumber:[(MFAccount *)self portNumber]];
  v5 = [(MFAccount *)self certUIService];
  [(MFConnectionSettings *)v3 setCertUIService:v5];

  if ([(MFConnectionSettings *)v3 usesSSL])
  {
    v6 = [(MFAccount *)self clientCertificates];
    [(MFConnectionSettings *)v3 setClientCertificates:v6];
  }

  if ([(MFConnectionSettings *)v3 usesSSL])
  {
    v7 = [(MFAccount *)self _shouldTryDirectSSLConnectionOnPort:[(MFConnectionSettings *)v3 portNumber]];
  }

  else
  {
    v7 = 0;
  }

  [(MFConnectionSettings *)v3 setTryDirectSSL:v7];
  if ([(MFConnectionSettings *)v3 tryDirectSSL])
  {
    [(MFAccount *)self secureServiceName];
  }

  else
  {
    [(MFAccount *)self serviceName];
  }
  v8 = ;
  [(MFConnectionSettings *)v3 setServiceName:v8];

  [(MFConnectionSettings *)v3 setConnectionServiceType:[(MFAccount *)self connectionServiceType]];
  [(MFConnectionSettings *)v3 setAllowsTrustPrompt:[(MFAccount *)self allowsTrustPrompt]];
  v9 = [(MFAccount *)self uniqueID];
  [(MFConnectionSettings *)v3 setAccountIdentifier:v9];

  v10 = [(MFAccount *)self networkAccountIdentifier];
  [(MFConnectionSettings *)v3 setNetworkAccountIdentifier:v10];

  v11 = [(MFAccount *)self sourceApplicationBundleIdentifier];
  if ([v11 length])
  {
    [(MFConnectionSettings *)v3 setSourceApplicationBundleIdentifier:v11];
  }

  [(MFConnectionSettings *)v3 setIsNonAppInitiated:1];

  return v3;
}

- (void)applySettingsAsDefault:(id)a3
{
  v4 = a3;
  -[MFAccount setUsesSSL:](self, "setUsesSSL:", [v4 usesSSL]);
  -[MFAccount setPortNumber:](self, "setPortNumber:", [v4 portNumber]);
  -[MFAccount setTryDirectSSL:](self, "setTryDirectSSL:", [v4 tryDirectSSL]);
}

- (id)insecureConnectionSettings
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [(MFAccount *)self defaultConnectionSettings];
  [v2 setUsesSSL:0];
  [v2 setTryDirectSSL:0];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)secureConnectionSettings
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = [(MFAccount *)self defaultConnectionSettings];
  [v3 setUsesSSL:1];
  [v3 setTryDirectSSL:1];
  [v3 setPortNumber:{-[MFAccount defaultSecurePortNumber](self, "defaultSecurePortNumber")}];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (BOOL)_shouldTryDirectSSLConnectionOnPort:(unsigned int)a3
{
  v4 = [(MFAccount *)self defaultSecurePortNumber]== a3;
  v5 = [(MFAccount *)self _objectForAccountInfoKey:@"SSLIsDirect"];
  v6 = v5;
  if (v5)
  {
    v4 = [v5 BOOLValue];
  }

  return v4;
}

- (id)customDescriptionForError:(id)a3 authScheme:(id)a4 defaultDescription:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = v8;
  if ([(MFAccount *)self credentialAccessibility]== 1)
  {
    v9 = v8;
    if ([v7 code] == 1032)
    {
      v10 = MEMORY[0x1E696AEC0];
      v11 = MFLookupLocalizedString(@"NO_PASSWORD_PROVIDED_FOR_USER_FORMAT", @"No password provided for user “%@” on server “%@”.\n\nPlease go to Mail Account Settings and enter a password.", @"Message");
      v12 = [(MFAccount *)self username];
      v13 = [(MFAccount *)self hostname];
      v9 = [v10 stringWithFormat:v11, v12, v13];
    }
  }

  return v9;
}

- (void)reportAuthenticationError:(id)a3 authScheme:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = +[MFActivityMonitor currentMonitor];
  v8 = [v10 localizedDescription];
  v9 = [(MFAccount *)self customDescriptionForError:v10 authScheme:v6 defaultDescription:v8];

  [v10 setLocalizedDescription:v9];
  [v7 setError:v10];
}

- (BOOL)_connectAndAuthenticate:(id)a3
{
  v4 = a3;
  v5 = [(MFAccount *)self preferredAuthScheme];
  v6 = +[MFActivityMonitor currentMonitor];
  if (([v6 shouldCancel] & 1) != 0 || !objc_msgSend(v4, "connectUsingFallbacksForAccount:", self))
  {
    goto LABEL_6;
  }

  if (([v4 authenticateUsingAccount:self] & 1) == 0)
  {
    [v4 disconnect];
    v8 = [v6 error];
    [(MFAccount *)self reportAuthenticationError:v8 authScheme:v5];

LABEL_6:
    v7 = 0;
    goto LABEL_7;
  }

  v7 = 1;
LABEL_7:

  return v7;
}

- (id)nameForMailboxUid:(id)a3
{
  v3 = [a3 name];

  return v3;
}

- (id)missingPasswordErrorWithTitle:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E696AEC0];
  v6 = MFLookupLocalizedString(@"NO_PASSWORD_PROVIDED_FOR_ACCOUNT_FORMAT", @"No password provided for “%@”.\n\nPlease go to Mail Account Settings and enter a password.", @"Message");
  v7 = [(MFAccount *)self displayName];
  v8 = [v5 stringWithFormat:v6, v7];

  v9 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1055 localizedDescription:v8 title:v4 userInfo:0];

  return v9;
}

- (id)wrongPasswordOrUsernameErrorWithTitle:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E696AEC0];
  v6 = MFLookupLocalizedString(@"MF_WRONG_PASSWORD_OR_USERNAME_PROVIDED_FOR_ACCOUNT_FORMAT", @"Wrong username and/or password provided for “%@”.\n\nPlease go to Mail Account Settings and enter the correct username and password.", @"Message");
  v7 = [(MFAccount *)self displayName];
  v8 = [v5 stringWithFormat:v6, v7];

  v9 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1056 localizedDescription:v8 title:v4 userInfo:0];

  return v9;
}

- (id)inaccessiblePasswordErrorWithTitle:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E696AEC0];
  v6 = MFLookupLocalizedString(@"PASSWORD_INACCESSIBLE_FOR_ACCOUNT_FORMAT", @"The password for “%@” cannot be used at this time.", @"Message");
  v7 = [(MFAccount *)self displayName];
  v8 = [v5 stringWithFormat:v6, v7];

  v9 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1057 localizedDescription:v8 title:v4 userInfo:0];

  return v9;
}

- (id)loginDisabledErrorWithTitle:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E696AEC0];
  v6 = MFLookupLocalizedString(@"LOGIN_DISABLED_FOR_ACCOUNT_FORMAT", @"Logins are disabled for “%@”.", @"Message");
  v7 = [(MFAccount *)self displayName];
  v8 = [v5 stringWithFormat:v6, v7];

  v9 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1060 localizedDescription:v8 title:v4 userInfo:0];

  return v9;
}

+ (id)supportedDataclasses
{
  v3 = +[MFAccountStore sharedAccountStore];
  v4 = [a1 accountTypeIdentifier];
  v5 = [v3 supportedDataclassesWithAccountTypeIdentifier:v4];

  return v5;
}

- (id)enabledDataclasses
{
  v2 = [(MFAccount *)self baseAccount];
  v3 = [v2 enabledDataclasses];

  return v3;
}

- (BOOL)isEnabledForDataclass:(id)a3
{
  v4 = a3;
  v5 = [(MFAccount *)self baseAccount];
  v6 = [v5 isEnabledForDataclass:v4];

  return v6;
}

- (void)setMissingPasswordError
{
  v3 = [(MFAccount *)self missingPasswordErrorWithTitle:0];
  v2 = +[MFActivityMonitor currentMonitor];
  [v2 setError:v3];
}

- (void)setInvalidCredentialsError
{
  v3 = [(MFAccount *)self wrongPasswordOrUsernameErrorWithTitle:0];
  v2 = +[MFActivityMonitor currentMonitor];
  [v2 setError:v3];
}

@end