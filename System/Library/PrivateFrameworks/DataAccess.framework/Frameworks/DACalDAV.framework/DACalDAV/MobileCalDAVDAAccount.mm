@interface MobileCalDAVDAAccount
- (BOOL)_reallySearchQueriesRunning;
- (BOOL)accountHasSignificantPropertyChangesWithChangeInfo:(id)info;
- (BOOL)backingAccountShouldDoInitialAutodiscovery;
- (BOOL)isDelegateAccount;
- (BOOL)isEqualToAccount:(id)account;
- (BOOL)isICloudAccount;
- (BOOL)needsToVerifyTerms;
- (BOOL)pushDisabled;
- (BOOL)retryDiscoveryTask:(id)task;
- (BOOL)saveModifiedPropertiesOnBackingAccount;
- (BOOL)shouldDoInitialAutodiscovery;
- (BOOL)upgradeAccount;
- (CalDAVPrincipal)mainPrincipal;
- (DACoreDAVTaskManager)taskManager;
- (MobileCalDAVDAAccount)initWithBackingAccountInfo:(id)info;
- (NSDictionary)subscribedCalendars;
- (NSString)accountDescription;
- (NSString)accountIdentifier;
- (NSString)host;
- (NSString)parentAccountIdentifier;
- (NSString)topLevelAccountTypeIdentifier;
- (NSString)username;
- (double)refreshInterval;
- (id)additionalHeaderValues;
- (id)beginDownloadingAttachmentWithUUID:(id)d consumer:(id)consumer;
- (id)childAccountWithIdentifier:(id)identifier;
- (id)childAccountsWithAccountTypeIdentifier:(id)identifier;
- (id)createChildAccountWithAccountTypeIdentifier:(id)identifier;
- (id)customConnectionProperties;
- (id)emailAddresses;
- (id)httpPorts;
- (id)httpsPorts;
- (id)localizedIdenticalAccountFailureMessage;
- (id)localizedInvalidPasswordMessage;
- (id)oauth2Token;
- (id)portListByInsertingUserEnteredPort:(id)port;
- (id)preferredAddress;
- (id)principalPath;
- (id)spinnerIdentifiers;
- (id)wellKnownPaths;
- (void)_discoverInitialPropertiesWithConsumer:(id)consumer;
- (void)_reallyCancelAllSearchQueries;
- (void)_reallyCancelPendingSearchQuery:(id)query;
- (void)_reallyCancelSearchQuery:(id)query;
- (void)_reallyPerformSearchQuery:(id)query;
- (void)addToCoreDAVLoggingDelegates;
- (void)calendarsDataclassModified;
- (void)coreDAVLogTransmittedDataPartial:(id)partial;
- (void)dealloc;
- (void)discoverInitialPropertiesWithConsumer:(id)consumer;
- (void)discoveryTask:(id)task gotAccountInfo:(id)info error:(id)error;
- (void)dropAssertionsAndRenewCredentialsInQueue:(id)queue withHandler:(id)handler;
- (void)ingestBackingAccountInfoProperties;
- (void)performDiscoveryWithHostname:(id)hostname username:(id)username consumer:(id)consumer;
- (void)promptUserForNewCoreDAVPasswordWithCompletionBlock:(id)block;
- (void)removeAccount:(id)account;
- (void)removeFromCoreDAVLoggingDelegates;
- (void)setAccountDescription:(id)description;
- (void)setPrincipalPath:(id)path;
- (void)setRefreshInterval:(double)interval;
- (void)setSubscribedCalendars:(id)calendars;
- (void)webLoginRequestedAtURL:(id)l reasonString:(id)string inQueue:(id)queue completionBlock:(id)block;
@end

@implementation MobileCalDAVDAAccount

- (MobileCalDAVDAAccount)initWithBackingAccountInfo:(id)info
{
  v12.receiver = self;
  v12.super_class = MobileCalDAVDAAccount;
  v3 = [(MobileCalDAVDAAccount *)&v12 initWithBackingAccountInfo:info];
  if (v3)
  {
    v4 = [objc_alloc(objc_msgSend(objc_opt_class() "mobileCalDAVAccountClass"))];
    mobileCalDAVAccount = v3->_mobileCalDAVAccount;
    v3->_mobileCalDAVAccount = v4;

    if (initWithBackingAccountInfo__onceToken != -1)
    {
      [MobileCalDAVDAAccount initWithBackingAccountInfo:];
    }

    registerDefaultLoggerWithCoreDAV = [MEMORY[0x277D03888] registerDefaultLoggerWithCoreDAV];
    v7 = MEMORY[0x277CCACA8];
    accountIdentifier = [(MobileCalDAVDAAccount *)v3 accountIdentifier];
    v9 = [v7 stringWithFormat:@"%@.%@", @"CalDAVHTTPTraffic", accountIdentifier];

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

- (void)setAccountDescription:(id)description
{
  v5.receiver = self;
  v5.super_class = MobileCalDAVDAAccount;
  [(MobileCalDAVDAAccount *)&v5 setAccountDescription:description];
  mobileCalDAVAccount = [(MobileCalDAVDAAccount *)self mobileCalDAVAccount];
  [mobileCalDAVAccount didSetAccountDescription];
}

- (NSString)accountDescription
{
  mobileCalDAVAccount = [(MobileCalDAVDAAccount *)self mobileCalDAVAccount];
  isDelegateAccount = [mobileCalDAVAccount isDelegateAccount];

  if (isDelegateAccount)
  {
    mobileCalDAVAccount2 = [(MobileCalDAVDAAccount *)self mobileCalDAVAccount];
    accountDescription = [mobileCalDAVAccount2 accountDescription];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = MobileCalDAVDAAccount;
    accountDescription = [(MobileCalDAVDAAccount *)&v8 accountDescription];
  }

  return accountDescription;
}

- (NSString)accountIdentifier
{
  backingAccountInfo = [(MobileCalDAVDAAccount *)self backingAccountInfo];
  identifier = [backingAccountInfo identifier];

  return identifier;
}

- (NSString)parentAccountIdentifier
{
  backingAccountInfo = [(MobileCalDAVDAAccount *)self backingAccountInfo];
  parentAccount = [backingAccountInfo parentAccount];
  identifier = [parentAccount identifier];

  return identifier;
}

- (NSString)topLevelAccountTypeIdentifier
{
  backingAccountInfo = [(MobileCalDAVDAAccount *)self backingAccountInfo];
  parentAccount = [backingAccountInfo parentAccount];

  if (parentAccount)
  {
    do
    {
      parentAccount2 = [backingAccountInfo parentAccount];

      v4ParentAccount = [parentAccount2 parentAccount];

      backingAccountInfo = parentAccount2;
    }

    while (v4ParentAccount);
  }

  else
  {
    parentAccount2 = backingAccountInfo;
  }

  accountType = [parentAccount2 accountType];
  identifier = [accountType identifier];

  return identifier;
}

- (CalDAVPrincipal)mainPrincipal
{
  mobileCalDAVAccount = [(MobileCalDAVDAAccount *)self mobileCalDAVAccount];
  mainPrincipal = [mobileCalDAVAccount mainPrincipal];

  return mainPrincipal;
}

- (NSDictionary)subscribedCalendars
{
  mobileCalDAVAccount = [(MobileCalDAVDAAccount *)self mobileCalDAVAccount];
  subscribedCalendars = [mobileCalDAVAccount subscribedCalendars];

  return subscribedCalendars;
}

- (void)setSubscribedCalendars:(id)calendars
{
  calendarsCopy = calendars;
  mobileCalDAVAccount = [(MobileCalDAVDAAccount *)self mobileCalDAVAccount];
  [mobileCalDAVAccount setSubscribedCalendars:calendarsCopy];
}

- (id)principalPath
{
  mobileCalDAVAccount = [(MobileCalDAVDAAccount *)self mobileCalDAVAccount];
  principalPath = [mobileCalDAVAccount principalPath];

  return principalPath;
}

- (void)setPrincipalPath:(id)path
{
  pathCopy = path;
  mobileCalDAVAccount = [(MobileCalDAVDAAccount *)self mobileCalDAVAccount];
  [mobileCalDAVAccount setPrincipalPath:pathCopy];
}

- (void)ingestBackingAccountInfoProperties
{
  mobileCalDAVAccount = [(MobileCalDAVDAAccount *)self mobileCalDAVAccount];
  [mobileCalDAVAccount ingestBackingAccountInfoProperties];
}

- (BOOL)shouldDoInitialAutodiscovery
{
  mobileCalDAVAccount = [(MobileCalDAVDAAccount *)self mobileCalDAVAccount];
  shouldDoInitialAutodiscovery = [mobileCalDAVAccount shouldDoInitialAutodiscovery];

  return shouldDoInitialAutodiscovery;
}

- (BOOL)backingAccountShouldDoInitialAutodiscovery
{
  v3.receiver = self;
  v3.super_class = MobileCalDAVDAAccount;
  return [(MobileCalDAVDAAccount *)&v3 shouldDoInitialAutodiscovery];
}

- (id)emailAddresses
{
  mobileCalDAVAccount = [(MobileCalDAVDAAccount *)self mobileCalDAVAccount];
  emailAddresses = [mobileCalDAVAccount emailAddresses];

  return emailAddresses;
}

- (id)preferredAddress
{
  mobileCalDAVAccount = [(MobileCalDAVDAAccount *)self mobileCalDAVAccount];
  preferredAddress = [mobileCalDAVAccount preferredAddress];

  return preferredAddress;
}

- (double)refreshInterval
{
  backingAccountInfo = [(MobileCalDAVDAAccount *)self backingAccountInfo];
  calRefreshInterval = [backingAccountInfo calRefreshInterval];

  return calRefreshInterval;
}

- (void)setRefreshInterval:(double)interval
{
  backingAccountInfo = [(MobileCalDAVDAAccount *)self backingAccountInfo];
  [backingAccountInfo setCalRefreshInterval:interval];
}

- (BOOL)pushDisabled
{
  backingAccountInfo = [(MobileCalDAVDAAccount *)self backingAccountInfo];
  calPushDisabled = [backingAccountInfo calPushDisabled];

  return calPushDisabled;
}

- (BOOL)isICloudAccount
{
  backingAccountInfo = [(MobileCalDAVDAAccount *)self backingAccountInfo];
  calIsiCloudCalDAVAccount = [backingAccountInfo calIsiCloudCalDAVAccount];

  return calIsiCloudCalDAVAccount;
}

- (id)spinnerIdentifiers
{
  mobileCalDAVAccount = [(MobileCalDAVDAAccount *)self mobileCalDAVAccount];
  spinnerIdentifiers = [mobileCalDAVAccount spinnerIdentifiers];

  return spinnerIdentifiers;
}

- (BOOL)accountHasSignificantPropertyChangesWithChangeInfo:(id)info
{
  infoCopy = info;
  v15.receiver = self;
  v15.super_class = MobileCalDAVDAAccount;
  if ([(MobileCalDAVDAAccount *)&v15 accountHasSignificantPropertyChangesWithChangeInfo:infoCopy])
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    oldAccountProperties = [infoCopy oldAccountProperties];
    v7 = [oldAccountProperties objectForKeyedSubscript:*MEMORY[0x277CF78C8]];

    if (v7)
    {
      oldAccountProperties2 = [infoCopy oldAccountProperties];
      v9 = [oldAccountProperties2 objectForKeyedSubscript:*MEMORY[0x277CF78D8]];

      v10 = [v9 objectForKeyedSubscript:v7];
      v11 = [v10 objectForKeyedSubscript:*MEMORY[0x277CF7A10]];
    }

    else
    {
      v11 = 0;
    }

    principalPath = [(MobileCalDAVDAAccount *)self principalPath];
    if ([principalPath length] || objc_msgSend(v11, "length"))
    {
      principalPath2 = [(MobileCalDAVDAAccount *)self principalPath];
      v5 = [principalPath2 isEqualToString:v11] ^ 1;
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
  mobileCalDAVAccount = [(MobileCalDAVDAAccount *)self mobileCalDAVAccount];
  [mobileCalDAVAccount calendarsDataclassModified];
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
  accountDescription = [(MobileCalDAVDAAccount *)self accountDescription];
  v7 = [v3 stringWithFormat:v5, accountDescription];

  return v7;
}

- (BOOL)isEqualToAccount:(id)account
{
  accountCopy = account;
  username = [accountCopy username];
  v8 = [username length];
  if (v8 || (-[MobileCalDAVDAAccount username](self, "username"), v35 = objc_claimAutoreleasedReturnValue(), [v35 length]))
  {
    username2 = [accountCopy username];
    username3 = [(MobileCalDAVDAAccount *)self username];
    if (([username2 isEqualToString:username3] & 1) == 0)
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

  host = [accountCopy host];
  v11 = [host length];
  if (v11 || (-[MobileCalDAVDAAccount host](self, "host"), v27 = objc_claimAutoreleasedReturnValue(), [v27 length]))
  {
    host2 = [accountCopy host];
    host3 = [(MobileCalDAVDAAccount *)self host];
    if (([host2 isEqualToString:host3] & 1) == 0)
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

    v31 = host3;
    v26 = host2;
    v33 = v11;
    v34 = host;
    v14 = 1;
  }

  else
  {
    v33 = 0;
    v34 = host;
    v14 = 0;
  }

  principalURL = [accountCopy principalURL];
  absoluteString = [principalURL absoluteString];
  v16 = [absoluteString length];
  if (v16 || (-[MobileCalDAVDAAccount principalURL](self, "principalURL"), v25 = objc_claimAutoreleasedReturnValue(), [v25 absoluteString], v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v24, "length")))
  {
    v28 = v14;
    v29 = username2;
    v30 = username;
    principalURL2 = [accountCopy principalURL];
    absoluteString2 = [principalURL2 absoluteString];
    principalURL3 = [(MobileCalDAVDAAccount *)self principalURL];
    absoluteString3 = [principalURL3 absoluteString];
    v9 = [absoluteString2 isEqualToString:absoluteString3];

    if (v16)
    {

      username2 = v29;
      username = v30;
      v21 = v33;
      v22 = v31;
      if (!v28)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    username2 = v29;
    username = v30;
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
  mobileCalDAVAccount = [(MobileCalDAVDAAccount *)self mobileCalDAVAccount];
  isDelegateAccount = [mobileCalDAVAccount isDelegateAccount];

  return isDelegateAccount;
}

- (NSString)host
{
  host = self->_hostForDiscovery;
  if (!host)
  {
    v5.receiver = self;
    v5.super_class = MobileCalDAVDAAccount;
    host = [(MobileCalDAVDAAccount *)&v5 host];
  }

  return host;
}

- (NSString)username
{
  username = self->_usernameForDiscovery;
  if (!username)
  {
    v5.receiver = self;
    v5.super_class = MobileCalDAVDAAccount;
    username = [(MobileCalDAVDAAccount *)&v5 username];
  }

  return username;
}

- (void)discoveryTask:(id)task gotAccountInfo:(id)info error:(id)error
{
  v37 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  infoCopy = info;
  errorCopy = error;
  v11 = DALoggingwithCategory();
  v12 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v11, v12))
  {
    v31 = 138412802;
    v32 = taskCopy;
    v33 = 2112;
    v34 = infoCopy;
    v35 = 2112;
    v36 = errorCopy;
    _os_log_impl(&dword_2484B2000, v11, v12, "DiscoveryTaskGroup %@ got account info %@ with error %@", &v31, 0x20u);
  }

  checkValidityTaskGroup = [(MobileCalDAVDAAccount *)self checkValidityTaskGroup];

  if (checkValidityTaskGroup == taskCopy)
  {
    if (errorCopy)
    {
LABEL_17:
      v24 = [(MobileCalDAVDAAccount *)self consumerForTask:taskCopy];
      checkValidityTaskGroup2 = [(MobileCalDAVDAAccount *)self checkValidityTaskGroup];
      [(MobileCalDAVDAAccount *)self removeConsumerForTask:checkValidityTaskGroup2];

      if (!errorCopy || ![(MobileCalDAVDAAccount *)self retryDiscoveryTask:v24])
      {
        hostForDiscovery = self->_hostForDiscovery;
        self->_hostForDiscovery = 0;

        usernameForDiscovery = self->_usernameForDiscovery;
        self->_usernameForDiscovery = 0;

        v28 = coreDAVValidationErrorFromRawError();
        [v24 account:self isValid:errorCopy == 0 validationError:v28];

        [(MobileCalDAVDAAccount *)self setCheckValidityTaskGroup:0];
      }

      goto LABEL_21;
    }

    if ([(MobileCalDAVDAAccount *)self isDelegateAccount])
    {
      goto LABEL_6;
    }

    principalPath = [(MobileCalDAVDAAccount *)self principalPath];
    if ([principalPath length])
    {
      principalPath2 = [(MobileCalDAVDAAccount *)self principalPath];
      if (![principalPath2 isEqualToString:@"/"])
      {
        shouldDoInitialAutodiscovery = [(MobileCalDAVDAAccount *)self shouldDoInitialAutodiscovery];

        if (!shouldDoInitialAutodiscovery)
        {
LABEL_6:
          v14 = 0;
LABEL_12:
          scheme = [infoCopy scheme];
          -[MobileCalDAVDAAccount setUseSSL:](self, "setUseSSL:", [scheme isEqualToString:@"http"] ^ 1);

          host = [infoCopy host];
          [(MobileCalDAVDAAccount *)self setHost:host];

          if (self->_usernameForDiscovery)
          {
            [(MobileCalDAVDAAccount *)self setUsername:?];
          }

          -[MobileCalDAVDAAccount setPort:](self, "setPort:", [infoCopy port]);
          if (v14)
          {
            [(MobileCalDAVDAAccount *)self saveModifiedPropertiesOnBackingAccount];
          }

          v20 = MEMORY[0x277CF7040];
          serverHeaders = [infoCopy serverHeaders];
          v22 = [v20 versionWithHTTPHeaders:serverHeaders];
          mobileCalDAVAccount = [(MobileCalDAVDAAccount *)self mobileCalDAVAccount];
          [mobileCalDAVAccount setServerVersion:v22];

          goto LABEL_17;
        }

LABEL_11:
        principalURL = [infoCopy principalURL];
        [(MobileCalDAVDAAccount *)self setPrincipalURL:principalURL];

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
  mobileCalDAVAccount = [(MobileCalDAVDAAccount *)self mobileCalDAVAccount];
  saveModifiedPropertiesOnBackingAccount = [mobileCalDAVAccount saveModifiedPropertiesOnBackingAccount];

  return saveModifiedPropertiesOnBackingAccount;
}

- (id)wellKnownPaths
{
  v3 = MEMORY[0x277CCACA8];
  username = [(MobileCalDAVDAAccount *)self username];
  v5 = [v3 stringWithFormat:@"/calendar/dav/%@/user/", username];

  v6 = [MEMORY[0x277CBEB18] arrayWithObjects:{@"/.well-known/caldav", @"/", @"/principals/", v5, 0}];
  principalPath = [(MobileCalDAVDAAccount *)self principalPath];
  da_appendSlashIfNeeded = [principalPath da_appendSlashIfNeeded];

  if ([da_appendSlashIfNeeded length] && (objc_msgSend(v6, "containsObject:", da_appendSlashIfNeeded) & 1) == 0)
  {
    if (![(MobileCalDAVDAAccount *)self shouldDoInitialAutodiscovery])
    {
      [v6 removeAllObjects];
    }

    [v6 insertObject:da_appendSlashIfNeeded atIndex:0];
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

- (id)portListByInsertingUserEnteredPort:(id)port
{
  portCopy = port;
  port = [(MobileCalDAVDAAccount *)self port];
  if (port < 1)
  {
    v7 = portCopy;
  }

  else
  {
    v6 = port;
    v7 = [portCopy mutableCopy];
    if (![(MobileCalDAVDAAccount *)self shouldDoInitialAutodiscovery])
    {
      [v7 removeAllObjects];
    }

    v8 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
    [v7 insertObject:v8 atIndex:0];
  }

  return v7;
}

- (BOOL)retryDiscoveryTask:(id)task
{
  usernameForDiscovery = self->_usernameForDiscovery;
  if (usernameForDiscovery)
  {
    [(MobileCalDAVDAAccount *)self performDiscoveryWithHostname:self->_hostForDiscovery username:0 consumer:task];
  }

  return usernameForDiscovery != 0;
}

- (void)discoverInitialPropertiesWithConsumer:(id)consumer
{
  consumerCopy = consumer;
  mobileCalDAVAccount = [(MobileCalDAVDAAccount *)self mobileCalDAVAccount];
  [mobileCalDAVAccount discoverInitialPropertiesWithConsumer:consumerCopy];
}

- (void)_discoverInitialPropertiesWithConsumer:(id)consumer
{
  v17 = *MEMORY[0x277D85DE8];
  consumerCopy = consumer;
  host = [(MobileCalDAVDAAccount *)self host];
  if (host && (v6 = host, -[MobileCalDAVDAAccount host](self, "host"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 length], v7, v6, v8))
  {
    [(MobileCalDAVDAAccount *)self performDiscoveryWithHostname:0 username:0 consumer:consumerCopy];
  }

  else
  {
    username = [(MobileCalDAVDAAccount *)self username];
    if ([username resemblesEmailAddress])
    {
      hostFromEmail = [username hostFromEmail];
      userFromEmail = [username userFromEmail];
    }

    else
    {
      hostFromEmail = 0;
      userFromEmail = 0;
    }

    if ([hostFromEmail length] && objc_msgSend(userFromEmail, "length"))
    {
      [(MobileCalDAVDAAccount *)self performDiscoveryWithHostname:hostFromEmail username:userFromEmail consumer:consumerCopy];
    }

    else
    {
      v12 = DALoggingwithCategory();
      v13 = *(MEMORY[0x277D03988] + 4);
      if (os_log_type_enabled(v12, v13))
      {
        v15 = 138412290;
        selfCopy = self;
        _os_log_impl(&dword_2484B2000, v12, v13, "Autodiscover called on account %@, but that account does not have a host set, and one could not be inferred from the username. Ignoring autodiscovery request", &v15, 0xCu);
      }

      [consumerCopy account:self isValid:0 validationError:0];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)performDiscoveryWithHostname:(id)hostname username:(id)username consumer:(id)consumer
{
  v44 = *MEMORY[0x277D85DE8];
  hostnameCopy = hostname;
  usernameCopy = username;
  consumerCopy = consumer;
  objc_storeStrong(&self->_hostForDiscovery, hostname);
  objc_storeStrong(&self->_usernameForDiscovery, username);
  [(MobileCalDAVDAAccount *)self setShouldUseOpportunisticSockets:0];
  host = [(MobileCalDAVDAAccount *)self host];
  if (host && (v13 = host, -[MobileCalDAVDAAccount host](self, "host"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 length], v14, v13, v15))
  {
    v36 = usernameCopy;
    v37 = hostnameCopy;
    wellKnownPaths = [(MobileCalDAVDAAccount *)self wellKnownPaths];
    httpPorts = [(MobileCalDAVDAAccount *)self httpPorts];
    httpsPorts = [(MobileCalDAVDAAccount *)self httpsPorts];
    v19 = objc_alloc(MEMORY[0x277CFDBB0]);
    mobileCalDAVAccount = [(MobileCalDAVDAAccount *)self mobileCalDAVAccount];
    mainPrincipal = [mobileCalDAVAccount mainPrincipal];
    taskManager = [(MobileCalDAVDAAccount *)self taskManager];
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

    v25 = [v19 initWithAccountInfoProvider:mainPrincipal taskManager:taskManager httpPorts:httpPorts httpsPorts:httpsPorts httpServiceString:v23 httpsServiceString:v24 wellKnownPaths:wellKnownPaths requiredComplianceClass:@"calendar-access"];
    [(MobileCalDAVDAAccount *)self setCheckValidityTaskGroup:v25];

    checkValidityTaskGroup = [(MobileCalDAVDAAccount *)self checkValidityTaskGroup];
    [checkValidityTaskGroup setTimeoutInterval:15.0];

    checkValidityTaskGroup2 = [(MobileCalDAVDAAccount *)self checkValidityTaskGroup];
    [checkValidityTaskGroup2 setDelegate:self];

    v28 = DALoggingwithCategory();
    v29 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v28, v29))
    {
      checkValidityTaskGroup3 = [(MobileCalDAVDAAccount *)self checkValidityTaskGroup];
      *buf = 138412802;
      selfCopy2 = self;
      v40 = 2112;
      v41 = checkValidityTaskGroup3;
      v42 = 2112;
      v43 = consumerCopy;
      _os_log_impl(&dword_2484B2000, v28, v29, "account %@ is checking validity with group %@ on behalf of %@", buf, 0x20u);
    }

    checkValidityTaskGroup4 = [(MobileCalDAVDAAccount *)self checkValidityTaskGroup];
    [(MobileCalDAVDAAccount *)self setConsumer:consumerCopy forTask:checkValidityTaskGroup4];

    checkValidityTaskGroup5 = [(MobileCalDAVDAAccount *)self checkValidityTaskGroup];
    [checkValidityTaskGroup5 startTaskGroup];

    usernameCopy = v36;
    hostnameCopy = v37;
  }

  else
  {
    v33 = DALoggingwithCategory();
    v34 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v33, v34))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_2484B2000, v33, v34, "Autodiscover called on account %@, but that account does not have a host. Ignoring autodiscovery request", buf, 0xCu);
    }

    [consumerCopy account:self isValid:0 validationError:0];
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (BOOL)upgradeAccount
{
  selfCopy = self;
  v88 = *MEMORY[0x277D85DE8];
  mobileCalDAVAccount = [(MobileCalDAVDAAccount *)self mobileCalDAVAccount];
  v4 = [(MobileCalDAVDAAccount *)selfCopy accountIntPropertyForKey:@"CalDAVAccountVersion"];
  if (v4 > 16000)
  {
    goto LABEL_53;
  }

  v5 = MEMORY[0x277D03988];
  v6 = 0x277CBE000uLL;
  v7 = &off_2484F1000;
  v59 = mobileCalDAVAccount;
  v62 = selfCopy;
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
    mainPrincipal = [mobileCalDAVAccount mainPrincipal];
    legacy_principalURL = [mainPrincipal legacy_principalURL];

    if (legacy_principalURL)
    {
      v10 = DALoggingwithCategory();
      v11 = *(v5 + 6);
      if (os_log_type_enabled(v10, v11))
      {
        mainPrincipal2 = [mobileCalDAVAccount mainPrincipal];
        legacy_principalURL2 = [mainPrincipal2 legacy_principalURL];
        *buf = 138412290;
        v83 = legacy_principalURL2;
        _os_log_impl(&dword_2484B2000, v10, v11, "Upgrading principal URL from %@", buf, 0xCu);
      }

      mainPrincipal3 = [mobileCalDAVAccount mainPrincipal];
      legacy_principalURL3 = [mainPrincipal3 legacy_principalURL];
      [(MobileCalDAVDAAccount *)selfCopy setPrincipalURL:legacy_principalURL3];

      v16 = DALoggingwithCategory();
      if (os_log_type_enabled(v16, v11))
      {
        principalURL = [(MobileCalDAVDAAccount *)selfCopy principalURL];
        *buf = 138412290;
        v83 = principalURL;
        _os_log_impl(&dword_2484B2000, v16, v11, "New principal URL is %@", buf, 0xCu);
      }

      v6 = 0x277CBE000;
    }
  }

  username = [(MobileCalDAVDAAccount *)selfCopy username];
  v18 = DALoggingwithCategory();
  type = *(v5 + 6);
  if (os_log_type_enabled(v18, type))
  {
    accountDescription = [(MobileCalDAVDAAccount *)selfCopy accountDescription];
    publicDescription = [(MobileCalDAVDAAccount *)selfCopy publicDescription];
    *buf = 138412802;
    v83 = accountDescription;
    v84 = 2114;
    v85 = publicDescription;
    v86 = 2112;
    v87 = username;
    _os_log_impl(&dword_2484B2000, v18, type, "Upgrading account %@ (%{public}@); stripping username %@ from subcal URLs.", buf, 0x20u);
  }

  subscribedCalendars = [mobileCalDAVAccount subscribedCalendars];
  v69 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(subscribedCalendars, "count")}];
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v22 = subscribedCalendars;
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

      subCalSubscriptionURLKey = [MEMORY[0x277D03970] SubCalSubscriptionURLKey];
      v31 = [v29 objectForKeyedSubscript:subCalSubscriptionURLKey];

      v32 = [*(v6 + 3008) URLWithString:v31];
      password = [v32 password];
      if (password)
      {
        absoluteString = password;
      }

      else
      {
        user = [v32 user];
        v36 = [user isEqualToString:username];

        if (!v36)
        {
          goto LABEL_24;
        }

        da_urlByRemovingUsername = [v32 da_urlByRemovingUsername];
        absoluteString = [da_urlByRemovingUsername absoluteString];

        v38 = DALoggingwithCategory();
        if (os_log_type_enabled(v38, type))
        {
          *buf = 138412546;
          v83 = v31;
          v84 = 2112;
          v85 = absoluteString;
          _os_log_impl(&dword_2484B2000, v38, type, "Stripping url: %@ -> %@", buf, 0x16u);
        }

        subCalSubscriptionURLKey2 = [MEMORY[0x277D03970] SubCalSubscriptionURLKey];
        [v29 setObject:absoluteString forKeyedSubscript:subCalSubscriptionURLKey2];

        v63 = 1;
      }

LABEL_24:
      [v69 setObject:v29 forKeyedSubscript:v27];

      v6 = 0x277CBE000;
    }

    v24 = [v22 countByEnumeratingWithState:&v76 objects:v81 count:16];
  }

  while (v24);

  mobileCalDAVAccount = v59;
  selfCopy = v62;
  v7 = &off_2484F1000;
  v5 = MEMORY[0x277D03988];
  if (v63)
  {
    [v59 setSubscribedCalendars:v69];
  }

LABEL_29:

LABEL_30:
  subscribedCalendars2 = [mobileCalDAVAccount subscribedCalendars];
  subscribedCalendars3 = [mobileCalDAVAccount subscribedCalendars];
  v42 = [subscribedCalendars3 mutableCopy];

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v43 = subscribedCalendars2;
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
        path = [v48 path];
        da_appendSlashIfNeeded = [path da_appendSlashIfNeeded];

        if (da_appendSlashIfNeeded)
        {
          [v42 removeObjectForKey:v47];
          [v42 setObject:v49 forKeyedSubscript:da_appendSlashIfNeeded];
          v52 = DALoggingwithCategory();
          if (os_log_type_enabled(v52, v44))
          {
            *buf = v60;
            v83 = v47;
            v84 = 2112;
            v85 = da_appendSlashIfNeeded;
            _os_log_impl(&dword_2484B2000, v52, v44, "Updated CalDAV subscribed calendar key: %@ -> %@", buf, 0x16u);
          }

          v64 = 1;
        }

        else
        {
          v52 = DALoggingwithCategory();
          if (os_log_type_enabled(v52, v45))
          {
            accountID = [(MobileCalDAVDAAccount *)v62 accountID];
            *buf = 138543618;
            v83 = accountID;
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
          da_appendSlashIfNeeded = [(MobileCalDAVDAAccount *)v62 accountID];
          *buf = 138543618;
          v83 = da_appendSlashIfNeeded;
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

  mobileCalDAVAccount = v59;
  selfCopy = v62;
  if (v64)
  {
    [v59 setSubscribedCalendars:v42];
  }

LABEL_52:

  [(MobileCalDAVDAAccount *)selfCopy setAccountIntProperty:16001 forKey:@"CalDAVAccountVersion"];
  [(MobileCalDAVDAAccount *)selfCopy saveModifiedPropertiesOnBackingAccount];
  v4 = v58;
LABEL_53:
  v54 = v4 < 16001;
  v71.receiver = selfCopy;
  v71.super_class = MobileCalDAVDAAccount;
  upgradeAccount = [(MobileCalDAVDAAccount *)&v71 upgradeAccount];

  v56 = *MEMORY[0x277D85DE8];
  return (v54 | upgradeAccount) & 1;
}

- (id)additionalHeaderValues
{
  v4.receiver = self;
  v4.super_class = MobileCalDAVDAAccount;
  additionalHeaderValues = [(MobileCalDAVDAAccount *)&v4 additionalHeaderValues];

  return additionalHeaderValues;
}

- (id)beginDownloadingAttachmentWithUUID:(id)d consumer:(id)consumer
{
  v6.receiver = self;
  v6.super_class = MobileCalDAVDAAccount;
  v4 = [(MobileCalDAVDAAccount *)&v6 beginDownloadingAttachmentWithUUID:d consumer:consumer];

  return v4;
}

- (id)customConnectionProperties
{
  v4.receiver = self;
  v4.super_class = MobileCalDAVDAAccount;
  customConnectionProperties = [(MobileCalDAVDAAccount *)&v4 customConnectionProperties];

  return customConnectionProperties;
}

- (void)dropAssertionsAndRenewCredentialsInQueue:(id)queue withHandler:(id)handler
{
  v4.receiver = self;
  v4.super_class = MobileCalDAVDAAccount;
  [(MobileCalDAVDAAccount *)&v4 dropAssertionsAndRenewCredentialsInQueue:queue withHandler:handler];
}

- (id)oauth2Token
{
  v4.receiver = self;
  v4.super_class = MobileCalDAVDAAccount;
  oauth2Token = [(MobileCalDAVDAAccount *)&v4 oauth2Token];

  return oauth2Token;
}

- (void)webLoginRequestedAtURL:(id)l reasonString:(id)string inQueue:(id)queue completionBlock:(id)block
{
  v6.receiver = self;
  v6.super_class = MobileCalDAVDAAccount;
  [(MobileCalDAVDAAccount *)&v6 webLoginRequestedAtURL:l reasonString:string inQueue:queue completionBlock:block];
}

- (void)promptUserForNewCoreDAVPasswordWithCompletionBlock:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __76__MobileCalDAVDAAccount_promptUserForNewCoreDAVPasswordWithCompletionBlock___block_invoke;
  v8[3] = &unk_278F17500;
  v9 = blockCopy;
  v5 = blockCopy;
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
  backingAccountInfo = [(MobileCalDAVDAAccount *)self backingAccountInfo];
  aa_needsToVerifyTerms = [backingAccountInfo aa_needsToVerifyTerms];

  return aa_needsToVerifyTerms;
}

- (void)_reallyPerformSearchQuery:(id)query
{
  queryCopy = query;
  mobileCalDAVAccount = [(MobileCalDAVDAAccount *)self mobileCalDAVAccount];
  [mobileCalDAVAccount _reallyPerformSearchQuery:queryCopy];
}

- (void)_reallyCancelSearchQuery:(id)query
{
  queryCopy = query;
  mobileCalDAVAccount = [(MobileCalDAVDAAccount *)self mobileCalDAVAccount];
  [mobileCalDAVAccount _reallyCancelSearchQuery:queryCopy];
}

- (void)_reallyCancelPendingSearchQuery:(id)query
{
  queryCopy = query;
  mobileCalDAVAccount = [(MobileCalDAVDAAccount *)self mobileCalDAVAccount];
  [mobileCalDAVAccount _reallyCancelPendingSearchQuery:queryCopy];
}

- (void)_reallyCancelAllSearchQueries
{
  mobileCalDAVAccount = [(MobileCalDAVDAAccount *)self mobileCalDAVAccount];
  [mobileCalDAVAccount _reallyCancelAllSearchQueries];
}

- (BOOL)_reallySearchQueriesRunning
{
  mobileCalDAVAccount = [(MobileCalDAVDAAccount *)self mobileCalDAVAccount];
  _reallySearchQueriesRunning = [mobileCalDAVAccount _reallySearchQueriesRunning];

  return _reallySearchQueriesRunning;
}

- (void)addToCoreDAVLoggingDelegates
{
  mainPrincipal = [(MobileCalDAVDAAccount *)self mainPrincipal];

  if (mainPrincipal)
  {
    mEMORY[0x277CFDC18] = [MEMORY[0x277CFDC18] sharedLogging];
    mobileCalDAVAccount = [(MobileCalDAVDAAccount *)self mobileCalDAVAccount];
    mainPrincipal2 = [mobileCalDAVAccount mainPrincipal];
    [mEMORY[0x277CFDC18] addLogDelegate:self forAccountInfoProvider:mainPrincipal2];
  }
}

- (void)removeFromCoreDAVLoggingDelegates
{
  mainPrincipal = [(MobileCalDAVDAAccount *)self mainPrincipal];

  if (mainPrincipal)
  {
    mEMORY[0x277CFDC18] = [MEMORY[0x277CFDC18] sharedLogging];
    mobileCalDAVAccount = [(MobileCalDAVDAAccount *)self mobileCalDAVAccount];
    mainPrincipal2 = [mobileCalDAVAccount mainPrincipal];
    [mEMORY[0x277CFDC18] removeLogDelegate:self forAccountInfoProvider:mainPrincipal2];
  }
}

- (void)coreDAVLogTransmittedDataPartial:(id)partial
{
  partialCopy = partial;
  coreDAVLogger = [(MobileCalDAVDAAccount *)self coreDAVLogger];
  [coreDAVLogger logSnippet:partialCopy];
}

- (id)childAccountsWithAccountTypeIdentifier:(id)identifier
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)childAccountWithIdentifier:(id)identifier
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)createChildAccountWithAccountTypeIdentifier:(id)identifier
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)removeAccount:(id)account
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();

  NSRequestConcreteImplementation();
}

@end