@interface ECAccount
+ (OS_os_log)log;
- (ACAccountCredential)credential;
- (BOOL)_cachedEnabled;
- (BOOL)allowInsecureAuthentication;
- (BOOL)configureDynamically;
- (BOOL)deleteMessagesInPlace;
- (BOOL)hasPasswordCredential;
- (BOOL)isAOLAccount;
- (BOOL)isAppleAccount;
- (BOOL)isAppleEmployeeAccount;
- (BOOL)isAuthenticated;
- (BOOL)isEnabledForDataclass:(id)dataclass;
- (BOOL)isExchangeAccount;
- (BOOL)isGmailAccount;
- (BOOL)isOutlookAccount;
- (BOOL)isPersonaAccount;
- (BOOL)isYahooAccount;
- (BOOL)setSslIsDirectIsSet;
- (BOOL)sslIsDirect;
- (BOOL)usesSSL;
- (ECAccount)initWithSystemAccount:(id)account accountStore:(id)store;
- (NSArray)standardPorts;
- (NSArray)standardSSLPorts;
- (NSDictionary)dataclassProperties;
- (NSString)accountTypeIdentifier;
- (NSString)archiveMailboxName;
- (NSString)authenticationScheme;
- (NSString)debugDescription;
- (NSString)draftsMailboxName;
- (NSString)ef_publicDescription;
- (NSString)hostname;
- (NSString)identifier;
- (NSString)junkMailboxName;
- (NSString)notesMailboxName;
- (NSString)oauthToken;
- (NSString)outboxMailboxName;
- (NSString)password;
- (NSString)personaIdentifier;
- (NSString)sentMessagesMailboxName;
- (NSString)toDosMailboxName;
- (NSString)trashMailboxName;
- (NSString)username;
- (id)_cachedParentAccount;
- (id)dataClassPropertyForKey:(id)key;
- (id)enabledDataclasses;
- (id)portNumberObject;
- (id)usesSSLObject;
- (int64_t)numberOfDaysToKeepJunk;
- (int64_t)numberOfDaysToKeepTrash;
- (int64_t)portNumber;
- (void)clearCache;
- (void)clearSSLIsDirect;
- (void)clearUsesSSL;
- (void)refresh;
- (void)renewCredentialsWithOptions:(id)options completionHandler:(id)handler;
- (void)setAuthenticationScheme:(id)scheme;
- (void)setConfigureDynamically:(BOOL)dynamically;
- (void)setDataClassProperty:(id)property forKey:(id)key;
- (void)setHostname:(id)hostname;
- (void)setNumberOfDaysToKeepJunk:(int64_t)junk;
- (void)setNumberOfDaysToKeepTrash:(int64_t)trash;
- (void)setOAuth2Token:(id)token refreshToken:(id)refreshToken;
- (void)setPassword:(id)password;
- (void)setPortNumber:(int64_t)number;
@end

@implementation ECAccount

- (BOOL)isAppleEmployeeAccount
{
  hostname = [(ECAccount *)self hostname];
  v3 = ![hostname caseInsensitiveCompare:@"mail.apple.com"] || !objc_msgSend(hostname, "caseInsensitiveCompare:", @"mailpex.apple.com") || objc_msgSend(hostname, "caseInsensitiveCompare:", @"mailex16.apple.com") == 0;

  return v3;
}

- (NSString)hostname
{
  systemAccount = [(ECAccount *)self systemAccount];
  v4 = [systemAccount objectForKeyedSubscript:*MEMORY[0x277CB8AC8]];

  if (!v4)
  {
    _cachedParentAccount = [(ECAccount *)self _cachedParentAccount];
    if (_cachedParentAccount)
    {
      v4 = [(ECAccount *)self _hostnameFromParentAccount:_cachedParentAccount];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (void)clearCache
{
  cache = [(ECAccount *)self cache];
  [cache removeAllObjects];
}

- (NSString)personaIdentifier
{
  systemAccount = [(ECAccount *)self systemAccount];
  v4 = *MEMORY[0x277CB8B18];
  v5 = [systemAccount objectForKeyedSubscript:*MEMORY[0x277CB8B18]];

  if (!v5)
  {
    _cachedParentAccount = [(ECAccount *)self _cachedParentAccount];
    v7 = _cachedParentAccount;
    if (_cachedParentAccount)
    {
      v5 = [_cachedParentAccount objectForKeyedSubscript:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)_cachedParentAccount
{
  cache = [(ECAccount *)self cache];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __33__ECAccount__cachedParentAccount__block_invoke;
  v8[3] = &unk_27874B560;
  v8[4] = self;
  v4 = [cache objectForKey:@"ECAccountCacheKeyParentAccount" generator:v8];

  null = [MEMORY[0x277CBEB68] null];

  if (v4 == null)
  {
    v6 = 0;
  }

  else
  {
    v6 = v4;
  }

  return v6;
}

id __33__ECAccount__cachedParentAccount__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) systemAccount];
  v2 = [v1 parentAccount];

  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = [MEMORY[0x277CBEB68] null];
  }

  v4 = v3;

  return v4;
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __16__ECAccount_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken != -1)
  {
    dispatch_once(&log_onceToken, block);
  }

  v2 = log_log;

  return v2;
}

void __16__ECAccount_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log;
  log_log = v1;
}

- (ECAccount)initWithSystemAccount:(id)account accountStore:(id)store
{
  accountCopy = account;
  storeCopy = store;
  v16.receiver = self;
  v16.super_class = ECAccount;
  v9 = [(ECAccount *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_systemAccount, account);
    if (storeCopy)
    {
      defaultStore = storeCopy;
    }

    else
    {
      defaultStore = [MEMORY[0x277CB8F48] defaultStore];
    }

    accountStore = v10->_accountStore;
    v10->_accountStore = defaultStore;

    v13 = objc_alloc_init(MEMORY[0x277D07160]);
    cache = v10->_cache;
    v10->_cache = v13;
  }

  return v10;
}

- (void)renewCredentialsWithOptions:(id)options completionHandler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  accountStore = [(ECAccount *)self accountStore];
  systemAccount = [(ECAccount *)self systemAccount];
  [accountStore renewCredentialsForAccount:systemAccount options:optionsCopy completion:handlerCopy];
}

- (NSString)accountTypeIdentifier
{
  systemAccount = [(ECAccount *)self systemAccount];
  accountType = [systemAccount accountType];
  identifier = [accountType identifier];

  return identifier;
}

- (NSString)identifier
{
  systemAccount = [(ECAccount *)self systemAccount];
  identifier = [systemAccount identifier];

  return identifier;
}

- (ACAccountCredential)credential
{
  systemAccount = [(ECAccount *)self systemAccount];
  credential = [systemAccount credential];

  return credential;
}

- (void)setHostname:(id)hostname
{
  hostnameCopy = hostname;
  if ([hostnameCopy length])
  {
    ef_stringWithNoExtraSpaces = [hostnameCopy ef_stringWithNoExtraSpaces];

    hostnameCopy = ef_stringWithNoExtraSpaces;
  }

  hostname = [(ECAccount *)self hostname];
  if (hostnameCopy != hostname && ([hostnameCopy isEqual:hostname] & 1) == 0)
  {
    if (![hostnameCopy length])
    {

      hostnameCopy = 0;
    }

    systemAccount = [(ECAccount *)self systemAccount];
    _cachedParentAccount = [(ECAccount *)self _cachedParentAccount];
    if (_cachedParentAccount)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"ECAccount.m" lineNumber:97 description:@"Unexpected override of the hostname from the parent"];
    }

    [systemAccount setObject:hostnameCopy forKeyedSubscript:*MEMORY[0x277CB8AC8]];
  }
}

- (NSString)username
{
  systemAccount = [(ECAccount *)self systemAccount];
  username = [systemAccount username];

  return username;
}

- (NSString)password
{
  systemAccount = [(ECAccount *)self systemAccount];
  credential = [systemAccount credential];
  password = [credential password];

  return password;
}

- (void)setPassword:(id)password
{
  passwordCopy = password;
  systemAccount = [(ECAccount *)self systemAccount];
  credential = [systemAccount credential];
  password = [credential password];
  if (password != passwordCopy && ([password isEqualToString:passwordCopy] & 1) == 0)
  {
    if (credential)
    {
      [credential setPassword:passwordCopy];
      [credential setCredentialType:*MEMORY[0x277CB8DA0]];
    }

    else
    {
      v7 = [objc_alloc(MEMORY[0x277CB8F38]) initWithPassword:passwordCopy];
      [systemAccount setCredential:v7];
    }
  }
}

- (NSString)oauthToken
{
  systemAccount = [(ECAccount *)self systemAccount];
  credential = [systemAccount credential];
  oauthToken = [credential oauthToken];

  return oauthToken;
}

- (void)setOAuth2Token:(id)token refreshToken:(id)refreshToken
{
  tokenCopy = token;
  refreshTokenCopy = refreshToken;
  credential = [(ECAccount *)self credential];
  if (!credential)
  {
    credential = objc_alloc_init(MEMORY[0x277CB8F38]);
  }

  [credential setOauthToken:tokenCopy];
  [credential setOauthRefreshToken:refreshTokenCopy];
  systemAccount = [(ECAccount *)self systemAccount];
  [systemAccount setCredential:credential];
}

- (id)enabledDataclasses
{
  systemAccount = [(ECAccount *)self systemAccount];
  enabledDataclasses = [systemAccount enabledDataclasses];
  allObjects = [enabledDataclasses allObjects];

  return allObjects;
}

- (BOOL)isEnabledForDataclass:(id)dataclass
{
  dataclassCopy = dataclass;
  systemAccount = [(ECAccount *)self systemAccount];
  v6 = [systemAccount isEnabledForDataclass:dataclassCopy];

  return v6;
}

- (BOOL)isAppleAccount
{
  _cachedParentAccount = [(ECAccount *)self _cachedParentAccount];
  systemAccount = [(ECAccount *)self systemAccount];
  accountType = [systemAccount accountType];
  identifier = [accountType identifier];
  v7 = *MEMORY[0x277CB8BA0];
  if ([identifier isEqualToString:*MEMORY[0x277CB8BA0]])
  {
    v8 = 1;
  }

  else
  {
    accountType2 = [_cachedParentAccount accountType];
    identifier2 = [accountType2 identifier];
    v8 = [identifier2 isEqualToString:v7];
  }

  return v8;
}

- (BOOL)isYahooAccount
{
  _cachedParentAccount = [(ECAccount *)self _cachedParentAccount];
  systemAccount = [(ECAccount *)self systemAccount];
  accountType = [systemAccount accountType];
  identifier = [accountType identifier];
  v7 = *MEMORY[0x277CB8D38];
  if ([identifier isEqualToString:*MEMORY[0x277CB8D38]])
  {
    v8 = 1;
  }

  else
  {
    accountType2 = [_cachedParentAccount accountType];
    identifier2 = [accountType2 identifier];
    v8 = [identifier2 isEqualToString:v7];
  }

  return v8;
}

- (BOOL)isGmailAccount
{
  _cachedParentAccount = [(ECAccount *)self _cachedParentAccount];
  systemAccount = [(ECAccount *)self systemAccount];
  accountType = [systemAccount accountType];
  identifier = [accountType identifier];
  v7 = *MEMORY[0x277CB8C40];
  if ([identifier isEqualToString:*MEMORY[0x277CB8C40]])
  {
    v8 = 1;
  }

  else
  {
    accountType2 = [_cachedParentAccount accountType];
    identifier2 = [accountType2 identifier];
    v8 = [identifier2 isEqualToString:v7];
  }

  return v8;
}

- (BOOL)isExchangeAccount
{
  _cachedParentAccount = [(ECAccount *)self _cachedParentAccount];
  systemAccount = [(ECAccount *)self systemAccount];
  accountType = [systemAccount accountType];
  identifier = [accountType identifier];
  v7 = *MEMORY[0x277CB8C00];
  if ([identifier isEqualToString:*MEMORY[0x277CB8C00]])
  {
    v8 = 1;
  }

  else
  {
    accountType2 = [_cachedParentAccount accountType];
    identifier2 = [accountType2 identifier];
    v8 = [identifier2 isEqualToString:v7];
  }

  return v8;
}

- (BOOL)isOutlookAccount
{
  _cachedParentAccount = [(ECAccount *)self _cachedParentAccount];
  systemAccount = [(ECAccount *)self systemAccount];
  accountType = [systemAccount accountType];
  identifier = [accountType identifier];
  v7 = *MEMORY[0x277CB8C50];
  if ([identifier isEqualToString:*MEMORY[0x277CB8C50]])
  {
    v8 = 1;
  }

  else
  {
    accountType2 = [_cachedParentAccount accountType];
    identifier2 = [accountType2 identifier];
    v8 = [identifier2 isEqualToString:v7];
  }

  return v8;
}

- (BOOL)isAOLAccount
{
  _cachedParentAccount = [(ECAccount *)self _cachedParentAccount];
  systemAccount = [(ECAccount *)self systemAccount];
  accountType = [systemAccount accountType];
  identifier = [accountType identifier];
  v7 = *MEMORY[0x277CB8B98];
  if ([identifier isEqualToString:*MEMORY[0x277CB8B98]])
  {
    v8 = 1;
  }

  else
  {
    accountType2 = [_cachedParentAccount accountType];
    identifier2 = [accountType2 identifier];
    v8 = [identifier2 isEqualToString:v7];
  }

  return v8;
}

- (BOOL)isPersonaAccount
{
  personaIdentifier = [(ECAccount *)self personaIdentifier];
  v3 = personaIdentifier != 0;

  return v3;
}

- (NSString)authenticationScheme
{
  systemAccount = [(ECAccount *)self systemAccount];
  v3 = [systemAccount objectForKeyedSubscript:*MEMORY[0x277CB8A78]];

  return v3;
}

- (void)setAuthenticationScheme:(id)scheme
{
  schemeCopy = scheme;
  systemAccount = [(ECAccount *)self systemAccount];
  v5 = *MEMORY[0x277CB8A78];
  v6 = [systemAccount objectForKeyedSubscript:*MEMORY[0x277CB8A78]];
  if (v6 != schemeCopy && ([schemeCopy isEqualToString:v6] & 1) == 0)
  {
    [systemAccount setObject:schemeCopy forKeyedSubscript:v5];
  }
}

- (BOOL)allowInsecureAuthentication
{
  systemAccount = [(ECAccount *)self systemAccount];
  v3 = [systemAccount objectForKeyedSubscript:*MEMORY[0x277CB8A68]];

  LOBYTE(systemAccount) = [v3 BOOLValue];
  return systemAccount;
}

- (BOOL)configureDynamically
{
  oauthToken = [(ECAccount *)self oauthToken];

  if (oauthToken)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    systemAccount = [(ECAccount *)self systemAccount];
    v6 = [systemAccount objectForKeyedSubscript:*MEMORY[0x277CB8AA0]];

    v4 = [v6 BOOLValue] ^ 1;
  }

  return v4;
}

- (void)setConfigureDynamically:(BOOL)dynamically
{
  dynamicallyCopy = dynamically;
  oauthToken = [(ECAccount *)self oauthToken];

  if (!oauthToken)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:!dynamicallyCopy];
    systemAccount = [(ECAccount *)self systemAccount];
    [systemAccount setObject:v7 forKeyedSubscript:*MEMORY[0x277CB8AA0]];
  }
}

- (BOOL)hasPasswordCredential
{
  systemAccount = [(ECAccount *)self systemAccount];
  credential = [systemAccount credential];
  credentialType = [credential credentialType];
  v5 = [credentialType isEqualToString:*MEMORY[0x277CB8DA0]];

  return v5;
}

- (BOOL)isAuthenticated
{
  systemAccount = [(ECAccount *)self systemAccount];
  isAuthenticated = [systemAccount isAuthenticated];

  return isAuthenticated;
}

- (void)refresh
{
  systemAccount = [(ECAccount *)self systemAccount];
  [systemAccount refresh];
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = ECAccount;
  v4 = [(ECAccount *)&v9 description];
  identifier = [(ECAccount *)self identifier];
  properties = [(ECAccount *)self properties];
  v7 = [v3 stringWithFormat:@"<%@> identifier=%@ properties=%@", v4, identifier, properties];

  return v7;
}

- (int64_t)numberOfDaysToKeepTrash
{
  dataclassProperties = [(ECAccount *)self dataclassProperties];
  v3 = [dataclassProperties objectForKeyedSubscript:@"NumberOfDaysToKeepTrash"];

  if (v3)
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = -1;
  }

  return integerValue;
}

- (void)setNumberOfDaysToKeepTrash:(int64_t)trash
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:trash];
  [ECAccount setDataClassProperty:"setDataClassProperty:forKey:" forKey:?];
}

- (int64_t)numberOfDaysToKeepJunk
{
  dataclassProperties = [(ECAccount *)self dataclassProperties];
  v3 = [dataclassProperties objectForKeyedSubscript:@"NumberOfDaysToKeepJunk"];

  if (v3)
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = -1;
  }

  return integerValue;
}

- (void)setNumberOfDaysToKeepJunk:(int64_t)junk
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:junk];
  [ECAccount setDataClassProperty:"setDataClassProperty:forKey:" forKey:?];
}

- (BOOL)deleteMessagesInPlace
{
  dataclassProperties = [(ECAccount *)self dataclassProperties];
  v3 = [dataclassProperties objectForKeyedSubscript:@"DeleteMessagesInPlace"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (NSString)draftsMailboxName
{
  dataclassProperties = [(ECAccount *)self dataclassProperties];
  v3 = [dataclassProperties objectForKeyedSubscript:@"DraftsMailboxName"];

  return v3;
}

- (NSString)outboxMailboxName
{
  dataclassProperties = [(ECAccount *)self dataclassProperties];
  v3 = [dataclassProperties objectForKeyedSubscript:@"OutboxMailboxName"];

  return v3;
}

- (NSString)sentMessagesMailboxName
{
  dataclassProperties = [(ECAccount *)self dataclassProperties];
  v3 = [dataclassProperties objectForKeyedSubscript:@"SentMessagesMailboxName"];

  return v3;
}

- (NSString)trashMailboxName
{
  dataclassProperties = [(ECAccount *)self dataclassProperties];
  v3 = [dataclassProperties objectForKeyedSubscript:@"TrashMailboxName"];

  return v3;
}

- (NSString)junkMailboxName
{
  dataclassProperties = [(ECAccount *)self dataclassProperties];
  v3 = [dataclassProperties objectForKeyedSubscript:@"JunkMailboxName"];

  return v3;
}

- (NSString)notesMailboxName
{
  dataclassProperties = [(ECAccount *)self dataclassProperties];
  v3 = [dataclassProperties objectForKeyedSubscript:@"NotesMailboxName"];

  return v3;
}

- (NSString)toDosMailboxName
{
  dataclassProperties = [(ECAccount *)self dataclassProperties];
  v3 = [dataclassProperties objectForKeyedSubscript:@"ToDosMailboxName"];

  return v3;
}

- (NSString)archiveMailboxName
{
  dataclassProperties = [(ECAccount *)self dataclassProperties];
  v3 = [dataclassProperties objectForKeyedSubscript:@"ArchiveMailboxName"];

  return v3;
}

- (NSDictionary)dataclassProperties
{
  systemAccount = [(ECAccount *)self systemAccount];
  v3 = [systemAccount propertiesForDataclass:*MEMORY[0x277CB9150]];

  return v3;
}

- (id)dataClassPropertyForKey:(id)key
{
  keyCopy = key;
  dataclassProperties = [(ECAccount *)self dataclassProperties];
  v6 = [dataclassProperties objectForKeyedSubscript:keyCopy];

  return v6;
}

- (void)setDataClassProperty:(id)property forKey:(id)key
{
  propertyCopy = property;
  keyCopy = key;
  v7 = objc_alloc(MEMORY[0x277CBEB38]);
  dataclassProperties = [(ECAccount *)self dataclassProperties];
  v9 = [v7 initWithDictionary:dataclassProperties];

  [v9 setObject:propertyCopy forKeyedSubscript:keyCopy];
  systemAccount = [(ECAccount *)self systemAccount];
  [systemAccount setProperties:v9 forDataclass:*MEMORY[0x277CB9150]];
}

- (id)portNumberObject
{
  systemAccount = [(ECAccount *)self systemAccount];
  v3 = [systemAccount objectForKeyedSubscript:*MEMORY[0x277CB8B20]];

  return v3;
}

- (int64_t)portNumber
{
  portNumberObject = [(ECAccount *)self portNumberObject];
  integerValue = [portNumberObject integerValue];

  return integerValue;
}

- (void)setPortNumber:(int64_t)number
{
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:number];
  systemAccount = [(ECAccount *)self systemAccount];
  [systemAccount setObject:v5 forKeyedSubscript:*MEMORY[0x277CB8B20]];
}

- (NSArray)standardPorts
{
  v2 = objc_opt_class();

  return [v2 standardPorts];
}

- (NSArray)standardSSLPorts
{
  v2 = objc_opt_class();

  return [v2 standardSSLPorts];
}

- (id)usesSSLObject
{
  systemAccount = [(ECAccount *)self systemAccount];
  v3 = [systemAccount objectForKeyedSubscript:*MEMORY[0x277CB8B48]];

  return v3;
}

- (BOOL)usesSSL
{
  usesSSLObject = [(ECAccount *)self usesSSLObject];
  bOOLValue = [usesSSLObject BOOLValue];

  return bOOLValue;
}

- (void)clearUsesSSL
{
  systemAccount = [(ECAccount *)self systemAccount];
  [systemAccount setObject:0 forKeyedSubscript:*MEMORY[0x277CB8B48]];
}

- (BOOL)sslIsDirect
{
  systemAccount = [(ECAccount *)self systemAccount];
  v3 = [systemAccount objectForKeyedSubscript:*MEMORY[0x277CB8B50]];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)setSslIsDirectIsSet
{
  systemAccount = [(ECAccount *)self systemAccount];
  v3 = [systemAccount objectForKeyedSubscript:*MEMORY[0x277CB8B50]];
  v4 = v3 != 0;

  return v4;
}

- (void)clearSSLIsDirect
{
  systemAccount = [(ECAccount *)self systemAccount];
  [systemAccount setObject:0 forKeyedSubscript:*MEMORY[0x277CB8B50]];
}

- (BOOL)_cachedEnabled
{
  cache = [(ECAccount *)self cache];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __27__ECAccount__cachedEnabled__block_invoke;
  v6[3] = &unk_27874B560;
  v6[4] = self;
  v4 = [cache objectForKey:@"ECAccountCacheKeyEnabled" generator:v6];

  LOBYTE(cache) = [v4 BOOLValue];
  return cache;
}

uint64_t __27__ECAccount__cachedEnabled__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) systemAccount];
  v3 = *MEMORY[0x277CB9150];
  if ([v2 isEnabledForDataclass:*MEMORY[0x277CB9150]])
  {
    v4 = 1;
  }

  else
  {
    v5 = [*(a1 + 32) systemAccount];
    v6 = [v5 parentAccount];
    v4 = [v6 isEnabledForDataclass:v3];
  }

  v7 = MEMORY[0x277CCABB0];

  return [v7 numberWithBool:v4];
}

- (NSString)ef_publicDescription
{
  currentDevice = [MEMORY[0x277D07148] currentDevice];
  isInternal = [currentDevice isInternal];

  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  if (isInternal)
  {
    accountTypeIdentifier = [(ECAccount *)self accountTypeIdentifier];
    identifier = [(ECAccount *)self identifier];
    v9 = [v5 stringWithFormat:@"<%@ %p> accountTypeIdentifier=%@ identifier=%@", v6, self, accountTypeIdentifier, identifier];
  }

  else
  {
    accountTypeIdentifier = [(ECAccount *)self identifier];
    v9 = [v5 stringWithFormat:@"<%@ %p> identifier=%@", v6, self, accountTypeIdentifier];
  }

  return v9;
}

@end