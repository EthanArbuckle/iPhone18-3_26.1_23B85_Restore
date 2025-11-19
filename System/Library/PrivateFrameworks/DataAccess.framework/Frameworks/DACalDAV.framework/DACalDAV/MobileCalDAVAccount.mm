@interface MobileCalDAVAccount
+ (id)_defaultAlarmOffsetFromICSString:(id)a3;
- (BOOL)_reallySearchQueriesRunning;
- (BOOL)_saveModifiedPrincipalsOnBackingAccount;
- (BOOL)_saveModifiedSubscribedCalendarsOnBackingAccount;
- (BOOL)_updateCalendarStoreProperties:(void *)a3;
- (BOOL)addressIsAccountOwner:(id)a3;
- (BOOL)addressURLIsAccountOwner:(id)a3;
- (BOOL)haveForcedDefaultCalendarRefetch;
- (BOOL)isDelegateAccount;
- (BOOL)isWritable;
- (BOOL)pushDisabled;
- (BOOL)shouldDoInitialAutodiscovery;
- (BOOL)shouldFailAllTasks;
- (BOOL)shouldFilterEventSyncTimeRange;
- (BOOL)shouldFilterSyncTimeRangeForInbox;
- (BOOL)shouldUseCalendarHomeSyncReport;
- (BOOL)supportsEvents;
- (BOOL)supportsReminders;
- (BOOL)updateCalendarStoreWithAlreadyOpenDBShouldCreate:(BOOL)a3 syncingThisAccount:(BOOL)a4;
- (BOOL)useSSL;
- (BOOL)wasMigrated;
- (CalDAVServerVersion)serverVersion;
- (DACoreDAVTaskManager)taskManager;
- (DALocalDBHelper)dbHelper;
- (MobileCalDAVAccount)init;
- (MobileCalDAVAccount)initWithBackingAccount:(id)a3;
- (MobileCalDAVDABackingAccount)backingAccount;
- (NSArray)duplicateCalendars;
- (NSArray)emailAddresses;
- (NSArray)principals;
- (NSArray)spinnerIdentifiers;
- (NSDictionary)contextDictionary;
- (NSDictionary)subscribedCalendars;
- (NSSet)calendars;
- (NSString)accountDescription;
- (NSString)accountID;
- (NSString)calendarHomeSyncToken;
- (NSString)changeTrackingID;
- (NSString)host;
- (NSString)password;
- (NSString)preferredAddress;
- (NSString)principalPath;
- (NSString)publicDescription;
- (NSString)username;
- (NSURL)collectionSetURL;
- (NSURL)principalURL;
- (double)refreshInterval;
- (id)_calendarConstraintsName;
- (id)_collectActionsFromMoveDictionary:(__CFDictionary *)a3 forDataclass:(id)a4 outShouldSave:(BOOL *)a5;
- (id)_externalInfoDictionary;
- (id)_powerAssertionGroupIdentifier;
- (id)addUsernameToURL:(id)a3;
- (id)objectForKeyedSubscript:(id)a3;
- (int64_t)port;
- (void)_checkExistingStoreAndSetChangeReason;
- (void)_clearOrphanedCalendarItemChangesOfType:(int)a3 withContext:(id)a4 goodCalendarIds:(id)a5;
- (void)_clearOrphanedChangesWithChangesCall:(void *)a3 entityType:(int)a4 withContext:(id)a5;
- (void)_clearOrphanedChangesWithContext:(id)a3;
- (void)_collectMoveActions;
- (void)_foundDuplicateCalendar:(id)a3 ofCalendar:(id)a4;
- (void)_foundDuplicateCalendars:(int)a3;
- (void)_logDuplicateCalendarDetails:(void *)a3;
- (void)_reallyCancelAllSearchQueries;
- (void)_reallyCancelSearchQuery:(id)a3;
- (void)_reallyPerformSearchQuery:(id)a3;
- (void)_releasePowerAssertion;
- (void)_retainPowerAssertion;
- (void)addCalendar:(id)a3;
- (void)addPrincipal:(id)a3;
- (void)calendarsDataclassModified;
- (void)cancelRefreshWithCompletion:(id)a3;
- (void)copyCalStore;
- (void)dealloc;
- (void)discoverInitialPropertiesWithConsumer:(id)a3;
- (void)discoveryTask:(id)a3 gotAccountInfo:(id)a4 error:(id)a5;
- (void)ingestBackingAccountInfoProperties;
- (void)noteHomeSetOnDifferentHost:(id)a3;
- (void)refreshActor:(id)a3 didCompleteWithError:(id)a4;
- (void)refreshWithContext:(id)a3 completion:(id)a4;
- (void)reloadCalendars;
- (void)removeCalendar:(id)a3;
- (void)removeCalendarWithURL:(id)a3;
- (void)removePrincipal:(id)a3;
- (void)setAccountDescription:(id)a3;
- (void)setAccountProperty:(id)a3 forKey:(id)a4;
- (void)setCalendarHomeSyncToken:(id)a3;
- (void)setCollectionSetURL:(id)a3;
- (void)setHost:(id)a3;
- (void)setObject:(id)a3 forKeyedSubscript:(id)a4;
- (void)setPassword:(id)a3;
- (void)setPort:(int64_t)a3;
- (void)setPrincipalPath:(id)a3;
- (void)setPrincipalURL:(id)a3;
- (void)setRefreshInterval:(double)a3;
- (void)setSearchPropertySet:(id)a3;
- (void)setServerVersion:(id)a3;
- (void)setSubscribedCalendars:(id)a3;
- (void)setUsername:(id)a3;
- (void)setWasMigrated:(BOOL)a3;
- (void)syncEndedWithError:(id)a3;
- (void)syncStarted;
- (void)task:(id)a3 didFinishWithError:(id)a4;
- (void)updateDelegatesWithUserInfo:(id)a3;
@end

@implementation MobileCalDAVAccount

- (MobileCalDAVAccount)initWithBackingAccount:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MobileCalDAVAccount;
  v5 = [(MobileCalDAVAccount *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_backingAccount, v4);
    v7 = objc_opt_new();
    [(MobileCalDAVAccount *)v6 setSearchTaskSet:v7];
  }

  return v6;
}

- (MobileCalDAVAccount)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"MobileCalDAVAccount.m" lineNumber:145 description:{@"Nothing to see here, buddy. Just turn around and leave quietly."}];

  return 0;
}

- (void)dealloc
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MobileCalDAVAccount.m" lineNumber:150 description:@"Account was deallocated while still refreshing. Ouch"];
}

- (void)ingestBackingAccountInfoProperties
{
  v57 = *MEMORY[0x277D85DE8];
  [(MobileCalDAVAccount *)self setMPrincipals:0];
  v3 = [(MobileCalDAVAccount *)self mainPrincipal];

  if (v3)
  {
    [(MobileCalDAVAccount *)self setMainPrincipal:0];
  }

  v4 = [(MobileCalDAVAccount *)self objectForKeyedSubscript:@"CalDAVMobileAccountIsWritable"];

  if (v4)
  {
    v5 = [(MobileCalDAVAccount *)self objectForKeyedSubscript:@"CalDAVMobileAccountIsWritable"];
    -[MobileCalDAVAccount setIsWritable:](self, "setIsWritable:", [v5 intValue] != 0);
  }

  else
  {
    [(MobileCalDAVAccount *)self setIsWritable:1];
  }

  v6 = [(MobileCalDAVAccount *)self objectForKeyedSubscript:*MEMORY[0x277CF78C8]];
  v7 = objc_opt_new();
  [(MobileCalDAVAccount *)self setMPrincipals:v7];

  [(MobileCalDAVAccount *)self objectForKeyedSubscript:*MEMORY[0x277CF78D8]];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = v51 = 0u;
  v8 = [v47 allKeys];
  v9 = [v8 countByEnumeratingWithState:&v48 objects:v56 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v49;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v49 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v48 + 1) + 8 * i);
        v14 = [v47 valueForKey:v13];
        v15 = [[MobileCalDAVPrincipal alloc] initWithConfiguration:v14 principalUID:v13 account:self];
        v16 = [(MobileCalDAVAccount *)self mPrincipals];
        [v16 setObject:v15 forKeyedSubscript:v13];

        if (v6 && ([v13 isEqualToString:v6] & 1) != 0)
        {
          [(MobileCalDAVAccount *)self setMainPrincipal:v15];
        }

        else
        {
          v17 = [(MobileCalDAVAccount *)self mainPrincipal];
          v18 = v6 | v17;

          if (!v18)
          {
            [(MobileCalDAVAccount *)self setMainPrincipal:v15];
            v19 = [(MobileCalDAVAccount *)self mainPrincipal];
            v20 = [v19 uid];
            [(MobileCalDAVAccount *)self setObject:v20 forKeyedSubscript:v46];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v48 objects:v56 count:16];
    }

    while (v10);
  }

  v21 = [(MobileCalDAVAccount *)self mainPrincipal];

  if (!v21)
  {
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v22, v23))
    {
      v24 = [(MobileCalDAVAccount *)self accountDescription];
      v25 = [(MobileCalDAVAccount *)self publicDescription];
      *buf = 138412546;
      v53 = v24;
      v54 = 2114;
      v55 = v25;
      _os_log_impl(&dword_2484B2000, v22, v23, "No main principal found in the account properties for %@ (%{public}@). Creating a new one.", buf, 0x16u);
    }

    v26 = [[MobileCalDAVPrincipal alloc] initWithConfiguration:0 principalUID:0 account:self];
    [(MobileCalDAVAccount *)self setMainPrincipal:v26];

    v27 = [(MobileCalDAVAccount *)self mainPrincipal];
    v28 = [v27 uid];
    [(MobileCalDAVAccount *)self setObject:v28 forKeyedSubscript:v46];

    v29 = [(MobileCalDAVAccount *)self mainPrincipal];
    [(MobileCalDAVAccount *)self addPrincipal:v29];
  }

  v30 = [(MobileCalDAVAccount *)self backingAccount];
  v31 = [v30 accountInfo];
  v32 = [v31 parentAccount];

  if (v32)
  {
    v33 = [(MobileCalDAVAccount *)self backingAccount];
    v34 = [v33 accountInfo];
    v35 = [v34 parentAccount];
    -[MobileCalDAVAccount setIsPrimaryAppleAccount:](self, "setIsPrimaryAppleAccount:", [v35 cal_isPrimaryAppleAccount]);
  }

  v36 = [(MobileCalDAVAccount *)self objectForKeyedSubscript:@"CalDAVMobileAccountSearchPropertySetKey_CoreDAV"];

  if (v36)
  {
    v37 = objc_alloc(MEMORY[0x277CF7018]);
    v38 = MEMORY[0x277CBEB98];
    v39 = [(MobileCalDAVAccount *)self objectForKeyedSubscript:@"CalDAVMobileAccountSearchPropertySetKey_CoreDAV"];
    v40 = [v38 setWithArray:v39];
    v41 = [v37 initWithStringProperties:v40];

    [(MobileCalDAVAccount *)self setSearchPropertySet:v41];
  }

  v42 = MEMORY[0x277CF7040];
  v43 = [(MobileCalDAVAccount *)self objectForKeyedSubscript:@"CalDAVMobileAccountServerVersion"];
  v44 = [v42 versionWithPropertyValue:v43];
  [(MobileCalDAVAccount *)self setServerVersion:v44];

  [(MobileCalDAVAccount *)self setNeedsAccountPropertyRefresh:1];
  self->_wasMigrated = -1;

  v45 = *MEMORY[0x277D85DE8];
}

- (DALocalDBHelper)dbHelper
{
  v2 = [(MobileCalDAVAccount *)self backingAccount];
  v3 = [v2 dbHelper];

  return v3;
}

- (NSDictionary)contextDictionary
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"kDACalDAVContextDictionaryKey_DBHelper";
  v2 = [(MobileCalDAVAccount *)self dbHelper];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (NSString)accountID
{
  v2 = [(MobileCalDAVAccount *)self backingAccount];
  v3 = [v2 accountIdentifier];

  return v3;
}

- (NSString)changeTrackingID
{
  v2 = [(MobileCalDAVAccount *)self backingAccount];
  v3 = [v2 changeTrackingID];

  return v3;
}

- (NSString)publicDescription
{
  v2 = [(MobileCalDAVAccount *)self backingAccount];
  v3 = [v2 publicDescription];

  return v3;
}

- (NSString)password
{
  v2 = [(MobileCalDAVAccount *)self backingAccount];
  v3 = [v2 password];

  return v3;
}

- (void)setPassword:(id)a3
{
  v4 = a3;
  v5 = [(MobileCalDAVAccount *)self backingAccount];
  [v5 setPassword:v4];
}

- (void)setSubscribedCalendars:(id)a3
{
  v7 = a3;
  v4 = [MEMORY[0x277D03970] CalDAVSubscribedCalendarsKey];
  v5 = [(MobileCalDAVAccount *)self objectForKeyedSubscript:v4];

  if (([v7 count] || objc_msgSend(v5, "count")) && (objc_msgSend(v5, "isEqualToDictionary:", v7) & 1) == 0)
  {
    v6 = [MEMORY[0x277D03970] CalDAVSubscribedCalendarsKey];
    [(MobileCalDAVAccount *)self setObject:v7 forKeyedSubscript:v6];

    [(MobileCalDAVAccount *)self setSubscribedCalendarsChanged:1];
  }
}

- (NSDictionary)subscribedCalendars
{
  v3 = [MEMORY[0x277D03970] CalDAVSubscribedCalendarsKey];
  v4 = [(MobileCalDAVAccount *)self objectForKeyedSubscript:v3];

  return v4;
}

- (NSArray)principals
{
  v2 = [(MobileCalDAVAccount *)self mPrincipals];
  v3 = [v2 allValues];

  return v3;
}

- (NSArray)emailAddresses
{
  v2 = [(MobileCalDAVAccount *)self mainPrincipal];
  v3 = [v2 calendarUserAddresses];
  v4 = [v3 allObjects];
  v5 = [v4 valueForKey:@"absoluteString"];

  return v5;
}

- (NSString)preferredAddress
{
  v2 = MEMORY[0x277CF6FF8];
  v3 = [(MobileCalDAVAccount *)self mainPrincipal];
  v4 = [v3 preferredCalendarUserAddresses];
  v5 = [v2 preferredAddress:v4];

  return v5;
}

- (id)addUsernameToURL:(id)a3
{
  v5 = a3;
  v6 = [v5 user];
  v7 = [v6 length];
  if (!v7)
  {
    v3 = [(MobileCalDAVAccount *)self username];
    if ([v3 length])
    {

LABEL_8:
      v11 = [(MobileCalDAVAccount *)self username];
      v12 = [v11 da_stringByAddingPercentEscapesForUsername];
      v13 = [v5 da_urlBySettingUsername:v12];

      v5 = v13;
      goto LABEL_9;
    }
  }

  v8 = [v5 user];
  v9 = [(MobileCalDAVAccount *)self username];
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

- (BOOL)shouldFailAllTasks
{
  v2 = [(MobileCalDAVAccount *)self backingAccount];
  v3 = [v2 shouldFailAllTasks];

  return v3;
}

- (NSString)principalPath
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

- (NSURL)principalURL
{
  v2 = [(MobileCalDAVAccount *)self backingAccount];
  v3 = [v2 principalURL];

  return v3;
}

- (void)setPrincipalURL:(id)a3
{
  v7 = a3;
  v4 = [v7 absoluteString];
  v5 = [v4 hasPrefix:@"/"];

  if (v5)
  {
    v6 = [v7 absoluteString];
    [(MobileCalDAVAccount *)self setPrincipalPath:v6];
  }

  else
  {
    v6 = [(MobileCalDAVAccount *)self backingAccount];
    [v6 setPrincipalURL:v7];
  }
}

- (void)noteHomeSetOnDifferentHost:(id)a3
{
  v14 = a3;
  v4 = [v14 scheme];
  v5 = [v4 isEqualToString:@"http"];
  v6 = [(MobileCalDAVAccount *)self backingAccount];
  [v6 setUseSSL:v5 ^ 1u];

  v7 = [v14 host];
  v8 = [(MobileCalDAVAccount *)self backingAccount];
  [v8 setHost:v7];

  v9 = [v14 port];

  if (v9)
  {
    v10 = [v14 port];
    v11 = [v10 integerValue];
    v12 = [(MobileCalDAVAccount *)self backingAccount];
    [v12 setPort:v11];
  }

  [(MobileCalDAVAccount *)self setShouldDoInitialAutodiscovery:1];
  v13 = [(MobileCalDAVAccount *)self backingAccount];
  [v13 saveAccountProperties];
}

- (void)setAccountDescription:(id)a3
{
  v4 = a3;
  v5 = [(MobileCalDAVAccount *)self backingAccount];
  [v5 setAccountDescription:v4];
}

- (int64_t)port
{
  v2 = [(MobileCalDAVAccount *)self backingAccount];
  v3 = [v2 port];

  return v3;
}

- (void)setPort:(int64_t)a3
{
  v4 = [(MobileCalDAVAccount *)self backingAccount];
  [v4 setPort:a3];
}

- (BOOL)useSSL
{
  v2 = [(MobileCalDAVAccount *)self backingAccount];
  v3 = [v2 useSSL];

  return v3;
}

- (void)setAccountProperty:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MobileCalDAVAccount *)self backingAccount];
  [v8 setAccountProperty:v7 forKey:v6];
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
    v10 = [(MobileCalDAVAccount *)self backingAccount];
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
  if (self->_wasMigrated == -1)
  {
    v3 = [(MobileCalDAVAccount *)self copyCalStore];
    if (v3)
    {
      v4 = v3;
      self->_wasMigrated = CalStoreWasMigrated();
      CFRelease(v4);
    }
  }

  return self->_wasMigrated == 1;
}

- (void)setWasMigrated:(BOOL)a3
{
  v3 = a3;
  v5 = [(MobileCalDAVAccount *)self copyCalStore];
  if (v5)
  {
    v6 = v5;
    if (CalStoreWasMigrated() != v3)
    {
      CalStoreSetWasMigrated();
      self->_wasMigrated = -1;
    }

    CFRelease(v6);
  }
}

- (void)addCalendar:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v5, v6))
  {
    if ([v4 isSubscribed])
    {
      v7 = @"subscribed ";
    }

    else
    {
      v7 = &stru_285AB0D40;
    }

    v8 = [v4 calendarURLString];
    v19 = 138412802;
    v20 = v7;
    v21 = 2048;
    v22 = v4;
    v23 = 2112;
    v24 = v8;
    _os_log_impl(&dword_2484B2000, v5, v6, "Adding %@calendar %p with url %@", &v19, 0x20u);
  }

  if ([v4 isSubscribed])
  {
    [(MobileCalDAVAccount *)self setSubscribedCalendarsChanged:1];
    v9 = [(MobileCalDAVAccount *)self backingAccount];
    v10 = [MEMORY[0x277D03970] CalDAVSubscribedCalendarsKey];
    v11 = [v9 objectForKeyedSubscript:v10];
    v12 = [v11 mutableCopy];

    if (!v12)
    {
      v12 = objc_opt_new();
    }

    v13 = [v4 properties];
    v14 = [v4 calendarURLString];
    [v12 setObject:v13 forKeyedSubscript:v14];

    v15 = [(MobileCalDAVAccount *)self backingAccount];
    v16 = [MEMORY[0x277D03970] CalDAVSubscribedCalendarsKey];
    [v15 setObject:v12 forKeyedSubscript:v16];
  }

  v17 = [(MobileCalDAVAccount *)self calendars];
  [v17 addObject:v4];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)removeCalendar:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v5, v6))
  {
    if ([v4 isSubscribed])
    {
      v7 = @"subscribed ";
    }

    else
    {
      v7 = &stru_285AB0D40;
    }

    v8 = [v4 calendarURLString];
    v18 = 138412802;
    v19 = v7;
    v20 = 2048;
    v21 = v4;
    v22 = 2112;
    v23 = v8;
    _os_log_impl(&dword_2484B2000, v5, v6, "Removing %@calendar %p at url %@", &v18, 0x20u);
  }

  if ([v4 isSubscribed])
  {
    [(MobileCalDAVAccount *)self setSubscribedCalendarsChanged:1];
    v9 = [(MobileCalDAVAccount *)self backingAccount];
    v10 = [MEMORY[0x277D03970] CalDAVSubscribedCalendarsKey];
    v11 = [v9 objectForKeyedSubscript:v10];
    v12 = [v11 mutableCopy];

    v13 = [v4 calendarURLString];
    [v12 removeObjectForKey:v13];

    v14 = [(MobileCalDAVAccount *)self backingAccount];
    v15 = [MEMORY[0x277D03970] CalDAVSubscribedCalendarsKey];
    [v14 setObject:v12 forKeyedSubscript:v15];
  }

  [v4 deleteCalendar];
  v16 = [(MobileCalDAVAccount *)self calendars];
  [v16 removeObject:v4];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)removeCalendarWithURL:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v5, v6))
  {
    *buf = 138412290;
    v27 = v4;
    _os_log_impl(&dword_2484B2000, v5, v6, "Removing calendar with url %@", buf, 0xCu);
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
  v35 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(MobileCalDAVAccount *)v2 mCalendars];

  if (!v3)
  {
    duplicateCalendars = v2->_duplicateCalendars;
    v2->_duplicateCalendars = 0;

    v29 = objc_opt_new();
    v30 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v5 = [(MobileCalDAVAccount *)v2 dbHelper];
    v6 = [(MobileCalDAVAccount *)v2 accountID];
    v7 = [(MobileCalDAVAccount *)v2 changeTrackingID];
    [v5 calOpenDatabaseForAccountID:v6 clientID:v7];

    v8 = [(MobileCalDAVAccount *)v2 copyCalStore];
    if (v8)
    {
      cf = v8;
      v9 = CalStoreCopyCalendars();
      v10 = 0;
      v11 = 0;
      v12 = *(MEMORY[0x277D03988] + 6);
      while (v10 < [v9 count])
      {
        v13 = [v9 objectAtIndexedSubscript:v10];

        if (((CalCalendarCanContainEntityType() & 1) != 0 || CalShouldSyncReminders()) && ([(MobileCalDAVAccount *)v2 mainPrincipal], v14 = objc_claimAutoreleasedReturnValue(), [MobileCalDAVCalendar calendarWithCalCalendar:v13 principal:v14], v15 = objc_claimAutoreleasedReturnValue(), v14, v15))
        {
          v16 = DALoggingwithCategory();
          if (os_log_type_enabled(v16, v12))
          {
            v17 = [v15 calendarURLString];
            *buf = 134218242;
            v32 = v15;
            v33 = 2112;
            v34 = v17;
            _os_log_impl(&dword_2484B2000, v16, v12, "Loaded calendar %p with URL %@", buf, 0x16u);
          }

          v18 = [v15 calendarURL];
          v19 = [v18 absoluteString];

          if (v19)
          {
            if (([v19 hasSuffix:@"/"] & 1) == 0)
            {
              v20 = [v19 stringByAppendingString:@"/"];

              v19 = v20;
            }

            v21 = [v30 objectForKeyedSubscript:v19];
            if (v21)
            {
              [(MobileCalDAVAccount *)v2 _foundDuplicateCalendar:v15 ofCalendar:v21];
              v11 = (v11 + 1);
            }

            else
            {
              [v29 addObject:v15];
              [v30 setObject:v15 forKeyedSubscript:v19];
            }
          }

          else
          {
            [v29 addObject:v15];
          }
        }

        else
        {
          v15 = DALoggingwithCategory();
          if (os_log_type_enabled(v15, v12))
          {
            UID = CalCalendarGetUID();
            *buf = 67109120;
            LODWORD(v32) = UID;
            _os_log_impl(&dword_2484B2000, v15, v12, "Ignoring calendar %d because it isn't a type we care about.", buf, 8u);
          }
        }

        ++v10;
      }

      CFRelease(cf);
    }

    else
    {
      v11 = 0;
    }

    [(MobileCalDAVAccount *)v2 setMCalendars:v29];
    v23 = [(MobileCalDAVAccount *)v2 dbHelper];
    v24 = [(MobileCalDAVAccount *)v2 accountID];
    [v23 calCloseDatabaseForAccountID:v24 save:0];

    if (v11 >= 1)
    {
      [(MobileCalDAVAccount *)v2 _foundDuplicateCalendars:v11];
    }
  }

  objc_sync_exit(v2);

  v25 = [(MobileCalDAVAccount *)v2 mCalendars];
  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

- (void)_foundDuplicateCalendar:(id)a3 ofCalendar:(id)a4
{
  v15[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 calCalendar];
  v9 = [v6 calCalendar];
  [(MobileCalDAVAccount *)self _logDuplicateCalendarDetails:v8];
  [(MobileCalDAVAccount *)self _logDuplicateCalendarDetails:v9];
  duplicateCalendars = self->_duplicateCalendars;
  if (!duplicateCalendars)
  {
    v11 = objc_opt_new();
    v12 = self->_duplicateCalendars;
    self->_duplicateCalendars = v11;

    duplicateCalendars = self->_duplicateCalendars;
  }

  v15[0] = v7;
  v15[1] = v6;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  [(NSMutableArray *)duplicateCalendars addObject:v13];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_logDuplicateCalendarDetails:(void *)a3
{
  v27 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    UID = CalCalendarGetUID();
    v4 = CalCalendarCopyTitle();
    v5 = CalCalendarCopyExternalID();
    v6 = CalCalendarCopyExternalModificationTag();
    v7 = CalCalendarCopyExternalIdentificationTag();
    v8 = CalCalendarCopyUUID();
    v9 = CalCalendarCopySyncToken();
    v10 = DALoggingwithCategory();
    v11 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v10, v11))
    {
      v14[0] = 67110658;
      v14[1] = UID;
      v15 = 2112;
      v16 = v4;
      v17 = 2112;
      v18 = v5;
      v19 = 2114;
      v20 = v6;
      v21 = 2114;
      v22 = v7;
      v23 = 2114;
      v24 = v8;
      v25 = 2114;
      v26 = v9;
      _os_log_impl(&dword_2484B2000, v10, v11, "Duplicate Calendar: [rowid=%i, title=%@, external_id=%@, external_mod_tag=%{public}@, external_id_tag=%{public}@, UUID=%{public}@, sync_token=%{public}@]", v14, 0x44u);
    }
  }

  else
  {
    v4 = DALoggingwithCategory();
    v12 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v4, v12))
    {
      LOWORD(v14[0]) = 0;
      _os_log_impl(&dword_2484B2000, v4, v12, "Duplicate calendar doesn't have a calendar ref!", v14, 2u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_foundDuplicateCalendars:(int)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v4, v5))
  {
    v7[0] = 67109120;
    v7[1] = a3;
    _os_log_impl(&dword_2484B2000, v4, v5, "Found %i duplicate calendars", v7, 8u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (NSArray)duplicateCalendars
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(MobileCalDAVAccount *)v2 mCalendars];

  if (!v3)
  {
    v4 = [(MobileCalDAVAccount *)v2 calendars];
  }

  v5 = v2->_duplicateCalendars;
  objc_sync_exit(v2);

  return v5;
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
  v13 = a3;
  v4 = [(MobileCalDAVAccount *)self mPrincipals];
  v5 = [v13 uid];
  [v4 setObject:v13 forKeyedSubscript:v5];

  [v13 setAccount:self];
  v6 = [(MobileCalDAVAccount *)self backingAccount];
  v7 = *MEMORY[0x277CF78D8];
  v8 = [v6 objectForKeyedSubscript:*MEMORY[0x277CF78D8]];
  v9 = [v8 mutableCopy];

  if (!v9)
  {
    v9 = objc_opt_new();
  }

  v10 = [v13 configuration];
  v11 = [v13 uid];
  [v9 setObject:v10 forKeyedSubscript:v11];

  v12 = [(MobileCalDAVAccount *)self backingAccount];
  [v12 setObject:v9 forKeyedSubscript:v7];
}

- (void)removePrincipal:(id)a3
{
  v4 = a3;
  v5 = [(MobileCalDAVAccount *)self backingAccount];
  v6 = *MEMORY[0x277CF78D8];
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277CF78D8]];
  v12 = [v7 mutableCopy];

  if (!v12)
  {
    v12 = objc_opt_new();
  }

  v8 = [v4 uid];
  [v12 removeObjectForKey:v8];

  v9 = [(MobileCalDAVAccount *)self backingAccount];
  [v9 setObject:v12 forKeyedSubscript:v6];

  v10 = [(MobileCalDAVAccount *)self mPrincipals];
  v11 = [v4 uid];

  [v10 removeObjectForKey:v11];
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
    v9 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = [(MobileCalDAVAccount *)self serverVersion];
      v14 = 138412546;
      v15 = v5;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_2484B2000, v8, v9, "Setting CalDAV server version to '%@' (currently '%@')", &v14, 0x16u);
    }

    objc_storeStrong(&self->_serverVersion, a3);
    v11 = [v5 propertyValue];
    [(MobileCalDAVAccount *)self setObject:v11 forKeyedSubscript:@"CalDAVMobileAccountServerVersion"];

    v12 = DALoggingwithCategory();
    if (os_log_type_enabled(v12, v9))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_2484B2000, v12, v9, "Updating calendar store and saving account properties since CalDAV server version changed", &v14, 2u);
    }

    [(MobileCalDAVAccount *)self _updateCalendarStore:0];
  }

  v13 = *MEMORY[0x277D85DE8];
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
  if ([MEMORY[0x277D03910] calDAVRemindersForAll])
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
  v2 = [(MobileCalDAVAccount *)self backingAccount];
  v3 = [v2 taskManager];

  return v3;
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
    v3 = [MEMORY[0x277D03910] alwaysUseCalendarHomeSync];
  }

  return v3;
}

- (BOOL)haveForcedDefaultCalendarRefetch
{
  v2 = [(MobileCalDAVAccount *)self objectForKeyedSubscript:@"HaveForcedDefaultCalendarRefetch"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (NSString)host
{
  v2 = [(MobileCalDAVAccount *)self backingAccount];
  v3 = [v2 host];

  return v3;
}

- (void)setHost:(id)a3
{
  v4 = a3;
  v5 = [(MobileCalDAVAccount *)self backingAccount];
  [v5 setHost:v4];
}

- (NSString)username
{
  v2 = [(MobileCalDAVAccount *)self backingAccount];
  v3 = [v2 username];

  return v3;
}

- (void)setUsername:(id)a3
{
  v4 = a3;
  v5 = [(MobileCalDAVAccount *)self backingAccount];
  [v5 setUsername:v4];
}

- (double)refreshInterval
{
  v2 = [(MobileCalDAVAccount *)self backingAccount];
  [v2 refreshInterval];
  v4 = v3;

  return v4;
}

- (void)setRefreshInterval:(double)a3
{
  v4 = [(MobileCalDAVAccount *)self backingAccount];
  [v4 setRefreshInterval:a3];
}

- (BOOL)pushDisabled
{
  v2 = [(MobileCalDAVAccount *)self backingAccount];
  v3 = [v2 pushDisabled];

  return v3;
}

- (BOOL)shouldDoInitialAutodiscovery
{
  v2 = [(MobileCalDAVAccount *)self backingAccount];
  v3 = [v2 backingAccountShouldDoInitialAutodiscovery];

  return v3;
}

- (id)_calendarConstraintsName
{
  v2 = [(MobileCalDAVAccount *)self serverVersion];
  if ([v2 supportsTimeRangeFilter] && (objc_msgSend(v2, "supportsTimeRangeFilterWithoutEndDate") & 1) == 0)
  {
    v3 = [v2 supportsAutoSchedule];
    v9 = [v2 supportsPrivateComments];
    v5 = MEMORY[0x277CF7978];
    v6 = v9 == 0;
    v7 = MEMORY[0x277CF7968];
    if (v9)
    {
      v5 = MEMORY[0x277CF7970];
    }

    v8 = MEMORY[0x277CF7960];
  }

  else
  {
    v3 = [v2 supportsAutoSchedule];
    v4 = [v2 supportsPrivateComments];
    v5 = MEMORY[0x277CF78C0];
    v6 = v4 == 0;
    v7 = MEMORY[0x277CF78B0];
    if (v4)
    {
      v5 = MEMORY[0x277CF78B8];
    }

    v8 = MEMORY[0x277CF78A8];
  }

  if (v6)
  {
    v8 = v7;
  }

  if (v3)
  {
    v5 = v8;
  }

  v10 = *v5;
  v11 = *v5;

  return v10;
}

- (void)copyCalStore
{
  v3 = [(MobileCalDAVAccount *)self dbHelper];
  v4 = [(MobileCalDAVAccount *)self accountID];
  [v3 calDatabaseForAccountID:v4];

  [(MobileCalDAVAccount *)self accountID];

  return CalDatabaseCopyStoreWithExternalID();
}

- (NSString)calendarHomeSyncToken
{
  v2 = [(MobileCalDAVAccount *)self copyCalStore];
  if (v2)
  {
    v3 = v2;
    v4 = CalStoreCopyExternalModificationTag();
    CFRelease(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setCalendarHomeSyncToken:(id)a3
{
  v6 = a3;
  v4 = [(MobileCalDAVAccount *)self copyCalStore];
  v5 = [(MobileCalDAVAccount *)self calendarHomeSyncToken];
  if (!v4 || v5 == v6)
  {
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  else if (([v6 isEqualToString:v5] & 1) == 0)
  {
    CalStoreSetExternalModificationTag();
  }

  CFRelease(v4);
LABEL_7:
}

- (NSString)accountDescription
{
  if ([(MobileCalDAVAccount *)self isDelegateAccount])
  {
    v3 = [(MobileCalDAVAccount *)self mainPrincipal];
    [v3 fullName];
  }

  else
  {
    v3 = [(MobileCalDAVAccount *)self backingAccount];
    [v3 accountDescription];
  }
  v4 = ;

  return v4;
}

+ (id)_defaultAlarmOffsetFromICSString:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 length])
  {
    v5 = [MEMORY[0x277D7F0B0] parseableDocumentFromICS:v4];
    v6 = v5;
    v7 = MEMORY[0x277D03988];
    if (v5 && ([v5 calendar], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v9 = [v6 calendar];
      v10 = [v9 components];

      v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v11)
      {
        v12 = *v25;
        while (2)
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v25 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v14 = *(*(&v24 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v11 = v14;
              goto LABEL_19;
            }
          }

          v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }
    }

    else
    {
      v10 = DALoggingwithCategory();
      v16 = *(v7 + 3);
      if (os_log_type_enabled(v10, v16))
      {
        *buf = 138412290;
        v30 = v4;
        _os_log_impl(&dword_2484B2000, v10, v16, "Could not parse the ics containing the default alarms. ICS: %@", buf, 0xCu);
      }

      v11 = 0;
    }

LABEL_19:

    v17 = [v11 trigger];
    if ([v17 isDurationBased])
    {
      v18 = [v17 value];
      v19 = MEMORY[0x277CCABB0];
      [v18 timeInterval];
      v15 = [v19 numberWithInt:v20];
    }

    else
    {
      v18 = DALoggingwithCategory();
      v21 = *(v7 + 3);
      if (os_log_type_enabled(v18, v21))
      {
        *buf = 138412290;
        v30 = v4;
        _os_log_impl(&dword_2484B2000, v18, v21, "Date based default alarms are not a thing. ICS: %@", buf, 0xCu);
      }

      v15 = &unk_285ABBAE0;
    }
  }

  else
  {
    v15 = &unk_285ABBAE0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v15;
}

- (BOOL)_updateCalendarStoreProperties:(void *)a3
{
  v102 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    result = 0;
    goto LABEL_117;
  }

  v4 = CalStoreCopyName();
  v5 = [(MobileCalDAVAccount *)self accountDescription];
  if (v4 == v5 || ([v4 isEqualToString:v5] & 1) != 0)
  {
    v6 = 0;
  }

  else
  {
    CalStoreSetName();
    v6 = 1;
  }

  v8 = CalStoreCopyOwnerName();
  v9 = [(MobileCalDAVAccount *)self mainPrincipal];
  v10 = [v9 fullName];

  if (v8 != v10 && ([v8 isEqualToString:v10] & 1) == 0)
  {
    CalStoreSetOwnerName();
    v6 = 1;
  }

  if (CalEntityIsNew())
  {
    v11 = v6;
    v12 = CalStoreCopyUUID();
    v13 = [(MobileCalDAVAccount *)self backingAccount];
    v14 = [v13 persistentUUID];

    if (v12 == v14)
    {
      v6 = v11;
    }

    else
    {
      v6 = v11;
      if (([v12 isEqualToString:v14] & 1) == 0)
      {
        CalStoreSetUUID();
        v6 = 1;
      }
    }
  }

  if (CalStoreGetType() != 2)
  {
    CalStoreSetType();
    v6 = 1;
  }

  v15 = CalStoreCopyExternalID();
  v16 = [(MobileCalDAVAccount *)self accountID];
  v97 = v15;
  if (v15 != v16 && ([v15 isEqualToString:v16] & 1) == 0)
  {
    CalStoreSetExternalID();
    v6 = 1;
  }

  v98 = v6;
  v96 = v16;
  v17 = [(MobileCalDAVAccount *)self _calendarConstraintsName];
  v94 = CalStoreCopyConstraintsName();
  if (([v94 isEqualToString:v17] & 1) == 0)
  {
    v18 = DALoggingwithCategory();
    v19 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v18, v19))
    {
      *buf = 138412290;
      v101 = v17;
      _os_log_impl(&dword_2484B2000, v18, v19, "Setting calendar store constraints plist path to '%@'", buf, 0xCu);
    }

    CalStoreSetConstraintsName();
    v98 = 1;
  }

  if ((CalIsReminderBridgeEnabled() & 1) != 0 || ![(MobileCalDAVAccount *)self supportsReminders])
  {
    if ((CalStoreAllowsTasks() & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v20 = [(MobileCalDAVAccount *)self backingAccount];
  v21 = [v20 isEnabledForDataclass:*MEMORY[0x277CB9190]];

  if (v21 != CalStoreAllowsTasks())
  {
LABEL_30:
    CalStoreSetAllowsTasks();
    v98 = 1;
  }

LABEL_31:
  if ([(MobileCalDAVAccount *)self supportsEvents])
  {
    v22 = [(MobileCalDAVAccount *)self backingAccount];
    v23 = [v22 isEnabledForDataclass:*MEMORY[0x277CB90F0]];

    if (v23 == CalStoreAllowsEvents())
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (CalStoreAllowsEvents())
  {
LABEL_35:
    CalStoreSetAllowsEvents();
    v98 = 1;
  }

LABEL_36:
  v24 = [(MobileCalDAVAccount *)self mainPrincipal];
  v95 = v17;
  if ([v24 canCreateCalendars])
  {
    v25 = [(MobileCalDAVAccount *)self serverVersion];
    [v25 type];
    v26 = v5;
    v27 = v8;
    v28 = v4;
    v30 = v29 = v10;
    v31 = [v30 isEqualToString:*MEMORY[0x277CF70A0]] ^ 1;

    v10 = v29;
    v4 = v28;
    v8 = v27;
    v5 = v26;
  }

  else
  {
    v31 = 0;
  }

  v32 = v98;
  if (v31 != CalStoreAllowsCalendarAddDeleteModify())
  {
    CalStoreSetAllowsCalendarAddDeleteModify();
    v32 = 1;
  }

  v33 = [(MobileCalDAVAccount *)self serverVersion];
  v34 = [v33 supportsSharing];

  if (v34 != CalStoreSupportsSharedCalendars())
  {
    CalStoreSetSupportsSharedCalendars();
    v32 = 1;
  }

  if ((CalStoreSupportsAlarmAcknowledgedDate() & 1) == 0)
  {
    v32 = 1;
    CalStoreSetSupportsAlarmAcknowledgedDate();
  }

  v35 = [(MobileCalDAVAccount *)self serverVersion];
  v36 = [v35 supportsPrivateEvents];

  if (v36 != CalStoreSupportsPrivateEvents())
  {
    CalStoreSetSupportsPrivateEvents();
    v32 = 1;
  }

  if (CalStoreGetPreferredEventPrivateValue() != 3)
  {
    CalStoreSetPreferredEventPrivateValue();
    v32 = 1;
  }

  if (CalStoreGetStrictestEventPrivateValue() != 2)
  {
    CalStoreSetStrictestEventPrivateValue();
    v32 = 1;
  }

  v37 = [(MobileCalDAVAccount *)self mainPrincipal];
  v38 = [v37 isDelegate];

  if (v38)
  {
    v39 = CalStoreCopyDelegatedAccountOwnerStoreID();
    v40 = [(MobileCalDAVAccount *)self backingAccount];
    v41 = [v40 parentAccountIdentifier];

    if (v39 != v41 && ([v39 isEqualToString:v41] & 1) == 0)
    {
      CalStoreSetDelegatedAccountOwnerStoreID();
      v32 = 1;
    }
  }

  if ((CalStoreProhibitsPrivateEventsWithAttendees() & 1) == 0)
  {
    v32 = 1;
    CalStoreSetProhibitsPrivateEventsWithAttendees();
  }

  if ((CalStoreRequiresSamePrivacyLevelAcrossRecurrenceSeries() & 1) == 0)
  {
    v32 = 1;
    CalStoreSetRequiresSamePrivacyLevelAcrossRecurrenceSeries();
  }

  v42 = [(MobileCalDAVAccount *)self mainPrincipal];
  v43 = [v42 supportsFreebusy];

  if (v43 != CalStoreSupportsAvailabilityRequests())
  {
    CalStoreSetSupportsAvailabilityRequests();
    v32 = 1;
  }

  if ((CalStoreSupportsIgnoringEventsInAvailabilityRequests() & 1) == 0)
  {
    v32 = 1;
    CalStoreSetSupportsIgnoringEventsInAvailabilityRequests();
  }

  if ((CalStoreSupportsTravelTime() & 1) == 0)
  {
    v32 = 1;
    CalStoreSetSupportsTravelTime();
  }

  v44 = [(MobileCalDAVAccount *)self serverVersion];
  v45 = [v44 supportsInboxAvailability];

  if (v45 != CalStoreSupportsInboxAvailability())
  {
    CalStoreSetSupportsInboxAvailability();
    v32 = 1;
  }

  v46 = [(MobileCalDAVAccount *)self serverVersion];
  v47 = [v46 supportsClearingPrivateComments];

  if (v47 != CalStoreGetSupportsClearingPrivateComments())
  {
    CalStoreSetSupportsClearingPrivateComments();
    v32 = 1;
  }

  if ((CalStoreSupportsLocationDirectorySearches() & 1) == 0)
  {
    v32 = 1;
    CalStoreSetSupportsLocationDirectorySearches();
  }

  v48 = [(MobileCalDAVAccount *)self serverVersion];
  v49 = [v48 supportsCalendarAudit];

  if (v49 != CalStoreGetSupportsJunkReporting())
  {
    CalStoreSetSupportsJunkReporting();
    v32 = 1;
  }

  v50 = [(MobileCalDAVAccount *)self serverVersion];
  v51 = [v50 supportsTelephone];

  if (v51 != CalStoreGetSupportsPhoneNumbers())
  {
    CalStoreSetSupportsPhoneNumbers();
    v32 = 1;
  }

  v52 = [(MobileCalDAVAccount *)self serverVersion];
  v53 = [v52 supportsManagedAttachments];

  if (v53 != CalStoreSupportsAttachments())
  {
    CalStoreSetSupportsAttachments();
    v32 = 1;
  }

  v54 = [(MobileCalDAVAccount *)self serverVersion];
  v55 = [v54 requiresOpeningAttachmentAsLink];

  if (v55 != CalStoreRequiresOpeningAttachmentAsLink())
  {
    CalStoreSetRequiresOpeningAttachmentAsLink();
    v32 = 1;
  }

  v56 = [(MobileCalDAVAccount *)self serverVersion];
  v57 = [v56 shouldUseDeleteAndAddInsteadOfMoveBetweenCalendars];

  if (v57 != CalStoreShouldUseDeleteAndAddInsteadOfMoveBetweenCalendars())
  {
    CalStoreSetShouldUseDeleteAndAddInsteadOfMoveBetweenCalendars();
    v32 = 1;
  }

  v58 = [(MobileCalDAVAccount *)self serverVersion];
  v59 = [v58 supportsCalendarProxy];

  if (v59 != CalStoreSupportsDelegation())
  {
    CalStoreSetSupportsDelegation();
    v32 = 1;
  }

  if (v59 != CalStoreSupportsDelegateEnumeration())
  {
    CalStoreSetSupportsDelegateEnumeration();
    v32 = 1;
  }

  v60 = [(MobileCalDAVAccount *)self isWritable];
  if (v60 != CalStoreIsWritable())
  {
    CalStoreSetIsWritable();
    v32 = 1;
  }

  if ((CalStoreSupportsFloatingTimeZone() & 1) == 0)
  {
    v32 = 1;
    CalStoreSetSupportsFloatingTimeZone();
  }

  v61 = [(MobileCalDAVAccount *)self serverVersion];
  v62 = [v61 supportsSubscriptionCalendars];

  if (v62 != CalStoreSupportsSubscriptionCalendars())
  {
    CalStoreSetSupportsSubscriptionCalendars();
    v32 = 1;
  }

  v63 = [(MobileCalDAVAccount *)self serverVersion];
  v64 = [v63 supportsManagedSubscriptionCalendars];

  if (v64 != CalStoreSupportsManagedSubscriptionCalendars())
  {
    CalStoreSetSupportsManagedSubscriptionCalendars();
    v32 = 1;
  }

  v65 = [(MobileCalDAVAccount *)self serverVersion];
  v66 = [v65 supportsSubscriptionMirroring];

  if (v66 != CalStoreSupportsSubscriptionMirroring())
  {
    CalStoreSetSupportsSubscriptionMirroring();
    v32 = 1;
  }

  v67 = [(MobileCalDAVAccount *)self serverVersion];
  v68 = [v67 supportsParticipantRoles];

  if (v68 != CalStoreSupportsParticipantRoles())
  {
    CalStoreSetSupportsParticipantRoles();
    v32 = 1;
  }

  v69 = [(MobileCalDAVAccount *)self backingAccount];
  v70 = [v69 topLevelAccountTypeIdentifier];

  LODWORD(v69) = [v70 isEqualToString:*MEMORY[0x277CB8C40]];
  if (v69 != CalStoreProhibitsUsingEventOrganizerEmailWhenComposingMail())
  {
    CalStoreSetProhibitsUsingEventOrganizerEmailWhenComposingMail();
    v32 = 1;
  }

  if (CalStoreSupportsInvitationModificationsWithoutNotification())
  {
    CalStoreSetSupportsInvitationModificationsWithoutNotification();
    v32 = 1;
  }

  v71 = [(MobileCalDAVAccount *)self serverVersion];
  v72 = [v71 supportsCalendarRecurrenceSplit];

  if (v72 != CalStoreSupportsRecurrenceSplit())
  {
    CalStoreSetSupportsRecurrenceSplit();
    v32 = 1;
  }

  v73 = [(MobileCalDAVAccount *)self mainPrincipal];
  v74 = [v73 supportsPush];

  if (v74 != CalStoreSupportsPush())
  {
    CalStoreSetSupportsPush();
    v32 = 1;
  }

  if (CalStoreSyncDefaultAlarms())
  {
    v75 = [(MobileCalDAVAccount *)self mainPrincipal];
    v76 = [v75 alarmsDirty];

    if (v76)
    {
      v93 = v10;
      v99 = v8;
      v77 = v5;
      v78 = v4;
      v79 = objc_opt_class();
      v80 = [(MobileCalDAVAccount *)self mainPrincipal];
      v81 = [v80 defaultTimedAlarms];
      v82 = [v79 _defaultAlarmOffsetFromICSString:v81];

      v83 = [v82 integerValue];
      if (v83 != CalStoreGetDefaultAlarmOffsetNSInteger())
      {
        CalStoreSetDefaultAlarmOffset();
        v32 = 1;
      }

      v84 = objc_opt_class();
      v85 = [(MobileCalDAVAccount *)self mainPrincipal];
      v86 = [v85 defaultAllDayAlarms];
      v87 = [v84 _defaultAlarmOffsetFromICSString:v86];

      v88 = [v87 integerValue];
      if (v88 != CalStoreGetDefaultAlarmOffsetNSInteger())
      {
        CalStoreSetDefaultAllDayAlarmOffset();
        v32 = 1;
      }

      v89 = [(MobileCalDAVAccount *)self mainPrincipal];
      [v89 setAlarmsDirty:0];

      v4 = v78;
      v5 = v77;
      v8 = v99;
      v10 = v93;
    }
  }

  v90 = CalStoreCopyCachedExternalInfo();
  v91 = [(MobileCalDAVAccount *)self _externalInfoDictionary];
  if (v90 | v91 && ([v90 isEqual:v91] & 1) == 0)
  {
    CalStoreSetCachedExternalInfo();
    v32 = 1;
  }

  result = v32;
LABEL_117:
  v92 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)updateCalendarStoreWithAlreadyOpenDBShouldCreate:(BOOL)a3 syncingThisAccount:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  Store = [(MobileCalDAVAccount *)self copyCalStore];
  if (Store)
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  if (v8 == 1)
  {
    v9 = DALoggingwithCategory();
    v10 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v9, v10))
    {
      *buf = 0;
      _os_log_impl(&dword_2484B2000, v9, v10, "ACCOUNTDCOERROR Couldn't find an existing calendar store, so creating a new one.", buf, 2u);
    }

    v11 = [(MobileCalDAVAccount *)self dbHelper];
    v12 = [(MobileCalDAVAccount *)self accountID];
    [v11 calDatabaseForAccountID:v12];
    Store = CalDatabaseCreateStore();

    if ([(MobileCalDAVAccount *)self isDelegateAccount])
    {
      CalStoreSetEnabled();
    }
  }

  if (v5)
  {
    v13 = [(MobileCalDAVAccount *)self mainPrincipal];
    [v13 updatePropertiesFromCalStore:Store];
  }

  if (Store)
  {
    v8 |= [(MobileCalDAVAccount *)self _updateCalendarStoreProperties:Store];
    if (v4 && (CalStoreIsEnabled() & 1) == 0)
    {
      v14 = [(MobileCalDAVAccount *)self refreshContext];
      [v14 setIsDisabledAccount:1];
    }

    CFRelease(Store);
  }

  else
  {
    v15 = DALoggingwithCategory();
    v16 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v15, v16))
    {
      *v18 = 0;
      _os_log_impl(&dword_2484B2000, v15, v16, "Couldn't update the calendar store because one doesn't exist in the database", v18, 2u);
    }
  }

  return v8;
}

- (id)_externalInfoDictionary
{
  v21[3] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [(MobileCalDAVAccount *)self host];
  v5 = v4;
  if (v4)
  {
    v6 = *MEMORY[0x277CF7468];
    v21[0] = v4;
    v7 = *MEMORY[0x277CF7480];
    v20[0] = v6;
    v20[1] = v7;
    v8 = MEMORY[0x277CCABB0];
    v9 = [(MobileCalDAVAccount *)self backingAccount];
    v10 = [v8 numberWithInteger:{objc_msgSend(v9, "port")}];
    v21[1] = v10;
    v20[2] = *MEMORY[0x277CF7490];
    v11 = MEMORY[0x277CCABB0];
    v12 = [(MobileCalDAVAccount *)self backingAccount];
    v13 = [v11 numberWithBool:{objc_msgSend(v12, "useSSL")}];
    v21[2] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];
    [v3 addEntriesFromDictionary:v14];

    v15 = [(MobileCalDAVAccount *)self emailAddresses];
    v16 = [(MobileCalDAVAccount *)self preferredAddress];
    if (v15)
    {
      [v3 setObject:v15 forKeyedSubscript:*MEMORY[0x277CF7478]];
    }

    if (v16)
    {
      [v3 setObject:v16 forKeyedSubscript:*MEMORY[0x277CF7488]];
    }
  }

  v17 = [MEMORY[0x277CCABB0] numberWithBool:{-[MobileCalDAVAccount isPrimaryAppleAccount](self, "isPrimaryAppleAccount")}];
  [v3 setObject:v17 forKeyedSubscript:*MEMORY[0x277CF7470]];

  v18 = *MEMORY[0x277D85DE8];

  return v3;
}

- (NSArray)spinnerIdentifiers
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = spinnerIdentifiers_sSpinnerIdentifiers;
  if (!spinnerIdentifiers_sSpinnerIdentifiers)
  {
    v7[0] = *MEMORY[0x277CF78A0];
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
    v4 = spinnerIdentifiers_sSpinnerIdentifiers;
    spinnerIdentifiers_sSpinnerIdentifiers = v3;

    v2 = spinnerIdentifiers_sSpinnerIdentifiers;
  }

  v5 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)syncStarted
{
  if (!self->_syncInProgress)
  {
    self->_syncInProgress = 1;
    v3 = MEMORY[0x277D037D8];
    v4 = [(MobileCalDAVAccount *)self accountID];
    [v3 syncStartedForStoreWithExternalID:v4];
  }
}

- (void)syncEndedWithError:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (self->_syncInProgress)
  {
LABEL_6:
    self->_syncInProgress = 0;
    v8 = MEMORY[0x277D037D8];
    v9 = [(MobileCalDAVAccount *)self accountID];
    [v8 syncEndedForStoreWithExternalID:v9 withError:v5];

    goto LABEL_7;
  }

  if (v4)
  {
    v6 = DALoggingwithCategory();
    v7 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v6, v7))
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&dword_2484B2000, v6, v7, "syncEndedWithError: called with an error while a sync is not in progress. Recording the error anyway. error = %@", &v11, 0xCu);
    }

    goto LABEL_6;
  }

LABEL_7:

  v10 = *MEMORY[0x277D85DE8];
}

- (void)cancelRefreshWithCompletion:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = [(MobileCalDAVAccount *)self accountDescription];
    v8 = [(MobileCalDAVAccount *)self publicDescription];
    *buf = 138412546;
    v21 = v7;
    v22 = 2114;
    v23 = v8;
    _os_log_impl(&dword_2484B2000, v5, v6, "Canceling MobileCalDAVAccount refresh for account %@ (%{public}@)", buf, 0x16u);
  }

  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __51__MobileCalDAVAccount_cancelRefreshWithCompletion___block_invoke;
  v17 = &unk_278F175A0;
  v18 = self;
  v19 = v4;
  v9 = v4;
  v10 = MEMORY[0x24C1D0520](&v14);
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
  v2 = [*(a1 + 32) taskManager];
  [v2 shutdown];

  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    *v6 = 0;
    _os_log_impl(&dword_2484B2000, v3, v4, "CalDAV task manager has been shut down.", v6, 2u);
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)_clearOrphanedCalendarItemChangesOfType:(int)a3 withContext:(id)a4 goodCalendarIds:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = [(MobileCalDAVAccount *)self dbHelper];
  v11 = [(MobileCalDAVAccount *)self accountID];
  [v10 calDatabaseForAccountID:v11];

  v12 = [(MobileCalDAVAccount *)self copyCalStore];
  if (v12)
  {
    cf = v12;
    CalDatabaseCopyCalendarItemChangesInStore();
    v15 = DALoggingwithCategory();
    v16 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = @"task";
      if (a3 == 2)
      {
        v17 = @"event";
      }

      *buf = 138412290;
      v21 = v17;
      _os_log_impl(&dword_2484B2000, v15, v16, "Searching for orhpaned %@ changes", buf, 0xCu);
    }

    CFRelease(cf);
  }

  else
  {
    v13 = DALoggingwithCategory();
    v14 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v13, v14))
    {
      *buf = 0;
      _os_log_impl(&dword_2484B2000, v13, v14, "Couldn't get a calendar store to clear orphaned calendar item changes", buf, 2u);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_clearOrphanedChangesWithChangesCall:(void *)a3 entityType:(int)a4 withContext:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = [(MobileCalDAVAccount *)self dbHelper];
  v9 = [(MobileCalDAVAccount *)self accountID];
  v10 = [v8 calDatabaseForAccountID:v9];

  v11 = [(MobileCalDAVAccount *)self copyCalStore];
  if (v11)
  {
    v12 = v11;
    theDict = 0;
    (a3)(v10, v11, &theDict);
    v30 = v7;
    if (theDict)
    {
      Value = CFDictionaryGetValue(theDict, *MEMORY[0x277CF75E0]);
      v14 = CFDictionaryGetValue(theDict, *MEMORY[0x277CF7608]);
    }

    else
    {
      v14 = 0;
      Value = 0;
    }

    v17 = DALoggingwithCategory();
    v18 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v17, v18))
    {
      *buf = 0;
      _os_log_impl(&dword_2484B2000, v17, v18, "Searching for orhpaned changes", buf, 2u);
    }

    if (Value)
    {
      Count = CFArrayGetCount(Value);
      if (Count >= 1)
      {
        v20 = Count;
        Mutable = 0;
        for (i = 0; i != v20; ++i)
        {
          CFArrayGetValueAtIndex(v14, i);
          v23 = CalDatabaseCopyCalendarItemWithRowID();
          if (v23)
          {
            CFRelease(v23);
          }

          else
          {
            v24 = DALoggingwithCategory();
            if (os_log_type_enabled(v24, v18))
            {
              *buf = 134217984;
              v33 = i;
              _os_log_impl(&dword_2484B2000, v24, v18, "Found an orphaned change at index %ld", buf, 0xCu);
            }

            if (!Mutable)
            {
              Mutable = CFArrayCreateMutable(0, 0, 0);
            }

            ValueAtIndex = CFArrayGetValueAtIndex(Value, i);
            CFArrayAppendValue(Mutable, ValueAtIndex);
          }
        }

        if (Mutable)
        {
          v26 = DALoggingwithCategory();
          if (os_log_type_enabled(v26, v18))
          {
            v27 = CFArrayGetCount(Mutable);
            *buf = 134217984;
            v33 = v27;
            _os_log_impl(&dword_2484B2000, v26, v18, "Found %ld orphaned changes", buf, 0xCu);
          }

          v28 = [(MobileCalDAVAccount *)self changeTrackingID];
          CalDatabaseClearIndividualChangeRowIDsForClient();

          CFRelease(Mutable);
          [v30 setShouldSave:1];
        }
      }
    }

    if (theDict)
    {
      CFRelease(theDict);
      theDict = 0;
    }

    CFRelease(v12);
    v7 = v30;
  }

  else
  {
    v15 = DALoggingwithCategory();
    v16 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v15, v16))
    {
      *buf = 0;
      _os_log_impl(&dword_2484B2000, v15, v16, "Couldn't get a calendar store to clear orphaned changes", buf, 2u);
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)_clearOrphanedChangesWithContext:(id)a3
{
  v4 = a3;
  v5 = [(MobileCalDAVAccount *)self copyCalStore];
  if (v5)
  {
    v6 = v5;
    v7 = objc_opt_new();
    v8 = CalStoreCopyCalendars();
    if ([v8 count])
    {
      v9 = 0;
      do
      {
        [v8 objectAtIndexedSubscript:v9];

        if ((CalCalendarIsEffectivelyReadOnly() & 1) == 0)
        {
          v10 = [MEMORY[0x277CCABB0] numberWithInt:CalCalendarGetUID()];
          [v7 addObject:v10];
        }

        ++v9;
      }

      while (v9 < [v8 count]);
    }

    [(MobileCalDAVAccount *)self _clearOrphanedCalendarItemChangesOfType:2 withContext:v4 goodCalendarIds:v7];
    [(MobileCalDAVAccount *)self _clearOrphanedCalendarItemChangesOfType:3 withContext:v4 goodCalendarIds:v7];
    [(MobileCalDAVAccount *)self _clearOrphanedChangesWithChangesCall:MEMORY[0x277CF7148] entityType:4 withContext:v4];
    [(MobileCalDAVAccount *)self _clearOrphanedChangesWithChangesCall:MEMORY[0x277CF7168] entityType:7 withContext:v4];
    [(MobileCalDAVAccount *)self _clearOrphanedChangesWithChangesCall:MEMORY[0x277CF7178] entityType:8 withContext:v4];
    [(MobileCalDAVAccount *)self _clearOrphanedChangesWithChangesCall:MEMORY[0x277CF7188] entityType:5 withContext:v4];
    [(MobileCalDAVAccount *)self _clearOrphanedChangesWithChangesCall:MEMORY[0x277CF7158] entityType:11 withContext:v4];
    CFRelease(v6);
  }

  else
  {
    v11 = DALoggingwithCategory();
    v12 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v11, v12))
    {
      *v13 = 0;
      _os_log_impl(&dword_2484B2000, v11, v12, "Couldn't get a calendar store to clear orphaned store changes", v13, 2u);
    }
  }
}

- (BOOL)_saveModifiedSubscribedCalendarsOnBackingAccount
{
  v57 = *MEMORY[0x277D85DE8];
  v2 = [(MobileCalDAVAccount *)self backingAccount];
  v3 = [MEMORY[0x277D03970] CalDAVSubscribedCalendarsKey];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = [v4 allKeys];
  v6 = [v5 mutableCopy];

  v7 = DALoggingwithCategory();
  v8 = MEMORY[0x277D03988];
  v9 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v7, v9))
  {
    *buf = 138412290;
    v53 = v6;
    _os_log_impl(&dword_2484B2000, v7, v9, "Existing subscribed calendars are: %@", buf, 0xCu);
  }

  v39 = objc_opt_new();
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = [(MobileCalDAVAccount *)self calendars];
  v10 = [obj countByEnumeratingWithState:&v47 objects:v56 count:16];
  if (!v10)
  {
    v40 = 0;
    goto LABEL_25;
  }

  v12 = v10;
  v40 = 0;
  v13 = *v48;
  v14 = *(v8 + 3);
  *&v11 = 138412290;
  v38 = v11;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v48 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v47 + 1) + 8 * i);
      if ([v16 isSubscribed])
      {
        v17 = [v16 calendarURLString];
        v18 = [(MobileCalDAVAccount *)self subscribedCalendars];
        if (v18 && ([v16 isDirty] & 1) != 0)
        {

          goto LABEL_13;
        }

        v19 = [v6 containsObject:v17];

        if ((v19 & 1) == 0)
        {
LABEL_13:
          v20 = DALoggingwithCategory();
          if (os_log_type_enabled(v20, v9))
          {
            v21 = [v16 calendarURLString];
            *buf = 134218242;
            v53 = v16;
            v54 = 2112;
            v55 = v21;
            _os_log_impl(&dword_2484B2000, v20, v9, "Subscribed calendar %p at %@ is dirty", buf, 0x16u);
          }

          v40 = 1;
        }

        [v6 removeObject:v17];
        if (v17)
        {
          v22 = [v16 properties];
          [v39 setObject:v22 forKeyedSubscript:v17];
        }

        else
        {
          v22 = DALoggingwithCategory();
          if (os_log_type_enabled(v22, v14))
          {
            *buf = v38;
            v53 = v16;
            _os_log_impl(&dword_2484B2000, v22, v14, "Subscribed calendar has no URL so its properties cannot be saved: %@", buf, 0xCu);
          }
        }

        continue;
      }
    }

    v12 = [obj countByEnumeratingWithState:&v47 objects:v56 count:16];
  }

  while (v12);
LABEL_25:

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v23 = v6;
  v24 = [v23 countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v44;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v44 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v43 + 1) + 8 * j);
        v29 = DALoggingwithCategory();
        if (os_log_type_enabled(v29, v9))
        {
          *buf = 138412290;
          v53 = v28;
          _os_log_impl(&dword_2484B2000, v29, v9, "Subscribed calendar at %@ was deleted", buf, 0xCu);
        }
      }

      v25 = [v23 countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v25);

LABEL_36:
    v30 = DALoggingwithCategory();
    v31 = v39;
    if (os_log_type_enabled(v30, v9))
    {
      v32 = [v39 allKeys];
      *buf = 138412290;
      v53 = v32;
      _os_log_impl(&dword_2484B2000, v30, v9, "Subscribed calendars were modified. New calendars are %@", buf, 0xCu);
    }

    v33 = [(MobileCalDAVAccount *)self backingAccount];
    v34 = [MEMORY[0x277D03970] CalDAVSubscribedCalendarsKey];
    [v33 setObject:v39 forKeyedSubscript:v34];

    v35 = 1;
  }

  else
  {

    if (v40)
    {
      goto LABEL_36;
    }

    v35 = 0;
    v31 = v39;
  }

  v36 = *MEMORY[0x277D85DE8];
  return v35;
}

- (BOOL)_saveModifiedPrincipalsOnBackingAccount
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = [(MobileCalDAVAccount *)self backingAccount];
  v35 = *MEMORY[0x277CF78D8];
  v4 = [v3 objectForKeyedSubscript:?];
  v5 = [v4 mutableCopy];

  if (!v5)
  {
    v5 = objc_opt_new();
  }

  v6 = [v5 allKeys];
  v7 = [v6 mutableCopy];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v36 = self;
  v8 = [(MobileCalDAVAccount *)self mPrincipals];
  v9 = [v8 allValues];

  v10 = [v9 countByEnumeratingWithState:&v41 objects:v48 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v42;
    v14 = *(MEMORY[0x277D03988] + 6);
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v42 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v41 + 1) + 8 * i);
        v17 = [v16 uid];
        [v7 removeObject:v17];

        if ([v16 isDirty])
        {
          v18 = DALoggingwithCategory();
          if (os_log_type_enabled(v18, v14))
          {
            v19 = [v16 uid];
            *buf = 138412290;
            v47 = v19;
            _os_log_impl(&dword_2484B2000, v18, v14, "Principal %@ is dirty", buf, 0xCu);
          }

          v20 = [v16 configuration];
          v21 = [v16 uid];
          [v5 setObject:v20 forKeyedSubscript:v21];

          v12 = 1;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v41 objects:v48 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v22 = v7;
  v23 = [v22 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v38;
    v26 = *(MEMORY[0x277D03988] + 6);
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v38 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v28 = *(*(&v37 + 1) + 8 * j);
        v29 = DALoggingwithCategory();
        if (os_log_type_enabled(v29, v26))
        {
          *buf = 138412290;
          v47 = v28;
          _os_log_impl(&dword_2484B2000, v29, v26, "Principal %@ was deleted.", buf, 0xCu);
        }

        [v5 removeObjectForKey:v28];
      }

      v24 = [v22 countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v24);
    v12 = 1;
  }

  v30 = [(MobileCalDAVAccount *)v36 backingAccount];
  [v30 setObject:v5 forKeyedSubscript:v35];

  if (v12)
  {
    v31 = DALoggingwithCategory();
    v32 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v31, v32))
    {
      *buf = 0;
      _os_log_impl(&dword_2484B2000, v31, v32, "Principals changed", buf, 2u);
    }
  }

  v33 = *MEMORY[0x277D85DE8];
  return v12 & 1;
}

- (void)refreshActor:(id)a3 didCompleteWithError:(id)a4
{
  v131 = *MEMORY[0x277D85DE8];
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
  v9 = [(MobileCalDAVAccount *)self mainPrincipal];
  v10 = [(MobileCalDAVAccount *)self refreshContext];
  v11 = [v10 numDownloadedElements];
  v12 = [(MobileCalDAVAccount *)self refreshContext];
  [v9 noteSuccessfulRequestWithNumDownloadedElements:v11 numUploadedElements:{objc_msgSend(v12, "numUploadedElements")}];

  [(MobileCalDAVAccount *)self _releasePowerAssertion];
  v13 = [(MobileCalDAVAccount *)self subscribedCalendarsChanged];
  if (v13)
  {
    v14 = DALoggingwithCategory();
    v15 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v14, v15))
    {
      *buf = 0;
      _os_log_impl(&dword_2484B2000, v14, v15, "Subscribed calendars changed", buf, 2u);
    }
  }

  v16 = [(MobileCalDAVAccount *)self mainPrincipal];
  v17 = [v16 APSTopic];
  if ([v17 length])
  {
    v18 = [(MobileCalDAVAccount *)self mainPrincipal];
    v19 = [v18 supportsPush];

    if (v19)
    {
      goto LABEL_13;
    }

    v20 = DALoggingwithCategory();
    v21 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v20, v21))
    {
      *buf = 0;
      _os_log_impl(&dword_2484B2000, v20, v21, "Saving accounts to update push information from an upgrade", buf, 2u);
    }

    v16 = [(MobileCalDAVAccount *)self mainPrincipal];
    v17 = [v16 APSTopic];
    v22 = [v17 length] != 0;
    v23 = [(MobileCalDAVAccount *)self mainPrincipal];
    [v23 setSupportsPush:v22];

    v13 = 1;
  }

LABEL_13:
  v24 = [(MobileCalDAVAccount *)self mainPrincipal];
  v25 = [v24 shouldUpdatePushDelegate];

  if (v25)
  {
    v26 = DALoggingwithCategory();
    v27 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v26, v27))
    {
      *buf = 0;
      _os_log_impl(&dword_2484B2000, v26, v27, "Saving accounts to update push information", buf, 2u);
    }

    v28 = [(MobileCalDAVAccount *)self mainPrincipal];
    [v28 setShouldUpdatePushDelegate:0];

    v29 = [(MobileCalDAVAccount *)self mainPrincipal];
    v30 = [v29 APSTopic];
    v31 = [v30 length] != 0;
    v32 = [(MobileCalDAVAccount *)self mainPrincipal];
    [v32 setSupportsPush:v31];

    v13 = 1;
  }

  v33 = [(MobileCalDAVAccount *)self saveModifiedPropertiesOnBackingAccount];
  v34 = [(MobileCalDAVAccount *)self _saveModifiedSubscribedCalendarsOnBackingAccount];
  v35 = [v7 context];
  v36 = [v35 shouldSaveAccounts];

  if (v36)
  {
    v37 = DALoggingwithCategory();
    v38 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v37, v38))
    {
      *buf = 0;
      _os_log_impl(&dword_2484B2000, v37, v38, "The refresh actor says we should save accounts", buf, 2u);
    }

    v39 = 1;
  }

  else
  {
    v39 = v13 || v33 || v34;
  }

  v40 = [(MobileCalDAVAccount *)self wasMigrated];
  if (v8)
  {
    v41 = DALoggingwithCategory();
    v42 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v41, v42))
    {
      v43 = [(MobileCalDAVAccount *)self accountDescription];
      v44 = [(MobileCalDAVAccount *)self publicDescription];
      [v8 domain];
      v114 = v40;
      v46 = v45 = v39;
      v47 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v8, "code")}];
      *buf = 138413314;
      v122 = v43;
      v123 = 2114;
      v124 = v44;
      v125 = 2112;
      v126 = *&v8;
      v127 = 2114;
      v128 = v46;
      v129 = 2114;
      v130 = v47;
      _os_log_impl(&dword_2484B2000, v41, v42, "==== CalDAV refresh FAILED for %@ (%{public}@): %@. [Error Domain:%{public}@ Code:%{public}@]", buf, 0x34u);

      v39 = v45;
      v40 = v114;
    }

LABEL_25:

    goto LABEL_36;
  }

  v48 = [(MobileCalDAVAccount *)self refreshContext];
  v49 = [v48 calendarFailedToSync];

  v50 = DALoggingwithCategory();
  v51 = MEMORY[0x277D03988];
  v52 = *(MEMORY[0x277D03988] + 5);
  v53 = os_log_type_enabled(v50, v52);
  if (v49)
  {
    if (!v53)
    {
      goto LABEL_32;
    }

    v54 = [(MobileCalDAVAccount *)self accountDescription];
    v55 = [(MobileCalDAVAccount *)self accountID];
    *buf = 138412546;
    v122 = v54;
    v123 = 2114;
    v124 = v55;
    v56 = "==== CalDAV refresh completed successfully (but some calendars failed to sync) for %@ (%{public}@)";
  }

  else
  {
    if (!v53)
    {
      goto LABEL_32;
    }

    v54 = [(MobileCalDAVAccount *)self accountDescription];
    v55 = [(MobileCalDAVAccount *)self accountID];
    *buf = 138412546;
    v122 = v54;
    v123 = 2114;
    v124 = v55;
    v56 = "==== CalDAV refresh completed successfully for %@ (%{public}@)";
  }

  _os_log_impl(&dword_2484B2000, v50, v52, v56, buf, 0x16u);

LABEL_32:
  v57 = DALoggingwithCategory();
  v58 = *(v51 + 6);
  if (os_log_type_enabled(v57, v58))
  {
    v59 = [(MobileCalDAVAccount *)self accountDescription];
    v60 = [(MobileCalDAVAccount *)self publicDescription];
    Current = CFAbsoluteTimeGetCurrent();
    [(MobileCalDAVAccount *)self refreshContext];
    v62 = v40;
    v64 = v63 = v39;
    [v64 startTime];
    v66 = Current - v65;
    v67 = [(MobileCalDAVAccount *)self refreshContext];
    v68 = [v67 numDownloadedElements];
    *buf = 138413058;
    v122 = v59;
    v123 = 2114;
    v124 = v60;
    v125 = 2048;
    v126 = v66;
    v127 = 2048;
    v128 = v68;
    _os_log_impl(&dword_2484B2000, v57, v58, "CalDAV refresh finished for account %@ (%{public}@): Total sync time: %0.2f seconds. Number of downloaded items: %lu", buf, 0x2Au);

    v51 = MEMORY[0x277D03988];
    v39 = v63;
    v40 = v62;
    v8 = 0;
  }

  if ([(MobileCalDAVAccount *)self wasMigrated])
  {
    v69 = [(MobileCalDAVAccount *)self refreshContext];
    v70 = [v69 isCalendarsOnly];

    if ((v70 & 1) == 0)
    {
      v82 = [v7 context];
      v83 = [v82 calendarFailedToSync];

      v84 = DALoggingwithCategory();
      v41 = v84;
      if (v83)
      {
        v85 = *(v51 + 4);
        if (os_log_type_enabled(v84, v85))
        {
          *buf = 0;
          _os_log_impl(&dword_2484B2000, v41, v85, "Some calendars failed to sync. Keeping the migration flag around so that we attempt a merge sync the next time", buf, 2u);
        }
      }

      else
      {
        if (os_log_type_enabled(v84, v58))
        {
          *buf = 0;
          _os_log_impl(&dword_2484B2000, v41, v58, "Clearing migrated flag on the calendar store", buf, 2u);
        }

        [(MobileCalDAVAccount *)self setWasMigrated:0];
        v41 = [v7 context];
        [v41 setShouldSave:1];
      }

      goto LABEL_25;
    }
  }

LABEL_36:
  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  v71 = [(MobileCalDAVAccount *)self mCalendars];
  v72 = [v71 countByEnumeratingWithState:&v115 objects:v120 count:16];
  if (v72)
  {
    v73 = v72;
    v74 = *v116;
    do
    {
      for (i = 0; i != v73; ++i)
      {
        if (*v116 != v74)
        {
          objc_enumerationMutation(v71);
        }

        [*(*(&v115 + 1) + 8 * i) flushCaches];
      }

      v73 = [v71 countByEnumeratingWithState:&v115 objects:v120 count:16];
    }

    while (v73);
  }

  v76 = [v7 context];
  v77 = [v76 isDisabledAccount];

  if ((v77 & 1) == 0)
  {
    v78 = [v7 context];
    [(MobileCalDAVAccount *)self _clearOrphanedChangesWithContext:v78];
  }

  if (!v8)
  {
    if ((v77 | v40) & 1) != 0 || ([v7 context], v79 = objc_claimAutoreleasedReturnValue(), v80 = objc_msgSend(v79, "isCalendarsOnly"), v79, (v80))
    {
      v81 = 0;
    }

    else
    {
      v86 = [v7 context];
      v87 = [v86 changeTracker];
      v81 = [v87 clearUnconsumedAndUnsavedChanges];
    }

    v88 = [v7 context];
    v89 = [v88 shouldSave] | v81;
    v90 = [v7 context];
    [v90 setShouldSave:v89 & 1];
  }

  v91 = [(MobileCalDAVAccount *)self dbHelper];
  v92 = [(MobileCalDAVAccount *)self accountID];
  [v91 calDatabaseForAccountID:v92];
  CalDatabaseUnfreezeChangeLog();

  v93 = [v7 context];
  LODWORD(v92) = [v93 shouldSave];

  if (v92)
  {
    v94 = [(MobileCalDAVAccount *)self dbHelper];
    v95 = [(MobileCalDAVAccount *)self accountID];
    [v94 calSaveDatabaseForAccountID:v95];
  }

  v96 = [(MobileCalDAVAccount *)self dbHelper];
  v97 = [(MobileCalDAVAccount *)self accountID];
  [v96 calCloseDatabaseForAccountID:v97 save:0];

  if (v39)
  {
    if (v8 && [v8 code] == 6)
    {
      v98 = DALoggingwithCategory();
      v99 = *(MEMORY[0x277D03988] + 4);
      if (os_log_type_enabled(v98, v99))
      {
        *buf = 0;
        _os_log_impl(&dword_2484B2000, v98, v99, "Not saving our account properties because the refresh was canceled.", buf, 2u);
      }
    }

    else
    {
      v100 = DALoggingwithCategory();
      v101 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v100, v101))
      {
        *buf = 0;
        _os_log_impl(&dword_2484B2000, v100, v101, "Saving our account properties", buf, 2u);
      }

      v98 = [(MobileCalDAVAccount *)self backingAccount];
      [v98 saveAccountProperties];
    }
  }

  v102 = [(MobileCalDAVAccount *)self mainPrincipal];
  [v102 setIsDirty:0];

  v103 = [(MobileCalDAVAccount *)self mainPrincipal];
  [v103 setCalendarsAreDirty:0];

  v104 = [(MobileCalDAVAccount *)self mItemIDsToMoveActions];
  [v104 removeAllObjects];

  v105 = [(MobileCalDAVAccount *)self mMovedItemURLStrings];
  [v105 removeAllObjects];

  [(MobileCalDAVAccount *)self setRefreshContext:0];
  [(MobileCalDAVAccount *)self setIsRefreshing:0];
  [(MobileCalDAVAccount *)self setActor:0];
  [(MobileCalDAVAccount *)self setMCalendars:0];
  v106 = [v7 context];
  if (![v106 wasDueToPush])
  {
    goto LABEL_73;
  }

  v107 = [v7 needsRemindersSync];

  if (v107)
  {
    if ([getREMStoreClass() instancesRespondToSelector:sel_triggerSyncForDataAccessAccountsWithAccountIDs_])
    {
      v106 = [(MobileCalDAVAccount *)self accountID];
      v108 = DALoggingwithCategory();
      v109 = *(MEMORY[0x277D03988] + 5);
      if (os_log_type_enabled(v108, v109))
      {
        *buf = 138543362;
        v122 = v106;
        _os_log_impl(&dword_2484B2000, v108, v109, "DataAccess has determined via a push notification that reminders need syncing. Telling remindd to sync account %{public}@", buf, 0xCu);
      }

      v110 = objc_alloc_init(getREMStoreClass());
      v119 = v106;
      v111 = [MEMORY[0x277CBEA60] arrayWithObjects:&v119 count:1];
      [v110 triggerSyncForDataAccessAccountsWithAccountIDs:v111];
    }

    else
    {
      v106 = DALoggingwithCategory();
      v112 = *(MEMORY[0x277D03988] + 5);
      if (os_log_type_enabled(v106, v112))
      {
        *buf = 0;
        _os_log_impl(&dword_2484B2000, v106, v112, "DataAccess has determined via a push notification that reminders need syncing, but cannot notify remindd because the necessary SPI is not available in this build.", buf, 2u);
      }
    }

LABEL_73:
  }

  v113 = *MEMORY[0x277D85DE8];
}

- (id)_collectActionsFromMoveDictionary:(__CFDictionary *)a3 forDataclass:(id)a4 outShouldSave:(BOOL *)a5
{
  v72 = *MEMORY[0x277D85DE8];
  v55 = a4;
  v6 = objc_opt_new();
  v57 = objc_opt_new();
  Value = CFDictionaryGetValue(a3, *MEMORY[0x277CF75F0]);
  theArray = CFDictionaryGetValue(a3, *MEMORY[0x277CF75E0]);
  v53 = CFDictionaryGetValue(a3, *MEMORY[0x277CF75F8]);
  v52 = CFDictionaryGetValue(a3, *MEMORY[0x277CF7600]);
  v47 = v6;
  if (Value)
  {
    Count = CFArrayGetCount(Value);
    if (Count >= 1)
    {
      v9 = 0;
      v49 = *MEMORY[0x277CBEEE8];
      type = *(MEMORY[0x277D03988] + 6);
      v48 = *MEMORY[0x277CB90F0];
      v56 = *(MEMORY[0x277D03988] + 7);
      *&v8 = 138412290;
      v44 = v8;
      v50 = Value;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Value, v9);
        v11 = [MEMORY[0x277CCABB0] numberWithInt:ValueAtIndex];
        v12 = CFArrayGetValueAtIndex(theArray, v9);
        v13 = [MEMORY[0x277CCABB0] numberWithInt:v12];
        v14 = CFArrayGetValueAtIndex(v53, v9);
        v15 = CFArrayGetValueAtIndex(v52, v9);
        v16 = v15;
        if (v15 == v49)
        {

          v16 = 0;
        }

        v17 = DALoggingwithCategory();
        if (os_log_type_enabled(v17, type))
        {
          *buf = 67109376;
          *v66 = ValueAtIndex;
          *&v66[4] = 1024;
          *&v66[6] = v14;
          _os_log_impl(&dword_2484B2000, v17, type, "Found a move for item %d from container %d", buf, 0xEu);
        }

        if (![v55 isEqualToString:v48])
        {
          break;
        }

        v18 = [(MobileCalDAVAccount *)self dbHelper];
        v19 = [(MobileCalDAVAccount *)self accountID];
        [v18 calDatabaseForAccountID:v19];
        v20 = CalDatabaseCopyCalendarItemWithRowID();

        if (!v20)
        {
          v21 = 0;
          goto LABEL_20;
        }

        v21 = CalEventCopyUniqueIdentifier();
        v22 = CalEventCopyOriginalEvent();
        v23 = v22;
        if (!v22 || v22 == v20)
        {
          if (v22)
          {
            CFRelease(v22);
          }

          CFRelease(v20);
LABEL_20:
          v58 = 2;
          v6 = v47;
LABEL_21:
          v25 = DALoggingwithCategory();
          if (os_log_type_enabled(v25, v56))
          {
            *buf = 138413058;
            *v66 = v11;
            *&v66[8] = 2112;
            v67 = v13;
            v68 = 2112;
            v69 = v6;
            v70 = 2112;
            v71 = v57;
            _os_log_impl(&dword_2484B2000, v25, v56, "_addChange for move of calendarItem id %@, changeId %@ calendarItemIdsToMoveActions %@, calendarItemChangeIdsToClear %@", buf, 0x2Au);
          }

          v26 = [v6 objectForKeyedSubscript:v11];
          if (v26)
          {
            [v57 addObject:v13];
          }

          else
          {
            v27 = [[CalDAVMove alloc] initWithSourceCalendarID:v14 itemID:ValueAtIndex oldExternalID:v16 changeID:v12 objectType:v58 uniqueIdentifier:v21];
            [v6 setObject:v27 forKeyedSubscript:v11];
          }

          goto LABEL_27;
        }

        [v57 addObject:v13];
        v24 = DALoggingwithCategory();
        if (os_log_type_enabled(v24, type))
        {
          *buf = v44;
          *v66 = v11;
          _os_log_impl(&dword_2484B2000, v24, type, "Ignoring move change for detached event %@", buf, 0xCu);
        }

        CFRelease(v23);
        CFRelease(v20);
        v6 = v47;
LABEL_27:

        ++v9;
        Value = v50;
        if (Count == v9)
        {
          goto LABEL_28;
        }
      }

      v21 = 0;
      v58 = 3;
      goto LABEL_21;
    }
  }

LABEL_28:
  v28 = v57;
  if ([v57 count])
  {
    Mutable = CFArrayCreateMutable(0, 0, 0);
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v30 = v57;
    v31 = [v30 countByEnumeratingWithState:&v60 objects:v64 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v61;
      v34 = *(MEMORY[0x277D03988] + 7);
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v61 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v36 = [*(*(&v60 + 1) + 8 * i) intValue];
          if (v36 != -1)
          {
            v37 = v36;
            v38 = DALoggingwithCategory();
            if (os_log_type_enabled(v38, v34))
            {
              *buf = 67109120;
              *v66 = v37;
              _os_log_impl(&dword_2484B2000, v38, v34, "Clearing change index %d", buf, 8u);
            }

            CFArrayAppendValue(Mutable, v37);
          }
        }

        v32 = [v30 countByEnumeratingWithState:&v60 objects:v64 count:16];
      }

      while (v32);
    }

    if (CFArrayGetCount(Mutable))
    {
      *a5 = 1;
      v39 = [(MobileCalDAVAccount *)self dbHelper];
      v40 = [(MobileCalDAVAccount *)self accountID];
      [v39 calDatabaseForAccountID:v40];
      v41 = [(MobileCalDAVAccount *)self changeTrackingID];
      CalDatabaseClearIndividualChangeRowIDsForClient();
    }

    CFRelease(Mutable);
    v6 = v47;
    v28 = v57;
  }

  v42 = *MEMORY[0x277D85DE8];

  return v6;
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

  v7 = [(MobileCalDAVAccount *)self dbHelper];
  v8 = [(MobileCalDAVAccount *)self accountID];
  v9 = [(MobileCalDAVAccount *)self changeTrackingID];
  [v7 calOpenDatabaseForAccountID:v8 clientID:v9];

  v10 = [(MobileCalDAVAccount *)self dbHelper];
  v11 = [(MobileCalDAVAccount *)self accountID];
  [v10 calDatabaseForAccountID:v11];

  [(MobileCalDAVAccount *)self accountID];
  v12 = CalDatabaseCopyStoreWithExternalID();
  if (v12)
  {
    v13 = v12;
    v14 = [(MobileCalDAVAccount *)self backingAccount];
    v15 = *MEMORY[0x277CB90F0];
    v16 = [v14 isEnabledForDataclass:*MEMORY[0x277CB90F0]];

    if (v16 && (v17 = CalDatabaseCopyEventMovesInStore()) != 0)
    {
      v18 = v17;
      v33 = 0;
      v19 = [(MobileCalDAVAccount *)self _collectActionsFromMoveDictionary:v17 forDataclass:v15 outShouldSave:&v33];
      v20 = v33;
      v21 = [(MobileCalDAVAccount *)self mItemIDsToMoveActions];
      [v21 addEntriesFromDictionary:v19];

      CFRelease(v18);
    }

    else
    {
      v20 = 0;
    }

    v22 = [(MobileCalDAVAccount *)self backingAccount];
    v23 = *MEMORY[0x277CB9190];
    if ([v22 isEnabledForDataclass:*MEMORY[0x277CB9190]])
    {
      ShouldSyncReminders = CalShouldSyncReminders();

      if (ShouldSyncReminders)
      {
        v25 = CalDatabaseCopyTaskMovesInStore();
        if (v25)
        {
          v26 = v25;
          v33 = 0;
          v27 = [(MobileCalDAVAccount *)self _collectActionsFromMoveDictionary:v25 forDataclass:v23 outShouldSave:&v33];
          v20 = v33 || v20;
          v28 = [(MobileCalDAVAccount *)self mItemIDsToMoveActions];
          [v28 addEntriesFromDictionary:v27];

          CFRelease(v26);
        }
      }
    }

    else
    {
    }

    v29 = [(MobileCalDAVAccount *)self mItemIDsToMoveActions];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __42__MobileCalDAVAccount__collectMoveActions__block_invoke;
    v32[3] = &unk_278F175C8;
    v32[4] = self;
    [v29 enumerateKeysAndObjectsUsingBlock:v32];

    CFRelease(v13);
  }

  else
  {
    v20 = 0;
  }

  v30 = [(MobileCalDAVAccount *)self dbHelper];
  v31 = [(MobileCalDAVAccount *)self accountID];
  [v30 calCloseDatabaseForAccountID:v31 save:v20];
}

void __42__MobileCalDAVAccount__collectMoveActions__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v4 = [v7 oldExternalID];

  if (v4)
  {
    v5 = [*(a1 + 32) mMovedItemURLStrings];
    v6 = [v7 oldExternalID];
    [v5 addObject:v6];
  }
}

- (void)refreshWithContext:(id)a3 completion:(id)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(MobileCalDAVAccount *)self isRefreshing])
  {
    v8 = DALoggingwithCategory();
    v9 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v8, v9))
    {
      *buf = 0;
      _os_log_impl(&dword_2484B2000, v8, v9, "Ignoring refresh request because we're already in the middle of a refresh", buf, 2u);
    }

LABEL_4:

    goto LABEL_23;
  }

  if ([(MobileCalDAVAccount *)self isRefreshing])
  {
    v8 = DALoggingwithCategory();
    v10 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v8, v10))
    {
      *buf = 0;
      _os_log_impl(&dword_2484B2000, v8, v10, "We're already refreshing or a refresh is pending, so we're going to ignore this refresh request.", buf, 2u);
    }

    goto LABEL_4;
  }

  self->_wasMigrated = -1;
  [(MobileCalDAVAccount *)self setIsRefreshing:1];
  [(MobileCalDAVAccount *)self setRefreshContext:v6];
  Current = CFAbsoluteTimeGetCurrent();
  v12 = [(MobileCalDAVAccount *)self refreshContext];
  [v12 setStartTime:Current];

  v13 = [(MobileCalDAVAccount *)self dbHelper];
  v14 = [(MobileCalDAVAccount *)self accountID];
  v15 = [(MobileCalDAVAccount *)self changeTrackingID];
  [v13 calOpenDatabaseForAccountID:v14 clientID:v15];

  [(MobileCalDAVAccount *)self _checkExistingStoreAndSetChangeReason];
  [(MobileCalDAVAccount *)self _updateCalendarStore:1];
  v16 = [(MobileCalDAVAccount *)self dbHelper];
  v17 = [(MobileCalDAVAccount *)self accountID];
  [v16 calDatabaseForAccountID:v17];
  [(MobileCalDAVAccount *)self setLastSyncedSequenceNumber:CalDatabaseFreezeChangeLog()];

  [(MobileCalDAVAccount *)self _collectMoveActions];
  if (-[MobileCalDAVAccount wasMigrated](self, "wasMigrated") && [v6 isCalendarsOnly])
  {
    [v6 setIsCalendarsOnly:0];
  }

  v18 = DALoggingwithCategory();
  v19 = MEMORY[0x277D03988];
  v20 = *(MEMORY[0x277D03988] + 5);
  if (os_log_type_enabled(v18, v20))
  {
    if ([(MobileCalDAVAccount *)self wasMigrated])
    {
      v21 = @"migration ";
    }

    else
    {
      v21 = &stru_285AB0D40;
    }

    if ([v6 isCalendarsOnly])
    {
      v22 = @" (calendars only)";
    }

    else
    {
      v22 = &stru_285AB0D40;
    }

    v23 = [(MobileCalDAVAccount *)self accountDescription];
    v24 = [(MobileCalDAVAccount *)self accountID];
    *buf = 138413058;
    v39 = v21;
    v40 = 2112;
    v41 = v22;
    v42 = 2112;
    v43 = v23;
    v44 = 2114;
    v45 = v24;
    _os_log_impl(&dword_2484B2000, v18, v20, "==== Beginning %@refresh for CalDAV account%@ %@ (%{public}@)", buf, 0x2Au);
  }

  v25 = DALoggingwithCategory();
  v26 = *(v19 + 6);
  if (os_log_type_enabled(v25, v26))
  {
    v27 = [(MobileCalDAVAccount *)self refreshContext];
    v28 = [v27 localItems];
    *buf = 134217984;
    v39 = v28;
    _os_log_impl(&dword_2484B2000, v25, v26, "Our store has %lu items in it.", buf, 0xCu);
  }

  [(MobileCalDAVAccount *)self _retainPowerAssertion];
  v29 = [(MobileCalDAVAccount *)self actor];
  [v29 teardown];

  v30 = [MobileCalDAVAccountRefreshActor alloc];
  v31 = [(MobileCalDAVAccount *)self refreshContext];
  v32 = [(MobileCalDAVAccountRefreshActor *)v30 initWithAccount:self context:v31];
  [(MobileCalDAVAccount *)self setActor:v32];

  objc_initWeak(buf, self);
  v33 = [(MobileCalDAVAccount *)self actor];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __53__MobileCalDAVAccount_refreshWithContext_completion___block_invoke;
  v35[3] = &unk_278F175F0;
  objc_copyWeak(&v37, buf);
  v35[4] = self;
  v36 = v7;
  [v33 refreshWithCompletion:v35];

  objc_destroyWeak(&v37);
  objc_destroyWeak(buf);
LABEL_23:

  v34 = *MEMORY[0x277D85DE8];
}

void __53__MobileCalDAVAccount_refreshWithContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(a1 + 32);
    v6 = [WeakRetained actor];
    [v5 refreshActor:v6 didCompleteWithError:v8];

    v7 = *(a1 + 40);
    if (v7)
    {
      (*(v7 + 16))(v7, v8);
    }
  }
}

- (void)_checkExistingStoreAndSetChangeReason
{
  v3 = [(MobileCalDAVAccount *)self copyCalStore];
  if (v3)
  {
    v4 = v3;
    v5 = [(MobileCalDAVAccount *)self dbHelper];
    v6 = [(MobileCalDAVAccount *)self accountID];
    [v5 calDatabaseForAccountID:v6];
    CountOfCalendarItemsInStore = CalDatabaseGetCountOfCalendarItemsInStore();

    v8 = [(MobileCalDAVAccount *)self refreshContext];
    [v8 setLocalItems:CountOfCalendarItemsInStore];

    if (!CountOfCalendarItemsInStore)
    {
    }

    CFRelease(v4);
  }

  v10 = [(MobileCalDAVAccount *)self dbHelper];
  v9 = [(MobileCalDAVAccount *)self accountID];
  [v10 calDatabaseForAccountID:v9];
  CalDatabaseSetChangeReason();
}

- (void)updateDelegatesWithUserInfo:(id)a3
{
  v86 = *MEMORY[0x277D85DE8];
  v50 = a3;
  v3 = DALoggingwithCategory();
  v4 = v3;
  v5 = MEMORY[0x277D03988];
  if (v50)
  {
    type = *(MEMORY[0x277D03988] + 5);
    if (os_log_type_enabled(v3, type))
    {
      v6 = [(MobileCalDAVAccount *)self accountID];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v6;
      _os_log_impl(&dword_2484B2000, v4, type, "Updating delegates for account %{public}@", &buf, 0xCu);
    }

    v58 = objc_opt_new();
    v51 = objc_opt_new();
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v7 = [(MobileCalDAVAccount *)self backingAccount];
    obj = [v7 childAccountsWithAccountTypeIdentifier:*MEMORY[0x277CB8BC8]];

    v8 = [obj countByEnumeratingWithState:&v75 objects:v85 count:16];
    if (v8)
    {
      v9 = *v76;
      v56 = *(v5 + 1);
      v53 = *MEMORY[0x277CF78D8];
      v54 = *MEMORY[0x277CF78C8];
      v52 = *MEMORY[0x277CF7A10];
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v76 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v75 + 1) + 8 * i);
          v12 = [(MobileCalDAVAccount *)self backingAccount];
          v13 = [v11 identifier];
          v14 = [v12 childAccountWithIdentifier:v13];

          v15 = [v14 mobileCalDAVAccount];
          v16 = [v15 mainPrincipal];
          v17 = [v16 principalPath];

          if (v17)
          {
            [v58 setObject:v14 forKeyedSubscript:v17];
          }

          else
          {
            v18 = DALoggingwithCategory();
            v19 = os_log_type_enabled(v18, v56);
            if (v14)
            {
              if (v19)
              {
                v20 = [v11 identifier];
                LODWORD(buf) = 138543362;
                *(&buf + 4) = v20;
                _os_log_impl(&dword_2484B2000, v18, v56, "Failed to get main principal path for child account with identifier %{public}@", &buf, 0xCu);
              }
            }

            else if (v19)
            {
              v21 = [v11 identifier];
              LODWORD(buf) = 138543362;
              *(&buf + 4) = v21;
              _os_log_impl(&dword_2484B2000, v18, v56, "Failed to find child account with identifier %{public}@", &buf, 0xCu);
            }

            v22 = [v11 accountPropertyForKey:v54];
            if (v22)
            {
              v23 = [v11 accountPropertyForKey:v53];
              v24 = v23;
              if (v23)
              {
                v25 = [v23 objectForKeyedSubscript:v22];
                v26 = v25;
                if (v25)
                {
                  v27 = [v25 objectForKeyedSubscript:v52];
                  if (v27)
                  {
                    [v51 setObject:v11 forKeyedSubscript:v27];
                  }
                }
              }
            }
          }
        }

        v8 = [obj countByEnumeratingWithState:&v75 objects:v85 count:16];
      }

      while (v8);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v83 = 0x2020000000;
    v84 = 0;
    v71 = 0;
    v72 = &v71;
    v73 = 0x2020000000;
    v74 = 0;
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __51__MobileCalDAVAccount_updateDelegatesWithUserInfo___block_invoke;
    v65[3] = &unk_278F17618;
    v57 = v51;
    v66 = v57;
    v4 = v58;
    v67 = v4;
    v68 = self;
    p_buf = &buf;
    v70 = &v71;
    [v50 enumerateKeysAndObjectsUsingBlock:v65];
    v28 = [v4 allValues];
    v29 = [v28 valueForKey:@"accountInfo"];
    v30 = [v29 mutableCopy];

    v31 = [v57 allValues];
    [v30 addObjectsFromArray:v31];

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v32 = v30;
    v33 = [v32 countByEnumeratingWithState:&v61 objects:v81 count:16];
    if (v33)
    {
      v34 = *v62;
      do
      {
        for (j = 0; j != v33; ++j)
        {
          if (*v62 != v34)
          {
            objc_enumerationMutation(v32);
          }

          v36 = *(*(&v61 + 1) + 8 * j);
          v37 = DALoggingwithCategory();
          if (os_log_type_enabled(v37, type))
          {
            v38 = [v36 identifier];
            *v79 = 138543362;
            v80 = v38;
            _os_log_impl(&dword_2484B2000, v37, type, "Removing delegate account with identifier %{public}@", v79, 0xCu);
          }

          v39 = [(MobileCalDAVAccount *)self backingAccount];
          [v39 removeAccount:v36];
        }

        v33 = [v32 countByEnumeratingWithState:&v61 objects:v81 count:16];
      }

      while (v33);
    }

    if (*(*(&buf + 1) + 24))
    {
      *(*(&buf + 1) + 24) = 1;
    }

    else
    {
      v43 = [v32 count];
      *(*(&buf + 1) + 24) = v43 != 0;
      if (!v43)
      {
LABEL_42:
        v47 = DALoggingwithCategory();
        if (os_log_type_enabled(v47, type))
        {
          v48 = [(MobileCalDAVAccount *)self accountID];
          *v79 = 138543362;
          v80 = v48;
          _os_log_impl(&dword_2484B2000, v47, type, "Finished updating delegates for account %{public}@", v79, 0xCu);
        }

        _Block_object_dispose(&v71, 8);
        _Block_object_dispose(&buf, 8);

        goto LABEL_45;
      }
    }

    if (*(v72 + 24) == 1)
    {
      v44 = [(MobileCalDAVAccount *)self dbHelper];
      v45 = [(MobileCalDAVAccount *)self accountID];
      [v44 calSaveDatabaseForAccountID:v45];

      v46 = [(MobileCalDAVAccount *)self refreshContext];
      [v46 setShouldSave:0];
    }

    goto LABEL_42;
  }

  v40 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v3, v40))
  {
    v41 = [(MobileCalDAVAccount *)self backingAccount];
    v42 = [v41 accountIdentifier];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v42;
    _os_log_impl(&dword_2484B2000, v4, v40, "No delegate user infos in updateDelegates for account with identifier: %{public}@", &buf, 0xCu);
  }

LABEL_45:

  v49 = *MEMORY[0x277D85DE8];
}

void __51__MobileCalDAVAccount_updateDelegatesWithUserInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v71 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];

  if (!v7)
  {
    v8 = [*(a1 + 40) objectForKeyedSubscript:v5];
    v9 = DALoggingwithCategory();
    v10 = MEMORY[0x277D03988];
    v11 = *(MEMORY[0x277D03988] + 5);
    v12 = os_log_type_enabled(v9, v11);
    if (v8)
    {
      if (v12)
      {
        v13 = [v8 accountIdentifier];
        *buf = 138412546;
        v68 = v5;
        v69 = 2114;
        v70 = v13;
        _os_log_impl(&dword_2484B2000, v9, v11, "Updating delegate account with principal path %@ and account ID %{public}@", buf, 0x16u);
      }

      v65 = v11;

      v14 = [v8 mobileCalDAVAccount];
      v15 = [v14 isWritable];
      v16 = v15 ^ [v6 allowWrite];

      if (v16 == 1)
      {
        v17 = [v6 allowWrite];
        v18 = [v8 mobileCalDAVAccount];
        [v18 setIsWritable:v17];

        v19 = [v6 allowWrite];
        v20 = [v8 mobileCalDAVAccount];
        v21 = [v20 mainPrincipal];
        [v21 setIsWritable:v19];

        v22 = [v6 allowWrite];
        v23 = [v8 mobileCalDAVAccount];
        v24 = [v23 mainPrincipal];
        [v24 setCanCreateCalendars:v22];
      }

      v25 = [v8 mobileCalDAVAccount];
      v26 = [v25 mainPrincipal];
      v27 = [v26 fullName];
      v28 = [v6 displayName];
      v29 = [v27 isEqualToString:v28];

      if (v29)
      {
        v11 = v65;
        v10 = MEMORY[0x277D03988];
        if ((v16 & 1) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_16;
      }

      v47 = [v6 displayName];
      v48 = [v8 mobileCalDAVAccount];
      v49 = [v48 mainPrincipal];
      [v49 setFullName:v47];

      v11 = v65;
      v10 = MEMORY[0x277D03988];
    }

    else
    {
      if (v12)
      {
        *buf = 138412290;
        v68 = v5;
        _os_log_impl(&dword_2484B2000, v9, v11, "Adding delegate account with principal path %@", buf, 0xCu);
      }

      v30 = [*(a1 + 48) backingAccount];
      v8 = [v30 createChildAccountWithAccountTypeIdentifier:*MEMORY[0x277CB8BC8]];

      v31 = [v8 mobileCalDAVAccount];
      [v31 setIsDelegateAccount:1];

      v32 = [v6 allowWrite];
      v33 = [v8 mobileCalDAVAccount];
      [v33 setIsWritable:v32];

      v34 = [v8 mobileCalDAVAccount];
      v35 = [v34 mainPrincipal];
      [v35 setIsDelegate:1];

      v36 = [v8 mobileCalDAVAccount];
      v37 = [v36 mainPrincipal];
      [v37 setPrincipalPath:v5];

      v38 = [v6 displayName];
      v39 = [v8 mobileCalDAVAccount];
      v40 = [v39 mainPrincipal];
      [v40 setFullName:v38];

      v41 = [v6 allowWrite];
      v42 = [v8 mobileCalDAVAccount];
      v43 = [v42 mainPrincipal];
      [v43 setIsWritable:v41];

      v44 = [v6 allowWrite];
      v45 = [v8 mobileCalDAVAccount];
      v46 = [v45 mainPrincipal];
      [v46 setCanCreateCalendars:v44];

      v47 = [v8 mobileCalDAVAccount];
      [v47 setDelegatePrincipalPath:@"_"];
    }

LABEL_16:
    v50 = DALoggingwithCategory();
    if (os_log_type_enabled(v50, v11))
    {
      v51 = [v8 accountIdentifier];
      *buf = 138412546;
      v68 = v5;
      v69 = 2114;
      v70 = v51;
      _os_log_impl(&dword_2484B2000, v50, v11, "Account properties changed for delegate account with principal path %@ and account ID %{public}@. Will save the account.", buf, 0x16u);
    }

    [v8 saveModifiedPropertiesOnBackingAccount];
    v66 = 0;
    v52 = [v8 saveAccountPropertiesWithError:&v66];
    v53 = v66;
    v54 = v53;
    if ((v52 & 1) == 0)
    {
      v62 = DALoggingwithCategory();
      v63 = *(v10 + 3);
      if (os_log_type_enabled(v62, v63))
      {
        *buf = 138412546;
        v68 = v5;
        v69 = 2112;
        v70 = v54;
        _os_log_impl(&dword_2484B2000, v62, v63, "Failed to save ACAccount for delegate with principal path %@: %@", buf, 0x16u);
      }

      goto LABEL_29;
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;

LABEL_20:
    v55 = DALoggingwithCategory();
    if (os_log_type_enabled(v55, v11))
    {
      v56 = [v8 accountIdentifier];
      *buf = 138412546;
      v68 = v5;
      v69 = 2114;
      v70 = v56;
      _os_log_impl(&dword_2484B2000, v55, v11, "Updating DB properties for delegate account with principal path %@ and account ID %{public}@", buf, 0x16u);
    }

    v57 = [v8 mobileCalDAVAccount];
    v58 = [v57 updateCalendarStoreWithAlreadyOpenDBShouldCreate:1 syncingThisAccount:0];

    if (v58)
    {
      v59 = DALoggingwithCategory();
      if (os_log_type_enabled(v59, v11))
      {
        v60 = [v8 accountIdentifier];
        *buf = 138412546;
        v68 = v5;
        v69 = 2114;
        v70 = v60;
        _os_log_impl(&dword_2484B2000, v59, v11, "DB properties changed for delegate account with principal path %@ and account ID %{public}@. Will save the DB.", buf, 0x16u);
      }

      v61 = [*(a1 + 48) refreshContext];
      [v61 setShouldSave:1];

      *(*(*(a1 + 64) + 8) + 24) = 1;
    }

LABEL_29:
    [*(a1 + 40) removeObjectForKey:v5];

    goto LABEL_30;
  }

  [*(a1 + 32) removeObjectForKey:v5];
LABEL_30:

  v64 = *MEMORY[0x277D85DE8];
}

- (void)task:(id)a3 didFinishWithError:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
    v9 = [v8 searchContext];
    v10 = [(MobileCalDAVAccount *)self backingAccount];
    v11 = [v10 consumerForTask:v8];

    v12 = [v7 domain];
    if ([v12 isEqualToString:*MEMORY[0x277CFDB18]])
    {
      v13 = [v7 code];

      if (v13 == 1)
      {
        v14 = DALoggingwithCategory();
        v15 = *(MEMORY[0x277D03988] + 6);
        if (os_log_type_enabled(v14, v15))
        {
          *buf = 134217984;
          v39 = v8;
          _os_log_impl(&dword_2484B2000, v14, v15, "Search task %p was cancelled", buf, 0xCu);
        }

LABEL_23:

        [v11 searchQuery:v9 finishedWithError:v7];
        v27 = [(MobileCalDAVAccount *)self searchTaskSet];
        [v27 removeObject:v8];

        v28 = [(MobileCalDAVAccount *)self backingAccount];
        [v28 removeConsumerForTask:v8];

        goto LABEL_24;
      }
    }

    else
    {
    }

    v31 = v9;
    v32 = v7;
    v14 = [MEMORY[0x277CBEB18] array];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v17 = [v8 multiStatus];
    v18 = [v17 responses];

    v19 = [v18 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v34;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v34 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [CalDAVPrincipalResult resultFromResponse:*(*(&v33 + 1) + 8 * i)];
          v24 = [v23 convertToDAContactSearchResultElement];
          if (v24)
          {
            [v14 addObject:v24];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v20);
    }

    if ([v14 count])
    {
      v25 = DALoggingwithCategory();
      v26 = *(MEMORY[0x277D03988] + 6);
      v7 = v32;
      v9 = v31;
      if (os_log_type_enabled(v25, v26))
      {
        *buf = 134217984;
        v39 = v31;
        _os_log_impl(&dword_2484B2000, v25, v26, "CalDAV search query %p returning results", buf, 0xCu);
      }

      v11 = v30;
      [v30 searchQuery:v31 returnedResults:v14];
    }

    else
    {
      v7 = v32;
      v11 = v30;
      v9 = v31;
    }

    goto LABEL_23;
  }

  v8 = DALoggingwithCategory();
  v16 = *(MEMORY[0x277D03988] + 4);
  if (os_log_type_enabled(v8, v16))
  {
    *buf = 138412290;
    v39 = v6;
    _os_log_impl(&dword_2484B2000, v8, v16, "An unknown task just finished. What just happened? %@", buf, 0xCu);
  }

LABEL_24:

  v29 = *MEMORY[0x277D85DE8];
}

- (void)_reallyPerformSearchQuery:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MobileCalDAVAccount *)self searchPropertySet];
  if (![v5 supportsPropertySearch] || (objc_msgSend(v5, "supportsWellKnownType:", 6) & 1) == 0)
  {
    v23 = DALoggingwithCategory();
    v24 = *(MEMORY[0x277D03988] + 5);
    if (os_log_type_enabled(v23, v24))
    {
      LOWORD(v31) = 0;
      _os_log_impl(&dword_2484B2000, v23, v24, "Refusing to send out search query because the server doesn't support searching", &v31, 2u);
    }

    v17 = [v4 consumer];
    v25 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277D038E0];
    v27 = 69;
    goto LABEL_10;
  }

  v6 = DALoggingwithCategory();
  v7 = MEMORY[0x277D03988];
  v8 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v6, v8))
  {
    v9 = [v4 searchString];
    v31 = 138412546;
    v32 = v9;
    v33 = 2048;
    v34 = v4;
    _os_log_impl(&dword_2484B2000, v6, v8, "CalDAV search query %@ (%p) enqueuing", &v31, 0x16u);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v29 = DALoggingwithCategory();
    v30 = *(v7 + 4);
    if (os_log_type_enabled(v29, v30))
    {
      v31 = 138412290;
      v32 = v4;
      _os_log_impl(&dword_2484B2000, v29, v30, "Dropping search query %@ because it is not the right type", &v31, 0xCu);
    }

    v17 = [v4 consumer];
    v25 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277D038E0];
    v27 = 65;
LABEL_10:
    v22 = [v25 errorWithDomain:v26 code:v27 userInfo:0];
    [v17 searchQuery:v4 finishedWithError:v22];
    goto LABEL_11;
  }

  v10 = [(MobileCalDAVAccount *)self backingAccount];
  [v10 setShouldUseOpportunisticSockets:0];

  v11 = objc_alloc(MEMORY[0x277CF7010]);
  v12 = MEMORY[0x277CBEB98];
  v13 = [v4 searchString];
  v14 = [v12 setWithObject:v13];
  v15 = [MEMORY[0x277CBEB98] setWithObject:CalDAVPrincipalResultType_Person];
  v16 = [(MobileCalDAVAccount *)self collectionSetURL];
  v17 = [v11 initWithSearchStrings:v14 searchTypes:v15 serverSupportSet:v5 atURL:v16];

  [v17 setDelegate:self];
  v18 = [(MobileCalDAVAccount *)self mainPrincipal];
  [v17 setAccountInfoProvider:v18];

  [v17 setSearchContext:v4];
  v19 = [(MobileCalDAVAccount *)self taskManager];
  [v19 submitIndependentCoreDAVTask:v17];

  v20 = [(MobileCalDAVAccount *)self backingAccount];
  v21 = [v4 consumer];
  [v20 setConsumer:v21 forTask:v17];

  v22 = [(MobileCalDAVAccount *)self searchTaskSet];
  [v22 addObject:v17];
LABEL_11:

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_reallyCancelSearchQuery:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v5, v6))
  {
    *buf = 138412290;
    v26 = v4;
    _os_log_impl(&dword_2484B2000, v5, v6, "cancelling search query %@", buf, 0xCu);
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
  v13 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v12, v13))
  {
    *v15 = 0;
    _os_log_impl(&dword_2484B2000, v12, v13, "_reallyCancelAllSearchQueries is complete. All search queries have been cancelled.", v15, 2u);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)_reallySearchQueriesRunning
{
  v2 = [(MobileCalDAVAccount *)self searchTaskSet];
  v3 = [v2 count] != 0;

  return v3;
}

- (id)_powerAssertionGroupIdentifier
{
  v2 = [(MobileCalDAVAccount *)self backingAccount];
  v3 = [v2 persistentUUID];

  return v3;
}

- (void)_retainPowerAssertion
{
  v5 = [MEMORY[0x277D037B0] sharedPowerAssertionManager];
  v3 = [(MobileCalDAVAccount *)self _powerAssertionContext];
  v4 = [(MobileCalDAVAccount *)self _powerAssertionGroupIdentifier];
  [v5 retainPowerAssertion:v3 withGroupIdentifier:v4];
}

- (void)_releasePowerAssertion
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [(MobileCalDAVAccount *)self _powerAssertionContext];
  v3 = [MEMORY[0x277D037B0] sharedPowerAssertionManager];
  v4 = [v3 powerAssertionRetainCount:v2];

  if (v4)
  {
    v5 = [MEMORY[0x277D037B0] sharedPowerAssertionManager];
    [v5 releasePowerAssertion:v2];
  }

  else
  {
    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v5, *(MEMORY[0x277D03988] + 6)))
    {
      v8 = 138412290;
      v9 = v2;
      _os_log_impl(&dword_2484B2000, v5, v6, "Dropping power assertion release for %@ since the retain count isn't positive", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)isDelegateAccount
{
  v3 = [(MobileCalDAVAccount *)self backingAccount];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CF78D0]];

  if (v4)
  {
    v5 = [v4 BOOLValue];
  }

  else
  {
    v6 = [(MobileCalDAVAccount *)self delegatePrincipalPath];
    v5 = v6 != 0;
  }

  return v5;
}

- (void)calendarsDataclassModified
{
  v3 = [(MobileCalDAVAccount *)self dbHelper];
  if (v3)
  {
    v8 = v3;
    v4 = v3;
    objc_sync_enter(v4);
    v5 = [(MobileCalDAVAccount *)self accountID];
    v6 = [(MobileCalDAVAccount *)self changeTrackingID];
    [v4 calOpenDatabaseForAccountID:v5 clientID:v6];

    [(MobileCalDAVAccount *)self setCalendarHomeSyncToken:0];
    v7 = [(MobileCalDAVAccount *)self accountID];
    [v4 calCloseDatabaseForAccountID:v7 save:1];

    objc_sync_exit(v4);
    v3 = v8;
  }
}

- (BOOL)addressIsAccountOwner:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x277CBEBC0] URLWithString:v4];
    if ([(MobileCalDAVAccount *)self addressURLIsAccountOwner:v5])
    {
      v6 = 1;
    }

    else
    {
      v7 = MEMORY[0x277CBEBC0];
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"mailto:%@", v4];
      v9 = [v7 URLWithString:v8];

      v6 = [(MobileCalDAVAccount *)self addressURLIsAccountOwner:v9];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)addressURLIsAccountOwner:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v5 = [(MobileCalDAVAccount *)self mPrincipals];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __48__MobileCalDAVAccount_addressURLIsAccountOwner___block_invoke;
    v8[3] = &unk_278F17640;
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

uint64_t __48__MobileCalDAVAccount_addressURLIsAccountOwner___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 calendarUserAddressIsEquivalentToURL:*(a1 + 32)];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (void)setObject:(id)a3 forKeyedSubscript:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MobileCalDAVAccount *)self backingAccount];
  [v8 setObject:v7 forKeyedSubscript:v6];
}

- (id)objectForKeyedSubscript:(id)a3
{
  v4 = a3;
  v5 = [(MobileCalDAVAccount *)self backingAccount];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (void)discoverInitialPropertiesWithConsumer:(id)a3
{
  v4 = a3;
  v5 = [(MobileCalDAVAccount *)self backingAccount];
  [v5 _discoverInitialPropertiesWithConsumer:v4];
}

- (void)discoveryTask:(id)a3 gotAccountInfo:(id)a4 error:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(MobileCalDAVAccount *)self backingAccount];
  [v11 discoveryTask:v10 gotAccountInfo:v9 error:v8];
}

- (MobileCalDAVDABackingAccount)backingAccount
{
  WeakRetained = objc_loadWeakRetained(&self->_backingAccount);

  return WeakRetained;
}

- (void)refreshActor:(uint64_t)a1 didCompleteWithError:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MobileCalDAVAccount.m" lineNumber:1500 description:{@"I didn't order a refresh, so why is there one on my menu?"}];
}

- (void)refreshActor:(uint64_t)a1 didCompleteWithError:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MobileCalDAVAccount.m" lineNumber:1501 description:@"We should have an actor at this point"];
}

@end