@interface MobileCalDAVAccount
- (BOOL)_reallySearchQueriesRunning;
- (BOOL)_rem_updateAccountProperties;
- (BOOL)_saveModifiedPrincipalsOnBackingAccount;
- (BOOL)_updateCalendarStoreNoDBOpen:(BOOL)a3;
- (BOOL)accountHasSignificantPropertyChangesFromOldAccountInfo:(id)a3;
- (BOOL)addressIsAccountOwner:(id)a3;
- (BOOL)isEqualToAccount:(id)a3;
- (BOOL)isWritable;
- (BOOL)retryDiscoveryTask:(id)a3;
- (BOOL)shouldFilterEventSyncTimeRange;
- (BOOL)shouldFilterSyncTimeRangeForInbox;
- (BOOL)shouldUseCalendarHomeSyncReport;
- (BOOL)supportsEvents;
- (BOOL)supportsReminders;
- (BOOL)upgradeAccount;
- (BOOL)wasMigrated;
- (CalDAVServerVersion)serverVersion;
- (DACoreDAVTaskManager)taskManager;
- (MobileCalDAVAccount)init;
- (MobileCalDAVAccount)initWithBackingAccountInfo:(id)a3;
- (NSArray)wellKnownPaths;
- (NSSet)calendars;
- (NSString)calendarHomeSyncToken;
- (NSTimeZone)viewedTimeZone;
- (NSURL)collectionSetURL;
- (NSURL)serverBaseURL;
- (id)_calendarConstraintsPath;
- (id)_calendarConstraintsResource;
- (id)emailAddresses;
- (id)host;
- (id)localizedIdenticalAccountFailureMessage;
- (id)localizedInvalidPasswordMessage;
- (id)principalPath;
- (id)spinnerIdentifiers;
- (id)username;
- (int)overriddenPort;
- (int64_t)coreDAVLogLevel;
- (void)_collectMoveActions;
- (void)_reallyCancelAllSearchQueries;
- (void)_reallyCancelSearchQuery:(id)a3;
- (void)_reallyPerformSearchQuery:(id)a3;
- (void)_rem_createAccountStore_whichReallyShouldNotHappen;
- (void)_syncEndedWithError:(id)a3;
- (void)_syncStarted;
- (void)addCalendar:(id)a3;
- (void)addPrincipal:(id)a3;
- (void)addToCoreDAVLoggingDelegates;
- (void)cancelRefreshWithCompletion:(id)a3;
- (void)coreDAVLogDiagnosticMessage:(id)a3 atLevel:(int64_t)a4;
- (void)coreDAVLogTransmittedDataPartial:(id)a3;
- (void)dealloc;
- (void)discoverInitialPropertiesWithConsumer:(id)a3;
- (void)discoveryTask:(id)a3 gotAccountInfo:(id)a4 error:(id)a5;
- (void)dropPowerAssertions;
- (void)ingestBackingAccountInfoProperties;
- (void)noteHomeSetOnDifferentHost:(id)a3;
- (void)performDiscoveryWithHostname:(id)a3 username:(id)a4 consumer:(id)a5;
- (void)reattainPowerAssertions;
- (void)refreshActor:(id)a3 didCompleteWithError:(id)a4;
- (void)refreshWithContext:(id)a3;
- (void)releasePowerAssertion;
- (void)reloadCalendars;
- (void)removeCalendar:(id)a3;
- (void)removeCalendarWithURL:(id)a3;
- (void)removeFromCoreDAVLoggingDelegates;
- (void)removePrincipal:(id)a3;
- (void)resetStatusReport;
- (void)retainPowerAssertion;
- (void)setAccountDescription:(id)a3;
- (void)setCalendarHomeSyncToken:(id)a3;
- (void)setCollectionSetURL:(id)a3;
- (void)setOverriddenScheme:(id)a3;
- (void)setOverriddenServer:(id)a3;
- (void)setPrincipalPath:(id)a3;
- (void)setPrincipalURL:(id)a3;
- (void)setSearchPropertySet:(id)a3;
- (void)setServerVersion:(id)a3;
- (void)task:(id)a3 didFinishWithError:(id)a4;
- (void)updateDelegates;
@end

@implementation MobileCalDAVAccount

- (void)ingestBackingAccountInfoProperties
{
  v49 = *MEMORY[0x277D85DE8];
  [(MobileCalDAVAccount *)self setMPrincipals:0];
  v3 = [(MobileCalDAVAccount *)self mainPrincipal];

  if (v3)
  {
    [(MobileCalDAVAccount *)self setMainPrincipal:0];
  }

  v4 = [(MobileCalDAVAccount *)self objectForKeyedSubscript:@"CalDAVMainPrincipalUID"];
  v5 = objc_opt_new();
  [(MobileCalDAVAccount *)self setMPrincipals:v5];

  [(MobileCalDAVAccount *)self objectForKeyedSubscript:@"CalDAVPrincipals"];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = v45 = 0u;
  obj = [v41 allKeys];
  v6 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v43;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v43 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v42 + 1) + 8 * i);
        v11 = [v41 valueForKey:v10];
        v12 = [[MobileCalDAVPrincipal alloc] initWithConfiguration:v11 principalUID:v10 account:self];
        v13 = [(MobileCalDAVAccount *)self mPrincipals];
        [v13 setObject:v12 forKeyedSubscript:v10];

        if (v4 && ([v10 isEqualToString:v4] & 1) != 0)
        {
          [(MobileCalDAVAccount *)self setMainPrincipal:v12];
        }

        else
        {
          v14 = [(MobileCalDAVAccount *)self mainPrincipal];
          v15 = v4 | v14;

          if (!v15)
          {
            [(MobileCalDAVAccount *)self setMainPrincipal:v12];
            v16 = [(MobileCalDAVAccount *)self mainPrincipal];
            v17 = [v16 uid];
            v18 = [(MobileCalDAVAccount *)self backingAccountInfo];
            [v18 setObject:v17 forKeyedSubscript:@"CalDAVMainPrincipalUID"];
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
    }

    while (v7);
  }

  v19 = [(MobileCalDAVAccount *)self mainPrincipal];

  if (!v19)
  {
    v20 = DALoggingwithCategory();
    v21 = *(MEMORY[0x277CF3AF0] + 6);
    if (os_log_type_enabled(v20, v21))
    {
      v22 = [(MobileCalDAVAccount *)self accountDescription];
      *buf = 138412290;
      v47 = v22;
      _os_log_impl(&dword_242490000, v20, v21, "No main principal found in the account properties for %@. Creating a new one.", buf, 0xCu);
    }

    v23 = [[MobileCalDAVPrincipal alloc] initWithConfiguration:0 principalUID:0 account:self];
    [(MobileCalDAVAccount *)self setMainPrincipal:v23];

    v24 = [(MobileCalDAVAccount *)self mainPrincipal];
    v25 = [v24 uid];
    v26 = [(MobileCalDAVAccount *)self backingAccountInfo];
    [v26 setObject:v25 forKeyedSubscript:@"CalDAVMainPrincipalUID"];

    v27 = [(MobileCalDAVAccount *)self mainPrincipal];
    [(MobileCalDAVAccount *)self addPrincipal:v27];
  }

  v28 = [(MobileCalDAVAccount *)self objectForKeyedSubscript:@"CalDAVMobileAccountSearchPropertySetKey_CoreDAV"];

  if (v28)
  {
    v29 = objc_alloc(MEMORY[0x277CF7018]);
    v30 = MEMORY[0x277CBEB98];
    v31 = [(MobileCalDAVAccount *)self objectForKeyedSubscript:@"CalDAVMobileAccountSearchPropertySetKey_CoreDAV"];
    v32 = [v30 setWithArray:v31];
    v33 = [v29 initWithStringProperties:v32];

    [(MobileCalDAVAccount *)self setSearchPropertySet:v33];
  }

  v34 = [(MobileCalDAVAccount *)self objectForKeyedSubscript:@"CalDAVMobileAccountIsWritable"];

  if (v34)
  {
    v35 = [(MobileCalDAVAccount *)self objectForKeyedSubscript:@"CalDAVMobileAccountIsWritable"];
    -[MobileCalDAVAccount setIsWritable:](self, "setIsWritable:", [v35 intValue] != 0);
  }

  else
  {
    [(MobileCalDAVAccount *)self setIsWritable:1];
  }

  v36 = MEMORY[0x277CF7040];
  v37 = [(MobileCalDAVAccount *)self objectForKeyedSubscript:@"CalDAVMobileAccountServerVersion"];
  v38 = [v36 versionWithPropertyValue:v37];
  [(MobileCalDAVAccount *)self setServerVersion:v38];

  [(MobileCalDAVAccount *)self setNeedsAccountPropertyRefresh:1];
  self->_wasMigrated = -1;

  v39 = *MEMORY[0x277D85DE8];
}

- (MobileCalDAVAccount)initWithBackingAccountInfo:(id)a3
{
  v9.receiver = self;
  v9.super_class = MobileCalDAVAccount;
  v3 = [(MobileCalDAVAccount *)&v9 initWithBackingAccountInfo:a3];
  if (v3)
  {
    if (initWithBackingAccountInfo__onceToken != -1)
    {
      [MobileCalDAVAccount initWithBackingAccountInfo:];
    }

    v4 = [MEMORY[0x277CF3A98] registerDefaultLoggerWithCoreDAV];
    v5 = [MEMORY[0x277CF3AE8] filenameWithBasename:@"CalDAVHTTPTraffic"];
    v6 = [objc_alloc(MEMORY[0x277CF3A98]) initWithFilename:v5];
    [(MobileCalDAVAccount *)v3 setCoreDAVLogger:v6];

    v7 = objc_opt_new();
    [(MobileCalDAVAccount *)v3 setSearchTaskSet:v7];
  }

  return v3;
}

void __50__MobileCalDAVAccount_initWithBackingAccountInfo___block_invoke()
{
  v0 = [MEMORY[0x277CF3A40] sharedLogger];
  [v0 registerWithiCalendar];
}

- (MobileCalDAVAccount)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"MobileCalDAVAccount.m" lineNumber:226 description:{@"Nothing to see here, buddy. Just turn around and leave quietly."}];

  return 0;
}

- (void)dealloc
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MobileCalDAVAccount.m" lineNumber:231 description:@"Account was deallocated while still refreshing. Ouch"];
}

- (BOOL)upgradeAccount
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(MobileCalDAVAccount *)self accountIntPropertyForKey:@"CalDAVAccountVersion"];
  v4 = v3;
  if (v3 <= 11200)
  {
    if (v3 <= 1)
    {
      v5 = [(MobileCalDAVAccount *)self mainPrincipal];
      v6 = [v5 legacy_principalURL];

      if (v6)
      {
        v7 = DALoggingwithCategory();
        v8 = *(MEMORY[0x277CF3AF0] + 6);
        if (os_log_type_enabled(v7, v8))
        {
          v9 = [(MobileCalDAVAccount *)self mainPrincipal];
          v10 = [v9 legacy_principalURL];
          *buf = 138412290;
          v20 = v10;
          _os_log_impl(&dword_242490000, v7, v8, "Upgrading principal URL from %@", buf, 0xCu);
        }

        v11 = [(MobileCalDAVAccount *)self mainPrincipal];
        v12 = [v11 legacy_principalURL];
        [(MobileCalDAVAccount *)self setPrincipalURL:v12];

        v13 = DALoggingwithCategory();
        if (os_log_type_enabled(v13, v8))
        {
          v14 = [(MobileCalDAVAccount *)self principalURL];
          *buf = 138412290;
          v20 = v14;
          _os_log_impl(&dword_242490000, v13, v8, "New principal URL is %@", buf, 0xCu);
        }
      }
    }

    [(MobileCalDAVAccount *)self setAccountIntProperty:11201 forKey:@"CalDAVAccountVersion"];
    [(MobileCalDAVAccount *)self saveModifiedPropertiesOnBackingAccount];
  }

  v18.receiver = self;
  v18.super_class = MobileCalDAVAccount;
  v15 = [(MobileCalDAVAccount *)&v18 upgradeAccount];
  v16 = *MEMORY[0x277D85DE8];
  return (v4 < 11201) | v15 & 1;
}

- (id)emailAddresses
{
  v2 = [(MobileCalDAVAccount *)self mainPrincipal];
  v3 = [v2 calendarUserAddresses];
  v4 = [v3 allObjects];
  v5 = [v4 valueForKey:@"absoluteString"];

  return v5;
}

- (void)setOverriddenServer:(id)a3
{
  v5 = a3;
  v4 = [(MobileCalDAVAccount *)self overriddenServer];
  if (v4 != v5 && ([v5 isEqualToString:v4] & 1) == 0)
  {
    [(MobileCalDAVAccount *)self setObject:v5 forKeyedSubscript:@"CalDAVMobileAccountOverriddenServer"];
  }
}

- (int)overriddenPort
{
  v2 = [(MobileCalDAVAccount *)self objectForKeyedSubscript:@"CalDAVMobileAccountOverriddenPort"];
  v3 = [v2 intValue];

  return v3;
}

- (void)setOverriddenScheme:(id)a3
{
  v5 = a3;
  v4 = [(MobileCalDAVAccount *)self overriddenScheme];
  if (v4 != v5 && ([v5 isEqualToString:v4] & 1) == 0)
  {
    [(MobileCalDAVAccount *)self setObject:v5 forKeyedSubscript:@"CalDAVMobileAccountOverriddenScheme"];
  }
}

- (id)principalPath
{
  v2 = [(MobileCalDAVAccount *)self mainPrincipal];
  v3 = [v2 principalPath];

  return v3;
}

- (void)setPrincipalPath:(id)a3
{
  v4 = a3;
  v5 = [(MobileCalDAVAccount *)self mainPrincipal];
  [v5 setPrincipalPath:v4];
}

- (void)setPrincipalURL:(id)a3
{
  v4 = a3;
  v5 = [v4 absoluteString];
  v6 = [v5 hasPrefix:@"/"];

  if (v6)
  {
    v7 = [v4 absoluteString];

    [(MobileCalDAVAccount *)self setPrincipalPath:v7];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = MobileCalDAVAccount;
    [(MobileCalDAVAccount *)&v8 setPrincipalURL:v4];
  }
}

- (NSURL)serverBaseURL
{
  v3 = MEMORY[0x277CBEBC0];
  v4 = MEMORY[0x277CCACA8];
  v5 = [(MobileCalDAVAccount *)self scheme];
  v6 = [(MobileCalDAVAccount *)self host];
  v7 = [v4 stringWithFormat:@"%@://%@:%ld", v5, v6, -[MobileCalDAVAccount port](self, "port")];
  v8 = [v3 URLWithString:v7];

  return v8;
}

- (void)noteHomeSetOnDifferentHost:(id)a3
{
  v8 = a3;
  v4 = [v8 scheme];
  -[MobileCalDAVAccount setUseSSL:](self, "setUseSSL:", [v4 isEqualToString:@"http"] ^ 1);

  v5 = [v8 host];
  [(MobileCalDAVAccount *)self setHost:v5];

  v6 = [v8 port];

  if (v6)
  {
    v7 = [v8 port];
    -[MobileCalDAVAccount setPort:](self, "setPort:", [v7 integerValue]);
  }

  [(MobileCalDAVAccount *)self setShouldDoInitialAutodiscovery:1];
  [(MobileCalDAVAccount *)self saveAccountProperties];
}

- (void)setAccountDescription:(id)a3
{
  v4.receiver = self;
  v4.super_class = MobileCalDAVAccount;
  [(MobileCalDAVAccount *)&v4 setAccountDescription:a3];
  [(MobileCalDAVAccount *)self _updateCalendarStore:0];
}

- (NSURL)collectionSetURL
{
  v2 = MEMORY[0x277CBEBC0];
  v3 = [(MobileCalDAVAccount *)self objectForKeyedSubscript:@"CalDAVMobileAccountCollectionSetName"];
  v4 = [v2 URLWithString:v3];

  return v4;
}

- (void)setCollectionSetURL:(id)a3
{
  v4 = [a3 absoluteString];
  [(MobileCalDAVAccount *)self setObject:v4 forKeyedSubscript:@"CalDAVMobileAccountCollectionSetName"];
}

- (void)setSearchPropertySet:(id)a3
{
  v11 = a3;
  v5 = [(MobileCalDAVAccount *)self searchPropertySet];

  if (v5 != v11)
  {
    objc_storeStrong(&self->_searchPropertySet, a3);
    v6 = [(MobileCalDAVAccount *)self searchPropertySet];
    v7 = [v6 stringProperties];
    v8 = [v7 allObjects];
    v9 = [v8 sortedArrayUsingSelector:sel_compare_];
    v10 = [(MobileCalDAVAccount *)self backingAccountInfo];
    [v10 setObject:v9 forKeyedSubscript:@"CalDAVMobileAccountSearchPropertySetKey_CoreDAV"];
  }
}

- (BOOL)isWritable
{
  v2 = [(MobileCalDAVAccount *)self objectForKeyedSubscript:@"CalDAVMobileAccountIsWritable"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)wasMigrated
{
  wasMigrated = self->_wasMigrated;
  if (wasMigrated == -1)
  {
    v4 = [(DAAccount *)self rem_account];
    v5 = v4;
    if (v4)
    {
      self->_wasMigrated = [v4 daWasMigrated];
    }

    wasMigrated = self->_wasMigrated;
  }

  return wasMigrated == 1;
}

- (void)addCalendar:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v5, v6))
  {
    if ([v4 isSubscribed])
    {
      v7 = @"subscribed ";
    }

    else
    {
      v7 = &stru_2854B8D68;
    }

    v8 = [v4 calendarURLString];
    v11 = 138412802;
    v12 = v7;
    v13 = 2048;
    v14 = v4;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_242490000, v5, v6, "Adding %@calendar %p with url %@", &v11, 0x20u);
  }

  v9 = [(MobileCalDAVAccount *)self calendars];
  [v9 addObject:v4];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)removeCalendar:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v5, v6))
  {
    if ([v4 isSubscribed])
    {
      v7 = @"subscribed ";
    }

    else
    {
      v7 = &stru_2854B8D68;
    }

    v8 = [v4 calendarURLString];
    v11 = 138412802;
    v12 = v7;
    v13 = 2048;
    v14 = v4;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_242490000, v5, v6, "Removing %@calendar %p at url %@", &v11, 0x20u);
  }

  [v4 deleteCalendar];
  v9 = [(MobileCalDAVAccount *)self calendars];
  [v9 removeObject:v4];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)removeCalendarWithURL:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v5, v6))
  {
    *buf = 138412290;
    v27 = v4;
    _os_log_impl(&dword_242490000, v5, v6, "Removing calendar with url %@", buf, 0xCu);
  }

  v20 = v4;
  v7 = [v4 absoluteString];
  v8 = [(MobileCalDAVAccount *)self calendars];
  v9 = [v8 copy];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v21 + 1) + 8 * i);
        v16 = [v15 calendarURL];
        v17 = [v16 absoluteString];
        v18 = [v17 isEqualToString:v7];

        if (v18)
        {
          [(MobileCalDAVAccount *)self removeCalendar:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v12);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (NSSet)calendars
{
  v43 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  v26 = v2;
  v3 = [(MobileCalDAVAccount *)v2 mCalendars];

  if (!v3)
  {
    v28 = objc_opt_new();
    [(DAAccount *)v2 rem_account];
    v24 = v33 = 0;
    v25 = [v24 fetchListsIncludingSpecialContainersWithError:&v33];
    v23 = v33;
    if (v23)
    {
      v4 = DALoggingwithCategory();
      v5 = *(MEMORY[0x277CF3AF0] + 3);
      log = v4;
      if (os_log_type_enabled(v4, v5))
      {
        v6 = [(MobileCalDAVAccount *)v2 accountDescription];
        *buf = 138412290;
        v35 = v6;
        _os_log_impl(&dword_242490000, log, v5, "MobileCalDAVAccount: Failed to fetch lists from account {%@}", buf, 0xCu);
      }
    }

    else
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      log = v25;
      v7 = [log countByEnumeratingWithState:&v29 objects:v42 count:16];
      if (v7)
      {
        v8 = *v30;
        v9 = *(MEMORY[0x277CF3AF0] + 7);
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v30 != v8)
            {
              objc_enumerationMutation(log);
            }

            v11 = *(*(&v29 + 1) + 8 * i);
            v12 = [(MobileCalDAVAccount *)v2 mainPrincipal];
            v13 = [MobileCalDAVCalendar calendarWithREMList:v11 principal:v12];

            v14 = DALoggingwithCategory();
            if (os_log_type_enabled(v14, v9))
            {
              v15 = [v13 calendarURLString];
              v16 = [v13 guid];
              *buf = 138413058;
              v35 = v13;
              v36 = 2112;
              v37 = v11;
              v38 = 2112;
              v39 = v15;
              v40 = 2112;
              v41 = v16;
              _os_log_impl(&dword_242490000, v14, v9, "MobileCalDAVAccount: Created calendar %@ from REM %@ with url %@ guid %@", buf, 0x2Au);

              v2 = v26;
            }

            if (v13)
            {
              v17 = DALoggingwithCategory();
              if (os_log_type_enabled(v17, v9))
              {
                v18 = [v13 calendarURLString];
                v19 = [v13 guid];
                *buf = 134218498;
                v35 = v13;
                v36 = 2112;
                v37 = v18;
                v38 = 2112;
                v39 = v19;
                _os_log_impl(&dword_242490000, v17, v9, "MobileCalDAVAccount: Loaded calendar %p with URL %@ guid %@", buf, 0x20u);
              }

              [v28 addObject:v13];
            }
          }

          v7 = [log countByEnumeratingWithState:&v29 objects:v42 count:16];
        }

        while (v7);
      }
    }

    [(MobileCalDAVAccount *)v2 setMCalendars:v28];
  }

  objc_sync_exit(v2);

  v20 = [(MobileCalDAVAccount *)v2 mCalendars];
  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (void)reloadCalendars
{
  obj = self;
  objc_sync_enter(obj);
  [(MobileCalDAVAccount *)obj setMCalendars:0];
  objc_sync_exit(obj);
}

- (void)addPrincipal:(id)a3
{
  v12 = a3;
  v4 = [(MobileCalDAVAccount *)self mPrincipals];
  v5 = [v12 uid];
  [v4 setObject:v12 forKeyedSubscript:v5];

  [v12 setAccount:self];
  v6 = [(MobileCalDAVAccount *)self backingAccountInfo];
  v7 = [v6 objectForKeyedSubscript:@"CalDAVPrincipals"];
  v8 = [v7 mutableCopy];

  if (!v8)
  {
    v8 = objc_opt_new();
  }

  v9 = [v12 configuration];
  v10 = [v12 uid];
  [v8 setObject:v9 forKeyedSubscript:v10];

  v11 = [(MobileCalDAVAccount *)self backingAccountInfo];
  [v11 setObject:v8 forKeyedSubscript:@"CalDAVPrincipals"];
}

- (void)removePrincipal:(id)a3
{
  v4 = a3;
  v5 = [(MobileCalDAVAccount *)self backingAccountInfo];
  v6 = [v5 objectForKeyedSubscript:@"CalDAVPrincipals"];
  v11 = [v6 mutableCopy];

  if (!v11)
  {
    v11 = objc_opt_new();
  }

  v7 = [v4 uid];
  [v11 removeObjectForKey:v7];

  v8 = [(MobileCalDAVAccount *)self backingAccountInfo];
  [v8 setObject:v11 forKeyedSubscript:@"CalDAVPrincipals"];

  v9 = [(MobileCalDAVAccount *)self mPrincipals];
  v10 = [v4 uid];

  [v9 removeObjectForKey:v10];
}

- (CalDAVServerVersion)serverVersion
{
  serverVersion = self->_serverVersion;
  if (!serverVersion)
  {
    v4 = MEMORY[0x277CF7040];
    v5 = [(MobileCalDAVAccount *)self objectForKeyedSubscript:@"CalDAVMobileAccountServerVersion"];
    v6 = [v4 versionWithPropertyValue:v5];
    v7 = self->_serverVersion;
    self->_serverVersion = v6;

    serverVersion = self->_serverVersion;
  }

  return serverVersion;
}

- (void)setServerVersion:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(MobileCalDAVAccount *)self serverVersion];
  v7 = [v5 isEqual:v6];

  if ((v7 & 1) == 0)
  {
    v8 = DALoggingwithCategory();
    v9 = *(MEMORY[0x277CF3AF0] + 6);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = [(MobileCalDAVAccount *)self serverVersion];
      v14 = 138412546;
      v15 = v5;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_242490000, v8, v9, "Setting CalDAV server version to '%@' (currently '%@')", &v14, 0x16u);
    }

    objc_storeStrong(&self->_serverVersion, a3);
    v11 = [v5 propertyValue];
    [(MobileCalDAVAccount *)self setObject:v11 forKeyedSubscript:@"CalDAVMobileAccountServerVersion"];

    v12 = DALoggingwithCategory();
    if (os_log_type_enabled(v12, v9))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_242490000, v12, v9, "Updating calendar store and saving account properties since CalDAV server version changed", &v14, 2u);
    }

    [(MobileCalDAVAccount *)self _updateCalendarStore:0];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (NSTimeZone)viewedTimeZone
{
  v2 = CalCopyDefaultTimeZone();

  return v2;
}

- (BOOL)shouldFilterEventSyncTimeRange
{
  v3 = [(MobileCalDAVAccount *)self serverVersion];
  if ([v3 supportsTimeRangeFilter])
  {
    v4 = [(MobileCalDAVAccount *)self preferredEventDaysToSync]> 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)shouldFilterSyncTimeRangeForInbox
{
  v3 = [(MobileCalDAVAccount *)self shouldFilterEventSyncTimeRange];
  if (v3)
  {
    v4 = [(MobileCalDAVAccount *)self serverVersion];
    v5 = [v4 supportsTimeRangeFilterOnInbox];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (BOOL)supportsReminders
{
  if ([MEMORY[0x277CF3AC8] calDAVRemindersForAll])
  {
    return 1;
  }

  v4 = [(MobileCalDAVAccount *)self serverVersion];
  v5 = [v4 type];
  v6 = [v5 isEqualToString:*MEMORY[0x277CF70A0]];

  if (v6)
  {
    return 0;
  }

  v7 = MEMORY[0x277CF7048];
  v8 = [(MobileCalDAVAccount *)self mainPrincipal];
  v9 = [v8 supportedCalendarComponentSets];
  LOBYTE(v7) = [v7 allowedCalendars:v9 contains:@"VTODO"];

  return v7;
}

- (BOOL)supportsEvents
{
  v2 = MEMORY[0x277CF7048];
  v3 = [(MobileCalDAVAccount *)self mainPrincipal];
  v4 = [v3 supportedCalendarComponentSets];
  LOBYTE(v2) = [v2 allowedCalendars:v4 contains:@"VEVENT"];

  return v2;
}

- (DACoreDAVTaskManager)taskManager
{
  v3 = *MEMORY[0x277CF3A48];
  v4 = *(&self->super.super.isa + v3);
  if (!v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CF3AA0]) initWithAccount:self];
    v6 = *(&self->super.super.isa + v3);
    *(&self->super.super.isa + v3) = v5;

    v4 = *(&self->super.super.isa + v3);
  }

  return v4;
}

- (BOOL)shouldUseCalendarHomeSyncReport
{
  v2 = [(MobileCalDAVAccount *)self serverVersion];
  if ([v2 supportsCalendarHomeSync])
  {
    v3 = 1;
  }

  else
  {
    v3 = [MEMORY[0x277CF3AC8] alwaysUseCalendarHomeSync];
  }

  return v3;
}

- (id)host
{
  v3 = self->_hostForDiscovery;
  if (!v3)
  {
    v5.receiver = self;
    v5.super_class = MobileCalDAVAccount;
    v3 = [(MobileCalDAVAccount *)&v5 host];
  }

  return v3;
}

- (id)username
{
  v3 = self->_usernameForDiscovery;
  if (!v3)
  {
    v5.receiver = self;
    v5.super_class = MobileCalDAVAccount;
    v3 = [(MobileCalDAVAccount *)&v5 username];
  }

  return v3;
}

- (id)_calendarConstraintsResource
{
  v2 = [(MobileCalDAVAccount *)self serverVersion];
  if ([v2 supportsTimeRangeFilter] && (objc_msgSend(v2, "supportsTimeRangeFilterWithoutEndDate") & 1) == 0)
  {
    v3 = [v2 supportsAutoSchedule];
    v9 = [v2 supportsPrivateComments];
    v5 = @"FutureLimitedCalDAVCalendarConstraintsNoScheduleNoComments";
    v6 = v9 == 0;
    v7 = @"FutureLimitedCalDAVCalendarConstraintsNoComments";
    if (v9)
    {
      v5 = @"FutureLimitedCalDAVCalendarConstraintsNoSchedule";
    }

    v8 = @"FutureLimitedCalDAVCalendarConstraints";
  }

  else
  {
    v3 = [v2 supportsAutoSchedule];
    v4 = [v2 supportsPrivateComments];
    v5 = @"CalDAVCalendarConstraintsNoScheduleNoComments";
    v6 = v4 == 0;
    v7 = @"CalDAVCalendarConstraintsNoComments";
    if (v4)
    {
      v5 = @"CalDAVCalendarConstraintsNoSchedule";
    }

    v8 = @"CalDAVCalendarConstraints";
  }

  if (v6)
  {
    v8 = v7;
  }

  if (v3)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  return v10;
}

- (id)_calendarConstraintsPath
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [(MobileCalDAVAccount *)self _calendarConstraintsResource];
  v5 = [v3 pathForResource:v4 ofType:@"plist"];

  return v5;
}

- (NSString)calendarHomeSyncToken
{
  v2 = [(DAAccount *)self rem_account];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 externalModificationTag];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setCalendarHomeSyncToken:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MobileCalDAVAccount *)self calendarHomeSyncToken];
  v6 = [(DAAccount *)self rem_account];
  if (v6 && v5 != v4 && ([v4 isEqualToString:v5] & 1) == 0)
  {
    v7 = [(DAAccount *)self rem_saveRequest];
    v8 = [v7 updateAccount:v6];
    [v8 setExternalModificationTag:v4];
    v14 = 0;
    v9 = [v7 saveSynchronouslyWithError:&v14];
    v10 = v14;
    if ((v9 & 1) == 0)
    {
      v11 = DALoggingwithCategory();
      v12 = *(MEMORY[0x277CF3AF0] + 3);
      if (os_log_type_enabled(v11, v12))
      {
        *buf = 138543362;
        v16 = v10;
        _os_log_impl(&dword_242490000, v11, v12, "Error saving CalendarHomeSyncToken: %{public}@", buf, 0xCu);
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)_rem_updateAccountProperties
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [(DAAccount *)self rem_account];
  if (v3)
  {
    v4 = [(DAAccount *)self rem_saveRequest];
    v5 = [v4 updateAccount:v3];
    v6 = [(MobileCalDAVAccount *)self accountDescription];
    [v5 setName:v6];

    v7 = [(MobileCalDAVAccount *)self accountID];
    [v5 setExternalIdentifier:v7];

    v8 = [(MobileCalDAVAccount *)self _calendarConstraintsPath];
    [v5 setDaConstraintsDescriptionPath:v8];

    v9 = [(MobileCalDAVAccount *)self mainPrincipal];
    if ([v9 canCreateCalendars])
    {
      v10 = [(MobileCalDAVAccount *)self serverVersion];
      v11 = [v10 type];
      [v5 setDaAllowsCalendarAddDeleteModify:{objc_msgSend(v11, "isEqualToString:", *MEMORY[0x277CF70A0]) ^ 1}];
    }

    else
    {
      [v5 setDaAllowsCalendarAddDeleteModify:0];
    }

    v13 = [(MobileCalDAVAccount *)self serverVersion];
    [v5 setDaSupportsSharedCalendars:{objc_msgSend(v13, "supportsSharing")}];

    v14 = [v5 changedKeys];
    v15 = [v14 count];

    v12 = v15 != 0;
    if (v15)
    {
      v22 = 0;
      v16 = [v4 saveSynchronouslyWithError:&v22];
      v17 = v22;
      if ((v16 & 1) == 0)
      {
        v18 = DALoggingwithCategory();
        v19 = *(MEMORY[0x277CF3AF0] + 3);
        if (os_log_type_enabled(v18, v19))
        {
          *buf = 138543362;
          v24 = v17;
          _os_log_impl(&dword_242490000, v18, v19, "Error saving account properties: %{public}@", buf, 0xCu);
        }
      }
    }
  }

  else
  {
    v12 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)_rem_createAccountStore_whichReallyShouldNotHappen
{
  v3 = [(DAAccount *)self rem_store];
  v4 = [(MobileCalDAVAccount *)self accountID];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __73__MobileCalDAVAccount__rem_createAccountStore_whichReallyShouldNotHappen__block_invoke;
  v5[3] = &unk_278D4F2F0;
  v5[4] = self;
  [v3 updateAccountWithAccountID:v4 restartDA:0 completion:v5];
}

void __73__MobileCalDAVAccount__rem_createAccountStore_whichReallyShouldNotHappen__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = DALoggingwithCategory();
  v9 = v8;
  if (v7)
  {
    v10 = *(MEMORY[0x277CF3AF0] + 3);
    if (os_log_type_enabled(v8, v10))
    {
      v11 = [*(a1 + 32) accountID];
      v17 = 138543618;
      v18 = v11;
      v19 = 2114;
      v20 = v7;
      _os_log_impl(&dword_242490000, v9, v10, "MobileCalDAVAccount: _rem_createAccountStore: Error from updateAccountWithAccountID: %{public}@, error: %{public}@", &v17, 0x16u);
    }
  }

  else
  {
    v12 = *(MEMORY[0x277CF3AF0] + 4);
    if (os_log_type_enabled(v8, v12))
    {
      v13 = [*(a1 + 32) accountID];
      v14 = [MEMORY[0x277CCABB0] numberWithBool:a2];
      v15 = [MEMORY[0x277CCABB0] numberWithBool:a3];
      v17 = 138543874;
      v18 = v13;
      v19 = 2114;
      v20 = v14;
      v21 = 2114;
      v22 = v15;
      _os_log_impl(&dword_242490000, v9, v12, "MobileCalDAVAccount: Done updateAccountWithAccountID: %{public}@, didAdd: %{public}@, didUpdate: %{public}@", &v17, 0x20u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)_updateCalendarStoreNoDBOpen:(BOOL)a3
{
  v3 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v5 = [(DAAccount *)self rem_account];
  if (!v5)
  {
    v6 = DALoggingwithCategory();
    v7 = v6;
    v8 = 3;
    if (v3)
    {
      v8 = 0;
    }

    v9 = *(MEMORY[0x277CF3AF0] + v8);
    if (os_log_type_enabled(v6, v9))
    {
      v10 = [(MobileCalDAVAccount *)self accountID];
      v21 = 138543362;
      v22 = v10;
      _os_log_impl(&dword_242490000, v7, v9, "MobileCalDAVAccount: Account missing. Calling _rem_createAccountStore now which is not quite a use case we expect for DA in remindd nowadays {accountID: %{public}@}", &v21, 0xCu);
    }

    if (v3)
    {
      [(MobileCalDAVAccount *)self _rem_createAccountStore_whichReallyShouldNotHappen];
    }
  }

  v11 = [(MobileCalDAVAccount *)self mainPrincipal];
  v12 = [v11 isDelegate];

  if (!v5)
  {
    v15 = DALoggingwithCategory();
    v14 = v15;
    v16 = 3;
    if (v3)
    {
      v16 = 0;
    }

    v17 = *(MEMORY[0x277CF3AF0] + v16);
    if (os_log_type_enabled(v15, v17))
    {
      v18 = [(MobileCalDAVAccount *)self accountID];
      v21 = 138543362;
      v22 = v18;
      _os_log_impl(&dword_242490000, v14, v17, "Couldn't update ReminderKit account because one doesn't exist in the database {accountID: %{public}@}", &v21, 0xCu);
    }

    v13 = 0;
    goto LABEL_16;
  }

  v13 = [(MobileCalDAVAccount *)self _rem_updateAccountProperties];
  if (v12)
  {
    v14 = [(MobileCalDAVAccount *)self refreshContext];
    [v14 setIsPrincipalOnly:1];
LABEL_16:
  }

  v19 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)spinnerIdentifiers
{
  v3 = spinnerIdentifiers_sSpinnerIdentifiers;
  if (spinnerIdentifiers_sSpinnerIdentifiers)
  {
  }

  else
  {
    spinnerIdentifiers_sSpinnerIdentifiers = &unk_2854BF720;

    v3 = &unk_2854BF720;
  }

  return v3;
}

- (void)_syncStarted
{
  [(MobileCalDAVAccount *)self _setSpinning:1];
  v3 = [MEMORY[0x277D447F0] sync];
  v4 = os_signpost_id_make_with_pointer(v3, self);
  v5 = v3;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_242490000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "CalDAV.sync", &unk_2424C3675, v7, 2u);
  }
}

- (void)_syncEndedWithError:(id)a3
{
  v4 = [MEMORY[0x277D447F0] sync];
  v5 = os_signpost_id_make_with_pointer(v4, self);
  v6 = v4;
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&dword_242490000, v7, OS_SIGNPOST_INTERVAL_END, v5, "CalDAV.sync", &unk_2424C3675, v8, 2u);
  }

  [(MobileCalDAVAccount *)self _setSpinning:0];
}

- (void)cancelRefreshWithCompletion:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = [(MobileCalDAVAccount *)self accountDescription];
    v8 = [(MobileCalDAVAccount *)self accountID];
    *buf = 138412546;
    v21 = v7;
    v22 = 2114;
    v23 = v8;
    _os_log_impl(&dword_242490000, v5, v6, "Canceling MobileCalDAVAccount refresh for account %@ (%{public}@)", buf, 0x16u);
  }

  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __51__MobileCalDAVAccount_cancelRefreshWithCompletion___block_invoke;
  v17 = &unk_278D4F318;
  v18 = self;
  v19 = v4;
  v9 = v4;
  v10 = MEMORY[0x245D0F810](&v14);
  v11 = [(MobileCalDAVAccount *)self actor:v14];

  if (v11)
  {
    v12 = [(MobileCalDAVAccount *)self actor];
    [v12 cancelWithCompletion:v10];
  }

  else
  {
    v10[2](v10);
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __51__MobileCalDAVAccount_cancelRefreshWithCompletion___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + *MEMORY[0x277CF3A48]) shutdown];
  v2 = DALoggingwithCategory();
  v3 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v2, v3))
  {
    *v5 = 0;
    _os_log_impl(&dword_242490000, v2, v3, "CalDAV task manager has been shut down.", v5, 2u);
  }

  return (*(*(a1 + 40) + 16))();
}

- (BOOL)_saveModifiedPrincipalsOnBackingAccount
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = [(MobileCalDAVAccount *)self backingAccountInfo];
  v4 = [v3 objectForKeyedSubscript:@"CalDAVPrincipals"];
  v5 = [v4 mutableCopy];

  if (!v5)
  {
    v5 = objc_opt_new();
  }

  v6 = [v5 allKeys];
  v7 = [v6 mutableCopy];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v35 = self;
  v8 = [(MobileCalDAVAccount *)self principals];
  v9 = [v8 allValues];

  v10 = [v9 countByEnumeratingWithState:&v40 objects:v47 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v41;
    v14 = *(MEMORY[0x277CF3AF0] + 6);
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v41 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v40 + 1) + 8 * i);
        v17 = [v16 uid];
        [v7 removeObject:v17];

        if ([v16 isDirty])
        {
          v18 = DALoggingwithCategory();
          if (os_log_type_enabled(v18, v14))
          {
            v19 = [v16 uid];
            *buf = 138543362;
            v46 = v19;
            _os_log_impl(&dword_242490000, v18, v14, "Principal %{public}@ is dirty", buf, 0xCu);
          }

          v20 = [v16 configuration];
          v21 = [v16 uid];
          [v5 setObject:v20 forKeyedSubscript:v21];

          v12 = 1;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v40 objects:v47 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v22 = v7;
  v23 = [v22 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v37;
    v26 = *(MEMORY[0x277CF3AF0] + 6);
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v37 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v28 = *(*(&v36 + 1) + 8 * j);
        v29 = DALoggingwithCategory();
        if (os_log_type_enabled(v29, v26))
        {
          *buf = 138543362;
          v46 = v28;
          _os_log_impl(&dword_242490000, v29, v26, "Principal %{public}@ was deleted.", buf, 0xCu);
        }

        [v5 removeObjectForKey:v28];
      }

      v24 = [v22 countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v24);
    v12 = 1;
  }

  v30 = [(MobileCalDAVAccount *)v35 backingAccountInfo];
  [v30 setObject:v5 forKeyedSubscript:@"CalDAVPrincipals"];

  if (v12)
  {
    v31 = DALoggingwithCategory();
    v32 = *(MEMORY[0x277CF3AF0] + 6);
    if (os_log_type_enabled(v31, v32))
    {
      *buf = 0;
      _os_log_impl(&dword_242490000, v31, v32, "Principals changed", buf, 2u);
    }
  }

  v33 = *MEMORY[0x277D85DE8];
  return v12 & 1;
}

- (void)refreshActor:(id)a3 didCompleteWithError:(id)a4
{
  v113[3] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if ([(MobileCalDAVAccount *)self isRefreshing])
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [MobileCalDAVAccount refreshActor:a2 didCompleteWithError:self];
    if (v7)
    {
      goto LABEL_3;
    }
  }

  [MobileCalDAVAccount refreshActor:a2 didCompleteWithError:self];
LABEL_3:
  [(MobileCalDAVAccount *)self _syncEndedWithError:v8];
  [(MobileCalDAVAccount *)self releasePowerAssertion];
  v9 = [(MobileCalDAVAccount *)self mainPrincipal];
  v10 = [v9 APSTopic];
  if (![v10 length])
  {

    goto LABEL_9;
  }

  v11 = [(MobileCalDAVAccount *)self mainPrincipal];
  v12 = [v11 supportsPush];

  if (v12)
  {
LABEL_9:
    v19 = 0;
    goto LABEL_10;
  }

  v13 = DALoggingwithCategory();
  v14 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v13, v14))
  {
    *buf = 0;
    _os_log_impl(&dword_242490000, v13, v14, "Saving accounts to update push information from an upgrade", buf, 2u);
  }

  v15 = [(MobileCalDAVAccount *)self mainPrincipal];
  v16 = [v15 APSTopic];
  v17 = [v16 length] != 0;
  v18 = [(MobileCalDAVAccount *)self mainPrincipal];
  [v18 setSupportsPush:v17];

  v19 = 1;
LABEL_10:
  v20 = [(MobileCalDAVAccount *)self mainPrincipal];
  v21 = [v20 shouldUpdatePushDelegate];

  if (v21)
  {
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277CF3AF0] + 6);
    if (os_log_type_enabled(v22, v23))
    {
      *buf = 0;
      _os_log_impl(&dword_242490000, v22, v23, "Saving accounts to update push information", buf, 2u);
    }

    v24 = [(MobileCalDAVAccount *)self mainPrincipal];
    [v24 setShouldUpdatePushDelegate:0];

    v25 = [(MobileCalDAVAccount *)self mainPrincipal];
    v26 = [v25 APSTopic];
    v27 = [v26 length] != 0;
    v28 = [(MobileCalDAVAccount *)self mainPrincipal];
    [v28 setSupportsPush:v27];

    v19 = 1;
  }

  v29 = [(MobileCalDAVAccount *)self saveModifiedPropertiesOnBackingAccount];
  v30 = [(MobileCalDAVAccount *)self _saveModifiedSubscribedCalendarsOnBackingAccount];
  v31 = [v7 context];
  v32 = [v31 shouldSaveAccounts];

  if (v32)
  {
    v33 = DALoggingwithCategory();
    v34 = *(MEMORY[0x277CF3AF0] + 6);
    if (os_log_type_enabled(v33, v34))
    {
      *buf = 0;
      _os_log_impl(&dword_242490000, v33, v34, "The refresh actor says we should save accounts", buf, 2u);
    }

    v35 = 1;
  }

  else
  {
    v35 = v19 | v29 | v30;
  }

  v94 = v35;
  Current = CFAbsoluteTimeGetCurrent();
  v37 = [(MobileCalDAVAccount *)self refreshContext];
  [v37 startTime];
  v39 = Current - v38;

  if (v8)
  {
    v93 = v7;
    v110[0] = @"success";
    v40 = [MEMORY[0x277CCABB0] numberWithBool:0];
    v111[0] = v40;
    v110[1] = @"downloadedItemsCount";
    v41 = MEMORY[0x277CCABB0];
    v42 = [(MobileCalDAVAccount *)self refreshContext];
    v43 = [v41 numberWithUnsignedInteger:{objc_msgSend(v42, "numDownloadedElements")}];
    v111[1] = v43;
    v110[2] = @"duration";
    v44 = [MEMORY[0x277CCABB0] numberWithDouble:v39];
    v111[2] = v44;
    v110[3] = @"errorCode";
    v45 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v8, "code")}];
    v111[3] = v45;
    v110[4] = @"errorDomain";
    v46 = [v8 domain];
    v111[4] = v46;
    v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v111 forKeys:v110 count:5];
    AnalyticsSendEvent();

    v48 = DALoggingwithCategory();
    v49 = *(MEMORY[0x277CF3AF0] + 4);
    if (os_log_type_enabled(v48, v49))
    {
      v50 = [(MobileCalDAVAccount *)self accountDescription];
      v51 = [(MobileCalDAVAccount *)self accountID];
      v52 = [v8 domain];
      v53 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v8, "code")}];
      *buf = 138413314;
      v101 = v50;
      v102 = 2114;
      v103 = v51;
      v104 = 2112;
      v54 = v8;
      v105 = *&v8;
      v106 = 2114;
      v107 = v52;
      v108 = 2114;
      v109 = v53;
      _os_log_impl(&dword_242490000, v48, v49, "==== CalDAV refresh FAILED for %@ (%{public}@): %@. [Error Domain:%{public}@ Code:%{public}@]", buf, 0x34u);
    }

    else
    {
      v54 = v8;
    }

    v71 = v93;
LABEL_34:

    goto LABEL_35;
  }

  v54 = 0;
  v55 = DALoggingwithCategory();
  v56 = *(MEMORY[0x277CF3AF0] + 5);
  if (os_log_type_enabled(v55, v56))
  {
    v57 = [(MobileCalDAVAccount *)self accountDescription];
    v58 = [(MobileCalDAVAccount *)self accountID];
    *buf = 138412546;
    v101 = v57;
    v102 = 2114;
    v103 = v58;
    _os_log_impl(&dword_242490000, v55, v56, "==== CalDAV refresh completed successfully for %@ (%{public}@)", buf, 0x16u);
  }

  v59 = v7;

  v60 = DALoggingwithCategory();
  if (os_log_type_enabled(v60, v56))
  {
    v61 = [(MobileCalDAVAccount *)self accountDescription];
    v62 = [(MobileCalDAVAccount *)self accountID];
    v63 = [(MobileCalDAVAccount *)self refreshContext];
    v64 = [v63 numDownloadedElements];
    *buf = 138413058;
    v101 = v61;
    v102 = 2114;
    v103 = v62;
    v104 = 2048;
    v105 = v39;
    v106 = 2048;
    v107 = v64;
    _os_log_impl(&dword_242490000, v60, v56, "CalDAV refresh finished for account %@ (%{public}@): Total sync time: %0.2f seconds. Number of downloaded items: %lu", buf, 0x2Au);
  }

  v112[0] = @"success";
  v65 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v113[0] = v65;
  v112[1] = @"downloadedItemsCount";
  v66 = MEMORY[0x277CCABB0];
  v67 = [(MobileCalDAVAccount *)self refreshContext];
  v68 = [v66 numberWithUnsignedInteger:{objc_msgSend(v67, "numDownloadedElements")}];
  v113[1] = v68;
  v112[2] = @"duration";
  v69 = [MEMORY[0x277CCABB0] numberWithDouble:v39];
  v113[2] = v69;
  v70 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v113 forKeys:v112 count:3];
  AnalyticsSendEvent();

  v71 = v59;
  if ([(MobileCalDAVAccount *)self wasMigrated])
  {
    v48 = [(MobileCalDAVAccount *)self refreshContext];
    if (([v48 isPrincipalOnly]& 1) == 0)
    {
      v72 = [(MobileCalDAVAccount *)self refreshContext];
      v73 = [v72 isCalendarsOnly];

      if (v73)
      {
        goto LABEL_35;
      }

      v74 = [v59 context];
      v75 = [v74 calendarFailedToSync];

      v76 = DALoggingwithCategory();
      v48 = v76;
      if (v75)
      {
        v77 = *(MEMORY[0x277CF3AF0] + 4);
        if (os_log_type_enabled(v76, v77))
        {
          *buf = 0;
          _os_log_impl(&dword_242490000, v48, v77, "Some calendars failed to sync. Keeping the migration flag around so that we attempt a merge sync the next time", buf, 2u);
        }
      }

      else
      {
        if (os_log_type_enabled(v76, v56))
        {
          *buf = 0;
          _os_log_impl(&dword_242490000, v48, v56, "Clearing migrated flag on the calendar store", buf, 2u);
        }

        [(MobileCalDAVAccount *)self setWasMigrated:0];
        v48 = [v59 context];
        [v48 setShouldSave:1];
      }
    }

    goto LABEL_34;
  }

LABEL_35:
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v78 = [(MobileCalDAVAccount *)self mCalendars];
  v79 = [v78 countByEnumeratingWithState:&v95 objects:v99 count:16];
  if (v79)
  {
    v80 = v79;
    v81 = *v96;
    do
    {
      for (i = 0; i != v80; ++i)
      {
        if (*v96 != v81)
        {
          objc_enumerationMutation(v78);
        }

        [*(*(&v95 + 1) + 8 * i) flushCaches];
      }

      v80 = [v78 countByEnumeratingWithState:&v95 objects:v99 count:16];
    }

    while (v80);
  }

  if (v94)
  {
    if (v54 && [v54 code] == 6)
    {
      v83 = DALoggingwithCategory();
      v84 = *(MEMORY[0x277CF3AF0] + 4);
      if (os_log_type_enabled(v83, v84))
      {
        *buf = 0;
        _os_log_impl(&dword_242490000, v83, v84, "Not saving our account properties because the refresh was canceled.", buf, 2u);
      }
    }

    else
    {
      v85 = DALoggingwithCategory();
      v86 = *(MEMORY[0x277CF3AF0] + 6);
      if (os_log_type_enabled(v85, v86))
      {
        *buf = 0;
        _os_log_impl(&dword_242490000, v85, v86, "Saving our account properties", buf, 2u);
      }

      [(MobileCalDAVAccount *)self saveAccountProperties];
    }
  }

  v87 = [(MobileCalDAVAccount *)self mainPrincipal];
  [v87 setIsDirty:0];

  v88 = [(MobileCalDAVAccount *)self mainPrincipal];
  [v88 setCalendarsAreDirty:0];

  v89 = [(MobileCalDAVAccount *)self mItemIDsToMoveActions];
  [v89 removeAllObjects];

  v90 = [(MobileCalDAVAccount *)self mMovedItemURLStrings];
  [v90 removeAllObjects];

  [(MobileCalDAVAccount *)self setRefreshContext:0];
  [(MobileCalDAVAccount *)self setIsRefreshing:0];
  [(MobileCalDAVAccount *)self setActor:0];
  [(MobileCalDAVAccount *)self setMCalendars:0];
  v91 = [MEMORY[0x277CCAB98] defaultCenter];
  [v91 postNotificationName:@"RDCalDAVMobileAccountRefreshDidCompleteNotificationName" object:self];

  v92 = *MEMORY[0x277D85DE8];
}

- (void)_collectMoveActions
{
  v3 = [(MobileCalDAVAccount *)self mItemIDsToMoveActions];

  if (!v3)
  {
    v4 = objc_opt_new();
    [(MobileCalDAVAccount *)self setMItemIDsToMoveActions:v4];
  }

  v5 = [(MobileCalDAVAccount *)self mMovedItemURLStrings];

  if (!v5)
  {
    v6 = objc_opt_new();
    [(MobileCalDAVAccount *)self setMMovedItemURLStrings:v6];
  }
}

- (void)refreshWithContext:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(MobileCalDAVAccount *)self isRefreshing])
  {
    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277CF3AF0] + 6);
    if (os_log_type_enabled(v5, v6))
    {
      LOWORD(v26) = 0;
      v7 = "Ignoring refresh request because we're already in the middle of a refresh";
LABEL_7:
      _os_log_impl(&dword_242490000, v5, v6, v7, &v26, 2u);
    }
  }

  else if ([(MobileCalDAVAccount *)self isRefreshing])
  {
    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277CF3AF0] + 6);
    if (os_log_type_enabled(v5, v6))
    {
      LOWORD(v26) = 0;
      v7 = "We're already refreshing or a refresh is pending, so we're going to ignore this refresh request.";
      goto LABEL_7;
    }
  }

  else
  {
    self->_wasMigrated = -1;
    [(MobileCalDAVAccount *)self setIsRefreshing:1];
    [(MobileCalDAVAccount *)self setRefreshContext:v4];
    Current = CFAbsoluteTimeGetCurrent();
    v9 = [(MobileCalDAVAccount *)self refreshContext];
    [v9 setStartTime:Current];

    [(MobileCalDAVAccount *)self _updateCalendarStore:1];
    [(MobileCalDAVAccount *)self _collectMoveActions];
    if (-[MobileCalDAVAccount wasMigrated](self, "wasMigrated") && [v4 isCalendarsOnly])
    {
      [v4 setIsCalendarsOnly:0];
    }

    v10 = DALoggingwithCategory();
    v11 = MEMORY[0x277CF3AF0];
    v12 = *(MEMORY[0x277CF3AF0] + 5);
    if (os_log_type_enabled(v10, v12))
    {
      if ([(MobileCalDAVAccount *)self wasMigrated])
      {
        v13 = @"migration ";
      }

      else
      {
        v13 = &stru_2854B8D68;
      }

      if ([v4 isPrincipalOnly])
      {
        v14 = @" (principal only)";
      }

      else if ([v4 isCalendarsOnly])
      {
        v14 = @" (calendars only)";
      }

      else
      {
        v14 = &stru_2854B8D68;
      }

      v15 = [(MobileCalDAVAccount *)self accountDescription];
      v16 = [(MobileCalDAVAccount *)self accountID];
      v26 = 138413058;
      v27 = v13;
      v28 = 2112;
      v29 = v14;
      v30 = 2112;
      v31 = v15;
      v32 = 2112;
      v33 = v16;
      _os_log_impl(&dword_242490000, v10, v12, "==== Beginning %@refresh for CalDAV account%@ %@ (%@)", &v26, 0x2Au);
    }

    v17 = DALoggingwithCategory();
    v18 = *(v11 + 6);
    if (os_log_type_enabled(v17, v18))
    {
      v19 = [(MobileCalDAVAccount *)self refreshContext];
      v20 = [v19 localItems];
      v26 = 134217984;
      v27 = v20;
      _os_log_impl(&dword_242490000, v17, v18, "Our store has %lu items in it.", &v26, 0xCu);
    }

    [(MobileCalDAVAccount *)self retainPowerAssertion];
    [(MobileCalDAVAccount *)self _syncStarted];
    v21 = [(MobileCalDAVAccount *)self actor];
    [v21 teardown];

    v22 = [MobileCalDAVAccountRefreshActor alloc];
    v23 = [(MobileCalDAVAccount *)self refreshContext];
    v24 = [(MobileCalDAVAccountRefreshActor *)v22 initWithAccount:self context:v23];
    [(MobileCalDAVAccount *)self setActor:v24];

    v5 = [(MobileCalDAVAccount *)self actor];
    [v5 refresh];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)updateDelegates
{
  v75 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v46 = [MEMORY[0x277CBEB58] set];
  v4 = objc_alloc_init(MEMORY[0x277CB8F48]);
  v5 = [(MobileCalDAVAccount *)self backingAccountInfo];
  v6 = [v5 childAccounts];

  v49 = objc_opt_new();
  v7 = objc_alloc(MEMORY[0x277CBEB98]);
  v8 = [(MobileCalDAVAccount *)self delegateUserInfos];
  v9 = [v8 allKeys];
  v10 = [v7 initWithArray:v9];

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = v6;
  v11 = [obj countByEnumeratingWithState:&v67 objects:v74 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v68;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v68 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v67 + 1) + 8 * i);
        v16 = [v15 accountPropertyForKey:@"CalDAVMobileAccountDelegatePrincipalPath"];
        [v49 addObject:v16];
        if (([v10 containsObject:v16] & 1) == 0)
        {
          v17 = [v15 identifier];
          [v46 addObject:v17];
        }
      }

      v12 = [obj countByEnumeratingWithState:&v67 objects:v74 count:16];
    }

    while (v12);
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v18 = v10;
  v19 = [v18 countByEnumeratingWithState:&v63 objects:v73 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v64;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v64 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v63 + 1) + 8 * j);
        if (([v49 containsObject:v23] & 1) == 0)
        {
          [v3 addObject:v23];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v63 objects:v73 count:16];
    }

    while (v20);
  }

  v45 = v18;

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v47 = v3;
  v24 = [v47 countByEnumeratingWithState:&v59 objects:v72 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v60;
    v27 = *MEMORY[0x277CB8BC8];
    do
    {
      for (k = 0; k != v25; ++k)
      {
        if (*v60 != v26)
        {
          objc_enumerationMutation(v47);
        }

        v29 = *(*(&v59 + 1) + 8 * k);
        v30 = objc_alloc(MEMORY[0x277CB8F30]);
        v31 = [v4 accountTypeWithAccountTypeIdentifier:{v27, v45}];
        v32 = [v30 initWithAccountType:v31];

        v33 = [(MobileCalDAVAccount *)self backingAccountInfo];
        [v32 setParentAccount:v33];

        [v32 setAccountProperty:v29 forKey:@"CalDAVMobileAccountDelegatePrincipalPath"];
        [v32 setActive:1];
        [v32 setAuthenticationType:@"parent"];
        v34 = [(MobileCalDAVAccount *)self host];
        [v32 setAccountProperty:v34 forKey:@"DAAccountHost"];

        v55[0] = MEMORY[0x277D85DD0];
        v55[1] = 3221225472;
        v55[2] = __38__MobileCalDAVAccount_updateDelegates__block_invoke;
        v55[3] = &unk_278D4F368;
        v35 = v4;
        v56 = v35;
        v57 = v32;
        v58 = v29;
        v36 = v32;
        [v35 canSaveAccount:v36 withCompletionHandler:v55];
      }

      v25 = [v47 countByEnumeratingWithState:&v59 objects:v72 count:16];
    }

    while (v25);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v37 = v46;
  v38 = [v37 countByEnumeratingWithState:&v51 objects:v71 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v52;
    do
    {
      for (m = 0; m != v39; ++m)
      {
        if (*v52 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v42 = *(*(&v51 + 1) + 8 * m);
        v43 = [v4 accountWithIdentifier:{v42, v45}];
        v50[0] = MEMORY[0x277D85DD0];
        v50[1] = 3221225472;
        v50[2] = __38__MobileCalDAVAccount_updateDelegates__block_invoke_204;
        v50[3] = &unk_278D4F340;
        v50[4] = v42;
        [v4 removeAccount:v43 withCompletionHandler:v50];
      }

      v39 = [v37 countByEnumeratingWithState:&v51 objects:v71 count:16];
    }

    while (v39);
  }

  v44 = *MEMORY[0x277D85DE8];
}

void __38__MobileCalDAVAccount_updateDelegates__block_invoke(void *a1, int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = a1[4];
    v4 = a1[5];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __38__MobileCalDAVAccount_updateDelegates__block_invoke_2;
    v9[3] = &unk_278D4F340;
    v9[4] = a1[6];
    [v3 saveVerifiedAccount:v4 withCompletionHandler:v9];
  }

  else
  {
    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277CF3AF0] + 3);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = a1[6];
      *buf = 138412290;
      v11 = v7;
      _os_log_impl(&dword_242490000, v5, v6, "Delegate with principalPath %@ could not be saved.", buf, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __38__MobileCalDAVAccount_updateDelegates__block_invoke_2(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = DALoggingwithCategory();
  v5 = v4;
  if (a2)
  {
    LOBYTE(v6) = *(MEMORY[0x277CF3AF0] + 7);
    if (os_log_type_enabled(v4, v6))
    {
      v7 = *(a1 + 32);
      v11 = 138412290;
      v12 = v7;
      v8 = "Delegate with principalPath %@ was successfully added.";
LABEL_6:
      _os_log_impl(&dword_242490000, v5, v6, v8, &v11, 0xCu);
    }
  }

  else
  {
    v6 = *(MEMORY[0x277CF3AF0] + 3);
    if (os_log_type_enabled(v4, *(MEMORY[0x277CF3AF0] + 3)))
    {
      v9 = *(a1 + 32);
      v11 = 138412290;
      v12 = v9;
      v8 = "Delegate with principalPath %@ failed to add.";
      goto LABEL_6;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __38__MobileCalDAVAccount_updateDelegates__block_invoke_204(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = DALoggingwithCategory();
  v5 = v4;
  if (a2)
  {
    LOBYTE(v6) = *(MEMORY[0x277CF3AF0] + 7);
    if (os_log_type_enabled(v4, v6))
    {
      v7 = *(a1 + 32);
      v11 = 138412290;
      v12 = v7;
      v8 = "Delegate with account ID %@ was successfully removed";
LABEL_6:
      _os_log_impl(&dword_242490000, v5, v6, v8, &v11, 0xCu);
    }
  }

  else
  {
    v6 = *(MEMORY[0x277CF3AF0] + 3);
    if (os_log_type_enabled(v4, *(MEMORY[0x277CF3AF0] + 3)))
    {
      v9 = *(a1 + 32);
      v11 = 138412290;
      v12 = v9;
      v8 = "Delegate with account ID %@ failed to be removed";
      goto LABEL_6;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)task:(id)a3 didFinishWithError:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
    v9 = [v8 searchContext];
    v10 = [(MobileCalDAVAccount *)self consumerForTask:v8];
    v11 = [v7 domain];
    if ([v11 isEqualToString:*MEMORY[0x277CFDB18]])
    {
      v12 = [v7 code];

      if (v12 == 1)
      {
        v13 = DALoggingwithCategory();
        v14 = *(MEMORY[0x277CF3AF0] + 6);
        if (os_log_type_enabled(v13, v14))
        {
          *buf = 134217984;
          v37 = v8;
          _os_log_impl(&dword_242490000, v13, v14, "Search task %p was cancelled", buf, 0xCu);
        }

LABEL_23:

        [v10 searchQuery:v9 finishedWithError:v7];
        v26 = [(MobileCalDAVAccount *)self searchTaskSet];
        [v26 removeObject:v8];

        [(MobileCalDAVAccount *)self removeConsumerForTask:v8];
        goto LABEL_24;
      }
    }

    else
    {
    }

    v29 = v9;
    v30 = v7;
    v13 = [MEMORY[0x277CBEB18] array];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v16 = [v8 multiStatus];
    v17 = [v16 responses];

    v18 = [v17 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v32;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v32 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [CalDAVPrincipalResult resultFromResponse:*(*(&v31 + 1) + 8 * i)];
          v23 = [v22 convertToDAContactSearchResultElement];
          if (v23)
          {
            [v13 addObject:v23];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v19);
    }

    if ([v13 count])
    {
      v24 = DALoggingwithCategory();
      v25 = *(MEMORY[0x277CF3AF0] + 6);
      v7 = v30;
      v9 = v29;
      if (os_log_type_enabled(v24, v25))
      {
        *buf = 134217984;
        v37 = v29;
        _os_log_impl(&dword_242490000, v24, v25, "CalDAV search query %p returning results", buf, 0xCu);
      }

      v10 = v28;
      [v28 searchQuery:v29 returnedResults:v13];
    }

    else
    {
      v7 = v30;
      v10 = v28;
      v9 = v29;
    }

    goto LABEL_23;
  }

  v8 = DALoggingwithCategory();
  v15 = *(MEMORY[0x277CF3AF0] + 4);
  if (os_log_type_enabled(v8, v15))
  {
    *buf = 138412290;
    v37 = v6;
    _os_log_impl(&dword_242490000, v8, v15, "An unknown task just finished. What just happened? %@", buf, 0xCu);
  }

LABEL_24:

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_reallyPerformSearchQuery:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MobileCalDAVAccount *)self searchPropertySet];
  if (![v5 supportsPropertySearch] || (objc_msgSend(v5, "supportsWellKnownType:", 6) & 1) == 0)
  {
    v21 = DALoggingwithCategory();
    v22 = *(MEMORY[0x277CF3AF0] + 5);
    if (os_log_type_enabled(v21, v22))
    {
      LOWORD(v29) = 0;
      _os_log_impl(&dword_242490000, v21, v22, "Refusing to send out search query because the server doesn't support searching", &v29, 2u);
    }

    v16 = [v4 consumer];
    v23 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CF3AB0];
    v25 = 69;
    goto LABEL_10;
  }

  v6 = DALoggingwithCategory();
  v7 = MEMORY[0x277CF3AF0];
  v8 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v6, v8))
  {
    v9 = [v4 searchString];
    v29 = 138412546;
    v30 = v9;
    v31 = 2048;
    v32 = v4;
    _os_log_impl(&dword_242490000, v6, v8, "CalDAV search query %@ (%p) enqueuing", &v29, 0x16u);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v27 = DALoggingwithCategory();
    v28 = *(v7 + 4);
    if (os_log_type_enabled(v27, v28))
    {
      v29 = 138412290;
      v30 = v4;
      _os_log_impl(&dword_242490000, v27, v28, "Dropping search query %@ because it is not the right type", &v29, 0xCu);
    }

    v16 = [v4 consumer];
    v23 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CF3AB0];
    v25 = 65;
LABEL_10:
    v20 = [v23 errorWithDomain:v24 code:v25 userInfo:0];
    [v16 searchQuery:v4 finishedWithError:v20];
    goto LABEL_11;
  }

  [(MobileCalDAVAccount *)self setShouldUseOpportunisticSockets:0];
  v10 = objc_alloc(MEMORY[0x277CF7010]);
  v11 = MEMORY[0x277CBEB98];
  v12 = [v4 searchString];
  v13 = [v11 setWithObject:v12];
  v14 = [MEMORY[0x277CBEB98] setWithObject:CalDAVPrincipalResultType_Person];
  v15 = [(MobileCalDAVAccount *)self collectionSetURL];
  v16 = [v10 initWithSearchStrings:v13 searchTypes:v14 serverSupportSet:v5 atURL:v15];

  [v16 setDelegate:self];
  v17 = [(MobileCalDAVAccount *)self mainPrincipal];
  [v16 setAccountInfoProvider:v17];

  [v16 setSearchContext:v4];
  v18 = [(MobileCalDAVAccount *)self taskManager];
  [v18 submitIndependentCoreDAVTask:v16];

  v19 = [v4 consumer];
  [(MobileCalDAVAccount *)self setConsumer:v19 forTask:v16];

  v20 = [(MobileCalDAVAccount *)self searchTaskSet];
  [v20 addObject:v16];
LABEL_11:

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_reallyCancelSearchQuery:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v5, v6))
  {
    *buf = 138412290;
    v26 = v4;
    _os_log_impl(&dword_242490000, v5, v6, "cancelling search query %@", buf, 0xCu);
  }

  v7 = [(MobileCalDAVAccount *)self searchTaskSet];
  v8 = [v7 copy];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  v11 = v9;
  if (v10)
  {
    v12 = v10;
    v13 = *v21;
LABEL_5:
    v14 = 0;
    while (1)
    {
      if (*v21 != v13)
      {
        objc_enumerationMutation(v9);
      }

      v15 = *(*(&v20 + 1) + 8 * v14);
      v16 = [v15 searchContext];
      v17 = [v16 isEqual:v4];

      if (v17)
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v12)
        {
          goto LABEL_5;
        }

        v11 = v9;
        goto LABEL_14;
      }
    }

    v11 = v15;

    if (!v11)
    {
      goto LABEL_15;
    }

    v18 = [(MobileCalDAVAccount *)self taskManager];
    [v18 cancelTask:v11];
  }

LABEL_14:

LABEL_15:
  v19 = *MEMORY[0x277D85DE8];
}

- (void)_reallyCancelAllSearchQueries
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(MobileCalDAVAccount *)self searchTaskSet];
  v4 = [v3 copy];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [(MobileCalDAVAccount *)self taskManager];
        [v11 cancelTask:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v12 = DALoggingwithCategory();
  v13 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v12, v13))
  {
    *v15 = 0;
    _os_log_impl(&dword_242490000, v12, v13, "_reallyCancelAllSearchQueries is complete. All search queries have been cancelled.", v15, 2u);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)_reallySearchQueriesRunning
{
  v2 = [(MobileCalDAVAccount *)self searchTaskSet];
  v3 = [v2 count] != 0;

  return v3;
}

- (void)discoveryTask:(id)a3 gotAccountInfo:(id)a4 error:(id)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = DALoggingwithCategory();
  v12 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v11, v12))
  {
    v33 = 138412802;
    v34 = v8;
    v35 = 2112;
    v36 = v9;
    v37 = 2112;
    v38 = v10;
    _os_log_impl(&dword_242490000, v11, v12, "DiscoveryTaskGroup %@ got account info %@ with error %@", &v33, 0x20u);
  }

  v13 = [(MobileCalDAVAccount *)self checkValidityTaskGroup];

  if (v13 == v8)
  {
    if (v10)
    {
LABEL_17:
      v26 = [(MobileCalDAVAccount *)self consumerForTask:v8];
      v27 = [(MobileCalDAVAccount *)self checkValidityTaskGroup];
      [(MobileCalDAVAccount *)self removeConsumerForTask:v27];

      if (!v10 || ![(MobileCalDAVAccount *)self retryDiscoveryTask:v26])
      {
        hostForDiscovery = self->_hostForDiscovery;
        self->_hostForDiscovery = 0;

        usernameForDiscovery = self->_usernameForDiscovery;
        self->_usernameForDiscovery = 0;

        v30 = coreDAVValidationErrorFromRawError();
        [v26 account:self isValid:v10 == 0 validationError:v30];

        [(MobileCalDAVAccount *)self setCheckValidityTaskGroup:0];
      }

      goto LABEL_21;
    }

    v14 = [(MobileCalDAVAccount *)self principalPath];
    if ([v14 length])
    {
      v15 = [(MobileCalDAVAccount *)self principalPath];
      if (![v15 isEqualToString:@"/"])
      {
        v32 = [(MobileCalDAVAccount *)self shouldDoInitialAutodiscovery];

        if ((v32 & 1) == 0)
        {
          v17 = 0;
          goto LABEL_10;
        }

LABEL_9:
        v16 = [v9 principalURL];
        [(MobileCalDAVAccount *)self setPrincipalURL:v16];

        v17 = 1;
LABEL_10:
        v18 = [(MobileCalDAVAccount *)self backingAccountInfo];
        v19 = [v18 accountPropertyForKey:@"CalDAVMobileAccountDelegatePrincipalPath"];

        if (v19)
        {
          [(MobileCalDAVAccount *)self setPrincipalPath:v19];
          v20 = [(MobileCalDAVAccount *)self mainPrincipal];
          v17 = 1;
          [v20 setIsDelegate:1];
        }

        v21 = [v9 scheme];
        -[MobileCalDAVAccount setUseSSL:](self, "setUseSSL:", [v21 isEqualToString:@"http"] ^ 1);

        v22 = [v9 host];
        [(MobileCalDAVAccount *)self setHost:v22];

        if (self->_usernameForDiscovery)
        {
          [(MobileCalDAVAccount *)self setUsername:?];
        }

        -[MobileCalDAVAccount setPort:](self, "setPort:", [v9 port]);
        if (v17)
        {
          [(MobileCalDAVAccount *)self saveModifiedPropertiesOnBackingAccount];
        }

        v23 = MEMORY[0x277CF7040];
        v24 = [v9 serverHeaders];
        v25 = [v23 versionWithHTTPHeaders:v24];
        [(MobileCalDAVAccount *)self setServerVersion:v25];

        goto LABEL_17;
      }
    }

    goto LABEL_9;
  }

LABEL_21:

  v31 = *MEMORY[0x277D85DE8];
}

- (NSArray)wellKnownPaths
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(MobileCalDAVAccount *)self username];
  v5 = [v3 stringWithFormat:@"/calendar/dav/%@/user/", v4];

  v6 = [MEMORY[0x277CBEB18] arrayWithObjects:{@"/.well-known/caldav", @"/", @"/principals/", v5, 0}];
  v7 = [(MobileCalDAVAccount *)self principalPath];
  v8 = [v7 da_appendSlashIfNeeded];

  if ([v8 length] && (objc_msgSend(v6, "containsObject:", v8) & 1) == 0)
  {
    if (([(MobileCalDAVAccount *)self shouldDoInitialAutodiscovery]& 1) == 0)
    {
      [v6 removeAllObjects];
    }

    [v6 insertObject:v8 atIndex:0];
  }

  return v6;
}

- (BOOL)retryDiscoveryTask:(id)a3
{
  usernameForDiscovery = self->_usernameForDiscovery;
  if (usernameForDiscovery)
  {
    [(MobileCalDAVAccount *)self performDiscoveryWithHostname:self->_hostForDiscovery username:0 consumer:a3];
  }

  return usernameForDiscovery != 0;
}

- (void)discoverInitialPropertiesWithConsumer:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MobileCalDAVAccount *)self host];
  if (v5 && (v6 = v5, -[MobileCalDAVAccount host](self, "host"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 length], v7, v6, v8))
  {
    [(MobileCalDAVAccount *)self performDiscoveryWithHostname:0 username:0 consumer:v4];
  }

  else
  {
    v9 = [(MobileCalDAVAccount *)self backingAccountInfo];
    v10 = [v9 username];

    if ([v10 resemblesEmailAddress])
    {
      v11 = [v10 hostFromEmail];
      v12 = [v10 userFromEmail];
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    if ([v11 length] && objc_msgSend(v12, "length"))
    {
      [(MobileCalDAVAccount *)self performDiscoveryWithHostname:v11 username:v12 consumer:v4];
    }

    else
    {
      v13 = DALoggingwithCategory();
      v14 = *(MEMORY[0x277CF3AF0] + 4);
      if (os_log_type_enabled(v13, v14))
      {
        v16 = 138412290;
        v17 = self;
        _os_log_impl(&dword_242490000, v13, v14, "Autodiscover called on account %@, but that account does not have a host set and username does not seems to resemble email address. Ignoring autodiscovery request", &v16, 0xCu);
      }

      [v4 account:self isValid:0 validationError:0];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)performDiscoveryWithHostname:(id)a3 username:(id)a4 consumer:(id)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  objc_storeStrong(&self->_hostForDiscovery, a3);
  objc_storeStrong(&self->_usernameForDiscovery, a4);
  v12 = [(MobileCalDAVAccount *)self host];
  if (v12 && (v13 = v12, -[MobileCalDAVAccount host](self, "host"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 length], v14, v13, v15))
  {
    v35 = v9;
    [(MobileCalDAVAccount *)self setShouldUseOpportunisticSockets:0];
    v16 = [(MobileCalDAVAccount *)self wellKnownPaths];
    v17 = objc_alloc(MEMORY[0x277CFDBB0]);
    v18 = [(MobileCalDAVAccount *)self mainPrincipal];
    v19 = [(MobileCalDAVAccount *)self taskManager];
    v20 = [MEMORY[0x277CBEA60] cdvArrayWithIntegers:{80, 8008, 8080, 8800, 0}];
    v21 = [MEMORY[0x277CBEA60] cdvArrayWithIntegers:{443, 8443, 8843, 0}];
    if ([(MobileCalDAVAccount *)self useSSL])
    {
      v22 = 0;
    }

    else
    {
      v22 = @"_caldav._tcp.";
    }

    if ([(MobileCalDAVAccount *)self useSSL])
    {
      v23 = @"_caldavs._tcp.";
    }

    else
    {
      v23 = 0;
    }

    v24 = [v17 initWithAccountInfoProvider:v18 taskManager:v19 httpPorts:v20 httpsPorts:v21 httpServiceString:v22 httpsServiceString:v23 wellKnownPaths:v16 requiredComplianceClass:@"calendar-access"];
    [(MobileCalDAVAccount *)self setCheckValidityTaskGroup:v24];

    v25 = [(MobileCalDAVAccount *)self checkValidityTaskGroup];
    [v25 setTimeoutInterval:15.0];

    v26 = [(MobileCalDAVAccount *)self checkValidityTaskGroup];
    [v26 setDelegate:self];

    v27 = DALoggingwithCategory();
    v28 = *(MEMORY[0x277CF3AF0] + 6);
    if (os_log_type_enabled(v27, v28))
    {
      v29 = [(MobileCalDAVAccount *)self checkValidityTaskGroup];
      *buf = 138412802;
      v37 = self;
      v38 = 2112;
      v39 = v29;
      v40 = 2112;
      v41 = v11;
      _os_log_impl(&dword_242490000, v27, v28, "account %@ is checking validity with group %@ on behalf of %@", buf, 0x20u);
    }

    v30 = [(MobileCalDAVAccount *)self checkValidityTaskGroup];
    [(MobileCalDAVAccount *)self setConsumer:v11 forTask:v30];

    v31 = [(MobileCalDAVAccount *)self checkValidityTaskGroup];
    [v31 startTaskGroup];

    v9 = v35;
  }

  else
  {
    v32 = DALoggingwithCategory();
    v33 = *(MEMORY[0x277CF3AF0] + 3);
    if (os_log_type_enabled(v32, v33))
    {
      *buf = 138412290;
      v37 = self;
      _os_log_impl(&dword_242490000, v32, v33, "Autodiscover called on account %@, but that account does not have a host. Ignoring autodiscovery request", buf, 0xCu);
    }

    [v11 account:self isValid:0 validationError:0];
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)retainPowerAssertion
{
  v5 = [MEMORY[0x277CF3A18] sharedPowerAssertionManager];
  v3 = [(MobileCalDAVAccount *)self _powerAssertionContext];
  v4 = [(MobileCalDAVAccount *)self _powerAssertionGroupIdentifier];
  [v5 retainPowerAssertion:v3 withGroupIdentifier:v4];
}

- (void)releasePowerAssertion
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [(MobileCalDAVAccount *)self _powerAssertionContext];
  v3 = [MEMORY[0x277CF3A18] sharedPowerAssertionManager];
  v4 = [v3 powerAssertionRetainCount:v2];

  if (v4)
  {
    v5 = [MEMORY[0x277CF3A18] sharedPowerAssertionManager];
    [v5 releasePowerAssertion:v2];
  }

  else
  {
    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277CF3AF0] + 6);
    if (os_log_type_enabled(v5, *(MEMORY[0x277CF3AF0] + 6)))
    {
      v8 = 138412290;
      v9 = v2;
      _os_log_impl(&dword_242490000, v5, v6, "Dropping power assertion release for %@ since the retain count isn't positive", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)dropPowerAssertions
{
  v4 = [MEMORY[0x277CF3A18] sharedPowerAssertionManager];
  v3 = [(MobileCalDAVAccount *)self _powerAssertionGroupIdentifier];
  [v4 dropPowerAssertionsForGroupIdentifier:v3];
}

- (void)reattainPowerAssertions
{
  v4 = [MEMORY[0x277CF3A18] sharedPowerAssertionManager];
  v3 = [(MobileCalDAVAccount *)self _powerAssertionGroupIdentifier];
  [v4 reattainPowerAssertionsForGroupIdentifier:v3];
}

- (BOOL)isEqualToAccount:(id)a3
{
  v6 = a3;
  v7 = [v6 username];
  v8 = [v7 length];
  if (v8 || (-[MobileCalDAVAccount username](self, "username"), v35 = objc_claimAutoreleasedReturnValue(), [v35 length]))
  {
    v3 = [v6 username];
    v4 = [(MobileCalDAVAccount *)self username];
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
  if (v11 || (-[MobileCalDAVAccount host](self, "host"), v27 = objc_claimAutoreleasedReturnValue(), [v27 length]))
  {
    v12 = [v6 host];
    v13 = [(MobileCalDAVAccount *)self host];
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
  if (v16 || (-[MobileCalDAVAccount principalURL](self, "principalURL"), v25 = objc_claimAutoreleasedReturnValue(), [v25 absoluteString], v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v24, "length")))
  {
    v28 = v14;
    v29 = v3;
    v30 = v7;
    v17 = [v6 principalURL];
    v18 = [v17 absoluteString];
    v19 = [(MobileCalDAVAccount *)self principalURL];
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

- (BOOL)accountHasSignificantPropertyChangesFromOldAccountInfo:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = MobileCalDAVAccount;
  if (![(MobileCalDAVAccount *)&v13 accountHasSignificantPropertyChangesFromOldAccountInfo:v5])
  {
    v7 = [MEMORY[0x277CF39F8] daAccountSubclassWithBackingAccountInfo:v5];
    v8 = [(MobileCalDAVAccount *)self principalPath];
    v9 = [v8 length];
    if (v9 || ([v7 principalPath], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "length")))
    {
      v10 = [(MobileCalDAVAccount *)self principalPath];
      v11 = [v7 principalPath];
      v6 = [v10 isEqualToString:v11] ^ 1;

      if (v9)
      {
LABEL_9:

        goto LABEL_10;
      }
    }

    else
    {
      LOBYTE(v6) = 0;
    }

    goto LABEL_9;
  }

  LOBYTE(v6) = 1;
LABEL_10:

  return v6;
}

- (id)localizedIdenticalAccountFailureMessage
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"ACCOUNT_UNIQUE_CONSTRAINT_FAILED_BODY_FORMAT_CALDAV" value:&stru_2854B8D68 table:@"DataAccess"];

  return v3;
}

- (id)localizedInvalidPasswordMessage
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"INVALID_PASSWORD_BODY_CALDAV" value:&stru_2854B8D68 table:@"DataAccess"];
  v6 = [(MobileCalDAVAccount *)self accountDescription];
  v7 = [v3 stringWithFormat:v5, v6];

  return v7;
}

- (void)resetStatusReport
{
  v7.receiver = self;
  v7.super_class = MobileCalDAVAccount;
  [(MobileCalDAVAccount *)&v7 resetStatusReport];
  v3 = MEMORY[0x277CCABB0];
  v4 = [(MobileCalDAVAccount *)self mainPrincipal];
  v5 = [v3 numberWithBool:{objc_msgSend(v4, "isDelegate")}];
  v6 = [(MobileCalDAVAccount *)self statusReport];
  [v6 setIsDelegate:v5];
}

- (void)addToCoreDAVLoggingDelegates
{
  v3 = [(MobileCalDAVAccount *)self mainPrincipal];

  if (v3)
  {
    v5 = [MEMORY[0x277CFDC18] sharedLogging];
    v4 = [(MobileCalDAVAccount *)self mainPrincipal];
    [v5 addLogDelegate:self forAccountInfoProvider:v4];
  }
}

- (void)removeFromCoreDAVLoggingDelegates
{
  v3 = [(MobileCalDAVAccount *)self mainPrincipal];

  if (v3)
  {
    v5 = [MEMORY[0x277CFDC18] sharedLogging];
    v4 = [(MobileCalDAVAccount *)self mainPrincipal];
    [v5 removeLogDelegate:self forAccountInfoProvider:v4];
  }
}

- (int64_t)coreDAVLogLevel
{
  DALogLevel = getDALogLevel();
  DAOutputLevel = getDAOutputLevel();
  if (DALogLevel <= DAOutputLevel)
  {
    return DAOutputLevel;
  }

  else
  {
    return DALogLevel;
  }
}

- (void)coreDAVLogDiagnosticMessage:(id)a3 atLevel:(int64_t)a4
{
  v4 = a4;
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277CF3AF0] + v4);
  if (os_log_type_enabled(v6, v7))
  {
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&dword_242490000, v6, v7, "%@", &v9, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)coreDAVLogTransmittedDataPartial:(id)a3
{
  v4 = a3;
  v5 = [(MobileCalDAVAccount *)self coreDAVLogger];
  [v5 logSnippet:v4];
}

- (BOOL)addressIsAccountOwner:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v5 = [(MobileCalDAVAccount *)self principals];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __45__MobileCalDAVAccount_addressIsAccountOwner___block_invoke;
    v8[3] = &unk_278D4F390;
    v9 = v4;
    v10 = &v11;
    [v5 enumerateKeysAndObjectsUsingBlock:v8];

    v6 = *(v12 + 24);
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void __45__MobileCalDAVAccount_addressIsAccountOwner___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v10 = a3;
  v6 = [MEMORY[0x277CBEBC0] URLWithString:*(a1 + 32)];
  if (v6 && [v10 calendarUserAddressIsEquivalentToURL:v6])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  else
  {
    v7 = MEMORY[0x277CBEBC0];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"mailto:%@", *(a1 + 32)];
    v9 = [v7 URLWithString:v8];

    if (v9 && [v10 calendarUserAddressIsEquivalentToURL:v9])
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a4 = 1;
    }
  }
}

- (void)refreshActor:(uint64_t)a1 didCompleteWithError:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MobileCalDAVAccount.m" lineNumber:1417 description:{@"I didn't order a refresh, so why is there one on my menu?"}];
}

- (void)refreshActor:(uint64_t)a1 didCompleteWithError:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MobileCalDAVAccount.m" lineNumber:1418 description:@"We should have an actor at this point"];
}

@end