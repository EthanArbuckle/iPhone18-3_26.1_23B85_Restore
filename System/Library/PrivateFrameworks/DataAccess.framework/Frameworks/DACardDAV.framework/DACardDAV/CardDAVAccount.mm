@interface CardDAVAccount
- (BOOL)enabledForDADataclass:(int64_t)a3;
- (BOOL)handleTrustChallenge:(id)a3 completionHandler:(id)a4;
- (BOOL)isEqualToAccount:(id)a3;
- (CardDAVAccount)initWithBackingAccountInfo:(id)a3;
- (DACoreDAVTaskManager)taskManager;
- (id)copyImageContentsAtURL:(id)a3 outError:(id *)a4;
- (id)localizedIdenticalAccountFailureMessage;
- (id)localizedInvalidPasswordMessage;
- (id)spinnerIdentifiers;
- (id)wellKnownPaths;
- (void)addToCoreDAVLoggingDelegates;
- (void)coreDAVLogTransmittedDataPartial:(id)a3;
- (void)dealloc;
- (void)discoverInitialPropertiesWithConsumer:(id)a3;
- (void)discoveryTask:(id)a3 gotAccountInfo:(id)a4 error:(id)a5;
- (void)noteHomeSetOnDifferentHost:(id)a3;
- (void)promptUserForNewCoreDAVPasswordWithCompletionBlock:(id)a3;
- (void)removeFromCoreDAVLoggingDelegates;
@end

@implementation CardDAVAccount

- (CardDAVAccount)initWithBackingAccountInfo:(id)a3
{
  v10.receiver = self;
  v10.super_class = CardDAVAccount;
  v3 = [(CardDAVAccount *)&v10 initWithBackingAccountInfo:a3];
  if (v3)
  {
    v4 = [MEMORY[0x277D03888] registerDefaultLoggerWithCoreDAV];
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
  v4 = [(CardDAVAccount *)self principalPath];
  v5 = [v4 da_appendSlashIfNeeded];

  if ([v5 length] && (objc_msgSend(v3, "containsObject:", v5) & 1) == 0)
  {
    if (([(CardDAVAccount *)self shouldDoInitialAutodiscovery]& 1) == 0)
    {
      [v3 removeAllObjects];
    }

    [v3 insertObject:v5 atIndex:0];
  }

  return v3;
}

- (void)discoverInitialPropertiesWithConsumer:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CardDAVAccount *)self host];

  if (v5)
  {
    [(CardDAVAccount *)self setShouldUseOpportunisticSockets:0];
    v6 = objc_alloc(MEMORY[0x277CFDBB0]);
    v7 = [(CardDAVAccount *)self taskManager];
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

    v12 = [(CardDAVAccount *)self wellKnownPaths];
    v13 = [v6 initWithAccountInfoProvider:self taskManager:v7 httpPorts:v8 httpsPorts:v9 httpServiceString:v10 httpsServiceString:v11 wellKnownPaths:v12 requiredComplianceClass:@"addressbook"];
    [(CardDAVAccount *)self setCheckValidityTaskGroup:v13];

    v14 = [(CardDAVAccount *)self checkValidityTaskGroup];
    [v14 setTimeoutInterval:15.0];

    v15 = [(CardDAVAccount *)self checkValidityTaskGroup];
    [v15 setDelegate:self];

    v16 = DALoggingwithCategory();
    v17 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = [(CardDAVAccount *)self checkValidityTaskGroup];
      *buf = 138412802;
      v25 = self;
      v26 = 2112;
      v27 = v18;
      v28 = 2112;
      v29 = v4;
      _os_log_impl(&dword_24850D000, v16, v17, "account %@ is checking validity with group %@ on behalf of %@", buf, 0x20u);
    }

    v19 = [(CardDAVAccount *)self checkValidityTaskGroup];
    [(CardDAVAccount *)self setConsumer:v4 forTask:v19];

    v20 = [(CardDAVAccount *)self checkValidityTaskGroup];
    [v20 startTaskGroup];
  }

  else
  {
    v21 = DALoggingwithCategory();
    v22 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v21, v22))
    {
      *buf = 138412290;
      v25 = self;
      _os_log_impl(&dword_24850D000, v21, v22, "Autodiscover called on account %@, but that account does not have a host set. Ignoring autodiscovery request", buf, 0xCu);
    }

    [v4 account:self isValid:0 validationError:0];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)discoveryTask:(id)a3 gotAccountInfo:(id)a4 error:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = DALoggingwithCategory();
  v12 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v11, v12))
  {
    v22 = 138412802;
    v23 = v8;
    v24 = 2112;
    v25 = v9;
    v26 = 2112;
    v27 = v10;
    _os_log_impl(&dword_24850D000, v11, v12, "DiscoveryTaskGroup %@ got account info %@ with error %@", &v22, 0x20u);
  }

  v13 = [(CardDAVAccount *)self checkValidityTaskGroup];

  if (v13 == v8)
  {
    if (!v10)
    {
      v14 = [v9 principalURL];
      [(CardDAVAccount *)self setPrincipalURL:v14];

      v15 = [v9 scheme];
      -[CardDAVAccount setUseSSL:](self, "setUseSSL:", [v15 isEqualToString:@"http"] ^ 1);

      v16 = [v9 host];
      [(CardDAVAccount *)self setHost:v16];

      -[CardDAVAccount setPort:](self, "setPort:", [v9 port]);
      v17 = [v9 serverComplianceClasses];
      -[CardDAVAccount setSupportsWallpaperSync:](self, "setSupportsWallpaperSync:", [v17 containsObject:*MEMORY[0x277CFDEC8]]);
    }

    v18 = [(CardDAVAccount *)self consumerForTask:v8];
    v19 = coreDAVValidationErrorFromRawError();
    [v18 account:self isValid:v10 == 0 validationError:v19];

    v20 = [(CardDAVAccount *)self checkValidityTaskGroup];
    [(CardDAVAccount *)self removeConsumerForTask:v20];

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

- (void)noteHomeSetOnDifferentHost:(id)a3
{
  v8 = a3;
  v4 = [v8 scheme];
  -[CardDAVAccount setUseSSL:](self, "setUseSSL:", [v4 isEqualToString:@"http"] ^ 1);

  v5 = [v8 host];
  [(CardDAVAccount *)self setHost:v5];

  v6 = [v8 port];

  if (v6)
  {
    v7 = [v8 port];
    -[CardDAVAccount setPort:](self, "setPort:", [v7 integerValue]);
  }

  [(CardDAVAccount *)self setShouldDoInitialAutodiscovery:1];
  [(CardDAVAccount *)self saveAccountProperties];
}

- (id)copyImageContentsAtURL:(id)a3 outError:(id *)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfURL:v5 options:2 error:a4];
  if (!v6)
  {
    v7 = DALoggingwithCategory();
    v8 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v7, v8))
    {
      if (a4)
      {
        v9 = *a4;
      }

      else
      {
        v9 = 0;
      }

      v12 = 138412546;
      v13 = v5;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_24850D000, v7, v8, "Could not get photo data from url %@.  Error %@", &v12, 0x16u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isEqualToAccount:(id)a3
{
  v6 = a3;
  v7 = [v6 username];
  v8 = [v7 length];
  if (v8 || (-[CardDAVAccount username](self, "username"), v35 = objc_claimAutoreleasedReturnValue(), [v35 length]))
  {
    v3 = [v6 username];
    v4 = [(CardDAVAccount *)self username];
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
  if (v11 || (-[CardDAVAccount host](self, "host"), v27 = objc_claimAutoreleasedReturnValue(), [v27 length]))
  {
    v12 = [v6 host];
    v13 = [(CardDAVAccount *)self host];
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
  if (v16 || (-[CardDAVAccount principalURL](self, "principalURL"), v25 = objc_claimAutoreleasedReturnValue(), [v25 absoluteString], v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v24, "length")))
  {
    v28 = v14;
    v29 = v3;
    v30 = v7;
    v17 = [v6 principalURL];
    v18 = [v17 absoluteString];
    v19 = [(CardDAVAccount *)self principalURL];
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
  v6 = [(CardDAVAccount *)self accountDescription];
  v7 = [v3 stringWithFormat:v5, v6];

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

- (void)promptUserForNewCoreDAVPasswordWithCompletionBlock:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__CardDAVAccount_promptUserForNewCoreDAVPasswordWithCompletionBlock___block_invoke;
  v8[3] = &unk_278F1AEA8;
  v9 = v4;
  v5 = v4;
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

- (BOOL)handleTrustChallenge:(id)a3 completionHandler:(id)a4
{
  v5.receiver = self;
  v5.super_class = CardDAVAccount;
  [(CardDAVAccount *)&v5 handleTrustChallenge:a3 completionHandler:a4];
  return 0;
}

- (void)addToCoreDAVLoggingDelegates
{
  v3 = [MEMORY[0x277CFDC18] sharedLogging];
  [v3 addLogDelegate:self forAccountInfoProvider:self];
}

- (void)removeFromCoreDAVLoggingDelegates
{
  v3 = [MEMORY[0x277CFDC18] sharedLogging];
  [v3 removeLogDelegate:self forAccountInfoProvider:self];
}

- (void)coreDAVLogTransmittedDataPartial:(id)a3
{
  v4 = a3;
  v5 = [(CardDAVAccount *)self curLogger];
  [v5 logSnippet:v4];
}

- (BOOL)enabledForDADataclass:(int64_t)a3
{
  v3 = [(CardDAVAccount *)self backingAccountInfo];
  v4 = [v3 displayAccount];
  v5 = acDataclassForDADataclass();
  v6 = [v4 isEnabledForDataclass:v5];

  return v6;
}

@end