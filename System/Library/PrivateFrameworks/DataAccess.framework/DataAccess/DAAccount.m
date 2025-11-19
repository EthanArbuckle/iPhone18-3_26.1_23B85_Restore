@interface DAAccount
+ (id)daAccountSubclassWithBackingAccountInfo:(id)a3;
+ (id)oneshotListOfAccountIDs;
+ (void)reacquireClientRestrictions:(id)a3;
- (BOOL)_isIdentityManagedByProfile;
- (BOOL)accountBoolPropertyForKey:(id)a3;
- (BOOL)accountContainsEmailAddress:(id)a3;
- (BOOL)accountHasSignificantPropertyChangesFromOldAccountInfo:(id)a3;
- (BOOL)accountHasSignificantPropertyChangesWithChangeInfo:(id)a3;
- (BOOL)canSaveWithAccountProvider:(id)a3;
- (BOOL)enabledForAnyDADataclasses:(int64_t)a3;
- (BOOL)enabledForDADataclass:(int64_t)a3;
- (BOOL)handleTrustChallenge:(id)a3;
- (BOOL)handleTrustChallenge:(id)a3 completionHandler:(id)a4;
- (BOOL)isChildAccount;
- (BOOL)isDisabled;
- (BOOL)isEqualToAccount:(id)a3;
- (BOOL)isOofSupported;
- (BOOL)monitorFolderWithID:(id)a3;
- (BOOL)preflightSaveWithAccountProvider:(id)a3;
- (BOOL)resetCertWarnings;
- (BOOL)saveAccountPropertiesWithError:(id *)a3;
- (BOOL)searchQueriesRunning;
- (BOOL)shouldAutodiscoverAccountProperties;
- (BOOL)shouldCancelTaskDueToOnPowerFetchMode;
- (BOOL)shouldFailAllTasks;
- (BOOL)shouldRemoveDBSyncDataOnAccountChange;
- (BOOL)upgradeAccount;
- (BOOL)useSSL;
- (BOOL)useSSLFromDataclassPropertiesForDataclass:(id)a3;
- (DAAccount)initWithBackingAccountInfo:(id)a3;
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
- (__CFData)exceptionsForDigest:(id)a3;
- (__CFURLStorageSession)copyStorageSession;
- (id)accountPropertyForKey:(id)a3;
- (id)accountTypeIdentifier;
- (id)accountsProviderWithDBHelper:(id)a3;
- (id)addUsernameToURL:(id)a3;
- (id)additionalHeaderValues;
- (id)beginDownloadingAttachmentWithUUID:(id)a3 consumer:(id)a4;
- (id)containerProviderWithDBHelper:(id)a3;
- (id)customConnectionProperties;
- (id)description;
- (id)fetchOfficeHoursWithConsumer:(id)a3 error:(id *)a4;
- (id)getPendingQueryQueue;
- (id)hostFromDataclassPropertiesForDataclass:(id)a3;
- (id)localizedIdenticalAccountFailureMessage;
- (id)localizedInvalidPasswordMessage;
- (id)oauth2Token;
- (id)objectForKeyedSubscript:(id)a3;
- (id)performCalendarDirectorySearchForTerms:(id)a3 recordTypes:(id)a4 resultLimit:(unint64_t)a5 consumer:(id)a6;
- (id)reportShareRequestAsJunkForCalendar:(id)a3 consumer:(id)a4;
- (id)requestCalendarAvailabilityForStartDate:(id)a3 endDate:(id)a4 ignoredEventID:(id)a5 addresses:(id)a6 consumer:(id)a7;
- (id)requestGrantedDelegatesListWithConsumer:(id)a3;
- (id)respondToShareRequestForCalendar:(id)a3 withResponse:(int64_t)a4 consumer:(id)a5;
- (id)setOfficeHours:(id)a3 withConsumer:(id)a4 error:(id *)a5;
- (id)spinnerIdentifiers;
- (id)stateString;
- (id)unactionableICSRepresentationForMetaData:(id)a3 inFolderWithId:(id)a4 outSummary:(id *)a5;
- (id)updateGrantedDelegatePermission:(id)a3 consumer:(id)a4;
- (id)urlFromDataclassPropertiesForDataclass:(id)a3;
- (int)accountIntPropertyForKey:(id)a3;
- (int)daAccountVersion;
- (int)keychainAccessibilityType;
- (int64_t)enabledDataclassesBitmask;
- (int64_t)port;
- (int64_t)portFromDataclassPropertiesForDataclass:(id)a3;
- (void)_dequeueQuery;
- (void)_handleSignificantPropertyChanges:(id)a3;
- (void)_reallyPerformSearchQuery:(id)a3;
- (void)_refreshCredential;
- (void)_webLoginRequestedAtURL:(id)a3 reasonString:(id)a4 inQueue:(id)a5 completionBlock:(id)a6;
- (void)accountDidChangeFromOldAccountInfo:(id)a3;
- (void)accountDidChangeWithChangeInfo:(id)a3;
- (void)cancelAllSearchQueries;
- (void)cancelCalendarAvailabilityRequestWithID:(id)a3;
- (void)cancelCalendarDirectorySearchWithID:(id)a3;
- (void)cancelGrantedDelegatesListRequestWithID:(id)a3;
- (void)cancelSearchQuery:(id)a3;
- (void)cancelUpdateGrantedDelegatePermissionRequestWithID:(id)a3;
- (void)checkValidityOnAccountStore:(id)a3 withConsumer:(id)a4;
- (void)checkValidityOnAccountStore:(id)a3 withConsumer:(id)a4 inQueue:(id)a5;
- (void)cleanupAccountFiles;
- (void)clientTokenRequestedByServer;
- (void)dealloc;
- (void)decrementXpcActivityContinueCount;
- (void)discoverInitialPropertiesWithConsumer:(id)a3;
- (void)dropAssertionsAndRenewCredentialsInQueue:(id)a3 withHandler:(id)a4;
- (void)handleValidationError:(id)a3 completion:(id)a4;
- (void)incrementXpcActivityContinueCount;
- (void)performGroupExpansionForPrincipalPath:(id)a3 consumer:(id)a4;
- (void)performSearchQuery:(id)a3;
- (void)performUsingAccountPersona:(id)a3;
- (void)reload;
- (void)removeAccountPropertyForKey:(id)a3;
- (void)removeClientCertificateData;
- (void)removeConsumerForTask:(id)a3;
- (void)removeDBSyncDataForAccountChange:(id)a3;
- (void)removeXpcActivity;
- (void)resetAccountID;
- (void)resetStatusReport;
- (void)resumeMonitoringFoldersWithIDs:(id)a3;
- (void)retrieveOofSettingsForConsumer:(id)a3;
- (void)saveXpcActivity:(id)a3;
- (void)setAccountDescription:(id)a3;
- (void)setAccountProperty:(id)a3 forKey:(id)a4;
- (void)setConsumer:(id)a3 forTask:(id)a4;
- (void)setEmailAddress:(id)a3;
- (void)setExceptions:(__CFData *)a3 forDigest:(id)a4;
- (void)setHost:(id)a3;
- (void)setObject:(id)a3 forKeyedSubscript:(id)a4;
- (void)setPassword:(id)a3;
- (void)setPort:(int64_t)a3;
- (void)setPrincipalPath:(id)a3;
- (void)setPrincipalURL:(id)a3;
- (void)setShouldDoInitialAutodiscovery:(BOOL)a3;
- (void)shutdown;
- (void)stopMonitoringFolderWithID:(id)a3;
- (void)stopMonitoringFolders;
- (void)stopMonitoringFoldersWithIDs:(id)a3;
- (void)suspendMonitoringFoldersWithIDs:(id)a3;
- (void)tearDown;
- (void)updateExistingAccountProperties;
- (void)updateOofSettingsWithParams:(id)a3 consumer:(id)a4;
- (void)webLoginRequestedAtURL:(id)a3 reasonString:(id)a4 inQueue:(id)a5 completionBlock:(id)a6;
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
    v10 = self;
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
      v9 = [v8 intValue];
      if (v9)
      {
        v10 = v9;
        v11 = DALoggingwithCategory();
        v12 = *(MEMORY[0x277D03988] + 5);
        v13 = os_log_type_enabled(v11, v12);
        if (v10 > 14)
        {
          if (v13)
          {
            v22 = [(DAAccount *)self accountID];
            v23 = 138543618;
            v24 = v22;
            v25 = 2114;
            v26 = v5;
            _os_log_impl(&dword_24844D000, v11, v12, "Account %{public}@ has no DAAccountVersion, and the previous build version string (%{public}@) appears new enough not to force migration. Assuming DAAccountVersion 1.", &v23, 0x16u);
          }

          v4 = 1;
          goto LABEL_16;
        }

        if (v13)
        {
          v14 = [(DAAccount *)self accountID];
          v23 = 138543618;
          v24 = v14;
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
          v14 = [(DAAccount *)self accountID];
          v23 = 138543618;
          v24 = v14;
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
        v14 = [(DAAccount *)self accountID];
        v23 = 138543362;
        v24 = v14;
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
    v7 = [(DAAccount *)self accountID];
    v23 = 138543618;
    v24 = v7;
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
  v3 = [(ACAccount *)self->_backingAccountInfo enabledDataclasses];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v3);
        }

        if (([(ACAccount *)self->_backingAccountInfo isEnabledToSyncDataclass:*(*(&v11 + 1) + 8 * i)]& 1) != 0)
        {
          v8 = 0;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  v2 = [(ACAccount *)self->_backingAccountInfo displayAccount];
  v3 = [v2 accountDescription];

  return v3;
}

- (DAAccount)initWithBackingAccountInfo:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = DAAccount;
  v6 = [(DAAccount *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_backingAccountInfo, a3);
    [(DAAccount *)v7 _refreshCredential];
    v8 = [[DATrustHandler alloc] initWithDelegate:v7];
    trustHandler = v7->_trustHandler;
    v7->_trustHandler = v8;

    [(DAAccount *)v7 resetStatusReport];
    v10 = [(DAAccount *)v7 persistentUUID];

    if (!v10)
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
      v5 = [(ACAccount *)self->_backingAccountInfo identifier];
      *buf = 138543362;
      v9 = v5;
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

+ (id)daAccountSubclassWithBackingAccountInfo:(id)a3
{
  v3 = a3;
  v4 = [v3 accountType];
  v5 = [v4 identifier];
  if ([v5 isEqualToString:*MEMORY[0x277CB8C00]])
  {
  }

  else
  {
    v6 = [v3 accountType];
    v7 = [v6 identifier];
    v8 = [v7 isEqualToString:*MEMORY[0x277CB8C50]];

    if (!v8)
    {
      v11 = +[DAAccountLoader sharedInstance];
      v12 = [v11 daemonAppropriateAccountClassForACAccount:v3];

      v9 = [[v12 alloc] initWithBackingAccountInfo:v3];
      goto LABEL_8;
    }
  }

  if (!ExchangeSyncLibraryCore())
  {
    v10 = 0;
    goto LABEL_9;
  }

  v9 = [getESAccountClass() esAccountSubclassWithBackingAccountInfo:v3];
LABEL_8:
  v10 = v9;
LABEL_9:

  return v10;
}

- (id)accountsProviderWithDBHelper:(id)a3
{
  v3 = MEMORY[0x277D03910];
  v4 = a3;
  if ([v3 useContactsFramework])
  {
    v5 = [v4 contactStore];

    v6 = [DAContactsAccountProvider providerWithContactStore:v5];
  }

  else
  {
    v7 = [v4 abDB];

    v6 = [DAContactsAccountProvider providerWithAddressBook:v7];
  }

  return v6;
}

- (id)containerProviderWithDBHelper:(id)a3
{
  v3 = MEMORY[0x277D03910];
  v4 = a3;
  if ([v3 useContactsFramework])
  {
    v5 = [v4 contactStore];

    v6 = [DAContainerProvider providerWithContactStore:v5];
  }

  else
  {
    v7 = [v4 abDB];

    v6 = [DAContainerProvider providerWithAddressBook:v7];
  }

  return v6;
}

- (BOOL)upgradeAccount
{
  v3 = [(DAAccount *)self daAccountVersion];
  if (v3 <= 0)
  {
    [(DAAccount *)self setAccountProperty:MEMORY[0x277CBEC28] forKey:@"DAAccountUseTrustedSSLCertificate"];
    [(DAAccount *)self setDAAccountVersion:1];
  }

  return v3 < 1;
}

- (void)resetAccountID
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"DAAccount.m" lineNumber:324 description:{@"We shouldn't be resetting our account id, ever"}];
}

- (NSString)scheduleIdentifier
{
  v3 = [(DAAccount *)self backingAccountInfo];
  v4 = [v3 parentAccount];

  if (v4)
  {
    v5 = [(DAAccount *)self backingAccountInfo];
    v6 = [v5 parentAccount];
    v7 = [v6 identifier];
  }

  else
  {
    v7 = [(DAAccount *)self persistentUUID];
  }

  return v7;
}

- (NSString)changeTrackingID
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(DAAccount *)self persistentUUID];
  v4 = [v2 stringWithFormat:@"com.apple.dataaccessd-%@", v3];

  return v4;
}

- (NSString)publicDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(ACAccount *)self->_backingAccountInfo identifier];
  v7 = [v3 stringWithFormat:@"%@ %@", v5, v6];

  return v7;
}

- (void)setAccountDescription:(id)a3
{
  backingAccountInfo = self->_backingAccountInfo;
  v4 = a3;
  v5 = [(ACAccount *)backingAccountInfo displayAccount];
  [v5 setAccountDescription:v4];
}

- (BOOL)enabledForAnyDADataclasses:(int64_t)a3
{
  v3 = a3;
  if ((a3 & 1) == 0)
  {
    return (v3 & 2) != 0 && [(DAAccount *)self enabledForDADataclass:2]|| (v3 & 4) != 0 && [(DAAccount *)self enabledForDADataclass:4]|| (v3 & 8) != 0 && [(DAAccount *)self enabledForDADataclass:8]|| (v3 & 0x10) != 0 && [(DAAccount *)self enabledForDADataclass:16]|| (v3 & 0x20) != 0 && [(DAAccount *)self enabledForDADataclass:32];
  }

  v5 = 1;
  if (![(DAAccount *)self enabledForDADataclass:1])
  {
    return (v3 & 2) != 0 && [(DAAccount *)self enabledForDADataclass:2]|| (v3 & 4) != 0 && [(DAAccount *)self enabledForDADataclass:4]|| (v3 & 8) != 0 && [(DAAccount *)self enabledForDADataclass:8]|| (v3 & 0x10) != 0 && [(DAAccount *)self enabledForDADataclass:16]|| (v3 & 0x20) != 0 && [(DAAccount *)self enabledForDADataclass:32];
  }

  return v5;
}

- (BOOL)enabledForDADataclass:(int64_t)a3
{
  backingAccountInfo = self->_backingAccountInfo;
  v4 = acDataclassForDADataclass(a3);
  LOBYTE(backingAccountInfo) = [(ACAccount *)backingAccountInfo isEnabledForDataclass:v4];

  return backingAccountInfo;
}

- (int64_t)enabledDataclassesBitmask
{
  v2 = [(ACAccount *)self->_backingAccountInfo enabledDataclasses];
  v3 = daDataclassesForACDataclasses(v2);

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

- (id)accountPropertyForKey:(id)a3
{
  v4 = a3;
  v5 = [(DAAccount *)self backingAccountInfo];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (void)setAccountProperty:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DAAccount *)self backingAccountInfo];
  [v8 setAccountProperty:v7 forKey:v6];
}

- (void)removeAccountPropertyForKey:(id)a3
{
  v4 = a3;
  v5 = [(DAAccount *)self backingAccountInfo];
  [v5 setAccountProperty:0 forKey:v4];
}

- (void)setObject:(id)a3 forKeyedSubscript:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DAAccount *)self backingAccountInfo];
  [v8 setAccountProperty:v7 forKey:v6];
}

- (id)objectForKeyedSubscript:(id)a3
{
  v4 = a3;
  v5 = [(DAAccount *)self backingAccountInfo];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (BOOL)accountBoolPropertyForKey:(id)a3
{
  v4 = a3;
  v5 = [(DAAccount *)self backingAccountInfo];
  v6 = [v5 objectForKeyedSubscript:v4];

  LOBYTE(v4) = [v6 BOOLValue];
  return v4;
}

- (int)accountIntPropertyForKey:(id)a3
{
  v4 = a3;
  v5 = [(DAAccount *)self backingAccountInfo];
  v6 = [v5 objectForKeyedSubscript:v4];

  LODWORD(v4) = [v6 intValue];
  return v4;
}

- (void)resumeMonitoringFoldersWithIDs:(id)a3
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

- (void)suspendMonitoringFoldersWithIDs:(id)a3
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

- (void)stopMonitoringFolderWithID:(id)a3
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
  v6 = [(DAAccount *)self statusReport];
  [v6 setSyncingAllowed:v5];

  v7 = [(DAAccount *)self protocolVersion];
  v8 = [(DAAccount *)self statusReport];
  [v8 setProtocolVersion:v7];

  v9 = MEMORY[0x277CCACA8];
  v10 = [(DAAccount *)self accountID];
  v11 = [(DAAccount *)self displayName];
  v12 = [(DAAccount *)self statusReport];
  v13 = [(DATaskManager *)self->_taskManager stateString];
  v14 = v13;
  v15 = @"No Task Manager initted yet";
  if (v13)
  {
    v15 = v13;
  }

  v16 = [v9 stringWithFormat:@"AccountID: %@ (\"%@\"", v10, v11, v12, v15];

  return v16;
}

- (void)setConsumer:(id)a3 forTask:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  consumers = self->_consumers;
  if (!consumers)
  {
    v9 = objc_opt_new();
    v10 = self->_consumers;
    self->_consumers = v9;

    consumers = self->_consumers;
  }

  [(NSMapTable *)consumers setObject:v6 forKey:v7];
  v11 = DALoggingwithCategory();
  v12 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v11, v12))
  {
    v13 = [(NSMapTable *)self->_consumers count];
    v15 = 134218752;
    v16 = v6;
    v17 = 2048;
    v18 = v7;
    v19 = 2048;
    v20 = self;
    v21 = 2048;
    v22 = v13;
    _os_log_impl(&dword_24844D000, v11, v12, "Added consumer %p for task %p to DAAccount %p, count: %lu", &v15, 0x2Au);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)removeConsumerForTask:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(NSMapTable *)self->_consumers removeObjectForKey:v4];
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = [(NSMapTable *)self->_consumers count];
    v9 = 134218496;
    v10 = v4;
    v11 = 2048;
    v12 = self;
    v13 = 2048;
    v14 = v7;
    _os_log_impl(&dword_24844D000, v5, v6, "Removed consumer for task %p from DAAccount %p, count: %lu", &v9, 0x20u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (NSString)clientToken
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(DAAccount *)self backingAccountInfo];
  v4 = [v3 clientToken];

  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v5, v6))
  {
    v9 = 134218242;
    v10 = self;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_24844D000, v5, v6, "Account %p clientToken: %@", &v9, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)clientTokenRequestedByServer
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(DAAccount *)self clientToken];
  v4 = [v3 length];

  if (!v4)
  {
    v5 = [MEMORY[0x277CCACA8] da_newGUID];
    v6 = [(DAAccount *)self backingAccountInfo];
    [v6 addClientToken:v5];

    v7 = DALoggingwithCategory();
    v8 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v7, v8))
    {
      v10 = 134218242;
      v11 = self;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_24844D000, v7, v8, "Account %p clientTokenRequestedByServer, new token: %@", &v10, 0x16u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (NSString)password
{
  v3 = [(DAAccount *)self identityPersist];
  v4 = [(DAAccount *)self passwordWithExpected:v3 == 0];

  return v4;
}

- (void)setPassword:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 length];
  v6 = [(ACAccount *)self->_backingAccountInfo credential];
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      [v6 setPassword:v4];
    }

    else
    {
      v7 = [objc_alloc(MEMORY[0x277CB8F38]) initWithPassword:v4];
      [(ACAccount *)self->_backingAccountInfo setCredential:v7];
    }

    v9 = DALoggingwithCategory();
    v10 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = [(ACAccount *)self->_backingAccountInfo identifier];
      v12 = [(ACAccount *)self->_backingAccountInfo username];
      v14 = 138412546;
      v15 = v11;
      v16 = 2112;
      v17 = v12;
      _os_log_impl(&dword_24844D000, v9, v10, "Calling _backingAccountInfo.authenticated = YES for Account identifier %@ and username %@", &v14, 0x16u);
    }

    [(ACAccount *)self->_backingAccountInfo setAuthenticated:1];
  }

  else
  {
    [v6 setPassword:0];

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

- (void)performUsingAccountPersona:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ACAccount *)self->_backingAccountInfo cal_personaIdentifier];
  v6 = v5;
  if (v5 && [v5 length])
  {
    v7 = [MEMORY[0x277D77BF8] sharedManager];
    v8 = [v7 currentPersona];

    v21 = 0;
    v9 = [v8 copyCurrentPersonaContextWithError:&v21];
    v10 = v21;
    if (!v9)
    {
      v15 = DALoggingwithCategory();
      v17 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v15, v17))
      {
        v18 = [(ACAccount *)self->_backingAccountInfo identifier];
        *buf = 138543618;
        v23 = v18;
        v24 = 2112;
        v25 = v10;
        _os_log_impl(&dword_24844D000, v15, v17, "Could not get current persona context for account %{public}@, with error %@", buf, 0x16u);

        v9 = 0;
      }

      v11 = v10;
      goto LABEL_16;
    }

    v11 = [v8 createPersonaContextForBackgroundProcessingWithPersonaUniqueString:v6];

    if (v11)
    {
      v12 = DALoggingwithCategory();
      v13 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v12, v13))
      {
        v14 = [(ACAccount *)self->_backingAccountInfo identifier];
        *buf = 138543874;
        v23 = v14;
        v24 = 2112;
        v25 = v6;
        v26 = 2112;
        v27 = v11;
        _os_log_impl(&dword_24844D000, v12, v13, "Could not convert account %{public}@ to persona %@, with error %@", buf, 0x20u);
      }
    }

    v15 = [v11 domain];
    if (![v15 isEqualToString:@"NSPOSIXErrorDomain"])
    {
LABEL_16:

      goto LABEL_17;
    }

    v16 = [v11 code];

    if (v16 == 1)
    {
      v15 = DALoggingwithCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        [DAAccount performUsingAccountPersona:v15];
      }

      goto LABEL_16;
    }
  }

  else
  {
    v9 = 0;
    v8 = 0;
    v11 = 0;
  }

LABEL_17:
  v4[2](v4, v6);
  if (v8 && v9 && !v11)
  {
    v19 = [v8 restorePersonaWithSavedPersonaContext:v9];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (id)urlFromDataclassPropertiesForDataclass:(id)a3
{
  v4 = a3;
  v5 = [(DAAccount *)self backingAccountInfo];
  v6 = [v5 calTopLevelAccount];

  v7 = [v6 dataclassProperties];
  if ([v7 count])
  {
    if (!self->_dataclassPropertyURLsByDataclass)
    {
      v8 = self;
      objc_sync_enter(v8);
      if (!self->_dataclassPropertyURLsByDataclass)
      {
        v9 = objc_opt_new();
        dataclassPropertyURLsByDataclass = self->_dataclassPropertyURLsByDataclass;
        self->_dataclassPropertyURLsByDataclass = v9;
      }

      objc_sync_exit(v8);
    }

    v11 = [(DAAccount *)self dataclassPropertyURLsByDataclass];
    objc_sync_enter(v11);
    v12 = [(DAAccount *)self dataclassPropertyURLsByDataclass];
    v13 = [v12 objectForKeyedSubscript:v4];

    if (!v13)
    {
      v14 = [v7 objectForKeyedSubscript:v4];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ([v14 objectForKeyedSubscript:@"url"], (v15 = objc_claimAutoreleasedReturnValue()) == 0) || (objc_msgSend(MEMORY[0x277CBEBC0], "URLWithString:", v15), v13 = objc_claimAutoreleasedReturnValue(), v15, !v13))
      {
        v13 = [MEMORY[0x277CBEB68] null];
      }

      v16 = [(DAAccount *)self dataclassPropertyURLsByDataclass];
      [v16 setObject:v13 forKeyedSubscript:v4];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      v13 = 0;
    }

    objc_sync_exit(v11);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)hostFromDataclassPropertiesForDataclass:(id)a3
{
  v3 = [(DAAccount *)self urlFromDataclassPropertiesForDataclass:a3];
  v4 = [v3 host];

  return v4;
}

- (BOOL)useSSLFromDataclassPropertiesForDataclass:(id)a3
{
  v3 = [(DAAccount *)self urlFromDataclassPropertiesForDataclass:a3];
  v4 = [v3 scheme];
  v5 = [v4 lowercaseString];
  v6 = [v5 isEqualToString:@"https"];

  return v6;
}

- (int64_t)portFromDataclassPropertiesForDataclass:(id)a3
{
  v3 = [(DAAccount *)self urlFromDataclassPropertiesForDataclass:a3];
  v4 = [v3 port];
  v5 = [v4 integerValue];

  return v5;
}

- (void)setHost:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 5);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = [(DAAccount *)self host];
    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_24844D000, v5, v6, "Changing Host From %@ to %@", &v9, 0x16u);
  }

  [(DAAccount *)self setObject:v4 forKeyedSubscript:@"DAAccountHost"];
  v8 = *MEMORY[0x277D85DE8];
}

- (NSString)hostWithoutPath
{
  v2 = [(DAAccount *)self host];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 rangeOfString:@"/"];
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
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setEmailAddress:(id)a3
{
  v4 = a3;
  [(DAAccount *)self setObject:v4 forKeyedSubscript:@"DAAccountEmailAddress"];
  [(DAAccount *)self setObject:v4 forKeyedSubscript:@"ACUIDisplayUsername"];
}

- (NSArray)emailAddresses
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [(DAAccount *)self emailAddress];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)accountContainsEmailAddress:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [(DAAccount *)self emailAddresses];
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = *v12;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v5);
          }

          if (![v4 caseInsensitiveCompare:*(*(&v11 + 1) + 8 * i)])
          {
            LOBYTE(v6) = 1;
            goto LABEL_12;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  v3 = [v2 integerValue];

  return v3;
}

- (void)setPort:(int64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [(DAAccount *)self setObject:v4 forKeyedSubscript:@"DAAccountPort"];
}

- (NSString)principalPath
{
  v3 = [MEMORY[0x277D03970] DAAccountPrincipalPath];
  v4 = [(DAAccount *)self objectForKeyedSubscript:v3];
  v5 = [v4 da_appendSlashIfNeeded];

  return v5;
}

- (void)setPrincipalPath:(id)a3
{
  v4 = MEMORY[0x277D03970];
  v5 = a3;
  v6 = [v4 DAAccountPrincipalPath];
  [(DAAccount *)self setObject:v5 forKeyedSubscript:v6];
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
  v4 = [(DAAccount *)self scheme];
  v5 = [(DAAccount *)self host];
  v6 = [(DAAccount *)self port];
  v7 = [(DAAccount *)self principalPath];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = @"/";
  }

  v10 = [v3 da_URLWithScheme:v4 host:v5 port:v6 uri:v9];

  return v10;
}

- (void)setPrincipalURL:(id)a3
{
  v15 = a3;
  v4 = [v15 scheme];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [v15 scheme];
    -[DAAccount setUseSSL:](self, "setUseSSL:", [v6 isEqualToString:@"http"] ^ 1);
  }

  v7 = [v15 host];
  v8 = [v7 length];

  if (v8)
  {
    v9 = [v15 host];
    [(DAAccount *)self setHost:v9];
  }

  v10 = [v15 port];

  if (v10)
  {
    v11 = [v15 port];
    -[DAAccount setPort:](self, "setPort:", [v11 integerValue]);
  }

  v12 = [v15 path];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = @"/";
  }

  [(DAAccount *)self setPrincipalPath:v14];
}

- (void)checkValidityOnAccountStore:(id)a3 withConsumer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = dataaccess_get_global_queue();
  [(DAAccount *)self checkValidityOnAccountStore:v7 withConsumer:v6 inQueue:v8];
}

- (void)checkValidityOnAccountStore:(id)a3 withConsumer:(id)a4 inQueue:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  [(DAAccount *)self setIsValidating:1];
  v11 = [(DAAccount *)self backingAccountInfo];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __62__DAAccount_checkValidityOnAccountStore_withConsumer_inQueue___block_invoke;
  v14[3] = &unk_278F13158;
  v14[4] = self;
  v15 = v9;
  v16 = v8;
  v12 = v8;
  v13 = v9;
  [v10 verifyCredentialsForAccount:v11 saveWhenAuthorized:0 withHandler:v14];
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

- (void)discoverInitialPropertiesWithConsumer:(id)a3
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

- (void)setShouldDoInitialAutodiscovery:(BOOL)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithInt:!a3];
  [(DAAccount *)self setObject:v4 forKeyedSubscript:@"DAAccountDidAutodiscover"];
}

- (BOOL)shouldAutodiscoverAccountProperties
{
  if ([(DAAccount *)self shouldDoInitialAutodiscovery])
  {
    return 1;
  }

  v4 = [(DAAccount *)self principalPath];
  if ([v4 length])
  {
    v5 = [(DAAccount *)self principalPath];
    v3 = [v5 isEqualToString:@"/"];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (NSString)onBehalfOfBundleIdentifier
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  Name = sel_getName(a2);
  [v4 handleFailureInMethod:a2 object:self file:@"DAAccount.m" lineNumber:878 description:{@"%s MUST be implemented in ALL DAAccount subclasses.  Looks like it's missing in %@", Name, objc_opt_class()}];

  return 0;
}

- (BOOL)shouldRemoveDBSyncDataOnAccountChange
{
  v2 = [(DAAccount *)self backingAccountInfo];
  v3 = [v2 parentAccountIdentifier];

  return v3 == 0;
}

- (void)removeDBSyncDataForAccountChange:(id)a3
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
    v65 = self;
    _os_log_impl(&dword_24844D000, v7, v8, "Removing contacts data for account %@, because it has a significant change", buf, 0xCu);
  }

  v9 = [(DAAccount *)self changeTrackingID];
  [v4 abOpenDBWithClientIdentifier:v9];

  v10 = [(DAAccount *)self accountsProviderWithDBHelper:v4];
  v11 = [(DAAccount *)self accountID];
  v12 = [v10 fetchedAccountWithExternalIdentifier:v11];

  v13 = objc_alloc_init(MEMORY[0x277CBDBA0]);
  if (v12)
  {
    v14 = [(DAAccount *)self containerProviderWithDBHelper:v4];
    v57 = v12;
    v15 = [v12 externalIdentifier];
    v16 = [v14 allContainersForAccountWithExternalIdentifier:v15];

    v17 = DALoggingwithCategory();
    if (os_log_type_enabled(v17, v8))
    {
      v18 = [v16 count];
      *buf = 134217984;
      v65 = v18;
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

    v27 = [MEMORY[0x277D03910] useContactsFramework];
    v12 = v57;
    v6 = MEMORY[0x277D03988];
    if (v27)
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
      v65 = self;
      _os_log_impl(&dword_24844D000, v29, v30, "Removing event / todo data for account %@, because it has a significant change", buf, 0xCu);
    }

    v31 = [(DAAccount *)self accountID];
    v32 = [(DAAccount *)self changeTrackingID];
    [v4 calOpenDatabaseForAccountID:v31 clientID:v32];

    v33 = [(DAAccount *)self accountID];
    [v4 calDatabaseForAccountID:v33];

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
          v65 = v38;
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

    v41 = [(DAAccount *)self accountID];
    [v4 calCloseDatabaseForAccountID:v41 save:v28];
  }

  if ([(DAAccount *)self enabledForDADataclass:32])
  {
    v42 = [MEMORY[0x277D03910] completelyIgnoreNotes];
    v43 = DALoggingwithCategory();
    v44 = v43;
    if (v42)
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
        v65 = self;
        _os_log_impl(&dword_24844D000, v44, v46, "Removing notes data for account %@, because it has a significant change", buf, 0xCu);
      }

      v44 = objc_opt_new();
      [v44 enableChangeLogging:0];
      v47 = [(DAAccount *)self accountID];
      v48 = [v44 accountForAccountId:v47];

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
            v54 = [v51 DAExtendedDescription];
            *buf = 138412290;
            v65 = v54;
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

- (void)accountDidChangeWithChangeInfo:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(DAAccount *)self accountHasSignificantPropertyChangesWithChangeInfo:v4])
  {
    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v5, v6))
    {
      backingAccountInfo = self->_backingAccountInfo;
      v9 = 138412546;
      v10 = v4;
      v11 = 2112;
      v12 = backingAccountInfo;
      _os_log_impl(&dword_24844D000, v5, v6, "Account had significant property change, going to flush local data.\n\nChangeInfo %@\n\nNewProperties %@", &v9, 0x16u);
    }

    [(DAAccount *)self _handleSignificantPropertyChanges:v4];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_handleSignificantPropertyChanges:(id)a3
{
  [(DAAccount *)self removeDBSyncDataForAccountChange:a3];

  [(DAAccount *)self cleanupAccountFiles];
}

- (id)additionalHeaderValues
{
  v16[1] = *MEMORY[0x277D85DE8];
  v2 = [(DAAccount *)self backingAccountInfo];
  v3 = [v2 credential];

  v4 = [v3 credentialType];
  v5 = [v4 isEqualToString:*MEMORY[0x277CB8DB0]];

  if (!v5)
  {
    v10 = 0;
    goto LABEL_12;
  }

  v6 = [v3 credentialItemForKey:*MEMORY[0x277CB8F28]];
  if (v6)
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = [v3 credentialItemForKey:*MEMORY[0x277CB8F20]];
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
  v3 = [(DAAccount *)self onBehalfOfBundleIdentifier];
  v10[0] = v3;
  v9[1] = *MEMORY[0x277CBADA0];
  v4 = [(DAAccount *)self accountID];
  v10[1] = v4;
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
    v5 = [(DAAccount *)self backingAccountInfo];
    v6 = [v5 identifier];
    v19 = 138412290;
    v20 = v6;
    _os_log_impl(&dword_24844D000, v3, v4, "Fetching OAuth Credential for Backing Account %@", &v19, 0xCu);
  }

  v7 = [(DAAccount *)self backingAccountInfo];
  v8 = [v7 credential];

  if (v8)
  {
    v9 = [v8 credentialType];
    if ([v9 isEqualToString:*MEMORY[0x277CB8D98]])
    {

LABEL_7:
      v12 = [v8 oauthToken];
      goto LABEL_9;
    }

    v10 = [v8 credentialType];
    v11 = [v10 isEqualToString:*MEMORY[0x277CB8DA0]];

    if (v11)
    {
      goto LABEL_7;
    }
  }

  v12 = 0;
LABEL_9:
  v13 = DALoggingwithCategory();
  if (os_log_type_enabled(v13, v4))
  {
    if (v12)
    {
      v14 = @"Valid";
    }

    else
    {
      v14 = @"InValid";
    }

    v15 = [(DAAccount *)self backingAccountInfo];
    v16 = [v15 identifier];
    v19 = 138412802;
    v20 = v14;
    v21 = 2112;
    v22 = v8;
    v23 = 2114;
    v24 = v16;
    _os_log_impl(&dword_24844D000, v13, v4, "Account Store Returned A %@ OAuth-token From Credential Object %@ AccountID: %{public}@", &v19, 0x20u);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v12;
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

- (BOOL)monitorFolderWithID:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v4 = MEMORY[0x277CBEA60];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v9 count:1];

  LOBYTE(self) = [(DAAccount *)self monitorFoldersWithIDs:v6, v9, v10];
  v7 = *MEMORY[0x277D85DE8];
  return self;
}

- (void)stopMonitoringFoldersWithIDs:(id)a3
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
  v3 = [(DAAccount *)self identityPersist];
  if (v3)
  {
    v4 = v3;
    if (![(DAAccount *)self _isIdentityManagedByProfile])
    {
      _DASecDeleteIdentityByPersistentRef(v4);
    }

    [(DAAccount *)self setIdentityCertificatePersistentID:0 managedByProfile:0];
    v3 = v4;
  }
}

- (BOOL)saveAccountPropertiesWithError:(id *)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 4);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = [(DAAccount *)self accountDescription];
    v8 = [(DAAccount *)self publicDescription];
    *buf = 138412546;
    *&buf[4] = v7;
    *&buf[12] = 2114;
    *&buf[14] = v8;
    _os_log_impl(&dword_24844D000, v5, v6, "Saving account %@ (%{public}@)", buf, 0x16u);
  }

  v9 = DALoggingwithCategory();
  if (os_log_type_enabled(v9, v6))
  {
    v10 = [(DAAccount *)self backingAccountInfo];
    v11 = [v10 isAuthenticated];
    v12 = [(DAAccount *)self backingAccountInfo];
    v13 = [v12 identifier];
    v14 = [(DAAccount *)self backingAccountInfo];
    v15 = [v14 username];
    *buf = 67109634;
    *&buf[4] = v11;
    *&buf[8] = 2112;
    *&buf[10] = v13;
    *&buf[18] = 2112;
    *&buf[20] = v15;
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

  if (a3)
  {
    *a3 = *(*&buf[8] + 40);
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
  v4 = [(DAAccount *)self backingAccountInfo];
  v5 = [v4 identifier];
  v6 = [v3 accountWithIdentifier:v5];

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
  v2 = [(ACAccount *)self->_backingAccountInfo accountType];
  v3 = +[DAKeychain sharedKeychain];
  v4 = [v2 credentialProtectionPolicy];
  v5 = [v3 _daKeychainAccessibilityForSecAccessibility:v4];

  return v5;
}

- (id)addUsernameToURL:(id)a3
{
  v5 = a3;
  v6 = [v5 user];
  v7 = [v6 length];
  if (!v7)
  {
    v3 = [(DAAccount *)self username];
    if ([v3 length])
    {

LABEL_8:
      v11 = [(DAAccount *)self username];
      v12 = [v11 da_stringByAddingPercentEscapesForUsername];
      v13 = [v5 da_urlBySettingUsername:v12];

      v5 = v13;
      goto LABEL_9;
    }
  }

  v8 = [v5 user];
  v9 = [(DAAccount *)self username];
  v10 = [v8 isEqualToString:v9];

  if (!v7)
  {
  }

  if ((v10 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_9:

  return v5;
}

- (BOOL)preflightSaveWithAccountProvider:(id)a3
{
  if ([(DAAccount *)self canSaveWithAccountProvider:a3])
  {
    v4 = [(DAAccount *)self backingAccountInfo];
    v5 = [MEMORY[0x277D03970] DAAccountSavePreflighted];
    [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v5];
  }

  return 1;
}

- (BOOL)canSaveWithAccountProvider:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v40 = self;
  v39 = [(DAAccount *)self backingAccountInfo];
  v5 = [v39 accountType];
  v6 = [v5 identifier];

  v7 = [MEMORY[0x277D03970] leafAccountTypesToCheckForEquality];
  v8 = [v7 containsObject:v6];

  if (v8)
  {
    v41 = v6;
    v38 = v4;
    v9 = v4[2](v4);
    v10 = [v39 identifier];
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
          v17 = [v16 backingAccountInfo];
          v18 = [v17 identifier];
          if (([v18 isEqualToString:v10] & 1) == 0)
          {
            v19 = [v17 accountType];
            v20 = [v19 identifier];
            v21 = [v20 isEqualToString:v41];

            if (v21)
            {
              if ([(DAAccount *)v40 isEqualToAccount:v16])
              {
                v22 = [v39 accountProperties];
                v23 = [v22 count];

                if (v23)
                {
                  v24 = [MEMORY[0x277D03970] DAAccountIdentifiersToIgnoreForUniquenessCheck];
                  v25 = [v39 objectForKeyedSubscript:v24];
                  v26 = [v25 containsObject:v18];

                  if ((v26 & 1) == 0)
                  {

                    v31 = obj;
                    v4 = v38;
                    v6 = v41;
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

    v4 = v38;
    v6 = v41;
  }

  v27 = [MEMORY[0x277D03970] leafAccountTypes];
  v28 = [v27 containsObject:v6];

  if (v28 && ([MEMORY[0x277D03970] DAAccountDoNotSaveReason], v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v39, "objectForKeyedSubscript:", v29), v30 = objc_claimAutoreleasedReturnValue(), v30, v29, v30))
  {
    v31 = DALoggingwithCategory();
    v32 = *(MEMORY[0x277D03988] + 5);
    if (os_log_type_enabled(v31, v32))
    {
      v33 = [MEMORY[0x277D03970] DAAccountDoNotSaveReason];
      v34 = [v39 objectForKeyedSubscript:v33];
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
  v3 = [v2 BOOLValue];

  return v3;
}

- (__CFData)exceptionsForDigest:(id)a3
{
  v4 = a3;
  v5 = [(DAAccount *)self exceptionsDict];
  v6 = [v4 da_hexString];

  v7 = [v5 objectForKeyedSubscript:v6];

  return v7;
}

- (void)setExceptions:(__CFData *)a3 forDigest:(id)a4
{
  v10 = a4;
  v6 = [(DAAccount *)self exceptionsDict];
  v7 = [v6 mutableCopy];

  if (a3)
  {
    if (!v7)
    {
      v7 = objc_opt_new();
    }

    v8 = [v10 da_hexString];
    [v7 setObject:a3 forKeyedSubscript:v8];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_8;
    }

    v8 = [v10 da_hexString];
    [v7 removeObjectForKey:v8];
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
  v2 = [(DAAccount *)self copyStorageSession];
  if (v2)
  {
    v3 = v2;
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
  v2 = [(DAAccount *)self backingAccountInfo];
  v3 = [v2 parentAccount];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)resetCertWarnings
{
  v2 = [(DAAccount *)self trustHandler];
  v3 = [v2 resetCertWarnings];

  return v3;
}

- (void)resetStatusReport
{
  v3 = objc_opt_new();
  [(DAAccount *)self setStatusReport:v3];

  v4 = [(DAAccount *)self persistentUUID];
  [(DAStatusReport *)self->_statusReport setPersistentUUID:v4];

  v5 = [(ACAccount *)self->_backingAccountInfo accountType];
  v6 = [v5 identifier];
  [(DAStatusReport *)self->_statusReport setAccountType:v6];

  v7 = [(DAAccount *)self accountDescription];
  [(DAStatusReport *)self->_statusReport setDisplayName:v7];

  v8 = [(DAAccount *)self protocolVersion];
  [(DAStatusReport *)self->_statusReport setProtocolVersion:v8];
}

- (BOOL)shouldFailAllTasks
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = [(DAAccount *)self backingAccountInfo];
  if (([v3 supportsAuthentication] & 1) == 0)
  {

    goto LABEL_10;
  }

  v4 = [(DAAccount *)self backingAccountInfo];
  v5 = [v4 isAuthenticated];

  if (v5)
  {
    goto LABEL_10;
  }

  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 4);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = [(DAAccount *)self backingAccountInfo];
    v9 = [v8 identifier];
    *buf = 138412546;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = v9;
    _os_log_impl(&dword_24844D000, v6, v7, "Account %@ (%{public}@) says it is not authenticated. Refreshing to be sure.", buf, 0x16u);
  }

  v10 = [(DAAccount *)self backingAccountInfo];
  [v10 refresh];

  v11 = [(DAAccount *)self backingAccountInfo];
  v12 = [v11 isAuthenticated];

  v13 = DALoggingwithCategory();
  v14 = os_log_type_enabled(v13, v7);
  if (v12)
  {
    if (v14)
    {
      v15 = [(DAAccount *)self backingAccountInfo];
      v16 = [v15 identifier];
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v16;
      _os_log_impl(&dword_24844D000, v13, v7, "Good news! Account %@ (%{public}@) is now authenticated after refreshing.", buf, 0x16u);
    }

    goto LABEL_10;
  }

  if (v14)
  {
    v33 = [(DAAccount *)self backingAccountInfo];
    v34 = [v33 identifier];
    *buf = 138412546;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = v34;
    _os_log_impl(&dword_24844D000, v13, v7, "Account %@ (%{public}@) is still not authenticated after refreshing.", buf, 0x16u);
  }

  v35 = [(DAAccount *)self backingAccountInfo];
  v36 = [v35 accountProperties];
  v37 = [v36 objectForKeyedSubscript:*MEMORY[0x277CF7930]];
  v38 = [v37 BOOLValue];

  if (v38)
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
        v40 = [(DAAccount *)self backingAccountInfo];
        v41 = [v40 identifier];
        *v45 = 138412546;
        v46 = self;
        v47 = 2114;
        v48 = v41;
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
      v42 = [(DAAccount *)self backingAccountInfo];
      v43 = [v42 identifier];
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v43;
      _os_log_impl(&dword_24844D000, v19, v7, "Not attempting request for account %@ because the backing account credential isn't authed %{public}@", buf, 0x16u);
    }

    goto LABEL_17;
  }

LABEL_10:
  v17 = [(DAAccount *)self backingAccountInfo];
  v18 = [v17 aa_isSuspended];

  if (v18)
  {
    v19 = DALoggingwithCategory();
    v20 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v23 = [(DAAccount *)self backingAccountInfo];
      v24 = [v23 identifier];
      *buf = 138543618;
      *&buf[4] = v22;
      *&buf[12] = 2114;
      *&buf[14] = v24;
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
      v31 = [(DAAccount *)self keychainAccessibilityType];
      *buf = 138543618;
      *&buf[4] = v30;
      *&buf[12] = 1024;
      *&buf[14] = v31;
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

- (BOOL)isEqualToAccount:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  Name = sel_getName(a2);
  [v5 handleFailureInMethod:a2 object:self file:@"DAAccount.m" lineNumber:1333 description:{@"%s MUST be implemented in ALL DAAccount subclasses.  Looks like it's missing in %@", Name, objc_opt_class()}];

  return 0;
}

- (BOOL)accountHasSignificantPropertyChangesWithChangeInfo:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v36 = a3;
  v40 = [v36 oldAccountProperties];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45[0] = @"DAAccountHost";
  v45[1] = @"DAAccountEmailAddress";
  v5 = [MEMORY[0x277D03970] DAAccountPrincipalPath];
  v45[2] = v5;
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
        v9 = [(DAAccount *)self backingAccountInfo];
        v10 = [v9 objectForKeyedSubscript:v8];
        v11 = [v10 length];
        if (v11 || ([v40 objectForKeyedSubscript:v8], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "length")))
        {
          v12 = self;
          v13 = [(DAAccount *)self backingAccountInfo];
          v14 = [v13 objectForKeyedSubscript:v8];
          v15 = [v40 objectForKeyedSubscript:v8];
          v16 = [v14 isEqualToString:v15];

          if (v11)
          {

            self = v12;
            if (!v16)
            {
              goto LABEL_21;
            }
          }

          else
          {

            self = v12;
            if ((v16 & 1) == 0)
            {
LABEL_21:
              v26 = 1;
              v20 = v36;
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

  v17 = [(DAAccount *)self backingAccountInfo];
  v18 = [v17 username];
  v19 = [v18 length];
  v20 = v36;
  if (!v19)
  {
    v3 = [v36 oldUsername];
    if (![v3 length])
    {
      v21 = self;

      goto LABEL_27;
    }
  }

  v21 = self;
  v22 = [(DAAccount *)self backingAccountInfo];
  v23 = [v22 username];
  v24 = [v36 oldUsername];
  v25 = [v23 isEqualToString:v24];

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
  v29 = [(DAAccount *)v21 useSSL];
  v30 = [v40 objectForKeyedSubscript:@"DAAccountUseSSL"];
  v31 = v30;
  if (v30)
  {
    v32 = [v30 BOOLValue];
  }

  else
  {
    v32 = 1;
  }

  obj = v31;
  if (v32 == v29)
  {
    v33 = [(DAAccount *)v21 objectForKeyedSubscript:@"DAAccountPort"];
    v34 = [v33 intValue];
    v35 = [v40 objectForKeyedSubscript:@"DAAccountPort"];
    v26 = v34 != [v35 intValue];
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
  v5 = [(DAAccount *)self accountID];
  v6 = [(DAAccount *)self persistentUUID];
  v7 = [v3 stringWithFormat:@"%@: accountID %@ persistentUUID %@", v4, v5, v6];

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
  v3 = [(DAAccount *)self dataclassPropertyURLsByDataclass];
  [v3 removeAllObjects];

  v4 = [(DAAccount *)self backingAccountInfo];
  [v4 reload];

  [(DAAccount *)self removeFromCoreDAVLoggingDelegates];
  [(DAAccount *)self ingestBackingAccountInfoProperties];

  [(DAAccount *)self addToCoreDAVLoggingDelegates];
}

- (id)accountTypeIdentifier
{
  v2 = [(ACAccount *)self->_backingAccountInfo accountType];
  v3 = [v2 identifier];

  return v3;
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

- (void)saveXpcActivity:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(DAAccount *)self removeXpcActivity];
  xpcActivity = self->_xpcActivity;
  self->_xpcActivity = v4;

  self->_continueCount = 0;
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = [(DAAccount *)self accountID];
    v10 = 138543362;
    v11 = v8;
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
      v6 = [(DAAccount *)self accountID];
      v8[0] = 67109378;
      v8[1] = continueCount;
      v9 = 2114;
      v10 = v6;
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
      v6 = [(DAAccount *)self accountID];
      v8[0] = 67109378;
      v8[1] = continueCount;
      v9 = 2114;
      v10 = v6;
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
        v8 = [(DAAccount *)self accountID];
        v12 = 138543362;
        v13 = v8;
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
        v8 = [(DAAccount *)self accountID];
        v12 = 138543362;
        v13 = v8;
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

- (void)webLoginRequestedAtURL:(id)a3 reasonString:(id)a4 inQueue:(id)a5 completionBlock:(id)a6
{
  v10 = a6;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __73__DAAccount_webLoginRequestedAtURL_reasonString_inQueue_completionBlock___block_invoke;
  v12[3] = &unk_278F13218;
  v13 = v10;
  v11 = v10;
  [(DAAccount *)self _webLoginRequestedAtURL:a3 reasonString:a4 inQueue:a5 completionBlock:v12];
}

void __73__DAAccount_webLoginRequestedAtURL_reasonString_inQueue_completionBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  (*(*(a1 + 32) + 16))();
}

- (void)_webLoginRequestedAtURL:(id)a3 reasonString:(id)a4 inQueue:(id)a5 completionBlock:(id)a6
{
  v9 = a5;
  v10 = a6;
  v11 = a3;
  v12 = [(DAAccount *)self persistentUUID];
  v13 = +[DAPowerAssertionManager sharedPowerAssertionManager];
  [v13 dropPowerAssertionsForGroupIdentifier:v12];

  v14 = sharedDAAccountStore();
  v15 = [(DAAccount *)self backingAccountInfo];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __74__DAAccount__webLoginRequestedAtURL_reasonString_inQueue_completionBlock___block_invoke;
  v19[3] = &unk_278F13268;
  v19[4] = self;
  v20 = v9;
  v21 = v12;
  v22 = v10;
  v16 = v10;
  v17 = v12;
  v18 = v9;
  [v14 openAuthenticationURL:v11 forAccount:v15 shouldConfirm:1 completion:v19];
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

- (BOOL)handleTrustChallenge:(id)a3
{
  v4 = a3;
  v5 = [(DAAccount *)self trustHandler];
  LOBYTE(self) = [v5 handleTrustChallenge:v4 forAccount:self];

  return self;
}

- (BOOL)handleTrustChallenge:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DAAccount *)self trustHandler];
  LOBYTE(self) = [v8 handleTrustChallenge:v7 forAccount:self completionHandler:v6];

  return self;
}

- (id)localizedIdenticalAccountFailureMessage
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  [v4 handleFailureInMethod:a2 object:self file:@"DAAccount.m" lineNumber:1588 description:{@"Account class %@ MUST implement %s", v5, sel_getName(a2)}];

  return 0;
}

- (id)localizedInvalidPasswordMessage
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  [v4 handleFailureInMethod:a2 object:self file:@"DAAccount.m" lineNumber:1593 description:{@"Account class %@ MUST implement %s", v5, sel_getName(a2)}];

  return 0;
}

- (void)dropAssertionsAndRenewCredentialsInQueue:(id)a3 withHandler:(id)a4
{
  v48 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = DALoggingwithCategory();
  v9 = MEMORY[0x277D03988];
  v10 = *(MEMORY[0x277D03988] + 5);
  if (os_log_type_enabled(v8, v10))
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [(DAAccount *)self wasUserInitiated];
    v14 = @"NO";
    if (v13)
    {
      v14 = @"YES";
    }

    *buf = 138543618;
    v45 = v12;
    v46 = 2114;
    v47 = v14;
    _os_log_impl(&dword_24844D000, v8, v10, "DataAccess is renewing credentials for account %{public}@ by forcing-prompt: %{public}@", buf, 0x16u);
  }

  v15 = [(DAAccount *)self backingAccountInfo];
  v16 = [v15 accountProperties];
  v17 = *MEMORY[0x277CF7930];
  v18 = [v16 objectForKeyedSubscript:*MEMORY[0x277CF7930]];

  if (v18)
  {
    v19 = [(DAAccount *)self backingAccountInfo];
    [v19 setAccountProperty:0 forKey:v17];

    v20 = sharedDAAccountStore();
    v21 = [(DAAccount *)self backingAccountInfo];
    v41 = 0;
    v22 = [v20 saveVerifiedAccount:v21 error:&v41];
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

  v26 = [(DAAccount *)self persistentUUID];
  v27 = +[DAPowerAssertionManager sharedPowerAssertionManager];
  [v27 dropPowerAssertionsForGroupIdentifier:v26];

  v42[0] = *MEMORY[0x277CB90A0];
  v28 = [MEMORY[0x277CCABB0] numberWithBool:{-[DAAccount wasUserInitiated](self, "wasUserInitiated")}];
  v43[0] = v28;
  v42[1] = *MEMORY[0x277CB9098];
  v29 = [MEMORY[0x277CCABB0] numberWithInt:{-[DAAccount wasUserInitiated](self, "wasUserInitiated") ^ 1}];
  v43[1] = v29;
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:2];

  v31 = sharedDAAccountStore();
  v32 = [(DAAccount *)self backingAccountInfo];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __92__DAAccount_AuthenticationExtensions__dropAssertionsAndRenewCredentialsInQueue_withHandler___block_invoke;
  v37[3] = &unk_278F132B8;
  v37[4] = self;
  v38 = v6;
  v39 = v26;
  v40 = v7;
  v33 = v7;
  v34 = v26;
  v35 = v6;
  [v31 renewCredentialsForAccount:v32 options:v30 completion:v37];

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

- (void)handleValidationError:(id)a3 completion:(id)a4
{
  v20 = a3;
  v6 = a4;
  v7 = [v20 domain];
  if (![v7 isEqualToString:@"DAAccountValidationDomain"])
  {

    goto LABEL_8;
  }

  v8 = [v20 code];

  if (v8 != 102)
  {
LABEL_8:
    v6[2](v6, 2, 0);
    goto LABEL_12;
  }

  v9 = [v20 userInfo];
  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

  v11 = [v10 userInfo];
  v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CFDB78]];

  v13 = [v12 CDVObjectForKeyCaseInsensitive:*MEMORY[0x277CFDB70]];
  if (![v13 length])
  {
    v15 = 0;
    v16 = 0;
LABEL_10:
    v19 = dataaccess_get_global_queue();
    [(DAAccount *)self dropAssertionsAndRenewCredentialsInQueue:v19 withHandler:v6];
    goto LABEL_11;
  }

  v14 = CDVExtractValuesFromRedirectString();
  v15 = [v14 objectForKeyedSubscript:*MEMORY[0x277CFE060]];
  v16 = [v14 objectForKeyedSubscript:*MEMORY[0x277CFE058]];

  if (!v15)
  {
    goto LABEL_10;
  }

  v17 = [(DAAccount *)self principalURL];
  v18 = [v15 CDVIsSafeRedirectForRequestURL:v17];

  if (!v18)
  {
    goto LABEL_10;
  }

  v19 = dataaccess_get_global_queue();
  [(DAAccount *)self _webLoginRequestedAtURL:v15 reasonString:v16 inQueue:v19 completionBlock:v6];
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
  v2 = ExchangeSyncLibraryCore();
  if (v2)
  {
    v2 = [getESAccountClass() oneshotListOfAccountIDs];
  }

  return v2;
}

+ (void)reacquireClientRestrictions:(id)a3
{
  v3 = a3;
  if (ExchangeSyncLibraryCore())
  {
    [getESAccountClass() reacquireClientRestrictions:v3];
  }
}

- (BOOL)accountHasSignificantPropertyChangesFromOldAccountInfo:(id)a3
{
  v4 = MEMORY[0x277D03908];
  v5 = a3;
  v6 = [v4 alloc];
  v24 = [(DAAccount *)self backingAccountInfo];
  v7 = [v24 identifier];
  v8 = self;
  v20 = self;
  v23 = [(DAAccount *)self backingAccountInfo];
  v22 = [v23 accountType];
  v9 = [v22 identifier];
  v18 = [v5 accountProperties];
  v21 = [(DAAccount *)self backingAccountInfo];
  v10 = [v21 username];
  v19 = [(DAAccount *)v8 backingAccountInfo];
  v11 = [v19 credential];
  v12 = [v11 password];
  v13 = [v5 username];
  v14 = [v5 credential];

  v15 = [v14 password];
  v16 = [v6 initWithChangeType:1 accountIdentifier:v7 accountTypeIdentifier:v9 oldAccountProperties:v18 username:v10 password:v12 oldUsername:v13 oldPassword:v15 modifiedDataClasses:0 clientName:0];

  LOBYTE(v10) = [(DAAccount *)v20 accountHasSignificantPropertyChangesWithChangeInfo:v16];
  return v10;
}

- (void)accountDidChangeFromOldAccountInfo:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(DAAccount *)self accountHasSignificantPropertyChangesFromOldAccountInfo:v4])
  {
    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v5, v6))
    {
      backingAccountInfo = self->_backingAccountInfo;
      v9 = 138412546;
      v10 = v4;
      v11 = 2112;
      v12 = backingAccountInfo;
      _os_log_impl(&dword_24844D000, v5, v6, "Account had significant property change, going to flush local data.\n\nOldProperties %@\n\nNewProperties %@", &v9, 0x16u);
    }

    [(DAAccount *)self _handleSignificantPropertyChanges:0];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)beginDownloadingAttachmentWithUUID:(id)a3 consumer:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = DALoggingwithCategory();
  v9 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = [(DAAccount *)self accountID];
    v14 = 138412546;
    v15 = v10;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_24844D000, v8, v9, "Downloading attachments is not supported on account ID %@. AttachmentUUID: %@", &v14, 0x16u);
  }

  v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:70 userInfo:0];
  [v7 downloadFinishedError:v11];

  v12 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)requestCalendarAvailabilityForStartDate:(id)a3 endDate:(id)a4 ignoredEventID:(id)a5 addresses:(id)a6 consumer:(id)a7
{
  v17 = *MEMORY[0x277D85DE8];
  v8 = a7;
  v9 = DALoggingwithCategory();
  v10 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v9, v10))
  {
    v11 = [(DAAccount *)self accountID];
    v15 = 138543362;
    v16 = v11;
    _os_log_impl(&dword_24844D000, v9, v10, "Requesting calendar availability is not supported on account with ID [%{public}@].", &v15, 0xCu);
  }

  v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:81 userInfo:0];
  [v8 calendarAvailabilityRequestFinishedWithError:v12];

  v13 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)cancelCalendarAvailabilityRequestWithID:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = [(DAAccount *)self accountID];
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_24844D000, v4, v5, "Cancelling calendar availability requests is not supported on account with ID [%{public}@].", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)requestGrantedDelegatesListWithConsumer:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = [(DAAccount *)self accountID];
    v11 = 138543362;
    v12 = v7;
    _os_log_impl(&dword_24844D000, v5, v6, "Requesting granted delegates list is not supported on account with ID [%{public}@].", &v11, 0xCu);
  }

  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:83 userInfo:0];
  [v4 grantedDelegatesListRequestFinishedWithResults:0 error:v8];

  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)cancelGrantedDelegatesListRequestWithID:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = [(DAAccount *)self accountID];
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_24844D000, v4, v5, "Cancelling granted delegates list requests is not supported on account with ID [%{public}@].", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)updateGrantedDelegatePermission:(id)a3 consumer:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = [(DAAccount *)self accountID];
    v12 = 138543362;
    v13 = v8;
    _os_log_impl(&dword_24844D000, v6, v7, "Update granted delegate permission is not supported on account with ID [%{public}@].", &v12, 0xCu);
  }

  v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:84 userInfo:0];
  [v5 updateGrantedDelegatePermissionFinishedWithError:v9];

  v10 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)cancelUpdateGrantedDelegatePermissionRequestWithID:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = [(DAAccount *)self accountID];
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_24844D000, v4, v5, "Cancelling update granted delegate permission requests is not supported on account with ID [%{public}@].", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)performCalendarDirectorySearchForTerms:(id)a3 recordTypes:(id)a4 resultLimit:(unint64_t)a5 consumer:(id)a6
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = a6;
  v8 = DALoggingwithCategory();
  v9 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = [(DAAccount *)self accountID];
    v14 = 138543362;
    v15 = v10;
    _os_log_impl(&dword_24844D000, v8, v9, "Performing a calendar directory search is not supported on account with ID [%{public}@].", &v14, 0xCu);
  }

  v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:85 userInfo:0];
  [v7 calendarDirectorySearchFinishedWithError:v11 exceededResultLimit:0];

  v12 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)performGroupExpansionForPrincipalPath:(id)a3 consumer:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = [(DAAccount *)self accountID];
    v11 = 138543362;
    v12 = v8;
    _os_log_impl(&dword_24844D000, v6, v7, "Performing a calendar directory search is not supported on account with ID [%{public}@].", &v11, 0xCu);
  }

  v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:85 userInfo:0];
  [v5 groupExpansionFinishedWithResults:0 error:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)cancelCalendarDirectorySearchWithID:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = [(DAAccount *)self accountID];
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_24844D000, v5, v6, "Cancelling calendar directory searches is not supported on account with ID [%{public}@].  searchID: [%@]", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)respondToShareRequestForCalendar:(id)a3 withResponse:(int64_t)a4 consumer:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = DALoggingwithCategory();
  v10 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v9, v10))
  {
    v11 = [(DAAccount *)self accountID];
    v15 = 138412546;
    v16 = v11;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_24844D000, v9, v10, "Responding to calendar shares is not supported on account ID %@. calendar ID: %@", &v15, 0x16u);
  }

  v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:76 userInfo:0];
  [v8 shareResponseFinishedWithError:v12];

  v13 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)reportShareRequestAsJunkForCalendar:(id)a3 consumer:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = DALoggingwithCategory();
  v9 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = [(DAAccount *)self accountID];
    v14 = 138412546;
    v15 = v10;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_24844D000, v8, v9, "Reporting calendar shares as junk is not supported on account ID %@. calendar ID: %@", &v14, 0x16u);
  }

  v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:76 userInfo:0];
  [v7 shareResponseFinishedWithError:v11];

  v12 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)fetchOfficeHoursWithConsumer:(id)a3 error:(id *)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = [(DAAccount *)self accountID];
    v11 = 138543362;
    v12 = v8;
    _os_log_impl(&dword_24844D000, v6, v7, "Fetching office hours is not supported on account ID %{public}@", &v11, 0xCu);
  }

  if (a4)
  {
    *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:88 userInfo:0];
  }

  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)setOfficeHours:(id)a3 withConsumer:(id)a4 error:(id *)a5
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = DALoggingwithCategory();
  v8 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = [(DAAccount *)self accountID];
    v12 = 138543362;
    v13 = v9;
    _os_log_impl(&dword_24844D000, v7, v8, "Setting office hours is not supported on account ID %{public}@", &v12, 0xCu);
  }

  if (a5)
  {
    *a5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:88 userInfo:0];
  }

  v10 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)unactionableICSRepresentationForMetaData:(id)a3 inFolderWithId:(id)a4 outSummary:(id *)a5
{
  if (a5)
  {
    *a5 = 0;
  }

  return 0;
}

- (void)updateOofSettingsWithParams:(id)a3 consumer:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v6, v7))
  {
    v10 = 138412290;
    v11 = self;
    _os_log_impl(&dword_24844D000, v6, v7, "Updating oof settings requested on account %@, which does not support it", &v10, 0xCu);
  }

  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:10 userInfo:0];
  [v5 settingsRequestFinishedWithResults:0 status:10 error:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)retrieveOofSettingsForConsumer:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v5, v6))
  {
    v9 = 138412290;
    v10 = self;
    _os_log_impl(&dword_24844D000, v5, v6, "Retrieving oof settings requested on account %@, which does not support it", &v9, 0xCu);
  }

  v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:10 userInfo:0];
  [v4 settingsRequestFinishedWithResults:0 status:10 error:v7];

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
    v8 = self;
    _os_log_impl(&dword_24844D000, v3, v4, "Checking if oof settings are supported on account %@, which does not support it", &v7, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)getPendingQueryQueue
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(DAAccount *)v2 pendingQueries];

  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(DAAccount *)v2 setPendingQueries:v4];

    v5 = dispatch_queue_create("com.apple.dataaccess.queryqueue", 0);
    [(DAAccount *)v2 setPendingQueryQueue:v5];

    v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-2.0];
    [(DAAccount *)v2 setLastQueryStartedTime:v6];
  }

  objc_sync_exit(v2);

  return [(DAAccount *)v2 pendingQueryQueue];
}

- (void)_dequeueQuery
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(DAAccount *)self getPendingQueryQueue];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v4 = [(DAAccount *)self pendingQueryQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __37__DAAccount_Searching___dequeueQuery__block_invoke;
  v8[3] = &unk_278F13618;
  v8[4] = self;
  v8[5] = &v9;
  dispatch_sync(v4, v8);

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

- (void)performSearchQuery:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DAAccount *)self getPendingQueryQueue];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v6 = [(DAAccount *)self pendingQueryQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__DAAccount_Searching__performSearchQuery___block_invoke;
  block[3] = &unk_278F13640;
  block[4] = self;
  v18 = &v19;
  v7 = v4;
  v17 = v7;
  dispatch_sync(v6, block);

  if (*(v20 + 24) == 1)
  {
    v8 = [(DAAccount *)self lastQueryStartedTime];
    [v8 timeIntervalSinceNow];
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

- (void)cancelSearchQuery:(id)a3
{
  v4 = a3;
  v5 = [(DAAccount *)self getPendingQueryQueue];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v6 = [(DAAccount *)self pendingQueryQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__DAAccount_Searching__cancelSearchQuery___block_invoke;
  block[3] = &unk_278F13668;
  block[4] = self;
  v7 = v4;
  v9 = v7;
  v10 = &v11;
  dispatch_sync(v6, block);

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
  v3 = [(DAAccount *)self getPendingQueryQueue];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__2;
  v20 = __Block_byref_object_dispose__2;
  v21 = 0;
  v4 = [(DAAccount *)self pendingQueryQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__DAAccount_Searching__cancelAllSearchQueries__block_invoke;
  block[3] = &unk_278F133A8;
  block[4] = self;
  block[5] = &v16;
  dispatch_sync(v4, block);

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
  v3 = [(DAAccount *)self pendingQueryQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__DAAccount_Searching__searchQueriesRunning__block_invoke;
  v6[3] = &unk_278F13618;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

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

- (void)_reallyPerformSearchQuery:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v5, v6))
  {
    v10 = 138412290;
    v11 = self;
    _os_log_impl(&dword_24844D000, v5, v6, "Search requested on account %@, which does not support it", &v10, 0xCu);
  }

  v7 = [v4 consumer];
  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:10 userInfo:0];
  [v7 searchQuery:v4 finishedWithError:v8];

  v9 = *MEMORY[0x277D85DE8];
}

@end