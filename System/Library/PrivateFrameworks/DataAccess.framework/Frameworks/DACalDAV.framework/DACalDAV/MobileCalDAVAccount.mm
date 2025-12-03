@interface MobileCalDAVAccount
+ (id)_defaultAlarmOffsetFromICSString:(id)string;
- (BOOL)_reallySearchQueriesRunning;
- (BOOL)_saveModifiedPrincipalsOnBackingAccount;
- (BOOL)_saveModifiedSubscribedCalendarsOnBackingAccount;
- (BOOL)_updateCalendarStoreProperties:(void *)properties;
- (BOOL)addressIsAccountOwner:(id)owner;
- (BOOL)addressURLIsAccountOwner:(id)owner;
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
- (BOOL)updateCalendarStoreWithAlreadyOpenDBShouldCreate:(BOOL)create syncingThisAccount:(BOOL)account;
- (BOOL)useSSL;
- (BOOL)wasMigrated;
- (CalDAVServerVersion)serverVersion;
- (DACoreDAVTaskManager)taskManager;
- (DALocalDBHelper)dbHelper;
- (MobileCalDAVAccount)init;
- (MobileCalDAVAccount)initWithBackingAccount:(id)account;
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
- (id)_collectActionsFromMoveDictionary:(__CFDictionary *)dictionary forDataclass:(id)dataclass outShouldSave:(BOOL *)save;
- (id)_externalInfoDictionary;
- (id)_powerAssertionGroupIdentifier;
- (id)addUsernameToURL:(id)l;
- (id)objectForKeyedSubscript:(id)subscript;
- (int64_t)port;
- (void)_checkExistingStoreAndSetChangeReason;
- (void)_clearOrphanedCalendarItemChangesOfType:(int)type withContext:(id)context goodCalendarIds:(id)ids;
- (void)_clearOrphanedChangesWithChangesCall:(void *)call entityType:(int)type withContext:(id)context;
- (void)_clearOrphanedChangesWithContext:(id)context;
- (void)_collectMoveActions;
- (void)_foundDuplicateCalendar:(id)calendar ofCalendar:(id)ofCalendar;
- (void)_foundDuplicateCalendars:(int)calendars;
- (void)_logDuplicateCalendarDetails:(void *)details;
- (void)_reallyCancelAllSearchQueries;
- (void)_reallyCancelSearchQuery:(id)query;
- (void)_reallyPerformSearchQuery:(id)query;
- (void)_releasePowerAssertion;
- (void)_retainPowerAssertion;
- (void)addCalendar:(id)calendar;
- (void)addPrincipal:(id)principal;
- (void)calendarsDataclassModified;
- (void)cancelRefreshWithCompletion:(id)completion;
- (void)copyCalStore;
- (void)dealloc;
- (void)discoverInitialPropertiesWithConsumer:(id)consumer;
- (void)discoveryTask:(id)task gotAccountInfo:(id)info error:(id)error;
- (void)ingestBackingAccountInfoProperties;
- (void)noteHomeSetOnDifferentHost:(id)host;
- (void)refreshActor:(id)actor didCompleteWithError:(id)error;
- (void)refreshWithContext:(id)context completion:(id)completion;
- (void)reloadCalendars;
- (void)removeCalendar:(id)calendar;
- (void)removeCalendarWithURL:(id)l;
- (void)removePrincipal:(id)principal;
- (void)setAccountDescription:(id)description;
- (void)setAccountProperty:(id)property forKey:(id)key;
- (void)setCalendarHomeSyncToken:(id)token;
- (void)setCollectionSetURL:(id)l;
- (void)setHost:(id)host;
- (void)setObject:(id)object forKeyedSubscript:(id)subscript;
- (void)setPassword:(id)password;
- (void)setPort:(int64_t)port;
- (void)setPrincipalPath:(id)path;
- (void)setPrincipalURL:(id)l;
- (void)setRefreshInterval:(double)interval;
- (void)setSearchPropertySet:(id)set;
- (void)setServerVersion:(id)version;
- (void)setSubscribedCalendars:(id)calendars;
- (void)setUsername:(id)username;
- (void)setWasMigrated:(BOOL)migrated;
- (void)syncEndedWithError:(id)error;
- (void)syncStarted;
- (void)task:(id)task didFinishWithError:(id)error;
- (void)updateDelegatesWithUserInfo:(id)info;
@end

@implementation MobileCalDAVAccount

- (MobileCalDAVAccount)initWithBackingAccount:(id)account
{
  accountCopy = account;
  v9.receiver = self;
  v9.super_class = MobileCalDAVAccount;
  v5 = [(MobileCalDAVAccount *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_backingAccount, accountCopy);
    v7 = objc_opt_new();
    [(MobileCalDAVAccount *)v6 setSearchTaskSet:v7];
  }

  return v6;
}

- (MobileCalDAVAccount)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MobileCalDAVAccount.m" lineNumber:145 description:{@"Nothing to see here, buddy. Just turn around and leave quietly."}];

  return 0;
}

- (void)dealloc
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"MobileCalDAVAccount.m" lineNumber:150 description:@"Account was deallocated while still refreshing. Ouch"];
}

- (void)ingestBackingAccountInfoProperties
{
  v57 = *MEMORY[0x277D85DE8];
  [(MobileCalDAVAccount *)self setMPrincipals:0];
  mainPrincipal = [(MobileCalDAVAccount *)self mainPrincipal];

  if (mainPrincipal)
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
  allKeys = [v47 allKeys];
  v9 = [allKeys countByEnumeratingWithState:&v48 objects:v56 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v13 = *(*(&v48 + 1) + 8 * i);
        v14 = [v47 valueForKey:v13];
        v15 = [[MobileCalDAVPrincipal alloc] initWithConfiguration:v14 principalUID:v13 account:self];
        mPrincipals = [(MobileCalDAVAccount *)self mPrincipals];
        [mPrincipals setObject:v15 forKeyedSubscript:v13];

        if (v6 && ([v13 isEqualToString:v6] & 1) != 0)
        {
          [(MobileCalDAVAccount *)self setMainPrincipal:v15];
        }

        else
        {
          mainPrincipal2 = [(MobileCalDAVAccount *)self mainPrincipal];
          v18 = v6 | mainPrincipal2;

          if (!v18)
          {
            [(MobileCalDAVAccount *)self setMainPrincipal:v15];
            mainPrincipal3 = [(MobileCalDAVAccount *)self mainPrincipal];
            v20 = [mainPrincipal3 uid];
            [(MobileCalDAVAccount *)self setObject:v20 forKeyedSubscript:v46];
          }
        }
      }

      v10 = [allKeys countByEnumeratingWithState:&v48 objects:v56 count:16];
    }

    while (v10);
  }

  mainPrincipal4 = [(MobileCalDAVAccount *)self mainPrincipal];

  if (!mainPrincipal4)
  {
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v22, v23))
    {
      accountDescription = [(MobileCalDAVAccount *)self accountDescription];
      publicDescription = [(MobileCalDAVAccount *)self publicDescription];
      *buf = 138412546;
      v53 = accountDescription;
      v54 = 2114;
      v55 = publicDescription;
      _os_log_impl(&dword_2484B2000, v22, v23, "No main principal found in the account properties for %@ (%{public}@). Creating a new one.", buf, 0x16u);
    }

    v26 = [[MobileCalDAVPrincipal alloc] initWithConfiguration:0 principalUID:0 account:self];
    [(MobileCalDAVAccount *)self setMainPrincipal:v26];

    mainPrincipal5 = [(MobileCalDAVAccount *)self mainPrincipal];
    v28 = [mainPrincipal5 uid];
    [(MobileCalDAVAccount *)self setObject:v28 forKeyedSubscript:v46];

    mainPrincipal6 = [(MobileCalDAVAccount *)self mainPrincipal];
    [(MobileCalDAVAccount *)self addPrincipal:mainPrincipal6];
  }

  backingAccount = [(MobileCalDAVAccount *)self backingAccount];
  accountInfo = [backingAccount accountInfo];
  parentAccount = [accountInfo parentAccount];

  if (parentAccount)
  {
    backingAccount2 = [(MobileCalDAVAccount *)self backingAccount];
    accountInfo2 = [backingAccount2 accountInfo];
    parentAccount2 = [accountInfo2 parentAccount];
    -[MobileCalDAVAccount setIsPrimaryAppleAccount:](self, "setIsPrimaryAppleAccount:", [parentAccount2 cal_isPrimaryAppleAccount]);
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
  backingAccount = [(MobileCalDAVAccount *)self backingAccount];
  dbHelper = [backingAccount dbHelper];

  return dbHelper;
}

- (NSDictionary)contextDictionary
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"kDACalDAVContextDictionaryKey_DBHelper";
  dbHelper = [(MobileCalDAVAccount *)self dbHelper];
  v7[0] = dbHelper;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (NSString)accountID
{
  backingAccount = [(MobileCalDAVAccount *)self backingAccount];
  accountIdentifier = [backingAccount accountIdentifier];

  return accountIdentifier;
}

- (NSString)changeTrackingID
{
  backingAccount = [(MobileCalDAVAccount *)self backingAccount];
  changeTrackingID = [backingAccount changeTrackingID];

  return changeTrackingID;
}

- (NSString)publicDescription
{
  backingAccount = [(MobileCalDAVAccount *)self backingAccount];
  publicDescription = [backingAccount publicDescription];

  return publicDescription;
}

- (NSString)password
{
  backingAccount = [(MobileCalDAVAccount *)self backingAccount];
  password = [backingAccount password];

  return password;
}

- (void)setPassword:(id)password
{
  passwordCopy = password;
  backingAccount = [(MobileCalDAVAccount *)self backingAccount];
  [backingAccount setPassword:passwordCopy];
}

- (void)setSubscribedCalendars:(id)calendars
{
  calendarsCopy = calendars;
  calDAVSubscribedCalendarsKey = [MEMORY[0x277D03970] CalDAVSubscribedCalendarsKey];
  v5 = [(MobileCalDAVAccount *)self objectForKeyedSubscript:calDAVSubscribedCalendarsKey];

  if (([calendarsCopy count] || objc_msgSend(v5, "count")) && (objc_msgSend(v5, "isEqualToDictionary:", calendarsCopy) & 1) == 0)
  {
    calDAVSubscribedCalendarsKey2 = [MEMORY[0x277D03970] CalDAVSubscribedCalendarsKey];
    [(MobileCalDAVAccount *)self setObject:calendarsCopy forKeyedSubscript:calDAVSubscribedCalendarsKey2];

    [(MobileCalDAVAccount *)self setSubscribedCalendarsChanged:1];
  }
}

- (NSDictionary)subscribedCalendars
{
  calDAVSubscribedCalendarsKey = [MEMORY[0x277D03970] CalDAVSubscribedCalendarsKey];
  v4 = [(MobileCalDAVAccount *)self objectForKeyedSubscript:calDAVSubscribedCalendarsKey];

  return v4;
}

- (NSArray)principals
{
  mPrincipals = [(MobileCalDAVAccount *)self mPrincipals];
  allValues = [mPrincipals allValues];

  return allValues;
}

- (NSArray)emailAddresses
{
  mainPrincipal = [(MobileCalDAVAccount *)self mainPrincipal];
  calendarUserAddresses = [mainPrincipal calendarUserAddresses];
  allObjects = [calendarUserAddresses allObjects];
  v5 = [allObjects valueForKey:@"absoluteString"];

  return v5;
}

- (NSString)preferredAddress
{
  v2 = MEMORY[0x277CF6FF8];
  mainPrincipal = [(MobileCalDAVAccount *)self mainPrincipal];
  preferredCalendarUserAddresses = [mainPrincipal preferredCalendarUserAddresses];
  v5 = [v2 preferredAddress:preferredCalendarUserAddresses];

  return v5;
}

- (id)addUsernameToURL:(id)l
{
  lCopy = l;
  user = [lCopy user];
  v7 = [user length];
  if (!v7)
  {
    username = [(MobileCalDAVAccount *)self username];
    if ([username length])
    {

LABEL_8:
      username2 = [(MobileCalDAVAccount *)self username];
      da_stringByAddingPercentEscapesForUsername = [username2 da_stringByAddingPercentEscapesForUsername];
      v13 = [lCopy da_urlBySettingUsername:da_stringByAddingPercentEscapesForUsername];

      lCopy = v13;
      goto LABEL_9;
    }
  }

  user2 = [lCopy user];
  username3 = [(MobileCalDAVAccount *)self username];
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

- (BOOL)shouldFailAllTasks
{
  backingAccount = [(MobileCalDAVAccount *)self backingAccount];
  shouldFailAllTasks = [backingAccount shouldFailAllTasks];

  return shouldFailAllTasks;
}

- (NSString)principalPath
{
  mainPrincipal = [(MobileCalDAVAccount *)self mainPrincipal];
  principalPath = [mainPrincipal principalPath];

  return principalPath;
}

- (void)setPrincipalPath:(id)path
{
  pathCopy = path;
  mainPrincipal = [(MobileCalDAVAccount *)self mainPrincipal];
  [mainPrincipal setPrincipalPath:pathCopy];
}

- (NSURL)principalURL
{
  backingAccount = [(MobileCalDAVAccount *)self backingAccount];
  principalURL = [backingAccount principalURL];

  return principalURL;
}

- (void)setPrincipalURL:(id)l
{
  lCopy = l;
  absoluteString = [lCopy absoluteString];
  v5 = [absoluteString hasPrefix:@"/"];

  if (v5)
  {
    absoluteString2 = [lCopy absoluteString];
    [(MobileCalDAVAccount *)self setPrincipalPath:absoluteString2];
  }

  else
  {
    absoluteString2 = [(MobileCalDAVAccount *)self backingAccount];
    [absoluteString2 setPrincipalURL:lCopy];
  }
}

- (void)noteHomeSetOnDifferentHost:(id)host
{
  hostCopy = host;
  scheme = [hostCopy scheme];
  v5 = [scheme isEqualToString:@"http"];
  backingAccount = [(MobileCalDAVAccount *)self backingAccount];
  [backingAccount setUseSSL:v5 ^ 1u];

  host = [hostCopy host];
  backingAccount2 = [(MobileCalDAVAccount *)self backingAccount];
  [backingAccount2 setHost:host];

  port = [hostCopy port];

  if (port)
  {
    port2 = [hostCopy port];
    integerValue = [port2 integerValue];
    backingAccount3 = [(MobileCalDAVAccount *)self backingAccount];
    [backingAccount3 setPort:integerValue];
  }

  [(MobileCalDAVAccount *)self setShouldDoInitialAutodiscovery:1];
  backingAccount4 = [(MobileCalDAVAccount *)self backingAccount];
  [backingAccount4 saveAccountProperties];
}

- (void)setAccountDescription:(id)description
{
  descriptionCopy = description;
  backingAccount = [(MobileCalDAVAccount *)self backingAccount];
  [backingAccount setAccountDescription:descriptionCopy];
}

- (int64_t)port
{
  backingAccount = [(MobileCalDAVAccount *)self backingAccount];
  port = [backingAccount port];

  return port;
}

- (void)setPort:(int64_t)port
{
  backingAccount = [(MobileCalDAVAccount *)self backingAccount];
  [backingAccount setPort:port];
}

- (BOOL)useSSL
{
  backingAccount = [(MobileCalDAVAccount *)self backingAccount];
  useSSL = [backingAccount useSSL];

  return useSSL;
}

- (void)setAccountProperty:(id)property forKey:(id)key
{
  keyCopy = key;
  propertyCopy = property;
  backingAccount = [(MobileCalDAVAccount *)self backingAccount];
  [backingAccount setAccountProperty:propertyCopy forKey:keyCopy];
}

- (NSURL)collectionSetURL
{
  v2 = MEMORY[0x277CBEBC0];
  v3 = [(MobileCalDAVAccount *)self objectForKeyedSubscript:@"CalDAVMobileAccountCollectionSetName"];
  v4 = [v2 URLWithString:v3];

  return v4;
}

- (void)setCollectionSetURL:(id)l
{
  absoluteString = [l absoluteString];
  [(MobileCalDAVAccount *)self setObject:absoluteString forKeyedSubscript:@"CalDAVMobileAccountCollectionSetName"];
}

- (void)setSearchPropertySet:(id)set
{
  setCopy = set;
  searchPropertySet = [(MobileCalDAVAccount *)self searchPropertySet];

  if (searchPropertySet != setCopy)
  {
    objc_storeStrong(&self->_searchPropertySet, set);
    searchPropertySet2 = [(MobileCalDAVAccount *)self searchPropertySet];
    stringProperties = [searchPropertySet2 stringProperties];
    allObjects = [stringProperties allObjects];
    v9 = [allObjects sortedArrayUsingSelector:sel_compare_];
    backingAccount = [(MobileCalDAVAccount *)self backingAccount];
    [backingAccount setObject:v9 forKeyedSubscript:@"CalDAVMobileAccountSearchPropertySetKey_CoreDAV"];
  }
}

- (BOOL)isWritable
{
  v2 = [(MobileCalDAVAccount *)self objectForKeyedSubscript:@"CalDAVMobileAccountIsWritable"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)wasMigrated
{
  if (self->_wasMigrated == -1)
  {
    copyCalStore = [(MobileCalDAVAccount *)self copyCalStore];
    if (copyCalStore)
    {
      v4 = copyCalStore;
      self->_wasMigrated = CalStoreWasMigrated();
      CFRelease(v4);
    }
  }

  return self->_wasMigrated == 1;
}

- (void)setWasMigrated:(BOOL)migrated
{
  migratedCopy = migrated;
  copyCalStore = [(MobileCalDAVAccount *)self copyCalStore];
  if (copyCalStore)
  {
    v6 = copyCalStore;
    if (CalStoreWasMigrated() != migratedCopy)
    {
      CalStoreSetWasMigrated();
      self->_wasMigrated = -1;
    }

    CFRelease(v6);
  }
}

- (void)addCalendar:(id)calendar
{
  v25 = *MEMORY[0x277D85DE8];
  calendarCopy = calendar;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v5, v6))
  {
    if ([calendarCopy isSubscribed])
    {
      v7 = @"subscribed ";
    }

    else
    {
      v7 = &stru_285AB0D40;
    }

    calendarURLString = [calendarCopy calendarURLString];
    v19 = 138412802;
    v20 = v7;
    v21 = 2048;
    v22 = calendarCopy;
    v23 = 2112;
    v24 = calendarURLString;
    _os_log_impl(&dword_2484B2000, v5, v6, "Adding %@calendar %p with url %@", &v19, 0x20u);
  }

  if ([calendarCopy isSubscribed])
  {
    [(MobileCalDAVAccount *)self setSubscribedCalendarsChanged:1];
    backingAccount = [(MobileCalDAVAccount *)self backingAccount];
    calDAVSubscribedCalendarsKey = [MEMORY[0x277D03970] CalDAVSubscribedCalendarsKey];
    v11 = [backingAccount objectForKeyedSubscript:calDAVSubscribedCalendarsKey];
    v12 = [v11 mutableCopy];

    if (!v12)
    {
      v12 = objc_opt_new();
    }

    properties = [calendarCopy properties];
    calendarURLString2 = [calendarCopy calendarURLString];
    [v12 setObject:properties forKeyedSubscript:calendarURLString2];

    backingAccount2 = [(MobileCalDAVAccount *)self backingAccount];
    calDAVSubscribedCalendarsKey2 = [MEMORY[0x277D03970] CalDAVSubscribedCalendarsKey];
    [backingAccount2 setObject:v12 forKeyedSubscript:calDAVSubscribedCalendarsKey2];
  }

  calendars = [(MobileCalDAVAccount *)self calendars];
  [calendars addObject:calendarCopy];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)removeCalendar:(id)calendar
{
  v24 = *MEMORY[0x277D85DE8];
  calendarCopy = calendar;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v5, v6))
  {
    if ([calendarCopy isSubscribed])
    {
      v7 = @"subscribed ";
    }

    else
    {
      v7 = &stru_285AB0D40;
    }

    calendarURLString = [calendarCopy calendarURLString];
    v18 = 138412802;
    v19 = v7;
    v20 = 2048;
    v21 = calendarCopy;
    v22 = 2112;
    v23 = calendarURLString;
    _os_log_impl(&dword_2484B2000, v5, v6, "Removing %@calendar %p at url %@", &v18, 0x20u);
  }

  if ([calendarCopy isSubscribed])
  {
    [(MobileCalDAVAccount *)self setSubscribedCalendarsChanged:1];
    backingAccount = [(MobileCalDAVAccount *)self backingAccount];
    calDAVSubscribedCalendarsKey = [MEMORY[0x277D03970] CalDAVSubscribedCalendarsKey];
    v11 = [backingAccount objectForKeyedSubscript:calDAVSubscribedCalendarsKey];
    v12 = [v11 mutableCopy];

    calendarURLString2 = [calendarCopy calendarURLString];
    [v12 removeObjectForKey:calendarURLString2];

    backingAccount2 = [(MobileCalDAVAccount *)self backingAccount];
    calDAVSubscribedCalendarsKey2 = [MEMORY[0x277D03970] CalDAVSubscribedCalendarsKey];
    [backingAccount2 setObject:v12 forKeyedSubscript:calDAVSubscribedCalendarsKey2];
  }

  [calendarCopy deleteCalendar];
  calendars = [(MobileCalDAVAccount *)self calendars];
  [calendars removeObject:calendarCopy];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)removeCalendarWithURL:(id)l
{
  v28 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v5, v6))
  {
    *buf = 138412290;
    v27 = lCopy;
    _os_log_impl(&dword_2484B2000, v5, v6, "Removing calendar with url %@", buf, 0xCu);
  }

  v20 = lCopy;
  absoluteString = [lCopy absoluteString];
  calendars = [(MobileCalDAVAccount *)self calendars];
  v9 = [calendars copy];

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
        calendarURL = [v15 calendarURL];
        absoluteString2 = [calendarURL absoluteString];
        v18 = [absoluteString2 isEqualToString:absoluteString];

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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  mCalendars = [(MobileCalDAVAccount *)selfCopy mCalendars];

  if (!mCalendars)
  {
    duplicateCalendars = selfCopy->_duplicateCalendars;
    selfCopy->_duplicateCalendars = 0;

    v29 = objc_opt_new();
    v30 = objc_alloc_init(MEMORY[0x277CBEB38]);
    dbHelper = [(MobileCalDAVAccount *)selfCopy dbHelper];
    accountID = [(MobileCalDAVAccount *)selfCopy accountID];
    changeTrackingID = [(MobileCalDAVAccount *)selfCopy changeTrackingID];
    [dbHelper calOpenDatabaseForAccountID:accountID clientID:changeTrackingID];

    copyCalStore = [(MobileCalDAVAccount *)selfCopy copyCalStore];
    if (copyCalStore)
    {
      cf = copyCalStore;
      v9 = CalStoreCopyCalendars();
      v10 = 0;
      v11 = 0;
      v12 = *(MEMORY[0x277D03988] + 6);
      while (v10 < [v9 count])
      {
        v13 = [v9 objectAtIndexedSubscript:v10];

        if (((CalCalendarCanContainEntityType() & 1) != 0 || CalShouldSyncReminders()) && ([(MobileCalDAVAccount *)selfCopy mainPrincipal], v14 = objc_claimAutoreleasedReturnValue(), [MobileCalDAVCalendar calendarWithCalCalendar:v13 principal:v14], v15 = objc_claimAutoreleasedReturnValue(), v14, v15))
        {
          v16 = DALoggingwithCategory();
          if (os_log_type_enabled(v16, v12))
          {
            calendarURLString = [v15 calendarURLString];
            *buf = 134218242;
            v32 = v15;
            v33 = 2112;
            v34 = calendarURLString;
            _os_log_impl(&dword_2484B2000, v16, v12, "Loaded calendar %p with URL %@", buf, 0x16u);
          }

          calendarURL = [v15 calendarURL];
          absoluteString = [calendarURL absoluteString];

          if (absoluteString)
          {
            if (([absoluteString hasSuffix:@"/"] & 1) == 0)
            {
              v20 = [absoluteString stringByAppendingString:@"/"];

              absoluteString = v20;
            }

            v21 = [v30 objectForKeyedSubscript:absoluteString];
            if (v21)
            {
              [(MobileCalDAVAccount *)selfCopy _foundDuplicateCalendar:v15 ofCalendar:v21];
              v11 = (v11 + 1);
            }

            else
            {
              [v29 addObject:v15];
              [v30 setObject:v15 forKeyedSubscript:absoluteString];
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

    [(MobileCalDAVAccount *)selfCopy setMCalendars:v29];
    dbHelper2 = [(MobileCalDAVAccount *)selfCopy dbHelper];
    accountID2 = [(MobileCalDAVAccount *)selfCopy accountID];
    [dbHelper2 calCloseDatabaseForAccountID:accountID2 save:0];

    if (v11 >= 1)
    {
      [(MobileCalDAVAccount *)selfCopy _foundDuplicateCalendars:v11];
    }
  }

  objc_sync_exit(selfCopy);

  mCalendars2 = [(MobileCalDAVAccount *)selfCopy mCalendars];
  v26 = *MEMORY[0x277D85DE8];

  return mCalendars2;
}

- (void)_foundDuplicateCalendar:(id)calendar ofCalendar:(id)ofCalendar
{
  v15[2] = *MEMORY[0x277D85DE8];
  calendarCopy = calendar;
  ofCalendarCopy = ofCalendar;
  calCalendar = [ofCalendarCopy calCalendar];
  calCalendar2 = [calendarCopy calCalendar];
  [(MobileCalDAVAccount *)self _logDuplicateCalendarDetails:calCalendar];
  [(MobileCalDAVAccount *)self _logDuplicateCalendarDetails:calCalendar2];
  duplicateCalendars = self->_duplicateCalendars;
  if (!duplicateCalendars)
  {
    v11 = objc_opt_new();
    v12 = self->_duplicateCalendars;
    self->_duplicateCalendars = v11;

    duplicateCalendars = self->_duplicateCalendars;
  }

  v15[0] = ofCalendarCopy;
  v15[1] = calendarCopy;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  [(NSMutableArray *)duplicateCalendars addObject:v13];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_logDuplicateCalendarDetails:(void *)details
{
  v27 = *MEMORY[0x277D85DE8];
  if (details)
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

- (void)_foundDuplicateCalendars:(int)calendars
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v4, v5))
  {
    v7[0] = 67109120;
    v7[1] = calendars;
    _os_log_impl(&dword_2484B2000, v4, v5, "Found %i duplicate calendars", v7, 8u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (NSArray)duplicateCalendars
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  mCalendars = [(MobileCalDAVAccount *)selfCopy mCalendars];

  if (!mCalendars)
  {
    calendars = [(MobileCalDAVAccount *)selfCopy calendars];
  }

  v5 = selfCopy->_duplicateCalendars;
  objc_sync_exit(selfCopy);

  return v5;
}

- (void)reloadCalendars
{
  obj = self;
  objc_sync_enter(obj);
  [(MobileCalDAVAccount *)obj setMCalendars:0];
  objc_sync_exit(obj);
}

- (void)addPrincipal:(id)principal
{
  principalCopy = principal;
  mPrincipals = [(MobileCalDAVAccount *)self mPrincipals];
  v5 = [principalCopy uid];
  [mPrincipals setObject:principalCopy forKeyedSubscript:v5];

  [principalCopy setAccount:self];
  backingAccount = [(MobileCalDAVAccount *)self backingAccount];
  v7 = *MEMORY[0x277CF78D8];
  v8 = [backingAccount objectForKeyedSubscript:*MEMORY[0x277CF78D8]];
  v9 = [v8 mutableCopy];

  if (!v9)
  {
    v9 = objc_opt_new();
  }

  configuration = [principalCopy configuration];
  v11 = [principalCopy uid];
  [v9 setObject:configuration forKeyedSubscript:v11];

  backingAccount2 = [(MobileCalDAVAccount *)self backingAccount];
  [backingAccount2 setObject:v9 forKeyedSubscript:v7];
}

- (void)removePrincipal:(id)principal
{
  principalCopy = principal;
  backingAccount = [(MobileCalDAVAccount *)self backingAccount];
  v6 = *MEMORY[0x277CF78D8];
  v7 = [backingAccount objectForKeyedSubscript:*MEMORY[0x277CF78D8]];
  v12 = [v7 mutableCopy];

  if (!v12)
  {
    v12 = objc_opt_new();
  }

  v8 = [principalCopy uid];
  [v12 removeObjectForKey:v8];

  backingAccount2 = [(MobileCalDAVAccount *)self backingAccount];
  [backingAccount2 setObject:v12 forKeyedSubscript:v6];

  mPrincipals = [(MobileCalDAVAccount *)self mPrincipals];
  v11 = [principalCopy uid];

  [mPrincipals removeObjectForKey:v11];
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

- (void)setServerVersion:(id)version
{
  v18 = *MEMORY[0x277D85DE8];
  versionCopy = version;
  serverVersion = [(MobileCalDAVAccount *)self serverVersion];
  v7 = [versionCopy isEqual:serverVersion];

  if ((v7 & 1) == 0)
  {
    v8 = DALoggingwithCategory();
    v9 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v8, v9))
    {
      serverVersion2 = [(MobileCalDAVAccount *)self serverVersion];
      v14 = 138412546;
      v15 = versionCopy;
      v16 = 2112;
      v17 = serverVersion2;
      _os_log_impl(&dword_2484B2000, v8, v9, "Setting CalDAV server version to '%@' (currently '%@')", &v14, 0x16u);
    }

    objc_storeStrong(&self->_serverVersion, version);
    propertyValue = [versionCopy propertyValue];
    [(MobileCalDAVAccount *)self setObject:propertyValue forKeyedSubscript:@"CalDAVMobileAccountServerVersion"];

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
  serverVersion = [(MobileCalDAVAccount *)self serverVersion];
  if ([serverVersion supportsTimeRangeFilter])
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
  shouldFilterEventSyncTimeRange = [(MobileCalDAVAccount *)self shouldFilterEventSyncTimeRange];
  if (shouldFilterEventSyncTimeRange)
  {
    serverVersion = [(MobileCalDAVAccount *)self serverVersion];
    supportsTimeRangeFilterOnInbox = [serverVersion supportsTimeRangeFilterOnInbox];

    LOBYTE(shouldFilterEventSyncTimeRange) = supportsTimeRangeFilterOnInbox;
  }

  return shouldFilterEventSyncTimeRange;
}

- (BOOL)supportsReminders
{
  if ([MEMORY[0x277D03910] calDAVRemindersForAll])
  {
    return 1;
  }

  serverVersion = [(MobileCalDAVAccount *)self serverVersion];
  type = [serverVersion type];
  v6 = [type isEqualToString:*MEMORY[0x277CF70A0]];

  if (v6)
  {
    return 0;
  }

  v7 = MEMORY[0x277CF7048];
  mainPrincipal = [(MobileCalDAVAccount *)self mainPrincipal];
  supportedCalendarComponentSets = [mainPrincipal supportedCalendarComponentSets];
  LOBYTE(v7) = [v7 allowedCalendars:supportedCalendarComponentSets contains:@"VTODO"];

  return v7;
}

- (BOOL)supportsEvents
{
  v2 = MEMORY[0x277CF7048];
  mainPrincipal = [(MobileCalDAVAccount *)self mainPrincipal];
  supportedCalendarComponentSets = [mainPrincipal supportedCalendarComponentSets];
  LOBYTE(v2) = [v2 allowedCalendars:supportedCalendarComponentSets contains:@"VEVENT"];

  return v2;
}

- (DACoreDAVTaskManager)taskManager
{
  backingAccount = [(MobileCalDAVAccount *)self backingAccount];
  taskManager = [backingAccount taskManager];

  return taskManager;
}

- (BOOL)shouldUseCalendarHomeSyncReport
{
  serverVersion = [(MobileCalDAVAccount *)self serverVersion];
  if ([serverVersion supportsCalendarHomeSync])
  {
    alwaysUseCalendarHomeSync = 1;
  }

  else
  {
    alwaysUseCalendarHomeSync = [MEMORY[0x277D03910] alwaysUseCalendarHomeSync];
  }

  return alwaysUseCalendarHomeSync;
}

- (BOOL)haveForcedDefaultCalendarRefetch
{
  v2 = [(MobileCalDAVAccount *)self objectForKeyedSubscript:@"HaveForcedDefaultCalendarRefetch"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (NSString)host
{
  backingAccount = [(MobileCalDAVAccount *)self backingAccount];
  host = [backingAccount host];

  return host;
}

- (void)setHost:(id)host
{
  hostCopy = host;
  backingAccount = [(MobileCalDAVAccount *)self backingAccount];
  [backingAccount setHost:hostCopy];
}

- (NSString)username
{
  backingAccount = [(MobileCalDAVAccount *)self backingAccount];
  username = [backingAccount username];

  return username;
}

- (void)setUsername:(id)username
{
  usernameCopy = username;
  backingAccount = [(MobileCalDAVAccount *)self backingAccount];
  [backingAccount setUsername:usernameCopy];
}

- (double)refreshInterval
{
  backingAccount = [(MobileCalDAVAccount *)self backingAccount];
  [backingAccount refreshInterval];
  v4 = v3;

  return v4;
}

- (void)setRefreshInterval:(double)interval
{
  backingAccount = [(MobileCalDAVAccount *)self backingAccount];
  [backingAccount setRefreshInterval:interval];
}

- (BOOL)pushDisabled
{
  backingAccount = [(MobileCalDAVAccount *)self backingAccount];
  pushDisabled = [backingAccount pushDisabled];

  return pushDisabled;
}

- (BOOL)shouldDoInitialAutodiscovery
{
  backingAccount = [(MobileCalDAVAccount *)self backingAccount];
  backingAccountShouldDoInitialAutodiscovery = [backingAccount backingAccountShouldDoInitialAutodiscovery];

  return backingAccountShouldDoInitialAutodiscovery;
}

- (id)_calendarConstraintsName
{
  serverVersion = [(MobileCalDAVAccount *)self serverVersion];
  if ([serverVersion supportsTimeRangeFilter] && (objc_msgSend(serverVersion, "supportsTimeRangeFilterWithoutEndDate") & 1) == 0)
  {
    supportsAutoSchedule = [serverVersion supportsAutoSchedule];
    supportsPrivateComments = [serverVersion supportsPrivateComments];
    v5 = MEMORY[0x277CF7978];
    v6 = supportsPrivateComments == 0;
    v7 = MEMORY[0x277CF7968];
    if (supportsPrivateComments)
    {
      v5 = MEMORY[0x277CF7970];
    }

    v8 = MEMORY[0x277CF7960];
  }

  else
  {
    supportsAutoSchedule = [serverVersion supportsAutoSchedule];
    supportsPrivateComments2 = [serverVersion supportsPrivateComments];
    v5 = MEMORY[0x277CF78C0];
    v6 = supportsPrivateComments2 == 0;
    v7 = MEMORY[0x277CF78B0];
    if (supportsPrivateComments2)
    {
      v5 = MEMORY[0x277CF78B8];
    }

    v8 = MEMORY[0x277CF78A8];
  }

  if (v6)
  {
    v8 = v7;
  }

  if (supportsAutoSchedule)
  {
    v5 = v8;
  }

  v10 = *v5;
  v11 = *v5;

  return v10;
}

- (void)copyCalStore
{
  dbHelper = [(MobileCalDAVAccount *)self dbHelper];
  accountID = [(MobileCalDAVAccount *)self accountID];
  [dbHelper calDatabaseForAccountID:accountID];

  [(MobileCalDAVAccount *)self accountID];

  return CalDatabaseCopyStoreWithExternalID();
}

- (NSString)calendarHomeSyncToken
{
  copyCalStore = [(MobileCalDAVAccount *)self copyCalStore];
  if (copyCalStore)
  {
    v3 = copyCalStore;
    v4 = CalStoreCopyExternalModificationTag();
    CFRelease(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setCalendarHomeSyncToken:(id)token
{
  tokenCopy = token;
  copyCalStore = [(MobileCalDAVAccount *)self copyCalStore];
  calendarHomeSyncToken = [(MobileCalDAVAccount *)self calendarHomeSyncToken];
  if (!copyCalStore || calendarHomeSyncToken == tokenCopy)
  {
    if (!copyCalStore)
    {
      goto LABEL_7;
    }
  }

  else if (([tokenCopy isEqualToString:calendarHomeSyncToken] & 1) == 0)
  {
    CalStoreSetExternalModificationTag();
  }

  CFRelease(copyCalStore);
LABEL_7:
}

- (NSString)accountDescription
{
  if ([(MobileCalDAVAccount *)self isDelegateAccount])
  {
    mainPrincipal = [(MobileCalDAVAccount *)self mainPrincipal];
    [mainPrincipal fullName];
  }

  else
  {
    mainPrincipal = [(MobileCalDAVAccount *)self backingAccount];
    [mainPrincipal accountDescription];
  }
  v4 = ;

  return v4;
}

+ (id)_defaultAlarmOffsetFromICSString:(id)string
{
  v31 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v4 = stringCopy;
  if (stringCopy && [stringCopy length])
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
      calendar = [v6 calendar];
      components = [calendar components];

      v11 = [components countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v11)
      {
        v12 = *v25;
        while (2)
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v25 != v12)
            {
              objc_enumerationMutation(components);
            }

            v14 = *(*(&v24 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v11 = v14;
              goto LABEL_19;
            }
          }

          v11 = [components countByEnumeratingWithState:&v24 objects:v28 count:16];
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
      components = DALoggingwithCategory();
      v16 = *(v7 + 3);
      if (os_log_type_enabled(components, v16))
      {
        *buf = 138412290;
        v30 = v4;
        _os_log_impl(&dword_2484B2000, components, v16, "Could not parse the ics containing the default alarms. ICS: %@", buf, 0xCu);
      }

      v11 = 0;
    }

LABEL_19:

    trigger = [v11 trigger];
    if ([trigger isDurationBased])
    {
      value = [trigger value];
      v19 = MEMORY[0x277CCABB0];
      [value timeInterval];
      v15 = [v19 numberWithInt:v20];
    }

    else
    {
      value = DALoggingwithCategory();
      v21 = *(v7 + 3);
      if (os_log_type_enabled(value, v21))
      {
        *buf = 138412290;
        v30 = v4;
        _os_log_impl(&dword_2484B2000, value, v21, "Date based default alarms are not a thing. ICS: %@", buf, 0xCu);
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

- (BOOL)_updateCalendarStoreProperties:(void *)properties
{
  v102 = *MEMORY[0x277D85DE8];
  if (!properties)
  {
    result = 0;
    goto LABEL_117;
  }

  v4 = CalStoreCopyName();
  accountDescription = [(MobileCalDAVAccount *)self accountDescription];
  if (v4 == accountDescription || ([v4 isEqualToString:accountDescription] & 1) != 0)
  {
    v6 = 0;
  }

  else
  {
    CalStoreSetName();
    v6 = 1;
  }

  v8 = CalStoreCopyOwnerName();
  mainPrincipal = [(MobileCalDAVAccount *)self mainPrincipal];
  fullName = [mainPrincipal fullName];

  if (v8 != fullName && ([v8 isEqualToString:fullName] & 1) == 0)
  {
    CalStoreSetOwnerName();
    v6 = 1;
  }

  if (CalEntityIsNew())
  {
    v11 = v6;
    v12 = CalStoreCopyUUID();
    backingAccount = [(MobileCalDAVAccount *)self backingAccount];
    persistentUUID = [backingAccount persistentUUID];

    if (v12 == persistentUUID)
    {
      v6 = v11;
    }

    else
    {
      v6 = v11;
      if (([v12 isEqualToString:persistentUUID] & 1) == 0)
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
  accountID = [(MobileCalDAVAccount *)self accountID];
  v97 = v15;
  if (v15 != accountID && ([v15 isEqualToString:accountID] & 1) == 0)
  {
    CalStoreSetExternalID();
    v6 = 1;
  }

  v98 = v6;
  v96 = accountID;
  _calendarConstraintsName = [(MobileCalDAVAccount *)self _calendarConstraintsName];
  v94 = CalStoreCopyConstraintsName();
  if (([v94 isEqualToString:_calendarConstraintsName] & 1) == 0)
  {
    v18 = DALoggingwithCategory();
    v19 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v18, v19))
    {
      *buf = 138412290;
      v101 = _calendarConstraintsName;
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

  backingAccount2 = [(MobileCalDAVAccount *)self backingAccount];
  v21 = [backingAccount2 isEnabledForDataclass:*MEMORY[0x277CB9190]];

  if (v21 != CalStoreAllowsTasks())
  {
LABEL_30:
    CalStoreSetAllowsTasks();
    v98 = 1;
  }

LABEL_31:
  if ([(MobileCalDAVAccount *)self supportsEvents])
  {
    backingAccount3 = [(MobileCalDAVAccount *)self backingAccount];
    v23 = [backingAccount3 isEnabledForDataclass:*MEMORY[0x277CB90F0]];

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
  mainPrincipal2 = [(MobileCalDAVAccount *)self mainPrincipal];
  v95 = _calendarConstraintsName;
  if ([mainPrincipal2 canCreateCalendars])
  {
    serverVersion = [(MobileCalDAVAccount *)self serverVersion];
    [serverVersion type];
    v26 = accountDescription;
    v27 = v8;
    v28 = v4;
    v30 = v29 = fullName;
    v31 = [v30 isEqualToString:*MEMORY[0x277CF70A0]] ^ 1;

    fullName = v29;
    v4 = v28;
    v8 = v27;
    accountDescription = v26;
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

  serverVersion2 = [(MobileCalDAVAccount *)self serverVersion];
  supportsSharing = [serverVersion2 supportsSharing];

  if (supportsSharing != CalStoreSupportsSharedCalendars())
  {
    CalStoreSetSupportsSharedCalendars();
    v32 = 1;
  }

  if ((CalStoreSupportsAlarmAcknowledgedDate() & 1) == 0)
  {
    v32 = 1;
    CalStoreSetSupportsAlarmAcknowledgedDate();
  }

  serverVersion3 = [(MobileCalDAVAccount *)self serverVersion];
  supportsPrivateEvents = [serverVersion3 supportsPrivateEvents];

  if (supportsPrivateEvents != CalStoreSupportsPrivateEvents())
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

  mainPrincipal3 = [(MobileCalDAVAccount *)self mainPrincipal];
  isDelegate = [mainPrincipal3 isDelegate];

  if (isDelegate)
  {
    v39 = CalStoreCopyDelegatedAccountOwnerStoreID();
    backingAccount4 = [(MobileCalDAVAccount *)self backingAccount];
    parentAccountIdentifier = [backingAccount4 parentAccountIdentifier];

    if (v39 != parentAccountIdentifier && ([v39 isEqualToString:parentAccountIdentifier] & 1) == 0)
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

  mainPrincipal4 = [(MobileCalDAVAccount *)self mainPrincipal];
  supportsFreebusy = [mainPrincipal4 supportsFreebusy];

  if (supportsFreebusy != CalStoreSupportsAvailabilityRequests())
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

  serverVersion4 = [(MobileCalDAVAccount *)self serverVersion];
  supportsInboxAvailability = [serverVersion4 supportsInboxAvailability];

  if (supportsInboxAvailability != CalStoreSupportsInboxAvailability())
  {
    CalStoreSetSupportsInboxAvailability();
    v32 = 1;
  }

  serverVersion5 = [(MobileCalDAVAccount *)self serverVersion];
  supportsClearingPrivateComments = [serverVersion5 supportsClearingPrivateComments];

  if (supportsClearingPrivateComments != CalStoreGetSupportsClearingPrivateComments())
  {
    CalStoreSetSupportsClearingPrivateComments();
    v32 = 1;
  }

  if ((CalStoreSupportsLocationDirectorySearches() & 1) == 0)
  {
    v32 = 1;
    CalStoreSetSupportsLocationDirectorySearches();
  }

  serverVersion6 = [(MobileCalDAVAccount *)self serverVersion];
  supportsCalendarAudit = [serverVersion6 supportsCalendarAudit];

  if (supportsCalendarAudit != CalStoreGetSupportsJunkReporting())
  {
    CalStoreSetSupportsJunkReporting();
    v32 = 1;
  }

  serverVersion7 = [(MobileCalDAVAccount *)self serverVersion];
  supportsTelephone = [serverVersion7 supportsTelephone];

  if (supportsTelephone != CalStoreGetSupportsPhoneNumbers())
  {
    CalStoreSetSupportsPhoneNumbers();
    v32 = 1;
  }

  serverVersion8 = [(MobileCalDAVAccount *)self serverVersion];
  supportsManagedAttachments = [serverVersion8 supportsManagedAttachments];

  if (supportsManagedAttachments != CalStoreSupportsAttachments())
  {
    CalStoreSetSupportsAttachments();
    v32 = 1;
  }

  serverVersion9 = [(MobileCalDAVAccount *)self serverVersion];
  requiresOpeningAttachmentAsLink = [serverVersion9 requiresOpeningAttachmentAsLink];

  if (requiresOpeningAttachmentAsLink != CalStoreRequiresOpeningAttachmentAsLink())
  {
    CalStoreSetRequiresOpeningAttachmentAsLink();
    v32 = 1;
  }

  serverVersion10 = [(MobileCalDAVAccount *)self serverVersion];
  shouldUseDeleteAndAddInsteadOfMoveBetweenCalendars = [serverVersion10 shouldUseDeleteAndAddInsteadOfMoveBetweenCalendars];

  if (shouldUseDeleteAndAddInsteadOfMoveBetweenCalendars != CalStoreShouldUseDeleteAndAddInsteadOfMoveBetweenCalendars())
  {
    CalStoreSetShouldUseDeleteAndAddInsteadOfMoveBetweenCalendars();
    v32 = 1;
  }

  serverVersion11 = [(MobileCalDAVAccount *)self serverVersion];
  supportsCalendarProxy = [serverVersion11 supportsCalendarProxy];

  if (supportsCalendarProxy != CalStoreSupportsDelegation())
  {
    CalStoreSetSupportsDelegation();
    v32 = 1;
  }

  if (supportsCalendarProxy != CalStoreSupportsDelegateEnumeration())
  {
    CalStoreSetSupportsDelegateEnumeration();
    v32 = 1;
  }

  isWritable = [(MobileCalDAVAccount *)self isWritable];
  if (isWritable != CalStoreIsWritable())
  {
    CalStoreSetIsWritable();
    v32 = 1;
  }

  if ((CalStoreSupportsFloatingTimeZone() & 1) == 0)
  {
    v32 = 1;
    CalStoreSetSupportsFloatingTimeZone();
  }

  serverVersion12 = [(MobileCalDAVAccount *)self serverVersion];
  supportsSubscriptionCalendars = [serverVersion12 supportsSubscriptionCalendars];

  if (supportsSubscriptionCalendars != CalStoreSupportsSubscriptionCalendars())
  {
    CalStoreSetSupportsSubscriptionCalendars();
    v32 = 1;
  }

  serverVersion13 = [(MobileCalDAVAccount *)self serverVersion];
  supportsManagedSubscriptionCalendars = [serverVersion13 supportsManagedSubscriptionCalendars];

  if (supportsManagedSubscriptionCalendars != CalStoreSupportsManagedSubscriptionCalendars())
  {
    CalStoreSetSupportsManagedSubscriptionCalendars();
    v32 = 1;
  }

  serverVersion14 = [(MobileCalDAVAccount *)self serverVersion];
  supportsSubscriptionMirroring = [serverVersion14 supportsSubscriptionMirroring];

  if (supportsSubscriptionMirroring != CalStoreSupportsSubscriptionMirroring())
  {
    CalStoreSetSupportsSubscriptionMirroring();
    v32 = 1;
  }

  serverVersion15 = [(MobileCalDAVAccount *)self serverVersion];
  supportsParticipantRoles = [serverVersion15 supportsParticipantRoles];

  if (supportsParticipantRoles != CalStoreSupportsParticipantRoles())
  {
    CalStoreSetSupportsParticipantRoles();
    v32 = 1;
  }

  backingAccount5 = [(MobileCalDAVAccount *)self backingAccount];
  topLevelAccountTypeIdentifier = [backingAccount5 topLevelAccountTypeIdentifier];

  LODWORD(backingAccount5) = [topLevelAccountTypeIdentifier isEqualToString:*MEMORY[0x277CB8C40]];
  if (backingAccount5 != CalStoreProhibitsUsingEventOrganizerEmailWhenComposingMail())
  {
    CalStoreSetProhibitsUsingEventOrganizerEmailWhenComposingMail();
    v32 = 1;
  }

  if (CalStoreSupportsInvitationModificationsWithoutNotification())
  {
    CalStoreSetSupportsInvitationModificationsWithoutNotification();
    v32 = 1;
  }

  serverVersion16 = [(MobileCalDAVAccount *)self serverVersion];
  supportsCalendarRecurrenceSplit = [serverVersion16 supportsCalendarRecurrenceSplit];

  if (supportsCalendarRecurrenceSplit != CalStoreSupportsRecurrenceSplit())
  {
    CalStoreSetSupportsRecurrenceSplit();
    v32 = 1;
  }

  mainPrincipal5 = [(MobileCalDAVAccount *)self mainPrincipal];
  supportsPush = [mainPrincipal5 supportsPush];

  if (supportsPush != CalStoreSupportsPush())
  {
    CalStoreSetSupportsPush();
    v32 = 1;
  }

  if (CalStoreSyncDefaultAlarms())
  {
    mainPrincipal6 = [(MobileCalDAVAccount *)self mainPrincipal];
    alarmsDirty = [mainPrincipal6 alarmsDirty];

    if (alarmsDirty)
    {
      v93 = fullName;
      v99 = v8;
      v77 = accountDescription;
      v78 = v4;
      v79 = objc_opt_class();
      mainPrincipal7 = [(MobileCalDAVAccount *)self mainPrincipal];
      defaultTimedAlarms = [mainPrincipal7 defaultTimedAlarms];
      v82 = [v79 _defaultAlarmOffsetFromICSString:defaultTimedAlarms];

      integerValue = [v82 integerValue];
      if (integerValue != CalStoreGetDefaultAlarmOffsetNSInteger())
      {
        CalStoreSetDefaultAlarmOffset();
        v32 = 1;
      }

      v84 = objc_opt_class();
      mainPrincipal8 = [(MobileCalDAVAccount *)self mainPrincipal];
      defaultAllDayAlarms = [mainPrincipal8 defaultAllDayAlarms];
      v87 = [v84 _defaultAlarmOffsetFromICSString:defaultAllDayAlarms];

      integerValue2 = [v87 integerValue];
      if (integerValue2 != CalStoreGetDefaultAlarmOffsetNSInteger())
      {
        CalStoreSetDefaultAllDayAlarmOffset();
        v32 = 1;
      }

      mainPrincipal9 = [(MobileCalDAVAccount *)self mainPrincipal];
      [mainPrincipal9 setAlarmsDirty:0];

      v4 = v78;
      accountDescription = v77;
      v8 = v99;
      fullName = v93;
    }
  }

  v90 = CalStoreCopyCachedExternalInfo();
  _externalInfoDictionary = [(MobileCalDAVAccount *)self _externalInfoDictionary];
  if (v90 | _externalInfoDictionary && ([v90 isEqual:_externalInfoDictionary] & 1) == 0)
  {
    CalStoreSetCachedExternalInfo();
    v32 = 1;
  }

  result = v32;
LABEL_117:
  v92 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)updateCalendarStoreWithAlreadyOpenDBShouldCreate:(BOOL)create syncingThisAccount:(BOOL)account
{
  accountCopy = account;
  createCopy = create;
  Store = [(MobileCalDAVAccount *)self copyCalStore];
  if (Store)
  {
    v8 = 0;
  }

  else
  {
    v8 = createCopy;
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

    dbHelper = [(MobileCalDAVAccount *)self dbHelper];
    accountID = [(MobileCalDAVAccount *)self accountID];
    [dbHelper calDatabaseForAccountID:accountID];
    Store = CalDatabaseCreateStore();

    if ([(MobileCalDAVAccount *)self isDelegateAccount])
    {
      CalStoreSetEnabled();
    }
  }

  if (createCopy)
  {
    mainPrincipal = [(MobileCalDAVAccount *)self mainPrincipal];
    [mainPrincipal updatePropertiesFromCalStore:Store];
  }

  if (Store)
  {
    v8 |= [(MobileCalDAVAccount *)self _updateCalendarStoreProperties:Store];
    if (accountCopy && (CalStoreIsEnabled() & 1) == 0)
    {
      refreshContext = [(MobileCalDAVAccount *)self refreshContext];
      [refreshContext setIsDisabledAccount:1];
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
  host = [(MobileCalDAVAccount *)self host];
  v5 = host;
  if (host)
  {
    v6 = *MEMORY[0x277CF7468];
    v21[0] = host;
    v7 = *MEMORY[0x277CF7480];
    v20[0] = v6;
    v20[1] = v7;
    v8 = MEMORY[0x277CCABB0];
    backingAccount = [(MobileCalDAVAccount *)self backingAccount];
    v10 = [v8 numberWithInteger:{objc_msgSend(backingAccount, "port")}];
    v21[1] = v10;
    v20[2] = *MEMORY[0x277CF7490];
    v11 = MEMORY[0x277CCABB0];
    backingAccount2 = [(MobileCalDAVAccount *)self backingAccount];
    v13 = [v11 numberWithBool:{objc_msgSend(backingAccount2, "useSSL")}];
    v21[2] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];
    [v3 addEntriesFromDictionary:v14];

    emailAddresses = [(MobileCalDAVAccount *)self emailAddresses];
    preferredAddress = [(MobileCalDAVAccount *)self preferredAddress];
    if (emailAddresses)
    {
      [v3 setObject:emailAddresses forKeyedSubscript:*MEMORY[0x277CF7478]];
    }

    if (preferredAddress)
    {
      [v3 setObject:preferredAddress forKeyedSubscript:*MEMORY[0x277CF7488]];
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
    accountID = [(MobileCalDAVAccount *)self accountID];
    [v3 syncStartedForStoreWithExternalID:accountID];
  }
}

- (void)syncEndedWithError:(id)error
{
  v13 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = errorCopy;
  if (self->_syncInProgress)
  {
LABEL_6:
    self->_syncInProgress = 0;
    v8 = MEMORY[0x277D037D8];
    accountID = [(MobileCalDAVAccount *)self accountID];
    [v8 syncEndedForStoreWithExternalID:accountID withError:v5];

    goto LABEL_7;
  }

  if (errorCopy)
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

- (void)cancelRefreshWithCompletion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v5, v6))
  {
    accountDescription = [(MobileCalDAVAccount *)self accountDescription];
    publicDescription = [(MobileCalDAVAccount *)self publicDescription];
    *buf = 138412546;
    v21 = accountDescription;
    v22 = 2114;
    v23 = publicDescription;
    _os_log_impl(&dword_2484B2000, v5, v6, "Canceling MobileCalDAVAccount refresh for account %@ (%{public}@)", buf, 0x16u);
  }

  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __51__MobileCalDAVAccount_cancelRefreshWithCompletion___block_invoke;
  v17 = &unk_278F175A0;
  selfCopy = self;
  v19 = completionCopy;
  v9 = completionCopy;
  v10 = MEMORY[0x24C1D0520](&v14);
  v11 = [(MobileCalDAVAccount *)self actor:v14];

  if (v11)
  {
    actor = [(MobileCalDAVAccount *)self actor];
    [actor cancelWithCompletion:v10];
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

- (void)_clearOrphanedCalendarItemChangesOfType:(int)type withContext:(id)context goodCalendarIds:(id)ids
{
  v22 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  idsCopy = ids;
  dbHelper = [(MobileCalDAVAccount *)self dbHelper];
  accountID = [(MobileCalDAVAccount *)self accountID];
  [dbHelper calDatabaseForAccountID:accountID];

  copyCalStore = [(MobileCalDAVAccount *)self copyCalStore];
  if (copyCalStore)
  {
    cf = copyCalStore;
    CalDatabaseCopyCalendarItemChangesInStore();
    v15 = DALoggingwithCategory();
    v16 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = @"task";
      if (type == 2)
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

- (void)_clearOrphanedChangesWithChangesCall:(void *)call entityType:(int)type withContext:(id)context
{
  v34 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  dbHelper = [(MobileCalDAVAccount *)self dbHelper];
  accountID = [(MobileCalDAVAccount *)self accountID];
  v10 = [dbHelper calDatabaseForAccountID:accountID];

  copyCalStore = [(MobileCalDAVAccount *)self copyCalStore];
  if (copyCalStore)
  {
    v12 = copyCalStore;
    theDict = 0;
    (call)(v10, copyCalStore, &theDict);
    v30 = contextCopy;
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

          changeTrackingID = [(MobileCalDAVAccount *)self changeTrackingID];
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
    contextCopy = v30;
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

- (void)_clearOrphanedChangesWithContext:(id)context
{
  contextCopy = context;
  copyCalStore = [(MobileCalDAVAccount *)self copyCalStore];
  if (copyCalStore)
  {
    v6 = copyCalStore;
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

    [(MobileCalDAVAccount *)self _clearOrphanedCalendarItemChangesOfType:2 withContext:contextCopy goodCalendarIds:v7];
    [(MobileCalDAVAccount *)self _clearOrphanedCalendarItemChangesOfType:3 withContext:contextCopy goodCalendarIds:v7];
    [(MobileCalDAVAccount *)self _clearOrphanedChangesWithChangesCall:MEMORY[0x277CF7148] entityType:4 withContext:contextCopy];
    [(MobileCalDAVAccount *)self _clearOrphanedChangesWithChangesCall:MEMORY[0x277CF7168] entityType:7 withContext:contextCopy];
    [(MobileCalDAVAccount *)self _clearOrphanedChangesWithChangesCall:MEMORY[0x277CF7178] entityType:8 withContext:contextCopy];
    [(MobileCalDAVAccount *)self _clearOrphanedChangesWithChangesCall:MEMORY[0x277CF7188] entityType:5 withContext:contextCopy];
    [(MobileCalDAVAccount *)self _clearOrphanedChangesWithChangesCall:MEMORY[0x277CF7158] entityType:11 withContext:contextCopy];
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
  backingAccount = [(MobileCalDAVAccount *)self backingAccount];
  calDAVSubscribedCalendarsKey = [MEMORY[0x277D03970] CalDAVSubscribedCalendarsKey];
  v4 = [backingAccount objectForKeyedSubscript:calDAVSubscribedCalendarsKey];
  allKeys = [v4 allKeys];
  v6 = [allKeys mutableCopy];

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
        calendarURLString = [v16 calendarURLString];
        subscribedCalendars = [(MobileCalDAVAccount *)self subscribedCalendars];
        if (subscribedCalendars && ([v16 isDirty] & 1) != 0)
        {

          goto LABEL_13;
        }

        v19 = [v6 containsObject:calendarURLString];

        if ((v19 & 1) == 0)
        {
LABEL_13:
          v20 = DALoggingwithCategory();
          if (os_log_type_enabled(v20, v9))
          {
            calendarURLString2 = [v16 calendarURLString];
            *buf = 134218242;
            v53 = v16;
            v54 = 2112;
            v55 = calendarURLString2;
            _os_log_impl(&dword_2484B2000, v20, v9, "Subscribed calendar %p at %@ is dirty", buf, 0x16u);
          }

          v40 = 1;
        }

        [v6 removeObject:calendarURLString];
        if (calendarURLString)
        {
          properties = [v16 properties];
          [v39 setObject:properties forKeyedSubscript:calendarURLString];
        }

        else
        {
          properties = DALoggingwithCategory();
          if (os_log_type_enabled(properties, v14))
          {
            *buf = v38;
            v53 = v16;
            _os_log_impl(&dword_2484B2000, properties, v14, "Subscribed calendar has no URL so its properties cannot be saved: %@", buf, 0xCu);
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
      allKeys2 = [v39 allKeys];
      *buf = 138412290;
      v53 = allKeys2;
      _os_log_impl(&dword_2484B2000, v30, v9, "Subscribed calendars were modified. New calendars are %@", buf, 0xCu);
    }

    backingAccount2 = [(MobileCalDAVAccount *)self backingAccount];
    calDAVSubscribedCalendarsKey2 = [MEMORY[0x277D03970] CalDAVSubscribedCalendarsKey];
    [backingAccount2 setObject:v39 forKeyedSubscript:calDAVSubscribedCalendarsKey2];

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
  backingAccount = [(MobileCalDAVAccount *)self backingAccount];
  v35 = *MEMORY[0x277CF78D8];
  v4 = [backingAccount objectForKeyedSubscript:?];
  v5 = [v4 mutableCopy];

  if (!v5)
  {
    v5 = objc_opt_new();
  }

  allKeys = [v5 allKeys];
  v7 = [allKeys mutableCopy];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  selfCopy = self;
  mPrincipals = [(MobileCalDAVAccount *)self mPrincipals];
  allValues = [mPrincipals allValues];

  v10 = [allValues countByEnumeratingWithState:&v41 objects:v48 count:16];
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
          objc_enumerationMutation(allValues);
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

          configuration = [v16 configuration];
          v21 = [v16 uid];
          [v5 setObject:configuration forKeyedSubscript:v21];

          v12 = 1;
        }
      }

      v11 = [allValues countByEnumeratingWithState:&v41 objects:v48 count:16];
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

  backingAccount2 = [(MobileCalDAVAccount *)selfCopy backingAccount];
  [backingAccount2 setObject:v5 forKeyedSubscript:v35];

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

- (void)refreshActor:(id)actor didCompleteWithError:(id)error
{
  v131 = *MEMORY[0x277D85DE8];
  actorCopy = actor;
  errorCopy = error;
  if ([(MobileCalDAVAccount *)self isRefreshing])
  {
    if (actorCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [MobileCalDAVAccount refreshActor:a2 didCompleteWithError:self];
    if (actorCopy)
    {
      goto LABEL_3;
    }
  }

  [MobileCalDAVAccount refreshActor:a2 didCompleteWithError:self];
LABEL_3:
  mainPrincipal = [(MobileCalDAVAccount *)self mainPrincipal];
  refreshContext = [(MobileCalDAVAccount *)self refreshContext];
  numDownloadedElements = [refreshContext numDownloadedElements];
  refreshContext2 = [(MobileCalDAVAccount *)self refreshContext];
  [mainPrincipal noteSuccessfulRequestWithNumDownloadedElements:numDownloadedElements numUploadedElements:{objc_msgSend(refreshContext2, "numUploadedElements")}];

  [(MobileCalDAVAccount *)self _releasePowerAssertion];
  subscribedCalendarsChanged = [(MobileCalDAVAccount *)self subscribedCalendarsChanged];
  if (subscribedCalendarsChanged)
  {
    v14 = DALoggingwithCategory();
    v15 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v14, v15))
    {
      *buf = 0;
      _os_log_impl(&dword_2484B2000, v14, v15, "Subscribed calendars changed", buf, 2u);
    }
  }

  mainPrincipal2 = [(MobileCalDAVAccount *)self mainPrincipal];
  aPSTopic = [mainPrincipal2 APSTopic];
  if ([aPSTopic length])
  {
    mainPrincipal3 = [(MobileCalDAVAccount *)self mainPrincipal];
    supportsPush = [mainPrincipal3 supportsPush];

    if (supportsPush)
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

    mainPrincipal2 = [(MobileCalDAVAccount *)self mainPrincipal];
    aPSTopic = [mainPrincipal2 APSTopic];
    v22 = [aPSTopic length] != 0;
    mainPrincipal4 = [(MobileCalDAVAccount *)self mainPrincipal];
    [mainPrincipal4 setSupportsPush:v22];

    subscribedCalendarsChanged = 1;
  }

LABEL_13:
  mainPrincipal5 = [(MobileCalDAVAccount *)self mainPrincipal];
  shouldUpdatePushDelegate = [mainPrincipal5 shouldUpdatePushDelegate];

  if (shouldUpdatePushDelegate)
  {
    v26 = DALoggingwithCategory();
    v27 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v26, v27))
    {
      *buf = 0;
      _os_log_impl(&dword_2484B2000, v26, v27, "Saving accounts to update push information", buf, 2u);
    }

    mainPrincipal6 = [(MobileCalDAVAccount *)self mainPrincipal];
    [mainPrincipal6 setShouldUpdatePushDelegate:0];

    mainPrincipal7 = [(MobileCalDAVAccount *)self mainPrincipal];
    aPSTopic2 = [mainPrincipal7 APSTopic];
    v31 = [aPSTopic2 length] != 0;
    mainPrincipal8 = [(MobileCalDAVAccount *)self mainPrincipal];
    [mainPrincipal8 setSupportsPush:v31];

    subscribedCalendarsChanged = 1;
  }

  saveModifiedPropertiesOnBackingAccount = [(MobileCalDAVAccount *)self saveModifiedPropertiesOnBackingAccount];
  _saveModifiedSubscribedCalendarsOnBackingAccount = [(MobileCalDAVAccount *)self _saveModifiedSubscribedCalendarsOnBackingAccount];
  context = [actorCopy context];
  shouldSaveAccounts = [context shouldSaveAccounts];

  if (shouldSaveAccounts)
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
    v39 = subscribedCalendarsChanged || saveModifiedPropertiesOnBackingAccount || _saveModifiedSubscribedCalendarsOnBackingAccount;
  }

  wasMigrated = [(MobileCalDAVAccount *)self wasMigrated];
  if (errorCopy)
  {
    context3 = DALoggingwithCategory();
    v42 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(context3, v42))
    {
      accountDescription = [(MobileCalDAVAccount *)self accountDescription];
      publicDescription = [(MobileCalDAVAccount *)self publicDescription];
      [errorCopy domain];
      v114 = wasMigrated;
      v46 = v45 = v39;
      v47 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(errorCopy, "code")}];
      *buf = 138413314;
      v122 = accountDescription;
      v123 = 2114;
      v124 = publicDescription;
      v125 = 2112;
      v126 = *&errorCopy;
      v127 = 2114;
      v128 = v46;
      v129 = 2114;
      v130 = v47;
      _os_log_impl(&dword_2484B2000, context3, v42, "==== CalDAV refresh FAILED for %@ (%{public}@): %@. [Error Domain:%{public}@ Code:%{public}@]", buf, 0x34u);

      v39 = v45;
      wasMigrated = v114;
    }

LABEL_25:

    goto LABEL_36;
  }

  refreshContext3 = [(MobileCalDAVAccount *)self refreshContext];
  calendarFailedToSync = [refreshContext3 calendarFailedToSync];

  v50 = DALoggingwithCategory();
  v51 = MEMORY[0x277D03988];
  v52 = *(MEMORY[0x277D03988] + 5);
  v53 = os_log_type_enabled(v50, v52);
  if (calendarFailedToSync)
  {
    if (!v53)
    {
      goto LABEL_32;
    }

    accountDescription2 = [(MobileCalDAVAccount *)self accountDescription];
    accountID = [(MobileCalDAVAccount *)self accountID];
    *buf = 138412546;
    v122 = accountDescription2;
    v123 = 2114;
    v124 = accountID;
    v56 = "==== CalDAV refresh completed successfully (but some calendars failed to sync) for %@ (%{public}@)";
  }

  else
  {
    if (!v53)
    {
      goto LABEL_32;
    }

    accountDescription2 = [(MobileCalDAVAccount *)self accountDescription];
    accountID = [(MobileCalDAVAccount *)self accountID];
    *buf = 138412546;
    v122 = accountDescription2;
    v123 = 2114;
    v124 = accountID;
    v56 = "==== CalDAV refresh completed successfully for %@ (%{public}@)";
  }

  _os_log_impl(&dword_2484B2000, v50, v52, v56, buf, 0x16u);

LABEL_32:
  v57 = DALoggingwithCategory();
  v58 = *(v51 + 6);
  if (os_log_type_enabled(v57, v58))
  {
    accountDescription3 = [(MobileCalDAVAccount *)self accountDescription];
    publicDescription2 = [(MobileCalDAVAccount *)self publicDescription];
    Current = CFAbsoluteTimeGetCurrent();
    [(MobileCalDAVAccount *)self refreshContext];
    v62 = wasMigrated;
    v64 = v63 = v39;
    [v64 startTime];
    v66 = Current - v65;
    refreshContext4 = [(MobileCalDAVAccount *)self refreshContext];
    numDownloadedElements2 = [refreshContext4 numDownloadedElements];
    *buf = 138413058;
    v122 = accountDescription3;
    v123 = 2114;
    v124 = publicDescription2;
    v125 = 2048;
    v126 = v66;
    v127 = 2048;
    v128 = numDownloadedElements2;
    _os_log_impl(&dword_2484B2000, v57, v58, "CalDAV refresh finished for account %@ (%{public}@): Total sync time: %0.2f seconds. Number of downloaded items: %lu", buf, 0x2Au);

    v51 = MEMORY[0x277D03988];
    v39 = v63;
    wasMigrated = v62;
    errorCopy = 0;
  }

  if ([(MobileCalDAVAccount *)self wasMigrated])
  {
    refreshContext5 = [(MobileCalDAVAccount *)self refreshContext];
    isCalendarsOnly = [refreshContext5 isCalendarsOnly];

    if ((isCalendarsOnly & 1) == 0)
    {
      context2 = [actorCopy context];
      calendarFailedToSync2 = [context2 calendarFailedToSync];

      v84 = DALoggingwithCategory();
      context3 = v84;
      if (calendarFailedToSync2)
      {
        v85 = *(v51 + 4);
        if (os_log_type_enabled(v84, v85))
        {
          *buf = 0;
          _os_log_impl(&dword_2484B2000, context3, v85, "Some calendars failed to sync. Keeping the migration flag around so that we attempt a merge sync the next time", buf, 2u);
        }
      }

      else
      {
        if (os_log_type_enabled(v84, v58))
        {
          *buf = 0;
          _os_log_impl(&dword_2484B2000, context3, v58, "Clearing migrated flag on the calendar store", buf, 2u);
        }

        [(MobileCalDAVAccount *)self setWasMigrated:0];
        context3 = [actorCopy context];
        [context3 setShouldSave:1];
      }

      goto LABEL_25;
    }
  }

LABEL_36:
  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  mCalendars = [(MobileCalDAVAccount *)self mCalendars];
  v72 = [mCalendars countByEnumeratingWithState:&v115 objects:v120 count:16];
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
          objc_enumerationMutation(mCalendars);
        }

        [*(*(&v115 + 1) + 8 * i) flushCaches];
      }

      v73 = [mCalendars countByEnumeratingWithState:&v115 objects:v120 count:16];
    }

    while (v73);
  }

  context4 = [actorCopy context];
  isDisabledAccount = [context4 isDisabledAccount];

  if ((isDisabledAccount & 1) == 0)
  {
    context5 = [actorCopy context];
    [(MobileCalDAVAccount *)self _clearOrphanedChangesWithContext:context5];
  }

  if (!errorCopy)
  {
    if ((isDisabledAccount | wasMigrated) & 1) != 0 || ([actorCopy context], v79 = objc_claimAutoreleasedReturnValue(), v80 = objc_msgSend(v79, "isCalendarsOnly"), v79, (v80))
    {
      clearUnconsumedAndUnsavedChanges = 0;
    }

    else
    {
      context6 = [actorCopy context];
      changeTracker = [context6 changeTracker];
      clearUnconsumedAndUnsavedChanges = [changeTracker clearUnconsumedAndUnsavedChanges];
    }

    context7 = [actorCopy context];
    v89 = [context7 shouldSave] | clearUnconsumedAndUnsavedChanges;
    context8 = [actorCopy context];
    [context8 setShouldSave:v89 & 1];
  }

  dbHelper = [(MobileCalDAVAccount *)self dbHelper];
  accountID2 = [(MobileCalDAVAccount *)self accountID];
  [dbHelper calDatabaseForAccountID:accountID2];
  CalDatabaseUnfreezeChangeLog();

  context9 = [actorCopy context];
  LODWORD(accountID2) = [context9 shouldSave];

  if (accountID2)
  {
    dbHelper2 = [(MobileCalDAVAccount *)self dbHelper];
    accountID3 = [(MobileCalDAVAccount *)self accountID];
    [dbHelper2 calSaveDatabaseForAccountID:accountID3];
  }

  dbHelper3 = [(MobileCalDAVAccount *)self dbHelper];
  accountID4 = [(MobileCalDAVAccount *)self accountID];
  [dbHelper3 calCloseDatabaseForAccountID:accountID4 save:0];

  if (v39)
  {
    if (errorCopy && [errorCopy code] == 6)
    {
      backingAccount = DALoggingwithCategory();
      v99 = *(MEMORY[0x277D03988] + 4);
      if (os_log_type_enabled(backingAccount, v99))
      {
        *buf = 0;
        _os_log_impl(&dword_2484B2000, backingAccount, v99, "Not saving our account properties because the refresh was canceled.", buf, 2u);
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

      backingAccount = [(MobileCalDAVAccount *)self backingAccount];
      [backingAccount saveAccountProperties];
    }
  }

  mainPrincipal9 = [(MobileCalDAVAccount *)self mainPrincipal];
  [mainPrincipal9 setIsDirty:0];

  mainPrincipal10 = [(MobileCalDAVAccount *)self mainPrincipal];
  [mainPrincipal10 setCalendarsAreDirty:0];

  mItemIDsToMoveActions = [(MobileCalDAVAccount *)self mItemIDsToMoveActions];
  [mItemIDsToMoveActions removeAllObjects];

  mMovedItemURLStrings = [(MobileCalDAVAccount *)self mMovedItemURLStrings];
  [mMovedItemURLStrings removeAllObjects];

  [(MobileCalDAVAccount *)self setRefreshContext:0];
  [(MobileCalDAVAccount *)self setIsRefreshing:0];
  [(MobileCalDAVAccount *)self setActor:0];
  [(MobileCalDAVAccount *)self setMCalendars:0];
  context10 = [actorCopy context];
  if (![context10 wasDueToPush])
  {
    goto LABEL_73;
  }

  needsRemindersSync = [actorCopy needsRemindersSync];

  if (needsRemindersSync)
  {
    if ([getREMStoreClass() instancesRespondToSelector:sel_triggerSyncForDataAccessAccountsWithAccountIDs_])
    {
      context10 = [(MobileCalDAVAccount *)self accountID];
      v108 = DALoggingwithCategory();
      v109 = *(MEMORY[0x277D03988] + 5);
      if (os_log_type_enabled(v108, v109))
      {
        *buf = 138543362;
        v122 = context10;
        _os_log_impl(&dword_2484B2000, v108, v109, "DataAccess has determined via a push notification that reminders need syncing. Telling remindd to sync account %{public}@", buf, 0xCu);
      }

      v110 = objc_alloc_init(getREMStoreClass());
      v119 = context10;
      v111 = [MEMORY[0x277CBEA60] arrayWithObjects:&v119 count:1];
      [v110 triggerSyncForDataAccessAccountsWithAccountIDs:v111];
    }

    else
    {
      context10 = DALoggingwithCategory();
      v112 = *(MEMORY[0x277D03988] + 5);
      if (os_log_type_enabled(context10, v112))
      {
        *buf = 0;
        _os_log_impl(&dword_2484B2000, context10, v112, "DataAccess has determined via a push notification that reminders need syncing, but cannot notify remindd because the necessary SPI is not available in this build.", buf, 2u);
      }
    }

LABEL_73:
  }

  v113 = *MEMORY[0x277D85DE8];
}

- (id)_collectActionsFromMoveDictionary:(__CFDictionary *)dictionary forDataclass:(id)dataclass outShouldSave:(BOOL *)save
{
  v72 = *MEMORY[0x277D85DE8];
  dataclassCopy = dataclass;
  v6 = objc_opt_new();
  v57 = objc_opt_new();
  Value = CFDictionaryGetValue(dictionary, *MEMORY[0x277CF75F0]);
  theArray = CFDictionaryGetValue(dictionary, *MEMORY[0x277CF75E0]);
  v53 = CFDictionaryGetValue(dictionary, *MEMORY[0x277CF75F8]);
  v52 = CFDictionaryGetValue(dictionary, *MEMORY[0x277CF7600]);
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

        if (![dataclassCopy isEqualToString:v48])
        {
          break;
        }

        dbHelper = [(MobileCalDAVAccount *)self dbHelper];
        accountID = [(MobileCalDAVAccount *)self accountID];
        [dbHelper calDatabaseForAccountID:accountID];
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

          intValue = [*(*(&v60 + 1) + 8 * i) intValue];
          if (intValue != -1)
          {
            v37 = intValue;
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
      *save = 1;
      dbHelper2 = [(MobileCalDAVAccount *)self dbHelper];
      accountID2 = [(MobileCalDAVAccount *)self accountID];
      [dbHelper2 calDatabaseForAccountID:accountID2];
      changeTrackingID = [(MobileCalDAVAccount *)self changeTrackingID];
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
  mItemIDsToMoveActions = [(MobileCalDAVAccount *)self mItemIDsToMoveActions];

  if (!mItemIDsToMoveActions)
  {
    v4 = objc_opt_new();
    [(MobileCalDAVAccount *)self setMItemIDsToMoveActions:v4];
  }

  mMovedItemURLStrings = [(MobileCalDAVAccount *)self mMovedItemURLStrings];

  if (!mMovedItemURLStrings)
  {
    v6 = objc_opt_new();
    [(MobileCalDAVAccount *)self setMMovedItemURLStrings:v6];
  }

  dbHelper = [(MobileCalDAVAccount *)self dbHelper];
  accountID = [(MobileCalDAVAccount *)self accountID];
  changeTrackingID = [(MobileCalDAVAccount *)self changeTrackingID];
  [dbHelper calOpenDatabaseForAccountID:accountID clientID:changeTrackingID];

  dbHelper2 = [(MobileCalDAVAccount *)self dbHelper];
  accountID2 = [(MobileCalDAVAccount *)self accountID];
  [dbHelper2 calDatabaseForAccountID:accountID2];

  [(MobileCalDAVAccount *)self accountID];
  v12 = CalDatabaseCopyStoreWithExternalID();
  if (v12)
  {
    v13 = v12;
    backingAccount = [(MobileCalDAVAccount *)self backingAccount];
    v15 = *MEMORY[0x277CB90F0];
    v16 = [backingAccount isEnabledForDataclass:*MEMORY[0x277CB90F0]];

    if (v16 && (v17 = CalDatabaseCopyEventMovesInStore()) != 0)
    {
      v18 = v17;
      v33 = 0;
      v19 = [(MobileCalDAVAccount *)self _collectActionsFromMoveDictionary:v17 forDataclass:v15 outShouldSave:&v33];
      v20 = v33;
      mItemIDsToMoveActions2 = [(MobileCalDAVAccount *)self mItemIDsToMoveActions];
      [mItemIDsToMoveActions2 addEntriesFromDictionary:v19];

      CFRelease(v18);
    }

    else
    {
      v20 = 0;
    }

    backingAccount2 = [(MobileCalDAVAccount *)self backingAccount];
    v23 = *MEMORY[0x277CB9190];
    if ([backingAccount2 isEnabledForDataclass:*MEMORY[0x277CB9190]])
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
          mItemIDsToMoveActions3 = [(MobileCalDAVAccount *)self mItemIDsToMoveActions];
          [mItemIDsToMoveActions3 addEntriesFromDictionary:v27];

          CFRelease(v26);
        }
      }
    }

    else
    {
    }

    mItemIDsToMoveActions4 = [(MobileCalDAVAccount *)self mItemIDsToMoveActions];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __42__MobileCalDAVAccount__collectMoveActions__block_invoke;
    v32[3] = &unk_278F175C8;
    v32[4] = self;
    [mItemIDsToMoveActions4 enumerateKeysAndObjectsUsingBlock:v32];

    CFRelease(v13);
  }

  else
  {
    v20 = 0;
  }

  dbHelper3 = [(MobileCalDAVAccount *)self dbHelper];
  accountID3 = [(MobileCalDAVAccount *)self accountID];
  [dbHelper3 calCloseDatabaseForAccountID:accountID3 save:v20];
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

- (void)refreshWithContext:(id)context completion:(id)completion
{
  v46 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  completionCopy = completion;
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
  [(MobileCalDAVAccount *)self setRefreshContext:contextCopy];
  Current = CFAbsoluteTimeGetCurrent();
  refreshContext = [(MobileCalDAVAccount *)self refreshContext];
  [refreshContext setStartTime:Current];

  dbHelper = [(MobileCalDAVAccount *)self dbHelper];
  accountID = [(MobileCalDAVAccount *)self accountID];
  changeTrackingID = [(MobileCalDAVAccount *)self changeTrackingID];
  [dbHelper calOpenDatabaseForAccountID:accountID clientID:changeTrackingID];

  [(MobileCalDAVAccount *)self _checkExistingStoreAndSetChangeReason];
  [(MobileCalDAVAccount *)self _updateCalendarStore:1];
  dbHelper2 = [(MobileCalDAVAccount *)self dbHelper];
  accountID2 = [(MobileCalDAVAccount *)self accountID];
  [dbHelper2 calDatabaseForAccountID:accountID2];
  [(MobileCalDAVAccount *)self setLastSyncedSequenceNumber:CalDatabaseFreezeChangeLog()];

  [(MobileCalDAVAccount *)self _collectMoveActions];
  if (-[MobileCalDAVAccount wasMigrated](self, "wasMigrated") && [contextCopy isCalendarsOnly])
  {
    [contextCopy setIsCalendarsOnly:0];
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

    if ([contextCopy isCalendarsOnly])
    {
      v22 = @" (calendars only)";
    }

    else
    {
      v22 = &stru_285AB0D40;
    }

    accountDescription = [(MobileCalDAVAccount *)self accountDescription];
    accountID3 = [(MobileCalDAVAccount *)self accountID];
    *buf = 138413058;
    v39 = v21;
    v40 = 2112;
    v41 = v22;
    v42 = 2112;
    v43 = accountDescription;
    v44 = 2114;
    v45 = accountID3;
    _os_log_impl(&dword_2484B2000, v18, v20, "==== Beginning %@refresh for CalDAV account%@ %@ (%{public}@)", buf, 0x2Au);
  }

  v25 = DALoggingwithCategory();
  v26 = *(v19 + 6);
  if (os_log_type_enabled(v25, v26))
  {
    refreshContext2 = [(MobileCalDAVAccount *)self refreshContext];
    localItems = [refreshContext2 localItems];
    *buf = 134217984;
    v39 = localItems;
    _os_log_impl(&dword_2484B2000, v25, v26, "Our store has %lu items in it.", buf, 0xCu);
  }

  [(MobileCalDAVAccount *)self _retainPowerAssertion];
  actor = [(MobileCalDAVAccount *)self actor];
  [actor teardown];

  v30 = [MobileCalDAVAccountRefreshActor alloc];
  refreshContext3 = [(MobileCalDAVAccount *)self refreshContext];
  v32 = [(MobileCalDAVAccountRefreshActor *)v30 initWithAccount:self context:refreshContext3];
  [(MobileCalDAVAccount *)self setActor:v32];

  objc_initWeak(buf, self);
  actor2 = [(MobileCalDAVAccount *)self actor];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __53__MobileCalDAVAccount_refreshWithContext_completion___block_invoke;
  v35[3] = &unk_278F175F0;
  objc_copyWeak(&v37, buf);
  v35[4] = self;
  v36 = completionCopy;
  [actor2 refreshWithCompletion:v35];

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
  copyCalStore = [(MobileCalDAVAccount *)self copyCalStore];
  if (copyCalStore)
  {
    v4 = copyCalStore;
    dbHelper = [(MobileCalDAVAccount *)self dbHelper];
    accountID = [(MobileCalDAVAccount *)self accountID];
    [dbHelper calDatabaseForAccountID:accountID];
    CountOfCalendarItemsInStore = CalDatabaseGetCountOfCalendarItemsInStore();

    refreshContext = [(MobileCalDAVAccount *)self refreshContext];
    [refreshContext setLocalItems:CountOfCalendarItemsInStore];

    if (!CountOfCalendarItemsInStore)
    {
    }

    CFRelease(v4);
  }

  dbHelper2 = [(MobileCalDAVAccount *)self dbHelper];
  accountID2 = [(MobileCalDAVAccount *)self accountID];
  [dbHelper2 calDatabaseForAccountID:accountID2];
  CalDatabaseSetChangeReason();
}

- (void)updateDelegatesWithUserInfo:(id)info
{
  v86 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v3 = DALoggingwithCategory();
  v4 = v3;
  v5 = MEMORY[0x277D03988];
  if (infoCopy)
  {
    type = *(MEMORY[0x277D03988] + 5);
    if (os_log_type_enabled(v3, type))
    {
      accountID = [(MobileCalDAVAccount *)self accountID];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = accountID;
      _os_log_impl(&dword_2484B2000, v4, type, "Updating delegates for account %{public}@", &buf, 0xCu);
    }

    v58 = objc_opt_new();
    v51 = objc_opt_new();
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    backingAccount = [(MobileCalDAVAccount *)self backingAccount];
    obj = [backingAccount childAccountsWithAccountTypeIdentifier:*MEMORY[0x277CB8BC8]];

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
          backingAccount2 = [(MobileCalDAVAccount *)self backingAccount];
          identifier = [v11 identifier];
          v14 = [backingAccount2 childAccountWithIdentifier:identifier];

          mobileCalDAVAccount = [v14 mobileCalDAVAccount];
          mainPrincipal = [mobileCalDAVAccount mainPrincipal];
          principalPath = [mainPrincipal principalPath];

          if (principalPath)
          {
            [v58 setObject:v14 forKeyedSubscript:principalPath];
          }

          else
          {
            v18 = DALoggingwithCategory();
            v19 = os_log_type_enabled(v18, v56);
            if (v14)
            {
              if (v19)
              {
                identifier2 = [v11 identifier];
                LODWORD(buf) = 138543362;
                *(&buf + 4) = identifier2;
                _os_log_impl(&dword_2484B2000, v18, v56, "Failed to get main principal path for child account with identifier %{public}@", &buf, 0xCu);
              }
            }

            else if (v19)
            {
              identifier3 = [v11 identifier];
              LODWORD(buf) = 138543362;
              *(&buf + 4) = identifier3;
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
    selfCopy = self;
    p_buf = &buf;
    v70 = &v71;
    [infoCopy enumerateKeysAndObjectsUsingBlock:v65];
    allValues = [v4 allValues];
    v29 = [allValues valueForKey:@"accountInfo"];
    v30 = [v29 mutableCopy];

    allValues2 = [v57 allValues];
    [v30 addObjectsFromArray:allValues2];

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
            identifier4 = [v36 identifier];
            *v79 = 138543362;
            v80 = identifier4;
            _os_log_impl(&dword_2484B2000, v37, type, "Removing delegate account with identifier %{public}@", v79, 0xCu);
          }

          backingAccount3 = [(MobileCalDAVAccount *)self backingAccount];
          [backingAccount3 removeAccount:v36];
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
          accountID2 = [(MobileCalDAVAccount *)self accountID];
          *v79 = 138543362;
          v80 = accountID2;
          _os_log_impl(&dword_2484B2000, v47, type, "Finished updating delegates for account %{public}@", v79, 0xCu);
        }

        _Block_object_dispose(&v71, 8);
        _Block_object_dispose(&buf, 8);

        goto LABEL_45;
      }
    }

    if (*(v72 + 24) == 1)
    {
      dbHelper = [(MobileCalDAVAccount *)self dbHelper];
      accountID3 = [(MobileCalDAVAccount *)self accountID];
      [dbHelper calSaveDatabaseForAccountID:accountID3];

      refreshContext = [(MobileCalDAVAccount *)self refreshContext];
      [refreshContext setShouldSave:0];
    }

    goto LABEL_42;
  }

  v40 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v3, v40))
  {
    backingAccount4 = [(MobileCalDAVAccount *)self backingAccount];
    accountIdentifier = [backingAccount4 accountIdentifier];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = accountIdentifier;
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

- (void)task:(id)task didFinishWithError:(id)error
{
  v40 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  errorCopy = error;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = taskCopy;
    searchContext = [v8 searchContext];
    backingAccount = [(MobileCalDAVAccount *)self backingAccount];
    v11 = [backingAccount consumerForTask:v8];

    domain = [errorCopy domain];
    if ([domain isEqualToString:*MEMORY[0x277CFDB18]])
    {
      code = [errorCopy code];

      if (code == 1)
      {
        array = DALoggingwithCategory();
        v15 = *(MEMORY[0x277D03988] + 6);
        if (os_log_type_enabled(array, v15))
        {
          *buf = 134217984;
          v39 = v8;
          _os_log_impl(&dword_2484B2000, array, v15, "Search task %p was cancelled", buf, 0xCu);
        }

LABEL_23:

        [v11 searchQuery:searchContext finishedWithError:errorCopy];
        searchTaskSet = [(MobileCalDAVAccount *)self searchTaskSet];
        [searchTaskSet removeObject:v8];

        backingAccount2 = [(MobileCalDAVAccount *)self backingAccount];
        [backingAccount2 removeConsumerForTask:v8];

        goto LABEL_24;
      }
    }

    else
    {
    }

    v31 = searchContext;
    v32 = errorCopy;
    array = [MEMORY[0x277CBEB18] array];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    multiStatus = [v8 multiStatus];
    responses = [multiStatus responses];

    v19 = [responses countByEnumeratingWithState:&v33 objects:v37 count:16];
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
            objc_enumerationMutation(responses);
          }

          v23 = [CalDAVPrincipalResult resultFromResponse:*(*(&v33 + 1) + 8 * i)];
          convertToDAContactSearchResultElement = [v23 convertToDAContactSearchResultElement];
          if (convertToDAContactSearchResultElement)
          {
            [array addObject:convertToDAContactSearchResultElement];
          }
        }

        v20 = [responses countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v20);
    }

    if ([array count])
    {
      v25 = DALoggingwithCategory();
      v26 = *(MEMORY[0x277D03988] + 6);
      errorCopy = v32;
      searchContext = v31;
      if (os_log_type_enabled(v25, v26))
      {
        *buf = 134217984;
        v39 = v31;
        _os_log_impl(&dword_2484B2000, v25, v26, "CalDAV search query %p returning results", buf, 0xCu);
      }

      v11 = v30;
      [v30 searchQuery:v31 returnedResults:array];
    }

    else
    {
      errorCopy = v32;
      v11 = v30;
      searchContext = v31;
    }

    goto LABEL_23;
  }

  v8 = DALoggingwithCategory();
  v16 = *(MEMORY[0x277D03988] + 4);
  if (os_log_type_enabled(v8, v16))
  {
    *buf = 138412290;
    v39 = taskCopy;
    _os_log_impl(&dword_2484B2000, v8, v16, "An unknown task just finished. What just happened? %@", buf, 0xCu);
  }

LABEL_24:

  v29 = *MEMORY[0x277D85DE8];
}

- (void)_reallyPerformSearchQuery:(id)query
{
  v35 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  searchPropertySet = [(MobileCalDAVAccount *)self searchPropertySet];
  if (![searchPropertySet supportsPropertySearch] || (objc_msgSend(searchPropertySet, "supportsWellKnownType:", 6) & 1) == 0)
  {
    v23 = DALoggingwithCategory();
    v24 = *(MEMORY[0x277D03988] + 5);
    if (os_log_type_enabled(v23, v24))
    {
      LOWORD(v31) = 0;
      _os_log_impl(&dword_2484B2000, v23, v24, "Refusing to send out search query because the server doesn't support searching", &v31, 2u);
    }

    consumer = [queryCopy consumer];
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
    searchString = [queryCopy searchString];
    v31 = 138412546;
    v32 = searchString;
    v33 = 2048;
    v34 = queryCopy;
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
      v32 = queryCopy;
      _os_log_impl(&dword_2484B2000, v29, v30, "Dropping search query %@ because it is not the right type", &v31, 0xCu);
    }

    consumer = [queryCopy consumer];
    v25 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277D038E0];
    v27 = 65;
LABEL_10:
    searchTaskSet = [v25 errorWithDomain:v26 code:v27 userInfo:0];
    [consumer searchQuery:queryCopy finishedWithError:searchTaskSet];
    goto LABEL_11;
  }

  backingAccount = [(MobileCalDAVAccount *)self backingAccount];
  [backingAccount setShouldUseOpportunisticSockets:0];

  v11 = objc_alloc(MEMORY[0x277CF7010]);
  v12 = MEMORY[0x277CBEB98];
  searchString2 = [queryCopy searchString];
  v14 = [v12 setWithObject:searchString2];
  v15 = [MEMORY[0x277CBEB98] setWithObject:CalDAVPrincipalResultType_Person];
  collectionSetURL = [(MobileCalDAVAccount *)self collectionSetURL];
  consumer = [v11 initWithSearchStrings:v14 searchTypes:v15 serverSupportSet:searchPropertySet atURL:collectionSetURL];

  [consumer setDelegate:self];
  mainPrincipal = [(MobileCalDAVAccount *)self mainPrincipal];
  [consumer setAccountInfoProvider:mainPrincipal];

  [consumer setSearchContext:queryCopy];
  taskManager = [(MobileCalDAVAccount *)self taskManager];
  [taskManager submitIndependentCoreDAVTask:consumer];

  backingAccount2 = [(MobileCalDAVAccount *)self backingAccount];
  consumer2 = [queryCopy consumer];
  [backingAccount2 setConsumer:consumer2 forTask:consumer];

  searchTaskSet = [(MobileCalDAVAccount *)self searchTaskSet];
  [searchTaskSet addObject:consumer];
LABEL_11:

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_reallyCancelSearchQuery:(id)query
{
  v27 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v5, v6))
  {
    *buf = 138412290;
    v26 = queryCopy;
    _os_log_impl(&dword_2484B2000, v5, v6, "cancelling search query %@", buf, 0xCu);
  }

  searchTaskSet = [(MobileCalDAVAccount *)self searchTaskSet];
  v8 = [searchTaskSet copy];

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
      searchContext = [v15 searchContext];
      v17 = [searchContext isEqual:queryCopy];

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

    taskManager = [(MobileCalDAVAccount *)self taskManager];
    [taskManager cancelTask:v11];
  }

LABEL_14:

LABEL_15:
  v19 = *MEMORY[0x277D85DE8];
}

- (void)_reallyCancelAllSearchQueries
{
  v21 = *MEMORY[0x277D85DE8];
  searchTaskSet = [(MobileCalDAVAccount *)self searchTaskSet];
  v4 = [searchTaskSet copy];

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
        taskManager = [(MobileCalDAVAccount *)self taskManager];
        [taskManager cancelTask:v10];
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
  searchTaskSet = [(MobileCalDAVAccount *)self searchTaskSet];
  v3 = [searchTaskSet count] != 0;

  return v3;
}

- (id)_powerAssertionGroupIdentifier
{
  backingAccount = [(MobileCalDAVAccount *)self backingAccount];
  persistentUUID = [backingAccount persistentUUID];

  return persistentUUID;
}

- (void)_retainPowerAssertion
{
  mEMORY[0x277D037B0] = [MEMORY[0x277D037B0] sharedPowerAssertionManager];
  _powerAssertionContext = [(MobileCalDAVAccount *)self _powerAssertionContext];
  _powerAssertionGroupIdentifier = [(MobileCalDAVAccount *)self _powerAssertionGroupIdentifier];
  [mEMORY[0x277D037B0] retainPowerAssertion:_powerAssertionContext withGroupIdentifier:_powerAssertionGroupIdentifier];
}

- (void)_releasePowerAssertion
{
  v10 = *MEMORY[0x277D85DE8];
  _powerAssertionContext = [(MobileCalDAVAccount *)self _powerAssertionContext];
  mEMORY[0x277D037B0] = [MEMORY[0x277D037B0] sharedPowerAssertionManager];
  v4 = [mEMORY[0x277D037B0] powerAssertionRetainCount:_powerAssertionContext];

  if (v4)
  {
    mEMORY[0x277D037B0]2 = [MEMORY[0x277D037B0] sharedPowerAssertionManager];
    [mEMORY[0x277D037B0]2 releasePowerAssertion:_powerAssertionContext];
  }

  else
  {
    mEMORY[0x277D037B0]2 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(mEMORY[0x277D037B0]2, *(MEMORY[0x277D03988] + 6)))
    {
      v8 = 138412290;
      v9 = _powerAssertionContext;
      _os_log_impl(&dword_2484B2000, mEMORY[0x277D037B0]2, v6, "Dropping power assertion release for %@ since the retain count isn't positive", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)isDelegateAccount
{
  backingAccount = [(MobileCalDAVAccount *)self backingAccount];
  v4 = [backingAccount objectForKeyedSubscript:*MEMORY[0x277CF78D0]];

  if (v4)
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    delegatePrincipalPath = [(MobileCalDAVAccount *)self delegatePrincipalPath];
    bOOLValue = delegatePrincipalPath != 0;
  }

  return bOOLValue;
}

- (void)calendarsDataclassModified
{
  dbHelper = [(MobileCalDAVAccount *)self dbHelper];
  if (dbHelper)
  {
    v8 = dbHelper;
    v4 = dbHelper;
    objc_sync_enter(v4);
    accountID = [(MobileCalDAVAccount *)self accountID];
    changeTrackingID = [(MobileCalDAVAccount *)self changeTrackingID];
    [v4 calOpenDatabaseForAccountID:accountID clientID:changeTrackingID];

    [(MobileCalDAVAccount *)self setCalendarHomeSyncToken:0];
    accountID2 = [(MobileCalDAVAccount *)self accountID];
    [v4 calCloseDatabaseForAccountID:accountID2 save:1];

    objc_sync_exit(v4);
    dbHelper = v8;
  }
}

- (BOOL)addressIsAccountOwner:(id)owner
{
  ownerCopy = owner;
  if (ownerCopy)
  {
    v5 = [MEMORY[0x277CBEBC0] URLWithString:ownerCopy];
    if ([(MobileCalDAVAccount *)self addressURLIsAccountOwner:v5])
    {
      v6 = 1;
    }

    else
    {
      v7 = MEMORY[0x277CBEBC0];
      ownerCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"mailto:%@", ownerCopy];
      v9 = [v7 URLWithString:ownerCopy];

      v6 = [(MobileCalDAVAccount *)self addressURLIsAccountOwner:v9];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)addressURLIsAccountOwner:(id)owner
{
  ownerCopy = owner;
  if (ownerCopy)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    mPrincipals = [(MobileCalDAVAccount *)self mPrincipals];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __48__MobileCalDAVAccount_addressURLIsAccountOwner___block_invoke;
    v8[3] = &unk_278F17640;
    v9 = ownerCopy;
    v10 = &v11;
    [mPrincipals enumerateKeysAndObjectsUsingBlock:v8];

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

- (void)setObject:(id)object forKeyedSubscript:(id)subscript
{
  subscriptCopy = subscript;
  objectCopy = object;
  backingAccount = [(MobileCalDAVAccount *)self backingAccount];
  [backingAccount setObject:objectCopy forKeyedSubscript:subscriptCopy];
}

- (id)objectForKeyedSubscript:(id)subscript
{
  subscriptCopy = subscript;
  backingAccount = [(MobileCalDAVAccount *)self backingAccount];
  v6 = [backingAccount objectForKeyedSubscript:subscriptCopy];

  return v6;
}

- (void)discoverInitialPropertiesWithConsumer:(id)consumer
{
  consumerCopy = consumer;
  backingAccount = [(MobileCalDAVAccount *)self backingAccount];
  [backingAccount _discoverInitialPropertiesWithConsumer:consumerCopy];
}

- (void)discoveryTask:(id)task gotAccountInfo:(id)info error:(id)error
{
  errorCopy = error;
  infoCopy = info;
  taskCopy = task;
  backingAccount = [(MobileCalDAVAccount *)self backingAccount];
  [backingAccount discoveryTask:taskCopy gotAccountInfo:infoCopy error:errorCopy];
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