@interface CastleIMAPAccount
+ (id)newChildAccountWithParentAccount:(id)account error:(id *)error;
- (BOOL)canAttemptPushRegistration;
- (BOOL)canReceiveNewMailNotifications;
- (BOOL)checkAndSetDefaultEmailAddress:(id)address;
- (BOOL)isEnabledForDataclass:(id)dataclass;
- (BOOL)isEquivalentTo:(id)to hostname:(id)hostname username:(id)username;
- (BOOL)shouldFetchRemoteLinksWithDateReceived:(id)received;
- (BOOL)shouldRegisterForPush;
- (BOOL)usesSSL;
- (CastleIMAPAccount)initWithLibrary:(id)library persistentAccount:(id)account;
- (NSString)clientInfo;
- (NSString)personID;
- (id)_deliveryAccountCreateIfNeeded:(BOOL)needed;
- (id)_fromEmailAddressesIncludingDisabled:(id)disabled;
- (id)_mailPropertyFromAppleAccountForKey:(uint64_t)key;
- (id)accountStore;
- (id)anisetteDataWithError:(id *)error;
- (id)appleAccount;
- (id)appleID2AuthDataWithHeaders:(void *)headers;
- (id)authTokenWithError:(void *)error;
- (id)checkAndSetLocalDefaultEmailAddress:(id)address;
- (id)deliveryHostname;
- (id)displayName;
- (id)emailAddressStrings;
- (id)emailAddressesAndAliasesList;
- (id)firstEmailAddress;
- (id)makeAppleIDSession;
- (id)username;
- (uint64_t)_emailAliasesAreStale;
- (uint64_t)_resetAppleAccount;
- (uint64_t)deliveryPortNumber;
- (uint64_t)deliveryUsesSSL;
- (unint64_t)credentialAccessibility;
- (unsigned)portNumber;
- (void)_emailAliasesAreStale;
- (void)_updateEmailAddressAndAliases;
- (void)_updateEmailAddressAndAliasesWithResult:(void *)result;
- (void)appleID2AuthWithCompletion:(id)completion;
- (void)dealloc;
- (void)handleAlertResponse:(id)response;
- (void)handleOverQuotaResponse:(id)response;
- (void)invalidateEmailAliases;
- (void)persistentAccountDidChange:(id)change previousAccount:(id)account;
- (void)pushUpdateForAliasData;
- (void)setLocallyEnabled:(void *)enabled forEmailAddress:;
- (void)setUsername:(id)username;
- (void)startListeningForNotifications;
- (void)updateEmailAliasesIfNeeded;
@end

@implementation CastleIMAPAccount

- (BOOL)shouldFetchRemoteLinksWithDateReceived:(id)received
{
  receivedCopy = received;
  if (+[MFMailMessageLibrary canUsePersistence]&& [(IMAPAccount *)self supportsAppleRemoteLinks])
  {
    v5 = +[MFMailMessageLibrary defaultInstance];
    persistence = [v5 persistence];
    remoteContentManager = [persistence remoteContentManager];

    v8 = [remoteContentManager shouldAddRemoteContentLinksForMessageWithDateReceived:receivedCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CastleIMAPAccount)initWithLibrary:(id)library persistentAccount:(id)account
{
  libraryCopy = library;
  accountCopy = account;
  v25.receiver = self;
  v25.super_class = CastleIMAPAccount;
  v8 = [(IMAPAccount *)&v25 initWithLibrary:libraryCopy persistentAccount:accountCopy];
  if (v8)
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [v9 stringWithFormat:@"%@-%p", v11, v8];

    v13 = [objc_alloc(MEMORY[0x1E69AD6D8]) initWithName:v12 andDelegate:0];
    appleAccountLock = v8->_appleAccountLock;
    v8->_appleAccountLock = v13;

    v15 = objc_alloc(MEMORY[0x1E699B710]);
    parentAccount = [accountCopy parentAccount];
    v17 = [v15 initWithAppleAccount:parentAccount];
    aliasSupport = v8->_aliasSupport;
    v8->_aliasSupport = v17;

    v19 = [MFCastleEmailAliasUpdater alloc];
    identifier = [(MFAccount *)v8 identifier];
    v21 = [(MFCastleEmailAliasUpdater *)v19 initWithAccountID:identifier aliasSupport:v8->_aliasSupport];
    aliasUpdater = v8->_aliasUpdater;
    v8->_aliasUpdater = v21;

    v8->_deliveryAccountLock._os_unfair_lock_opaque = 0;
    v23 = v8;
  }

  return v8;
}

- (void)dealloc
{
  [(CastleIMAPAccount *)self _resetAppleAccount];
  v3.receiver = self;
  v3.super_class = CastleIMAPAccount;
  [(IMAPAccount *)&v3 dealloc];
}

- (uint64_t)_resetAppleAccount
{
  if (result)
  {
    v1 = result;
    [*(result + 416) lock];
    if (*(v1 + 424))
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      accountStore = [(CastleIMAPAccount *)v1 accountStore];
      [defaultCenter removeObserver:v1 name:*MEMORY[0x1E69597D8] object:accountStore];

      v4 = *(v1 + 424);
      *(v1 + 424) = 0;
    }

    return [(CastleIMAPAccount *)v1 _resetAppleAccount];
  }

  return result;
}

- (BOOL)isEquivalentTo:(id)to hostname:(id)hostname username:(id)username
{
  toCopy = to;
  usernameCopy = username;
  if ([(MailAccount *)self isAccountClassEquivalentTo:toCopy])
  {
    v9 = [(MailAccount *)self isUsernameEquivalentTo:usernameCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)shouldRegisterForPush
{
  if ((*(self + 440) & 1) == 0)
  {
    return 0;
  }

  v3.receiver = self;
  v3.super_class = CastleIMAPAccount;
  return [(IMAPAccount *)&v3 shouldRegisterForPush];
}

- (BOOL)canAttemptPushRegistration
{
  v3.receiver = self;
  v3.super_class = CastleIMAPAccount;
  return [(IMAPAccount *)&v3 canAttemptPushRegistration];
}

- (BOOL)canReceiveNewMailNotifications
{
  v3.receiver = self;
  v3.super_class = CastleIMAPAccount;
  return [(IMAPAccount *)&v3 canReceiveNewMailNotifications];
}

- (void)startListeningForNotifications
{
  *(self + 440) &= ~1u;
  separatorChar = [(IMAPAccount *)self separatorChar];
  *(self + 440) |= 1u;
  v4.receiver = self;
  v4.super_class = CastleIMAPAccount;
  [(IMAPAccount *)&v4 startListeningForNotifications];
}

- (id)appleAccount
{
  if (self)
  {
    v2 = *(self + 416);
    if (!v2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_appleAccount object:self file:@"CastleIMAPAccount.m" lineNumber:231 description:{@"Invalid parameter not satisfying: %@", @"nil != _appleAccountLock"}];

      v2 = *(self + 416);
    }

    [v2 lock];
    v3 = *(self + 424);
    if (!v3)
    {
      persistentAccount = [self persistentAccount];
      parentAccount = [persistentAccount parentAccount];
      v6 = *(self + 424);
      *(self + 424) = parentAccount;

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      accountStore = [(CastleIMAPAccount *)self accountStore];
      [defaultCenter addObserver:self selector:sel__accountsChanged_ name:*MEMORY[0x1E69597D8] object:accountStore];

      v3 = *(self + 424);
    }

    v9 = v3;
    [*(self + 416) unlock];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)accountStore
{
  if (self)
  {
    v1 = +[MFAccountStore sharedAccountStore];
    persistentStore = [v1 persistentStore];
  }

  else
  {
    persistentStore = 0;
  }

  return persistentStore;
}

- (id)_mailPropertyFromAppleAccountForKey:(uint64_t)key
{
  v3 = a2;
  if (key)
  {
    appleAccount = [(CastleIMAPAccount *)key appleAccount];
    v5 = [appleAccount propertiesForDataclass:*MEMORY[0x1E6959B28]];
    v6 = [v5 objectForKey:v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)newChildAccountWithParentAccount:(id)account error:(id *)error
{
  v43 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v6 = accountCopy;
  if (accountCopy)
  {
    v7 = *MEMORY[0x1E6959B28];
    v36 = [accountCopy propertiesForDataclass:*MEMORY[0x1E6959B28]];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    if (([v6 isProvisionedForDataclass:v7] & 1) == 0)
    {
      v8 = [MFError errorWithDomain:@"CastleIMAPErrorDomain" code:2 localizedDescription:0];
      if (v8)
      {
        goto LABEL_27;
      }
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    childAccounts = [v6 childAccounts];
    v10 = [childAccounts countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v10)
    {
      v11 = *v38;
      v12 = *MEMORY[0x1E6959898];
LABEL_6:
      v13 = 0;
      while (1)
      {
        if (*v38 != v11)
        {
          objc_enumerationMutation(childAccounts);
        }

        accountType = [*(*(&v37 + 1) + 8 * v13) accountType];
        identifier = [accountType identifier];
        v16 = [identifier isEqualToString:v12];

        if (v16)
        {
          break;
        }

        if (v10 == ++v13)
        {
          v10 = [childAccounts countByEnumeratingWithState:&v37 objects:v42 count:16];
          if (v10)
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }
      }

      v8 = [MFError errorWithDomain:@"CastleIMAPErrorDomain" code:1032 localizedDescription:0];

      if (v8)
      {
        goto LABEL_27;
      }
    }

    else
    {
LABEL_12:
    }

    v18 = [v36 objectForKey:@"Username"];
    if (v18)
    {
      [dictionary setObject:v18 forKey:@"Username"];
    }

    else
    {
      v8 = [MFError errorWithDomain:@"CastleIMAPErrorDomain" code:3 localizedDescription:0];
      if (v8)
      {
        goto LABEL_27;
      }
    }

    username = [v6 username];
    emailAddressValue = [username emailAddressValue];
    domain = [emailAddressValue domain];

    v22 = [v36 objectForKey:@"dotMacMailSupported"];
    bOOLValue = [v22 BOOLValue];

    if (((username != 0) & bOOLValue) == 1 && domain && [&unk_1F2774C20 containsObject:domain])
    {
      v24 = username;
    }

    else
    {
      v24 = [v36 objectForKey:@"EmailAddress"];
      if (!v24)
      {
        v8 = [MFError errorWithDomain:@"CastleIMAPErrorDomain" code:4 localizedDescription:0];
LABEL_26:

        if (!v8)
        {
          v27 = [v36 objectForKey:@"FullUserName"];
          if (v27)
          {
            goto LABEL_32;
          }

          v28 = objc_alloc_init(MEMORY[0x1E696ADF0]);
          aa_firstName = [v6 aa_firstName];
          [v28 setGivenName:aa_firstName];

          aa_lastName = [v6 aa_lastName];
          [v28 setFamilyName:aa_lastName];

          v27 = [MEMORY[0x1E696ADF8] localizedStringFromPersonNameComponents:v28 style:3 options:0];

          if (v27)
          {
LABEL_32:
            [dictionary setObject:v27 forKey:@"FullUserName"];
          }

          v17 = [objc_opt_class() accountWithProperties:dictionary];
          defaultPath = [v17 defaultPath];
          [v17 setPath:defaultPath];

          [v17 setUsesSSL:1];
          persistentAccount = [v17 persistentAccount];
          [persistentAccount setParentAccount:v6];
          [persistentAccount setAuthenticationType:*MEMORY[0x1E6959AC8]];

          v8 = 0;
          goto LABEL_34;
        }

LABEL_27:
        if (error)
        {
          v26 = v8;
          v17 = 0;
          *error = v8;
        }

        else
        {
          v17 = 0;
        }

LABEL_34:

        goto LABEL_35;
      }
    }

    v41 = v24;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
    [dictionary setValue:v25 forKey:@"EmailAddresses"];

    v8 = 0;
    goto LABEL_26;
  }

  v17 = 0;
LABEL_35:

  v33 = *MEMORY[0x1E69E9840];
  return v17;
}

- (void)persistentAccountDidChange:(id)change previousAccount:(id)account
{
  changeCopy = change;
  accountCopy = account;
  v8.receiver = self;
  v8.super_class = CastleIMAPAccount;
  [(MailAccount *)&v8 persistentAccountDidChange:changeCopy previousAccount:accountCopy];
  [(CastleIMAPAccount *)self _resetAppleAccount];
}

- (unsigned)portNumber
{
  v2 = [(CastleIMAPAccount *)self _mailPropertyFromAppleAccountForKey:?];
  unsignedIntValue = [v2 unsignedIntValue];

  return unsignedIntValue;
}

- (BOOL)usesSSL
{
  v2 = [(CastleIMAPAccount *)self _mailPropertyFromAppleAccountForKey:?];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setUsername:(id)username
{
  usernameCopy = username;
  v5 = [objc_opt_class() accountPropertiesValueForKey:@"Username" value:usernameCopy];
  v6.receiver = self;
  v6.super_class = CastleIMAPAccount;
  [(MailAccount *)&v6 setUsername:v5];
}

- (id)username
{
  username = [(CastleIMAPAccount *)self _mailPropertyFromAppleAccountForKey:?];
  if (!username)
  {
    appleAccount = [(CastleIMAPAccount *)self appleAccount];

    if (appleAccount)
    {
      username = 0;
    }

    else
    {
      v6.receiver = self;
      v6.super_class = CastleIMAPAccount;
      username = [(MFAccount *)&v6 username];
    }
  }

  return username;
}

- (NSString)personID
{
  appleAccount = [(CastleIMAPAccount *)self appleAccount];
  aa_personID = [appleAccount aa_personID];

  return aa_personID;
}

- (id)makeAppleIDSession
{
  if (self)
  {
    v2 = objc_alloc(MEMORY[0x1E698DCC8]);
    sourceApplicationBundleIdentifier = [self sourceApplicationBundleIdentifier];
    v4 = [v2 initWithIdentifier:sourceApplicationBundleIdentifier];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)appleID2AuthDataWithHeaders:(void *)headers
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (headers && v3)
  {
    v6 = [v3 mutableCopy];
    authToken = [headers authToken];
    if (authToken)
    {
      [v6 setObject:authToken forKeyedSubscript:@"token"];
      v5 = v6;
      if (!v5)
      {
LABEL_14:

        goto LABEL_15;
      }

      v16 = 0;
      v8 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v5 options:10 error:&v16];
      v9 = v16;
      v10 = v9;
      if (v8)
      {

        personID = [headers personID];
        v12 = [personID dataUsingEncoding:4];

        if (v12)
        {
          v5 = [v12 mutableCopy];
          v15 = 0;
          [v5 appendBytes:&v15 length:1];
          [v5 appendData:v8];
        }

        else
        {
          v5 = 0;
        }

        goto LABEL_14;
      }

      v13 = MFLogGeneral();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(CastleIMAPAccount *)v10 appleID2AuthDataWithHeaders:v13];
      }
    }

    v5 = 0;
    goto LABEL_14;
  }

LABEL_15:

  return v5;
}

- (void)appleID2AuthWithCompletion:(id)completion
{
  completionCopy = completion;
  makeAppleIDSession = [(CastleIMAPAccount *)self makeAppleIDSession];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__CastleIMAPAccount_appleID2AuthWithCompletion___block_invoke;
  v7[3] = &unk_1E7AA2298;
  v7[4] = self;
  v6 = completionCopy;
  v8 = v6;
  [makeAppleIDSession appleIDHeadersWithCompletion:v7];
}

void __48__CastleIMAPAccount_appleID2AuthWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v7)
  {
    v6 = [(CastleIMAPAccount *)*(a1 + 32) appleID2AuthDataWithHeaders:v7];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (id)authTokenWithError:(void *)error
{
  v22 = *MEMORY[0x1E69E9840];
  if (error)
  {
    appleAccount = [(CastleIMAPAccount *)error appleAccount];
    v15 = 0;
    v5 = [appleAccount aa_authTokenWithError:&v15];
    v6 = v15;

    if (!v5 && v6)
    {
      v7 = MFLogGeneral();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        identifier = [error identifier];
        ef_publicDescription = [v6 ef_publicDescription];
        *buf = 138412802;
        v17 = v12;
        v18 = 2112;
        v19 = identifier;
        v20 = 2114;
        v21 = ef_publicDescription;
        _os_log_error_impl(&dword_1B0389000, v7, OS_LOG_TYPE_ERROR, "%@ (%@) failed to get auth token: %{public}@", buf, 0x20u);
      }

      if (a2)
      {
        v8 = v6;
        *a2 = v6;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v5;
}

- (NSString)clientInfo
{
  v2 = objc_alloc_init(MEMORY[0x1E698B890]);
  clientInfoHeader = [v2 clientInfoHeader];
  v4 = [clientInfoHeader copy];

  return v4;
}

- (unint64_t)credentialAccessibility
{
  v6 = 0;
  v2 = [(CastleIMAPAccount *)self authTokenWithError:?];
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

- (id)firstEmailAddress
{
  defaultEmailAddress = [(MailAccount *)self defaultEmailAddress];
  if (!defaultEmailAddress)
  {
    v5.receiver = self;
    v5.super_class = CastleIMAPAccount;
    defaultEmailAddress = [(MailAccount *)&v5 firstEmailAddress];
  }

  return defaultEmailAddress;
}

- (id)emailAddressStrings
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = CastleIMAPAccount;
  emailAddressStrings = [(MailAccount *)&v9 emailAddressStrings];
  if (![emailAddressStrings count])
  {
    v4 = [(CastleIMAPAccount *)self _mailPropertyFromAppleAccountForKey:?];
    v5 = v4;
    if (v4)
    {
      v10[0] = v4;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];

      emailAddressStrings = v6;
    }
  }

  v7 = *MEMORY[0x1E69E9840];

  return emailAddressStrings;
}

- (id)emailAddressesAndAliasesList
{
  emailAddressesAndAliases = [(MailAccount *)self emailAddressesAndAliases];
  allKeys = [emailAddressesAndAliases allKeys];

  return allKeys;
}

- (id)_fromEmailAddressesIncludingDisabled:(id)disabled
{
  disabledCopy = disabled;
  v32 = *MEMORY[0x1E69E9840];
  if (disabled)
  {
    emailAddressesDictionary = [disabled emailAddressesDictionary];
    receiveEmailAliasAddresses = [disabledCopy receiveEmailAliasAddresses];
    disabledCopy = [MEMORY[0x1E695DF70] array];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v4 = emailAddressesDictionary;
    v5 = [v4 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v5)
    {
      v6 = *v27;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v27 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v26 + 1) + 8 * i);
          if ((a2 & 1) == 0)
          {
            v9 = [v4 valueForKey:*(*(&v26 + 1) + 8 * i)];
            bOOLValue = [v9 BOOLValue];

            if (!bOOLValue)
            {
              continue;
            }
          }

          [disabledCopy addObject:v8];
        }

        v5 = [v4 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v5);
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = receiveEmailAliasAddresses;
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v12)
    {
      v13 = *v23;
      do
      {
        for (j = 0; j != v12; ++j)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v22 + 1) + 8 * j);
          if ((a2 & 1) == 0)
          {
            v16 = [v11 valueForKey:*(*(&v22 + 1) + 8 * j)];
            bOOLValue2 = [v16 BOOLValue];

            if (!bOOLValue2)
            {
              continue;
            }
          }

          [disabledCopy addObject:v15];
        }

        v12 = [v11 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v12);
    }
  }

  v18 = *MEMORY[0x1E69E9840];

  return disabledCopy;
}

- (void)handleAlertResponse:(id)response
{
  responseCopy = response;
  if ([@"Mailbox is over quota" isEqualToString:responseCopy])
  {
    [(CastleIMAPAccount *)self handleOverQuotaResponse:responseCopy];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = CastleIMAPAccount;
    [(IMAPAccount *)&v5 handleAlertResponse:responseCopy];
  }
}

- (void)handleOverQuotaResponse:(id)response
{
  responseCopy = response;
  v4 = MFLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(CastleIMAPAccount *)responseCopy handleOverQuotaResponse:v4];
  }

  v5 = objc_alloc(MEMORY[0x1E698B958]);
  v6 = [v5 initForDataclass:*MEMORY[0x1E6959B28]];
  [v6 showWithHandler:0];
}

- (uint64_t)deliveryPortNumber
{
  if (!self)
  {
    return 0;
  }

  v1 = [(CastleIMAPAccount *)self _mailPropertyFromAppleAccountForKey:?];
  unsignedIntValue = [v1 unsignedIntValue];

  return unsignedIntValue;
}

- (uint64_t)deliveryUsesSSL
{
  if (!self)
  {
    return 0;
  }

  v1 = [(CastleIMAPAccount *)self _mailPropertyFromAppleAccountForKey:?];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (id)_deliveryAccountCreateIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  os_unfair_lock_lock(&self->_deliveryAccountLock);
  deliveryAccount = self->_deliveryAccount;
  if (deliveryAccount)
  {
    v6 = 1;
  }

  else
  {
    v6 = !neededCopy;
  }

  if (!v6)
  {
    v7 = objc_alloc_init(MFNewcastleSMTPAccount);
    displayName = [(CastleIMAPAccount *)self displayName];
    [(MFAccount *)v7 setDisplayName:displayName];

    deliveryHostname = [(CastleIMAPAccount *)self deliveryHostname];
    [(MFAccount *)v7 setHostname:deliveryHostname];

    [(MFAccount *)v7 setPortNumber:[(CastleIMAPAccount *)self deliveryPortNumber]];
    [(MFAccount *)v7 setUsesSSL:[(CastleIMAPAccount *)self deliveryUsesSSL]];
    v10 = [MEMORY[0x1E699B208] schemeWithName:@"ATOKEN2"];
    [(SMTPAccount *)v7 setPreferredAuthScheme:v10];

    [(MFNewcastleSMTPAccount *)v7 setCastleAccount:self];
    v11 = self->_deliveryAccount;
    self->_deliveryAccount = &v7->super.super;

    deliveryAccount = self->_deliveryAccount;
  }

  v12 = deliveryAccount;
  os_unfair_lock_unlock(&self->_deliveryAccountLock);

  return v12;
}

- (id)checkAndSetLocalDefaultEmailAddress:(id)address
{
  v3 = a2;
  if (address)
  {
    v5.receiver = address;
    v5.super_class = CastleIMAPAccount;
    address = objc_msgSendSuper2(&v5, sel_checkAndSetDefaultEmailAddress_, v3);
  }

  return address;
}

- (BOOL)checkAndSetDefaultEmailAddress:(id)address
{
  addressCopy = address;
  v5 = [(CastleIMAPAccount *)self checkAndSetLocalDefaultEmailAddress:addressCopy];
  v6 = [addressCopy copy];
  updatedDefaultEmail = self->_updatedDefaultEmail;
  self->_updatedDefaultEmail = v6;

  return v5;
}

- (void)setLocallyEnabled:(void *)enabled forEmailAddress:
{
  enabledCopy = enabled;
  if (self)
  {
    emailAddressesDictionary = [self emailAddressesDictionary];
    v6 = [emailAddressesDictionary mutableCopy];

    receiveEmailAliasAddresses = [self receiveEmailAliasAddresses];
    v8 = [receiveEmailAliasAddresses mutableCopy];

    v9 = [MEMORY[0x1E696AD98] numberWithBool:a2];
    v10 = [v6 valueForKey:enabledCopy];
    if (v10)
    {
      [v6 setValue:v9 forKey:enabledCopy];
      [self setEmailAddresses:v6];
    }

    else
    {
      [v8 setValue:v9 forKey:enabledCopy];
      [self setReceiveEmailAliasAddresses:v8];
    }
  }
}

- (void)invalidateEmailAliases
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E699B710] log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [(MFAccount *)self identifier];
    v6 = 138543362;
    v7 = identifier;
    _os_log_impl(&dword_1B0389000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Clearing last update date for email aliases.", &v6, 0xCu);
  }

  [(MailAccount *)self setLastEmailAliasesSyncDate:0];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)updateEmailAliasesIfNeeded
{
  if ([(CastleIMAPAccount *)self _emailAliasesAreStale])
  {

    [(CastleIMAPAccount *)&self->super.super.super.super.isa _updateEmailAddressAndAliases];
  }
}

- (uint64_t)_emailAliasesAreStale
{
  selfCopy = self;
  v19 = *MEMORY[0x1E69E9840];
  if (self)
  {
    lastEmailAliasesSyncDate = [self lastEmailAliasesSyncDate];
    if (lastEmailAliasesSyncDate)
    {
      v3 = +[MFAppStateMonitor sharedInstance];
      isVisible = [v3 isVisible];

      [lastEmailAliasesSyncDate timeIntervalSinceNow];
      v6 = v5;
      v7 = 3600.0;
      if (isVisible)
      {
        v7 = 600.0;
      }

      if (v7 >= -v6)
      {
        date = [MEMORY[0x1E699B710] log];
        if (os_log_type_enabled(date, OS_LOG_TYPE_INFO))
        {
          identifier = [selfCopy identifier];
          [(CastleIMAPAccount *)identifier _emailAliasesAreStale:date];
        }

        selfCopy = 0;
        goto LABEL_14;
      }

      v8 = [MEMORY[0x1E699B710] log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        identifier2 = [selfCopy identifier];
        v15 = 138543618;
        v16 = identifier2;
        v17 = 2048;
        v18 = v6 / -60.0;
        _os_log_impl(&dword_1B0389000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Last update was %g minutes ago. Requesting update.", &v15, 0x16u);
      }
    }

    else
    {
      v8 = [MEMORY[0x1E699B710] log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        identifier3 = [selfCopy identifier];
        v15 = 138543362;
        v16 = identifier3;
        _os_log_impl(&dword_1B0389000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] No last update date for email aliases. Requesting update.", &v15, 0xCu);
      }
    }

    date = [MEMORY[0x1E695DF00] date];
    [selfCopy setLastEmailAliasesSyncDate:date];
    selfCopy = 1;
LABEL_14:
  }

  v13 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (void)_updateEmailAddressAndAliases
{
  if (self)
  {
    v2 = self[61];
    lastEmailAliasesSyncDate = [self lastEmailAliasesSyncDate];
    lastEmailAliasesSyncEntityTag = [self lastEmailAliasesSyncEntityTag];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __50__CastleIMAPAccount__updateEmailAddressAndAliases__block_invoke;
    v5[3] = &unk_1E7AA22C0;
    v5[4] = self;
    [v2 getEmailAddressAndAliasesWithLastSyncDate:lastEmailAliasesSyncDate entityTag:lastEmailAliasesSyncEntityTag handler:v5];
  }
}

void __50__CastleIMAPAccount__updateEmailAddressAndAliases__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [(CastleIMAPAccount *)*(a1 + 32) _updateEmailAddressAndAliasesWithResult:v3];
  if ([v3 isSuccess])
  {
    v4 = [MEMORY[0x1E699B710] log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) identifier];
      v11 = 138543362;
      v12 = v5;
      _os_log_impl(&dword_1B0389000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Completed update.", &v11, 0xCu);
    }

    v6 = [MEMORY[0x1E695DF00] date];
    [*(a1 + 32) setLastEmailAliasesSyncDate:v6];

    if (([v3 notModified] & 1) == 0)
    {
      v7 = [v3 entityTag];
      [*(a1 + 32) setLastEmailAliasesSyncEntityTag:v7];
    }
  }

  else
  {
    v8 = [MEMORY[0x1E699B710] log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 32) identifier];
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_1B0389000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Update failed.", &v11, 0xCu);
    }

    [*(a1 + 32) setLastEmailAliasesSyncDate:0];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_updateEmailAddressAndAliasesWithResult:(void *)result
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!result)
  {
    goto LABEL_29;
  }

  if ([v3 isSuccess] && (objc_msgSend(v4, "notModified") & 1) == 0)
  {
    receiveEmailAliasAddresses = [v4 receiveEmailAliasAddresses];

    if (receiveEmailAliasAddresses)
    {
      receiveEmailAliasAddresses2 = [v4 receiveEmailAliasAddresses];
      LOBYTE(receiveEmailAliasAddresses) = [result checkAndSetReceiveEmailAliasAddresses:receiveEmailAliasAddresses2];
    }

    emailAddresses = [v4 emailAddresses];

    if ((emailAddresses == 0) | receiveEmailAliasAddresses & 1)
    {
      v8 = (emailAddresses != 0) | receiveEmailAliasAddresses;
    }

    else
    {
      emailAddresses2 = [v4 emailAddresses];
      v8 = [result checkAndSetEmailAddresses:emailAddresses2];
    }

    defaultEmailAddress = [v4 defaultEmailAddress];

    if (defaultEmailAddress)
    {
      if ((v8 & 1) == 0)
      {
        defaultEmailAddress2 = [v4 defaultEmailAddress];
        v12 = [result checkAndSetDefaultEmailAddress:defaultEmailAddress2];

        if ((v12 & 1) == 0)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
      defaultEmailAddress3 = [result defaultEmailAddress];
      if (!defaultEmailAddress3)
      {
        fromEmailAddresses = [result fromEmailAddresses];
        v15 = [fromEmailAddresses count];

        if (v15)
        {
          fromEmailAddresses2 = [result fromEmailAddresses];
          defaultEmailAddress3 = [fromEmailAddresses2 objectAtIndex:0];
        }

        else
        {
          emailAddressStrings = [result emailAddressStrings];
          defaultEmailAddress3 = [emailAddressStrings objectAtIndexedSubscript:0];

          [(CastleIMAPAccount *)result setLocallyEnabled:defaultEmailAddress3 forEmailAddress:?];
        }

        if (v8)
        {

          goto LABEL_21;
        }

        v8 = [(CastleIMAPAccount *)result checkAndSetLocalDefaultEmailAddress:defaultEmailAddress3];
      }

      if ((v8 & 1) == 0)
      {
LABEL_24:
        v20 = [MEMORY[0x1E699B710] log];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          identifier = [result identifier];
          v26 = 138543362;
          v27 = identifier;
          _os_log_impl(&dword_1B0389000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] Account is not changed. Not saving.", &v26, 0xCu);
        }

        goto LABEL_27;
      }
    }

LABEL_21:
    v18 = [MEMORY[0x1E699B710] log];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      identifier2 = [result identifier];
      v26 = 138543362;
      v27 = identifier2;
      _os_log_impl(&dword_1B0389000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] Saving account changes.", &v26, 0xCu);
    }

    [result savePersistentAccount];
  }

LABEL_27:
  if ([v4 accountNeedsToUpdateProperties])
  {
    appleAccount = [(CastleIMAPAccount *)result appleAccount];
    accountStore = [appleAccount accountStore];
    appleAccount2 = [(CastleIMAPAccount *)result appleAccount];
    [accountStore aa_updatePropertiesForAppleAccount:appleAccount2 completion:&__block_literal_global_0];
  }

LABEL_29:

  v25 = *MEMORY[0x1E69E9840];
}

- (void)pushUpdateForAliasData
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E699B710] log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(NSMutableDictionary *)self->_aliasChanges count];
    updatedDefaultEmail = self->_updatedDefaultEmail;
    v9[0] = 67109376;
    v9[1] = v4;
    v10 = 2048;
    v11 = updatedDefaultEmail;
    _os_log_impl(&dword_1B0389000, v3, OS_LOG_TYPE_DEFAULT, "[CastleIMAPAccount pushUpdateForAliasData] %d %p", v9, 0x12u);
  }

  if (self->_aliasChanges || self->_updatedDefaultEmail)
  {
    [(EDiCloudAliasSupport *)self->_aliasSupport pushUpdateForAliasDataWithEmailAddresses:self->_aliasChanges defaultEmailAddress:self->_updatedDefaultEmail];
    aliasChanges = self->_aliasChanges;
    self->_aliasChanges = 0;

    v7 = self->_updatedDefaultEmail;
    self->_updatedDefaultEmail = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)isEnabledForDataclass:(id)dataclass
{
  dataclassCopy = dataclass;
  appleAccount = [(CastleIMAPAccount *)self appleAccount];
  v6 = [appleAccount isEnabledForDataclass:dataclassCopy];

  return v6;
}

- (id)displayName
{
  appleAccount = [(CastleIMAPAccount *)self appleAccount];
  accountDescription = [appleAccount accountDescription];

  return accountDescription;
}

- (id)anisetteDataWithError:(id *)error
{
  if (self)
  {
    self = self->_aliasSupport;
  }

  v3 = [(CastleIMAPAccount *)self anisetteDataWithError:error];

  return v3;
}

- (id)deliveryHostname
{
  if (self)
  {
    self = [(CastleIMAPAccount *)self _mailPropertyFromAppleAccountForKey:?];
    v1 = vars8;
  }

  return self;
}

- (void)appleID2AuthDataWithHeaders:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B0389000, a2, OS_LOG_TYPE_ERROR, "CastleIMAPAccount: Failed to serialize AppleID data: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)handleOverQuotaResponse:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B0389000, a2, OS_LOG_TYPE_ERROR, "Over quota error message: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_emailAliasesAreStale
{
  *buf = 138543618;
  *(buf + 4) = self;
  *(buf + 6) = 2048;
  *(buf + 14) = a4 / -60.0;
  _os_log_impl(&dword_1B0389000, log, OS_LOG_TYPE_INFO, "[%{public}@] Last update was %g minutes ago. Not requesting update.", buf, 0x16u);
}

@end