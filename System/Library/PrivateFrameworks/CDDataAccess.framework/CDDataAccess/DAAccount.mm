@interface DAAccount
+ (id)_leafAccountTypes;
+ (id)daAccountSubclassWithBackingAccountInfo:(id)info;
+ (id)oneshotListOfAccountIDs;
+ (void)reacquireClientRestrictions:(id)restrictions;
- (BOOL)_isIdentityManagedByProfile;
- (BOOL)accountBoolPropertyForKey:(id)key;
- (BOOL)accountContainsEmailAddress:(id)address;
- (BOOL)accountHasSignificantPropertyChangesFromOldAccountInfo:(id)info;
- (BOOL)enabledForDADataclass:(int64_t)dataclass;
- (BOOL)handleTrustChallenge:(id)challenge;
- (BOOL)handleTrustChallenge:(id)challenge completionHandler:(id)handler;
- (BOOL)isChildAccount;
- (BOOL)isDisabled;
- (BOOL)isEqualToAccount:(id)account;
- (BOOL)monitorFolderWithID:(id)d;
- (BOOL)resetCertWarnings;
- (BOOL)searchQueriesRunning;
- (BOOL)shouldAutodiscoverAccountProperties;
- (BOOL)shouldCancelTaskDueToOnPowerFetchMode;
- (BOOL)shouldFailAllTasks;
- (BOOL)shouldRemoveDBSyncDataOnAccountChange;
- (BOOL)useSSL;
- (BOOL)useSSLFromDataclassPropertiesForDataclass:(id)dataclass;
- (DAAccount)initWithBackingAccountInfo:(id)info;
- (NSArray)emailAddresses;
- (NSString)accountDescription;
- (NSString)changeTrackingID;
- (NSString)clientToken;
- (NSString)password;
- (NSString)principalPath;
- (NSString)scheduleIdentifier;
- (NSString)scheme;
- (NSURL)principalURL;
- (__CFData)exceptionsForDigest:(id)digest;
- (__CFURLStorageSession)copyStorageSession;
- (id)accountPropertyForKey:(id)key;
- (id)accountTypeIdentifier;
- (id)addUsernameToURL:(id)l;
- (id)additionalHeaderValues;
- (id)beginDownloadingAttachmentWithUUID:(id)d consumer:(id)consumer;
- (id)customConnectionProperties;
- (id)description;
- (id)getPendingQueryQueue;
- (id)hostFromDataclassPropertiesForDataclass:(id)dataclass;
- (id)localizedIdenticalAccountFailureMessage;
- (id)localizedInvalidPasswordMessage;
- (id)oauth2Token;
- (id)objectForKeyedSubscript:(id)subscript;
- (id)onBehalfOfBundleIdentifier;
- (id)performCalendarDirectorySearchForTerms:(id)terms recordTypes:(id)types resultLimit:(unint64_t)limit consumer:(id)consumer;
- (id)reportShareRequestAsJunkForCalendar:(id)calendar consumer:(id)consumer;
- (id)requestCalendarAvailabilityForStartDate:(id)date endDate:(id)endDate ignoredEventID:(id)d addresses:(id)addresses consumer:(id)consumer;
- (id)respondToShareRequestForCalendar:(id)calendar withResponse:(int64_t)response consumer:(id)consumer;
- (id)spinnerIdentifiers;
- (id)stateString;
- (id)unactionableICSRepresentationForMetaData:(id)data inFolderWithId:(id)id outSummary:(id *)summary;
- (id)urlFromDataclassPropertiesForDataclass:(id)dataclass;
- (int)accountIntPropertyForKey:(id)key;
- (int)keychainAccessibilityType;
- (int64_t)enabledDataclassesBitmask;
- (int64_t)port;
- (int64_t)portFromDataclassPropertiesForDataclass:(id)dataclass;
- (void)_dequeueQuery;
- (void)_reallyPerformSearchQuery:(id)query;
- (void)_webLoginRequestedAtURL:(id)l reasonString:(id)string inQueue:(id)queue completionBlock:(id)block;
- (void)accountDidChangeFromOldAccountInfo:(id)info;
- (void)cancelAllSearchQueries;
- (void)cancelCalendarAvailabilityRequestWithID:(id)d;
- (void)cancelCalendarDirectorySearchWithID:(id)d;
- (void)cancelSearchQuery:(id)query;
- (void)checkValidityOnAccountStore:(id)store withConsumer:(id)consumer;
- (void)checkValidityOnAccountStore:(id)store withConsumer:(id)consumer inQueue:(id)queue;
- (void)cleanupAccountFiles;
- (void)clientTokenRequestedByServer;
- (void)dealloc;
- (void)decrementXpcActivityContinueCount;
- (void)discoverInitialPropertiesWithConsumer:(id)consumer;
- (void)dropAssertionsAndRenewCredentialsInQueue:(id)queue withHandler:(id)handler;
- (void)handleValidationError:(id)error completion:(id)completion;
- (void)incrementXpcActivityContinueCount;
- (void)performSearchQuery:(id)query;
- (void)reload;
- (void)removeAccountPropertyForKey:(id)key;
- (void)removeClientCertificateData;
- (void)removeConsumerForTask:(id)task;
- (void)removeXpcActivity;
- (void)resetAccountID;
- (void)resetStatusReport;
- (void)resumeMonitoringFoldersWithIDs:(id)ds;
- (void)saveAccountProperties;
- (void)saveAccountPropertiesWithCompletionHandler:(id)handler;
- (void)saveXpcActivity:(id)activity;
- (void)setAccountDescription:(id)description;
- (void)setAccountProperty:(id)property forKey:(id)key;
- (void)setConsumer:(id)consumer forTask:(id)task;
- (void)setEmailAddress:(id)address;
- (void)setExceptions:(__CFData *)exceptions forDigest:(id)digest;
- (void)setHost:(id)host;
- (void)setObject:(id)object forKeyedSubscript:(id)subscript;
- (void)setPassword:(id)password;
- (void)setPort:(int64_t)port;
- (void)setPrincipalURL:(id)l;
- (void)setShouldDoInitialAutodiscovery:(BOOL)autodiscovery;
- (void)shutdown;
- (void)stopMonitoringFolderWithID:(id)d;
- (void)stopMonitoringFolders;
- (void)stopMonitoringFoldersWithIDs:(id)ds;
- (void)suspendMonitoringFoldersWithIDs:(id)ds;
- (void)tearDown;
- (void)updateExistingAccountProperties;
- (void)webLoginRequestedAtURL:(id)l reasonString:(id)string inQueue:(id)queue completionBlock:(id)block;
@end

@implementation DAAccount

- (void)dealloc
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277CF3AF0] + 5);
  if (os_log_type_enabled(v3, v4))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_24244C000, v3, v4, "DAAccount %p is going away...", buf, 0xCu);
  }

  v5 = +[DAAccountMonitor sharedMonitor];
  [v5 unmonitorAccount:self];

  [(DATaskManager *)self->_taskManager shutdown];
  storageSession = self->_storageSession;
  if (storageSession)
  {
    CFRelease(storageSession);
    self->_storageSession = 0;
  }

  [(DAAccount *)self removeXpcActivity];
  v8.receiver = self;
  v8.super_class = DAAccount;
  [(DAAccount *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)isDisabled
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  enabledDataclasses = [(ACAccount *)self->_backingAccountInfo enabledDataclasses];
  v4 = [enabledDataclasses countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(enabledDataclasses);
        }

        if (([(ACAccount *)self->_backingAccountInfo isEnabledToSyncDataclass:*(*(&v11 + 1) + 8 * i)]& 1) != 0)
        {
          v8 = 0;
          goto LABEL_11;
        }
      }

      v5 = [enabledDataclasses countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_11:

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (NSString)accountDescription
{
  displayAccount = [(ACAccount *)self->_backingAccountInfo displayAccount];
  accountDescription = [displayAccount accountDescription];

  return accountDescription;
}

- (DAAccount)initWithBackingAccountInfo:(id)info
{
  infoCopy = info;
  v15.receiver = self;
  v15.super_class = DAAccount;
  v6 = [(DAAccount *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_backingAccountInfo, info);
    v8 = [[DATrustHandler alloc] initWithDelegate:v7];
    trustHandler = v7->_trustHandler;
    v7->_trustHandler = v8;

    [(DAAccount *)v7 resetStatusReport];
    persistentUUID = [(DAAccount *)v7 persistentUUID];

    if (!persistentUUID)
    {
      v11 = CFUUIDCreate(0);
      v12 = CFUUIDCreateString(0, v11);
      CFRelease(v11);
      [(DAAccount *)v7 _setPersistentUUID:v12];
    }

    [(DAAccount *)v7 ingestBackingAccountInfoProperties];
    v13 = +[DAAccountMonitor sharedMonitor];
    [v13 monitorAccount:v7];

    *&v7->_hasInitted = 257;
  }

  return v7;
}

+ (id)daAccountSubclassWithBackingAccountInfo:(id)info
{
  infoCopy = info;
  v4 = +[DAAccountLoader sharedInstance];
  v5 = [v4 daemonAppropriateAccountClassForACAccount:infoCopy];

  v6 = [[v5 alloc] initWithBackingAccountInfo:infoCopy];

  return v6;
}

- (void)resetAccountID
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"DAAccount.m" lineNumber:227 description:{@"We shouldn't be resetting our account id, ever"}];
}

- (NSString)scheduleIdentifier
{
  backingAccountInfo = [(DAAccount *)self backingAccountInfo];
  parentAccount = [backingAccountInfo parentAccount];

  if (parentAccount)
  {
    backingAccountInfo2 = [(DAAccount *)self backingAccountInfo];
    parentAccount2 = [backingAccountInfo2 parentAccount];
    identifier = [parentAccount2 identifier];
  }

  else
  {
    identifier = [(DAAccount *)self persistentUUID];
  }

  return identifier;
}

- (NSString)changeTrackingID
{
  v2 = MEMORY[0x277CCACA8];
  persistentUUID = [(DAAccount *)self persistentUUID];
  v4 = [v2 stringWithFormat:@"com.apple.caldavsyncd-%@", persistentUUID];

  return v4;
}

- (void)setAccountDescription:(id)description
{
  backingAccountInfo = self->_backingAccountInfo;
  descriptionCopy = description;
  displayAccount = [(ACAccount *)backingAccountInfo displayAccount];
  [displayAccount setAccountDescription:descriptionCopy];
}

- (BOOL)enabledForDADataclass:(int64_t)dataclass
{
  backingAccountInfo = self->_backingAccountInfo;
  v4 = acDataclassForDADataclass(dataclass);
  LOBYTE(backingAccountInfo) = [(ACAccount *)backingAccountInfo isEnabledForDataclass:v4];

  return backingAccountInfo;
}

- (int64_t)enabledDataclassesBitmask
{
  enabledDataclasses = [(ACAccount *)self->_backingAccountInfo enabledDataclasses];
  v3 = daDataclassesForACDataclasses(enabledDataclasses);

  return v3;
}

- (id)spinnerIdentifiers
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277CF3AF0] + 3);
  if (os_log_type_enabled(v3, v4))
  {
    v7 = 136315138;
    Name = sel_getName(a2);
    _os_log_impl(&dword_24244C000, v3, v4, "%s to be implemented by subclass", &v7, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)accountPropertyForKey:(id)key
{
  keyCopy = key;
  backingAccountInfo = [(DAAccount *)self backingAccountInfo];
  v6 = [backingAccountInfo objectForKeyedSubscript:keyCopy];

  return v6;
}

- (void)setAccountProperty:(id)property forKey:(id)key
{
  keyCopy = key;
  propertyCopy = property;
  backingAccountInfo = [(DAAccount *)self backingAccountInfo];
  [backingAccountInfo setAccountProperty:propertyCopy forKey:keyCopy];
}

- (void)removeAccountPropertyForKey:(id)key
{
  keyCopy = key;
  backingAccountInfo = [(DAAccount *)self backingAccountInfo];
  [backingAccountInfo setAccountProperty:0 forKey:keyCopy];
}

- (void)setObject:(id)object forKeyedSubscript:(id)subscript
{
  subscriptCopy = subscript;
  objectCopy = object;
  backingAccountInfo = [(DAAccount *)self backingAccountInfo];
  [backingAccountInfo setAccountProperty:objectCopy forKey:subscriptCopy];
}

- (id)objectForKeyedSubscript:(id)subscript
{
  subscriptCopy = subscript;
  backingAccountInfo = [(DAAccount *)self backingAccountInfo];
  v6 = [backingAccountInfo objectForKeyedSubscript:subscriptCopy];

  return v6;
}

- (BOOL)accountBoolPropertyForKey:(id)key
{
  keyCopy = key;
  backingAccountInfo = [(DAAccount *)self backingAccountInfo];
  v6 = [backingAccountInfo objectForKeyedSubscript:keyCopy];

  LOBYTE(keyCopy) = [v6 BOOLValue];
  return keyCopy;
}

- (int)accountIntPropertyForKey:(id)key
{
  keyCopy = key;
  backingAccountInfo = [(DAAccount *)self backingAccountInfo];
  v6 = [backingAccountInfo objectForKeyedSubscript:keyCopy];

  LODWORD(keyCopy) = [v6 intValue];
  return keyCopy;
}

- (void)resumeMonitoringFoldersWithIDs:(id)ds
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277CF3AF0] + 3);
  if (os_log_type_enabled(v4, v5))
  {
    v7 = 136315138;
    Name = sel_getName(a2);
    _os_log_impl(&dword_24244C000, v4, v5, "%s to be implemented by subclass", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)suspendMonitoringFoldersWithIDs:(id)ds
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v4, v5))
  {
    v8 = 136315394;
    Name = sel_getName(a2);
    v10 = 2112;
    v11 = objc_opt_class();
    v6 = v11;
    _os_log_impl(&dword_24244C000, v4, v5, "%s being ignored by %@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)stopMonitoringFolderWithID:(id)d
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v4, v5))
  {
    v8 = 136315394;
    Name = sel_getName(a2);
    v10 = 2112;
    v11 = objc_opt_class();
    v6 = v11;
    _os_log_impl(&dword_24244C000, v4, v5, "%s being ignored by %@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)stateString
{
  if (objc_opt_respondsToSelector())
  {
    [(DAAccount *)self waiterID];
  }

  else
  {
    [(DAAccount *)self accountID];
  }
  v3 = ;
  v4 = +[DABabysitter sharedBabysitter];
  v5 = [v4 accountWithIDShouldContinue:v3];
  statusReport = [(DAAccount *)self statusReport];
  [statusReport setSyncingAllowed:v5];

  protocolVersion = [(DAAccount *)self protocolVersion];
  statusReport2 = [(DAAccount *)self statusReport];
  [statusReport2 setProtocolVersion:protocolVersion];

  v9 = MEMORY[0x277CCACA8];
  accountID = [(DAAccount *)self accountID];
  displayName = [(DAAccount *)self displayName];
  statusReport3 = [(DAAccount *)self statusReport];
  stateString = [(DATaskManager *)self->_taskManager stateString];
  v14 = stateString;
  v15 = @"No Task Manager initted yet";
  if (stateString)
  {
    v15 = stateString;
  }

  v16 = [v9 stringWithFormat:@"AccountID: %@ (\"%@\"", accountID, displayName, statusReport3, v15];

  return v16;
}

- (void)setConsumer:(id)consumer forTask:(id)task
{
  v23 = *MEMORY[0x277D85DE8];
  consumerCopy = consumer;
  taskCopy = task;
  consumers = self->_consumers;
  if (!consumers)
  {
    v9 = objc_opt_new();
    v10 = self->_consumers;
    self->_consumers = v9;

    consumers = self->_consumers;
  }

  [(NSMapTable *)consumers setObject:consumerCopy forKey:taskCopy];
  v11 = DALoggingwithCategory();
  v12 = *(MEMORY[0x277CF3AF0] + 7);
  if (os_log_type_enabled(v11, v12))
  {
    v13 = [(NSMapTable *)self->_consumers count];
    v15 = 134218752;
    v16 = consumerCopy;
    v17 = 2048;
    v18 = taskCopy;
    v19 = 2048;
    selfCopy = self;
    v21 = 2048;
    v22 = v13;
    _os_log_impl(&dword_24244C000, v11, v12, "Added consumer %p for task %p to DAAccount %p, count: %lu", &v15, 0x2Au);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)removeConsumerForTask:(id)task
{
  v15 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  [(NSMapTable *)self->_consumers removeObjectForKey:taskCopy];
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277CF3AF0] + 7);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = [(NSMapTable *)self->_consumers count];
    v9 = 134218496;
    v10 = taskCopy;
    v11 = 2048;
    selfCopy = self;
    v13 = 2048;
    v14 = v7;
    _os_log_impl(&dword_24244C000, v5, v6, "Removed consumer for task %p from DAAccount %p, count: %lu", &v9, 0x20u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (NSString)clientToken
{
  backingAccountInfo = [(DAAccount *)self backingAccountInfo];
  clientToken = [backingAccountInfo clientToken];

  return clientToken;
}

- (void)clientTokenRequestedByServer
{
  clientToken = [(DAAccount *)self clientToken];
  v4 = [clientToken length];

  if (!v4)
  {
    da_newGUID = [MEMORY[0x277CCACA8] da_newGUID];
    backingAccountInfo = [(DAAccount *)self backingAccountInfo];
    [backingAccountInfo addClientToken:da_newGUID];
  }
}

- (NSString)password
{
  identityPersist = [(DAAccount *)self identityPersist];
  v4 = [(DAAccount *)self passwordWithExpected:identityPersist == 0];

  return v4;
}

- (void)setPassword:(id)password
{
  v18 = *MEMORY[0x277D85DE8];
  passwordCopy = password;
  v5 = [passwordCopy length];
  credential = [(ACAccount *)self->_backingAccountInfo credential];
  v7 = credential;
  if (v5)
  {
    if (credential)
    {
      [credential setPassword:passwordCopy];
    }

    else
    {
      v7 = [objc_alloc(MEMORY[0x277CB8F38]) initWithPassword:passwordCopy];
      [(ACAccount *)self->_backingAccountInfo setCredential:v7];
    }

    v9 = DALoggingwithCategory();
    v10 = *(MEMORY[0x277CF3AF0] + 4);
    if (os_log_type_enabled(v9, v10))
    {
      identifier = [(ACAccount *)self->_backingAccountInfo identifier];
      username = [(ACAccount *)self->_backingAccountInfo username];
      v14 = 138412546;
      v15 = identifier;
      v16 = 2112;
      v17 = username;
      _os_log_impl(&dword_24244C000, v9, v10, "Calling _backingAccountInfo.authenticated = YES for Account identifier %@ and username %@", &v14, 0x16u);
    }

    [(ACAccount *)self->_backingAccountInfo setAuthenticated:1];
  }

  else
  {
    [credential setPassword:0];

    v7 = DALoggingwithCategory();
    v8 = *(MEMORY[0x277CF3AF0] + 4);
    if (os_log_type_enabled(v7, v8))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_24244C000, v7, v8, "Someone wanted to set a nil password, we're editing the live ACAccountCredential", &v14, 2u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)urlFromDataclassPropertiesForDataclass:(id)dataclass
{
  dataclassCopy = dataclass;
  backingAccountInfo = [(DAAccount *)self backingAccountInfo];
  parentAccount = [backingAccountInfo parentAccount];
  dataclassProperties = [parentAccount dataclassProperties];
  v8 = [dataclassProperties count];

  if (v8)
  {
    if (!self->_dataclassPropertyURLsByDataclass)
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      if (!self->_dataclassPropertyURLsByDataclass)
      {
        v10 = objc_opt_new();
        dataclassPropertyURLsByDataclass = self->_dataclassPropertyURLsByDataclass;
        self->_dataclassPropertyURLsByDataclass = v10;
      }

      objc_sync_exit(selfCopy);
    }

    dataclassPropertyURLsByDataclass = [(DAAccount *)self dataclassPropertyURLsByDataclass];
    objc_sync_enter(dataclassPropertyURLsByDataclass);
    dataclassPropertyURLsByDataclass2 = [(DAAccount *)self dataclassPropertyURLsByDataclass];
    null = [dataclassPropertyURLsByDataclass2 objectForKeyedSubscript:dataclassCopy];

    if (!null)
    {
      backingAccountInfo2 = [(DAAccount *)self backingAccountInfo];
      parentAccount2 = [backingAccountInfo2 parentAccount];
      dataclassProperties2 = [parentAccount2 dataclassProperties];
      v18 = [dataclassProperties2 objectForKeyedSubscript:dataclassCopy];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ([v18 objectForKeyedSubscript:@"url"], (v19 = objc_claimAutoreleasedReturnValue()) == 0) || (objc_msgSend(MEMORY[0x277CBEBC0], "URLWithString:", v19), null = objc_claimAutoreleasedReturnValue(), v19, !null))
      {
        null = [MEMORY[0x277CBEB68] null];
      }

      dataclassPropertyURLsByDataclass3 = [(DAAccount *)self dataclassPropertyURLsByDataclass];
      [dataclassPropertyURLsByDataclass3 setObject:null forKeyedSubscript:dataclassCopy];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      null = 0;
    }

    objc_sync_exit(dataclassPropertyURLsByDataclass);
  }

  else
  {
    null = 0;
  }

  return null;
}

- (id)hostFromDataclassPropertiesForDataclass:(id)dataclass
{
  v3 = [(DAAccount *)self urlFromDataclassPropertiesForDataclass:dataclass];
  host = [v3 host];

  return host;
}

- (BOOL)useSSLFromDataclassPropertiesForDataclass:(id)dataclass
{
  v3 = [(DAAccount *)self urlFromDataclassPropertiesForDataclass:dataclass];
  scheme = [v3 scheme];
  lowercaseString = [scheme lowercaseString];
  v6 = [lowercaseString isEqualToString:@"https"];

  return v6;
}

- (int64_t)portFromDataclassPropertiesForDataclass:(id)dataclass
{
  v3 = [(DAAccount *)self urlFromDataclassPropertiesForDataclass:dataclass];
  port = [v3 port];
  integerValue = [port integerValue];

  return integerValue;
}

- (void)setHost:(id)host
{
  v13 = *MEMORY[0x277D85DE8];
  hostCopy = host;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277CF3AF0] + 7);
  if (os_log_type_enabled(v5, v6))
  {
    host = [(DAAccount *)self host];
    v9 = 138412546;
    v10 = host;
    v11 = 2112;
    v12 = hostCopy;
    _os_log_impl(&dword_24244C000, v5, v6, "Changing Host From %@ to %@", &v9, 0x16u);
  }

  [(DAAccount *)self setObject:hostCopy forKeyedSubscript:@"DAAccountHost"];
  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)useSSL
{
  v2 = [(DAAccount *)self objectForKeyedSubscript:@"DAAccountUseSSL"];
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (void)setEmailAddress:(id)address
{
  addressCopy = address;
  [(DAAccount *)self setObject:addressCopy forKeyedSubscript:@"DAAccountEmailAddress"];
  [(DAAccount *)self setObject:addressCopy forKeyedSubscript:@"ACUIDisplayUsername"];
}

- (NSArray)emailAddresses
{
  v6[1] = *MEMORY[0x277D85DE8];
  emailAddress = [(DAAccount *)self emailAddress];
  v6[0] = emailAddress;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)accountContainsEmailAddress:(id)address
{
  v16 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  if (addressCopy)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    emailAddresses = [(DAAccount *)self emailAddresses];
    v6 = [emailAddresses countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = *v12;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(emailAddresses);
          }

          if (![addressCopy caseInsensitiveCompare:*(*(&v11 + 1) + 8 * i)])
          {
            LOBYTE(v6) = 1;
            goto LABEL_12;
          }
        }

        v6 = [emailAddresses countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (int64_t)port
{
  v2 = [(DAAccount *)self objectForKeyedSubscript:@"DAAccountPort"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setPort:(int64_t)port
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:port];
  [(DAAccount *)self setObject:v4 forKeyedSubscript:@"DAAccountPort"];
}

- (NSString)principalPath
{
  v2 = [(DAAccount *)self objectForKeyedSubscript:@"DAAccountPrincipalPath"];
  da_appendSlashIfNeeded = [v2 da_appendSlashIfNeeded];

  return da_appendSlashIfNeeded;
}

- (NSString)scheme
{
  if ([(DAAccount *)self useSSL])
  {
    v2 = @"https";
  }

  else
  {
    v2 = @"http";
  }

  return v2;
}

- (NSURL)principalURL
{
  v3 = MEMORY[0x277CBEBC0];
  scheme = [(DAAccount *)self scheme];
  host = [(DAAccount *)self host];
  port = [(DAAccount *)self port];
  principalPath = [(DAAccount *)self principalPath];
  v8 = principalPath;
  if (principalPath)
  {
    v9 = principalPath;
  }

  else
  {
    v9 = @"/";
  }

  v10 = [v3 da_URLWithScheme:scheme host:host port:port uri:v9];

  return v10;
}

- (void)setPrincipalURL:(id)l
{
  lCopy = l;
  scheme = [lCopy scheme];
  v5 = [scheme length];

  if (v5)
  {
    scheme2 = [lCopy scheme];
    -[DAAccount setUseSSL:](self, "setUseSSL:", [scheme2 isEqualToString:@"http"] ^ 1);
  }

  host = [lCopy host];
  v8 = [host length];

  if (v8)
  {
    host2 = [lCopy host];
    [(DAAccount *)self setHost:host2];
  }

  port = [lCopy port];

  if (port)
  {
    port2 = [lCopy port];
    -[DAAccount setPort:](self, "setPort:", [port2 integerValue]);
  }

  path = [lCopy path];
  v13 = path;
  if (path)
  {
    v14 = path;
  }

  else
  {
    v14 = @"/";
  }

  [(DAAccount *)self setPrincipalPath:v14];
}

- (void)checkValidityOnAccountStore:(id)store withConsumer:(id)consumer
{
  consumerCopy = consumer;
  storeCopy = store;
  v8 = dataaccess_get_global_queue();
  [(DAAccount *)self checkValidityOnAccountStore:storeCopy withConsumer:consumerCopy inQueue:v8];
}

- (void)checkValidityOnAccountStore:(id)store withConsumer:(id)consumer inQueue:(id)queue
{
  consumerCopy = consumer;
  queueCopy = queue;
  storeCopy = store;
  [(DAAccount *)self setIsValidating:1];
  backingAccountInfo = [(DAAccount *)self backingAccountInfo];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __62__DAAccount_checkValidityOnAccountStore_withConsumer_inQueue___block_invoke;
  v14[3] = &unk_278D4C3E0;
  v14[4] = self;
  v15 = queueCopy;
  v16 = consumerCopy;
  v12 = consumerCopy;
  v13 = queueCopy;
  [storeCopy verifyCredentialsForAccount:backingAccountInfo saveWhenAuthorized:0 withHandler:v14];
}

void __62__DAAccount_checkValidityOnAccountStore_withConsumer_inQueue___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = dataaccess_get_global_queue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__DAAccount_checkValidityOnAccountStore_withConsumer_inQueue___block_invoke_2;
  block[3] = &unk_278D4C3B8;
  v8 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v12 = v5;
  v13 = v8;
  v14 = *(a1 + 48);
  v15 = v6;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void __62__DAAccount_checkValidityOnAccountStore_withConsumer_inQueue___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setIsValidating:0];
  if (*(a1 + 40))
  {
    v2 = [*(a1 + 32) backingAccountInfo];
    [v2 takeValuesFromModifiedAccount:*(a1 + 40)];

    [*(a1 + 32) removeFromCoreDAVLoggingDelegates];
    [*(a1 + 32) ingestBackingAccountInfoProperties];
    [*(a1 + 32) addToCoreDAVLoggingDelegates];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__DAAccount_checkValidityOnAccountStore_withConsumer_inQueue___block_invoke_3;
  block[3] = &unk_278D4C390;
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  v9 = *(a1 + 64);
  dispatch_async(v3, block);
}

- (void)discoverInitialPropertiesWithConsumer:(id)consumer
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277CF3AF0] + 3);
  if (os_log_type_enabled(v4, v5))
  {
    v7 = 136315138;
    Name = sel_getName(a2);
    _os_log_impl(&dword_24244C000, v4, v5, "%s to be implemented by subclass", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setShouldDoInitialAutodiscovery:(BOOL)autodiscovery
{
  v4 = [MEMORY[0x277CCABB0] numberWithInt:!autodiscovery];
  [(DAAccount *)self setObject:v4 forKeyedSubscript:@"DAAccountDidAutodiscover"];
}

- (BOOL)shouldAutodiscoverAccountProperties
{
  if ([(DAAccount *)self shouldDoInitialAutodiscovery])
  {
    return 1;
  }

  principalPath = [(DAAccount *)self principalPath];
  if ([principalPath length])
  {
    principalPath2 = [(DAAccount *)self principalPath];
    v3 = [principalPath2 isEqualToString:@"/"];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (id)onBehalfOfBundleIdentifier
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  Name = sel_getName(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"DAAccount.m" lineNumber:715 description:{@"%s MUST be implemented in ALL DAAccount subclasses.  Looks like it's missing in %@", Name, objc_opt_class()}];

  return 0;
}

- (BOOL)shouldRemoveDBSyncDataOnAccountChange
{
  backingAccountInfo = [(DAAccount *)self backingAccountInfo];
  parentAccountIdentifier = [backingAccountInfo parentAccountIdentifier];

  return parentAccountIdentifier == 0;
}

- (void)accountDidChangeFromOldAccountInfo:(id)info
{
  v13 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  if ([(DAAccount *)self accountHasSignificantPropertyChangesFromOldAccountInfo:infoCopy])
  {
    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277CF3AF0] + 4);
    if (os_log_type_enabled(v5, v6))
    {
      backingAccountInfo = self->_backingAccountInfo;
      v9 = 138412546;
      v10 = infoCopy;
      v11 = 2112;
      v12 = backingAccountInfo;
      _os_log_impl(&dword_24244C000, v5, v6, "Account had significant property change, going to flush local data.\n\nOldProperties %@\n\nNewProperties %@", &v9, 0x16u);
    }

    [(DAAccount *)self removeDBSyncData];
    [(DAAccount *)self cleanupAccountFiles];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)additionalHeaderValues
{
  v16[1] = *MEMORY[0x277D85DE8];
  backingAccountInfo = [(DAAccount *)self backingAccountInfo];
  credential = [backingAccountInfo credential];

  credentialType = [credential credentialType];
  v5 = [credentialType isEqualToString:*MEMORY[0x277CB8DB0]];

  if (!v5)
  {
    v10 = 0;
    goto LABEL_12;
  }

  v6 = [credential credentialItemForKey:*MEMORY[0x277CB8F28]];
  if (v6)
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = [credential credentialItemForKey:*MEMORY[0x277CB8F20]];
    v9 = [v7 stringWithFormat:@"Y=%@ T=%@", v6, v8];;

    if (!v9)
    {
      v10 = 0;
      goto LABEL_11;
    }

    v15 = @"Cookie";
    v16[0] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  }

  else
  {
    v9 = DALoggingwithCategory();
    v11 = *(MEMORY[0x277CF3AF0] + 4);
    if (os_log_type_enabled(v9, v11))
    {
      *buf = 0;
      _os_log_impl(&dword_24244C000, v9, v11, "Couldn't get a Yahoo cookie. Not setting authentication headers", buf, 2u);
    }

    v10 = 0;
  }

LABEL_11:
LABEL_12:

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)customConnectionProperties
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11 = *MEMORY[0x277CBAEF8];
  v9[0] = *MEMORY[0x277CBAE78];
  onBehalfOfBundleIdentifier = [(DAAccount *)self onBehalfOfBundleIdentifier];
  v10[0] = onBehalfOfBundleIdentifier;
  v9[1] = *MEMORY[0x277CBADA0];
  accountID = [(DAAccount *)self accountID];
  v10[1] = accountID;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v12[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)oauth2Token
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    backingAccountInfo = [(DAAccount *)self backingAccountInfo];
    identifier = [backingAccountInfo identifier];
    v19 = 138412290;
    v20 = identifier;
    _os_log_impl(&dword_24244C000, v3, v4, "Fetching OAuth Crednetials for Backing Account %@", &v19, 0xCu);
  }

  backingAccountInfo2 = [(DAAccount *)self backingAccountInfo];
  credential = [backingAccountInfo2 credential];

  if (credential)
  {
    credentialType = [credential credentialType];
    if ([credentialType isEqualToString:*MEMORY[0x277CB8D98]])
    {

LABEL_7:
      oauthToken = [credential oauthToken];
      goto LABEL_9;
    }

    credentialType2 = [credential credentialType];
    v11 = [credentialType2 isEqualToString:*MEMORY[0x277CB8DA0]];

    if (v11)
    {
      goto LABEL_7;
    }
  }

  oauthToken = 0;
LABEL_9:
  v13 = DALoggingwithCategory();
  if (os_log_type_enabled(v13, v4))
  {
    if (oauthToken)
    {
      v14 = @"Valid";
    }

    else
    {
      v14 = @"InValid";
    }

    backingAccountInfo3 = [(DAAccount *)self backingAccountInfo];
    identifier2 = [backingAccountInfo3 identifier];
    v19 = 138412802;
    v20 = v14;
    v21 = 2112;
    v22 = credential;
    v23 = 2112;
    v24 = identifier2;
    _os_log_impl(&dword_24244C000, v13, v4, "Account Store Returned A %@ OAuth-token From Crednetials Object %@ AccountID: %@", &v19, 0x20u);
  }

  v17 = *MEMORY[0x277D85DE8];

  return oauthToken;
}

- (void)tearDown
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    v7 = 136315394;
    Name = sel_getName(a2);
    v9 = 2112;
    v10 = objc_opt_class();
    v5 = v10;
    _os_log_impl(&dword_24244C000, v3, v4, "%s being ignored by %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)monitorFolderWithID:(id)d
{
  v10 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v4 = MEMORY[0x277CBEA60];
  dCopy2 = d;
  v6 = [v4 arrayWithObjects:&dCopy count:1];

  LOBYTE(self) = [(DAAccount *)self monitorFoldersWithIDs:v6, dCopy, v10];
  v7 = *MEMORY[0x277D85DE8];
  return self;
}

- (void)stopMonitoringFoldersWithIDs:(id)ds
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v4, v5))
  {
    v8 = 136315394;
    Name = sel_getName(a2);
    v10 = 2112;
    v11 = objc_opt_class();
    v6 = v11;
    _os_log_impl(&dword_24244C000, v4, v5, "%s being ignored by %@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)stopMonitoringFolders
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    v7 = 136315394;
    Name = sel_getName(a2);
    v9 = 2112;
    v10 = objc_opt_class();
    v5 = v10;
    _os_log_impl(&dword_24244C000, v3, v4, "%s being ignored by %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)removeClientCertificateData
{
  identityPersist = [(DAAccount *)self identityPersist];
  if (identityPersist)
  {
    v4 = identityPersist;
    if (![(DAAccount *)self _isIdentityManagedByProfile])
    {
      _DASecDeleteIdentityByPersistentRef(v4);
    }

    [(DAAccount *)self setIdentityCertificatePersistentID:0 managedByProfile:0];
    identityPersist = v4;
  }
}

- (void)saveAccountPropertiesWithCompletionHandler:(id)handler
{
  v20 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277CF3AF0] + 4);
  if (os_log_type_enabled(v5, v6))
  {
    accountDescription = [(DAAccount *)self accountDescription];
    accountID = [(DAAccount *)self accountID];
    v18 = 138412546;
    *v19 = accountDescription;
    *&v19[8] = 2112;
    *&v19[10] = accountID;
    _os_log_impl(&dword_24244C000, v5, v6, "Saving account %@ (%@)", &v18, 0x16u);
  }

  v9 = DALoggingwithCategory();
  if (os_log_type_enabled(v9, v6))
  {
    backingAccountInfo = [(DAAccount *)self backingAccountInfo];
    isAuthenticated = [backingAccountInfo isAuthenticated];
    backingAccountInfo2 = [(DAAccount *)self backingAccountInfo];
    identifier = [backingAccountInfo2 identifier];
    backingAccountInfo3 = [(DAAccount *)self backingAccountInfo];
    username = [backingAccountInfo3 username];
    v18 = 67109634;
    *v19 = isAuthenticated;
    *&v19[4] = 2112;
    *&v19[6] = identifier;
    *&v19[14] = 2112;
    *&v19[16] = username;
    _os_log_impl(&dword_24244C000, v9, v6, " _backingAccountInfo.authenticated is %d for Account identifier %@ and username %@", &v18, 0x1Cu);
  }

  v16 = sharedDAAccountStore();
  [v16 saveVerifiedAccount:self->_backingAccountInfo withCompletionHandler:handlerCopy];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)saveAccountProperties
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __34__DAAccount_saveAccountProperties__block_invoke;
  v2[3] = &unk_278D4C408;
  v2[4] = self;
  [(DAAccount *)self saveAccountPropertiesWithCompletionHandler:v2];
}

void __34__DAAccount_saveAccountProperties__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277CF3AF0] + 3);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(*(a1 + 32) + 8);
      v9 = 138412546;
      v10 = v7;
      v11 = 2112;
      v12 = v4;
      _os_log_impl(&dword_24244C000, v5, v6, "Error saving account %@: %@", &v9, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)updateExistingAccountProperties
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = sharedDAAccountStore();
  backingAccountInfo = [(DAAccount *)self backingAccountInfo];
  identifier = [backingAccountInfo identifier];
  v6 = [v3 accountWithIdentifier:identifier];

  if (v6)
  {
    v7 = *MEMORY[0x277D85DE8];

    [(DAAccount *)self saveAccountProperties];
  }

  else
  {
    v8 = DALoggingwithCategory();
    v9 = *(MEMORY[0x277CF3AF0] + 6);
    if (os_log_type_enabled(v8, v9))
    {
      backingAccountInfo = self->_backingAccountInfo;
      v12 = 138412290;
      v13 = backingAccountInfo;
      _os_log_impl(&dword_24244C000, v8, v9, "Not updating non-existing account: %@", &v12, 0xCu);
    }

    v11 = *MEMORY[0x277D85DE8];
  }
}

- (int)keychainAccessibilityType
{
  accountType = [(ACAccount *)self->_backingAccountInfo accountType];
  v3 = +[DAKeychain sharedKeychain];
  credentialProtectionPolicy = [accountType credentialProtectionPolicy];
  v5 = [v3 _daKeychainAccessibilityForSecAccessibility:credentialProtectionPolicy];

  return v5;
}

- (id)addUsernameToURL:(id)l
{
  lCopy = l;
  user = [lCopy user];
  v7 = [user length];
  if (!v7)
  {
    username = [(DAAccount *)self username];
    if ([username length])
    {

LABEL_8:
      username2 = [(DAAccount *)self username];
      da_stringByAddingPercentEscapesForUsername = [username2 da_stringByAddingPercentEscapesForUsername];
      v13 = [lCopy da_urlBySettingUsername:da_stringByAddingPercentEscapesForUsername];

      lCopy = v13;
      goto LABEL_9;
    }
  }

  user2 = [lCopy user];
  username3 = [(DAAccount *)self username];
  v10 = [user2 isEqualToString:username3];

  if (!v7)
  {
  }

  if ((v10 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_9:

  return lCopy;
}

- (BOOL)_isIdentityManagedByProfile
{
  v2 = [(DAAccount *)self objectForKeyedSubscript:@"DAIdentityPersistIsManagedByProfile"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (__CFData)exceptionsForDigest:(id)digest
{
  digestCopy = digest;
  exceptionsDict = [(DAAccount *)self exceptionsDict];
  da_hexString = [digestCopy da_hexString];

  v7 = [exceptionsDict objectForKeyedSubscript:da_hexString];

  return v7;
}

- (void)setExceptions:(__CFData *)exceptions forDigest:(id)digest
{
  digestCopy = digest;
  exceptionsDict = [(DAAccount *)self exceptionsDict];
  v7 = [exceptionsDict mutableCopy];

  if (exceptions)
  {
    if (!v7)
    {
      v7 = objc_opt_new();
    }

    da_hexString = [digestCopy da_hexString];
    [v7 setObject:exceptions forKeyedSubscript:da_hexString];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_8;
    }

    da_hexString = [digestCopy da_hexString];
    [v7 removeObjectForKey:da_hexString];
  }

LABEL_8:
  if ([v7 count])
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  [(DAAccount *)self setObject:v9 forKeyedSubscript:@"DATrustSettingsExceptions"];
  [(DAAccount *)self saveAccountProperties];
}

- (void)cleanupAccountFiles
{
  copyStorageSession = [(DAAccount *)self copyStorageSession];
  if (copyStorageSession)
  {
    v3 = copyStorageSession;
    v4 = *MEMORY[0x277CBECE8];
    v5 = _CFURLStorageSessionCopyCookieStorage();
    if (v5)
    {
      v6 = v5;
      CFHTTPCookieStorageDeleteAllCookies();
      CFRelease(v6);
    }

    CFRelease(v3);
  }

  v7 = CFURLCacheCopySharedURLCache();
  if (v7)
  {
    v8 = v7;
    CFURLCacheRemoveAllCachedResponses();

    CFRelease(v8);
  }
}

- (BOOL)isChildAccount
{
  backingAccountInfo = [(DAAccount *)self backingAccountInfo];
  parentAccount = [backingAccountInfo parentAccount];
  v4 = parentAccount != 0;

  return v4;
}

- (BOOL)resetCertWarnings
{
  trustHandler = [(DAAccount *)self trustHandler];
  resetCertWarnings = [trustHandler resetCertWarnings];

  return resetCertWarnings;
}

- (void)resetStatusReport
{
  v3 = objc_opt_new();
  [(DAAccount *)self setStatusReport:v3];

  persistentUUID = [(DAAccount *)self persistentUUID];
  [(DAStatusReport *)self->_statusReport setPersistentUUID:persistentUUID];

  accountType = [(ACAccount *)self->_backingAccountInfo accountType];
  identifier = [accountType identifier];
  [(DAStatusReport *)self->_statusReport setAccountType:identifier];

  accountDescription = [(DAAccount *)self accountDescription];
  [(DAStatusReport *)self->_statusReport setDisplayName:accountDescription];

  protocolVersion = [(DAAccount *)self protocolVersion];
  [(DAStatusReport *)self->_statusReport setProtocolVersion:protocolVersion];
}

- (BOOL)shouldFailAllTasks
{
  v26 = *MEMORY[0x277D85DE8];
  backingAccountInfo = [(DAAccount *)self backingAccountInfo];
  if (![backingAccountInfo supportsAuthentication])
  {
    goto LABEL_5;
  }

  backingAccountInfo2 = [(DAAccount *)self backingAccountInfo];
  if (([backingAccountInfo2 isAuthenticated] & 1) != 0 || -[DAAccount isValidating](self, "isValidating"))
  {

LABEL_5:
    goto LABEL_6;
  }

  wasUserInitiated = [(DAAccount *)self wasUserInitiated];

  if (!wasUserInitiated)
  {
    v7 = DALoggingwithCategory();
    v19 = *(MEMORY[0x277CF3AF0] + 4);
    if (os_log_type_enabled(v7, v19))
    {
      backingAccountInfo3 = [(DAAccount *)self backingAccountInfo];
      identifier = [(DAAccount *)backingAccountInfo3 identifier];
      v22 = 138412546;
      selfCopy = self;
      v24 = 2114;
      v25 = identifier;
      _os_log_impl(&dword_24244C000, v7, v19, "Not attempting request for account %@ because the backing account credential isn't authed %{public}@", &v22, 0x16u);

      goto LABEL_16;
    }

    goto LABEL_17;
  }

LABEL_6:
  backingAccountInfo4 = [(DAAccount *)self backingAccountInfo];
  aa_isSuspended = [backingAccountInfo4 aa_isSuspended];

  if (aa_isSuspended)
  {
    v7 = DALoggingwithCategory();
    v8 = *(MEMORY[0x277CF3AF0] + 4);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = objc_opt_class();
      backingAccountInfo3 = NSStringFromClass(v9);
      backingAccountInfo5 = [(DAAccount *)self backingAccountInfo];
      identifier2 = [backingAccountInfo5 identifier];
      v22 = 138543618;
      selfCopy = backingAccountInfo3;
      v24 = 2114;
      v25 = identifier2;
      _os_log_impl(&dword_24244C000, v7, v8, "Not attempting request for account %{public}@ because the backing account needs to verify terms or is suspended. %{public}@", &v22, 0x16u);

LABEL_16:
      goto LABEL_17;
    }

    goto LABEL_17;
  }

  v13 = +[DAKeychain sharedKeychain];
  v14 = [v13 canAccessCredentialsWithAccessibility:{-[DAAccount keychainAccessibilityType](self, "keychainAccessibilityType")}];

  if ((v14 & 1) == 0)
  {
    v7 = DALoggingwithCategory();
    v16 = *(MEMORY[0x277CF3AF0] + 4);
    if (os_log_type_enabled(v7, v16))
    {
      v17 = objc_opt_class();
      backingAccountInfo3 = NSStringFromClass(v17);
      v22 = 138543618;
      selfCopy = backingAccountInfo3;
      v24 = 1024;
      LODWORD(v25) = [(DAAccount *)self keychainAccessibilityType];
      _os_log_impl(&dword_24244C000, v7, v16, "Not attempting request for account %{public}@ because we don't have access to keychain items with accessibility %d right now", &v22, 0x12u);
      goto LABEL_16;
    }

LABEL_17:

    result = 1;
    goto LABEL_18;
  }

  result = 0;
LABEL_18:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)isEqualToAccount:(id)account
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  Name = sel_getName(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"DAAccount.m" lineNumber:1009 description:{@"%s MUST be implemented in ALL DAAccount subclasses.  Looks like it's missing in %@", Name, objc_opt_class()}];

  return 0;
}

- (BOOL)accountHasSignificantPropertyChangesFromOldAccountInfo:(id)info
{
  v43 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41[0] = @"DAAccountHost";
  v41[1] = @"DAAccountEmailAddress";
  v41[2] = @"DAAccountPrincipalPath";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:3];
  v35 = [v5 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v35)
  {
    obj = v5;
    v34 = *v38;
    do
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v38 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v37 + 1) + 8 * i);
        backingAccountInfo = [(DAAccount *)self backingAccountInfo];
        v9 = [backingAccountInfo objectForKeyedSubscript:v7];
        v10 = [v9 length];
        if (v10 || ([infoCopy objectForKeyedSubscript:v7], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "length")))
        {
          selfCopy = self;
          backingAccountInfo2 = [(DAAccount *)self backingAccountInfo];
          v13 = [backingAccountInfo2 objectForKeyedSubscript:v7];
          v14 = [infoCopy objectForKeyedSubscript:v7];
          v15 = [v13 isEqualToString:v14];

          if (v10)
          {

            self = selfCopy;
            if (!v15)
            {
              goto LABEL_29;
            }
          }

          else
          {

            self = selfCopy;
            if ((v15 & 1) == 0)
            {
              goto LABEL_29;
            }
          }
        }

        else
        {
        }
      }

      v5 = obj;
      v35 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v35);
  }

  backingAccountInfo3 = [(DAAccount *)self backingAccountInfo];
  username = [backingAccountInfo3 username];
  v18 = [username length];
  if (v18 || ([infoCopy username], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "length")))
  {
    backingAccountInfo4 = [(DAAccount *)self backingAccountInfo];
    username2 = [backingAccountInfo4 username];
    username3 = [infoCopy username];
    v22 = [username2 isEqualToString:username3];

    if (v18)
    {

      if (v22)
      {
        goto LABEL_24;
      }

LABEL_22:
      v23 = 1;
      goto LABEL_31;
    }

    if ((v22 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

LABEL_24:
  useSSL = [(DAAccount *)self useSSL];
  v25 = [infoCopy objectForKeyedSubscript:@"DAAccountUseSSL"];
  v26 = v25;
  if (v25)
  {
    bOOLValue = [v25 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  obj = v26;
  if (bOOLValue == useSSL)
  {
    v28 = [(DAAccount *)self objectForKeyedSubscript:@"DAAccountPort", v26];
    intValue = [v28 intValue];
    v30 = [infoCopy objectForKeyedSubscript:@"DAAccountPort"];
    v23 = intValue != [v30 intValue];
  }

  else
  {
LABEL_29:
    v23 = 1;
  }

LABEL_31:
  v31 = *MEMORY[0x277D85DE8];
  return v23;
}

- (__CFURLStorageSession)copyStorageSession
{
  if (copyStorageSession_once != -1)
  {
    [DAAccount copyStorageSession];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__DAAccount_copyStorageSession__block_invoke_2;
  block[3] = &unk_278D4C450;
  block[4] = self;
  dispatch_sync(copyStorageSession_storageSessionSetupQueue, block);
  return CFRetain(self->_storageSession);
}

void __31__DAAccount_copyStorageSession__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.dataaccess.StorageSessionSetup", v2);
  v1 = copyStorageSession_storageSessionSetupQueue;
  copyStorageSession_storageSessionSetupQueue = v0;
}

void __31__DAAccount_copyStorageSession__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[5])
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = [v2 persistentUUID];
    v11 = [v3 stringWithFormat:@"com.apple.dataaccessd.%@", v4];

    v5 = *MEMORY[0x277CBECE8];
    *(*(a1 + 32) + 40) = _CFURLStorageSessionCreate();
    v6 = *(*(a1 + 32) + 40);
    v7 = _CFURLStorageSessionCopyCookieStorage();
    CFHTTPCookieStorageSetCookieAcceptPolicy();
    CFRelease(v7);
    v8 = *(*(a1 + 32) + 40);
    v9 = _CFURLStorageSessionCopyCache();
    if (v9)
    {
      v10 = v9;
      CFURLCacheSetMemoryCapacity();
      CFURLCacheSetDiskCapacity();
      CFURLCacheRemoveAllCachedResponses();
      CFRelease(v10);
    }
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = DAAccount;
  v4 = [(DAAccount *)&v9 description];
  accountID = [(DAAccount *)self accountID];
  persistentUUID = [(DAAccount *)self persistentUUID];
  v7 = [v3 stringWithFormat:@"%@: accountID %@ persistentUUID %@", v4, accountID, persistentUUID];

  return v7;
}

- (void)shutdown
{
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277CF3AF0] + 5);
  if (os_log_type_enabled(v3, v4))
  {
    *v5 = 0;
    _os_log_impl(&dword_24244C000, v3, v4, "Shutting down the task manager", v5, 2u);
  }

  [(DATaskManager *)self->_taskManager shutdown];
}

- (void)reload
{
  dataclassPropertyURLsByDataclass = [(DAAccount *)self dataclassPropertyURLsByDataclass];
  [dataclassPropertyURLsByDataclass removeAllObjects];

  backingAccountInfo = [(DAAccount *)self backingAccountInfo];
  [backingAccountInfo reload];

  [(DAAccount *)self removeFromCoreDAVLoggingDelegates];
  [(DAAccount *)self ingestBackingAccountInfoProperties];

  [(DAAccount *)self addToCoreDAVLoggingDelegates];
}

- (id)accountTypeIdentifier
{
  accountType = [(ACAccount *)self->_backingAccountInfo accountType];
  identifier = [accountType identifier];

  return identifier;
}

- (BOOL)shouldCancelTaskDueToOnPowerFetchMode
{
  xpcActivity = self->_xpcActivity;
  if (xpcActivity)
  {
    LODWORD(xpcActivity) = xpc_activity_should_defer(xpcActivity);
    if (xpcActivity)
    {
      v3 = DALoggingwithCategory();
      v4 = *(MEMORY[0x277CF3AF0] + 6);
      if (os_log_type_enabled(v3, v4))
      {
        *v6 = 0;
        _os_log_impl(&dword_24244C000, v3, v4, "Canceling task because conditions for on-power mode no longer exist (xpc_activity)", v6, 2u);
      }

      LOBYTE(xpcActivity) = 1;
    }
  }

  return xpcActivity;
}

- (void)saveXpcActivity:(id)activity
{
  v12 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  [(DAAccount *)self removeXpcActivity];
  xpcActivity = self->_xpcActivity;
  self->_xpcActivity = activityCopy;

  self->_continueCount = 0;
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277CF3AF0] + 5);
  if (os_log_type_enabled(v6, v7))
  {
    accountID = [(DAAccount *)self accountID];
    v10 = 138412290;
    v11 = accountID;
    _os_log_impl(&dword_24244C000, v6, v7, "XPC: Saved XPC activity for account %@", &v10, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)incrementXpcActivityContinueCount
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_xpcActivity)
  {
    ++self->_continueCount;
    v3 = DALoggingwithCategory();
    v4 = *(MEMORY[0x277CF3AF0] + 5);
    if (os_log_type_enabled(v3, v4))
    {
      continueCount = self->_continueCount;
      accountID = [(DAAccount *)self accountID];
      v8[0] = 67109378;
      v8[1] = continueCount;
      v9 = 2112;
      v10 = accountID;
      _os_log_impl(&dword_24244C000, v3, v4, "XPC: Increment XPC activity continue count to %d for account %@", v8, 0x12u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)decrementXpcActivityContinueCount
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_xpcActivity)
  {
    --self->_continueCount;
    v3 = DALoggingwithCategory();
    v4 = *(MEMORY[0x277CF3AF0] + 5);
    if (os_log_type_enabled(v3, v4))
    {
      continueCount = self->_continueCount;
      accountID = [(DAAccount *)self accountID];
      v8[0] = 67109378;
      v8[1] = continueCount;
      v9 = 2112;
      v10 = accountID;
      _os_log_impl(&dword_24244C000, v3, v4, "XPC: Decrement XPC activity continue count to %d for account %@", v8, 0x12u);
    }

    if (self->_continueCount <= 0)
    {
      [(DAAccount *)self removeXpcActivity];
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)removeXpcActivity
{
  v14 = *MEMORY[0x277D85DE8];
  xpcActivity = self->_xpcActivity;
  if (xpcActivity)
  {
    v4 = xpc_activity_set_state(xpcActivity, 5);
    v5 = DALoggingwithCategory();
    v6 = v5;
    if (v4)
    {
      LOBYTE(v7) = *(MEMORY[0x277CF3AF0] + 5);
      if (os_log_type_enabled(v5, v7))
      {
        accountID = [(DAAccount *)self accountID];
        v12 = 138412290;
        v13 = accountID;
        v9 = "XPC: Successfully set XPC activity state to XPC_ACTIVITY_STATE_DONE for account %@";
LABEL_7:
        _os_log_impl(&dword_24244C000, v6, v7, v9, &v12, 0xCu);
      }
    }

    else
    {
      v7 = *(MEMORY[0x277CF3AF0] + 3);
      if (os_log_type_enabled(v5, *(MEMORY[0x277CF3AF0] + 3)))
      {
        accountID = [(DAAccount *)self accountID];
        v12 = 138412290;
        v13 = accountID;
        v9 = "XPC: Failed to set XPC activity state to XPC_ACTIVITY_STATE_DONE for account %@";
        goto LABEL_7;
      }
    }

    v10 = self->_xpcActivity;
    self->_xpcActivity = 0;

    self->_continueCount = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)handleTrustChallenge:(id)challenge
{
  challengeCopy = challenge;
  trustHandler = [(DAAccount *)self trustHandler];
  LOBYTE(self) = [trustHandler handleTrustChallenge:challengeCopy forAccount:self];

  return self;
}

- (BOOL)handleTrustChallenge:(id)challenge completionHandler:(id)handler
{
  handlerCopy = handler;
  challengeCopy = challenge;
  trustHandler = [(DAAccount *)self trustHandler];
  LOBYTE(self) = [trustHandler handleTrustChallenge:challengeCopy forAccount:self completionHandler:handlerCopy];

  return self;
}

- (id)localizedIdenticalAccountFailureMessage
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  [currentHandler handleFailureInMethod:a2 object:self file:@"DAAccount.m" lineNumber:1220 description:{@"Account class %@ MUST implement %s", v5, sel_getName(a2)}];

  return 0;
}

- (id)localizedInvalidPasswordMessage
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  [currentHandler handleFailureInMethod:a2 object:self file:@"DAAccount.m" lineNumber:1225 description:{@"Account class %@ MUST implement %s", v5, sel_getName(a2)}];

  return 0;
}

- (void)dropAssertionsAndRenewCredentialsInQueue:(id)queue withHandler:(id)handler
{
  v31 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  handlerCopy = handler;
  v8 = DALoggingwithCategory();
  v9 = *(MEMORY[0x277CF3AF0] + 5);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    wasUserInitiated = [(DAAccount *)self wasUserInitiated];
    v13 = @"NO";
    if (wasUserInitiated)
    {
      v13 = @"YES";
    }

    *buf = 138543618;
    v28 = v11;
    v29 = 2114;
    v30 = v13;
    _os_log_impl(&dword_24244C000, v8, v9, "DataAccess is renewing credentials for account %{public}@ by forcing-prompt: %{public}@", buf, 0x16u);
  }

  persistentUUID = [(DAAccount *)self persistentUUID];
  v15 = +[DAPowerAssertionManager sharedPowerAssertionManager];
  [v15 dropPowerAssertionsForGroupIdentifier:persistentUUID];

  v16 = sharedDAAccountStore();
  backingAccountInfo = [(DAAccount *)self backingAccountInfo];
  wasUserInitiated2 = [(DAAccount *)self wasUserInitiated];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __92__DAAccount_AuthenticationExtensions__dropAssertionsAndRenewCredentialsInQueue_withHandler___block_invoke;
  v23[3] = &unk_278D4C4A0;
  v23[4] = self;
  v24 = queueCopy;
  v25 = persistentUUID;
  v26 = handlerCopy;
  v19 = handlerCopy;
  v20 = persistentUUID;
  v21 = queueCopy;
  [v16 renewCredentialsForAccount:backingAccountInfo force:wasUserInitiated2 reason:0 completion:v23];

  v22 = *MEMORY[0x277D85DE8];
}

void __92__DAAccount_AuthenticationExtensions__dropAssertionsAndRenewCredentialsInQueue_withHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) setWasUserInitiated:0];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __92__DAAccount_AuthenticationExtensions__dropAssertionsAndRenewCredentialsInQueue_withHandler___block_invoke_2;
  block[3] = &unk_278D4C478;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v16 = a2;
  v8 = *(a1 + 32);
  v12 = v7;
  v13 = v8;
  v9 = *(a1 + 56);
  v14 = v5;
  v15 = v9;
  v10 = v5;
  dispatch_async(v6, block);
}

uint64_t __92__DAAccount_AuthenticationExtensions__dropAssertionsAndRenewCredentialsInQueue_withHandler___block_invoke_2(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = +[DAPowerAssertionManager sharedPowerAssertionManager];
  [v2 reattainPowerAssertionsForGroupIdentifier:*(a1 + 32)];

  v3 = *(a1 + 64);
  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277CF3AF0] + 5);
  v6 = os_log_type_enabled(v4, v5);
  if (v3)
  {
    if (v6)
    {
      v7 = *(a1 + 40);
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = [*(a1 + 40) wasUserInitiated];
      v11 = @"NO";
      v12 = *(a1 + 64);
      v24 = 138543874;
      v25 = v9;
      if (v10)
      {
        v11 = @"YES";
      }

      v26 = 2114;
      v27 = v11;
      v28 = 2048;
      v29 = v12;
      v13 = "DataAccess failed to renew credentials for account %{public}@ by forcing-prompt: %{public}@ - renewalResult = %ld";
      v14 = v4;
      v15 = v5;
      v16 = 32;
LABEL_10:
      _os_log_impl(&dword_24244C000, v14, v15, v13, &v24, v16);
    }
  }

  else if (v6)
  {
    v17 = *(a1 + 40);
    v18 = objc_opt_class();
    v9 = NSStringFromClass(v18);
    v19 = [*(a1 + 40) wasUserInitiated];
    v20 = @"NO";
    if (v19)
    {
      v20 = @"YES";
    }

    v24 = 138543618;
    v25 = v9;
    v26 = 2114;
    v27 = v20;
    v13 = "DataAccess successfully renewed credentials for account %{public}@ by forcing-prompt: %{public}@";
    v14 = v4;
    v15 = v5;
    v16 = 22;
    goto LABEL_10;
  }

  result = (*(*(a1 + 56) + 16))(*(a1 + 56), *(a1 + 64), *(a1 + 48), v21);
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_webLoginRequestedAtURL:(id)l reasonString:(id)string inQueue:(id)queue completionBlock:(id)block
{
  queueCopy = queue;
  blockCopy = block;
  lCopy = l;
  persistentUUID = [(DAAccount *)self persistentUUID];
  v13 = +[DAPowerAssertionManager sharedPowerAssertionManager];
  [v13 dropPowerAssertionsForGroupIdentifier:persistentUUID];

  v14 = sharedDAAccountStore();
  backingAccountInfo = [(DAAccount *)self backingAccountInfo];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __100__DAAccount_AuthenticationExtensions___webLoginRequestedAtURL_reasonString_inQueue_completionBlock___block_invoke;
  v19[3] = &unk_278D4C4F0;
  v19[4] = self;
  v20 = queueCopy;
  v21 = persistentUUID;
  v22 = blockCopy;
  v16 = blockCopy;
  v17 = persistentUUID;
  v18 = queueCopy;
  [v14 openAuthenticationURL:lCopy forAccount:backingAccountInfo shouldConfirm:1 completion:v19];
}

void __100__DAAccount_AuthenticationExtensions___webLoginRequestedAtURL_reasonString_inQueue_completionBlock___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) setWasUserInitiated:0];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __100__DAAccount_AuthenticationExtensions___webLoginRequestedAtURL_reasonString_inQueue_completionBlock___block_invoke_2;
  v9[3] = &unk_278D4C4C8;
  v6 = *(a1 + 40);
  v10 = *(a1 + 48);
  v7 = *(a1 + 56);
  v13 = a2;
  v11 = v5;
  v12 = v7;
  v8 = v5;
  dispatch_async(v6, v9);
}

uint64_t __100__DAAccount_AuthenticationExtensions___webLoginRequestedAtURL_reasonString_inQueue_completionBlock___block_invoke_2(uint64_t a1)
{
  v2 = +[DAPowerAssertionManager sharedPowerAssertionManager];
  [v2 reattainPowerAssertionsForGroupIdentifier:*(a1 + 32)];

  v3 = *(a1 + 40);
  v4 = *(*(a1 + 48) + 16);
  v5 = *(a1 + 56) ^ 1;

  return v4();
}

- (void)webLoginRequestedAtURL:(id)l reasonString:(id)string inQueue:(id)queue completionBlock:(id)block
{
  blockCopy = block;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __99__DAAccount_AuthenticationExtensions__webLoginRequestedAtURL_reasonString_inQueue_completionBlock___block_invoke;
  v12[3] = &unk_278D4C518;
  v13 = blockCopy;
  v11 = blockCopy;
  [(DAAccount *)self _webLoginRequestedAtURL:l reasonString:string inQueue:queue completionBlock:v12];
}

void __99__DAAccount_AuthenticationExtensions__webLoginRequestedAtURL_reasonString_inQueue_completionBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  (*(*(a1 + 32) + 16))();
}

- (void)handleValidationError:(id)error completion:(id)completion
{
  errorCopy = error;
  completionCopy = completion;
  domain = [errorCopy domain];
  if (![domain isEqualToString:@"DAAccountValidationDomain"])
  {

    goto LABEL_8;
  }

  code = [errorCopy code];

  if (code != 102)
  {
LABEL_8:
    completionCopy[2](completionCopy, 2, 0);
    goto LABEL_12;
  }

  userInfo = [errorCopy userInfo];
  v10 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

  userInfo2 = [v10 userInfo];
  v12 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x277CFDB78]];

  v13 = [v12 CDVObjectForKeyCaseInsensitive:*MEMORY[0x277CFDB70]];
  if (![v13 length])
  {
    v15 = 0;
    v16 = 0;
LABEL_10:
    v19 = dataaccess_get_global_queue();
    [(DAAccount *)self dropAssertionsAndRenewCredentialsInQueue:v19 withHandler:completionCopy];
    goto LABEL_11;
  }

  v14 = CDVExtractValuesFromRedirectString();
  v15 = [v14 objectForKeyedSubscript:*MEMORY[0x277CFE060]];
  v16 = [v14 objectForKeyedSubscript:*MEMORY[0x277CFE058]];

  if (!v15)
  {
    goto LABEL_10;
  }

  principalURL = [(DAAccount *)self principalURL];
  v18 = [v15 CDVIsSafeRedirectForRequestURL:principalURL];

  if (!v18)
  {
    goto LABEL_10;
  }

  v19 = dataaccess_get_global_queue();
  [(DAAccount *)self _webLoginRequestedAtURL:v15 reasonString:v16 inQueue:v19 completionBlock:completionCopy];
LABEL_11:

LABEL_12:
}

+ (id)_leafAccountTypes
{
  if (_leafAccountTypes_onceToken != -1)
  {
    +[DAAccount(AuthenticationExtensions) _leafAccountTypes];
  }

  v3 = _leafAccountTypes__sLeafAccountTypes;

  return v3;
}

uint64_t __56__DAAccount_AuthenticationExtensions___leafAccountTypes__block_invoke()
{
  _leafAccountTypes__sLeafAccountTypes = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CB8BC8]];

  return MEMORY[0x2821F96F8]();
}

+ (id)oneshotListOfAccountIDs
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB58] set];
  v3 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = +[DAAccount _leafAccountTypes];
  v4 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v17 = *v23;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v7 = [v3 accountTypeWithAccountTypeIdentifier:*(*(&v22 + 1) + 8 * i)];
        if (v7)
        {
          v8 = [v3 accountsWithAccountType:v7];
          v18 = 0u;
          v19 = 0u;
          v20 = 0u;
          v21 = 0u;
          v9 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v19;
            do
            {
              for (j = 0; j != v10; ++j)
              {
                if (*v19 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                identifier = [*(*(&v18 + 1) + 8 * j) identifier];
                if (identifier)
                {
                  [v2 addObject:identifier];
                }
              }

              v10 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
            }

            while (v10);
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v5);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (void)reacquireClientRestrictions:(id)restrictions
{
  v17 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D262C0] = [MEMORY[0x277D262C0] sharedManager];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  oneshotListOfAccountIDs = [self oneshotListOfAccountIDs];
  v6 = [oneshotListOfAccountIDs countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    v9 = MEMORY[0x277CBEC10];
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(oneshotListOfAccountIDs);
        }

        [mEMORY[0x277D262C0] setUserInfo:v9 forClientUUID:*(*(&v12 + 1) + 8 * v10++)];
      }

      while (v7 != v10);
      v7 = [oneshotListOfAccountIDs countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)beginDownloadingAttachmentWithUUID:(id)d consumer:(id)consumer
{
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  consumerCopy = consumer;
  v8 = DALoggingwithCategory();
  v9 = *(MEMORY[0x277CF3AF0] + 3);
  if (os_log_type_enabled(v8, v9))
  {
    accountID = [(DAAccount *)self accountID];
    v14 = 138412546;
    v15 = accountID;
    v16 = 2112;
    v17 = dCopy;
    _os_log_impl(&dword_24244C000, v8, v9, "Downloading attachments is not supported on account ID %@. AttachmentUUID: %@", &v14, 0x16u);
  }

  v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CF3AB0] code:70 userInfo:0];
  [consumerCopy downloadFinishedError:v11];

  v12 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)requestCalendarAvailabilityForStartDate:(id)date endDate:(id)endDate ignoredEventID:(id)d addresses:(id)addresses consumer:(id)consumer
{
  v17 = *MEMORY[0x277D85DE8];
  consumerCopy = consumer;
  v9 = DALoggingwithCategory();
  v10 = *(MEMORY[0x277CF3AF0] + 3);
  if (os_log_type_enabled(v9, v10))
  {
    accountID = [(DAAccount *)self accountID];
    v15 = 138412290;
    v16 = accountID;
    _os_log_impl(&dword_24244C000, v9, v10, "Requesting calendar availability is not supported on account with ID [%@].", &v15, 0xCu);
  }

  v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CF3AB0] code:81 userInfo:0];
  [consumerCopy calendarAvailabilityRequestFinishedWithError:v12];

  v13 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)cancelCalendarAvailabilityRequestWithID:(id)d
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277CF3AF0] + 3);
  if (os_log_type_enabled(v4, v5))
  {
    accountID = [(DAAccount *)self accountID];
    v8 = 138412290;
    v9 = accountID;
    _os_log_impl(&dword_24244C000, v4, v5, "Cancelling calendar availability requests is not supported on account with ID [%@].", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)performCalendarDirectorySearchForTerms:(id)terms recordTypes:(id)types resultLimit:(unint64_t)limit consumer:(id)consumer
{
  v16 = *MEMORY[0x277D85DE8];
  consumerCopy = consumer;
  v8 = DALoggingwithCategory();
  v9 = *(MEMORY[0x277CF3AF0] + 3);
  if (os_log_type_enabled(v8, v9))
  {
    accountID = [(DAAccount *)self accountID];
    v14 = 138412290;
    v15 = accountID;
    _os_log_impl(&dword_24244C000, v8, v9, "Performing a calendar directory search is not supported on account with ID [%@].", &v14, 0xCu);
  }

  v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CF3AB0] code:83 userInfo:0];
  [consumerCopy calendarDirectorySearchFinishedWithError:v11 exceededResultLimit:0];

  v12 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)cancelCalendarDirectorySearchWithID:(id)d
{
  v13 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277CF3AF0] + 3);
  if (os_log_type_enabled(v5, v6))
  {
    accountID = [(DAAccount *)self accountID];
    v9 = 138412546;
    v10 = accountID;
    v11 = 2112;
    v12 = dCopy;
    _os_log_impl(&dword_24244C000, v5, v6, "Cancelling calendar directory searches is not supported on account with ID [%@].  searchID: [%@]", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)respondToShareRequestForCalendar:(id)calendar withResponse:(int64_t)response consumer:(id)consumer
{
  v19 = *MEMORY[0x277D85DE8];
  calendarCopy = calendar;
  consumerCopy = consumer;
  v9 = DALoggingwithCategory();
  v10 = *(MEMORY[0x277CF3AF0] + 3);
  if (os_log_type_enabled(v9, v10))
  {
    accountID = [(DAAccount *)self accountID];
    v15 = 138412546;
    v16 = accountID;
    v17 = 2112;
    v18 = calendarCopy;
    _os_log_impl(&dword_24244C000, v9, v10, "Responding to calendar shares is not supported on account ID %@. calendar ID: %@", &v15, 0x16u);
  }

  v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CF3AB0] code:76 userInfo:0];
  [consumerCopy shareResponseFinishedWithError:v12];

  v13 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)reportShareRequestAsJunkForCalendar:(id)calendar consumer:(id)consumer
{
  v18 = *MEMORY[0x277D85DE8];
  calendarCopy = calendar;
  consumerCopy = consumer;
  v8 = DALoggingwithCategory();
  v9 = *(MEMORY[0x277CF3AF0] + 3);
  if (os_log_type_enabled(v8, v9))
  {
    accountID = [(DAAccount *)self accountID];
    v14 = 138412546;
    v15 = accountID;
    v16 = 2112;
    v17 = calendarCopy;
    _os_log_impl(&dword_24244C000, v8, v9, "Reporting calendar shares as junk is not supported on account ID %@. calendar ID: %@", &v14, 0x16u);
  }

  v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CF3AB0] code:76 userInfo:0];
  [consumerCopy shareResponseFinishedWithError:v11];

  v12 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)unactionableICSRepresentationForMetaData:(id)data inFolderWithId:(id)id outSummary:(id *)summary
{
  if (summary)
  {
    *summary = 0;
  }

  return 0;
}

- (id)getPendingQueryQueue
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  pendingQueries = [(DAAccount *)selfCopy pendingQueries];

  if (!pendingQueries)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(DAAccount *)selfCopy setPendingQueries:v4];

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.dataaccess.queryqueue", v5);
    [(DAAccount *)selfCopy setPendingQueryQueue:v6];

    v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-2.0];
    [(DAAccount *)selfCopy setLastQueryStartedTime:v7];
  }

  objc_sync_exit(selfCopy);

  return [(DAAccount *)selfCopy pendingQueryQueue];
}

- (void)_dequeueQuery
{
  v15 = *MEMORY[0x277D85DE8];
  getPendingQueryQueue = [(DAAccount *)self getPendingQueryQueue];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  pendingQueryQueue = [(DAAccount *)self pendingQueryQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __37__DAAccount_Searching___dequeueQuery__block_invoke;
  v8[3] = &unk_278D4C650;
  v8[4] = self;
  v8[5] = &v9;
  dispatch_sync(pendingQueryQueue, v8);

  if (*(v10 + 24) == 1)
  {
    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277CF3AF0] + 7);
    if (os_log_type_enabled(v5, v6))
    {
      *buf = 134217984;
      v14 = 0x4000000000000000;
      _os_log_impl(&dword_24244C000, v5, v6, "Delay pending search for %f seconds", buf, 0xCu);
    }

    [(DAAccount *)self performSelector:sel__dequeueQuery withObject:0 afterDelay:2.0];
  }

  _Block_object_dispose(&v9, 8);
  v7 = *MEMORY[0x277D85DE8];
}

void __37__DAAccount_Searching___dequeueQuery__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingQueries];
  v3 = [v2 count];

  if (v3)
  {
    v4 = 0;
    while (1)
    {
      v5 = [*(a1 + 32) pendingQueries];
      v6 = [v5 objectAtIndexedSubscript:0];

      v7 = [v6 consumer];

      if (v7)
      {
        v7 = v6;
      }

      v8 = [*(a1 + 32) pendingQueries];
      [v8 removeObjectAtIndex:0];

      if (v7)
      {
        break;
      }

      ++v4;
      v9 = [*(a1 + 32) pendingQueries];
      v10 = [v9 count];

      if (v4 >= v10)
      {
        goto LABEL_9;
      }
    }

    v11 = [MEMORY[0x277CBEAA8] date];
    [*(a1 + 32) setLastQueryStartedTime:v11];

    [*(a1 + 32) _reallyPerformSearchQuery:v7];
  }

LABEL_9:
  v12 = [*(a1 + 32) pendingQueries];
  v13 = [v12 count];

  if (v13)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (void)performSearchQuery:(id)query
{
  v25 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  getPendingQueryQueue = [(DAAccount *)self getPendingQueryQueue];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  pendingQueryQueue = [(DAAccount *)self pendingQueryQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__DAAccount_Searching__performSearchQuery___block_invoke;
  block[3] = &unk_278D4C678;
  block[4] = self;
  v18 = &v19;
  v7 = queryCopy;
  v17 = v7;
  dispatch_sync(pendingQueryQueue, block);

  if (*(v20 + 24) == 1)
  {
    lastQueryStartedTime = [(DAAccount *)self lastQueryStartedTime];
    [lastQueryStartedTime timeIntervalSinceNow];
    v10 = v9;

    v11 = v10 + 2.0;
    v12 = 0.0;
    if (v11 >= 0.0)
    {
      v12 = v11;
      if (v11 > 2.0)
      {
        v12 = 2.0;
      }
    }

    v13 = DALoggingwithCategory();
    v14 = *(MEMORY[0x277CF3AF0] + 7);
    if (os_log_type_enabled(v13, v14))
    {
      *buf = 134217984;
      v24 = v12;
      _os_log_impl(&dword_24244C000, v13, v14, "Delay new search for %f seconds", buf, 0xCu);
    }

    [(DAAccount *)self performSelector:sel__dequeueQuery withObject:0 afterDelay:v12];
  }

  _Block_object_dispose(&v19, 8);
  v15 = *MEMORY[0x277D85DE8];
}

void __43__DAAccount_Searching__performSearchQuery___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingQueries];
  v3 = [v2 count];

  if (!v3)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  v4 = [*(a1 + 32) pendingQueries];
  [v4 addObject:*(a1 + 40)];
}

- (void)cancelSearchQuery:(id)query
{
  queryCopy = query;
  getPendingQueryQueue = [(DAAccount *)self getPendingQueryQueue];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  pendingQueryQueue = [(DAAccount *)self pendingQueryQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__DAAccount_Searching__cancelSearchQuery___block_invoke;
  block[3] = &unk_278D4C6A0;
  block[4] = self;
  v7 = queryCopy;
  v9 = v7;
  v10 = &v11;
  dispatch_sync(pendingQueryQueue, block);

  if (v12[3])
  {
    [(DAAccount *)self _reallyCancelPendingSearchQuery:v7];
  }

  else
  {
    [(DAAccount *)self _reallyCancelSearchQuery:v7];
  }

  _Block_object_dispose(&v11, 8);
}

void __42__DAAccount_Searching__cancelSearchQuery___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingQueries];
  v3 = [v2 count];

  if (v3)
  {
    v4 = 0;
    while (1)
    {
      v5 = [*(a1 + 32) pendingQueries];
      v6 = [v5 objectAtIndex:v4];
      v7 = [v6 isEqual:*(a1 + 40)];

      if (v7)
      {
        break;
      }

      ++v4;
      v8 = [*(a1 + 32) pendingQueries];
      v9 = [v8 count];

      if (v4 >= v9)
      {
        return;
      }
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
    v10 = [*(a1 + 32) pendingQueries];
    [v10 removeObjectAtIndex:v4];
  }
}

- (void)cancelAllSearchQueries
{
  v23 = *MEMORY[0x277D85DE8];
  getPendingQueryQueue = [(DAAccount *)self getPendingQueryQueue];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__0;
  v20 = __Block_byref_object_dispose__0;
  v21 = 0;
  pendingQueryQueue = [(DAAccount *)self pendingQueryQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__DAAccount_Searching__cancelAllSearchQueries__block_invoke;
  block[3] = &unk_278D4C600;
  block[4] = self;
  block[5] = &v16;
  dispatch_sync(pendingQueryQueue, block);

  v5 = v17[5];
  if (v5)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v22 count:16];
    if (v7)
    {
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v6);
          }

          [(DAAccount *)self _reallyCancelPendingSearchQuery:*(*(&v11 + 1) + 8 * v9++), v11];
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v11 objects:v22 count:16];
      }

      while (v7);
    }
  }

  [(DAAccount *)self _reallyCancelAllSearchQueries];
  _Block_object_dispose(&v16, 8);

  v10 = *MEMORY[0x277D85DE8];
}

void __46__DAAccount_Searching__cancelAllSearchQueries__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CBEB18];
  v3 = [*(a1 + 32) pendingQueries];
  v4 = [v2 arrayWithArray:v3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [*(a1 + 32) pendingQueries];
  [v7 removeAllObjects];
}

- (BOOL)searchQueriesRunning
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  pendingQueryQueue = [(DAAccount *)self pendingQueryQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__DAAccount_Searching__searchQueriesRunning__block_invoke;
  v6[3] = &unk_278D4C650;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(pendingQueryQueue, v6);

  v4 = (v8[3] & 1) != 0 || [(DAAccount *)self _reallySearchQueriesRunning];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __44__DAAccount_Searching__searchQueriesRunning__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingQueries];
  v3 = [v2 count];

  if (v3)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (void)_reallyPerformSearchQuery:(id)query
{
  v12 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277CF3AF0] + 3);
  if (os_log_type_enabled(v5, v6))
  {
    v10 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_24244C000, v5, v6, "Search requested on account %@, which does not support it", &v10, 0xCu);
  }

  consumer = [queryCopy consumer];
  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CF3AB0] code:10 userInfo:0];
  [consumer searchQuery:queryCopy finishedWithError:v8];

  v9 = *MEMORY[0x277D85DE8];
}

@end