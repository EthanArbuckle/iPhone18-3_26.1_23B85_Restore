@interface MFAccount
+ (BOOL)_setBasicProperty:(id)a3 forKey:(id)a4 persistentAccount:(id)a5;
+ (BOOL)isSSLEditable;
+ (id)_basicPropertyForKey:(id)a3 persistentAccount:(id)a4;
+ (id)_newPersistentAccount;
+ (id)accountPropertiesValueForKey:(id)a3 value:(id)a4;
+ (id)accountWithPersistentAccount:(id)a3;
+ (id)accountWithProperties:(id)a3;
+ (id)authSchemesForAccountClass;
+ (id)newAccountWithDictionary:(id)a3;
+ (id)supportedDataclasses;
- (ACAccount)parentAccount;
- (ACAccount)persistentAccount;
- (BOOL)_BOOLForAccountInfoKey:(id)a3 defaultValue:(BOOL)a4;
- (BOOL)_connectAndAuthenticate:(id)a3;
- (BOOL)_renewCredentialsWithOptions:(id)a3 completion:(id)a4;
- (BOOL)_shouldTryDirectSSLConnectionOnPort:(unsigned int)a3;
- (BOOL)isActive;
- (BOOL)isEnabledForDataclass:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)promptUserForPasswordWithTitle:(id)a3 message:(id)a4 completionHandler:(id)a5;
- (BOOL)renewCredentialsWithOptions:(id)a3 completion:(id)a4;
- (BOOL)setCredentialItem:(id)a3 forKey:(id)a4 error:(id *)a5;
- (BOOL)setOAuth2Token:(id)a3 refreshToken:(id)a4 error:(id *)a5;
- (BOOL)shouldFetchACEDBInfoForError:(id)a3;
- (BOOL)supportsMailDrop;
- (BOOL)usesSSL;
- (Class)connectionClass;
- (MFAccount)initWithPersistentAccount:(id)a3;
- (MFAccount)initWithProperties:(id)a3;
- (NSDictionary)properties;
- (NSString)displayName;
- (NSString)ef_publicDescription;
- (NSString)parentAccountIdentifier;
- (NSString)uniqueId;
- (id)_credentialCreateIfNecessary:(BOOL)a3 error:(id *)a4;
- (id)_newConnection;
- (id)_objectForAccountInfoKey:(id)a3;
- (id)_passwordWithError:(id *)a3;
- (id)_privacySafeDescription;
- (id)accountPropertyForKey:(id)a3;
- (id)authenticatedConnection;
- (id)clientCertificates;
- (id)credentialItemForKey:(id)a3 error:(id *)a4;
- (id)customDescriptionForError:(id)a3 authScheme:(id)a4 defaultDescription:(id)a5;
- (id)defaultConnectionSettings;
- (id)enabledDataclasses;
- (id)inaccessiblePasswordErrorWithTitle:(id)a3;
- (id)insecureConnectionSettings;
- (id)loginDisabledErrorWithTitle:(id)a3;
- (id)missingPasswordErrorWithTitle:(id)a3;
- (id)oauth2Token;
- (id)password;
- (id)preferredAuthScheme;
- (id)secureConnectionSettings;
- (id)valueInAccountPropertiesForKey:(id)a3;
- (unint64_t)credentialAccessibility;
- (unint64_t)hash;
- (unsigned)defaultPortNumber;
- (unsigned)defaultSecurePortNumber;
- (unsigned)portNumber;
- (void)_queueAccountInfoDidChange;
- (void)_setAccountProperties:(id)a3;
- (void)accountInfoDidChange;
- (void)applySettingsAsDefault:(id)a3;
- (void)dealloc;
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
- (void)setPassword:(id)a3;
- (void)setPersistentAccount:(id)a3;
- (void)setPortNumber:(unsigned int)a3;
- (void)setPreferredAuthScheme:(id)a3;
- (void)setUsername:(id)a3;
- (void)setUsesSSL:(BOOL)a3;
- (void)setValueInAccountProperties:(id)a3 forKey:(id)a4;
@end

@implementation MFAccount

- (BOOL)shouldFetchACEDBInfoForError:(id)a3
{
  v4 = [a3 code];
  v5 = [a3 domain];
  v6 = [v5 isEqualToString:*MEMORY[0x277CCA5B8]];
  v7 = 0x4601u >> (v4 - 51);
  if ((v4 - 51) > 0xE)
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

  if ([objc_msgSend(a3 "domain")])
  {
    v8 = v4 == 1034;
  }

  v9 = [a3 domain];
  v10 = [v9 isEqualToString:*MEMORY[0x277CBACE8]];
  v11 = (v4 - 1) < 2;
  if (!v10)
  {
    v11 = v8;
  }

  if (!v11)
  {
    return 0;
  }

  v12 = objc_opt_class();

  return [v12 shouldHealAccounts];
}

+ (id)newAccountWithDictionary:(id)a3
{
  v3 = [a1 accountWithProperties:a3];

  return v3;
}

+ (id)accountWithProperties:(id)a3
{
  v3 = [objc_alloc(objc_opt_class()) initWithProperties:a3];

  return v3;
}

+ (id)authSchemesForAccountClass
{
  if (authSchemesForAccountClass_onceToken != -1)
  {
    +[MFAccount authSchemesForAccountClass];
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39__MFAccount_authSchemesForAccountClass__block_invoke_2;
  v4[3] = &unk_2798B6420;
  v4[4] = a1;
  return [authSchemesForAccountClass_knownSchemes ef_filter:v4];
}

id __39__MFAccount_authSchemesForAccountClass__block_invoke()
{
  result = +[MFAuthScheme knownSchemes];
  authSchemesForAccountClass_knownSchemes = result;
  return result;
}

- (MFAccount)initWithProperties:(id)a3
{
  v4 = [(MFAccount *)self initWithPersistentAccount:0];
  if (v4)
  {
    v5 = [a3 mutableCopy];
    if (!v5)
    {
      v5 = objc_opt_new();
    }

    [v5 setObject:objc_msgSend(objc_opt_class() forKey:{"_accountClass"), @"Class"}];
    [(MFAccount *)v4 _setAccountProperties:v5];
  }

  return v4;
}

- (MFAccount)initWithPersistentAccount:(id)a3
{
  v3 = a3;
  if (!a3)
  {
    v3 = [objc_opt_class() _newPersistentAccount];
  }

  v8.receiver = self;
  v8.super_class = MFAccount;
  v5 = [(MFAccount *)&v8 init];
  v6 = v5;
  if (v5)
  {
    v5->_persistentAccountLock._os_unfair_lock_opaque = 0;
    [(MFAccount *)v5 setPersistentAccount:v3];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFAccount;
  [(MFAccount *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [a3 uniqueId];
  v6 = [(MFAccount *)self uniqueId];

  return [v5 isEqualToString:v6];
}

- (unint64_t)hash
{
  v2 = [(MFAccount *)self uniqueId];

  return [(NSString *)v2 hash];
}

+ (id)accountWithPersistentAccount:(id)a3
{
  v4 = +[MFAccountStore sharedAccountStore];

  return [v4 existingAccountWithPersistentAccount:a3];
}

+ (id)_newPersistentAccount
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [a1 accountTypeIdentifier];
  v3 = +[MFAccountStore sharedAccountStore];
  v4 = [v3 newPersistentAccountWithAccountTypeIdentifier:v2];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v3 supportedDataclassesWithAccountTypeIdentifier:{v2, 0}];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    v9 = *MEMORY[0x277CB9178];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        [v4 setProvisioned:1 forDataclass:v11];
        [v4 setEnabled:objc_msgSend(v11 forDataclass:{"isEqualToString:", v9) ^ 1, v11}];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  [v4 setAuthenticated:1];
  v12 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)setPersistentAccount:(id)a3
{
  if (a3 && self->_unsavedAccountProperties)
  {
    [(MFAccount *)a2 setPersistentAccount:?];
  }

  if (self->_persistentAccount != a3)
  {
    [(MFAccount *)self releaseAllConnections];
    os_unfair_lock_lock(&self->_persistentAccountLock);
    v5 = self->_persistentAccount;
    self->_persistentAccount = a3;
    os_unfair_lock_unlock(&self->_persistentAccountLock);
    [(MFAccount *)self persistentAccountDidChange:a3 previousAccount:v5];
  }
}

- (ACAccount)persistentAccount
{
  os_unfair_lock_lock(&self->_persistentAccountLock);
  v3 = self->_persistentAccount;
  os_unfair_lock_unlock(&self->_persistentAccountLock);

  return v3;
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
  v2 = [(MFAccount *)self persistentAccount];

  return [(ACAccount *)v2 parentAccount];
}

- (NSString)parentAccountIdentifier
{
  v2 = [(MFAccount *)self persistentAccount];

  return [(ACAccount *)v2 parentAccountIdentifier];
}

- (id)_privacySafeDescription
{
  v3 = [(MFAccount *)self _objectForAccountInfoKey:*MEMORY[0x277CB8A60]];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = [(MFAccount *)self isActive];
  v7 = "not ";
  if (v6)
  {
    v7 = "";
  }

  return [v4 stringWithFormat:@"<%@ %p> ID=%@ active=%sactive", v5, self, v3, v7];
}

- (NSString)ef_publicDescription
{
  if ([objc_msgSend(MEMORY[0x277D07148] "currentDevice")])
  {

    return [(MFAccount *)self description];
  }

  else
  {

    return [(MFAccount *)self _privacySafeDescription];
  }
}

- (NSDictionary)properties
{
  v3 = [(MFAccount *)self persistentAccount];
  if (!v3)
  {
    return &self->_unsavedAccountProperties->super;
  }

  return [(ACAccount *)v3 accountProperties];
}

- (id)accountPropertyForKey:(id)a3
{
  v5 = [(MFAccount *)self persistentAccount];
  if (v5)
  {
    v6 = v5;
    result = [objc_opt_class() _basicPropertyForKey:a3 persistentAccount:v5];
    if (!result)
    {

      return [(ACAccount *)v6 accountPropertyForKey:a3];
    }
  }

  else
  {
    unsavedAccountProperties = self->_unsavedAccountProperties;

    return [(NSMutableDictionary *)unsavedAccountProperties objectForKey:a3];
  }

  return result;
}

- (void)setAccountProperty:(id)a3 forKey:(id)a4
{
  v7 = [(MFAccount *)self persistentAccount];
  if (v7)
  {
    v8 = v7;
    if (([objc_opt_class() _setBasicProperty:a3 forKey:a4 persistentAccount:v7] & 1) == 0)
    {

      [(ACAccount *)v8 setAccountProperty:a3 forKey:a4];
    }
  }

  else
  {
    unsavedAccountProperties = self->_unsavedAccountProperties;
    if (!unsavedAccountProperties)
    {
      unsavedAccountProperties = objc_alloc_init(MEMORY[0x277CBEB38]);
      self->_unsavedAccountProperties = unsavedAccountProperties;
    }

    [(NSMutableDictionary *)unsavedAccountProperties setValue:a3 forKey:a4];
  }
}

- (void)removeAccountPropertyForKey:(id)a3
{
  v5 = [(MFAccount *)self persistentAccount];
  if (v5)
  {
    v6 = v5;
    if (([objc_opt_class() _setBasicProperty:0 forKey:a3 persistentAccount:v5] & 1) == 0)
    {

      [(ACAccount *)v6 setAccountProperty:0 forKey:a3];
    }
  }

  else
  {
    unsavedAccountProperties = self->_unsavedAccountProperties;

    [(NSMutableDictionary *)unsavedAccountProperties removeObjectForKey:a3];
  }
}

+ (id)_basicPropertyForKey:(id)a3 persistentAccount:(id)a4
{
  if (!a4)
  {
    return 0;
  }

  if ([a3 isEqualToString:*MEMORY[0x277CB8A60]])
  {

    return [a4 identifier];
  }

  if ([a3 isEqualToString:@"Username"])
  {

    return [a4 username];
  }

  if (![a3 isEqualToString:@"DisplayName"])
  {
    return 0;
  }

  return [a4 accountDescription];
}

+ (BOOL)_setBasicProperty:(id)a3 forKey:(id)a4 persistentAccount:(id)a5
{
  if (a5)
  {
    if ([a4 isEqualToString:*MEMORY[0x277CB8A60]])
    {
      [a5 setIdentifier:a3];
LABEL_9:
      LOBYTE(v8) = 1;
      return v8;
    }

    if ([a4 isEqualToString:@"Username"])
    {
      [a5 setUsername:a3];
      goto LABEL_9;
    }

    v8 = [a4 isEqualToString:@"DisplayName"];
    if (v8)
    {
      [a5 setAccountDescription:a3];
      goto LABEL_9;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (void)_queueAccountInfoDidChange
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_accountInfoDidChange object:0];

  [(MFAccount *)self performSelector:sel_accountInfoDidChange withObject:0 afterDelay:0.0];
}

- (void)_setAccountProperties:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  _MFLockGlobalLock();
  v5 = [a3 mutableCopy];
  v6 = [v5 objectForKey:@"Password"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:objc_msgSend(v5 encoding:{"objectForKey:", @"Password", 1}];
  }

  else
  {
    v7 = v6;
  }

  [v5 removeObjectForKey:@"Password"];
  _MFUnlockGlobalLock();
  v8 = [a3 objectForKey:@"OAuth2Token"];
  v9 = [a3 objectForKey:@"OAuth2RefreshToken"];
  if (v8)
  {
    [(MFAccount *)self setOAuth2Token:v8 refreshToken:v9 error:0];
  }

  [(MFAccount *)self uniqueId];
  v10 = [objc_opt_class() excludedAccountPropertyKeys];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v5);
        }

        v15 = *(*(&v17 + 1) + 8 * i);
        if (([v10 containsObject:v15] & 1) == 0)
        {
          -[MFAccount setAccountProperty:forKey:](self, "setAccountProperty:forKey:", [v5 objectForKey:v15], v15);
        }
      }

      v12 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  if (v6)
  {
    [(MFAccount *)self setPassword:v6];
  }

  v16 = *MEMORY[0x277D85DE8];
}

+ (id)accountPropertiesValueForKey:(id)a3 value:(id)a4
{
  if (![a3 isEqual:@"EmailAddresses"])
  {
    return a4;
  }

  v5 = MEMORY[0x277D24F40];

  return [v5 addressListFromEncodedString:a4];
}

- (void)setValueInAccountProperties:(id)a3 forKey:(id)a4
{
  if ([a4 isEqual:@"Password"])
  {
    [(MFAccount *)self setPassword:a3];
  }

  else
  {
    [(MFAccount *)self setAccountProperty:a3 forKey:a4];
  }

  [(MFAccount *)self _queueAccountInfoDidChange];
}

- (void)removeValueInAccountPropertiesForKey:(id)a3
{
  _MFLockGlobalLock();
  [(MFAccount *)self removeAccountPropertyForKey:a3];

  _MFUnlockGlobalLock();
}

- (id)valueInAccountPropertiesForKey:(id)a3
{
  if ([a3 isEqual:@"SSLEnabled"])
  {
    v5 = MEMORY[0x277CCABB0];
    v6 = [(MFAccount *)self usesSSL];

    return [v5 numberWithBool:v6];
  }

  else
  {
    _MFLockGlobalLock();
    v8 = [(MFAccount *)self accountPropertyForKey:a3];
    _MFUnlockGlobalLock();
    if ([a3 isEqual:@"Password"])
    {

      return [(MFAccount *)self password];
    }

    else if ([a3 isEqual:@"EmailAddresses"])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = [v8 allKeys];
      }

      return [v9 componentsJoinedByString:{@", "}];
    }

    else
    {
      return v8;
    }
  }
}

- (id)_objectForAccountInfoKey:(id)a3
{
  _MFLockGlobalLock();
  v5 = [(MFAccount *)self accountPropertyForKey:a3];
  _MFUnlockGlobalLock();

  return v5;
}

- (BOOL)_BOOLForAccountInfoKey:(id)a3 defaultValue:(BOOL)a4
{
  _MFLockGlobalLock();
  v7 = [(MFAccount *)self accountPropertyForKey:a3];
  _MFUnlockGlobalLock();
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
  if (!v2)
  {
    return 1;
  }

  return [(ACAccount *)v2 isActive];
}

- (NSString)displayName
{
  v3 = [(MFAccount *)self _objectForAccountInfoKey:@"DisplayName"];
  if (!v3)
  {
    v5 = [(MFAccount *)self username];
    v6 = [(MFAccount *)self hostname];
    v3 = v6;
    if (v6)
    {
      if ([(NSString *)v6 isEqualToString:&stru_2869ED3E0])
      {
        return 0;
      }

      else if (!v5 || -[NSString isEqualToString:](v5, "isEqualToString:", &stru_2869ED3E0) || (v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@@%@", objc_msgSend(objc_opt_class(), "accountTypeString"), v5, v3]) != 0)
      {
        _MFLockGlobalLock();
        [(MFAccount *)self setAccountProperty:v3 forKey:@"DisplayName"];
        _MFUnlockGlobalLock();
      }
    }
  }

  return v3;
}

- (void)setDisplayName:(id)a3
{
  v5 = [(MFAccount *)self displayName];
  if (v5 != a3)
  {
    v6 = v5 ? v5 : &stru_2869ED3E0;
    if (([a3 isEqualToString:v6] & 1) == 0)
    {
      _MFLockGlobalLock();
      [(MFAccount *)self setAccountProperty:a3 forKey:@"DisplayName"];
      _MFUnlockGlobalLock();

      [(MFAccount *)self _queueAccountInfoDidChange];
    }
  }
}

- (void)setUsername:(id)a3
{
  v5 = [(MFAccount *)self username];
  if (v5 != a3)
  {
    v6 = v5 ? v5 : &stru_2869ED3E0;
    if (([a3 isEqualToString:v6] & 1) == 0)
    {
      _MFLockGlobalLock();
      if (a3 && [a3 length])
      {
        [(MFAccount *)self setAccountProperty:a3 forKey:@"Username"];
      }

      else
      {
        [(MFAccount *)self removeAccountPropertyForKey:@"Username"];
      }

      _MFUnlockGlobalLock();
      [(MFAccount *)self releaseAllConnections];

      [(MFAccount *)self _queueAccountInfoDidChange];
    }
  }
}

- (void)setHostname:(id)a3
{
  v5 = [(MFAccount *)self hostname];
  if ([a3 length])
  {
    a3 = [a3 mf_stringWithNoExtraSpaces];
  }

  if (v5 != a3)
  {
    v6 = v5 ? v5 : &stru_2869ED3E0;
    if (([a3 isEqualToString:v6] & 1) == 0)
    {
      _MFLockGlobalLock();
      if (a3 && [a3 length])
      {
        [(MFAccount *)self setAccountProperty:a3 forKey:@"Hostname"];
      }

      else
      {
        [(MFAccount *)self removeAccountPropertyForKey:@"Hostname"];
      }

      _MFUnlockGlobalLock();
      [(MFAccount *)self releaseAllConnections];

      [(MFAccount *)self _queueAccountInfoDidChange];
    }
  }
}

- (BOOL)supportsMailDrop
{
  if (![(MFAccount *)self isManaged])
  {
    return 1;
  }

  return [(MFAccount *)self _BOOLForAccountInfoKey:@"MFAccountSupportsMailDrop" defaultValue:0];
}

- (id)_credentialCreateIfNecessary:(BOOL)a3 error:(id *)a4
{
  v5 = a3;
  v22 = *MEMORY[0x277D85DE8];
  v15 = 0;
  v7 = [(ACAccount *)[(MFAccount *)self persistentAccount] credentialWithError:&v15];
  if (v15 && (v8 = MFLogGeneral(), os_log_type_enabled(v8, OS_LOG_TYPE_ERROR)))
  {
    if (v5)
    {
      v13 = "";
    }

    else
    {
      v13 = "NOT ";
    }

    v14 = [v15 ef_publicDescription];
    *buf = 138412802;
    v17 = self;
    v18 = 2080;
    v19 = v13;
    v20 = 2114;
    v21 = v14;
    _os_log_error_impl(&dword_258BDA000, v8, OS_LOG_TYPE_ERROR, "Encountered error while fetching credential for %@ (will %screate new credential): %{public}@", buf, 0x20u);
    if (v7)
    {
      goto LABEL_8;
    }
  }

  else if (v7)
  {
    goto LABEL_8;
  }

  if (v5)
  {
    v9 = MFLogGeneral();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [(MFAccount *)self ef_publicDescription];
      *buf = 138543362;
      v17 = v10;
      _os_log_impl(&dword_258BDA000, v9, OS_LOG_TYPE_INFO, "Creating new credential for account %{public}@", buf, 0xCu);
    }

    v7 = objc_alloc_init(MEMORY[0x277CB8F38]);
    _MFLockGlobalLock();
    [(ACAccount *)[(MFAccount *)self persistentAccount] setCredential:v7];
    _MFUnlockGlobalLock();
  }

LABEL_8:
  if (a4 && !v7)
  {
    *a4 = v15;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)setPassword:(id)a3
{
  v5 = [(MFAccount *)self _password];
  if (v5 != a3)
  {
    v6 = v5 ? v5 : &stru_2869ED3E0;
    if (([a3 isEqualToString:v6] & 1) == 0)
    {
      v7 = [(MFAccount *)self _credentialCreateIfNecessary:1];
      v8 = v7;
      if (a3)
      {
        v9 = [a3 length];
        if (v9)
        {
          v10 = a3;
        }

        else
        {
          v10 = 0;
        }

        [v8 setPassword:v10];
        if (v9)
        {
          [(ACAccount *)[(MFAccount *)self persistentAccount] setAuthenticated:1];
LABEL_15:

          [(MFAccount *)self _queueAccountInfoDidChange];
          return;
        }
      }

      else
      {
        [v7 setPassword:0];
      }

      _MFLockGlobalLock();
      [(MFAccount *)self removeAccountPropertyForKey:@"Password"];
      _MFUnlockGlobalLock();
      goto LABEL_15;
    }
  }
}

- (id)_passwordWithError:(id *)a3
{
  v3 = [(MFAccount *)self _credentialCreateIfNecessary:0 error:a3];

  return [v3 password];
}

- (id)password
{
  v3 = [(MFAccount *)self preferredAuthScheme];
  if (!v3 || ![v3 requiresPassword])
  {
    return &stru_2869ED3E0;
  }

  return [(MFAccount *)self _password];
}

- (unint64_t)credentialAccessibility
{
  v4 = 0;
  v2 = [-[MFAccount _passwordWithError:](self _passwordWithError:{&v4), "length"}];
  result = 0;
  if (!v2)
  {
    if ([v4 mf_isInaccessibleAccountCredentialError])
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

- (id)credentialItemForKey:(id)a3 error:(id *)a4
{
  v5 = [(MFAccount *)self _credentialCreateIfNecessary:0 error:a4];

  return [v5 credentialItemForKey:a3];
}

- (BOOL)setCredentialItem:(id)a3 forKey:(id)a4 error:(id *)a5
{
  v7 = [(MFAccount *)self _credentialCreateIfNecessary:1 error:a5];
  [v7 setCredentialItem:a3 forKey:a4];
  return v7 != 0;
}

- (id)oauth2Token
{
  v2 = [(MFAccount *)self _credentialCreateIfNecessary:0 error:0];

  return [v2 oauthToken];
}

- (BOOL)setOAuth2Token:(id)a3 refreshToken:(id)a4 error:(id *)a5
{
  v7 = [(MFAccount *)self _credentialCreateIfNecessary:1 error:a5];
  [v7 setOauthToken:a3];
  [v7 setOauthRefreshToken:a4];
  return v7 != 0;
}

- (BOOL)_renewCredentialsWithOptions:(id)a3 completion:(id)a4
{
  v6 = [(MFAccount *)self accountForRenewingCredentials];
  if (v6)
  {
    v7 = [+[MFAccountStore sharedAccountStore](MFAccountStore "sharedAccountStore")];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __53__MFAccount__renewCredentialsWithOptions_completion___block_invoke;
    v9[3] = &unk_2798B6448;
    v9[4] = a4;
    [v7 renewCredentialsForAccount:v6 options:a3 completion:v9];
  }

  return v6 != 0;
}

uint64_t __53__MFAccount__renewCredentialsWithOptions_completion___block_invoke(uint64_t a1, uint64_t a2, MFError *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = MFLogGeneral();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = @", error:";
    v8 = &stru_2869ED3E0;
    *buf = 134218498;
    v14 = a2;
    if (!a3)
    {
      v7 = &stru_2869ED3E0;
    }

    v15 = 2112;
    if (a3)
    {
      v8 = a3;
    }

    v16 = v7;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&dword_258BDA000, v6, OS_LOG_TYPE_INFO, "Credential renewal result: %ld%@%@", buf, 0x20u);
  }

  if (a2)
  {
    if (a3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v11 = *MEMORY[0x277CCA7E8];
      v12 = a3;
      a2 = 1;
      a3 = +[MFError errorWithDomain:code:localizedDescription:title:userInfo:](MFError, "errorWithDomain:code:localizedDescription:title:userInfo:", @"MFMessageErrorDomain", 1032, 0, 0, [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1]);
    }

    else
    {
      a2 = 1;
    }
  }

  else
  {
    a3 = 0;
  }

  result = *(a1 + 32);
  if (result)
  {
    result = (*(result + 16))(result, a2, a3);
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)renewCredentialsWithOptions:(id)a3 completion:(id)a4
{
  if (a3)
  {
    v6 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:?];
  }

  else
  {
    v6 = [MEMORY[0x277CBEB38] dictionary];
  }

  v7 = v6;
  v8 = MEMORY[0x277CBEC38];
  [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CB90A0]];
  [v7 setObject:v8 forKeyedSubscript:*MEMORY[0x277CB9098]];

  return [(MFAccount *)self _renewCredentialsWithOptions:v7 completion:a4];
}

- (BOOL)promptUserForPasswordWithTitle:(id)a3 message:(id)a4 completionHandler:(id)a5
{
  v8 = [MEMORY[0x277CBEB38] dictionary];
  [v8 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CB90A0]];
  if (a4)
  {
    [v8 setObject:a4 forKeyedSubscript:*MEMORY[0x277CB9088]];
  }

  return [(MFAccount *)self _renewCredentialsWithOptions:v8 completion:a5];
}

uint64_t __74__MFAccount_promptUserForWebLoginWithURL_shouldConfirm_completionHandler___block_invoke(uint64_t a1, int a2, __CFString *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = MFLogGeneral();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = @"failure";
    if (a2)
    {
      v7 = @"success";
    }

    *buf = 138412802;
    v15 = v7;
    if (a3)
    {
      v8 = @", error:";
    }

    else
    {
      v8 = &stru_2869ED3E0;
    }

    v16 = 2112;
    v17 = v8;
    if (a3)
    {
      v9 = a3;
    }

    else
    {
      v9 = &stru_2869ED3E0;
    }

    v18 = 2112;
    v19 = v9;
    _os_log_impl(&dword_258BDA000, v6, OS_LOG_TYPE_INFO, "Web login result: %@%@%@", buf, 0x20u);
  }

  if ((a2 & 1) == 0 && a3)
  {
    v12 = *MEMORY[0x277CCA7E8];
    v13 = a3;
    +[MFError errorWithDomain:code:localizedDescription:title:userInfo:](MFError, "errorWithDomain:code:localizedDescription:title:userInfo:", @"MFMessageErrorDomain", 1032, 0, 0, [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1]);
  }

  result = (*(*(a1 + 32) + 16))();
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (unsigned)portNumber
{
  result = [-[MFAccount _objectForAccountInfoKey:](self _objectForAccountInfoKey:{@"PortNumber", "intValue"}];
  if (!result && (![(MFAccount *)self usesSSL]|| (result = [(MFAccount *)self defaultSecurePortNumber]) == 0))
  {

    return [(MFAccount *)self defaultPortNumber];
  }

  return result;
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
    _MFLockGlobalLock();
    if (v6 != a3)
    {
      [(MFAccount *)self setAccountProperty:EFStringWithInt() forKey:@"PortNumber"];
      goto LABEL_10;
    }
  }

  else
  {
    _MFLockGlobalLock();
  }

  [(MFAccount *)self removeAccountPropertyForKey:@"PortNumber"];
LABEL_10:
  _MFUnlockGlobalLock();
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
    _MFLockGlobalLock();
    if (v3)
    {
      -[MFAccount setAccountProperty:forKey:](self, "setAccountProperty:forKey:", [MEMORY[0x277CCABB0] numberWithBool:1], @"SSLEnabled");
    }

    else
    {
      [(MFAccount *)self removeAccountPropertyForKey:@"SSLEnabled"];
    }

    _MFUnlockGlobalLock();
    [(MFAccount *)self releaseAllConnections];

    [(MFAccount *)self _queueAccountInfoDidChange];
  }
}

+ (BOOL)isSSLEditable
{
  v2 = [a1 predefinedValueForKey:@"SSLEnabledIsEditable"];
  if (!v2)
  {
    return 1;
  }

  return [v2 BOOLValue];
}

- (void)setDomain:(id)a3
{
  v5 = [(MFAccount *)self domain];
  if (v5 != a3)
  {
    v6 = v5 ? v5 : &stru_2869ED3E0;
    if (([a3 isEqualToString:v6] & 1) == 0)
    {
      _MFLockGlobalLock();
      if (a3 && [a3 length])
      {
        [(MFAccount *)self setAccountProperty:a3 forKey:@"Domain"];
      }

      else
      {
        [(MFAccount *)self removeAccountPropertyForKey:@"Domain"];
      }

      _MFUnlockGlobalLock();
      [(MFAccount *)self releaseAllConnections];

      [(MFAccount *)self _queueAccountInfoDidChange];
    }
  }
}

- (id)clientCertificates
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = [(MFAccount *)self _objectForAccountInfoKey:@"SSLClientIdentity"];
  if (v3)
  {
    v4 = [MFMessageKeychainManager copyIdentityForPersistentReference:v3 error:0];
  }

  else
  {
    v4 = [MFMessageKeychainManager copyClientSSLIdentityForHostName:[(MFAccount *)self hostname] error:0];
  }

  v5 = v4;
  if (v4)
  {
    v9[0] = v4;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)setClientCertificates:(id)a3
{
  if ([a3 count])
  {
    v5 = [a3 objectAtIndex:0];
    v6 = CFGetTypeID(v5);
    if (v6 == SecIdentityGetTypeID())
    {
      v7 = [MFMessageKeychainManager persistentReferenceForIdentity:v5 error:0];
      _MFLockGlobalLock();
      if (v7)
      {
        [(MFAccount *)self setAccountProperty:v7 forKey:@"SSLClientIdentity"];
      }

      else
      {
        [(MFAccount *)self removeAccountPropertyForKey:@"SSLClientIdentity"];
      }

      _MFUnlockGlobalLock();
    }
  }
}

- (void)accountInfoDidChange
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = [(MFAccount *)self properties];

  [v3 postNotificationName:@"AccountInfoDidChange" object:self userInfo:v4];
}

- (id)preferredAuthScheme
{
  v3 = [(MFAccount *)self _objectForAccountInfoKey:@"AuthenticationScheme"];
  if ([@"PLAIN" isEqualToString:v3])
  {
    v4 = &stru_2869ED3E0;
  }

  else
  {
    v4 = v3;
  }

  if (!v4)
  {
    if ([(MFAccount *)self requiresAuthentication])
    {
      v4 = &stru_2869ED3E0;
    }

    else
    {
      v4 = 0;
    }
  }

  return [MFAuthScheme schemeWithName:v4];
}

- (void)setPreferredAuthScheme:(id)a3
{
  if ([(MFAccount *)self preferredAuthScheme]!= a3)
  {
    v5 = [a3 name];
    _MFLockGlobalLock();
    if (v5)
    {
      [(MFAccount *)self setAccountProperty:v5 forKey:@"AuthenticationScheme"];
    }

    else
    {
      [(MFAccount *)self removeAccountPropertyForKey:@"AuthenticationScheme"];
    }

    _MFUnlockGlobalLock();
  }
}

- (id)_newConnection
{
  v2 = [(MFAccount *)self connectionClass];

  return objc_alloc_init(v2);
}

- (Class)connectionClass
{
  v2 = [(MFAccount *)self preferredAuthScheme];
  v3 = objc_opt_class();

  return [v2 connectionClassForAccountClass:v3];
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

- (id)defaultConnectionSettings
{
  v3 = objc_alloc_init(MFConnectionSettings);
  [(MFConnectionSettings *)v3 setUsesSSL:[(MFAccount *)self usesSSL]];
  [(MFConnectionSettings *)v3 setHostname:[(MFAccount *)self hostname]];
  [(MFConnectionSettings *)v3 setPortNumber:[(MFAccount *)self portNumber]];
  [(MFConnectionSettings *)v3 setCertUIService:[(MFAccount *)self certUIService]];
  if ([(MFConnectionSettings *)v3 usesSSL])
  {
    [(MFConnectionSettings *)v3 setClientCertificates:[(MFAccount *)self clientCertificates]];
  }

  if ([(MFConnectionSettings *)v3 usesSSL])
  {
    v4 = [(MFAccount *)self _shouldTryDirectSSLConnectionOnPort:[(MFConnectionSettings *)v3 portNumber]];
  }

  else
  {
    v4 = 0;
  }

  [(MFConnectionSettings *)v3 setTryDirectSSL:v4];
  if ([(MFConnectionSettings *)v3 tryDirectSSL])
  {
    v5 = [(MFAccount *)self secureServiceName];
  }

  else
  {
    v5 = [(MFAccount *)self serviceName];
  }

  [(MFConnectionSettings *)v3 setServiceName:v5];
  [(MFConnectionSettings *)v3 setConnectionServiceType:[(MFAccount *)self connectionServiceType]];
  [(MFConnectionSettings *)v3 setAllowsTrustPrompt:[(MFAccount *)self allowsTrustPrompt]];
  [(MFConnectionSettings *)v3 setAccountIdentifier:[(MFAccount *)self uniqueId]];
  [(MFConnectionSettings *)v3 setNetworkAccountIdentifier:[(MFAccount *)self networkAccountIdentifier]];
  v6 = [(MFAccount *)self sourceApplicationBundleIdentifier];
  if ([(NSString *)v6 length])
  {
    [(MFConnectionSettings *)v3 setSourceApplicationBundleIdentifier:v6];
  }

  return v3;
}

- (void)applySettingsAsDefault:(id)a3
{
  -[MFAccount setUsesSSL:](self, "setUsesSSL:", [a3 usesSSL]);
  -[MFAccount setPortNumber:](self, "setPortNumber:", [a3 portNumber]);
  v5 = [a3 tryDirectSSL];

  [(MFAccount *)self setTryDirectSSL:v5];
}

- (id)insecureConnectionSettings
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = [(MFAccount *)self defaultConnectionSettings];
  [v2 setUsesSSL:0];
  [v2 setTryDirectSSL:0];
  v5[0] = v2;
  result = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)secureConnectionSettings
{
  v6[1] = *MEMORY[0x277D85DE8];
  v3 = [(MFAccount *)self defaultConnectionSettings];
  [v3 setUsesSSL:1];
  [v3 setTryDirectSSL:1];
  [v3 setPortNumber:{-[MFAccount defaultSecurePortNumber](self, "defaultSecurePortNumber")}];
  v6[0] = v3;
  result = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)_shouldTryDirectSSLConnectionOnPort:(unsigned int)a3
{
  v5 = [(MFAccount *)self defaultSecurePortNumber];
  v6 = [(MFAccount *)self _objectForAccountInfoKey:@"SSLIsDirect"];
  if (v6)
  {

    LOBYTE(v7) = [v6 BOOLValue];
  }

  else
  {
    return v5 == a3;
  }

  return v7;
}

- (id)customDescriptionForError:(id)a3 authScheme:(id)a4 defaultDescription:(id)a5
{
  if (-[MFAccount credentialAccessibility](self, "credentialAccessibility", a3, a4) == 1 && [a3 code] == 1032)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:MFLookupLocalizedString(@"NO_PASSWORD_PROVIDED_FOR_USER_FORMAT", @"No password provided for user “%@” on server “%@”.\n\nPlease go to Mail Account Settings and enter a password.", 0), -[MFAccount username](self, "username"), -[MFAccount hostname](self, "hostname")];
  }

  else
  {
    return a5;
  }
}

- (void)reportAuthenticationError:(id)a3 authScheme:(id)a4
{
  v7 = +[MFActivityMonitor currentMonitor];
  [a3 setLocalizedDescription:{-[MFAccount customDescriptionForError:authScheme:defaultDescription:](self, "customDescriptionForError:authScheme:defaultDescription:", a3, a4, objc_msgSend(a3, "localizedDescription"))}];

  [v7 setError:a3];
}

- (BOOL)_connectAndAuthenticate:(id)a3
{
  v5 = [(MFAccount *)self preferredAuthScheme];
  v6 = +[MFActivityMonitor currentMonitor];
  if (([v6 shouldCancel] & 1) == 0)
  {
    v7 = [a3 connectUsingFallbacksForAccount:self];
    if (!v7)
    {
      return v7;
    }

    if ([a3 authenticateUsingAccount:self])
    {
      LOBYTE(v7) = 1;
      return v7;
    }

    [a3 disconnect];
    -[MFAccount reportAuthenticationError:authScheme:](self, "reportAuthenticationError:authScheme:", [v6 error], v5);
  }

  LOBYTE(v7) = 0;
  return v7;
}

- (NSString)uniqueId
{
  v3 = *MEMORY[0x277CB8A60];
  v4 = [(MFAccount *)self _objectForAccountInfoKey:*MEMORY[0x277CB8A60]];
  if (!v4)
  {
    v5 = *MEMORY[0x277CBECE8];
    v6 = CFUUIDCreate(*MEMORY[0x277CBECE8]);
    if (v6)
    {
      v7 = v6;
      v8 = CFUUIDCreateString(v5, v6);
      CFRelease(v7);
    }

    else
    {
      v8 = 0;
    }

    v4 = v8;
    _MFLockGlobalLock();
    [(MFAccount *)self setAccountProperty:v4 forKey:v3];
    _MFUnlockGlobalLock();
  }

  return &v4->isa;
}

- (id)missingPasswordErrorWithTitle:(id)a3
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:MFLookupLocalizedString(@"NO_PASSWORD_PROVIDED_FOR_ACCOUNT_FORMAT", @"No password provided for “%@”.\n\nPlease go to Mail Account Settings and enter a password.", 0), -[MFAccount displayName](self, "displayName")];

  return [MFError errorWithDomain:@"MFMessageErrorDomain" code:1055 localizedDescription:v4 title:a3 userInfo:0];
}

- (id)inaccessiblePasswordErrorWithTitle:(id)a3
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:MFLookupLocalizedString(@"PASSWORD_INACCESSIBLE_FOR_ACCOUNT_FORMAT", @"The password for “%@” cannot be used at this time.", 0), -[MFAccount displayName](self, "displayName")];

  return [MFError errorWithDomain:@"MFMessageErrorDomain" code:1056 localizedDescription:v4 title:a3 userInfo:0];
}

- (id)loginDisabledErrorWithTitle:(id)a3
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:MFLookupLocalizedString(@"LOGIN_DISABLED_FOR_ACCOUNT_FORMAT", @"Logins are disabled for “%@”.", 0), -[MFAccount displayName](self, "displayName")];

  return [MFError errorWithDomain:@"MFMessageErrorDomain" code:1059 localizedDescription:v4 title:a3 userInfo:0];
}

+ (id)supportedDataclasses
{
  v3 = +[MFAccountStore sharedAccountStore];
  v4 = [a1 accountTypeIdentifier];

  return [v3 supportedDataclassesWithAccountTypeIdentifier:v4];
}

- (id)enabledDataclasses
{
  v2 = [(ACAccount *)[(MFAccount *)self persistentAccount] enabledDataclasses];

  return [v2 allObjects];
}

- (BOOL)isEnabledForDataclass:(id)a3
{
  v4 = [(MFAccount *)self persistentAccount];

  return [(ACAccount *)v4 isEnabledForDataclass:a3];
}

- (uint64_t)setPersistentAccount:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"Account.m" lineNumber:255 description:@"Cannot set persistent account on account with unsaved account properties"];
}

@end