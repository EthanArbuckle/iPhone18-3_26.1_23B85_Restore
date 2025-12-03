@interface CardDAVAccount
- (BOOL)enabledForDADataclass:(int64_t)dataclass;
- (BOOL)handleTrustChallenge:(id)challenge completionHandler:(id)handler;
- (BOOL)isEqualToAccount:(id)account;
- (CardDAVAccount)initWithBackingAccountInfo:(id)info;
- (DACoreDAVTaskManager)taskManager;
- (id)copyImageContentsAtURL:(id)l outError:(id *)error;
- (id)localizedIdenticalAccountFailureMessage;
- (id)localizedInvalidPasswordMessage;
- (id)spinnerIdentifiers;
- (id)wellKnownPaths;
- (void)addToCoreDAVLoggingDelegates;
- (void)coreDAVLogTransmittedDataPartial:(id)partial;
- (void)dealloc;
- (void)discoverInitialPropertiesWithConsumer:(id)consumer;
- (void)discoveryTask:(id)task gotAccountInfo:(id)info error:(id)error;
- (void)noteHomeSetOnDifferentHost:(id)host;
- (void)promptUserForNewCoreDAVPasswordWithCompletionBlock:(id)block;
- (void)removeFromCoreDAVLoggingDelegates;
@end

@implementation CardDAVAccount

- (CardDAVAccount)initWithBackingAccountInfo:(id)info
{
  v10.receiver = self;
  v10.super_class = CardDAVAccount;
  v3 = [(CardDAVAccount *)&v10 initWithBackingAccountInfo:info];
  if (v3)
  {
    registerDefaultLoggerWithCoreDAV = [MEMORY[0x277D03888] registerDefaultLoggerWithCoreDAV];
    v5 = [MEMORY[0x277D03980] filenameWithBasename:@"CardDAVHTTPTraffic"];
    v6 = [objc_alloc(MEMORY[0x277D03888]) initWithFilename:v5];
    [(CardDAVAccount *)v3 setCurLogger:v6];

    v7 = +[CardDAVLocalDBHelper sharedInstance];
    databaseHelper = v3->_databaseHelper;
    v3->_databaseHelper = v7;
  }

  return v3;
}

- (void)dealloc
{
  [(CoreDAVDiscoveryTaskGroup *)self->_checkValidityTaskGroup cancelTaskGroup];
  v3.receiver = self;
  v3.super_class = CardDAVAccount;
  [(CardDAVAccount *)&v3 dealloc];
}

- (id)wellKnownPaths
{
  v3 = [MEMORY[0x277CBEB18] arrayWithObjects:{@"/.well-known/carddav", @"/", @"/principals/", 0}];
  principalPath = [(CardDAVAccount *)self principalPath];
  da_appendSlashIfNeeded = [principalPath da_appendSlashIfNeeded];

  if ([da_appendSlashIfNeeded length] && (objc_msgSend(v3, "containsObject:", da_appendSlashIfNeeded) & 1) == 0)
  {
    if (([(CardDAVAccount *)self shouldDoInitialAutodiscovery]& 1) == 0)
    {
      [v3 removeAllObjects];
    }

    [v3 insertObject:da_appendSlashIfNeeded atIndex:0];
  }

  return v3;
}

- (void)discoverInitialPropertiesWithConsumer:(id)consumer
{
  v30 = *MEMORY[0x277D85DE8];
  consumerCopy = consumer;
  host = [(CardDAVAccount *)self host];

  if (host)
  {
    [(CardDAVAccount *)self setShouldUseOpportunisticSockets:0];
    v6 = objc_alloc(MEMORY[0x277CFDBB0]);
    taskManager = [(CardDAVAccount *)self taskManager];
    v8 = [MEMORY[0x277CBEA60] cdvArrayWithIntegers:{8008, 8800, 80, 8080, 0}];
    v9 = [MEMORY[0x277CBEA60] cdvArrayWithIntegers:{8443, 8843, 443, 0}];
    if ([(CardDAVAccount *)self useSSL])
    {
      v10 = 0;
    }

    else
    {
      v10 = @"_carddav._tcp.";
    }

    if ([(CardDAVAccount *)self useSSL])
    {
      v11 = @"_carddavs._tcp.";
    }

    else
    {
      v11 = 0;
    }

    wellKnownPaths = [(CardDAVAccount *)self wellKnownPaths];
    v13 = [v6 initWithAccountInfoProvider:self taskManager:taskManager httpPorts:v8 httpsPorts:v9 httpServiceString:v10 httpsServiceString:v11 wellKnownPaths:wellKnownPaths requiredComplianceClass:@"addressbook"];
    [(CardDAVAccount *)self setCheckValidityTaskGroup:v13];

    checkValidityTaskGroup = [(CardDAVAccount *)self checkValidityTaskGroup];
    [checkValidityTaskGroup setTimeoutInterval:15.0];

    checkValidityTaskGroup2 = [(CardDAVAccount *)self checkValidityTaskGroup];
    [checkValidityTaskGroup2 setDelegate:self];

    v16 = DALoggingwithCategory();
    v17 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v16, v17))
    {
      checkValidityTaskGroup3 = [(CardDAVAccount *)self checkValidityTaskGroup];
      *buf = 138412802;
      selfCopy2 = self;
      v26 = 2112;
      v27 = checkValidityTaskGroup3;
      v28 = 2112;
      v29 = consumerCopy;
      _os_log_impl(&dword_24850D000, v16, v17, "account %@ is checking validity with group %@ on behalf of %@", buf, 0x20u);
    }

    checkValidityTaskGroup4 = [(CardDAVAccount *)self checkValidityTaskGroup];
    [(CardDAVAccount *)self setConsumer:consumerCopy forTask:checkValidityTaskGroup4];

    checkValidityTaskGroup5 = [(CardDAVAccount *)self checkValidityTaskGroup];
    [checkValidityTaskGroup5 startTaskGroup];
  }

  else
  {
    v21 = DALoggingwithCategory();
    v22 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v21, v22))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_24850D000, v21, v22, "Autodiscover called on account %@, but that account does not have a host set. Ignoring autodiscovery request", buf, 0xCu);
    }

    [consumerCopy account:self isValid:0 validationError:0];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)discoveryTask:(id)task gotAccountInfo:(id)info error:(id)error
{
  v28 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  infoCopy = info;
  errorCopy = error;
  v11 = DALoggingwithCategory();
  v12 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v11, v12))
  {
    v22 = 138412802;
    v23 = taskCopy;
    v24 = 2112;
    v25 = infoCopy;
    v26 = 2112;
    v27 = errorCopy;
    _os_log_impl(&dword_24850D000, v11, v12, "DiscoveryTaskGroup %@ got account info %@ with error %@", &v22, 0x20u);
  }

  checkValidityTaskGroup = [(CardDAVAccount *)self checkValidityTaskGroup];

  if (checkValidityTaskGroup == taskCopy)
  {
    if (!errorCopy)
    {
      principalURL = [infoCopy principalURL];
      [(CardDAVAccount *)self setPrincipalURL:principalURL];

      scheme = [infoCopy scheme];
      -[CardDAVAccount setUseSSL:](self, "setUseSSL:", [scheme isEqualToString:@"http"] ^ 1);

      host = [infoCopy host];
      [(CardDAVAccount *)self setHost:host];

      -[CardDAVAccount setPort:](self, "setPort:", [infoCopy port]);
      serverComplianceClasses = [infoCopy serverComplianceClasses];
      -[CardDAVAccount setSupportsWallpaperSync:](self, "setSupportsWallpaperSync:", [serverComplianceClasses containsObject:*MEMORY[0x277CFDEC8]]);
    }

    v18 = [(CardDAVAccount *)self consumerForTask:taskCopy];
    v19 = coreDAVValidationErrorFromRawError();
    [v18 account:self isValid:errorCopy == 0 validationError:v19];

    checkValidityTaskGroup2 = [(CardDAVAccount *)self checkValidityTaskGroup];
    [(CardDAVAccount *)self removeConsumerForTask:checkValidityTaskGroup2];

    [(CardDAVAccount *)self setCheckValidityTaskGroup:0];
  }

  v21 = *MEMORY[0x277D85DE8];
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

- (void)noteHomeSetOnDifferentHost:(id)host
{
  hostCopy = host;
  scheme = [hostCopy scheme];
  -[CardDAVAccount setUseSSL:](self, "setUseSSL:", [scheme isEqualToString:@"http"] ^ 1);

  host = [hostCopy host];
  [(CardDAVAccount *)self setHost:host];

  port = [hostCopy port];

  if (port)
  {
    port2 = [hostCopy port];
    -[CardDAVAccount setPort:](self, "setPort:", [port2 integerValue]);
  }

  [(CardDAVAccount *)self setShouldDoInitialAutodiscovery:1];
  [(CardDAVAccount *)self saveAccountProperties];
}

- (id)copyImageContentsAtURL:(id)l outError:(id *)error
{
  v16 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v6 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfURL:lCopy options:2 error:error];
  if (!v6)
  {
    v7 = DALoggingwithCategory();
    v8 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v7, v8))
    {
      if (error)
      {
        v9 = *error;
      }

      else
      {
        v9 = 0;
      }

      v12 = 138412546;
      v13 = lCopy;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_24850D000, v7, v8, "Could not get photo data from url %@.  Error %@", &v12, 0x16u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isEqualToAccount:(id)account
{
  accountCopy = account;
  username = [accountCopy username];
  v8 = [username length];
  if (v8 || (-[CardDAVAccount username](self, "username"), v35 = objc_claimAutoreleasedReturnValue(), [v35 length]))
  {
    username2 = [accountCopy username];
    username3 = [(CardDAVAccount *)self username];
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
  if (v11 || (-[CardDAVAccount host](self, "host"), v27 = objc_claimAutoreleasedReturnValue(), [v27 length]))
  {
    host2 = [accountCopy host];
    host3 = [(CardDAVAccount *)self host];
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
  if (v16 || (-[CardDAVAccount principalURL](self, "principalURL"), v25 = objc_claimAutoreleasedReturnValue(), [v25 absoluteString], v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v24, "length")))
  {
    v28 = v14;
    v29 = username2;
    v30 = username;
    principalURL2 = [accountCopy principalURL];
    absoluteString2 = [principalURL2 absoluteString];
    principalURL3 = [(CardDAVAccount *)self principalURL];
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

- (id)localizedIdenticalAccountFailureMessage
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"ACCOUNT_UNIQUE_CONSTRAINT_FAILED_BODY_FORMAT_CARDDAV" value:&stru_285ABC3A8 table:@"DataAccess"];

  return v3;
}

- (id)localizedInvalidPasswordMessage
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"INVALID_PASSWORD_BODY_CARDDAV" value:&stru_285ABC3A8 table:@"DataAccess"];
  accountDescription = [(CardDAVAccount *)self accountDescription];
  v7 = [v3 stringWithFormat:v5, accountDescription];

  return v7;
}

- (id)spinnerIdentifiers
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D03708];
  v6[0] = *MEMORY[0x277D03710];
  v6[1] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)promptUserForNewCoreDAVPasswordWithCompletionBlock:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__CardDAVAccount_promptUserForNewCoreDAVPasswordWithCompletionBlock___block_invoke;
  v8[3] = &unk_278F1AEA8;
  v9 = blockCopy;
  v5 = blockCopy;
  v6 = MEMORY[0x24C1D0B70](v8);
  if ([(CardDAVAccount *)self isValidating])
  {
    v6[2](v6, 2, 0);
  }

  else
  {
    v7 = dataaccess_get_global_queue();
    [(CardDAVAccount *)self dropAssertionsAndRenewCredentialsInQueue:v7 withHandler:v6];
  }
}

void __69__CardDAVAccount_promptUserForNewCoreDAVPasswordWithCompletionBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  (*(*(a1 + 32) + 16))();
}

- (BOOL)handleTrustChallenge:(id)challenge completionHandler:(id)handler
{
  v5.receiver = self;
  v5.super_class = CardDAVAccount;
  [(CardDAVAccount *)&v5 handleTrustChallenge:challenge completionHandler:handler];
  return 0;
}

- (void)addToCoreDAVLoggingDelegates
{
  mEMORY[0x277CFDC18] = [MEMORY[0x277CFDC18] sharedLogging];
  [mEMORY[0x277CFDC18] addLogDelegate:self forAccountInfoProvider:self];
}

- (void)removeFromCoreDAVLoggingDelegates
{
  mEMORY[0x277CFDC18] = [MEMORY[0x277CFDC18] sharedLogging];
  [mEMORY[0x277CFDC18] removeLogDelegate:self forAccountInfoProvider:self];
}

- (void)coreDAVLogTransmittedDataPartial:(id)partial
{
  partialCopy = partial;
  curLogger = [(CardDAVAccount *)self curLogger];
  [curLogger logSnippet:partialCopy];
}

- (BOOL)enabledForDADataclass:(int64_t)dataclass
{
  backingAccountInfo = [(CardDAVAccount *)self backingAccountInfo];
  displayAccount = [backingAccountInfo displayAccount];
  v5 = acDataclassForDADataclass();
  v6 = [displayAccount isEnabledForDataclass:v5];

  return v6;
}

@end