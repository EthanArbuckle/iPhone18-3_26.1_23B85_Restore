@interface MobileCalDAVDAAccount
- (BOOL)_reallySearchQueriesRunning;
- (BOOL)accountHasSignificantPropertyChangesWithChangeInfo:(id)a3;
- (BOOL)backingAccountShouldDoInitialAutodiscovery;
- (BOOL)isDelegateAccount;
- (BOOL)isEqualToAccount:(id)a3;
- (BOOL)isICloudAccount;
- (BOOL)needsToVerifyTerms;
- (BOOL)pushDisabled;
- (BOOL)retryDiscoveryTask:(id)a3;
- (BOOL)saveModifiedPropertiesOnBackingAccount;
- (BOOL)shouldDoInitialAutodiscovery;
- (BOOL)upgradeAccount;
- (CalDAVPrincipal)mainPrincipal;
- (DACoreDAVTaskManager)taskManager;
- (MobileCalDAVDAAccount)initWithBackingAccountInfo:(id)a3;
- (NSDictionary)subscribedCalendars;
- (NSString)accountDescription;
- (NSString)accountIdentifier;
- (NSString)host;
- (NSString)parentAccountIdentifier;
- (NSString)topLevelAccountTypeIdentifier;
- (NSString)username;
- (double)refreshInterval;
- (id)additionalHeaderValues;
- (id)beginDownloadingAttachmentWithUUID:(id)a3 consumer:(id)a4;
- (id)childAccountWithIdentifier:(id)a3;
- (id)childAccountsWithAccountTypeIdentifier:(id)a3;
- (id)createChildAccountWithAccountTypeIdentifier:(id)a3;
- (id)customConnectionProperties;
- (id)emailAddresses;
- (id)httpPorts;
- (id)httpsPorts;
- (id)localizedIdenticalAccountFailureMessage;
- (id)localizedInvalidPasswordMessage;
- (id)oauth2Token;
- (id)portListByInsertingUserEnteredPort:(id)a3;
- (id)preferredAddress;
- (id)principalPath;
- (id)spinnerIdentifiers;
- (id)wellKnownPaths;
- (void)_discoverInitialPropertiesWithConsumer:(id)a3;
- (void)_reallyCancelAllSearchQueries;
- (void)_reallyCancelPendingSearchQuery:(id)a3;
- (void)_reallyCancelSearchQuery:(id)a3;
- (void)_reallyPerformSearchQuery:(id)a3;
- (void)addToCoreDAVLoggingDelegates;
- (void)calendarsDataclassModified;
- (void)coreDAVLogTransmittedDataPartial:(id)a3;
- (void)dealloc;
- (void)discoverInitialPropertiesWithConsumer:(id)a3;
- (void)discoveryTask:(id)a3 gotAccountInfo:(id)a4 error:(id)a5;
- (void)dropAssertionsAndRenewCredentialsInQueue:(id)a3 withHandler:(id)a4;
- (void)ingestBackingAccountInfoProperties;
- (void)performDiscoveryWithHostname:(id)a3 username:(id)a4 consumer:(id)a5;
- (void)promptUserForNewCoreDAVPasswordWithCompletionBlock:(id)a3;
- (void)removeAccount:(id)a3;
- (void)removeFromCoreDAVLoggingDelegates;
- (void)setAccountDescription:(id)a3;
- (void)setPrincipalPath:(id)a3;
- (void)setRefreshInterval:(double)a3;
- (void)setSubscribedCalendars:(id)a3;
- (void)webLoginRequestedAtURL:(id)a3 reasonString:(id)a4 inQueue:(id)a5 completionBlock:(id)a6;
@end

@implementation MobileCalDAVDAAccount

- (MobileCalDAVDAAccount)initWithBackingAccountInfo:(id)a3
{
  v12.receiver = self;
  v12.super_class = MobileCalDAVDAAccount;
  v3 = [(MobileCalDAVDAAccount *)&v12 initWithBackingAccountInfo:a3];
  if (v3)
  {
    v4 = [objc_alloc(objc_msgSend(objc_opt_class() "mobileCalDAVAccountClass"))];
    mobileCalDAVAccount = v3->_mobileCalDAVAccount;
    v3->_mobileCalDAVAccount = v4;

    if (initWithBackingAccountInfo__onceToken != -1)
    {
      [MobileCalDAVDAAccount initWithBackingAccountInfo:];
    }

    v6 = [MEMORY[0x277D03888] registerDefaultLoggerWithCoreDAV];
    v7 = MEMORY[0x277CCACA8];
    v8 = [(MobileCalDAVDAAccount *)v3 accountIdentifier];
    v9 = [v7 stringWithFormat:@"%@.%@", @"CalDAVHTTPTraffic", v8];

    v10 = [objc_alloc(MEMORY[0x277D03888]) initWithFilename:v9];
    [(MobileCalDAVDAAccount *)v3 setCoreDAVLogger:v10];

    [(MobileCalDAVDAAccount *)v3 ingestBackingAccountInfoProperties];
  }

  return v3;
}

void __52__MobileCalDAVDAAccount_initWithBackingAccountInfo___block_invoke()
{
  v0 = [MEMORY[0x277D03800] sharedLogger];
  [v0 registerWithiCalendar];
}

- (void)dealloc
{
  [(CoreDAVDiscoveryTaskGroup *)self->_checkValidityTaskGroup cancelTaskGroup];
  v3.receiver = self;
  v3.super_class = MobileCalDAVDAAccount;
  [(MobileCalDAVDAAccount *)&v3 dealloc];
}

- (DACoreDAVTaskManager)taskManager
{
  v3 = *MEMORY[0x277D03808];
  v4 = *(&self->super.super.isa + v3);
  if (!v4)
  {
    v5 = [objc_alloc(MEMORY[0x277D03890]) initWithAccount:self];
    v6 = *(&self->super.super.isa + v3);
    *(&self->super.super.isa + v3) = v5;

    v4 = *(&self->super.super.isa + v3);
  }

  return v4;
}

- (void)setAccountDescription:(id)a3
{
  v5.receiver = self;
  v5.super_class = MobileCalDAVDAAccount;
  [(MobileCalDAVDAAccount *)&v5 setAccountDescription:a3];
  v4 = [(MobileCalDAVDAAccount *)self mobileCalDAVAccount];
  [v4 didSetAccountDescription];
}

- (NSString)accountDescription
{
  v3 = [(MobileCalDAVDAAccount *)self mobileCalDAVAccount];
  v4 = [v3 isDelegateAccount];

  if (v4)
  {
    v5 = [(MobileCalDAVDAAccount *)self mobileCalDAVAccount];
    v6 = [v5 accountDescription];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = MobileCalDAVDAAccount;
    v6 = [(MobileCalDAVDAAccount *)&v8 accountDescription];
  }

  return v6;
}

- (NSString)accountIdentifier
{
  v2 = [(MobileCalDAVDAAccount *)self backingAccountInfo];
  v3 = [v2 identifier];

  return v3;
}

- (NSString)parentAccountIdentifier
{
  v2 = [(MobileCalDAVDAAccount *)self backingAccountInfo];
  v3 = [v2 parentAccount];
  v4 = [v3 identifier];

  return v4;
}

- (NSString)topLevelAccountTypeIdentifier
{
  v2 = [(MobileCalDAVDAAccount *)self backingAccountInfo];
  v3 = [v2 parentAccount];

  if (v3)
  {
    do
    {
      v4 = [v2 parentAccount];

      v5 = [v4 parentAccount];

      v2 = v4;
    }

    while (v5);
  }

  else
  {
    v4 = v2;
  }

  v6 = [v4 accountType];
  v7 = [v6 identifier];

  return v7;
}

- (CalDAVPrincipal)mainPrincipal
{
  v2 = [(MobileCalDAVDAAccount *)self mobileCalDAVAccount];
  v3 = [v2 mainPrincipal];

  return v3;
}

- (NSDictionary)subscribedCalendars
{
  v2 = [(MobileCalDAVDAAccount *)self mobileCalDAVAccount];
  v3 = [v2 subscribedCalendars];

  return v3;
}

- (void)setSubscribedCalendars:(id)a3
{
  v4 = a3;
  v5 = [(MobileCalDAVDAAccount *)self mobileCalDAVAccount];
  [v5 setSubscribedCalendars:v4];
}

- (id)principalPath
{
  v2 = [(MobileCalDAVDAAccount *)self mobileCalDAVAccount];
  v3 = [v2 principalPath];

  return v3;
}

- (void)setPrincipalPath:(id)a3
{
  v4 = a3;
  v5 = [(MobileCalDAVDAAccount *)self mobileCalDAVAccount];
  [v5 setPrincipalPath:v4];
}

- (void)ingestBackingAccountInfoProperties
{
  v2 = [(MobileCalDAVDAAccount *)self mobileCalDAVAccount];
  [v2 ingestBackingAccountInfoProperties];
}

- (BOOL)shouldDoInitialAutodiscovery
{
  v2 = [(MobileCalDAVDAAccount *)self mobileCalDAVAccount];
  v3 = [v2 shouldDoInitialAutodiscovery];

  return v3;
}

- (BOOL)backingAccountShouldDoInitialAutodiscovery
{
  v3.receiver = self;
  v3.super_class = MobileCalDAVDAAccount;
  return [(MobileCalDAVDAAccount *)&v3 shouldDoInitialAutodiscovery];
}

- (id)emailAddresses
{
  v2 = [(MobileCalDAVDAAccount *)self mobileCalDAVAccount];
  v3 = [v2 emailAddresses];

  return v3;
}

- (id)preferredAddress
{
  v2 = [(MobileCalDAVDAAccount *)self mobileCalDAVAccount];
  v3 = [v2 preferredAddress];

  return v3;
}

- (double)refreshInterval
{
  v2 = [(MobileCalDAVDAAccount *)self backingAccountInfo];
  v3 = [v2 calRefreshInterval];

  return v3;
}

- (void)setRefreshInterval:(double)a3
{
  v4 = [(MobileCalDAVDAAccount *)self backingAccountInfo];
  [v4 setCalRefreshInterval:a3];
}

- (BOOL)pushDisabled
{
  v2 = [(MobileCalDAVDAAccount *)self backingAccountInfo];
  v3 = [v2 calPushDisabled];

  return v3;
}

- (BOOL)isICloudAccount
{
  v2 = [(MobileCalDAVDAAccount *)self backingAccountInfo];
  v3 = [v2 calIsiCloudCalDAVAccount];

  return v3;
}

- (id)spinnerIdentifiers
{
  v2 = [(MobileCalDAVDAAccount *)self mobileCalDAVAccount];
  v3 = [v2 spinnerIdentifiers];

  return v3;
}

- (BOOL)accountHasSignificantPropertyChangesWithChangeInfo:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = MobileCalDAVDAAccount;
  if ([(MobileCalDAVDAAccount *)&v15 accountHasSignificantPropertyChangesWithChangeInfo:v4])
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v6 = [v4 oldAccountProperties];
    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277CF78C8]];

    if (v7)
    {
      v8 = [v4 oldAccountProperties];
      v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277CF78D8]];

      v10 = [v9 objectForKeyedSubscript:v7];
      v11 = [v10 objectForKeyedSubscript:*MEMORY[0x277CF7A10]];
    }

    else
    {
      v11 = 0;
    }

    v12 = [(MobileCalDAVDAAccount *)self principalPath];
    if ([v12 length] || objc_msgSend(v11, "length"))
    {
      v13 = [(MobileCalDAVDAAccount *)self principalPath];
      v5 = [v13 isEqualToString:v11] ^ 1;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (void)calendarsDataclassModified
{
  v2 = [(MobileCalDAVDAAccount *)self mobileCalDAVAccount];
  [v2 calendarsDataclassModified];
}

- (id)localizedIdenticalAccountFailureMessage
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"ACCOUNT_UNIQUE_CONSTRAINT_FAILED_BODY_FORMAT_CALDAV" value:&stru_285AB0D40 table:@"DataAccess"];

  return v3;
}

- (id)localizedInvalidPasswordMessage
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"INVALID_PASSWORD_BODY_CALDAV" value:&stru_285AB0D40 table:@"DataAccess"];
  v6 = [(MobileCalDAVDAAccount *)self accountDescription];
  v7 = [v3 stringWithFormat:v5, v6];

  return v7;
}

- (BOOL)isEqualToAccount:(id)a3
{
  v6 = a3;
  v7 = [v6 username];
  v8 = [v7 length];
  if (v8 || (-[MobileCalDAVDAAccount username](self, "username"), v35 = objc_claimAutoreleasedReturnValue(), [v35 length]))
  {
    v3 = [v6 username];
    v4 = [(MobileCalDAVDAAccount *)self username];
    if (([v3 isEqualToString:v4] & 1) == 0)
    {

      v9 = 0;
      goto LABEL_25;
    }

    v36 = 1;
  }

  else
  {
    v36 = 0;
  }

  v10 = [v6 host];
  v11 = [v10 length];
  if (v11 || (-[MobileCalDAVDAAccount host](self, "host"), v27 = objc_claimAutoreleasedReturnValue(), [v27 length]))
  {
    v12 = [v6 host];
    v13 = [(MobileCalDAVDAAccount *)self host];
    if (([v12 isEqualToString:v13] & 1) == 0)
    {

      if (!v11)
      {
      }

      v9 = 0;
      if (v36)
      {
        goto LABEL_24;
      }

      goto LABEL_25;
    }

    v31 = v13;
    v26 = v12;
    v33 = v11;
    v34 = v10;
    v14 = 1;
  }

  else
  {
    v33 = 0;
    v34 = v10;
    v14 = 0;
  }

  v32 = [v6 principalURL];
  v15 = [v32 absoluteString];
  v16 = [v15 length];
  if (v16 || (-[MobileCalDAVDAAccount principalURL](self, "principalURL"), v25 = objc_claimAutoreleasedReturnValue(), [v25 absoluteString], v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v24, "length")))
  {
    v28 = v14;
    v29 = v3;
    v30 = v7;
    v17 = [v6 principalURL];
    v18 = [v17 absoluteString];
    v19 = [(MobileCalDAVDAAccount *)self principalURL];
    v20 = [v19 absoluteString];
    v9 = [v18 isEqualToString:v20];

    if (v16)
    {

      v3 = v29;
      v7 = v30;
      v21 = v33;
      v22 = v31;
      if (!v28)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    v3 = v29;
    v7 = v30;
    v22 = v31;
    LOBYTE(v14) = v28;
  }

  else
  {
    v9 = 1;
    v22 = v31;
  }

  v21 = v33;
  if (v14)
  {
LABEL_20:
  }

LABEL_21:
  if (!v21)
  {
  }

  if (v36)
  {
LABEL_24:
  }

LABEL_25:
  if (!v8)
  {
  }

  return v9;
}

- (BOOL)isDelegateAccount
{
  v2 = [(MobileCalDAVDAAccount *)self mobileCalDAVAccount];
  v3 = [v2 isDelegateAccount];

  return v3;
}

- (NSString)host
{
  v3 = self->_hostForDiscovery;
  if (!v3)
  {
    v5.receiver = self;
    v5.super_class = MobileCalDAVDAAccount;
    v3 = [(MobileCalDAVDAAccount *)&v5 host];
  }

  return v3;
}

- (NSString)username
{
  v3 = self->_usernameForDiscovery;
  if (!v3)
  {
    v5.receiver = self;
    v5.super_class = MobileCalDAVDAAccount;
    v3 = [(MobileCalDAVDAAccount *)&v5 username];
  }

  return v3;
}

- (void)discoveryTask:(id)a3 gotAccountInfo:(id)a4 error:(id)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = DALoggingwithCategory();
  v12 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v11, v12))
  {
    v31 = 138412802;
    v32 = v8;
    v33 = 2112;
    v34 = v9;
    v35 = 2112;
    v36 = v10;
    _os_log_impl(&dword_2484B2000, v11, v12, "DiscoveryTaskGroup %@ got account info %@ with error %@", &v31, 0x20u);
  }

  v13 = [(MobileCalDAVDAAccount *)self checkValidityTaskGroup];

  if (v13 == v8)
  {
    if (v10)
    {
LABEL_17:
      v24 = [(MobileCalDAVDAAccount *)self consumerForTask:v8];
      v25 = [(MobileCalDAVDAAccount *)self checkValidityTaskGroup];
      [(MobileCalDAVDAAccount *)self removeConsumerForTask:v25];

      if (!v10 || ![(MobileCalDAVDAAccount *)self retryDiscoveryTask:v24])
      {
        hostForDiscovery = self->_hostForDiscovery;
        self->_hostForDiscovery = 0;

        usernameForDiscovery = self->_usernameForDiscovery;
        self->_usernameForDiscovery = 0;

        v28 = coreDAVValidationErrorFromRawError();
        [v24 account:self isValid:v10 == 0 validationError:v28];

        [(MobileCalDAVDAAccount *)self setCheckValidityTaskGroup:0];
      }

      goto LABEL_21;
    }

    if ([(MobileCalDAVDAAccount *)self isDelegateAccount])
    {
      goto LABEL_6;
    }

    v15 = [(MobileCalDAVDAAccount *)self principalPath];
    if ([v15 length])
    {
      v16 = [(MobileCalDAVDAAccount *)self principalPath];
      if (![v16 isEqualToString:@"/"])
      {
        v30 = [(MobileCalDAVDAAccount *)self shouldDoInitialAutodiscovery];

        if (!v30)
        {
LABEL_6:
          v14 = 0;
LABEL_12:
          v18 = [v9 scheme];
          -[MobileCalDAVDAAccount setUseSSL:](self, "setUseSSL:", [v18 isEqualToString:@"http"] ^ 1);

          v19 = [v9 host];
          [(MobileCalDAVDAAccount *)self setHost:v19];

          if (self->_usernameForDiscovery)
          {
            [(MobileCalDAVDAAccount *)self setUsername:?];
          }

          -[MobileCalDAVDAAccount setPort:](self, "setPort:", [v9 port]);
          if (v14)
          {
            [(MobileCalDAVDAAccount *)self saveModifiedPropertiesOnBackingAccount];
          }

          v20 = MEMORY[0x277CF7040];
          v21 = [v9 serverHeaders];
          v22 = [v20 versionWithHTTPHeaders:v21];
          v23 = [(MobileCalDAVDAAccount *)self mobileCalDAVAccount];
          [v23 setServerVersion:v22];

          goto LABEL_17;
        }

LABEL_11:
        v17 = [v9 principalURL];
        [(MobileCalDAVDAAccount *)self setPrincipalURL:v17];

        v14 = 1;
        goto LABEL_12;
      }
    }

    goto LABEL_11;
  }

LABEL_21:

  v29 = *MEMORY[0x277D85DE8];
}

- (BOOL)saveModifiedPropertiesOnBackingAccount
{
  v2 = [(MobileCalDAVDAAccount *)self mobileCalDAVAccount];
  v3 = [v2 saveModifiedPropertiesOnBackingAccount];

  return v3;
}

- (id)wellKnownPaths
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(MobileCalDAVDAAccount *)self username];
  v5 = [v3 stringWithFormat:@"/calendar/dav/%@/user/", v4];

  v6 = [MEMORY[0x277CBEB18] arrayWithObjects:{@"/.well-known/caldav", @"/", @"/principals/", v5, 0}];
  v7 = [(MobileCalDAVDAAccount *)self principalPath];
  v8 = [v7 da_appendSlashIfNeeded];

  if ([v8 length] && (objc_msgSend(v6, "containsObject:", v8) & 1) == 0)
  {
    if (![(MobileCalDAVDAAccount *)self shouldDoInitialAutodiscovery])
    {
      [v6 removeAllObjects];
    }

    [v6 insertObject:v8 atIndex:0];
  }

  return v6;
}

- (id)httpPorts
{
  v3 = [MEMORY[0x277CBEA60] cdvArrayWithIntegers:{80, 8008, 8080, 8800, 0}];
  if (([(MobileCalDAVDAAccount *)self useSSL]& 1) == 0)
  {
    v4 = [(MobileCalDAVDAAccount *)self portListByInsertingUserEnteredPort:v3];

    v3 = v4;
  }

  return v3;
}

- (id)httpsPorts
{
  v3 = [MEMORY[0x277CBEA60] cdvArrayWithIntegers:{443, 8443, 8843, 0}];
  if ([(MobileCalDAVDAAccount *)self useSSL])
  {
    v4 = [(MobileCalDAVDAAccount *)self portListByInsertingUserEnteredPort:v3];

    v3 = v4;
  }

  return v3;
}

- (id)portListByInsertingUserEnteredPort:(id)a3
{
  v4 = a3;
  v5 = [(MobileCalDAVDAAccount *)self port];
  if (v5 < 1)
  {
    v7 = v4;
  }

  else
  {
    v6 = v5;
    v7 = [v4 mutableCopy];
    if (![(MobileCalDAVDAAccount *)self shouldDoInitialAutodiscovery])
    {
      [v7 removeAllObjects];
    }

    v8 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
    [v7 insertObject:v8 atIndex:0];
  }

  return v7;
}

- (BOOL)retryDiscoveryTask:(id)a3
{
  usernameForDiscovery = self->_usernameForDiscovery;
  if (usernameForDiscovery)
  {
    [(MobileCalDAVDAAccount *)self performDiscoveryWithHostname:self->_hostForDiscovery username:0 consumer:a3];
  }

  return usernameForDiscovery != 0;
}

- (void)discoverInitialPropertiesWithConsumer:(id)a3
{
  v4 = a3;
  v5 = [(MobileCalDAVDAAccount *)self mobileCalDAVAccount];
  [v5 discoverInitialPropertiesWithConsumer:v4];
}

- (void)_discoverInitialPropertiesWithConsumer:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MobileCalDAVDAAccount *)self host];
  if (v5 && (v6 = v5, -[MobileCalDAVDAAccount host](self, "host"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 length], v7, v6, v8))
  {
    [(MobileCalDAVDAAccount *)self performDiscoveryWithHostname:0 username:0 consumer:v4];
  }

  else
  {
    v9 = [(MobileCalDAVDAAccount *)self username];
    if ([v9 resemblesEmailAddress])
    {
      v10 = [v9 hostFromEmail];
      v11 = [v9 userFromEmail];
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    if ([v10 length] && objc_msgSend(v11, "length"))
    {
      [(MobileCalDAVDAAccount *)self performDiscoveryWithHostname:v10 username:v11 consumer:v4];
    }

    else
    {
      v12 = DALoggingwithCategory();
      v13 = *(MEMORY[0x277D03988] + 4);
      if (os_log_type_enabled(v12, v13))
      {
        v15 = 138412290;
        v16 = self;
        _os_log_impl(&dword_2484B2000, v12, v13, "Autodiscover called on account %@, but that account does not have a host set, and one could not be inferred from the username. Ignoring autodiscovery request", &v15, 0xCu);
      }

      [v4 account:self isValid:0 validationError:0];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)performDiscoveryWithHostname:(id)a3 username:(id)a4 consumer:(id)a5
{
  v44 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  objc_storeStrong(&self->_hostForDiscovery, a3);
  objc_storeStrong(&self->_usernameForDiscovery, a4);
  [(MobileCalDAVDAAccount *)self setShouldUseOpportunisticSockets:0];
  v12 = [(MobileCalDAVDAAccount *)self host];
  if (v12 && (v13 = v12, -[MobileCalDAVDAAccount host](self, "host"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 length], v14, v13, v15))
  {
    v36 = v10;
    v37 = v9;
    v16 = [(MobileCalDAVDAAccount *)self wellKnownPaths];
    v17 = [(MobileCalDAVDAAccount *)self httpPorts];
    v18 = [(MobileCalDAVDAAccount *)self httpsPorts];
    v19 = objc_alloc(MEMORY[0x277CFDBB0]);
    v20 = [(MobileCalDAVDAAccount *)self mobileCalDAVAccount];
    v21 = [v20 mainPrincipal];
    v22 = [(MobileCalDAVDAAccount *)self taskManager];
    if ([(MobileCalDAVDAAccount *)self useSSL])
    {
      v23 = 0;
    }

    else
    {
      v23 = @"_caldav._tcp.";
    }

    if ([(MobileCalDAVDAAccount *)self useSSL])
    {
      v24 = @"_caldavs._tcp.";
    }

    else
    {
      v24 = 0;
    }

    v25 = [v19 initWithAccountInfoProvider:v21 taskManager:v22 httpPorts:v17 httpsPorts:v18 httpServiceString:v23 httpsServiceString:v24 wellKnownPaths:v16 requiredComplianceClass:@"calendar-access"];
    [(MobileCalDAVDAAccount *)self setCheckValidityTaskGroup:v25];

    v26 = [(MobileCalDAVDAAccount *)self checkValidityTaskGroup];
    [v26 setTimeoutInterval:15.0];

    v27 = [(MobileCalDAVDAAccount *)self checkValidityTaskGroup];
    [v27 setDelegate:self];

    v28 = DALoggingwithCategory();
    v29 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v28, v29))
    {
      v30 = [(MobileCalDAVDAAccount *)self checkValidityTaskGroup];
      *buf = 138412802;
      v39 = self;
      v40 = 2112;
      v41 = v30;
      v42 = 2112;
      v43 = v11;
      _os_log_impl(&dword_2484B2000, v28, v29, "account %@ is checking validity with group %@ on behalf of %@", buf, 0x20u);
    }

    v31 = [(MobileCalDAVDAAccount *)self checkValidityTaskGroup];
    [(MobileCalDAVDAAccount *)self setConsumer:v11 forTask:v31];

    v32 = [(MobileCalDAVDAAccount *)self checkValidityTaskGroup];
    [v32 startTaskGroup];

    v10 = v36;
    v9 = v37;
  }

  else
  {
    v33 = DALoggingwithCategory();
    v34 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v33, v34))
    {
      *buf = 138412290;
      v39 = self;
      _os_log_impl(&dword_2484B2000, v33, v34, "Autodiscover called on account %@, but that account does not have a host. Ignoring autodiscovery request", buf, 0xCu);
    }

    [v11 account:self isValid:0 validationError:0];
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (BOOL)upgradeAccount
{
  v2 = self;
  v88 = *MEMORY[0x277D85DE8];
  v3 = [(MobileCalDAVDAAccount *)self mobileCalDAVAccount];
  v4 = [(MobileCalDAVDAAccount *)v2 accountIntPropertyForKey:@"CalDAVAccountVersion"];
  if (v4 > 16000)
  {
    goto LABEL_53;
  }

  v5 = MEMORY[0x277D03988];
  v6 = 0x277CBE000uLL;
  v7 = &off_2484F1000;
  v59 = v3;
  v62 = v2;
  v58 = v4;
  if (v4 > 1)
  {
    if (v4 > 0x2BC0)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v8 = [v3 mainPrincipal];
    v9 = [v8 legacy_principalURL];

    if (v9)
    {
      v10 = DALoggingwithCategory();
      v11 = *(v5 + 6);
      if (os_log_type_enabled(v10, v11))
      {
        v12 = [v3 mainPrincipal];
        v13 = [v12 legacy_principalURL];
        *buf = 138412290;
        v83 = v13;
        _os_log_impl(&dword_2484B2000, v10, v11, "Upgrading principal URL from %@", buf, 0xCu);
      }

      v14 = [v3 mainPrincipal];
      v15 = [v14 legacy_principalURL];
      [(MobileCalDAVDAAccount *)v2 setPrincipalURL:v15];

      v16 = DALoggingwithCategory();
      if (os_log_type_enabled(v16, v11))
      {
        v17 = [(MobileCalDAVDAAccount *)v2 principalURL];
        *buf = 138412290;
        v83 = v17;
        _os_log_impl(&dword_2484B2000, v16, v11, "New principal URL is %@", buf, 0xCu);
      }

      v6 = 0x277CBE000;
    }
  }

  v67 = [(MobileCalDAVDAAccount *)v2 username];
  v18 = DALoggingwithCategory();
  type = *(v5 + 6);
  if (os_log_type_enabled(v18, type))
  {
    v19 = [(MobileCalDAVDAAccount *)v2 accountDescription];
    v20 = [(MobileCalDAVDAAccount *)v2 publicDescription];
    *buf = 138412802;
    v83 = v19;
    v84 = 2114;
    v85 = v20;
    v86 = 2112;
    v87 = v67;
    _os_log_impl(&dword_2484B2000, v18, type, "Upgrading account %@ (%{public}@); stripping username %@ from subcal URLs.", buf, 0x20u);
  }

  v21 = [v3 subscribedCalendars];
  v69 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v21, "count")}];
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v22 = v21;
  v23 = [v22 countByEnumeratingWithState:&v76 objects:v81 count:16];
  if (!v23)
  {

    goto LABEL_29;
  }

  v24 = v23;
  v63 = 0;
  v25 = *v77;
  do
  {
    for (i = 0; i != v24; ++i)
    {
      if (*v77 != v25)
      {
        objc_enumerationMutation(v22);
      }

      v27 = *(*(&v76 + 1) + 8 * i);
      v28 = [v22 objectForKeyedSubscript:v27];
      v29 = [v28 mutableCopy];

      v30 = [MEMORY[0x277D03970] SubCalSubscriptionURLKey];
      v31 = [v29 objectForKeyedSubscript:v30];

      v32 = [*(v6 + 3008) URLWithString:v31];
      v33 = [v32 password];
      if (v33)
      {
        v34 = v33;
      }

      else
      {
        v35 = [v32 user];
        v36 = [v35 isEqualToString:v67];

        if (!v36)
        {
          goto LABEL_24;
        }

        v37 = [v32 da_urlByRemovingUsername];
        v34 = [v37 absoluteString];

        v38 = DALoggingwithCategory();
        if (os_log_type_enabled(v38, type))
        {
          *buf = 138412546;
          v83 = v31;
          v84 = 2112;
          v85 = v34;
          _os_log_impl(&dword_2484B2000, v38, type, "Stripping url: %@ -> %@", buf, 0x16u);
        }

        v39 = [MEMORY[0x277D03970] SubCalSubscriptionURLKey];
        [v29 setObject:v34 forKeyedSubscript:v39];

        v63 = 1;
      }

LABEL_24:
      [v69 setObject:v29 forKeyedSubscript:v27];

      v6 = 0x277CBE000;
    }

    v24 = [v22 countByEnumeratingWithState:&v76 objects:v81 count:16];
  }

  while (v24);

  v3 = v59;
  v2 = v62;
  v7 = &off_2484F1000;
  v5 = MEMORY[0x277D03988];
  if (v63)
  {
    [v59 setSubscribedCalendars:v69];
  }

LABEL_29:

LABEL_30:
  v40 = [v3 subscribedCalendars];
  v41 = [v3 subscribedCalendars];
  v42 = [v41 mutableCopy];

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v43 = v40;
  v70 = [v43 countByEnumeratingWithState:&v72 objects:v80 count:16];
  if (!v70)
  {

    goto LABEL_52;
  }

  v64 = 0;
  typea = v43;
  v68 = *v73;
  v44 = *(v5 + 6);
  v45 = *(v5 + 3);
  v60 = *(v7 + 136);
  v61 = v42;
  while (2)
  {
    v46 = 0;
    while (2)
    {
      if (*v73 != v68)
      {
        objc_enumerationMutation(typea);
      }

      v47 = *(*(&v72 + 1) + 8 * v46);
      v48 = [*(v6 + 3008) URLWithString:v47];
      if (v48)
      {
        v49 = [v42 objectForKeyedSubscript:v47];
        v50 = [v48 path];
        v51 = [v50 da_appendSlashIfNeeded];

        if (v51)
        {
          [v42 removeObjectForKey:v47];
          [v42 setObject:v49 forKeyedSubscript:v51];
          v52 = DALoggingwithCategory();
          if (os_log_type_enabled(v52, v44))
          {
            *buf = v60;
            v83 = v47;
            v84 = 2112;
            v85 = v51;
            _os_log_impl(&dword_2484B2000, v52, v44, "Updated CalDAV subscribed calendar key: %@ -> %@", buf, 0x16u);
          }

          v64 = 1;
        }

        else
        {
          v52 = DALoggingwithCategory();
          if (os_log_type_enabled(v52, v45))
          {
            v53 = [(MobileCalDAVDAAccount *)v62 accountID];
            *buf = 138543618;
            v83 = v53;
            v84 = 2112;
            v85 = v47;
            _os_log_impl(&dword_2484B2000, v52, v45, "Couldn't get path from URL on account %{public}@: %@", buf, 0x16u);

            v6 = 0x277CBE000;
          }

          v42 = v61;
        }

LABEL_46:
      }

      else
      {
        v49 = DALoggingwithCategory();
        if (os_log_type_enabled(v49, v45))
        {
          v51 = [(MobileCalDAVDAAccount *)v62 accountID];
          *buf = 138543618;
          v83 = v51;
          v84 = 2112;
          v85 = v47;
          _os_log_impl(&dword_2484B2000, v49, v45, "CalDAV URL in subscribed calendars for account %{public}@ wasn't actually a URL: %@", buf, 0x16u);
          goto LABEL_46;
        }
      }

      if (v70 != ++v46)
      {
        continue;
      }

      break;
    }

    v70 = [typea countByEnumeratingWithState:&v72 objects:v80 count:16];
    if (v70)
    {
      continue;
    }

    break;
  }

  v43 = typea;

  v3 = v59;
  v2 = v62;
  if (v64)
  {
    [v59 setSubscribedCalendars:v42];
  }

LABEL_52:

  [(MobileCalDAVDAAccount *)v2 setAccountIntProperty:16001 forKey:@"CalDAVAccountVersion"];
  [(MobileCalDAVDAAccount *)v2 saveModifiedPropertiesOnBackingAccount];
  v4 = v58;
LABEL_53:
  v54 = v4 < 16001;
  v71.receiver = v2;
  v71.super_class = MobileCalDAVDAAccount;
  v55 = [(MobileCalDAVDAAccount *)&v71 upgradeAccount];

  v56 = *MEMORY[0x277D85DE8];
  return (v54 | v55) & 1;
}

- (id)additionalHeaderValues
{
  v4.receiver = self;
  v4.super_class = MobileCalDAVDAAccount;
  v2 = [(MobileCalDAVDAAccount *)&v4 additionalHeaderValues];

  return v2;
}

- (id)beginDownloadingAttachmentWithUUID:(id)a3 consumer:(id)a4
{
  v6.receiver = self;
  v6.super_class = MobileCalDAVDAAccount;
  v4 = [(MobileCalDAVDAAccount *)&v6 beginDownloadingAttachmentWithUUID:a3 consumer:a4];

  return v4;
}

- (id)customConnectionProperties
{
  v4.receiver = self;
  v4.super_class = MobileCalDAVDAAccount;
  v2 = [(MobileCalDAVDAAccount *)&v4 customConnectionProperties];

  return v2;
}

- (void)dropAssertionsAndRenewCredentialsInQueue:(id)a3 withHandler:(id)a4
{
  v4.receiver = self;
  v4.super_class = MobileCalDAVDAAccount;
  [(MobileCalDAVDAAccount *)&v4 dropAssertionsAndRenewCredentialsInQueue:a3 withHandler:a4];
}

- (id)oauth2Token
{
  v4.receiver = self;
  v4.super_class = MobileCalDAVDAAccount;
  v2 = [(MobileCalDAVDAAccount *)&v4 oauth2Token];

  return v2;
}

- (void)webLoginRequestedAtURL:(id)a3 reasonString:(id)a4 inQueue:(id)a5 completionBlock:(id)a6
{
  v6.receiver = self;
  v6.super_class = MobileCalDAVDAAccount;
  [(MobileCalDAVDAAccount *)&v6 webLoginRequestedAtURL:a3 reasonString:a4 inQueue:a5 completionBlock:a6];
}

- (void)promptUserForNewCoreDAVPasswordWithCompletionBlock:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __76__MobileCalDAVDAAccount_promptUserForNewCoreDAVPasswordWithCompletionBlock___block_invoke;
  v8[3] = &unk_278F17500;
  v9 = v4;
  v5 = v4;
  v6 = MEMORY[0x24C1D0520](v8);
  if ([(MobileCalDAVDAAccount *)self isValidating])
  {
    v6[2](v6, 2, 0);
  }

  else
  {
    v7 = dataaccess_get_global_queue();
    [(MobileCalDAVDAAccount *)self dropAssertionsAndRenewCredentialsInQueue:v7 withHandler:v6];
  }
}

void __76__MobileCalDAVDAAccount_promptUserForNewCoreDAVPasswordWithCompletionBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  (*(*(a1 + 32) + 16))();
}

- (BOOL)needsToVerifyTerms
{
  v2 = [(MobileCalDAVDAAccount *)self backingAccountInfo];
  v3 = [v2 aa_needsToVerifyTerms];

  return v3;
}

- (void)_reallyPerformSearchQuery:(id)a3
{
  v4 = a3;
  v5 = [(MobileCalDAVDAAccount *)self mobileCalDAVAccount];
  [v5 _reallyPerformSearchQuery:v4];
}

- (void)_reallyCancelSearchQuery:(id)a3
{
  v4 = a3;
  v5 = [(MobileCalDAVDAAccount *)self mobileCalDAVAccount];
  [v5 _reallyCancelSearchQuery:v4];
}

- (void)_reallyCancelPendingSearchQuery:(id)a3
{
  v4 = a3;
  v5 = [(MobileCalDAVDAAccount *)self mobileCalDAVAccount];
  [v5 _reallyCancelPendingSearchQuery:v4];
}

- (void)_reallyCancelAllSearchQueries
{
  v2 = [(MobileCalDAVDAAccount *)self mobileCalDAVAccount];
  [v2 _reallyCancelAllSearchQueries];
}

- (BOOL)_reallySearchQueriesRunning
{
  v2 = [(MobileCalDAVDAAccount *)self mobileCalDAVAccount];
  v3 = [v2 _reallySearchQueriesRunning];

  return v3;
}

- (void)addToCoreDAVLoggingDelegates
{
  v3 = [(MobileCalDAVDAAccount *)self mainPrincipal];

  if (v3)
  {
    v6 = [MEMORY[0x277CFDC18] sharedLogging];
    v4 = [(MobileCalDAVDAAccount *)self mobileCalDAVAccount];
    v5 = [v4 mainPrincipal];
    [v6 addLogDelegate:self forAccountInfoProvider:v5];
  }
}

- (void)removeFromCoreDAVLoggingDelegates
{
  v3 = [(MobileCalDAVDAAccount *)self mainPrincipal];

  if (v3)
  {
    v6 = [MEMORY[0x277CFDC18] sharedLogging];
    v4 = [(MobileCalDAVDAAccount *)self mobileCalDAVAccount];
    v5 = [v4 mainPrincipal];
    [v6 removeLogDelegate:self forAccountInfoProvider:v5];
  }
}

- (void)coreDAVLogTransmittedDataPartial:(id)a3
{
  v4 = a3;
  v5 = [(MobileCalDAVDAAccount *)self coreDAVLogger];
  [v5 logSnippet:v4];
}

- (id)childAccountsWithAccountTypeIdentifier:(id)a3
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)childAccountWithIdentifier:(id)a3
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)createChildAccountWithAccountTypeIdentifier:(id)a3
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)removeAccount:(id)a3
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();

  NSRequestConcreteImplementation();
}

@end