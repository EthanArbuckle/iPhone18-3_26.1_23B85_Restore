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
- (BOOL)isEnabledForDataclass:(id)a3;
- (BOOL)isExchangeAccount;
- (BOOL)isGmailAccount;
- (BOOL)isOutlookAccount;
- (BOOL)isPersonaAccount;
- (BOOL)isYahooAccount;
- (BOOL)setSslIsDirectIsSet;
- (BOOL)sslIsDirect;
- (BOOL)usesSSL;
- (ECAccount)initWithSystemAccount:(id)a3 accountStore:(id)a4;
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
- (id)dataClassPropertyForKey:(id)a3;
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
- (void)renewCredentialsWithOptions:(id)a3 completionHandler:(id)a4;
- (void)setAuthenticationScheme:(id)a3;
- (void)setConfigureDynamically:(BOOL)a3;
- (void)setDataClassProperty:(id)a3 forKey:(id)a4;
- (void)setHostname:(id)a3;
- (void)setNumberOfDaysToKeepJunk:(int64_t)a3;
- (void)setNumberOfDaysToKeepTrash:(int64_t)a3;
- (void)setOAuth2Token:(id)a3 refreshToken:(id)a4;
- (void)setPassword:(id)a3;
- (void)setPortNumber:(int64_t)a3;
@end

@implementation ECAccount

- (BOOL)isAppleEmployeeAccount
{
  v2 = [(ECAccount *)self hostname];
  v3 = ![v2 caseInsensitiveCompare:@"mail.apple.com"] || !objc_msgSend(v2, "caseInsensitiveCompare:", @"mailpex.apple.com") || objc_msgSend(v2, "caseInsensitiveCompare:", @"mailex16.apple.com") == 0;

  return v3;
}

- (NSString)hostname
{
  v3 = [(ECAccount *)self systemAccount];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CB8AC8]];

  if (!v4)
  {
    v5 = [(ECAccount *)self _cachedParentAccount];
    if (v5)
    {
      v4 = [(ECAccount *)self _hostnameFromParentAccount:v5];
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
  v2 = [(ECAccount *)self cache];
  [v2 removeAllObjects];
}

- (NSString)personaIdentifier
{
  v3 = [(ECAccount *)self systemAccount];
  v4 = *MEMORY[0x277CB8B18];
  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x277CB8B18]];

  if (!v5)
  {
    v6 = [(ECAccount *)self _cachedParentAccount];
    v7 = v6;
    if (v6)
    {
      v5 = [v6 objectForKeyedSubscript:v4];
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
  v3 = [(ECAccount *)self cache];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __33__ECAccount__cachedParentAccount__block_invoke;
  v8[3] = &unk_27874B560;
  v8[4] = self;
  v4 = [v3 objectForKey:@"ECAccountCacheKeyParentAccount" generator:v8];

  v5 = [MEMORY[0x277CBEB68] null];

  if (v4 == v5)
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
  block[4] = a1;
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

- (ECAccount)initWithSystemAccount:(id)a3 accountStore:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = ECAccount;
  v9 = [(ECAccount *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_systemAccount, a3);
    if (v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = [MEMORY[0x277CB8F48] defaultStore];
    }

    accountStore = v10->_accountStore;
    v10->_accountStore = v11;

    v13 = objc_alloc_init(MEMORY[0x277D07160]);
    cache = v10->_cache;
    v10->_cache = v13;
  }

  return v10;
}

- (void)renewCredentialsWithOptions:(id)a3 completionHandler:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(ECAccount *)self accountStore];
  v8 = [(ECAccount *)self systemAccount];
  [v7 renewCredentialsForAccount:v8 options:v9 completion:v6];
}

- (NSString)accountTypeIdentifier
{
  v2 = [(ECAccount *)self systemAccount];
  v3 = [v2 accountType];
  v4 = [v3 identifier];

  return v4;
}

- (NSString)identifier
{
  v2 = [(ECAccount *)self systemAccount];
  v3 = [v2 identifier];

  return v3;
}

- (ACAccountCredential)credential
{
  v2 = [(ECAccount *)self systemAccount];
  v3 = [v2 credential];

  return v3;
}

- (void)setHostname:(id)a3
{
  v10 = a3;
  if ([v10 length])
  {
    v5 = [v10 ef_stringWithNoExtraSpaces];

    v10 = v5;
  }

  v6 = [(ECAccount *)self hostname];
  if (v10 != v6 && ([v10 isEqual:v6] & 1) == 0)
  {
    if (![v10 length])
    {

      v10 = 0;
    }

    v7 = [(ECAccount *)self systemAccount];
    v8 = [(ECAccount *)self _cachedParentAccount];
    if (v8)
    {
      v9 = [MEMORY[0x277CCA890] currentHandler];
      [v9 handleFailureInMethod:a2 object:self file:@"ECAccount.m" lineNumber:97 description:@"Unexpected override of the hostname from the parent"];
    }

    [v7 setObject:v10 forKeyedSubscript:*MEMORY[0x277CB8AC8]];
  }
}

- (NSString)username
{
  v2 = [(ECAccount *)self systemAccount];
  v3 = [v2 username];

  return v3;
}

- (NSString)password
{
  v2 = [(ECAccount *)self systemAccount];
  v3 = [v2 credential];
  v4 = [v3 password];

  return v4;
}

- (void)setPassword:(id)a3
{
  v8 = a3;
  v4 = [(ECAccount *)self systemAccount];
  v5 = [v4 credential];
  v6 = [v5 password];
  if (v6 != v8 && ([v6 isEqualToString:v8] & 1) == 0)
  {
    if (v5)
    {
      [v5 setPassword:v8];
      [v5 setCredentialType:*MEMORY[0x277CB8DA0]];
    }

    else
    {
      v7 = [objc_alloc(MEMORY[0x277CB8F38]) initWithPassword:v8];
      [v4 setCredential:v7];
    }
  }
}

- (NSString)oauthToken
{
  v2 = [(ECAccount *)self systemAccount];
  v3 = [v2 credential];
  v4 = [v3 oauthToken];

  return v4;
}

- (void)setOAuth2Token:(id)a3 refreshToken:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(ECAccount *)self credential];
  if (!v7)
  {
    v7 = objc_alloc_init(MEMORY[0x277CB8F38]);
  }

  [v7 setOauthToken:v9];
  [v7 setOauthRefreshToken:v6];
  v8 = [(ECAccount *)self systemAccount];
  [v8 setCredential:v7];
}

- (id)enabledDataclasses
{
  v2 = [(ECAccount *)self systemAccount];
  v3 = [v2 enabledDataclasses];
  v4 = [v3 allObjects];

  return v4;
}

- (BOOL)isEnabledForDataclass:(id)a3
{
  v4 = a3;
  v5 = [(ECAccount *)self systemAccount];
  v6 = [v5 isEnabledForDataclass:v4];

  return v6;
}

- (BOOL)isAppleAccount
{
  v3 = [(ECAccount *)self _cachedParentAccount];
  v4 = [(ECAccount *)self systemAccount];
  v5 = [v4 accountType];
  v6 = [v5 identifier];
  v7 = *MEMORY[0x277CB8BA0];
  if ([v6 isEqualToString:*MEMORY[0x277CB8BA0]])
  {
    v8 = 1;
  }

  else
  {
    v9 = [v3 accountType];
    v10 = [v9 identifier];
    v8 = [v10 isEqualToString:v7];
  }

  return v8;
}

- (BOOL)isYahooAccount
{
  v3 = [(ECAccount *)self _cachedParentAccount];
  v4 = [(ECAccount *)self systemAccount];
  v5 = [v4 accountType];
  v6 = [v5 identifier];
  v7 = *MEMORY[0x277CB8D38];
  if ([v6 isEqualToString:*MEMORY[0x277CB8D38]])
  {
    v8 = 1;
  }

  else
  {
    v9 = [v3 accountType];
    v10 = [v9 identifier];
    v8 = [v10 isEqualToString:v7];
  }

  return v8;
}

- (BOOL)isGmailAccount
{
  v3 = [(ECAccount *)self _cachedParentAccount];
  v4 = [(ECAccount *)self systemAccount];
  v5 = [v4 accountType];
  v6 = [v5 identifier];
  v7 = *MEMORY[0x277CB8C40];
  if ([v6 isEqualToString:*MEMORY[0x277CB8C40]])
  {
    v8 = 1;
  }

  else
  {
    v9 = [v3 accountType];
    v10 = [v9 identifier];
    v8 = [v10 isEqualToString:v7];
  }

  return v8;
}

- (BOOL)isExchangeAccount
{
  v3 = [(ECAccount *)self _cachedParentAccount];
  v4 = [(ECAccount *)self systemAccount];
  v5 = [v4 accountType];
  v6 = [v5 identifier];
  v7 = *MEMORY[0x277CB8C00];
  if ([v6 isEqualToString:*MEMORY[0x277CB8C00]])
  {
    v8 = 1;
  }

  else
  {
    v9 = [v3 accountType];
    v10 = [v9 identifier];
    v8 = [v10 isEqualToString:v7];
  }

  return v8;
}

- (BOOL)isOutlookAccount
{
  v3 = [(ECAccount *)self _cachedParentAccount];
  v4 = [(ECAccount *)self systemAccount];
  v5 = [v4 accountType];
  v6 = [v5 identifier];
  v7 = *MEMORY[0x277CB8C50];
  if ([v6 isEqualToString:*MEMORY[0x277CB8C50]])
  {
    v8 = 1;
  }

  else
  {
    v9 = [v3 accountType];
    v10 = [v9 identifier];
    v8 = [v10 isEqualToString:v7];
  }

  return v8;
}

- (BOOL)isAOLAccount
{
  v3 = [(ECAccount *)self _cachedParentAccount];
  v4 = [(ECAccount *)self systemAccount];
  v5 = [v4 accountType];
  v6 = [v5 identifier];
  v7 = *MEMORY[0x277CB8B98];
  if ([v6 isEqualToString:*MEMORY[0x277CB8B98]])
  {
    v8 = 1;
  }

  else
  {
    v9 = [v3 accountType];
    v10 = [v9 identifier];
    v8 = [v10 isEqualToString:v7];
  }

  return v8;
}

- (BOOL)isPersonaAccount
{
  v2 = [(ECAccount *)self personaIdentifier];
  v3 = v2 != 0;

  return v3;
}

- (NSString)authenticationScheme
{
  v2 = [(ECAccount *)self systemAccount];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277CB8A78]];

  return v3;
}

- (void)setAuthenticationScheme:(id)a3
{
  v7 = a3;
  v4 = [(ECAccount *)self systemAccount];
  v5 = *MEMORY[0x277CB8A78];
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x277CB8A78]];
  if (v6 != v7 && ([v7 isEqualToString:v6] & 1) == 0)
  {
    [v4 setObject:v7 forKeyedSubscript:v5];
  }
}

- (BOOL)allowInsecureAuthentication
{
  v2 = [(ECAccount *)self systemAccount];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277CB8A68]];

  LOBYTE(v2) = [v3 BOOLValue];
  return v2;
}

- (BOOL)configureDynamically
{
  v3 = [(ECAccount *)self oauthToken];

  if (v3)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v5 = [(ECAccount *)self systemAccount];
    v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277CB8AA0]];

    v4 = [v6 BOOLValue] ^ 1;
  }

  return v4;
}

- (void)setConfigureDynamically:(BOOL)a3
{
  v3 = a3;
  v5 = [(ECAccount *)self oauthToken];

  if (!v5)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:!v3];
    v6 = [(ECAccount *)self systemAccount];
    [v6 setObject:v7 forKeyedSubscript:*MEMORY[0x277CB8AA0]];
  }
}

- (BOOL)hasPasswordCredential
{
  v2 = [(ECAccount *)self systemAccount];
  v3 = [v2 credential];
  v4 = [v3 credentialType];
  v5 = [v4 isEqualToString:*MEMORY[0x277CB8DA0]];

  return v5;
}

- (BOOL)isAuthenticated
{
  v2 = [(ECAccount *)self systemAccount];
  v3 = [v2 isAuthenticated];

  return v3;
}

- (void)refresh
{
  v2 = [(ECAccount *)self systemAccount];
  [v2 refresh];
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = ECAccount;
  v4 = [(ECAccount *)&v9 description];
  v5 = [(ECAccount *)self identifier];
  v6 = [(ECAccount *)self properties];
  v7 = [v3 stringWithFormat:@"<%@> identifier=%@ properties=%@", v4, v5, v6];

  return v7;
}

- (int64_t)numberOfDaysToKeepTrash
{
  v2 = [(ECAccount *)self dataclassProperties];
  v3 = [v2 objectForKeyedSubscript:@"NumberOfDaysToKeepTrash"];

  if (v3)
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (void)setNumberOfDaysToKeepTrash:(int64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [ECAccount setDataClassProperty:"setDataClassProperty:forKey:" forKey:?];
}

- (int64_t)numberOfDaysToKeepJunk
{
  v2 = [(ECAccount *)self dataclassProperties];
  v3 = [v2 objectForKeyedSubscript:@"NumberOfDaysToKeepJunk"];

  if (v3)
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (void)setNumberOfDaysToKeepJunk:(int64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [ECAccount setDataClassProperty:"setDataClassProperty:forKey:" forKey:?];
}

- (BOOL)deleteMessagesInPlace
{
  v2 = [(ECAccount *)self dataclassProperties];
  v3 = [v2 objectForKeyedSubscript:@"DeleteMessagesInPlace"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (NSString)draftsMailboxName
{
  v2 = [(ECAccount *)self dataclassProperties];
  v3 = [v2 objectForKeyedSubscript:@"DraftsMailboxName"];

  return v3;
}

- (NSString)outboxMailboxName
{
  v2 = [(ECAccount *)self dataclassProperties];
  v3 = [v2 objectForKeyedSubscript:@"OutboxMailboxName"];

  return v3;
}

- (NSString)sentMessagesMailboxName
{
  v2 = [(ECAccount *)self dataclassProperties];
  v3 = [v2 objectForKeyedSubscript:@"SentMessagesMailboxName"];

  return v3;
}

- (NSString)trashMailboxName
{
  v2 = [(ECAccount *)self dataclassProperties];
  v3 = [v2 objectForKeyedSubscript:@"TrashMailboxName"];

  return v3;
}

- (NSString)junkMailboxName
{
  v2 = [(ECAccount *)self dataclassProperties];
  v3 = [v2 objectForKeyedSubscript:@"JunkMailboxName"];

  return v3;
}

- (NSString)notesMailboxName
{
  v2 = [(ECAccount *)self dataclassProperties];
  v3 = [v2 objectForKeyedSubscript:@"NotesMailboxName"];

  return v3;
}

- (NSString)toDosMailboxName
{
  v2 = [(ECAccount *)self dataclassProperties];
  v3 = [v2 objectForKeyedSubscript:@"ToDosMailboxName"];

  return v3;
}

- (NSString)archiveMailboxName
{
  v2 = [(ECAccount *)self dataclassProperties];
  v3 = [v2 objectForKeyedSubscript:@"ArchiveMailboxName"];

  return v3;
}

- (NSDictionary)dataclassProperties
{
  v2 = [(ECAccount *)self systemAccount];
  v3 = [v2 propertiesForDataclass:*MEMORY[0x277CB9150]];

  return v3;
}

- (id)dataClassPropertyForKey:(id)a3
{
  v4 = a3;
  v5 = [(ECAccount *)self dataclassProperties];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (void)setDataClassProperty:(id)a3 forKey:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = objc_alloc(MEMORY[0x277CBEB38]);
  v8 = [(ECAccount *)self dataclassProperties];
  v9 = [v7 initWithDictionary:v8];

  [v9 setObject:v11 forKeyedSubscript:v6];
  v10 = [(ECAccount *)self systemAccount];
  [v10 setProperties:v9 forDataclass:*MEMORY[0x277CB9150]];
}

- (id)portNumberObject
{
  v2 = [(ECAccount *)self systemAccount];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277CB8B20]];

  return v3;
}

- (int64_t)portNumber
{
  v2 = [(ECAccount *)self portNumberObject];
  v3 = [v2 integerValue];

  return v3;
}

- (void)setPortNumber:(int64_t)a3
{
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v4 = [(ECAccount *)self systemAccount];
  [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x277CB8B20]];
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
  v2 = [(ECAccount *)self systemAccount];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277CB8B48]];

  return v3;
}

- (BOOL)usesSSL
{
  v2 = [(ECAccount *)self usesSSLObject];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)clearUsesSSL
{
  v2 = [(ECAccount *)self systemAccount];
  [v2 setObject:0 forKeyedSubscript:*MEMORY[0x277CB8B48]];
}

- (BOOL)sslIsDirect
{
  v2 = [(ECAccount *)self systemAccount];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277CB8B50]];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)setSslIsDirectIsSet
{
  v2 = [(ECAccount *)self systemAccount];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277CB8B50]];
  v4 = v3 != 0;

  return v4;
}

- (void)clearSSLIsDirect
{
  v2 = [(ECAccount *)self systemAccount];
  [v2 setObject:0 forKeyedSubscript:*MEMORY[0x277CB8B50]];
}

- (BOOL)_cachedEnabled
{
  v3 = [(ECAccount *)self cache];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __27__ECAccount__cachedEnabled__block_invoke;
  v6[3] = &unk_27874B560;
  v6[4] = self;
  v4 = [v3 objectForKey:@"ECAccountCacheKeyEnabled" generator:v6];

  LOBYTE(v3) = [v4 BOOLValue];
  return v3;
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
  v3 = [MEMORY[0x277D07148] currentDevice];
  v4 = [v3 isInternal];

  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  if (v4)
  {
    v7 = [(ECAccount *)self accountTypeIdentifier];
    v8 = [(ECAccount *)self identifier];
    v9 = [v5 stringWithFormat:@"<%@ %p> accountTypeIdentifier=%@ identifier=%@", v6, self, v7, v8];
  }

  else
  {
    v7 = [(ECAccount *)self identifier];
    v9 = [v5 stringWithFormat:@"<%@ %p> identifier=%@", v6, self, v7];
  }

  return v9;
}

@end