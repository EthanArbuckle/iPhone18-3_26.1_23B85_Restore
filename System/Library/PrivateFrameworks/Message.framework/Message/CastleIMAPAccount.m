@interface CastleIMAPAccount
+ (id)newChildAccountWithParentAccount:(id)a3 error:(id *)a4;
- (BOOL)canAttemptPushRegistration;
- (BOOL)canReceiveNewMailNotifications;
- (BOOL)checkAndSetDefaultEmailAddress:(id)a3;
- (BOOL)isEnabledForDataclass:(id)a3;
- (BOOL)isEquivalentTo:(id)a3 hostname:(id)a4 username:(id)a5;
- (BOOL)shouldFetchRemoteLinksWithDateReceived:(id)a3;
- (BOOL)shouldRegisterForPush;
- (BOOL)usesSSL;
- (CastleIMAPAccount)initWithLibrary:(id)a3 persistentAccount:(id)a4;
- (NSString)clientInfo;
- (NSString)personID;
- (id)_deliveryAccountCreateIfNeeded:(BOOL)a3;
- (id)_fromEmailAddressesIncludingDisabled:(id)a1;
- (id)_mailPropertyFromAppleAccountForKey:(uint64_t)a1;
- (id)accountStore;
- (id)anisetteDataWithError:(id *)a3;
- (id)appleAccount;
- (id)appleID2AuthDataWithHeaders:(void *)a1;
- (id)authTokenWithError:(void *)a1;
- (id)checkAndSetLocalDefaultEmailAddress:(id)a1;
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
- (void)_updateEmailAddressAndAliasesWithResult:(void *)a1;
- (void)appleID2AuthWithCompletion:(id)a3;
- (void)dealloc;
- (void)handleAlertResponse:(id)a3;
- (void)handleOverQuotaResponse:(id)a3;
- (void)invalidateEmailAliases;
- (void)persistentAccountDidChange:(id)a3 previousAccount:(id)a4;
- (void)pushUpdateForAliasData;
- (void)setLocallyEnabled:(void *)a3 forEmailAddress:;
- (void)setUsername:(id)a3;
- (void)startListeningForNotifications;
- (void)updateEmailAliasesIfNeeded;
@end

@implementation CastleIMAPAccount

- (BOOL)shouldFetchRemoteLinksWithDateReceived:(id)a3
{
  v4 = a3;
  if (+[MFMailMessageLibrary canUsePersistence]&& [(IMAPAccount *)self supportsAppleRemoteLinks])
  {
    v5 = +[MFMailMessageLibrary defaultInstance];
    v6 = [v5 persistence];
    v7 = [v6 remoteContentManager];

    v8 = [v7 shouldAddRemoteContentLinksForMessageWithDateReceived:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CastleIMAPAccount)initWithLibrary:(id)a3 persistentAccount:(id)a4
{
  v6 = a3;
  v7 = a4;
  v25.receiver = self;
  v25.super_class = CastleIMAPAccount;
  v8 = [(IMAPAccount *)&v25 initWithLibrary:v6 persistentAccount:v7];
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
    v16 = [v7 parentAccount];
    v17 = [v15 initWithAppleAccount:v16];
    aliasSupport = v8->_aliasSupport;
    v8->_aliasSupport = v17;

    v19 = [MFCastleEmailAliasUpdater alloc];
    v20 = [(MFAccount *)v8 identifier];
    v21 = [(MFCastleEmailAliasUpdater *)v19 initWithAccountID:v20 aliasSupport:v8->_aliasSupport];
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
      v2 = [MEMORY[0x1E696AD88] defaultCenter];
      v3 = [(CastleIMAPAccount *)v1 accountStore];
      [v2 removeObserver:v1 name:*MEMORY[0x1E69597D8] object:v3];

      v4 = *(v1 + 424);
      *(v1 + 424) = 0;
    }

    return [(CastleIMAPAccount *)v1 _resetAppleAccount];
  }

  return result;
}

- (BOOL)isEquivalentTo:(id)a3 hostname:(id)a4 username:(id)a5
{
  v7 = a3;
  v8 = a5;
  if ([(MailAccount *)self isAccountClassEquivalentTo:v7])
  {
    v9 = [(MailAccount *)self isUsernameEquivalentTo:v8];
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
  v3 = [(IMAPAccount *)self separatorChar];
  *(self + 440) |= 1u;
  v4.receiver = self;
  v4.super_class = CastleIMAPAccount;
  [(IMAPAccount *)&v4 startListeningForNotifications];
}

- (id)appleAccount
{
  if (a1)
  {
    v2 = *(a1 + 416);
    if (!v2)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:sel_appleAccount object:a1 file:@"CastleIMAPAccount.m" lineNumber:231 description:{@"Invalid parameter not satisfying: %@", @"nil != _appleAccountLock"}];

      v2 = *(a1 + 416);
    }

    [v2 lock];
    v3 = *(a1 + 424);
    if (!v3)
    {
      v4 = [a1 persistentAccount];
      v5 = [v4 parentAccount];
      v6 = *(a1 + 424);
      *(a1 + 424) = v5;

      v7 = [MEMORY[0x1E696AD88] defaultCenter];
      v8 = [(CastleIMAPAccount *)a1 accountStore];
      [v7 addObserver:a1 selector:sel__accountsChanged_ name:*MEMORY[0x1E69597D8] object:v8];

      v3 = *(a1 + 424);
    }

    v9 = v3;
    [*(a1 + 416) unlock];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)accountStore
{
  if (a1)
  {
    v1 = +[MFAccountStore sharedAccountStore];
    v2 = [v1 persistentStore];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)_mailPropertyFromAppleAccountForKey:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [(CastleIMAPAccount *)a1 appleAccount];
    v5 = [v4 propertiesForDataclass:*MEMORY[0x1E6959B28]];
    v6 = [v5 objectForKey:v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)newChildAccountWithParentAccount:(id)a3 error:(id *)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = *MEMORY[0x1E6959B28];
    v36 = [v5 propertiesForDataclass:*MEMORY[0x1E6959B28]];
    v35 = [MEMORY[0x1E695DF90] dictionary];
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
    v9 = [v6 childAccounts];
    v10 = [v9 countByEnumeratingWithState:&v37 objects:v42 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v37 + 1) + 8 * v13) accountType];
        v15 = [v14 identifier];
        v16 = [v15 isEqualToString:v12];

        if (v16)
        {
          break;
        }

        if (v10 == ++v13)
        {
          v10 = [v9 countByEnumeratingWithState:&v37 objects:v42 count:16];
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
      [v35 setObject:v18 forKey:@"Username"];
    }

    else
    {
      v8 = [MFError errorWithDomain:@"CastleIMAPErrorDomain" code:3 localizedDescription:0];
      if (v8)
      {
        goto LABEL_27;
      }
    }

    v19 = [v6 username];
    v20 = [v19 emailAddressValue];
    v21 = [v20 domain];

    v22 = [v36 objectForKey:@"dotMacMailSupported"];
    v23 = [v22 BOOLValue];

    if (((v19 != 0) & v23) == 1 && v21 && [&unk_1F2774C20 containsObject:v21])
    {
      v24 = v19;
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
          v29 = [v6 aa_firstName];
          [v28 setGivenName:v29];

          v30 = [v6 aa_lastName];
          [v28 setFamilyName:v30];

          v27 = [MEMORY[0x1E696ADF8] localizedStringFromPersonNameComponents:v28 style:3 options:0];

          if (v27)
          {
LABEL_32:
            [v35 setObject:v27 forKey:@"FullUserName"];
          }

          v17 = [objc_opt_class() accountWithProperties:v35];
          v31 = [v17 defaultPath];
          [v17 setPath:v31];

          [v17 setUsesSSL:1];
          v32 = [v17 persistentAccount];
          [v32 setParentAccount:v6];
          [v32 setAuthenticationType:*MEMORY[0x1E6959AC8]];

          v8 = 0;
          goto LABEL_34;
        }

LABEL_27:
        if (a4)
        {
          v26 = v8;
          v17 = 0;
          *a4 = v8;
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
    [v35 setValue:v25 forKey:@"EmailAddresses"];

    v8 = 0;
    goto LABEL_26;
  }

  v17 = 0;
LABEL_35:

  v33 = *MEMORY[0x1E69E9840];
  return v17;
}

- (void)persistentAccountDidChange:(id)a3 previousAccount:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8.receiver = self;
  v8.super_class = CastleIMAPAccount;
  [(MailAccount *)&v8 persistentAccountDidChange:v6 previousAccount:v7];
  [(CastleIMAPAccount *)self _resetAppleAccount];
}

- (unsigned)portNumber
{
  v2 = [(CastleIMAPAccount *)self _mailPropertyFromAppleAccountForKey:?];
  v3 = [v2 unsignedIntValue];

  return v3;
}

- (BOOL)usesSSL
{
  v2 = [(CastleIMAPAccount *)self _mailPropertyFromAppleAccountForKey:?];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setUsername:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() accountPropertiesValueForKey:@"Username" value:v4];
  v6.receiver = self;
  v6.super_class = CastleIMAPAccount;
  [(MailAccount *)&v6 setUsername:v5];
}

- (id)username
{
  v3 = [(CastleIMAPAccount *)self _mailPropertyFromAppleAccountForKey:?];
  if (!v3)
  {
    v4 = [(CastleIMAPAccount *)self appleAccount];

    if (v4)
    {
      v3 = 0;
    }

    else
    {
      v6.receiver = self;
      v6.super_class = CastleIMAPAccount;
      v3 = [(MFAccount *)&v6 username];
    }
  }

  return v3;
}

- (NSString)personID
{
  v2 = [(CastleIMAPAccount *)self appleAccount];
  v3 = [v2 aa_personID];

  return v3;
}

- (id)makeAppleIDSession
{
  if (a1)
  {
    v2 = objc_alloc(MEMORY[0x1E698DCC8]);
    v3 = [a1 sourceApplicationBundleIdentifier];
    v4 = [v2 initWithIdentifier:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)appleID2AuthDataWithHeaders:(void *)a1
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1 && v3)
  {
    v6 = [v3 mutableCopy];
    v7 = [a1 authToken];
    if (v7)
    {
      [v6 setObject:v7 forKeyedSubscript:@"token"];
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

        v11 = [a1 personID];
        v12 = [v11 dataUsingEncoding:4];

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

- (void)appleID2AuthWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CastleIMAPAccount *)self makeAppleIDSession];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__CastleIMAPAccount_appleID2AuthWithCompletion___block_invoke;
  v7[3] = &unk_1E7AA2298;
  v7[4] = self;
  v6 = v4;
  v8 = v6;
  [v5 appleIDHeadersWithCompletion:v7];
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

- (id)authTokenWithError:(void *)a1
{
  v22 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = [(CastleIMAPAccount *)a1 appleAccount];
    v15 = 0;
    v5 = [v4 aa_authTokenWithError:&v15];
    v6 = v15;

    if (!v5 && v6)
    {
      v7 = MFLogGeneral();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = [a1 identifier];
        v14 = [v6 ef_publicDescription];
        *buf = 138412802;
        v17 = v12;
        v18 = 2112;
        v19 = v13;
        v20 = 2114;
        v21 = v14;
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
  v3 = [v2 clientInfoHeader];
  v4 = [v3 copy];

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
  v3 = [(MailAccount *)self defaultEmailAddress];
  if (!v3)
  {
    v5.receiver = self;
    v5.super_class = CastleIMAPAccount;
    v3 = [(MailAccount *)&v5 firstEmailAddress];
  }

  return v3;
}

- (id)emailAddressStrings
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = CastleIMAPAccount;
  v3 = [(MailAccount *)&v9 emailAddressStrings];
  if (![v3 count])
  {
    v4 = [(CastleIMAPAccount *)self _mailPropertyFromAppleAccountForKey:?];
    v5 = v4;
    if (v4)
    {
      v10[0] = v4;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];

      v3 = v6;
    }
  }

  v7 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)emailAddressesAndAliasesList
{
  v2 = [(MailAccount *)self emailAddressesAndAliases];
  v3 = [v2 allKeys];

  return v3;
}

- (id)_fromEmailAddressesIncludingDisabled:(id)a1
{
  v2 = a1;
  v32 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v21 = [a1 emailAddressesDictionary];
    v20 = [v2 receiveEmailAliasAddresses];
    v2 = [MEMORY[0x1E695DF70] array];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v4 = v21;
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
            v10 = [v9 BOOLValue];

            if (!v10)
            {
              continue;
            }
          }

          [v2 addObject:v8];
        }

        v5 = [v4 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v5);
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = v20;
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
            v17 = [v16 BOOLValue];

            if (!v17)
            {
              continue;
            }
          }

          [v2 addObject:v15];
        }

        v12 = [v11 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v12);
    }
  }

  v18 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)handleAlertResponse:(id)a3
{
  v4 = a3;
  if ([@"Mailbox is over quota" isEqualToString:v4])
  {
    [(CastleIMAPAccount *)self handleOverQuotaResponse:v4];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = CastleIMAPAccount;
    [(IMAPAccount *)&v5 handleAlertResponse:v4];
  }
}

- (void)handleOverQuotaResponse:(id)a3
{
  v3 = a3;
  v4 = MFLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(CastleIMAPAccount *)v3 handleOverQuotaResponse:v4];
  }

  v5 = objc_alloc(MEMORY[0x1E698B958]);
  v6 = [v5 initForDataclass:*MEMORY[0x1E6959B28]];
  [v6 showWithHandler:0];
}

- (uint64_t)deliveryPortNumber
{
  if (!a1)
  {
    return 0;
  }

  v1 = [(CastleIMAPAccount *)a1 _mailPropertyFromAppleAccountForKey:?];
  v2 = [v1 unsignedIntValue];

  return v2;
}

- (uint64_t)deliveryUsesSSL
{
  if (!a1)
  {
    return 0;
  }

  v1 = [(CastleIMAPAccount *)a1 _mailPropertyFromAppleAccountForKey:?];
  v2 = [v1 BOOLValue];

  return v2;
}

- (id)_deliveryAccountCreateIfNeeded:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_lock(&self->_deliveryAccountLock);
  deliveryAccount = self->_deliveryAccount;
  if (deliveryAccount)
  {
    v6 = 1;
  }

  else
  {
    v6 = !v3;
  }

  if (!v6)
  {
    v7 = objc_alloc_init(MFNewcastleSMTPAccount);
    v8 = [(CastleIMAPAccount *)self displayName];
    [(MFAccount *)v7 setDisplayName:v8];

    v9 = [(CastleIMAPAccount *)self deliveryHostname];
    [(MFAccount *)v7 setHostname:v9];

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

- (id)checkAndSetLocalDefaultEmailAddress:(id)a1
{
  v3 = a2;
  if (a1)
  {
    v5.receiver = a1;
    v5.super_class = CastleIMAPAccount;
    a1 = objc_msgSendSuper2(&v5, sel_checkAndSetDefaultEmailAddress_, v3);
  }

  return a1;
}

- (BOOL)checkAndSetDefaultEmailAddress:(id)a3
{
  v4 = a3;
  v5 = [(CastleIMAPAccount *)self checkAndSetLocalDefaultEmailAddress:v4];
  v6 = [v4 copy];
  updatedDefaultEmail = self->_updatedDefaultEmail;
  self->_updatedDefaultEmail = v6;

  return v5;
}

- (void)setLocallyEnabled:(void *)a3 forEmailAddress:
{
  v11 = a3;
  if (a1)
  {
    v5 = [a1 emailAddressesDictionary];
    v6 = [v5 mutableCopy];

    v7 = [a1 receiveEmailAliasAddresses];
    v8 = [v7 mutableCopy];

    v9 = [MEMORY[0x1E696AD98] numberWithBool:a2];
    v10 = [v6 valueForKey:v11];
    if (v10)
    {
      [v6 setValue:v9 forKey:v11];
      [a1 setEmailAddresses:v6];
    }

    else
    {
      [v8 setValue:v9 forKey:v11];
      [a1 setReceiveEmailAliasAddresses:v8];
    }
  }
}

- (void)invalidateEmailAliases
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E699B710] log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(MFAccount *)self identifier];
    v6 = 138543362;
    v7 = v4;
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
  v1 = a1;
  v19 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = [a1 lastEmailAliasesSyncDate];
    if (v2)
    {
      v3 = +[MFAppStateMonitor sharedInstance];
      v4 = [v3 isVisible];

      [v2 timeIntervalSinceNow];
      v6 = v5;
      v7 = 3600.0;
      if (v4)
      {
        v7 = 600.0;
      }

      if (v7 >= -v6)
      {
        v11 = [MEMORY[0x1E699B710] log];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = [v1 identifier];
          [(CastleIMAPAccount *)v12 _emailAliasesAreStale:v11];
        }

        v1 = 0;
        goto LABEL_14;
      }

      v8 = [MEMORY[0x1E699B710] log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [v1 identifier];
        v15 = 138543618;
        v16 = v9;
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
        v10 = [v1 identifier];
        v15 = 138543362;
        v16 = v10;
        _os_log_impl(&dword_1B0389000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] No last update date for email aliases. Requesting update.", &v15, 0xCu);
      }
    }

    v11 = [MEMORY[0x1E695DF00] date];
    [v1 setLastEmailAliasesSyncDate:v11];
    v1 = 1;
LABEL_14:
  }

  v13 = *MEMORY[0x1E69E9840];
  return v1;
}

- (void)_updateEmailAddressAndAliases
{
  if (a1)
  {
    v2 = a1[61];
    v3 = [a1 lastEmailAliasesSyncDate];
    v4 = [a1 lastEmailAliasesSyncEntityTag];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __50__CastleIMAPAccount__updateEmailAddressAndAliases__block_invoke;
    v5[3] = &unk_1E7AA22C0;
    v5[4] = a1;
    [v2 getEmailAddressAndAliasesWithLastSyncDate:v3 entityTag:v4 handler:v5];
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

- (void)_updateEmailAddressAndAliasesWithResult:(void *)a1
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!a1)
  {
    goto LABEL_29;
  }

  if ([v3 isSuccess] && (objc_msgSend(v4, "notModified") & 1) == 0)
  {
    v5 = [v4 receiveEmailAliasAddresses];

    if (v5)
    {
      v6 = [v4 receiveEmailAliasAddresses];
      LOBYTE(v5) = [a1 checkAndSetReceiveEmailAliasAddresses:v6];
    }

    v7 = [v4 emailAddresses];

    if ((v7 == 0) | v5 & 1)
    {
      v8 = (v7 != 0) | v5;
    }

    else
    {
      v9 = [v4 emailAddresses];
      v8 = [a1 checkAndSetEmailAddresses:v9];
    }

    v10 = [v4 defaultEmailAddress];

    if (v10)
    {
      if ((v8 & 1) == 0)
      {
        v11 = [v4 defaultEmailAddress];
        v12 = [a1 checkAndSetDefaultEmailAddress:v11];

        if ((v12 & 1) == 0)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
      v13 = [a1 defaultEmailAddress];
      if (!v13)
      {
        v14 = [a1 fromEmailAddresses];
        v15 = [v14 count];

        if (v15)
        {
          v16 = [a1 fromEmailAddresses];
          v13 = [v16 objectAtIndex:0];
        }

        else
        {
          v17 = [a1 emailAddressStrings];
          v13 = [v17 objectAtIndexedSubscript:0];

          [(CastleIMAPAccount *)a1 setLocallyEnabled:v13 forEmailAddress:?];
        }

        if (v8)
        {

          goto LABEL_21;
        }

        v8 = [(CastleIMAPAccount *)a1 checkAndSetLocalDefaultEmailAddress:v13];
      }

      if ((v8 & 1) == 0)
      {
LABEL_24:
        v20 = [MEMORY[0x1E699B710] log];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = [a1 identifier];
          v26 = 138543362;
          v27 = v21;
          _os_log_impl(&dword_1B0389000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] Account is not changed. Not saving.", &v26, 0xCu);
        }

        goto LABEL_27;
      }
    }

LABEL_21:
    v18 = [MEMORY[0x1E699B710] log];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [a1 identifier];
      v26 = 138543362;
      v27 = v19;
      _os_log_impl(&dword_1B0389000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] Saving account changes.", &v26, 0xCu);
    }

    [a1 savePersistentAccount];
  }

LABEL_27:
  if ([v4 accountNeedsToUpdateProperties])
  {
    v22 = [(CastleIMAPAccount *)a1 appleAccount];
    v23 = [v22 accountStore];
    v24 = [(CastleIMAPAccount *)a1 appleAccount];
    [v23 aa_updatePropertiesForAppleAccount:v24 completion:&__block_literal_global_0];
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

- (BOOL)isEnabledForDataclass:(id)a3
{
  v4 = a3;
  v5 = [(CastleIMAPAccount *)self appleAccount];
  v6 = [v5 isEnabledForDataclass:v4];

  return v6;
}

- (id)displayName
{
  v2 = [(CastleIMAPAccount *)self appleAccount];
  v3 = [v2 accountDescription];

  return v3;
}

- (id)anisetteDataWithError:(id *)a3
{
  if (self)
  {
    self = self->_aliasSupport;
  }

  v3 = [(CastleIMAPAccount *)self anisetteDataWithError:a3];

  return v3;
}

- (id)deliveryHostname
{
  if (a1)
  {
    a1 = [(CastleIMAPAccount *)a1 _mailPropertyFromAppleAccountForKey:?];
    v1 = vars8;
  }

  return a1;
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
  *(buf + 4) = a1;
  *(buf + 6) = 2048;
  *(buf + 14) = a4 / -60.0;
  _os_log_impl(&dword_1B0389000, log, OS_LOG_TYPE_INFO, "[%{public}@] Last update was %g minutes ago. Not requesting update.", buf, 0x16u);
}

@end