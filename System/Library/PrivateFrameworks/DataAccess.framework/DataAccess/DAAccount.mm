@interface DAAccount
+ (id)daAccountSubclassWithBackingAccountInfo:(id)info;
+ (id)oneshotListOfAccountIDs;
+ (void)reacquireClientRestrictions:(id)restrictions;
- (BOOL)_isIdentityManagedByProfile;
- (BOOL)accountBoolPropertyForKey:(id)key;
- (BOOL)accountContainsEmailAddress:(id)address;
- (BOOL)accountHasSignificantPropertyChangesFromOldAccountInfo:(id)info;
- (BOOL)accountHasSignificantPropertyChangesWithChangeInfo:(id)info;
- (BOOL)canSaveWithAccountProvider:(id)provider;
- (BOOL)enabledForAnyDADataclasses:(int64_t)dataclasses;
- (BOOL)enabledForDADataclass:(int64_t)dataclass;
- (BOOL)handleTrustChallenge:(id)challenge;
- (BOOL)handleTrustChallenge:(id)challenge completionHandler:(id)handler;
- (BOOL)isChildAccount;
- (BOOL)isDisabled;
- (BOOL)isEqualToAccount:(id)account;
- (BOOL)isOofSupported;
- (BOOL)monitorFolderWithID:(id)d;
- (BOOL)preflightSaveWithAccountProvider:(id)provider;
- (BOOL)resetCertWarnings;
- (BOOL)saveAccountPropertiesWithError:(id *)error;
- (BOOL)searchQueriesRunning;
- (BOOL)shouldAutodiscoverAccountProperties;
- (BOOL)shouldCancelTaskDueToOnPowerFetchMode;
- (BOOL)shouldFailAllTasks;
- (BOOL)shouldRemoveDBSyncDataOnAccountChange;
- (BOOL)upgradeAccount;
- (BOOL)useSSL;
- (BOOL)useSSLFromDataclassPropertiesForDataclass:(id)dataclass;
- (DAAccount)initWithBackingAccountInfo:(id)info;
- (NSArray)emailAddresses;
- (NSString)accountDescription;
- (NSString)changeTrackingID;
- (NSString)clientToken;
- (NSString)hostWithoutPath;
- (NSString)onBehalfOfBundleIdentifier;
- (NSString)password;
- (NSString)principalPath;
- (NSString)publicDescription;
- (NSString)scheduleIdentifier;
- (NSString)scheme;
- (NSURL)principalURL;
- (__CFData)exceptionsForDigest:(id)digest;
- (__CFURLStorageSession)copyStorageSession;
- (id)accountPropertyForKey:(id)key;
- (id)accountTypeIdentifier;
- (id)accountsProviderWithDBHelper:(id)helper;
- (id)addUsernameToURL:(id)l;
- (id)additionalHeaderValues;
- (id)beginDownloadingAttachmentWithUUID:(id)d consumer:(id)consumer;
- (id)containerProviderWithDBHelper:(id)helper;
- (id)customConnectionProperties;
- (id)description;
- (id)fetchOfficeHoursWithConsumer:(id)consumer error:(id *)error;
- (id)getPendingQueryQueue;
- (id)hostFromDataclassPropertiesForDataclass:(id)dataclass;
- (id)localizedIdenticalAccountFailureMessage;
- (id)localizedInvalidPasswordMessage;
- (id)oauth2Token;
- (id)objectForKeyedSubscript:(id)subscript;
- (id)performCalendarDirectorySearchForTerms:(id)terms recordTypes:(id)types resultLimit:(unint64_t)limit consumer:(id)consumer;
- (id)reportShareRequestAsJunkForCalendar:(id)calendar consumer:(id)consumer;
- (id)requestCalendarAvailabilityForStartDate:(id)date endDate:(id)endDate ignoredEventID:(id)d addresses:(id)addresses consumer:(id)consumer;
- (id)requestGrantedDelegatesListWithConsumer:(id)consumer;
- (id)respondToShareRequestForCalendar:(id)calendar withResponse:(int64_t)response consumer:(id)consumer;
- (id)setOfficeHours:(id)hours withConsumer:(id)consumer error:(id *)error;
- (id)spinnerIdentifiers;
- (id)stateString;
- (id)unactionableICSRepresentationForMetaData:(id)data inFolderWithId:(id)id outSummary:(id *)summary;
- (id)updateGrantedDelegatePermission:(id)permission consumer:(id)consumer;
- (id)urlFromDataclassPropertiesForDataclass:(id)dataclass;
- (int)accountIntPropertyForKey:(id)key;
- (int)daAccountVersion;
- (int)keychainAccessibilityType;
- (int64_t)enabledDataclassesBitmask;
- (int64_t)port;
- (int64_t)portFromDataclassPropertiesForDataclass:(id)dataclass;
- (void)_dequeueQuery;
- (void)_handleSignificantPropertyChanges:(id)changes;
- (void)_reallyPerformSearchQuery:(id)query;
- (void)_refreshCredential;
- (void)_webLoginRequestedAtURL:(id)l reasonString:(id)string inQueue:(id)queue completionBlock:(id)block;
- (void)accountDidChangeFromOldAccountInfo:(id)info;
- (void)accountDidChangeWithChangeInfo:(id)info;
- (void)cancelAllSearchQueries;
- (void)cancelCalendarAvailabilityRequestWithID:(id)d;
- (void)cancelCalendarDirectorySearchWithID:(id)d;
- (void)cancelGrantedDelegatesListRequestWithID:(id)d;
- (void)cancelSearchQuery:(id)query;
- (void)cancelUpdateGrantedDelegatePermissionRequestWithID:(id)d;
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
- (void)performGroupExpansionForPrincipalPath:(id)path consumer:(id)consumer;
- (void)performSearchQuery:(id)query;
- (void)performUsingAccountPersona:(id)persona;
- (void)reload;
- (void)removeAccountPropertyForKey:(id)key;
- (void)removeClientCertificateData;
- (void)removeConsumerForTask:(id)task;
- (void)removeDBSyncDataForAccountChange:(id)change;
- (void)removeXpcActivity;
- (void)resetAccountID;
- (void)resetStatusReport;
- (void)resumeMonitoringFoldersWithIDs:(id)ds;
- (void)retrieveOofSettingsForConsumer:(id)consumer;
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
- (void)setPrincipalPath:(id)path;
- (void)setPrincipalURL:(id)l;
- (void)setShouldDoInitialAutodiscovery:(BOOL)autodiscovery;
- (void)shutdown;
- (void)stopMonitoringFolderWithID:(id)d;
- (void)stopMonitoringFolders;
- (void)stopMonitoringFoldersWithIDs:(id)ds;
- (void)suspendMonitoringFoldersWithIDs:(id)ds;
- (void)tearDown;
- (void)updateExistingAccountProperties;
- (void)updateOofSettingsWithParams:(id)params consumer:(id)consumer;
- (void)webLoginRequestedAtURL:(id)l reasonString:(id)string inQueue:(id)queue completionBlock:(id)block;
@end

@implementation DAAccount

- (void)dealloc
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_24844D000, v3, v4, "DAAccount %p is going away...", buf, 0xCu);
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

- (int)daAccountVersion
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = [(DAAccount *)self accountIntPropertyForKey:@"DAAccountVersion2"];
  if (!v3)
  {
    v8 = DMGetPreviousBuildVersion();
    v5 = v8;
    if (v8)
    {
      intValue = [v8 intValue];
      if (intValue)
      {
        v10 = intValue;
        v11 = DALoggingwithCategory();
        v12 = *(MEMORY[0x277D03988] + 5);
        v13 = os_log_type_enabled(v11, v12);
        if (v10 > 14)
        {
          if (v13)
          {
            accountID = [(DAAccount *)self accountID];
            v23 = 138543618;
            v24 = accountID;
            v25 = 2114;
            v26 = v5;
            _os_log_impl(&dword_24844D000, v11, v12, "Account %{public}@ has no DAAccountVersion, and the previous build version string (%{public}@) appears new enough not to force migration. Assuming DAAccountVersion 1.", &v23, 0x16u);
          }

          v4 = 1;
          goto LABEL_16;
        }

        if (v13)
        {
          accountID2 = [(DAAccount *)self accountID];
          v23 = 138543618;
          v24 = accountID2;
          v25 = 2114;
          v26 = v5;
          v15 = "Account %{public}@ has no DAAccountVersion, and the previous build version string (%{public}@) appears old enough that we think we need to migrate. Forcing account migration.";
LABEL_13:
          v17 = v11;
          v18 = v12;
          v19 = 22;
          goto LABEL_14;
        }
      }

      else
      {
        v11 = DALoggingwithCategory();
        v12 = *(MEMORY[0x277D03988] + 5);
        if (os_log_type_enabled(v11, v12))
        {
          accountID2 = [(DAAccount *)self accountID];
          v23 = 138543618;
          v24 = accountID2;
          v25 = 2114;
          v26 = v5;
          v15 = "Account %{public}@ has no DAAccountVersion, and the previous build version string (%{public}@) could not be parsed. Forcing account migration.";
          goto LABEL_13;
        }
      }
    }

    else
    {
      v11 = DALoggingwithCategory();
      v16 = *(MEMORY[0x277D03988] + 5);
      if (os_log_type_enabled(v11, v16))
      {
        accountID2 = [(DAAccount *)self accountID];
        v23 = 138543362;
        v24 = accountID2;
        v15 = "Account %{public}@ has no DAAccountVersion, and we have no previous build version. Forcing account migration.";
        v17 = v11;
        v18 = v16;
        v19 = 12;
LABEL_14:
        _os_log_impl(&dword_24844D000, v17, v18, v15, &v23, v19);
      }
    }

    v4 = 0;
LABEL_16:

    goto LABEL_17;
  }

  v4 = v3;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v5, v6))
  {
    accountID3 = [(DAAccount *)self accountID];
    v23 = 138543618;
    v24 = accountID3;
    v25 = 1024;
    LODWORD(v26) = v4;
    _os_log_impl(&dword_24844D000, v5, v6, "Account %{public}@ has DAAccountVersion %d", &v23, 0x12u);
  }

LABEL_17:

  v20 = *MEMORY[0x277D85DE8];
  return v4;
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
    [(DAAccount *)v7 _refreshCredential];
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

- (void)_refreshCredential
{
  v10 = *MEMORY[0x277D85DE8];
  if ([(ACAccount *)self->_backingAccountInfo isPropertyDirty:*MEMORY[0x277CB8E58]])
  {
    v3 = DALoggingwithCategory();
    v4 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v3, v4))
    {
      identifier = [(ACAccount *)self->_backingAccountInfo identifier];
      *buf = 138543362;
      v9 = identifier;
      _os_log_impl(&dword_24844D000, v3, v4, "Not clearing/refreshing account credentials for account %{public}@ because the credentials have yet to be saved.", buf, 0xCu);
    }
  }

  else
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __31__DAAccount__refreshCredential__block_invoke;
    v7[3] = &unk_278F130E0;
    v7[4] = self;
    [(DAAccount *)self performUsingAccountPersona:v7];
  }

  v6 = *MEMORY[0x277D85DE8];
}

void *__31__DAAccount__refreshCredential__block_invoke(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    [*(result[4] + 8) _clearCachedCredentials];
    return [*(v2[4] + 8) credential];
  }

  return result;
}

+ (id)daAccountSubclassWithBackingAccountInfo:(id)info
{
  infoCopy = info;
  accountType = [infoCopy accountType];
  identifier = [accountType identifier];
  if ([identifier isEqualToString:*MEMORY[0x277CB8C00]])
  {
  }

  else
  {
    accountType2 = [infoCopy accountType];
    identifier2 = [accountType2 identifier];
    v8 = [identifier2 isEqualToString:*MEMORY[0x277CB8C50]];

    if (!v8)
    {
      v11 = +[DAAccountLoader sharedInstance];
      v12 = [v11 daemonAppropriateAccountClassForACAccount:infoCopy];

      v9 = [[v12 alloc] initWithBackingAccountInfo:infoCopy];
      goto LABEL_8;
    }
  }

  if (!ExchangeSyncLibraryCore())
  {
    v10 = 0;
    goto LABEL_9;
  }

  v9 = [getESAccountClass() esAccountSubclassWithBackingAccountInfo:infoCopy];
LABEL_8:
  v10 = v9;
LABEL_9:

  return v10;
}

- (id)accountsProviderWithDBHelper:(id)helper
{
  v3 = MEMORY[0x277D03910];
  helperCopy = helper;
  if ([v3 useContactsFramework])
  {
    contactStore = [helperCopy contactStore];

    v6 = [DAContactsAccountProvider providerWithContactStore:contactStore];
  }

  else
  {
    abDB = [helperCopy abDB];

    v6 = [DAContactsAccountProvider providerWithAddressBook:abDB];
  }

  return v6;
}

- (id)containerProviderWithDBHelper:(id)helper
{
  v3 = MEMORY[0x277D03910];
  helperCopy = helper;
  if ([v3 useContactsFramework])
  {
    contactStore = [helperCopy contactStore];

    v6 = [DAContainerProvider providerWithContactStore:contactStore];
  }

  else
  {
    abDB = [helperCopy abDB];

    v6 = [DAContainerProvider providerWithAddressBook:abDB];
  }

  return v6;
}

- (BOOL)upgradeAccount
{
  daAccountVersion = [(DAAccount *)self daAccountVersion];
  if (daAccountVersion <= 0)
  {
    [(DAAccount *)self setAccountProperty:MEMORY[0x277CBEC28] forKey:@"DAAccountUseTrustedSSLCertificate"];
    [(DAAccount *)self setDAAccountVersion:1];
  }

  return daAccountVersion < 1;
}

- (void)resetAccountID
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"DAAccount.m" lineNumber:324 description:{@"We shouldn't be resetting our account id, ever"}];
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
  v4 = [v2 stringWithFormat:@"com.apple.dataaccessd-%@", persistentUUID];

  return v4;
}

- (NSString)publicDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  identifier = [(ACAccount *)self->_backingAccountInfo identifier];
  v7 = [v3 stringWithFormat:@"%@ %@", v5, identifier];

  return v7;
}

- (void)setAccountDescription:(id)description
{
  backingAccountInfo = self->_backingAccountInfo;
  descriptionCopy = description;
  displayAccount = [(ACAccount *)backingAccountInfo displayAccount];
  [displayAccount setAccountDescription:descriptionCopy];
}

- (BOOL)enabledForAnyDADataclasses:(int64_t)dataclasses
{
  dataclassesCopy = dataclasses;
  if ((dataclasses & 1) == 0)
  {
    return (dataclassesCopy & 2) != 0 && [(DAAccount *)self enabledForDADataclass:2]|| (dataclassesCopy & 4) != 0 && [(DAAccount *)self enabledForDADataclass:4]|| (dataclassesCopy & 8) != 0 && [(DAAccount *)self enabledForDADataclass:8]|| (dataclassesCopy & 0x10) != 0 && [(DAAccount *)self enabledForDADataclass:16]|| (dataclassesCopy & 0x20) != 0 && [(DAAccount *)self enabledForDADataclass:32];
  }

  v5 = 1;
  if (![(DAAccount *)self enabledForDADataclass:1])
  {
    return (dataclassesCopy & 2) != 0 && [(DAAccount *)self enabledForDADataclass:2]|| (dataclassesCopy & 4) != 0 && [(DAAccount *)self enabledForDADataclass:4]|| (dataclassesCopy & 8) != 0 && [(DAAccount *)self enabledForDADataclass:8]|| (dataclassesCopy & 0x10) != 0 && [(DAAccount *)self enabledForDADataclass:16]|| (dataclassesCopy & 0x20) != 0 && [(DAAccount *)self enabledForDADataclass:32];
  }

  return v5;
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
  v4 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v3, v4))
  {
    v7 = 136315138;
    Name = sel_getName(a2);
    _os_log_impl(&dword_24844D000, v3, v4, "%s to be implemented by subclass", &v7, 0xCu);
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
  v5 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v4, v5))
  {
    v7 = 136315138;
    Name = sel_getName(a2);
    _os_log_impl(&dword_24844D000, v4, v5, "%s to be implemented by subclass", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)suspendMonitoringFoldersWithIDs:(id)ds
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v4, v5))
  {
    v8 = 136315394;
    Name = sel_getName(a2);
    v10 = 2112;
    v11 = objc_opt_class();
    v6 = v11;
    _os_log_impl(&dword_24844D000, v4, v5, "%s being ignored by %@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)stopMonitoringFolderWithID:(id)d
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v4, v5))
  {
    v8 = 136315394;
    Name = sel_getName(a2);
    v10 = 2112;
    v11 = objc_opt_class();
    v6 = v11;
    _os_log_impl(&dword_24844D000, v4, v5, "%s being ignored by %@", &v8, 0x16u);
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
  v12 = *(MEMORY[0x277D03988] + 7);
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
    _os_log_impl(&dword_24844D000, v11, v12, "Added consumer %p for task %p to DAAccount %p, count: %lu", &v15, 0x2Au);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)removeConsumerForTask:(id)task
{
  v15 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  [(NSMapTable *)self->_consumers removeObjectForKey:taskCopy];
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = [(NSMapTable *)self->_consumers count];
    v9 = 134218496;
    v10 = taskCopy;
    v11 = 2048;
    selfCopy = self;
    v13 = 2048;
    v14 = v7;
    _os_log_impl(&dword_24844D000, v5, v6, "Removed consumer for task %p from DAAccount %p, count: %lu", &v9, 0x20u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (NSString)clientToken
{
  v13 = *MEMORY[0x277D85DE8];
  backingAccountInfo = [(DAAccount *)self backingAccountInfo];
  clientToken = [backingAccountInfo clientToken];

  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v5, v6))
  {
    v9 = 134218242;
    selfCopy = self;
    v11 = 2112;
    v12 = clientToken;
    _os_log_impl(&dword_24844D000, v5, v6, "Account %p clientToken: %@", &v9, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];

  return clientToken;
}

- (void)clientTokenRequestedByServer
{
  v14 = *MEMORY[0x277D85DE8];
  clientToken = [(DAAccount *)self clientToken];
  v4 = [clientToken length];

  if (!v4)
  {
    da_newGUID = [MEMORY[0x277CCACA8] da_newGUID];
    backingAccountInfo = [(DAAccount *)self backingAccountInfo];
    [backingAccountInfo addClientToken:da_newGUID];

    v7 = DALoggingwithCategory();
    v8 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v7, v8))
    {
      v10 = 134218242;
      selfCopy = self;
      v12 = 2112;
      v13 = da_newGUID;
      _os_log_impl(&dword_24844D000, v7, v8, "Account %p clientTokenRequestedByServer, new token: %@", &v10, 0x16u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
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
    v10 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v9, v10))
    {
      identifier = [(ACAccount *)self->_backingAccountInfo identifier];
      username = [(ACAccount *)self->_backingAccountInfo username];
      v14 = 138412546;
      v15 = identifier;
      v16 = 2112;
      v17 = username;
      _os_log_impl(&dword_24844D000, v9, v10, "Calling _backingAccountInfo.authenticated = YES for Account identifier %@ and username %@", &v14, 0x16u);
    }

    [(ACAccount *)self->_backingAccountInfo setAuthenticated:1];
  }

  else
  {
    [credential setPassword:0];

    v7 = DALoggingwithCategory();
    v8 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v7, v8))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_24844D000, v7, v8, "Someone wanted to set a nil password, we're editing the live ACAccountCredential", &v14, 2u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)performUsingAccountPersona:(id)persona
{
  v28 = *MEMORY[0x277D85DE8];
  personaCopy = persona;
  cal_personaIdentifier = [(ACAccount *)self->_backingAccountInfo cal_personaIdentifier];
  v6 = cal_personaIdentifier;
  if (cal_personaIdentifier && [cal_personaIdentifier length])
  {
    mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
    currentPersona = [mEMORY[0x277D77BF8] currentPersona];

    v21 = 0;
    v9 = [currentPersona copyCurrentPersonaContextWithError:&v21];
    v10 = v21;
    if (!v9)
    {
      domain = DALoggingwithCategory();
      v17 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(domain, v17))
      {
        identifier = [(ACAccount *)self->_backingAccountInfo identifier];
        *buf = 138543618;
        v23 = identifier;
        v24 = 2112;
        v25 = v10;
        _os_log_impl(&dword_24844D000, domain, v17, "Could not get current persona context for account %{public}@, with error %@", buf, 0x16u);

        v9 = 0;
      }

      v11 = v10;
      goto LABEL_16;
    }

    v11 = [currentPersona createPersonaContextForBackgroundProcessingWithPersonaUniqueString:v6];

    if (v11)
    {
      v12 = DALoggingwithCategory();
      v13 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v12, v13))
      {
        identifier2 = [(ACAccount *)self->_backingAccountInfo identifier];
        *buf = 138543874;
        v23 = identifier2;
        v24 = 2112;
        v25 = v6;
        v26 = 2112;
        v27 = v11;
        _os_log_impl(&dword_24844D000, v12, v13, "Could not convert account %{public}@ to persona %@, with error %@", buf, 0x20u);
      }
    }

    domain = [v11 domain];
    if (![domain isEqualToString:@"NSPOSIXErrorDomain"])
    {
LABEL_16:

      goto LABEL_17;
    }

    code = [v11 code];

    if (code == 1)
    {
      domain = DALoggingwithCategory();
      if (os_log_type_enabled(domain, OS_LOG_TYPE_FAULT))
      {
        [DAAccount performUsingAccountPersona:domain];
      }

      goto LABEL_16;
    }
  }

  else
  {
    v9 = 0;
    currentPersona = 0;
    v11 = 0;
  }

LABEL_17:
  personaCopy[2](personaCopy, v6);
  if (currentPersona && v9 && !v11)
  {
    v19 = [currentPersona restorePersonaWithSavedPersonaContext:v9];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (id)urlFromDataclassPropertiesForDataclass:(id)dataclass
{
  dataclassCopy = dataclass;
  backingAccountInfo = [(DAAccount *)self backingAccountInfo];
  calTopLevelAccount = [backingAccountInfo calTopLevelAccount];

  dataclassProperties = [calTopLevelAccount dataclassProperties];
  if ([dataclassProperties count])
  {
    if (!self->_dataclassPropertyURLsByDataclass)
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      if (!self->_dataclassPropertyURLsByDataclass)
      {
        v9 = objc_opt_new();
        dataclassPropertyURLsByDataclass = self->_dataclassPropertyURLsByDataclass;
        self->_dataclassPropertyURLsByDataclass = v9;
      }

      objc_sync_exit(selfCopy);
    }

    dataclassPropertyURLsByDataclass = [(DAAccount *)self dataclassPropertyURLsByDataclass];
    objc_sync_enter(dataclassPropertyURLsByDataclass);
    dataclassPropertyURLsByDataclass2 = [(DAAccount *)self dataclassPropertyURLsByDataclass];
    null = [dataclassPropertyURLsByDataclass2 objectForKeyedSubscript:dataclassCopy];

    if (!null)
    {
      v14 = [dataclassProperties objectForKeyedSubscript:dataclassCopy];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ([v14 objectForKeyedSubscript:@"url"], (v15 = objc_claimAutoreleasedReturnValue()) == 0) || (objc_msgSend(MEMORY[0x277CBEBC0], "URLWithString:", v15), null = objc_claimAutoreleasedReturnValue(), v15, !null))
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
  v6 = *(MEMORY[0x277D03988] + 5);
  if (os_log_type_enabled(v5, v6))
  {
    host = [(DAAccount *)self host];
    v9 = 138412546;
    v10 = host;
    v11 = 2112;
    v12 = hostCopy;
    _os_log_impl(&dword_24844D000, v5, v6, "Changing Host From %@ to %@", &v9, 0x16u);
  }

  [(DAAccount *)self setObject:hostCopy forKeyedSubscript:@"DAAccountHost"];
  v8 = *MEMORY[0x277D85DE8];
}

- (NSString)hostWithoutPath
{
  host = [(DAAccount *)self host];
  v3 = host;
  if (host)
  {
    v4 = [host rangeOfString:@"/"];
    if (v4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = v3;
    }

    else
    {
      v5 = [v3 substringToIndex:v4];
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
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
  dAAccountPrincipalPath = [MEMORY[0x277D03970] DAAccountPrincipalPath];
  v4 = [(DAAccount *)self objectForKeyedSubscript:dAAccountPrincipalPath];
  da_appendSlashIfNeeded = [v4 da_appendSlashIfNeeded];

  return da_appendSlashIfNeeded;
}

- (void)setPrincipalPath:(id)path
{
  v4 = MEMORY[0x277D03970];
  pathCopy = path;
  dAAccountPrincipalPath = [v4 DAAccountPrincipalPath];
  [(DAAccount *)self setObject:pathCopy forKeyedSubscript:dAAccountPrincipalPath];
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
  v14[3] = &unk_278F13158;
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
  block[3] = &unk_278F13130;
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
  block[3] = &unk_278F13108;
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
  v5 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v4, v5))
  {
    v7 = 136315138;
    Name = sel_getName(a2);
    _os_log_impl(&dword_24844D000, v4, v5, "%s to be implemented by subclass", &v7, 0xCu);
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

- (NSString)onBehalfOfBundleIdentifier
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  Name = sel_getName(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"DAAccount.m" lineNumber:878 description:{@"%s MUST be implemented in ALL DAAccount subclasses.  Looks like it's missing in %@", Name, objc_opt_class()}];

  return 0;
}

- (BOOL)shouldRemoveDBSyncDataOnAccountChange
{
  backingAccountInfo = [(DAAccount *)self backingAccountInfo];
  parentAccountIdentifier = [backingAccountInfo parentAccountIdentifier];

  return parentAccountIdentifier == 0;
}

- (void)removeDBSyncDataForAccountChange:(id)change
{
  v66 = *MEMORY[0x277D85DE8];
  if (![(DAAccount *)self shouldRemoveDBSyncDataOnAccountChange])
  {
    goto LABEL_60;
  }

  v4 = [DALocalDBHelper sharedInstanceForAccountType:@"GenericDataAccessAccount" creatingClass:0];
  v5 = [(DAAccount *)self enabledForDADataclass:2];
  v6 = MEMORY[0x277D03988];
  if (!v5)
  {
    v28 = 0;
    goto LABEL_24;
  }

  v7 = DALoggingwithCategory();
  v8 = *(v6 + 6);
  if (os_log_type_enabled(v7, v8))
  {
    *buf = 138412290;
    selfCopy3 = self;
    _os_log_impl(&dword_24844D000, v7, v8, "Removing contacts data for account %@, because it has a significant change", buf, 0xCu);
  }

  changeTrackingID = [(DAAccount *)self changeTrackingID];
  [v4 abOpenDBWithClientIdentifier:changeTrackingID];

  v10 = [(DAAccount *)self accountsProviderWithDBHelper:v4];
  accountID = [(DAAccount *)self accountID];
  v12 = [v10 fetchedAccountWithExternalIdentifier:accountID];

  v13 = objc_alloc_init(MEMORY[0x277CBDBA0]);
  if (v12)
  {
    v14 = [(DAAccount *)self containerProviderWithDBHelper:v4];
    v57 = v12;
    externalIdentifier = [v12 externalIdentifier];
    v16 = [v14 allContainersForAccountWithExternalIdentifier:externalIdentifier];

    v17 = DALoggingwithCategory();
    if (os_log_type_enabled(v17, v8))
    {
      v18 = [v16 count];
      *buf = 134217984;
      selfCopy3 = v18;
      _os_log_impl(&dword_24844D000, v17, v8, "Found %ld contacts sources to remove", buf, 0xCu);
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v19 = v16;
    v20 = [v19 countByEnumeratingWithState:&v59 objects:v63 count:16];
    v21 = v20;
    v22 = v20 != 0;
    if (v20)
    {
      v23 = *v60;
      v24 = v20;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v60 != v23)
          {
            objc_enumerationMutation(v19);
          }

          v26 = *(*(&v59 + 1) + 8 * i);
          [v26 markForDeletion];
          if ([MEMORY[0x277D03910] useContactsFramework])
          {
            [v26 updateSaveRequest:v13];
          }
        }

        v24 = [v19 countByEnumeratingWithState:&v59 objects:v63 count:16];
      }

      while (v24);
    }

    useContactsFramework = [MEMORY[0x277D03910] useContactsFramework];
    v12 = v57;
    v6 = MEMORY[0x277D03988];
    if (useContactsFramework)
    {
      if (v21)
      {
        [v4 addSaveRequest:v13];
        [v4 executeAllSaveRequests];
        v28 = 1;
      }

      else
      {
        v28 = 0;
      }

      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v22 = 0;
  v28 = 0;
  if (([MEMORY[0x277D03910] useContactsFramework] & 1) == 0)
  {
LABEL_22:
    [v4 abCloseDBAndSave:v22];
    v28 = v22;
  }

LABEL_23:

LABEL_24:
  if ([(DAAccount *)self enabledForDADataclass:4]|| [(DAAccount *)self enabledForDADataclass:16])
  {
    v29 = DALoggingwithCategory();
    v30 = *(v6 + 6);
    if (os_log_type_enabled(v29, v30))
    {
      *buf = 138412290;
      selfCopy3 = self;
      _os_log_impl(&dword_24844D000, v29, v30, "Removing event / todo data for account %@, because it has a significant change", buf, 0xCu);
    }

    accountID2 = [(DAAccount *)self accountID];
    changeTrackingID2 = [(DAAccount *)self changeTrackingID];
    [v4 calOpenDatabaseForAccountID:accountID2 clientID:changeTrackingID2];

    accountID3 = [(DAAccount *)self accountID];
    [v4 calDatabaseForAccountID:accountID3];

    [(DAAccount *)self accountID];
    v34 = CalDatabaseCopyStoreWithExternalID();
    if (v34)
    {
      v35 = v34;
      v36 = CalStoreCopyCalendars();
      if ([v36 count])
      {
        v37 = DALoggingwithCategory();
        if (os_log_type_enabled(v37, v30))
        {
          v38 = [v36 count];
          *buf = 134217984;
          selfCopy3 = v38;
          _os_log_impl(&dword_24844D000, v37, v30, "Found %ld calendars to remove", buf, 0xCu);
        }

        if ([v36 count])
        {
          v39 = 0;
          do
          {
            [v36 objectAtIndexedSubscript:v39];

            CalRemoveCalendar();
            ++v39;
          }

          while (v39 < [v36 count]);
          v28 = 1;
        }
      }

      v40 = CalStoreCopyExternalModificationTag();
      if (v40)
      {
        CFRelease(v40);
        CalStoreSetExternalModificationTag();
        v28 = 1;
      }

      CFRelease(v35);
    }

    accountID4 = [(DAAccount *)self accountID];
    [v4 calCloseDatabaseForAccountID:accountID4 save:v28];
  }

  if ([(DAAccount *)self enabledForDADataclass:32])
  {
    completelyIgnoreNotes = [MEMORY[0x277D03910] completelyIgnoreNotes];
    v43 = DALoggingwithCategory();
    v44 = v43;
    if (completelyIgnoreNotes)
    {
      v45 = *(v6 + 3);
      if (os_log_type_enabled(v43, v45))
      {
        *buf = 0;
        _os_log_impl(&dword_24844D000, v44, v45, "Ignoring Notes orphan check.  You asked for it.", buf, 2u);
      }
    }

    else
    {
      v46 = *(v6 + 6);
      if (os_log_type_enabled(v43, *(v6 + 6)))
      {
        *buf = 138412290;
        selfCopy3 = self;
        _os_log_impl(&dword_24844D000, v44, v46, "Removing notes data for account %@, because it has a significant change", buf, 0xCu);
      }

      v44 = objc_opt_new();
      [v44 enableChangeLogging:0];
      accountID5 = [(DAAccount *)self accountID];
      v48 = [v44 accountForAccountId:accountID5];

      if (v48)
      {
        v49 = DALoggingwithCategory();
        if (os_log_type_enabled(v49, v46))
        {
          *buf = 0;
          _os_log_impl(&dword_24844D000, v49, v46, "Found a note account to remove", buf, 2u);
        }

        [v44 deleteAccount:v48];
        v58 = 0;
        v50 = [v44 save:&v58];
        v51 = v58;
        if ((v50 & 1) == 0)
        {
          v52 = DALoggingwithCategory();
          v53 = *(v6 + 3);
          if (os_log_type_enabled(v52, v53))
          {
            dAExtendedDescription = [v51 DAExtendedDescription];
            *buf = 138412290;
            selfCopy3 = dAExtendedDescription;
            _os_log_impl(&dword_24844D000, v52, v53, "Failed to save: %@", buf, 0xCu);
          }

          if ([MEMORY[0x277D35930] databaseIsCorrupt:v51])
          {
            v55 = DALoggingwithCategory();
            if (os_log_type_enabled(v55, v53))
            {
              *buf = 0;
              _os_log_impl(&dword_24844D000, v55, v53, "Notes database was corrupted! Non-fatal at this point, but just barely", buf, 2u);
            }
          }
        }
      }
    }
  }

LABEL_60:
  v56 = *MEMORY[0x277D85DE8];
}

- (void)accountDidChangeWithChangeInfo:(id)info
{
  v13 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  if ([(DAAccount *)self accountHasSignificantPropertyChangesWithChangeInfo:infoCopy])
  {
    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v5, v6))
    {
      backingAccountInfo = self->_backingAccountInfo;
      v9 = 138412546;
      v10 = infoCopy;
      v11 = 2112;
      v12 = backingAccountInfo;
      _os_log_impl(&dword_24844D000, v5, v6, "Account had significant property change, going to flush local data.\n\nChangeInfo %@\n\nNewProperties %@", &v9, 0x16u);
    }

    [(DAAccount *)self _handleSignificantPropertyChanges:infoCopy];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_handleSignificantPropertyChanges:(id)changes
{
  [(DAAccount *)self removeDBSyncDataForAccountChange:changes];

  [(DAAccount *)self cleanupAccountFiles];
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
    v11 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v9, v11))
    {
      *buf = 0;
      _os_log_impl(&dword_24844D000, v9, v11, "Couldn't get a Yahoo cookie. Not setting authentication headers", buf, 2u);
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
  v4 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    backingAccountInfo = [(DAAccount *)self backingAccountInfo];
    identifier = [backingAccountInfo identifier];
    v19 = 138412290;
    v20 = identifier;
    _os_log_impl(&dword_24844D000, v3, v4, "Fetching OAuth Credential for Backing Account %@", &v19, 0xCu);
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
    v23 = 2114;
    v24 = identifier2;
    _os_log_impl(&dword_24844D000, v13, v4, "Account Store Returned A %@ OAuth-token From Credential Object %@ AccountID: %{public}@", &v19, 0x20u);
  }

  v17 = *MEMORY[0x277D85DE8];

  return oauthToken;
}

- (void)tearDown
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    v7 = 136315394;
    Name = sel_getName(a2);
    v9 = 2112;
    v10 = objc_opt_class();
    v5 = v10;
    _os_log_impl(&dword_24844D000, v3, v4, "%s being ignored by %@", &v7, 0x16u);
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
  v5 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v4, v5))
  {
    v8 = 136315394;
    Name = sel_getName(a2);
    v10 = 2112;
    v11 = objc_opt_class();
    v6 = v11;
    _os_log_impl(&dword_24844D000, v4, v5, "%s being ignored by %@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)stopMonitoringFolders
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    v7 = 136315394;
    Name = sel_getName(a2);
    v9 = 2112;
    v10 = objc_opt_class();
    v5 = v10;
    _os_log_impl(&dword_24844D000, v3, v4, "%s being ignored by %@", &v7, 0x16u);
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

- (BOOL)saveAccountPropertiesWithError:(id *)error
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 4);
  if (os_log_type_enabled(v5, v6))
  {
    accountDescription = [(DAAccount *)self accountDescription];
    publicDescription = [(DAAccount *)self publicDescription];
    *buf = 138412546;
    *&buf[4] = accountDescription;
    *&buf[12] = 2114;
    *&buf[14] = publicDescription;
    _os_log_impl(&dword_24844D000, v5, v6, "Saving account %@ (%{public}@)", buf, 0x16u);
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
    *buf = 67109634;
    *&buf[4] = isAuthenticated;
    *&buf[8] = 2112;
    *&buf[10] = identifier;
    *&buf[18] = 2112;
    *&buf[20] = username;
    _os_log_impl(&dword_24844D000, v9, v6, " _backingAccountInfo.authenticated is %d for Account identifier %@ and username %@", buf, 0x1Cu);
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = __Block_byref_object_copy_;
  v33 = __Block_byref_object_dispose_;
  v34 = 0;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __44__DAAccount_saveAccountPropertiesWithError___block_invoke;
  v23[3] = &unk_278F13180;
  v23[4] = self;
  v23[5] = &v24;
  v23[6] = buf;
  [(DAAccount *)self performUsingAccountPersona:v23];
  if (*(*&buf[8] + 40))
  {
    v16 = DALoggingwithCategory();
    v17 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v16, v17))
    {
      backingAccountInfo = self->_backingAccountInfo;
      v19 = *(*&buf[8] + 40);
      *v28 = 138412546;
      v29 = backingAccountInfo;
      v30 = 2112;
      v31 = v19;
      _os_log_impl(&dword_24844D000, v16, v17, "Error saving account %@: %@", v28, 0x16u);
    }
  }

  if (error)
  {
    *error = *(*&buf[8] + 40);
  }

  v20 = *(v25 + 24);
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&v24, 8);
  v21 = *MEMORY[0x277D85DE8];
  return v20 & 1;
}

void __44__DAAccount_saveAccountPropertiesWithError___block_invoke(void *a1)
{
  v2 = sharedDAAccountStore();
  v3 = *(a1[4] + 8);
  v8 = 0;
  v4 = [v2 saveVerifiedAccount:v3 error:&v8];
  v5 = v8;
  *(*(a1[5] + 8) + 24) = v4;

  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
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
    v9 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v8, v9))
    {
      backingAccountInfo = self->_backingAccountInfo;
      v12 = 138412290;
      v13 = backingAccountInfo;
      _os_log_impl(&dword_24844D000, v8, v9, "Not updating non-existing account: %@", &v12, 0xCu);
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

- (BOOL)preflightSaveWithAccountProvider:(id)provider
{
  if ([(DAAccount *)self canSaveWithAccountProvider:provider])
  {
    backingAccountInfo = [(DAAccount *)self backingAccountInfo];
    dAAccountSavePreflighted = [MEMORY[0x277D03970] DAAccountSavePreflighted];
    [backingAccountInfo setObject:MEMORY[0x277CBEC38] forKeyedSubscript:dAAccountSavePreflighted];
  }

  return 1;
}

- (BOOL)canSaveWithAccountProvider:(id)provider
{
  v50 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  selfCopy = self;
  backingAccountInfo = [(DAAccount *)self backingAccountInfo];
  accountType = [backingAccountInfo accountType];
  identifier = [accountType identifier];

  leafAccountTypesToCheckForEquality = [MEMORY[0x277D03970] leafAccountTypesToCheckForEquality];
  v8 = [leafAccountTypesToCheckForEquality containsObject:identifier];

  if (v8)
  {
    v41 = identifier;
    v38 = providerCopy;
    v9 = providerCopy[2](providerCopy);
    identifier2 = [backingAccountInfo identifier];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v43 objects:v49 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v44;
      obj = v11;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v44 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v43 + 1) + 8 * i);
          backingAccountInfo2 = [v16 backingAccountInfo];
          identifier3 = [backingAccountInfo2 identifier];
          if (([identifier3 isEqualToString:identifier2] & 1) == 0)
          {
            accountType2 = [backingAccountInfo2 accountType];
            identifier4 = [accountType2 identifier];
            v21 = [identifier4 isEqualToString:v41];

            if (v21)
            {
              if ([(DAAccount *)selfCopy isEqualToAccount:v16])
              {
                accountProperties = [backingAccountInfo accountProperties];
                v23 = [accountProperties count];

                if (v23)
                {
                  dAAccountIdentifiersToIgnoreForUniquenessCheck = [MEMORY[0x277D03970] DAAccountIdentifiersToIgnoreForUniquenessCheck];
                  v25 = [backingAccountInfo objectForKeyedSubscript:dAAccountIdentifiersToIgnoreForUniquenessCheck];
                  v26 = [v25 containsObject:identifier3];

                  if ((v26 & 1) == 0)
                  {

                    v31 = obj;
                    providerCopy = v38;
                    identifier = v41;
                    goto LABEL_21;
                  }
                }
              }
            }
          }
        }

        v11 = obj;
        v13 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    providerCopy = v38;
    identifier = v41;
  }

  leafAccountTypes = [MEMORY[0x277D03970] leafAccountTypes];
  v28 = [leafAccountTypes containsObject:identifier];

  if (v28 && ([MEMORY[0x277D03970] DAAccountDoNotSaveReason], v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(backingAccountInfo, "objectForKeyedSubscript:", v29), v30 = objc_claimAutoreleasedReturnValue(), v30, v29, v30))
  {
    v31 = DALoggingwithCategory();
    v32 = *(MEMORY[0x277D03988] + 5);
    if (os_log_type_enabled(v31, v32))
    {
      dAAccountDoNotSaveReason = [MEMORY[0x277D03970] DAAccountDoNotSaveReason];
      v34 = [backingAccountInfo objectForKeyedSubscript:dAAccountDoNotSaveReason];
      *buf = 138412290;
      v48 = v34;
      _os_log_impl(&dword_24844D000, v31, v32, "Refusing to save account because DAAccountDoNotSave is set to %@", buf, 0xCu);
    }

LABEL_21:

    v35 = 0;
  }

  else
  {
    v35 = 1;
  }

  v36 = *MEMORY[0x277D85DE8];
  return v35;
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
  v51 = *MEMORY[0x277D85DE8];
  backingAccountInfo = [(DAAccount *)self backingAccountInfo];
  if (([backingAccountInfo supportsAuthentication] & 1) == 0)
  {

    goto LABEL_10;
  }

  backingAccountInfo2 = [(DAAccount *)self backingAccountInfo];
  isAuthenticated = [backingAccountInfo2 isAuthenticated];

  if (isAuthenticated)
  {
    goto LABEL_10;
  }

  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 4);
  if (os_log_type_enabled(v6, v7))
  {
    backingAccountInfo3 = [(DAAccount *)self backingAccountInfo];
    identifier = [backingAccountInfo3 identifier];
    *buf = 138412546;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = identifier;
    _os_log_impl(&dword_24844D000, v6, v7, "Account %@ (%{public}@) says it is not authenticated. Refreshing to be sure.", buf, 0x16u);
  }

  backingAccountInfo4 = [(DAAccount *)self backingAccountInfo];
  [backingAccountInfo4 refresh];

  backingAccountInfo5 = [(DAAccount *)self backingAccountInfo];
  isAuthenticated2 = [backingAccountInfo5 isAuthenticated];

  v13 = DALoggingwithCategory();
  v14 = os_log_type_enabled(v13, v7);
  if (isAuthenticated2)
  {
    if (v14)
    {
      backingAccountInfo6 = [(DAAccount *)self backingAccountInfo];
      identifier2 = [backingAccountInfo6 identifier];
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = identifier2;
      _os_log_impl(&dword_24844D000, v13, v7, "Good news! Account %@ (%{public}@) is now authenticated after refreshing.", buf, 0x16u);
    }

    goto LABEL_10;
  }

  if (v14)
  {
    backingAccountInfo7 = [(DAAccount *)self backingAccountInfo];
    identifier3 = [backingAccountInfo7 identifier];
    *buf = 138412546;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = identifier3;
    _os_log_impl(&dword_24844D000, v13, v7, "Account %@ (%{public}@) is still not authenticated after refreshing.", buf, 0x16u);
  }

  backingAccountInfo8 = [(DAAccount *)self backingAccountInfo];
  accountProperties = [backingAccountInfo8 accountProperties];
  v37 = [accountProperties objectForKeyedSubscript:*MEMORY[0x277CF7930]];
  bOOLValue = [v37 BOOLValue];

  if (bOOLValue)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v50 = 0;
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __31__DAAccount_shouldFailAllTasks__block_invoke;
    v44[3] = &unk_278F131A8;
    v44[4] = self;
    v44[5] = buf;
    [(DAAccount *)self performUsingAccountPersona:v44];
    if (*(*&buf[8] + 24) == 1)
    {
      v39 = DALoggingwithCategory();
      if (os_log_type_enabled(v39, v7))
      {
        backingAccountInfo9 = [(DAAccount *)self backingAccountInfo];
        identifier4 = [backingAccountInfo9 identifier];
        *v45 = 138412546;
        selfCopy = self;
        v47 = 2114;
        v48 = identifier4;
        _os_log_impl(&dword_24844D000, v39, v7, "The account %@ (%{public}@) is not marked as authenticated, but it supports authentication, appears to have credentials, and is marked to ignore the isAuthenticated property. We will try to sync this account.", v45, 0x16u);
      }

      _Block_object_dispose(buf, 8);
      goto LABEL_10;
    }

    _Block_object_dispose(buf, 8);
  }

  if (![(DAAccount *)self isValidating]&& (![(DAAccount *)self wasUserInitiated]|| [(DAAccount *)self isDelegateAccount]))
  {
    v19 = DALoggingwithCategory();
    if (os_log_type_enabled(v19, v7))
    {
      backingAccountInfo10 = [(DAAccount *)self backingAccountInfo];
      identifier5 = [backingAccountInfo10 identifier];
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = identifier5;
      _os_log_impl(&dword_24844D000, v19, v7, "Not attempting request for account %@ because the backing account credential isn't authed %{public}@", buf, 0x16u);
    }

    goto LABEL_17;
  }

LABEL_10:
  backingAccountInfo11 = [(DAAccount *)self backingAccountInfo];
  aa_isSuspended = [backingAccountInfo11 aa_isSuspended];

  if (aa_isSuspended)
  {
    v19 = DALoggingwithCategory();
    v20 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      backingAccountInfo12 = [(DAAccount *)self backingAccountInfo];
      identifier6 = [backingAccountInfo12 identifier];
      *buf = 138543618;
      *&buf[4] = v22;
      *&buf[12] = 2114;
      *&buf[14] = identifier6;
      _os_log_impl(&dword_24844D000, v19, v20, "Not attempting request for account %{public}@ because the backing account needs to verify terms or is suspended. %{public}@", buf, 0x16u);
    }

LABEL_17:

    result = 1;
    goto LABEL_18;
  }

  v25 = +[DAKeychain sharedKeychain];
  v26 = [v25 canAccessCredentialsWithAccessibility:{-[DAAccount keychainAccessibilityType](self, "keychainAccessibilityType")}];

  if ((v26 & 1) == 0)
  {
    v19 = DALoggingwithCategory();
    v28 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v19, v28))
    {
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      keychainAccessibilityType = [(DAAccount *)self keychainAccessibilityType];
      *buf = 138543618;
      *&buf[4] = v30;
      *&buf[12] = 1024;
      *&buf[14] = keychainAccessibilityType;
      _os_log_impl(&dword_24844D000, v19, v28, "Not attempting request for account %{public}@ because we don't have access to keychain items with accessibility %d right now", buf, 0x12u);
    }

    goto LABEL_17;
  }

  result = 0;
LABEL_18:
  v32 = *MEMORY[0x277D85DE8];
  return result;
}

void __31__DAAccount_shouldFailAllTasks__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) backingAccountInfo];
  v2 = [v3 credential];
  *(*(*(a1 + 40) + 8) + 24) = v2 != 0;
}

- (BOOL)isEqualToAccount:(id)account
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  Name = sel_getName(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"DAAccount.m" lineNumber:1333 description:{@"%s MUST be implemented in ALL DAAccount subclasses.  Looks like it's missing in %@", Name, objc_opt_class()}];

  return 0;
}

- (BOOL)accountHasSignificantPropertyChangesWithChangeInfo:(id)info
{
  v47 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  oldAccountProperties = [infoCopy oldAccountProperties];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45[0] = @"DAAccountHost";
  v45[1] = @"DAAccountEmailAddress";
  dAAccountPrincipalPath = [MEMORY[0x277D03970] DAAccountPrincipalPath];
  v45[2] = dAAccountPrincipalPath;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:3];

  v39 = [v6 countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v39)
  {
    obj = v6;
    v38 = *v42;
    while (2)
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v42 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v41 + 1) + 8 * i);
        backingAccountInfo = [(DAAccount *)self backingAccountInfo];
        v10 = [backingAccountInfo objectForKeyedSubscript:v8];
        v11 = [v10 length];
        if (v11 || ([oldAccountProperties objectForKeyedSubscript:v8], oldUsername = objc_claimAutoreleasedReturnValue(), objc_msgSend(oldUsername, "length")))
        {
          selfCopy = self;
          backingAccountInfo2 = [(DAAccount *)self backingAccountInfo];
          v14 = [backingAccountInfo2 objectForKeyedSubscript:v8];
          v15 = [oldAccountProperties objectForKeyedSubscript:v8];
          v16 = [v14 isEqualToString:v15];

          if (v11)
          {

            self = selfCopy;
            if (!v16)
            {
              goto LABEL_21;
            }
          }

          else
          {

            self = selfCopy;
            if ((v16 & 1) == 0)
            {
LABEL_21:
              v26 = 1;
              v20 = infoCopy;
              goto LABEL_22;
            }
          }
        }

        else
        {
        }
      }

      v6 = obj;
      v39 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
      if (v39)
      {
        continue;
      }

      break;
    }
  }

  backingAccountInfo3 = [(DAAccount *)self backingAccountInfo];
  username = [backingAccountInfo3 username];
  v19 = [username length];
  v20 = infoCopy;
  if (!v19)
  {
    oldUsername = [infoCopy oldUsername];
    if (![oldUsername length])
    {
      selfCopy3 = self;

      goto LABEL_27;
    }
  }

  selfCopy3 = self;
  backingAccountInfo4 = [(DAAccount *)self backingAccountInfo];
  username2 = [backingAccountInfo4 username];
  oldUsername2 = [infoCopy oldUsername];
  v25 = [username2 isEqualToString:oldUsername2];

  if (!v19)
  {

    if (v25)
    {
      goto LABEL_27;
    }

LABEL_25:
    v26 = 1;
    goto LABEL_23;
  }

  if (!v25)
  {
    goto LABEL_25;
  }

LABEL_27:
  useSSL = [(DAAccount *)selfCopy3 useSSL];
  v30 = [oldAccountProperties objectForKeyedSubscript:@"DAAccountUseSSL"];
  v31 = v30;
  if (v30)
  {
    bOOLValue = [v30 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  obj = v31;
  if (bOOLValue == useSSL)
  {
    v33 = [(DAAccount *)selfCopy3 objectForKeyedSubscript:@"DAAccountPort"];
    intValue = [v33 intValue];
    v35 = [oldAccountProperties objectForKeyedSubscript:@"DAAccountPort"];
    v26 = intValue != [v35 intValue];
  }

  else
  {
    v26 = 1;
  }

LABEL_22:

LABEL_23:
  v27 = *MEMORY[0x277D85DE8];
  return v26;
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
  block[3] = &unk_278F131F0;
  block[4] = self;
  dispatch_sync(copyStorageSession_storageSessionSetupQueue, block);
  return CFRetain(self->_storageSession);
}

uint64_t __31__DAAccount_copyStorageSession__block_invoke()
{
  copyStorageSession_storageSessionSetupQueue = dispatch_queue_create("com.apple.dataaccess.StorageSessionSetup", 0);

  return MEMORY[0x2821F96F8]();
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
  v4 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    *v5 = 0;
    _os_log_impl(&dword_24844D000, v3, v4, "Shutting down the task manager", v5, 2u);
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
      v4 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v3, v4))
      {
        *v6 = 0;
        _os_log_impl(&dword_24844D000, v3, v4, "Canceling task because conditions for on-power mode no longer exist (xpc_activity)", v6, 2u);
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
  v7 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v6, v7))
  {
    accountID = [(DAAccount *)self accountID];
    v10 = 138543362;
    v11 = accountID;
    _os_log_impl(&dword_24844D000, v6, v7, "XPC: Saved XPC activity for account %{public}@", &v10, 0xCu);
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
    v4 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v3, v4))
    {
      continueCount = self->_continueCount;
      accountID = [(DAAccount *)self accountID];
      v8[0] = 67109378;
      v8[1] = continueCount;
      v9 = 2114;
      v10 = accountID;
      _os_log_impl(&dword_24844D000, v3, v4, "XPC: Increment XPC activity continue count to %d for account %{public}@", v8, 0x12u);
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
    v4 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v3, v4))
    {
      continueCount = self->_continueCount;
      accountID = [(DAAccount *)self accountID];
      v8[0] = 67109378;
      v8[1] = continueCount;
      v9 = 2114;
      v10 = accountID;
      _os_log_impl(&dword_24844D000, v3, v4, "XPC: Decrement XPC activity continue count to %d for account %{public}@", v8, 0x12u);
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
      LOBYTE(v7) = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v5, v7))
      {
        accountID = [(DAAccount *)self accountID];
        v12 = 138543362;
        v13 = accountID;
        v9 = "XPC: Successfully set XPC activity state to XPC_ACTIVITY_STATE_DONE for account %{public}@";
LABEL_7:
        _os_log_impl(&dword_24844D000, v6, v7, v9, &v12, 0xCu);
      }
    }

    else
    {
      v7 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v5, *(MEMORY[0x277D03988] + 3)))
      {
        accountID = [(DAAccount *)self accountID];
        v12 = 138543362;
        v13 = accountID;
        v9 = "XPC: Failed to set XPC activity state to XPC_ACTIVITY_STATE_DONE for account %{public}@";
        goto LABEL_7;
      }
    }

    v10 = self->_xpcActivity;
    self->_xpcActivity = 0;

    self->_continueCount = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)webLoginRequestedAtURL:(id)l reasonString:(id)string inQueue:(id)queue completionBlock:(id)block
{
  blockCopy = block;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __73__DAAccount_webLoginRequestedAtURL_reasonString_inQueue_completionBlock___block_invoke;
  v12[3] = &unk_278F13218;
  v13 = blockCopy;
  v11 = blockCopy;
  [(DAAccount *)self _webLoginRequestedAtURL:l reasonString:string inQueue:queue completionBlock:v12];
}

void __73__DAAccount_webLoginRequestedAtURL_reasonString_inQueue_completionBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  (*(*(a1 + 32) + 16))();
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
  v19[2] = __74__DAAccount__webLoginRequestedAtURL_reasonString_inQueue_completionBlock___block_invoke;
  v19[3] = &unk_278F13268;
  v19[4] = self;
  v20 = queueCopy;
  v21 = persistentUUID;
  v22 = blockCopy;
  v16 = blockCopy;
  v17 = persistentUUID;
  v18 = queueCopy;
  [v14 openAuthenticationURL:lCopy forAccount:backingAccountInfo shouldConfirm:1 completion:v19];
}

void __74__DAAccount__webLoginRequestedAtURL_reasonString_inQueue_completionBlock___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) setWasUserInitiated:0];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__DAAccount__webLoginRequestedAtURL_reasonString_inQueue_completionBlock___block_invoke_2;
  v9[3] = &unk_278F13240;
  v6 = *(a1 + 40);
  v10 = *(a1 + 48);
  v7 = *(a1 + 56);
  v13 = a2;
  v11 = v5;
  v12 = v7;
  v8 = v5;
  dispatch_async(v6, v9);
}

uint64_t __74__DAAccount__webLoginRequestedAtURL_reasonString_inQueue_completionBlock___block_invoke_2(uint64_t a1)
{
  v2 = +[DAPowerAssertionManager sharedPowerAssertionManager];
  [v2 reattainPowerAssertionsForGroupIdentifier:*(a1 + 32)];

  v3 = *(a1 + 40);
  v4 = *(*(a1 + 48) + 16);
  v5 = *(a1 + 56) ^ 1;

  return v4();
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
  [currentHandler handleFailureInMethod:a2 object:self file:@"DAAccount.m" lineNumber:1588 description:{@"Account class %@ MUST implement %s", v5, sel_getName(a2)}];

  return 0;
}

- (id)localizedInvalidPasswordMessage
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  [currentHandler handleFailureInMethod:a2 object:self file:@"DAAccount.m" lineNumber:1593 description:{@"Account class %@ MUST implement %s", v5, sel_getName(a2)}];

  return 0;
}

- (void)dropAssertionsAndRenewCredentialsInQueue:(id)queue withHandler:(id)handler
{
  v48 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  handlerCopy = handler;
  v8 = DALoggingwithCategory();
  v9 = MEMORY[0x277D03988];
  v10 = *(MEMORY[0x277D03988] + 5);
  if (os_log_type_enabled(v8, v10))
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    wasUserInitiated = [(DAAccount *)self wasUserInitiated];
    v14 = @"NO";
    if (wasUserInitiated)
    {
      v14 = @"YES";
    }

    *buf = 138543618;
    v45 = v12;
    v46 = 2114;
    v47 = v14;
    _os_log_impl(&dword_24844D000, v8, v10, "DataAccess is renewing credentials for account %{public}@ by forcing-prompt: %{public}@", buf, 0x16u);
  }

  backingAccountInfo = [(DAAccount *)self backingAccountInfo];
  accountProperties = [backingAccountInfo accountProperties];
  v17 = *MEMORY[0x277CF7930];
  v18 = [accountProperties objectForKeyedSubscript:*MEMORY[0x277CF7930]];

  if (v18)
  {
    backingAccountInfo2 = [(DAAccount *)self backingAccountInfo];
    [backingAccountInfo2 setAccountProperty:0 forKey:v17];

    v20 = sharedDAAccountStore();
    backingAccountInfo3 = [(DAAccount *)self backingAccountInfo];
    v41 = 0;
    v22 = [v20 saveVerifiedAccount:backingAccountInfo3 error:&v41];
    v23 = v41;

    if ((v22 & 1) == 0)
    {
      v24 = DALoggingwithCategory();
      v25 = *(v9 + 3);
      if (os_log_type_enabled(v24, v25))
      {
        *buf = 138412290;
        v45 = v23;
        _os_log_impl(&dword_24844D000, v24, v25, "Failed to save account when attempting to remove kDAAccountIgnoreAuthenticatedProperty flag: %@", buf, 0xCu);
      }
    }
  }

  persistentUUID = [(DAAccount *)self persistentUUID];
  v27 = +[DAPowerAssertionManager sharedPowerAssertionManager];
  [v27 dropPowerAssertionsForGroupIdentifier:persistentUUID];

  v42[0] = *MEMORY[0x277CB90A0];
  v28 = [MEMORY[0x277CCABB0] numberWithBool:{-[DAAccount wasUserInitiated](self, "wasUserInitiated")}];
  v43[0] = v28;
  v42[1] = *MEMORY[0x277CB9098];
  v29 = [MEMORY[0x277CCABB0] numberWithInt:{-[DAAccount wasUserInitiated](self, "wasUserInitiated") ^ 1}];
  v43[1] = v29;
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:2];

  v31 = sharedDAAccountStore();
  backingAccountInfo4 = [(DAAccount *)self backingAccountInfo];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __92__DAAccount_AuthenticationExtensions__dropAssertionsAndRenewCredentialsInQueue_withHandler___block_invoke;
  v37[3] = &unk_278F132B8;
  v37[4] = self;
  v38 = queueCopy;
  v39 = persistentUUID;
  v40 = handlerCopy;
  v33 = handlerCopy;
  v34 = persistentUUID;
  v35 = queueCopy;
  [v31 renewCredentialsForAccount:backingAccountInfo4 options:v30 completion:v37];

  v36 = *MEMORY[0x277D85DE8];
}

void __92__DAAccount_AuthenticationExtensions__dropAssertionsAndRenewCredentialsInQueue_withHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) setWasUserInitiated:0];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __92__DAAccount_AuthenticationExtensions__dropAssertionsAndRenewCredentialsInQueue_withHandler___block_invoke_2;
  block[3] = &unk_278F13290;
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
  v29 = *MEMORY[0x277D85DE8];
  v2 = +[DAPowerAssertionManager sharedPowerAssertionManager];
  [v2 reattainPowerAssertionsForGroupIdentifier:*(a1 + 32)];

  v3 = *(a1 + 64);
  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277D03988] + 5);
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
      v23 = 138543874;
      v24 = v9;
      if (v10)
      {
        v11 = @"YES";
      }

      v25 = 2114;
      v26 = v11;
      v27 = 2048;
      v28 = v12;
      _os_log_impl(&dword_24844D000, v4, v5, "DataAccess failed to renew credentials for account %{public}@ by forcing-prompt: %{public}@ - renewalResult = %ld", &v23, 0x20u);
    }
  }

  else
  {
    if (v6)
    {
      v13 = *(a1 + 40);
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = [*(a1 + 40) wasUserInitiated];
      v17 = @"NO";
      if (v16)
      {
        v17 = @"YES";
      }

      v23 = 138543618;
      v24 = v15;
      v25 = 2114;
      v26 = v17;
      _os_log_impl(&dword_24844D000, v4, v5, "DataAccess successfully renewed credentials for account %{public}@ by forcing-prompt: %{public}@", &v23, 0x16u);
    }

    v18 = +[DAKeychain sharedKeychain];
    [v18 removePersistentCredentials];

    v4 = [*(a1 + 40) backingAccountInfo];
    [v4 reload];
  }

  v19 = *(a1 + 64);
  v20 = *(a1 + 48);
  result = (*(*(a1 + 56) + 16))();
  v22 = *MEMORY[0x277D85DE8];
  return result;
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

uint64_t __56__DAAccount_AuthenticationExtensions___leafAccountTypes__block_invoke()
{
  v0 = *MEMORY[0x277CB8BC8];
  _leafAccountTypes__sLeafAccountTypes = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CB8D10], *MEMORY[0x277CB8BC8], *MEMORY[0x277CB8BD8], *MEMORY[0x277CB8C70], *MEMORY[0x277CB8C98], *MEMORY[0x277CB8C48], 0}];

  return MEMORY[0x2821F96F8]();
}

+ (id)oneshotListOfAccountIDs
{
  oneshotListOfAccountIDs = ExchangeSyncLibraryCore();
  if (oneshotListOfAccountIDs)
  {
    oneshotListOfAccountIDs = [getESAccountClass() oneshotListOfAccountIDs];
  }

  return oneshotListOfAccountIDs;
}

+ (void)reacquireClientRestrictions:(id)restrictions
{
  restrictionsCopy = restrictions;
  if (ExchangeSyncLibraryCore())
  {
    [getESAccountClass() reacquireClientRestrictions:restrictionsCopy];
  }
}

- (BOOL)accountHasSignificantPropertyChangesFromOldAccountInfo:(id)info
{
  v4 = MEMORY[0x277D03908];
  infoCopy = info;
  v6 = [v4 alloc];
  backingAccountInfo = [(DAAccount *)self backingAccountInfo];
  identifier = [backingAccountInfo identifier];
  selfCopy = self;
  selfCopy2 = self;
  backingAccountInfo2 = [(DAAccount *)self backingAccountInfo];
  accountType = [backingAccountInfo2 accountType];
  identifier2 = [accountType identifier];
  accountProperties = [infoCopy accountProperties];
  backingAccountInfo3 = [(DAAccount *)self backingAccountInfo];
  username = [backingAccountInfo3 username];
  backingAccountInfo4 = [(DAAccount *)selfCopy backingAccountInfo];
  credential = [backingAccountInfo4 credential];
  password = [credential password];
  username2 = [infoCopy username];
  credential2 = [infoCopy credential];

  password2 = [credential2 password];
  v16 = [v6 initWithChangeType:1 accountIdentifier:identifier accountTypeIdentifier:identifier2 oldAccountProperties:accountProperties username:username password:password oldUsername:username2 oldPassword:password2 modifiedDataClasses:0 clientName:0];

  LOBYTE(username) = [(DAAccount *)selfCopy2 accountHasSignificantPropertyChangesWithChangeInfo:v16];
  return username;
}

- (void)accountDidChangeFromOldAccountInfo:(id)info
{
  v13 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  if ([(DAAccount *)self accountHasSignificantPropertyChangesFromOldAccountInfo:infoCopy])
  {
    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v5, v6))
    {
      backingAccountInfo = self->_backingAccountInfo;
      v9 = 138412546;
      v10 = infoCopy;
      v11 = 2112;
      v12 = backingAccountInfo;
      _os_log_impl(&dword_24844D000, v5, v6, "Account had significant property change, going to flush local data.\n\nOldProperties %@\n\nNewProperties %@", &v9, 0x16u);
    }

    [(DAAccount *)self _handleSignificantPropertyChanges:0];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)beginDownloadingAttachmentWithUUID:(id)d consumer:(id)consumer
{
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  consumerCopy = consumer;
  v8 = DALoggingwithCategory();
  v9 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v8, v9))
  {
    accountID = [(DAAccount *)self accountID];
    v14 = 138412546;
    v15 = accountID;
    v16 = 2112;
    v17 = dCopy;
    _os_log_impl(&dword_24844D000, v8, v9, "Downloading attachments is not supported on account ID %@. AttachmentUUID: %@", &v14, 0x16u);
  }

  v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:70 userInfo:0];
  [consumerCopy downloadFinishedError:v11];

  v12 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)requestCalendarAvailabilityForStartDate:(id)date endDate:(id)endDate ignoredEventID:(id)d addresses:(id)addresses consumer:(id)consumer
{
  v17 = *MEMORY[0x277D85DE8];
  consumerCopy = consumer;
  v9 = DALoggingwithCategory();
  v10 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v9, v10))
  {
    accountID = [(DAAccount *)self accountID];
    v15 = 138543362;
    v16 = accountID;
    _os_log_impl(&dword_24844D000, v9, v10, "Requesting calendar availability is not supported on account with ID [%{public}@].", &v15, 0xCu);
  }

  v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:81 userInfo:0];
  [consumerCopy calendarAvailabilityRequestFinishedWithError:v12];

  v13 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)cancelCalendarAvailabilityRequestWithID:(id)d
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v4, v5))
  {
    accountID = [(DAAccount *)self accountID];
    v8 = 138543362;
    v9 = accountID;
    _os_log_impl(&dword_24844D000, v4, v5, "Cancelling calendar availability requests is not supported on account with ID [%{public}@].", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)requestGrantedDelegatesListWithConsumer:(id)consumer
{
  v13 = *MEMORY[0x277D85DE8];
  consumerCopy = consumer;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v5, v6))
  {
    accountID = [(DAAccount *)self accountID];
    v11 = 138543362;
    v12 = accountID;
    _os_log_impl(&dword_24844D000, v5, v6, "Requesting granted delegates list is not supported on account with ID [%{public}@].", &v11, 0xCu);
  }

  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:83 userInfo:0];
  [consumerCopy grantedDelegatesListRequestFinishedWithResults:0 error:v8];

  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)cancelGrantedDelegatesListRequestWithID:(id)d
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v4, v5))
  {
    accountID = [(DAAccount *)self accountID];
    v8 = 138543362;
    v9 = accountID;
    _os_log_impl(&dword_24844D000, v4, v5, "Cancelling granted delegates list requests is not supported on account with ID [%{public}@].", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)updateGrantedDelegatePermission:(id)permission consumer:(id)consumer
{
  v14 = *MEMORY[0x277D85DE8];
  consumerCopy = consumer;
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v6, v7))
  {
    accountID = [(DAAccount *)self accountID];
    v12 = 138543362;
    v13 = accountID;
    _os_log_impl(&dword_24844D000, v6, v7, "Update granted delegate permission is not supported on account with ID [%{public}@].", &v12, 0xCu);
  }

  v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:84 userInfo:0];
  [consumerCopy updateGrantedDelegatePermissionFinishedWithError:v9];

  v10 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)cancelUpdateGrantedDelegatePermissionRequestWithID:(id)d
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v4, v5))
  {
    accountID = [(DAAccount *)self accountID];
    v8 = 138543362;
    v9 = accountID;
    _os_log_impl(&dword_24844D000, v4, v5, "Cancelling update granted delegate permission requests is not supported on account with ID [%{public}@].", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)performCalendarDirectorySearchForTerms:(id)terms recordTypes:(id)types resultLimit:(unint64_t)limit consumer:(id)consumer
{
  v16 = *MEMORY[0x277D85DE8];
  consumerCopy = consumer;
  v8 = DALoggingwithCategory();
  v9 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v8, v9))
  {
    accountID = [(DAAccount *)self accountID];
    v14 = 138543362;
    v15 = accountID;
    _os_log_impl(&dword_24844D000, v8, v9, "Performing a calendar directory search is not supported on account with ID [%{public}@].", &v14, 0xCu);
  }

  v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:85 userInfo:0];
  [consumerCopy calendarDirectorySearchFinishedWithError:v11 exceededResultLimit:0];

  v12 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)performGroupExpansionForPrincipalPath:(id)path consumer:(id)consumer
{
  v13 = *MEMORY[0x277D85DE8];
  consumerCopy = consumer;
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v6, v7))
  {
    accountID = [(DAAccount *)self accountID];
    v11 = 138543362;
    v12 = accountID;
    _os_log_impl(&dword_24844D000, v6, v7, "Performing a calendar directory search is not supported on account with ID [%{public}@].", &v11, 0xCu);
  }

  v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:85 userInfo:0];
  [consumerCopy groupExpansionFinishedWithResults:0 error:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)cancelCalendarDirectorySearchWithID:(id)d
{
  v13 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v5, v6))
  {
    accountID = [(DAAccount *)self accountID];
    v9 = 138543618;
    v10 = accountID;
    v11 = 2112;
    v12 = dCopy;
    _os_log_impl(&dword_24844D000, v5, v6, "Cancelling calendar directory searches is not supported on account with ID [%{public}@].  searchID: [%@]", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)respondToShareRequestForCalendar:(id)calendar withResponse:(int64_t)response consumer:(id)consumer
{
  v19 = *MEMORY[0x277D85DE8];
  calendarCopy = calendar;
  consumerCopy = consumer;
  v9 = DALoggingwithCategory();
  v10 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v9, v10))
  {
    accountID = [(DAAccount *)self accountID];
    v15 = 138412546;
    v16 = accountID;
    v17 = 2112;
    v18 = calendarCopy;
    _os_log_impl(&dword_24844D000, v9, v10, "Responding to calendar shares is not supported on account ID %@. calendar ID: %@", &v15, 0x16u);
  }

  v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:76 userInfo:0];
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
  v9 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v8, v9))
  {
    accountID = [(DAAccount *)self accountID];
    v14 = 138412546;
    v15 = accountID;
    v16 = 2112;
    v17 = calendarCopy;
    _os_log_impl(&dword_24844D000, v8, v9, "Reporting calendar shares as junk is not supported on account ID %@. calendar ID: %@", &v14, 0x16u);
  }

  v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:76 userInfo:0];
  [consumerCopy shareResponseFinishedWithError:v11];

  v12 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)fetchOfficeHoursWithConsumer:(id)consumer error:(id *)error
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v6, v7))
  {
    accountID = [(DAAccount *)self accountID];
    v11 = 138543362;
    v12 = accountID;
    _os_log_impl(&dword_24844D000, v6, v7, "Fetching office hours is not supported on account ID %{public}@", &v11, 0xCu);
  }

  if (error)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:88 userInfo:0];
  }

  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)setOfficeHours:(id)hours withConsumer:(id)consumer error:(id *)error
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = DALoggingwithCategory();
  v8 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v7, v8))
  {
    accountID = [(DAAccount *)self accountID];
    v12 = 138543362;
    v13 = accountID;
    _os_log_impl(&dword_24844D000, v7, v8, "Setting office hours is not supported on account ID %{public}@", &v12, 0xCu);
  }

  if (error)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:88 userInfo:0];
  }

  v10 = *MEMORY[0x277D85DE8];
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

- (void)updateOofSettingsWithParams:(id)params consumer:(id)consumer
{
  v12 = *MEMORY[0x277D85DE8];
  consumerCopy = consumer;
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v6, v7))
  {
    v10 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_24844D000, v6, v7, "Updating oof settings requested on account %@, which does not support it", &v10, 0xCu);
  }

  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:10 userInfo:0];
  [consumerCopy settingsRequestFinishedWithResults:0 status:10 error:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)retrieveOofSettingsForConsumer:(id)consumer
{
  v11 = *MEMORY[0x277D85DE8];
  consumerCopy = consumer;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v5, v6))
  {
    v9 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_24844D000, v5, v6, "Retrieving oof settings requested on account %@, which does not support it", &v9, 0xCu);
  }

  v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:10 userInfo:0];
  [consumerCopy settingsRequestFinishedWithResults:0 status:10 error:v7];

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)isOofSupported
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v3, v4))
  {
    v7 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_24844D000, v3, v4, "Checking if oof settings are supported on account %@, which does not support it", &v7, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
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

    v5 = dispatch_queue_create("com.apple.dataaccess.queryqueue", 0);
    [(DAAccount *)selfCopy setPendingQueryQueue:v5];

    v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-2.0];
    [(DAAccount *)selfCopy setLastQueryStartedTime:v6];
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
  v8[3] = &unk_278F13618;
  v8[4] = self;
  v8[5] = &v9;
  dispatch_sync(pendingQueryQueue, v8);

  if (*(v10 + 24) == 1)
  {
    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v5, v6))
    {
      *buf = 134217984;
      v14 = 0x4000000000000000;
      _os_log_impl(&dword_24844D000, v5, v6, "Delay pending search for %f seconds", buf, 0xCu);
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
  block[3] = &unk_278F13640;
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
    v14 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v13, v14))
    {
      *buf = 134217984;
      v24 = v12;
      _os_log_impl(&dword_24844D000, v13, v14, "Delay new search for %f seconds", buf, 0xCu);
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
  block[3] = &unk_278F13668;
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
  v19 = __Block_byref_object_copy__2;
  v20 = __Block_byref_object_dispose__2;
  v21 = 0;
  pendingQueryQueue = [(DAAccount *)self pendingQueryQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__DAAccount_Searching__cancelAllSearchQueries__block_invoke;
  block[3] = &unk_278F133A8;
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
  v6[3] = &unk_278F13618;
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
  v6 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v5, v6))
  {
    v10 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_24844D000, v5, v6, "Search requested on account %@, which does not support it", &v10, 0xCu);
  }

  consumer = [queryCopy consumer];
  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:10 userInfo:0];
  [consumer searchQuery:queryCopy finishedWithError:v8];

  v9 = *MEMORY[0x277D85DE8];
}

@end