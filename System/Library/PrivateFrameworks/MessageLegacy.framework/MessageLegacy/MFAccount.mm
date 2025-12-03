@interface MFAccount
+ (BOOL)_setBasicProperty:(id)property forKey:(id)key persistentAccount:(id)account;
+ (BOOL)isSSLEditable;
+ (id)_basicPropertyForKey:(id)key persistentAccount:(id)account;
+ (id)_newPersistentAccount;
+ (id)accountPropertiesValueForKey:(id)key value:(id)value;
+ (id)accountWithPersistentAccount:(id)account;
+ (id)accountWithProperties:(id)properties;
+ (id)authSchemesForAccountClass;
+ (id)newAccountWithDictionary:(id)dictionary;
+ (id)supportedDataclasses;
- (ACAccount)parentAccount;
- (ACAccount)persistentAccount;
- (BOOL)_BOOLForAccountInfoKey:(id)key defaultValue:(BOOL)value;
- (BOOL)_connectAndAuthenticate:(id)authenticate;
- (BOOL)_renewCredentialsWithOptions:(id)options completion:(id)completion;
- (BOOL)_shouldTryDirectSSLConnectionOnPort:(unsigned int)port;
- (BOOL)isActive;
- (BOOL)isEnabledForDataclass:(id)dataclass;
- (BOOL)isEqual:(id)equal;
- (BOOL)promptUserForPasswordWithTitle:(id)title message:(id)message completionHandler:(id)handler;
- (BOOL)renewCredentialsWithOptions:(id)options completion:(id)completion;
- (BOOL)setCredentialItem:(id)item forKey:(id)key error:(id *)error;
- (BOOL)setOAuth2Token:(id)token refreshToken:(id)refreshToken error:(id *)error;
- (BOOL)shouldFetchACEDBInfoForError:(id)error;
- (BOOL)supportsMailDrop;
- (BOOL)usesSSL;
- (Class)connectionClass;
- (MFAccount)initWithPersistentAccount:(id)account;
- (MFAccount)initWithProperties:(id)properties;
- (NSDictionary)properties;
- (NSString)displayName;
- (NSString)ef_publicDescription;
- (NSString)parentAccountIdentifier;
- (NSString)uniqueId;
- (id)_credentialCreateIfNecessary:(BOOL)necessary error:(id *)error;
- (id)_newConnection;
- (id)_objectForAccountInfoKey:(id)key;
- (id)_passwordWithError:(id *)error;
- (id)_privacySafeDescription;
- (id)accountPropertyForKey:(id)key;
- (id)authenticatedConnection;
- (id)clientCertificates;
- (id)credentialItemForKey:(id)key error:(id *)error;
- (id)customDescriptionForError:(id)error authScheme:(id)scheme defaultDescription:(id)description;
- (id)defaultConnectionSettings;
- (id)enabledDataclasses;
- (id)inaccessiblePasswordErrorWithTitle:(id)title;
- (id)insecureConnectionSettings;
- (id)loginDisabledErrorWithTitle:(id)title;
- (id)missingPasswordErrorWithTitle:(id)title;
- (id)oauth2Token;
- (id)password;
- (id)preferredAuthScheme;
- (id)secureConnectionSettings;
- (id)valueInAccountPropertiesForKey:(id)key;
- (unint64_t)credentialAccessibility;
- (unint64_t)hash;
- (unsigned)defaultPortNumber;
- (unsigned)defaultSecurePortNumber;
- (unsigned)portNumber;
- (void)_queueAccountInfoDidChange;
- (void)_setAccountProperties:(id)properties;
- (void)accountInfoDidChange;
- (void)applySettingsAsDefault:(id)default;
- (void)dealloc;
- (void)removeAccountPropertyForKey:(id)key;
- (void)removePersistentAccount;
- (void)removeValueInAccountPropertiesForKey:(id)key;
- (void)reportAuthenticationError:(id)error authScheme:(id)scheme;
- (void)savePersistentAccount;
- (void)setAccountProperty:(id)property forKey:(id)key;
- (void)setClientCertificates:(id)certificates;
- (void)setDisplayName:(id)name;
- (void)setDomain:(id)domain;
- (void)setHostname:(id)hostname;
- (void)setPassword:(id)password;
- (void)setPersistentAccount:(id)account;
- (void)setPortNumber:(unsigned int)number;
- (void)setPreferredAuthScheme:(id)scheme;
- (void)setUsername:(id)username;
- (void)setUsesSSL:(BOOL)l;
- (void)setValueInAccountProperties:(id)properties forKey:(id)key;
@end

@implementation MFAccount

- (BOOL)shouldFetchACEDBInfoForError:(id)error
{
  code = [error code];
  domain = [error domain];
  v6 = [domain isEqualToString:*MEMORY[0x277CCA5B8]];
  v7 = 0x4601u >> (code - 51);
  if ((code - 51) > 0xE)
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

  if ([objc_msgSend(error "domain")])
  {
    v8 = code == 1034;
  }

  domain2 = [error domain];
  v10 = [domain2 isEqualToString:*MEMORY[0x277CBACE8]];
  v11 = (code - 1) < 2;
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

+ (id)newAccountWithDictionary:(id)dictionary
{
  v3 = [self accountWithProperties:dictionary];

  return v3;
}

+ (id)accountWithProperties:(id)properties
{
  v3 = [objc_alloc(objc_opt_class()) initWithProperties:properties];

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
  v4[4] = self;
  return [authSchemesForAccountClass_knownSchemes ef_filter:v4];
}

id __39__MFAccount_authSchemesForAccountClass__block_invoke()
{
  result = +[MFAuthScheme knownSchemes];
  authSchemesForAccountClass_knownSchemes = result;
  return result;
}

- (MFAccount)initWithProperties:(id)properties
{
  v4 = [(MFAccount *)self initWithPersistentAccount:0];
  if (v4)
  {
    v5 = [properties mutableCopy];
    if (!v5)
    {
      v5 = objc_opt_new();
    }

    [v5 setObject:objc_msgSend(objc_opt_class() forKey:{"_accountClass"), @"Class"}];
    [(MFAccount *)v4 _setAccountProperties:v5];
  }

  return v4;
}

- (MFAccount)initWithPersistentAccount:(id)account
{
  accountCopy = account;
  if (!account)
  {
    accountCopy = [objc_opt_class() _newPersistentAccount];
  }

  v8.receiver = self;
  v8.super_class = MFAccount;
  v5 = [(MFAccount *)&v8 init];
  v6 = v5;
  if (v5)
  {
    v5->_persistentAccountLock._os_unfair_lock_opaque = 0;
    [(MFAccount *)v5 setPersistentAccount:accountCopy];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFAccount;
  [(MFAccount *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  uniqueId = [equal uniqueId];
  uniqueId2 = [(MFAccount *)self uniqueId];

  return [uniqueId isEqualToString:uniqueId2];
}

- (unint64_t)hash
{
  uniqueId = [(MFAccount *)self uniqueId];

  return [(NSString *)uniqueId hash];
}

+ (id)accountWithPersistentAccount:(id)account
{
  v4 = +[MFAccountStore sharedAccountStore];

  return [v4 existingAccountWithPersistentAccount:account];
}

+ (id)_newPersistentAccount
{
  v19 = *MEMORY[0x277D85DE8];
  accountTypeIdentifier = [self accountTypeIdentifier];
  v3 = +[MFAccountStore sharedAccountStore];
  v4 = [v3 newPersistentAccountWithAccountTypeIdentifier:accountTypeIdentifier];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v3 supportedDataclassesWithAccountTypeIdentifier:{accountTypeIdentifier, 0}];
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

- (void)setPersistentAccount:(id)account
{
  if (account && self->_unsavedAccountProperties)
  {
    [(MFAccount *)a2 setPersistentAccount:?];
  }

  if (self->_persistentAccount != account)
  {
    [(MFAccount *)self releaseAllConnections];
    os_unfair_lock_lock(&self->_persistentAccountLock);
    v5 = self->_persistentAccount;
    self->_persistentAccount = account;
    os_unfair_lock_unlock(&self->_persistentAccountLock);
    [(MFAccount *)self persistentAccountDidChange:account previousAccount:v5];
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
  persistentAccount = [(MFAccount *)self persistentAccount];

  return [(ACAccount *)persistentAccount parentAccount];
}

- (NSString)parentAccountIdentifier
{
  persistentAccount = [(MFAccount *)self persistentAccount];

  return [(ACAccount *)persistentAccount parentAccountIdentifier];
}

- (id)_privacySafeDescription
{
  v3 = [(MFAccount *)self _objectForAccountInfoKey:*MEMORY[0x277CB8A60]];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  isActive = [(MFAccount *)self isActive];
  v7 = "not ";
  if (isActive)
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
  persistentAccount = [(MFAccount *)self persistentAccount];
  if (!persistentAccount)
  {
    return &self->_unsavedAccountProperties->super;
  }

  return [(ACAccount *)persistentAccount accountProperties];
}

- (id)accountPropertyForKey:(id)key
{
  persistentAccount = [(MFAccount *)self persistentAccount];
  if (persistentAccount)
  {
    v6 = persistentAccount;
    result = [objc_opt_class() _basicPropertyForKey:key persistentAccount:persistentAccount];
    if (!result)
    {

      return [(ACAccount *)v6 accountPropertyForKey:key];
    }
  }

  else
  {
    unsavedAccountProperties = self->_unsavedAccountProperties;

    return [(NSMutableDictionary *)unsavedAccountProperties objectForKey:key];
  }

  return result;
}

- (void)setAccountProperty:(id)property forKey:(id)key
{
  persistentAccount = [(MFAccount *)self persistentAccount];
  if (persistentAccount)
  {
    v8 = persistentAccount;
    if (([objc_opt_class() _setBasicProperty:property forKey:key persistentAccount:persistentAccount] & 1) == 0)
    {

      [(ACAccount *)v8 setAccountProperty:property forKey:key];
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

    [(NSMutableDictionary *)unsavedAccountProperties setValue:property forKey:key];
  }
}

- (void)removeAccountPropertyForKey:(id)key
{
  persistentAccount = [(MFAccount *)self persistentAccount];
  if (persistentAccount)
  {
    v6 = persistentAccount;
    if (([objc_opt_class() _setBasicProperty:0 forKey:key persistentAccount:persistentAccount] & 1) == 0)
    {

      [(ACAccount *)v6 setAccountProperty:0 forKey:key];
    }
  }

  else
  {
    unsavedAccountProperties = self->_unsavedAccountProperties;

    [(NSMutableDictionary *)unsavedAccountProperties removeObjectForKey:key];
  }
}

+ (id)_basicPropertyForKey:(id)key persistentAccount:(id)account
{
  if (!account)
  {
    return 0;
  }

  if ([key isEqualToString:*MEMORY[0x277CB8A60]])
  {

    return [account identifier];
  }

  if ([key isEqualToString:@"Username"])
  {

    return [account username];
  }

  if (![key isEqualToString:@"DisplayName"])
  {
    return 0;
  }

  return [account accountDescription];
}

+ (BOOL)_setBasicProperty:(id)property forKey:(id)key persistentAccount:(id)account
{
  if (account)
  {
    if ([key isEqualToString:*MEMORY[0x277CB8A60]])
    {
      [account setIdentifier:property];
LABEL_9:
      LOBYTE(v8) = 1;
      return v8;
    }

    if ([key isEqualToString:@"Username"])
    {
      [account setUsername:property];
      goto LABEL_9;
    }

    v8 = [key isEqualToString:@"DisplayName"];
    if (v8)
    {
      [account setAccountDescription:property];
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

- (void)_setAccountProperties:(id)properties
{
  v22 = *MEMORY[0x277D85DE8];
  _MFLockGlobalLock();
  v5 = [properties mutableCopy];
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
  v8 = [properties objectForKey:@"OAuth2Token"];
  v9 = [properties objectForKey:@"OAuth2RefreshToken"];
  if (v8)
  {
    [(MFAccount *)self setOAuth2Token:v8 refreshToken:v9 error:0];
  }

  [(MFAccount *)self uniqueId];
  excludedAccountPropertyKeys = [objc_opt_class() excludedAccountPropertyKeys];
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
        if (([excludedAccountPropertyKeys containsObject:v15] & 1) == 0)
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

+ (id)accountPropertiesValueForKey:(id)key value:(id)value
{
  if (![key isEqual:@"EmailAddresses"])
  {
    return value;
  }

  v5 = MEMORY[0x277D24F40];

  return [v5 addressListFromEncodedString:value];
}

- (void)setValueInAccountProperties:(id)properties forKey:(id)key
{
  if ([key isEqual:@"Password"])
  {
    [(MFAccount *)self setPassword:properties];
  }

  else
  {
    [(MFAccount *)self setAccountProperty:properties forKey:key];
  }

  [(MFAccount *)self _queueAccountInfoDidChange];
}

- (void)removeValueInAccountPropertiesForKey:(id)key
{
  _MFLockGlobalLock();
  [(MFAccount *)self removeAccountPropertyForKey:key];

  _MFUnlockGlobalLock();
}

- (id)valueInAccountPropertiesForKey:(id)key
{
  if ([key isEqual:@"SSLEnabled"])
  {
    v5 = MEMORY[0x277CCABB0];
    usesSSL = [(MFAccount *)self usesSSL];

    return [v5 numberWithBool:usesSSL];
  }

  else
  {
    _MFLockGlobalLock();
    v8 = [(MFAccount *)self accountPropertyForKey:key];
    _MFUnlockGlobalLock();
    if ([key isEqual:@"Password"])
    {

      return [(MFAccount *)self password];
    }

    else if ([key isEqual:@"EmailAddresses"])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        allKeys = v8;
      }

      else
      {
        allKeys = [v8 allKeys];
      }

      return [allKeys componentsJoinedByString:{@", "}];
    }

    else
    {
      return v8;
    }
  }
}

- (id)_objectForAccountInfoKey:(id)key
{
  _MFLockGlobalLock();
  v5 = [(MFAccount *)self accountPropertyForKey:key];
  _MFUnlockGlobalLock();

  return v5;
}

- (BOOL)_BOOLForAccountInfoKey:(id)key defaultValue:(BOOL)value
{
  _MFLockGlobalLock();
  v7 = [(MFAccount *)self accountPropertyForKey:key];
  _MFUnlockGlobalLock();
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      value = [v7 BOOLValue];
    }
  }

  return value;
}

- (BOOL)isActive
{
  persistentAccount = [(MFAccount *)self persistentAccount];
  if (!persistentAccount)
  {
    return 1;
  }

  return [(ACAccount *)persistentAccount isActive];
}

- (NSString)displayName
{
  v3 = [(MFAccount *)self _objectForAccountInfoKey:@"DisplayName"];
  if (!v3)
  {
    username = [(MFAccount *)self username];
    hostname = [(MFAccount *)self hostname];
    v3 = hostname;
    if (hostname)
    {
      if ([(NSString *)hostname isEqualToString:&stru_2869ED3E0])
      {
        return 0;
      }

      else if (!username || -[NSString isEqualToString:](username, "isEqualToString:", &stru_2869ED3E0) || (v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@@%@", objc_msgSend(objc_opt_class(), "accountTypeString"), username, v3]) != 0)
      {
        _MFLockGlobalLock();
        [(MFAccount *)self setAccountProperty:v3 forKey:@"DisplayName"];
        _MFUnlockGlobalLock();
      }
    }
  }

  return v3;
}

- (void)setDisplayName:(id)name
{
  displayName = [(MFAccount *)self displayName];
  if (displayName != name)
  {
    v6 = displayName ? displayName : &stru_2869ED3E0;
    if (([name isEqualToString:v6] & 1) == 0)
    {
      _MFLockGlobalLock();
      [(MFAccount *)self setAccountProperty:name forKey:@"DisplayName"];
      _MFUnlockGlobalLock();

      [(MFAccount *)self _queueAccountInfoDidChange];
    }
  }
}

- (void)setUsername:(id)username
{
  username = [(MFAccount *)self username];
  if (username != username)
  {
    v6 = username ? username : &stru_2869ED3E0;
    if (([username isEqualToString:v6] & 1) == 0)
    {
      _MFLockGlobalLock();
      if (username && [username length])
      {
        [(MFAccount *)self setAccountProperty:username forKey:@"Username"];
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

- (void)setHostname:(id)hostname
{
  hostname = [(MFAccount *)self hostname];
  if ([hostname length])
  {
    hostname = [hostname mf_stringWithNoExtraSpaces];
  }

  if (hostname != hostname)
  {
    v6 = hostname ? hostname : &stru_2869ED3E0;
    if (([hostname isEqualToString:v6] & 1) == 0)
    {
      _MFLockGlobalLock();
      if (hostname && [hostname length])
      {
        [(MFAccount *)self setAccountProperty:hostname forKey:@"Hostname"];
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

- (id)_credentialCreateIfNecessary:(BOOL)necessary error:(id *)error
{
  necessaryCopy = necessary;
  v22 = *MEMORY[0x277D85DE8];
  v15 = 0;
  v7 = [(ACAccount *)[(MFAccount *)self persistentAccount] credentialWithError:&v15];
  if (v15 && (v8 = MFLogGeneral(), os_log_type_enabled(v8, OS_LOG_TYPE_ERROR)))
  {
    if (necessaryCopy)
    {
      v13 = "";
    }

    else
    {
      v13 = "NOT ";
    }

    ef_publicDescription = [v15 ef_publicDescription];
    *buf = 138412802;
    selfCopy = self;
    v18 = 2080;
    v19 = v13;
    v20 = 2114;
    v21 = ef_publicDescription;
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

  if (necessaryCopy)
  {
    v9 = MFLogGeneral();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      ef_publicDescription2 = [(MFAccount *)self ef_publicDescription];
      *buf = 138543362;
      selfCopy = ef_publicDescription2;
      _os_log_impl(&dword_258BDA000, v9, OS_LOG_TYPE_INFO, "Creating new credential for account %{public}@", buf, 0xCu);
    }

    v7 = objc_alloc_init(MEMORY[0x277CB8F38]);
    _MFLockGlobalLock();
    [(ACAccount *)[(MFAccount *)self persistentAccount] setCredential:v7];
    _MFUnlockGlobalLock();
  }

LABEL_8:
  if (error && !v7)
  {
    *error = v15;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)setPassword:(id)password
{
  _password = [(MFAccount *)self _password];
  if (_password != password)
  {
    v6 = _password ? _password : &stru_2869ED3E0;
    if (([password isEqualToString:v6] & 1) == 0)
    {
      v7 = [(MFAccount *)self _credentialCreateIfNecessary:1];
      v8 = v7;
      if (password)
      {
        v9 = [password length];
        if (v9)
        {
          passwordCopy = password;
        }

        else
        {
          passwordCopy = 0;
        }

        [v8 setPassword:passwordCopy];
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

- (id)_passwordWithError:(id *)error
{
  v3 = [(MFAccount *)self _credentialCreateIfNecessary:0 error:error];

  return [v3 password];
}

- (id)password
{
  preferredAuthScheme = [(MFAccount *)self preferredAuthScheme];
  if (!preferredAuthScheme || ![preferredAuthScheme requiresPassword])
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

- (id)credentialItemForKey:(id)key error:(id *)error
{
  v5 = [(MFAccount *)self _credentialCreateIfNecessary:0 error:error];

  return [v5 credentialItemForKey:key];
}

- (BOOL)setCredentialItem:(id)item forKey:(id)key error:(id *)error
{
  v7 = [(MFAccount *)self _credentialCreateIfNecessary:1 error:error];
  [v7 setCredentialItem:item forKey:key];
  return v7 != 0;
}

- (id)oauth2Token
{
  v2 = [(MFAccount *)self _credentialCreateIfNecessary:0 error:0];

  return [v2 oauthToken];
}

- (BOOL)setOAuth2Token:(id)token refreshToken:(id)refreshToken error:(id *)error
{
  v7 = [(MFAccount *)self _credentialCreateIfNecessary:1 error:error];
  [v7 setOauthToken:token];
  [v7 setOauthRefreshToken:refreshToken];
  return v7 != 0;
}

- (BOOL)_renewCredentialsWithOptions:(id)options completion:(id)completion
{
  accountForRenewingCredentials = [(MFAccount *)self accountForRenewingCredentials];
  if (accountForRenewingCredentials)
  {
    v7 = [+[MFAccountStore sharedAccountStore](MFAccountStore "sharedAccountStore")];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __53__MFAccount__renewCredentialsWithOptions_completion___block_invoke;
    v9[3] = &unk_2798B6448;
    v9[4] = completion;
    [v7 renewCredentialsForAccount:accountForRenewingCredentials options:options completion:v9];
  }

  return accountForRenewingCredentials != 0;
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

- (BOOL)renewCredentialsWithOptions:(id)options completion:(id)completion
{
  if (options)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionaryWithDictionary:?];
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  v7 = dictionary;
  v8 = MEMORY[0x277CBEC38];
  [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CB90A0]];
  [v7 setObject:v8 forKeyedSubscript:*MEMORY[0x277CB9098]];

  return [(MFAccount *)self _renewCredentialsWithOptions:v7 completion:completion];
}

- (BOOL)promptUserForPasswordWithTitle:(id)title message:(id)message completionHandler:(id)handler
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CB90A0]];
  if (message)
  {
    [dictionary setObject:message forKeyedSubscript:*MEMORY[0x277CB9088]];
  }

  return [(MFAccount *)self _renewCredentialsWithOptions:dictionary completion:handler];
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

- (void)setPortNumber:(unsigned int)number
{
  if ([(MFAccount *)self portNumber]== number)
  {
    return;
  }

  if (number)
  {
    if ([(MFAccount *)self usesSSL])
    {
      defaultSecurePortNumber = [(MFAccount *)self defaultSecurePortNumber];
    }

    else
    {
      defaultSecurePortNumber = [(MFAccount *)self defaultPortNumber];
    }

    v6 = defaultSecurePortNumber;
    _MFLockGlobalLock();
    if (v6 != number)
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
  usesSSL = [objc_opt_class() usesSSL];

  return [(MFAccount *)self _BOOLForAccountInfoKey:@"SSLEnabled" defaultValue:usesSSL];
}

- (void)setUsesSSL:(BOOL)l
{
  lCopy = l;
  if ([(MFAccount *)self usesSSL]!= l)
  {
    _MFLockGlobalLock();
    if (lCopy)
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
  v2 = [self predefinedValueForKey:@"SSLEnabledIsEditable"];
  if (!v2)
  {
    return 1;
  }

  return [v2 BOOLValue];
}

- (void)setDomain:(id)domain
{
  domain = [(MFAccount *)self domain];
  if (domain != domain)
  {
    v6 = domain ? domain : &stru_2869ED3E0;
    if (([domain isEqualToString:v6] & 1) == 0)
    {
      _MFLockGlobalLock();
      if (domain && [domain length])
      {
        [(MFAccount *)self setAccountProperty:domain forKey:@"Domain"];
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

- (void)setClientCertificates:(id)certificates
{
  if ([certificates count])
  {
    v5 = [certificates objectAtIndex:0];
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
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  properties = [(MFAccount *)self properties];

  [defaultCenter postNotificationName:@"AccountInfoDidChange" object:self userInfo:properties];
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

- (void)setPreferredAuthScheme:(id)scheme
{
  if ([(MFAccount *)self preferredAuthScheme]!= scheme)
  {
    name = [scheme name];
    _MFLockGlobalLock();
    if (name)
    {
      [(MFAccount *)self setAccountProperty:name forKey:@"AuthenticationScheme"];
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
  connectionClass = [(MFAccount *)self connectionClass];

  return objc_alloc_init(connectionClass);
}

- (Class)connectionClass
{
  preferredAuthScheme = [(MFAccount *)self preferredAuthScheme];
  v3 = objc_opt_class();

  return [preferredAuthScheme connectionClassForAccountClass:v3];
}

- (id)authenticatedConnection
{
  _newConnection = [(MFAccount *)self _newConnection];
  if (_newConnection && ![(MFAccount *)self _connectAndAuthenticate:_newConnection])
  {

    _newConnection = 0;
  }

  return _newConnection;
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
    secureServiceName = [(MFAccount *)self secureServiceName];
  }

  else
  {
    secureServiceName = [(MFAccount *)self serviceName];
  }

  [(MFConnectionSettings *)v3 setServiceName:secureServiceName];
  [(MFConnectionSettings *)v3 setConnectionServiceType:[(MFAccount *)self connectionServiceType]];
  [(MFConnectionSettings *)v3 setAllowsTrustPrompt:[(MFAccount *)self allowsTrustPrompt]];
  [(MFConnectionSettings *)v3 setAccountIdentifier:[(MFAccount *)self uniqueId]];
  [(MFConnectionSettings *)v3 setNetworkAccountIdentifier:[(MFAccount *)self networkAccountIdentifier]];
  sourceApplicationBundleIdentifier = [(MFAccount *)self sourceApplicationBundleIdentifier];
  if ([(NSString *)sourceApplicationBundleIdentifier length])
  {
    [(MFConnectionSettings *)v3 setSourceApplicationBundleIdentifier:sourceApplicationBundleIdentifier];
  }

  return v3;
}

- (void)applySettingsAsDefault:(id)default
{
  -[MFAccount setUsesSSL:](self, "setUsesSSL:", [default usesSSL]);
  -[MFAccount setPortNumber:](self, "setPortNumber:", [default portNumber]);
  tryDirectSSL = [default tryDirectSSL];

  [(MFAccount *)self setTryDirectSSL:tryDirectSSL];
}

- (id)insecureConnectionSettings
{
  v5[1] = *MEMORY[0x277D85DE8];
  defaultConnectionSettings = [(MFAccount *)self defaultConnectionSettings];
  [defaultConnectionSettings setUsesSSL:0];
  [defaultConnectionSettings setTryDirectSSL:0];
  v5[0] = defaultConnectionSettings;
  result = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)secureConnectionSettings
{
  v6[1] = *MEMORY[0x277D85DE8];
  defaultConnectionSettings = [(MFAccount *)self defaultConnectionSettings];
  [defaultConnectionSettings setUsesSSL:1];
  [defaultConnectionSettings setTryDirectSSL:1];
  [defaultConnectionSettings setPortNumber:{-[MFAccount defaultSecurePortNumber](self, "defaultSecurePortNumber")}];
  v6[0] = defaultConnectionSettings;
  result = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)_shouldTryDirectSSLConnectionOnPort:(unsigned int)port
{
  defaultSecurePortNumber = [(MFAccount *)self defaultSecurePortNumber];
  v6 = [(MFAccount *)self _objectForAccountInfoKey:@"SSLIsDirect"];
  if (v6)
  {

    LOBYTE(v7) = [v6 BOOLValue];
  }

  else
  {
    return defaultSecurePortNumber == port;
  }

  return v7;
}

- (id)customDescriptionForError:(id)error authScheme:(id)scheme defaultDescription:(id)description
{
  if (-[MFAccount credentialAccessibility](self, "credentialAccessibility", error, scheme) == 1 && [error code] == 1032)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:MFLookupLocalizedString(@"NO_PASSWORD_PROVIDED_FOR_USER_FORMAT", @"No password provided for user “%@” on server “%@”.\n\nPlease go to Mail Account Settings and enter a password.", 0), -[MFAccount username](self, "username"), -[MFAccount hostname](self, "hostname")];
  }

  else
  {
    return description;
  }
}

- (void)reportAuthenticationError:(id)error authScheme:(id)scheme
{
  v7 = +[MFActivityMonitor currentMonitor];
  [error setLocalizedDescription:{-[MFAccount customDescriptionForError:authScheme:defaultDescription:](self, "customDescriptionForError:authScheme:defaultDescription:", error, scheme, objc_msgSend(error, "localizedDescription"))}];

  [v7 setError:error];
}

- (BOOL)_connectAndAuthenticate:(id)authenticate
{
  preferredAuthScheme = [(MFAccount *)self preferredAuthScheme];
  v6 = +[MFActivityMonitor currentMonitor];
  if (([v6 shouldCancel] & 1) == 0)
  {
    v7 = [authenticate connectUsingFallbacksForAccount:self];
    if (!v7)
    {
      return v7;
    }

    if ([authenticate authenticateUsingAccount:self])
    {
      LOBYTE(v7) = 1;
      return v7;
    }

    [authenticate disconnect];
    -[MFAccount reportAuthenticationError:authScheme:](self, "reportAuthenticationError:authScheme:", [v6 error], preferredAuthScheme);
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

- (id)missingPasswordErrorWithTitle:(id)title
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:MFLookupLocalizedString(@"NO_PASSWORD_PROVIDED_FOR_ACCOUNT_FORMAT", @"No password provided for “%@”.\n\nPlease go to Mail Account Settings and enter a password.", 0), -[MFAccount displayName](self, "displayName")];

  return [MFError errorWithDomain:@"MFMessageErrorDomain" code:1055 localizedDescription:v4 title:title userInfo:0];
}

- (id)inaccessiblePasswordErrorWithTitle:(id)title
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:MFLookupLocalizedString(@"PASSWORD_INACCESSIBLE_FOR_ACCOUNT_FORMAT", @"The password for “%@” cannot be used at this time.", 0), -[MFAccount displayName](self, "displayName")];

  return [MFError errorWithDomain:@"MFMessageErrorDomain" code:1056 localizedDescription:v4 title:title userInfo:0];
}

- (id)loginDisabledErrorWithTitle:(id)title
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:MFLookupLocalizedString(@"LOGIN_DISABLED_FOR_ACCOUNT_FORMAT", @"Logins are disabled for “%@”.", 0), -[MFAccount displayName](self, "displayName")];

  return [MFError errorWithDomain:@"MFMessageErrorDomain" code:1059 localizedDescription:v4 title:title userInfo:0];
}

+ (id)supportedDataclasses
{
  v3 = +[MFAccountStore sharedAccountStore];
  accountTypeIdentifier = [self accountTypeIdentifier];

  return [v3 supportedDataclassesWithAccountTypeIdentifier:accountTypeIdentifier];
}

- (id)enabledDataclasses
{
  enabledDataclasses = [(ACAccount *)[(MFAccount *)self persistentAccount] enabledDataclasses];

  return [enabledDataclasses allObjects];
}

- (BOOL)isEnabledForDataclass:(id)dataclass
{
  persistentAccount = [(MFAccount *)self persistentAccount];

  return [(ACAccount *)persistentAccount isEnabledForDataclass:dataclass];
}

- (uint64_t)setPersistentAccount:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"Account.m" lineNumber:255 description:@"Cannot set persistent account on account with unsaved account properties"];
}

@end