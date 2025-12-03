@interface MobileCalDAVPrincipal
+ (id)alarmICSStringFromOffset:(int64_t)offset;
- (BOOL)_userAddressSet:(id)set isEqualToSet:(id)toSet;
- (BOOL)calendarUserAddressIsEquivalentToURL:(id)l;
- (BOOL)calendarsAreDirty;
- (BOOL)clearCalendarChanges;
- (BOOL)handleTrustChallenge:(id)challenge completionHandler:(id)handler;
- (BOOL)hasCalendarUserAddress:(id)address;
- (BOOL)isEnabledForEvents;
- (BOOL)isEnabledForTodos;
- (BOOL)isMergeSync;
- (BOOL)shouldCompressRequests;
- (BOOL)shouldFailAllTasks;
- (BOOL)shouldSendClientInfoHeaderForURL:(id)l;
- (BOOL)shouldUseOpportunisticSockets;
- (BOOL)supportsExtendedCalendarQuery;
- (BOOL)useSSL;
- (CalDAVAccount)account;
- (CalDAVRefreshContext)refreshContext;
- (CoreDAVTaskManager)taskManager;
- (MobileCalDAVPrincipal)initWithConfiguration:(id)configuration principalUID:(id)d account:(id)account;
- (NSDateComponents)eventFilterEndDate;
- (NSDateComponents)eventFilterStartDate;
- (NSDictionary)calendarUserAddressesPerCalendar;
- (NSDictionary)contextDictionary;
- (NSDictionary)subCalPropertiesByURL;
- (NSSet)calendars;
- (NSString)APSEnv;
- (NSString)APSTopic;
- (NSString)calendarHomeSyncToken;
- (NSString)preferredCalendarEmailAddress;
- (NSString)preferredCalendarPhoneNumber;
- (NSURL)APSSubscriptionURL;
- (NSURL)calendarHomeURL;
- (NSURL)defaultCalendarURL;
- (NSURL)dropBoxURL;
- (NSURL)inboxURL;
- (NSURL)notificationCollectionURL;
- (NSURL)outboxURL;
- (NSURL)preferredCalendarUserAddress;
- (NSURL)principalURL;
- (__CFURLStorageSession)copyStorageSession;
- (id)_eventSyncEndDate;
- (id)_startDateFromDaysToSync:(int)sync;
- (id)accountID;
- (id)additionalHeaderValues;
- (id)calendarOfType:(int)type atURL:(id)l withOptions:(id)options;
- (id)calendarUserAddresses;
- (id)clientToken;
- (id)configuration;
- (id)customConnectionProperties;
- (id)host;
- (id)identityPersist;
- (id)oauth2Token;
- (id)password;
- (id)preferredCalendarUserAddressesForCalendar:(id)calendar;
- (id)scheme;
- (id)user;
- (int64_t)port;
- (void)clientTokenRequestedByServer;
- (void)noteFailedNetworkRequest;
- (void)noteFailedProtocolRequest;
- (void)noteHomeSetOnDifferentHost:(id)host;
- (void)noteSuccessfulRequestWithNumDownloadedElements:(int64_t)elements numUploadedElements:(int64_t)uploadedElements;
- (void)noteTimeSpentInNetworking:(double)networking;
- (void)prepareCalendarsForSyncWithCompletionBlock:(id)block;
- (void)promptUserForNewCoreDAVPasswordWithCompletionBlock:(id)block;
- (void)removeCalendar:(id)calendar;
- (void)removePreferredCalendarUserAddressesForCalendarWithIdentifier:(id)identifier;
- (void)removecalendarWithURL:(id)l;
- (void)setCalendarHomePushKey:(id)key;
- (void)setCalendarHomeSyncToken:(id)token;
- (void)setCalendarHomeURL:(id)l;
- (void)setCanCreateCalendars:(BOOL)calendars;
- (void)setDefaultAllDayAlarms:(id)alarms;
- (void)setDefaultCalendarURL:(id)l;
- (void)setDefaultTimedAlarms:(id)alarms;
- (void)setDropBoxURL:(id)l;
- (void)setFullName:(id)name;
- (void)setInboxCTag:(id)tag;
- (void)setInboxURL:(id)l;
- (void)setIsDelegate:(BOOL)delegate;
- (void)setIsDirty:(BOOL)dirty;
- (void)setIsEnabled:(BOOL)enabled;
- (void)setIsExpandPropertyReportSupported:(BOOL)supported;
- (void)setIsWritable:(BOOL)writable;
- (void)setNotificationCollectionCTag:(id)tag;
- (void)setNotificationCollectionURL:(id)l;
- (void)setNotificationURLString:(id)string;
- (void)setOutboxURL:(id)l;
- (void)setPreferredCalendarUserAddresses:(id)addresses;
- (void)setPreferredCalendarUserAddresses:(id)addresses forCalendar:(id)calendar;
- (void)setPrincipalPath:(id)path;
- (void)setPrincipalURL:(id)l;
- (void)setPushTransports:(id)transports;
- (void)setQuotaFreeBytes:(id)bytes;
- (void)setSupportedCalendarComponentSets:(id)sets;
- (void)setSupportsCalendarUserSearch:(BOOL)search;
- (void)setSupportsFreebusy:(BOOL)freebusy;
- (void)setSupportsPush:(BOOL)push;
- (void)setSupportsSyncToken:(BOOL)token;
- (void)updateAddedOrModifiedSubscribedCalendars:(id)calendars;
- (void)updatePropertiesFromCalStore:(void *)store;
- (void)webLoginRequestedAtURL:(id)l reasonString:(id)string inQueue:(id)queue completionBlock:(id)block;
@end

@implementation MobileCalDAVPrincipal

- (MobileCalDAVPrincipal)initWithConfiguration:(id)configuration principalUID:(id)d account:(id)account
{
  v164 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  dCopy = d;
  accountCopy = account;
  v158.receiver = self;
  v158.super_class = MobileCalDAVPrincipal;
  v12 = [(MobileCalDAVPrincipal *)&v158 init];

  if (v12)
  {
    if (!accountCopy)
    {
      [MobileCalDAVPrincipal initWithConfiguration:a2 principalUID:v12 account:?];
    }

    [(MobileCalDAVPrincipal *)v12 setAccount:accountCopy];
    v13 = *MEMORY[0x277CF7A18];
    v14 = [configurationCopy objectForKeyedSubscript:*MEMORY[0x277CF7A18]];

    if (v14)
    {
      v15 = [configurationCopy objectForKeyedSubscript:v13];
      uid = v12->_uid;
      v12->_uid = v15;
    }

    if (dCopy)
    {
      v17 = v12->_uid;
      if (!v17 || ![(NSString *)v17 isEqualToString:dCopy])
      {
        v18 = DALoggingwithCategory();
        v19 = *(MEMORY[0x277D03988] + 4);
        if (os_log_type_enabled(v18, v19))
        {
          v20 = v12->_uid;
          *buf = 138543618;
          v161 = v20;
          v162 = 2114;
          v163 = dCopy;
          _os_log_impl(&dword_2484B2000, v18, v19, "Principal configuration UID (%{public}@) doesn't match provided UID (%{public}@). Using the provided UID.", buf, 0x16u);
        }

        objc_storeStrong(&v12->_uid, d);
      }
    }

    if (!v12->_uid)
    {
      da_newGUID = [MEMORY[0x277CCACA8] da_newGUID];
      v22 = v12->_uid;
      v12->_uid = da_newGUID;
    }

    v12->_isWritable = [accountCopy isWritable];
    v12->_shouldRefreshPrincipalSearchProperties = 1;
    v12->_canCreateCalendars = [accountCopy isWritable];
    v23 = *MEMORY[0x277CF7A00];
    v24 = [configurationCopy objectForKeyedSubscript:*MEMORY[0x277CF7A00]];

    if (v24)
    {
      v148 = accountCopy;
      v25 = dCopy;
      v26 = objc_opt_new();
      v154 = 0u;
      v155 = 0u;
      v156 = 0u;
      v157 = 0u;
      v27 = [configurationCopy objectForKeyedSubscript:v23];
      v28 = [v27 countByEnumeratingWithState:&v154 objects:v159 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v155;
        do
        {
          for (i = 0; i != v29; ++i)
          {
            if (*v155 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = [MEMORY[0x277CF6FF8] unpackCalDAVUserAdress:{*(*(&v154 + 1) + 8 * i), v148}];
            [v26 addObject:v32];
          }

          v29 = [v27 countByEnumeratingWithState:&v154 objects:v159 count:16];
        }

        while (v29);
      }

      objc_storeStrong(&v12->_preferredCalendarUserAddresses, v26);
      dCopy = v25;
      accountCopy = v148;
    }

    v33 = objc_opt_new();
    calendarUserAddressesPerCalendar = v12->_calendarUserAddressesPerCalendar;
    v12->_calendarUserAddressesPerCalendar = v33;

    v35 = [configurationCopy objectForKeyedSubscript:*MEMORY[0x277CF7A08]];
    if (v35)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v149 = MEMORY[0x277D85DD0];
        v150 = 3221225472;
        v151 = __68__MobileCalDAVPrincipal_initWithConfiguration_principalUID_account___block_invoke;
        v152 = &unk_278F176F8;
        v153 = v12;
        [v35 enumerateKeysAndObjectsUsingBlock:&v149];
      }
    }

    backingAccount = [accountCopy backingAccount];
    topLevelAccountTypeIdentifier = [backingAccount topLevelAccountTypeIdentifier];
    v38 = [topLevelAccountTypeIdentifier isEqualToString:*MEMORY[0x277CB8BA0]];

    if (v38)
    {
      v39 = [objc_alloc(MEMORY[0x277CF0188]) initWithIdentifier:@"CardDAViCloudDaemonAccount"];
      appleIDSession = v12->_appleIDSession;
      v12->_appleIDSession = v39;
    }

    v41 = *MEMORY[0x277CF79D0];
    v42 = [configurationCopy objectForKeyedSubscript:*MEMORY[0x277CF79D0]];

    if (v42)
    {
      v43 = [configurationCopy objectForKeyedSubscript:v41];
      fullName = v12->_fullName;
      v12->_fullName = v43;
    }

    v45 = *MEMORY[0x277CF7980];
    v46 = [configurationCopy objectForKeyedSubscript:*MEMORY[0x277CF7980]];

    if (v46)
    {
      v47 = MEMORY[0x277CBEBC0];
      v48 = [configurationCopy objectForKeyedSubscript:v45];
      v49 = [v47 URLWithString:v48];
      calendarHomeURL = v12->_calendarHomeURL;
      v12->_calendarHomeURL = v49;
    }

    v51 = *MEMORY[0x277CF7A10];
    v52 = [configurationCopy objectForKeyedSubscript:*MEMORY[0x277CF7A10]];

    if (v52)
    {
      v53 = [configurationCopy objectForKeyedSubscript:v51];
      principalPath = v12->_principalPath;
      v12->_principalPath = v53;
    }

    v55 = *MEMORY[0x277CF79C8];
    v56 = [configurationCopy objectForKeyedSubscript:*MEMORY[0x277CF79C8]];

    if (v56)
    {
      v57 = MEMORY[0x277CBEBC0];
      v58 = [configurationCopy objectForKeyedSubscript:v55];
      v59 = [v57 URLWithString:v58];
      defaultCalendarURL = v12->_defaultCalendarURL;
      v12->_defaultCalendarURL = v59;
    }

    v61 = *MEMORY[0x277CF79A8];
    v62 = [configurationCopy objectForKeyedSubscript:*MEMORY[0x277CF79A8]];

    if (v62)
    {
      v63 = MEMORY[0x277CBEBC0];
      v64 = [configurationCopy objectForKeyedSubscript:v61];
      v65 = [v63 URLWithString:v64];
      notificationCollectionURL = v12->_notificationCollectionURL;
      v12->_notificationCollectionURL = v65;
    }

    v67 = *MEMORY[0x277CF79A0];
    v68 = [configurationCopy objectForKeyedSubscript:*MEMORY[0x277CF79A0]];

    if (v68)
    {
      v69 = [configurationCopy objectForKeyedSubscript:v67];
      notificationCollectionCTag = v12->_notificationCollectionCTag;
      v12->_notificationCollectionCTag = v69;
    }

    v71 = *MEMORY[0x277CF7998];
    v72 = [configurationCopy objectForKeyedSubscript:*MEMORY[0x277CF7998]];

    if (v72)
    {
      v73 = MEMORY[0x277CBEBC0];
      v74 = [configurationCopy objectForKeyedSubscript:v71];
      v75 = [v73 URLWithString:v74];
      inboxURL = v12->_inboxURL;
      v12->_inboxURL = v75;
    }

    v77 = *MEMORY[0x277CF7990];
    v78 = [configurationCopy objectForKeyedSubscript:*MEMORY[0x277CF7990]];

    if (v78)
    {
      v79 = [configurationCopy objectForKeyedSubscript:v77];
      inboxCTag = v12->_inboxCTag;
      v12->_inboxCTag = v79;
    }

    v81 = *MEMORY[0x277CF79B0];
    v82 = [configurationCopy objectForKeyedSubscript:*MEMORY[0x277CF79B0]];

    if (v82)
    {
      v83 = MEMORY[0x277CBEBC0];
      v84 = [configurationCopy objectForKeyedSubscript:v81];
      v85 = [v83 URLWithString:v84];
      outboxURL = v12->_outboxURL;
      v12->_outboxURL = v85;
    }

    v87 = *MEMORY[0x277CF7988];
    v88 = [configurationCopy objectForKeyedSubscript:*MEMORY[0x277CF7988]];

    if (v88)
    {
      v89 = MEMORY[0x277CBEBC0];
      v90 = [configurationCopy objectForKeyedSubscript:v87];
      v91 = [v89 URLWithString:v90];
      dropBoxURL = v12->_dropBoxURL;
      v12->_dropBoxURL = v91;
    }

    v93 = *MEMORY[0x277CF79F8];
    v94 = [configurationCopy objectForKeyedSubscript:*MEMORY[0x277CF79F8]];

    if (v94)
    {
      v95 = [configurationCopy objectForKeyedSubscript:v93];
      notificationURLString = v12->_notificationURLString;
      v12->_notificationURLString = v95;
    }

    v97 = *MEMORY[0x277CF7A20];
    v98 = [configurationCopy objectForKeyedSubscript:*MEMORY[0x277CF7A20]];

    if (v98)
    {
      v99 = [configurationCopy objectForKeyedSubscript:v97];
      pushTransports = v12->_pushTransports;
      v12->_pushTransports = v99;
    }

    v101 = *MEMORY[0x277CF79B8];
    v102 = [configurationCopy objectForKeyedSubscript:*MEMORY[0x277CF79B8]];

    if (v102)
    {
      v103 = [configurationCopy objectForKeyedSubscript:v101];
      calendarHomePushKey = v12->_calendarHomePushKey;
      v12->_calendarHomePushKey = v103;
    }

    v105 = *MEMORY[0x277CF79D8];
    v106 = [configurationCopy objectForKeyedSubscript:*MEMORY[0x277CF79D8]];

    if (v106)
    {
      v107 = [configurationCopy objectForKeyedSubscript:v105];
      v12->_isDelegate = [v107 BOOLValue];
    }

    v108 = *MEMORY[0x277CF79F0];
    v109 = [configurationCopy objectForKeyedSubscript:*MEMORY[0x277CF79F0]];

    if (v109)
    {
      v110 = [configurationCopy objectForKeyedSubscript:v108];
      v12->_isWritable = [v110 BOOLValue];
    }

    v111 = *MEMORY[0x277CF79C0];
    v112 = [configurationCopy objectForKeyedSubscript:*MEMORY[0x277CF79C0]];

    if (v112)
    {
      v113 = [configurationCopy objectForKeyedSubscript:v111];
      v12->_canCreateCalendars = [v113 BOOLValue];
    }

    v114 = *MEMORY[0x277CF79E0];
    v115 = [configurationCopy objectForKeyedSubscript:*MEMORY[0x277CF79E0]];

    if (v115)
    {
      v116 = [configurationCopy objectForKeyedSubscript:v114];
      v12->_isEnabled = [v116 BOOLValue];
    }

    v117 = *MEMORY[0x277CF79E8];
    v118 = [configurationCopy objectForKeyedSubscript:*MEMORY[0x277CF79E8]];

    if (v118)
    {
      v119 = [configurationCopy objectForKeyedSubscript:v117];
      v12->_isExpandPropertyReportSupported = [v119 BOOLValue];
    }

    v120 = *MEMORY[0x277CF7A38];
    v121 = [configurationCopy objectForKeyedSubscript:*MEMORY[0x277CF7A38]];

    if (v121)
    {
      v122 = [configurationCopy objectForKeyedSubscript:v120];
      v12->_supportsCalendarUserSearch = [v122 BOOLValue];
    }

    v123 = *MEMORY[0x277CF7A40];
    v124 = [configurationCopy objectForKeyedSubscript:*MEMORY[0x277CF7A40]];

    if (v124)
    {
      v125 = [configurationCopy objectForKeyedSubscript:v123];
      v12->_supportsFreebusy = [v125 BOOLValue];
    }

    v126 = *MEMORY[0x277CF7A50];
    v127 = [configurationCopy objectForKeyedSubscript:*MEMORY[0x277CF7A50]];

    if (v127)
    {
      v128 = [configurationCopy objectForKeyedSubscript:v126];
      v12->_supportsSyncToken = [v128 BOOLValue];
    }

    v129 = *MEMORY[0x277CF7A48];
    v130 = [configurationCopy objectForKeyedSubscript:*MEMORY[0x277CF7A48]];

    if (v130)
    {
      v131 = [configurationCopy objectForKeyedSubscript:v129];
      v12->_supportsPush = [v131 BOOLValue];
    }

    v132 = *MEMORY[0x277CF7A28];
    v133 = [configurationCopy objectForKeyedSubscript:*MEMORY[0x277CF7A28]];

    if (v133)
    {
      v134 = [configurationCopy objectForKeyedSubscript:v132];
      quotaFreeBytes = v12->_quotaFreeBytes;
      v12->_quotaFreeBytes = v134;
    }

    v136 = *MEMORY[0x277CF7A30];
    v137 = [configurationCopy objectForKeyedSubscript:*MEMORY[0x277CF7A30]];

    if (v137)
    {
      v138 = [configurationCopy objectForKeyedSubscript:v136];
      supportedCalendarComponentSets = v12->_supportedCalendarComponentSets;
      v12->_supportedCalendarComponentSets = v138;
    }

    v140 = [configurationCopy objectForKeyedSubscript:@"PrincipalURL"];

    if (v140)
    {
      v141 = MEMORY[0x277CBEBC0];
      v142 = [configurationCopy objectForKeyedSubscript:@"PrincipalURL"];
      v143 = [v141 URLWithString:v142];
      legacy_principalURL = v12->_legacy_principalURL;
      v12->_legacy_principalURL = v143;
    }
  }

  v145 = v12;

  v146 = *MEMORY[0x277D85DE8];
  return v145;
}

void __68__MobileCalDAVPrincipal_initWithConfiguration_principalUID_account___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = objc_opt_new();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__MobileCalDAVPrincipal_initWithConfiguration_principalUID_account___block_invoke_2;
  v9[3] = &unk_278F176D0;
  v10 = v7;
  v8 = v7;
  [v5 enumerateObjectsUsingBlock:v9];

  [*(*(a1 + 32) + 8) setObject:v8 forKeyedSubscript:v6];
}

void __68__MobileCalDAVPrincipal_initWithConfiguration_principalUID_account___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CF6FF8] unpackCalDAVUserAdress:a2];
  [v2 addObject:v3];
}

- (id)configuration
{
  v3 = objc_opt_new();
  v4 = [(MobileCalDAVPrincipal *)self uid];

  if (v4)
  {
    v5 = [(MobileCalDAVPrincipal *)self uid];
    [v3 setObject:v5 forKey:*MEMORY[0x277CF7A18]];
  }

  v6 = objc_opt_new();
  preferredCalendarUserAddresses = [(MobileCalDAVPrincipal *)self preferredCalendarUserAddresses];
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __38__MobileCalDAVPrincipal_configuration__block_invoke;
  v62[3] = &unk_278F17720;
  v8 = v6;
  v63 = v8;
  [preferredCalendarUserAddresses enumerateObjectsUsingBlock:v62];

  if (v8)
  {
    [v3 setObject:v8 forKey:*MEMORY[0x277CF7A00]];
  }

  v9 = objc_opt_new();
  calendarUserAddressesPerCalendar = self->_calendarUserAddressesPerCalendar;
  v57 = MEMORY[0x277D85DD0];
  v58 = 3221225472;
  v59 = __38__MobileCalDAVPrincipal_configuration__block_invoke_2;
  v60 = &unk_278F17748;
  v11 = v9;
  v61 = v11;
  [(NSMutableDictionary *)calendarUserAddressesPerCalendar enumerateKeysAndObjectsUsingBlock:&v57];
  if (v11)
  {
    [v3 setObject:v11 forKey:{*MEMORY[0x277CF7A08], v57, v58, v59, v60}];
  }

  v12 = [(MobileCalDAVPrincipal *)self fullName:v57];

  if (v12)
  {
    fullName = [(MobileCalDAVPrincipal *)self fullName];
    [v3 setObject:fullName forKey:*MEMORY[0x277CF79D0]];
  }

  calendarHomeURL = [(MobileCalDAVPrincipal *)self calendarHomeURL];

  if (calendarHomeURL)
  {
    calendarHomeURL2 = [(MobileCalDAVPrincipal *)self calendarHomeURL];
    absoluteString = [calendarHomeURL2 absoluteString];
    [v3 setObject:absoluteString forKey:*MEMORY[0x277CF7980]];
  }

  principalPath = [(MobileCalDAVPrincipal *)self principalPath];

  if (principalPath)
  {
    principalPath2 = [(MobileCalDAVPrincipal *)self principalPath];
    [v3 setObject:principalPath2 forKey:*MEMORY[0x277CF7A10]];
  }

  defaultCalendarURL = [(MobileCalDAVPrincipal *)self defaultCalendarURL];

  if (defaultCalendarURL)
  {
    defaultCalendarURL2 = [(MobileCalDAVPrincipal *)self defaultCalendarURL];
    absoluteString2 = [defaultCalendarURL2 absoluteString];
    [v3 setObject:absoluteString2 forKey:*MEMORY[0x277CF79C8]];
  }

  notificationCollectionURL = [(MobileCalDAVPrincipal *)self notificationCollectionURL];

  if (notificationCollectionURL)
  {
    notificationCollectionURL2 = [(MobileCalDAVPrincipal *)self notificationCollectionURL];
    absoluteString3 = [notificationCollectionURL2 absoluteString];
    [v3 setObject:absoluteString3 forKey:*MEMORY[0x277CF79A8]];
  }

  notificationCollectionCTag = [(MobileCalDAVPrincipal *)self notificationCollectionCTag];

  if (notificationCollectionCTag)
  {
    notificationCollectionCTag2 = [(MobileCalDAVPrincipal *)self notificationCollectionCTag];
    [v3 setObject:notificationCollectionCTag2 forKey:*MEMORY[0x277CF79A0]];
  }

  inboxURL = [(MobileCalDAVPrincipal *)self inboxURL];

  if (inboxURL)
  {
    inboxURL2 = [(MobileCalDAVPrincipal *)self inboxURL];
    absoluteString4 = [inboxURL2 absoluteString];
    [v3 setObject:absoluteString4 forKey:*MEMORY[0x277CF7998]];
  }

  inboxCTag = [(MobileCalDAVPrincipal *)self inboxCTag];

  if (inboxCTag)
  {
    inboxCTag2 = [(MobileCalDAVPrincipal *)self inboxCTag];
    [v3 setObject:inboxCTag2 forKey:*MEMORY[0x277CF7990]];
  }

  outboxURL = [(MobileCalDAVPrincipal *)self outboxURL];

  if (outboxURL)
  {
    outboxURL2 = [(MobileCalDAVPrincipal *)self outboxURL];
    absoluteString5 = [outboxURL2 absoluteString];
    [v3 setObject:absoluteString5 forKey:*MEMORY[0x277CF79B0]];
  }

  dropBoxURL = [(MobileCalDAVPrincipal *)self dropBoxURL];

  if (dropBoxURL)
  {
    dropBoxURL2 = [(MobileCalDAVPrincipal *)self dropBoxURL];
    absoluteString6 = [dropBoxURL2 absoluteString];
    [v3 setObject:absoluteString6 forKey:*MEMORY[0x277CF7988]];
  }

  notificationURLString = [(MobileCalDAVPrincipal *)self notificationURLString];

  if (notificationURLString)
  {
    notificationURLString2 = [(MobileCalDAVPrincipal *)self notificationURLString];
    [v3 setObject:notificationURLString2 forKey:*MEMORY[0x277CF79F8]];
  }

  pushTransports = [(MobileCalDAVPrincipal *)self pushTransports];

  if (pushTransports)
  {
    pushTransports2 = [(MobileCalDAVPrincipal *)self pushTransports];
    [v3 setObject:pushTransports2 forKey:*MEMORY[0x277CF7A20]];
  }

  calendarHomePushKey = [(MobileCalDAVPrincipal *)self calendarHomePushKey];

  if (calendarHomePushKey)
  {
    calendarHomePushKey2 = [(MobileCalDAVPrincipal *)self calendarHomePushKey];
    [v3 setObject:calendarHomePushKey2 forKey:*MEMORY[0x277CF79B8]];
  }

  v44 = [MEMORY[0x277CCABB0] numberWithBool:{-[MobileCalDAVPrincipal isDelegate](self, "isDelegate")}];
  [v3 setObject:v44 forKey:*MEMORY[0x277CF79D8]];

  v45 = [MEMORY[0x277CCABB0] numberWithBool:{-[MobileCalDAVPrincipal isWritable](self, "isWritable")}];
  [v3 setObject:v45 forKey:*MEMORY[0x277CF79F0]];

  v46 = [MEMORY[0x277CCABB0] numberWithBool:{-[MobileCalDAVPrincipal canCreateCalendars](self, "canCreateCalendars")}];
  [v3 setObject:v46 forKey:*MEMORY[0x277CF79C0]];

  v47 = [MEMORY[0x277CCABB0] numberWithBool:{-[MobileCalDAVPrincipal isEnabled](self, "isEnabled")}];
  [v3 setObject:v47 forKey:*MEMORY[0x277CF79E0]];

  v48 = [MEMORY[0x277CCABB0] numberWithBool:{-[MobileCalDAVPrincipal isExpandPropertyReportSupported](self, "isExpandPropertyReportSupported")}];
  [v3 setObject:v48 forKey:*MEMORY[0x277CF79E8]];

  v49 = [MEMORY[0x277CCABB0] numberWithBool:{-[MobileCalDAVPrincipal supportsCalendarUserSearch](self, "supportsCalendarUserSearch")}];
  [v3 setObject:v49 forKey:*MEMORY[0x277CF7A38]];

  v50 = [MEMORY[0x277CCABB0] numberWithBool:{-[MobileCalDAVPrincipal supportsFreebusy](self, "supportsFreebusy")}];
  [v3 setObject:v50 forKey:*MEMORY[0x277CF7A40]];

  v51 = [MEMORY[0x277CCABB0] numberWithBool:{-[MobileCalDAVPrincipal supportsSyncToken](self, "supportsSyncToken")}];
  [v3 setObject:v51 forKey:*MEMORY[0x277CF7A50]];

  v52 = [MEMORY[0x277CCABB0] numberWithBool:{-[MobileCalDAVPrincipal supportsPush](self, "supportsPush")}];
  [v3 setObject:v52 forKey:*MEMORY[0x277CF7A48]];

  quotaFreeBytes = [(MobileCalDAVPrincipal *)self quotaFreeBytes];

  if (quotaFreeBytes)
  {
    quotaFreeBytes2 = [(MobileCalDAVPrincipal *)self quotaFreeBytes];
    [v3 setObject:quotaFreeBytes2 forKey:*MEMORY[0x277CF7A28]];
  }

  supportedCalendarComponentSets = self->_supportedCalendarComponentSets;
  if (supportedCalendarComponentSets)
  {
    [v3 setObject:supportedCalendarComponentSets forKey:*MEMORY[0x277CF7A30]];
  }

  return v3;
}

void __38__MobileCalDAVPrincipal_configuration__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CF6FF8] packCalDAVUserAdress:a2];
  [v2 addObject:v3];
}

void __38__MobileCalDAVPrincipal_configuration__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_opt_new();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __38__MobileCalDAVPrincipal_configuration__block_invoke_3;
  v9[3] = &unk_278F17720;
  v8 = v7;
  v10 = v8;
  [v6 enumerateObjectsUsingBlock:v9];

  if ([v8 count])
  {
    [*(a1 + 32) setObject:v8 forKeyedSubscript:v5];
  }
}

void __38__MobileCalDAVPrincipal_configuration__block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CF6FF8] packCalDAVUserAdress:a2];
  [v2 addObject:v3];
}

- (BOOL)_userAddressSet:(id)set isEqualToSet:(id)toSet
{
  setCopy = set;
  toSetCopy = toSet;
  if (setCopy == toSetCopy)
  {
    v9 = 1;
  }

  else
  {
    v7 = [setCopy count];
    if (v7 == [toSetCopy count])
    {
      v14 = 0;
      v15 = &v14;
      v16 = 0x2020000000;
      v17 = 0;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __54__MobileCalDAVPrincipal__userAddressSet_isEqualToSet___block_invoke;
      v11[3] = &unk_278F17770;
      v12 = setCopy;
      v13 = &v14;
      [toSetCopy enumerateObjectsUsingBlock:v11];
      v8 = *(v15 + 24);

      _Block_object_dispose(&v14, 8);
      v9 = v8 ^ 1;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9 & 1;
}

void __54__MobileCalDAVPrincipal__userAddressSet_isEqualToSet___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__MobileCalDAVPrincipal__userAddressSet_isEqualToSet___block_invoke_2;
  v8[3] = &unk_278F17770;
  v7 = v5;
  v9 = v7;
  v10 = &v11;
  [v6 enumerateObjectsUsingBlock:v8];
  if ((v12[3] & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

  _Block_object_dispose(&v11, 8);
}

void __54__MobileCalDAVPrincipal__userAddressSet_isEqualToSet___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v9 = a2;
  v5 = [*(a1 + 32) address];
  v6 = [v9 address];
  if ([v5 da_isEqualToDAVURL:v6])
  {
    v7 = [*(a1 + 32) preferred];
    v8 = [v9 preferred];

    if (v7 == v8)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a3 = 1;
    }
  }

  else
  {
  }
}

- (void)setPreferredCalendarUserAddresses:(id)addresses
{
  addressesCopy = addresses;
  preferredCalendarUserAddresses = [(MobileCalDAVPrincipal *)self preferredCalendarUserAddresses];
  v6 = [(MobileCalDAVPrincipal *)self _userAddressSet:addressesCopy isEqualToSet:preferredCalendarUserAddresses];

  if (!v6)
  {
    [(MobileCalDAVPrincipal *)self setIsDirty:1];
    objc_storeStrong(&self->_preferredCalendarUserAddresses, addresses);
    [(MobileCalDAVPrincipal *)self setPreferredCalendarUserAddress:0];
    [(MobileCalDAVPrincipal *)self setPreferredCalendarEmailAddress:0];
    [(MobileCalDAVPrincipal *)self setPreferredCalendarPhoneNumber:0];
  }
}

- (id)calendarUserAddresses
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  preferredCalendarUserAddresses = [(MobileCalDAVPrincipal *)self preferredCalendarUserAddresses];
  v5 = [preferredCalendarUserAddresses countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(preferredCalendarUserAddresses);
        }

        address = [*(*(&v12 + 1) + 8 * i) address];
        [v3 addObject:address];
      }

      v6 = [preferredCalendarUserAddresses countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)setFullName:(id)name
{
  nameCopy = name;
  fullName = [(MobileCalDAVPrincipal *)self fullName];
  if (fullName != nameCopy)
  {
    fullName = [(MobileCalDAVPrincipal *)self fullName];
    v6 = [nameCopy isEqualToString:fullName];

    if (v6)
    {
      goto LABEL_5;
    }

    [(MobileCalDAVPrincipal *)self setIsDirty:1];
    v7 = nameCopy;
    fullName = self->_fullName;
    self->_fullName = v7;
  }

LABEL_5:
}

- (NSURL)calendarHomeURL
{
  account = [(MobileCalDAVPrincipal *)self account];
  v4 = [account addUsernameToURL:self->_calendarHomeURL];

  return v4;
}

- (void)setCalendarHomeURL:(id)l
{
  lCopy = l;
  account = [(MobileCalDAVPrincipal *)self account];
  v10 = [account addUsernameToURL:lCopy];

  calendarHomeURL = [(MobileCalDAVPrincipal *)self calendarHomeURL];
  if (v10 != calendarHomeURL)
  {
    calendarHomeURL = [(MobileCalDAVPrincipal *)self calendarHomeURL];
    v8 = [v10 da_isEqualToDAVURL:calendarHomeURL];

    if (v8)
    {
      goto LABEL_5;
    }

    [(MobileCalDAVPrincipal *)self setIsDirty:1];
    v9 = v10;
    calendarHomeURL = self->_calendarHomeURL;
    self->_calendarHomeURL = v9;
  }

LABEL_5:
}

- (NSString)calendarHomeSyncToken
{
  account = [(MobileCalDAVPrincipal *)self account];
  calendarHomeSyncToken = [account calendarHomeSyncToken];

  return calendarHomeSyncToken;
}

- (void)setCalendarHomeSyncToken:(id)token
{
  tokenCopy = token;
  calendarHomeSyncToken = [(MobileCalDAVPrincipal *)self calendarHomeSyncToken];
  if (calendarHomeSyncToken != tokenCopy && ([tokenCopy isEqualToString:calendarHomeSyncToken] & 1) == 0)
  {
    account = [(MobileCalDAVPrincipal *)self account];
    [account setCalendarHomeSyncToken:tokenCopy];

    [(MobileCalDAVPrincipal *)self setCalendarsAreDirty:1];
  }
}

- (NSDictionary)subCalPropertiesByURL
{
  account = [(MobileCalDAVPrincipal *)self account];
  calDAVSubscribedCalendarsKey = [MEMORY[0x277D03970] CalDAVSubscribedCalendarsKey];
  v4 = [account objectForKeyedSubscript:calDAVSubscribedCalendarsKey];

  return v4;
}

- (void)setPrincipalPath:(id)path
{
  obj = path;
  if ([obj length])
  {
    da_appendSlashIfNeeded = [obj da_appendSlashIfNeeded];

    v5 = da_appendSlashIfNeeded;
  }

  else
  {
    v5 = obj;
  }

  if (v5 != self->_principalPath)
  {
    obja = v5;
    principalPath = [(MobileCalDAVPrincipal *)self principalPath];
    v7 = [(NSString *)obja isEqualToString:principalPath];

    v5 = obja;
    if (!v7)
    {
      [(MobileCalDAVPrincipal *)self setIsDirty:1];
      objc_storeStrong(&self->_principalPath, obja);
      v5 = obja;
    }
  }
}

- (NSURL)principalURL
{
  account = [(MobileCalDAVPrincipal *)self account];
  principalURL = [account principalURL];
  principalPath = [(MobileCalDAVPrincipal *)self principalPath];
  v6 = [principalURL da_urlBySettingPath:principalPath];

  return v6;
}

- (void)setPrincipalURL:(id)l
{
  lCopy = l;
  if ([(MobileCalDAVPrincipal *)self isDelegate])
  {
    absoluteString = [lCopy absoluteString];
    v5 = [absoluteString hasPrefix:@"/"];

    if (v5)
    {
      absoluteString2 = [lCopy absoluteString];
      selfCopy2 = self;
      v8 = absoluteString2;
    }

    else
    {
      path = [lCopy path];
      absoluteString2 = path;
      if (path)
      {
        v8 = path;
      }

      else
      {
        v8 = @"/";
      }

      selfCopy2 = self;
    }

    [(MobileCalDAVPrincipal *)selfCopy2 setPrincipalPath:v8];
  }

  else
  {
    absoluteString2 = [(MobileCalDAVPrincipal *)self account];
    [(__CFString *)absoluteString2 setPrincipalURL:lCopy];
  }
}

- (NSURL)defaultCalendarURL
{
  account = [(MobileCalDAVPrincipal *)self account];
  v4 = [account addUsernameToURL:self->_defaultCalendarURL];

  return v4;
}

- (void)setDefaultCalendarURL:(id)l
{
  lCopy = l;
  account = [(MobileCalDAVPrincipal *)self account];
  v10 = [account addUsernameToURL:lCopy];

  defaultCalendarURL = [(MobileCalDAVPrincipal *)self defaultCalendarURL];
  if (v10 != defaultCalendarURL)
  {
    defaultCalendarURL = [(MobileCalDAVPrincipal *)self defaultCalendarURL];
    v8 = [v10 da_isEqualToDAVURL:defaultCalendarURL];

    if (v8)
    {
      goto LABEL_5;
    }

    [(MobileCalDAVPrincipal *)self setIsDirty:1];
    v9 = v10;
    defaultCalendarURL = self->_defaultCalendarURL;
    self->_defaultCalendarURL = v9;
  }

LABEL_5:
}

- (NSURL)notificationCollectionURL
{
  account = [(MobileCalDAVPrincipal *)self account];
  v4 = [account addUsernameToURL:self->_notificationCollectionURL];

  return v4;
}

- (void)setNotificationCollectionURL:(id)l
{
  lCopy = l;
  account = [(MobileCalDAVPrincipal *)self account];
  v10 = [account addUsernameToURL:lCopy];

  notificationCollectionURL = [(MobileCalDAVPrincipal *)self notificationCollectionURL];
  if (v10 != notificationCollectionURL)
  {
    notificationCollectionURL = [(MobileCalDAVPrincipal *)self notificationCollectionURL];
    v8 = [v10 da_isEqualToDAVURL:notificationCollectionURL];

    if (v8)
    {
      goto LABEL_5;
    }

    [(MobileCalDAVPrincipal *)self setIsDirty:1];
    v9 = v10;
    notificationCollectionURL = self->_notificationCollectionURL;
    self->_notificationCollectionURL = v9;
  }

LABEL_5:
}

- (void)setNotificationCollectionCTag:(id)tag
{
  tagCopy = tag;
  notificationCollectionCTag = [(MobileCalDAVPrincipal *)self notificationCollectionCTag];
  if (notificationCollectionCTag != tagCopy)
  {
    notificationCollectionCTag = [(MobileCalDAVPrincipal *)self notificationCollectionCTag];
    v6 = [tagCopy isEqualToString:notificationCollectionCTag];

    if (v6)
    {
      goto LABEL_5;
    }

    [(MobileCalDAVPrincipal *)self setIsDirty:1];
    v7 = tagCopy;
    notificationCollectionCTag = self->_notificationCollectionCTag;
    self->_notificationCollectionCTag = v7;
  }

LABEL_5:
}

- (NSURL)inboxURL
{
  account = [(MobileCalDAVPrincipal *)self account];
  v4 = [account addUsernameToURL:self->_inboxURL];

  return v4;
}

- (void)setInboxURL:(id)l
{
  lCopy = l;
  account = [(MobileCalDAVPrincipal *)self account];
  v10 = [account addUsernameToURL:lCopy];

  inboxURL = [(MobileCalDAVPrincipal *)self inboxURL];
  if (v10 != inboxURL)
  {
    inboxURL = [(MobileCalDAVPrincipal *)self inboxURL];
    v8 = [v10 da_isEqualToDAVURL:inboxURL];

    if (v8)
    {
      goto LABEL_5;
    }

    [(MobileCalDAVPrincipal *)self setIsDirty:1];
    v9 = v10;
    inboxURL = self->_inboxURL;
    self->_inboxURL = v9;
  }

LABEL_5:
}

- (void)setInboxCTag:(id)tag
{
  tagCopy = tag;
  inboxCTag = [(MobileCalDAVPrincipal *)self inboxCTag];
  if (inboxCTag != tagCopy)
  {
    inboxCTag = [(MobileCalDAVPrincipal *)self inboxCTag];
    v6 = [tagCopy isEqualToString:inboxCTag];

    if (v6)
    {
      goto LABEL_5;
    }

    [(MobileCalDAVPrincipal *)self setIsDirty:1];
    v7 = tagCopy;
    inboxCTag = self->_inboxCTag;
    self->_inboxCTag = v7;
  }

LABEL_5:
}

- (NSURL)outboxURL
{
  account = [(MobileCalDAVPrincipal *)self account];
  v4 = [account addUsernameToURL:self->_outboxURL];

  return v4;
}

- (void)setOutboxURL:(id)l
{
  lCopy = l;
  account = [(MobileCalDAVPrincipal *)self account];
  obj = [account addUsernameToURL:lCopy];

  outboxURL = [(MobileCalDAVPrincipal *)self outboxURL];
  if (obj == outboxURL)
  {
  }

  else
  {
    outboxURL2 = [(MobileCalDAVPrincipal *)self outboxURL];
    v8 = [obj da_isEqualToDAVURL:outboxURL2];

    if ((v8 & 1) == 0)
    {
      objc_storeStrong(&self->_outboxURL, obj);
      [(MobileCalDAVPrincipal *)self setIsDirty:1];
    }
  }
}

- (NSURL)dropBoxURL
{
  account = [(MobileCalDAVPrincipal *)self account];
  v4 = [account addUsernameToURL:self->_dropBoxURL];

  return v4;
}

- (void)setDropBoxURL:(id)l
{
  lCopy = l;
  account = [(MobileCalDAVPrincipal *)self account];
  v10 = [account addUsernameToURL:lCopy];

  dropBoxURL = [(MobileCalDAVPrincipal *)self dropBoxURL];
  if (v10 != dropBoxURL)
  {
    dropBoxURL = [(MobileCalDAVPrincipal *)self dropBoxURL];
    v8 = [v10 da_isEqualToDAVURL:dropBoxURL];

    if (v8)
    {
      goto LABEL_5;
    }

    [(MobileCalDAVPrincipal *)self setIsDirty:1];
    v9 = v10;
    dropBoxURL = self->_dropBoxURL;
    self->_dropBoxURL = v9;
  }

LABEL_5:
}

- (void)setNotificationURLString:(id)string
{
  stringCopy = string;
  notificationURLString = [(MobileCalDAVPrincipal *)self notificationURLString];
  if (notificationURLString == stringCopy)
  {
  }

  else
  {
    notificationURLString2 = [(MobileCalDAVPrincipal *)self notificationURLString];
    v7 = [stringCopy isEqualToString:notificationURLString2];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_notificationURLString, string);
      [(MobileCalDAVPrincipal *)self setShouldUpdatePushDelegate:1];
      [(MobileCalDAVPrincipal *)self setIsDirty:1];
    }
  }
}

- (void)setPushTransports:(id)transports
{
  transportsCopy = transports;
  pushTransports = [(MobileCalDAVPrincipal *)self pushTransports];
  if (pushTransports == transportsCopy)
  {
  }

  else
  {
    pushTransports2 = [(MobileCalDAVPrincipal *)self pushTransports];
    v7 = [transportsCopy isEqual:pushTransports2];

    if ((v7 & 1) == 0)
    {
      [(MobileCalDAVPrincipal *)self setIsDirty:1];
      objc_storeStrong(&self->_pushTransports, transports);
      [(MobileCalDAVPrincipal *)self setShouldUpdatePushDelegate:1];
    }
  }
}

- (void)setCalendarHomePushKey:(id)key
{
  keyCopy = key;
  calendarHomePushKey = [(MobileCalDAVPrincipal *)self calendarHomePushKey];
  if (calendarHomePushKey != keyCopy)
  {
    calendarHomePushKey = [(MobileCalDAVPrincipal *)self calendarHomePushKey];
    v6 = [keyCopy isEqualToString:calendarHomePushKey];

    if (v6)
    {
      goto LABEL_5;
    }

    [(MobileCalDAVPrincipal *)self setIsDirty:1];
    v7 = keyCopy;
    calendarHomePushKey = self->_calendarHomePushKey;
    self->_calendarHomePushKey = v7;
  }

LABEL_5:
}

- (void)setDefaultTimedAlarms:(id)alarms
{
  alarmsCopy = alarms;
  defaultTimedAlarms = [(MobileCalDAVPrincipal *)self defaultTimedAlarms];
  if (defaultTimedAlarms != alarmsCopy)
  {
    defaultTimedAlarms = [(MobileCalDAVPrincipal *)self defaultTimedAlarms];
    v6 = [alarmsCopy isEqualToString:defaultTimedAlarms];

    if (v6)
    {
      goto LABEL_5;
    }

    [(MobileCalDAVPrincipal *)self setIsDirty:1];
    [(MobileCalDAVPrincipal *)self setAlarmsDirty:1];
    v7 = alarmsCopy;
    defaultTimedAlarms = self->_defaultTimedAlarms;
    self->_defaultTimedAlarms = v7;
  }

LABEL_5:
}

- (void)setDefaultAllDayAlarms:(id)alarms
{
  alarmsCopy = alarms;
  defaultAllDayAlarms = [(MobileCalDAVPrincipal *)self defaultAllDayAlarms];
  if (defaultAllDayAlarms != alarmsCopy)
  {
    defaultAllDayAlarms = [(MobileCalDAVPrincipal *)self defaultAllDayAlarms];
    v6 = [alarmsCopy isEqualToString:defaultAllDayAlarms];

    if (v6)
    {
      goto LABEL_5;
    }

    [(MobileCalDAVPrincipal *)self setIsDirty:1];
    [(MobileCalDAVPrincipal *)self setAlarmsDirty:1];
    v7 = alarmsCopy;
    defaultAllDayAlarms = self->_defaultAllDayAlarms;
    self->_defaultAllDayAlarms = v7;
  }

LABEL_5:
}

- (void)setQuotaFreeBytes:(id)bytes
{
  bytesCopy = bytes;
  quotaFreeBytes = [(MobileCalDAVPrincipal *)self quotaFreeBytes];
  if (quotaFreeBytes != bytesCopy)
  {
    quotaFreeBytes = [(MobileCalDAVPrincipal *)self quotaFreeBytes];
    v6 = [bytesCopy isEqual:quotaFreeBytes];

    if (v6)
    {
      goto LABEL_5;
    }

    v7 = bytesCopy;
    quotaFreeBytes = self->_quotaFreeBytes;
    self->_quotaFreeBytes = v7;
  }

LABEL_5:
}

- (void)setSupportedCalendarComponentSets:(id)sets
{
  setsCopy = sets;
  supportedCalendarComponentSets = [(MobileCalDAVPrincipal *)self supportedCalendarComponentSets];
  if (supportedCalendarComponentSets != setsCopy)
  {
    supportedCalendarComponentSets = [(MobileCalDAVPrincipal *)self supportedCalendarComponentSets];
    v6 = [supportedCalendarComponentSets isEqualToString:setsCopy];

    if (v6)
    {
      goto LABEL_5;
    }

    [(MobileCalDAVPrincipal *)self setIsDirty:1];
    v7 = setsCopy;
    supportedCalendarComponentSets = self->_supportedCalendarComponentSets;
    self->_supportedCalendarComponentSets = v7;
  }

LABEL_5:
}

- (void)setIsDelegate:(BOOL)delegate
{
  if ([(MobileCalDAVPrincipal *)self isDelegate]!= delegate)
  {
    [(MobileCalDAVPrincipal *)self setIsDirty:1];
    self->_isDelegate = delegate;
  }
}

- (void)setIsWritable:(BOOL)writable
{
  if ([(MobileCalDAVPrincipal *)self isWritable]!= writable)
  {
    [(MobileCalDAVPrincipal *)self setIsDirty:1];
    self->_isWritable = writable;
  }
}

- (void)setIsEnabled:(BOOL)enabled
{
  if ([(MobileCalDAVPrincipal *)self isEnabled]!= enabled)
  {
    [(MobileCalDAVPrincipal *)self setIsDirty:1];
    self->_isEnabled = enabled;
  }
}

- (void)setCanCreateCalendars:(BOOL)calendars
{
  if ([(MobileCalDAVPrincipal *)self canCreateCalendars]!= calendars)
  {
    [(MobileCalDAVPrincipal *)self setIsDirty:1];
    self->_canCreateCalendars = calendars;
  }
}

- (BOOL)isMergeSync
{
  account = [(MobileCalDAVPrincipal *)self account];
  wasMigrated = [account wasMigrated];

  return wasMigrated;
}

- (BOOL)isEnabledForEvents
{
  account = [(MobileCalDAVPrincipal *)self account];
  backingAccount = [account backingAccount];
  if ([backingAccount isEnabledForDataclass:*MEMORY[0x277CB90F0]])
  {
    account2 = [(MobileCalDAVPrincipal *)self account];
    supportsEvents = [account2 supportsEvents];
  }

  else
  {
    supportsEvents = 0;
  }

  return supportsEvents;
}

- (BOOL)isEnabledForTodos
{
  if (!CalShouldSyncReminders())
  {
    return 0;
  }

  account = [(MobileCalDAVPrincipal *)self account];
  backingAccount = [account backingAccount];
  if ([backingAccount isEnabledForDataclass:*MEMORY[0x277CB9190]])
  {
    account2 = [(MobileCalDAVPrincipal *)self account];
    supportsReminders = [account2 supportsReminders];
  }

  else
  {
    supportsReminders = 0;
  }

  return supportsReminders;
}

- (BOOL)supportsExtendedCalendarQuery
{
  account = [(MobileCalDAVPrincipal *)self account];
  serverVersion = [account serverVersion];
  supportsExtendedCalendarQuery = [serverVersion supportsExtendedCalendarQuery];

  return supportsExtendedCalendarQuery;
}

- (id)_eventSyncEndDate
{
  v2 = objc_alloc(MEMORY[0x277CBEA80]);
  v3 = [v2 initWithCalendarIdentifier:*MEMORY[0x277CBE650]];
  v4 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"UTC"];
  [v3 setTimeZone:v4];

  v5 = MEMORY[0x277CBEAA8];
  date = [MEMORY[0x277CBEAA8] date];
  v7 = [v5 dateWithTimeInterval:date sinceDate:63072000.0];

  v8 = [v3 components:28 fromDate:v7];

  return v8;
}

- (id)_startDateFromDaysToSync:(int)sync
{
  v4 = objc_alloc(MEMORY[0x277CBEA80]);
  v5 = [v4 initWithCalendarIdentifier:*MEMORY[0x277CBE650]];
  v6 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"UTC"];
  [v5 setTimeZone:v6];

  v7 = objc_opt_new();
  [v7 setDay:-sync];
  date = [MEMORY[0x277CBEAA8] date];
  v9 = [v5 dateByAddingComponents:v7 toDate:date options:0];

  v10 = [v5 components:28 fromDate:v9];

  return v10;
}

- (NSDateComponents)eventFilterStartDate
{
  account = [(MobileCalDAVPrincipal *)self account];
  shouldFilterEventSyncTimeRange = [account shouldFilterEventSyncTimeRange];

  if (shouldFilterEventSyncTimeRange)
  {
    account2 = [(MobileCalDAVPrincipal *)self account];
    v6 = -[MobileCalDAVPrincipal _startDateFromDaysToSync:](self, "_startDateFromDaysToSync:", [account2 preferredEventDaysToSync]);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSDateComponents)eventFilterEndDate
{
  account = [(MobileCalDAVPrincipal *)self account];
  if ([account shouldFilterEventSyncTimeRange])
  {
    account2 = [(MobileCalDAVPrincipal *)self account];
    serverVersion = [account2 serverVersion];
    supportsTimeRangeFilterWithoutEndDate = [serverVersion supportsTimeRangeFilterWithoutEndDate];

    if ((supportsTimeRangeFilterWithoutEndDate & 1) == 0)
    {
      _eventSyncEndDate = [(MobileCalDAVPrincipal *)self _eventSyncEndDate];
      goto LABEL_6;
    }
  }

  else
  {
  }

  _eventSyncEndDate = 0;
LABEL_6:

  return _eventSyncEndDate;
}

- (void)setIsExpandPropertyReportSupported:(BOOL)supported
{
  if ([(MobileCalDAVPrincipal *)self isExpandPropertyReportSupported]!= supported)
  {
    [(MobileCalDAVPrincipal *)self setIsDirty:1];
    self->_isExpandPropertyReportSupported = supported;
  }
}

- (void)setSupportsCalendarUserSearch:(BOOL)search
{
  if ([(MobileCalDAVPrincipal *)self supportsCalendarUserSearch]!= search)
  {
    [(MobileCalDAVPrincipal *)self setIsDirty:1];
    self->_supportsCalendarUserSearch = search;
  }
}

- (void)setSupportsFreebusy:(BOOL)freebusy
{
  if ([(MobileCalDAVPrincipal *)self supportsFreebusy]!= freebusy)
  {
    [(MobileCalDAVPrincipal *)self setIsDirty:1];
    self->_supportsFreebusy = freebusy;
  }
}

- (void)setSupportsSyncToken:(BOOL)token
{
  if ([(MobileCalDAVPrincipal *)self supportsSyncToken]!= token)
  {
    [(MobileCalDAVPrincipal *)self setIsDirty:1];
    self->_supportsSyncToken = token;
  }
}

- (CalDAVRefreshContext)refreshContext
{
  account = [(MobileCalDAVPrincipal *)self account];
  refreshContext = [account refreshContext];

  return refreshContext;
}

- (NSSet)calendars
{
  account = [(MobileCalDAVPrincipal *)self account];
  calendars = [account calendars];

  return calendars;
}

+ (id)alarmICSStringFromOffset:(int64_t)offset
{
  if (offset == 0x7FFFFFFFFFFFFFFFLL)
  {
    createNoneAlarm = [MEMORY[0x277D7F0B0] createNoneAlarm];
    [createNoneAlarm setX_apple_default_alarm:1];
  }

  else
  {
    createNoneAlarm = objc_opt_new();
    v5 = [objc_alloc(MEMORY[0x277D7F110]) initWithWeeks:0 days:0 hours:0 minutes:0 seconds:offset];
    v6 = [objc_alloc(MEMORY[0x277D7F150]) initWithDuration:v5];
    [createNoneAlarm setTrigger:v6];
    [createNoneAlarm setAction:{objc_msgSend(MEMORY[0x277D7F0B0], "actionFromICSString:", @"AUDIO"}];
    makeUID = [MEMORY[0x277D7F0E0] makeUID];
    [createNoneAlarm setUid:makeUID];
  }

  v8 = [createNoneAlarm ICSStringWithOptions:0];

  return v8;
}

- (void)updatePropertiesFromCalStore:(void *)store
{
  DefaultAlarmOffsetNSInteger = CalStoreGetDefaultAlarmOffsetNSInteger();
  if (DefaultAlarmOffsetNSInteger == 0x7FFFFFFFFFFFFFFFLL)
  {
    createNoneAlarm = [MEMORY[0x277D7F0B0] createNoneAlarm];
    v6 = [createNoneAlarm ICSStringWithOptions:0];
    defaultTimedAlarms = self->_defaultTimedAlarms;
    self->_defaultTimedAlarms = v6;

    CalStoreGetDefaultAllDayAlarmOffsetNSInteger();
    v8 = [objc_msgSend(MEMORY[0x277D7F0B0] "createNoneAlarm")];
    defaultAllDayAlarms = self->_defaultAllDayAlarms;
    self->_defaultAllDayAlarms = v8;
  }

  else
  {
    v10 = [objc_opt_class() alarmICSStringFromOffset:DefaultAlarmOffsetNSInteger];
    v11 = self->_defaultTimedAlarms;
    self->_defaultTimedAlarms = v10;

    DefaultAllDayAlarmOffsetNSInteger = CalStoreGetDefaultAllDayAlarmOffsetNSInteger();
    v13 = [objc_opt_class() alarmICSStringFromOffset:DefaultAllDayAlarmOffsetNSInteger];
    v14 = self->_defaultAllDayAlarms;
    self->_defaultAllDayAlarms = v13;
  }

  MEMORY[0x2821F96F8]();
}

- (void)prepareCalendarsForSyncWithCompletionBlock:(id)block
{
  v53 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  account = [(MobileCalDAVPrincipal *)self account];
  [account reloadCalendars];

  deletedCalendarURLs = [(MobileCalDAVPrincipal *)self deletedCalendarURLs];

  if (!deletedCalendarURLs)
  {
    v6 = objc_opt_new();
    [(MobileCalDAVPrincipal *)self setDeletedCalendarURLs:v6];
  }

  deletedCalendarURLs2 = [(MobileCalDAVPrincipal *)self deletedCalendarURLs];
  [deletedCalendarURLs2 removeAllObjects];

  calendars = [(MobileCalDAVPrincipal *)self calendars];
  v9 = objc_opt_new();
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v10 = calendars;
  v11 = [v10 countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v48;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v48 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v47 + 1) + 8 * i);
        guid = [v15 guid];
        [v9 setObject:v15 forKeyedSubscript:guid];
      }

      v12 = [v10 countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v12);
  }

  v45 = 0;
  v46 = 0;
  v44 = 0;
  refreshContext = [(MobileCalDAVPrincipal *)self refreshContext];
  changeTracker = [refreshContext changeTracker];
  v19 = [MobileCalDAVCalendar gatherCalendarChangesInPrincipal:self calendars:v9 adds:&v46 modifies:&v45 deletes:&v44 changeTracker:changeTracker];
  v20 = v46;
  v21 = v45;
  v22 = v44;

  [(MobileCalDAVPrincipal *)self updateAddedOrModifiedSubscribedCalendars:v20];
  [(MobileCalDAVPrincipal *)self updateAddedOrModifiedSubscribedCalendars:v21];
  calendarChangesToClear = [(MobileCalDAVPrincipal *)self calendarChangesToClear];

  if (calendarChangesToClear)
  {
    if (v19)
    {
      calendarChangesToClear2 = [(MobileCalDAVPrincipal *)self calendarChangesToClear];

      Count = CFArrayGetCount(calendarChangesToClear2);
      v26 = CFArrayGetCount(v19);
      Mutable = CFArrayCreateMutable(0, v26 + Count, 0);
      v54.length = CFArrayGetCount(calendarChangesToClear2);
      v54.location = 0;
      CFArrayAppendArray(Mutable, calendarChangesToClear2, v54);
      v55.length = CFArrayGetCount(v19);
      v55.location = 0;
      CFArrayAppendArray(Mutable, v19, v55);
      [(MobileCalDAVPrincipal *)self setCalendarChangesToClear:Mutable];
    }
  }

  else
  {
    [(MobileCalDAVPrincipal *)self setCalendarChangesToClear:v19];
  }

  [(MobileCalDAVPrincipal *)self setAddedCalendars:v20, v20];
  [(MobileCalDAVPrincipal *)self setModifiedCalendars:v21];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v28 = v22;
  v29 = [v28 countByEnumeratingWithState:&v40 objects:v51 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v41;
    do
    {
      for (j = 0; j != v30; ++j)
      {
        if (*v41 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v40 + 1) + 8 * j);
        calendarHomeURL = [(MobileCalDAVPrincipal *)self calendarHomeURL];
        v35 = [v33 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:calendarHomeURL];

        if (v35)
        {
          deletedCalendarURLs3 = [(MobileCalDAVPrincipal *)self deletedCalendarURLs];
          [deletedCalendarURLs3 addObject:v35];
        }
      }

      v30 = [v28 countByEnumeratingWithState:&v40 objects:v51 count:16];
    }

    while (v30);
  }

  blockCopy[2](blockCopy, self);
  v37 = *MEMORY[0x277D85DE8];
}

- (void)updateAddedOrModifiedSubscribedCalendars:(id)calendars
{
  v15 = *MEMORY[0x277D85DE8];
  calendarsCopy = calendars;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [calendarsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(calendarsCopy);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v8 updatePropertiesFromCalCalendar];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [calendarsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)clearCalendarChanges
{
  calendarChangesToClear = [(MobileCalDAVPrincipal *)self calendarChangesToClear];

  if (calendarChangesToClear)
  {
    calendarChangesToClear2 = [(MobileCalDAVPrincipal *)self calendarChangesToClear];
    account = [(MobileCalDAVPrincipal *)self account];
    changeTrackingID = [account changeTrackingID];
    v7 = [MobileCalDAVCalendar clearCalendarChanges:calendarChangesToClear2 forPrincipal:self changeTrackingClient:changeTrackingID];

    if (v7)
    {
      [(MobileCalDAVPrincipal *)self setCalendarChangesToClear:0];
    }

    [(MobileCalDAVPrincipal *)self setAddedCalendars:0];
    [(MobileCalDAVPrincipal *)self setModifiedCalendars:0];
    deletedCalendarURLs = [(MobileCalDAVPrincipal *)self deletedCalendarURLs];
    [deletedCalendarURLs removeAllObjects];
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (id)calendarOfType:(int)type atURL:(id)l withOptions:(id)options
{
  v20 = *MEMORY[0x277D85DE8];
  lCopy = l;
  optionsCopy = options;
  if (!lCopy)
  {
    [MobileCalDAVPrincipal calendarOfType:a2 atURL:self withOptions:?];
  }

  v11 = 0;
  if (type <= 2)
  {
    if (type)
    {
      if (type != 1)
      {
        if (type == 2)
        {
          goto LABEL_21;
        }

LABEL_11:
        v12 = DALoggingwithCategory();
        v13 = *(MEMORY[0x277D03988] + 4);
        if (os_log_type_enabled(v12, v13))
        {
          v19[0] = 67109120;
          v19[1] = type;
          _os_log_impl(&dword_2484B2000, v12, v13, "Asked to create a calendar of a type we don't know about: %d", v19, 8u);
        }

        v11 = 0;
        goto LABEL_21;
      }

      v14 = MobileCalDAVInboxCalendar;
    }

    else
    {
      v14 = MobileCalDAVCalendar;
    }

    goto LABEL_17;
  }

  if (type == 3)
  {
    v14 = MobileCalDAVNotificationCalendar;
LABEL_17:
    v15 = [[v14 alloc] initWithCalendarURL:lCopy principal:self];
    goto LABEL_19;
  }

  if (type != 4)
  {
    if (type == 5)
    {
      goto LABEL_21;
    }

    goto LABEL_11;
  }

  v15 = [[MobileCalDAVSubscribedCalendar alloc] initWithCalendarURL:lCopy calendar:0 properties:0 principal:self];
LABEL_19:
  v11 = v15;
  if (v15)
  {
    account = [(MobileCalDAVPrincipal *)self account];
    [account addCalendar:v11];

    [(MobileCalDAVPrincipal *)self setCalendarsAreDirty:1];
  }

LABEL_21:

  v17 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)removeCalendar:(id)calendar
{
  calendarCopy = calendar;
  [(MobileCalDAVPrincipal *)self setCalendarsAreDirty:1];
  account = [(MobileCalDAVPrincipal *)self account];
  [account removeCalendar:calendarCopy];
}

- (void)removecalendarWithURL:(id)l
{
  lCopy = l;
  [(MobileCalDAVPrincipal *)self setCalendarsAreDirty:1];
  account = [(MobileCalDAVPrincipal *)self account];
  [account removeCalendarWithURL:lCopy];
}

- (NSDictionary)calendarUserAddressesPerCalendar
{
  v2 = [(NSMutableDictionary *)self->_calendarUserAddressesPerCalendar copy];

  return v2;
}

- (id)preferredCalendarUserAddressesForCalendar:(id)calendar
{
  calendarUserAddressesPerCalendar = self->_calendarUserAddressesPerCalendar;
  guid = [calendar guid];
  v5 = [(NSMutableDictionary *)calendarUserAddressesPerCalendar objectForKeyedSubscript:guid];

  return v5;
}

- (void)removePreferredCalendarUserAddressesForCalendarWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [(NSMutableDictionary *)self->_calendarUserAddressesPerCalendar objectForKey:?];

  if (v4)
  {
    [(NSMutableDictionary *)self->_calendarUserAddressesPerCalendar removeObjectForKey:identifierCopy];
    [(MobileCalDAVPrincipal *)self setIsDirty:1];
  }
}

- (void)setPreferredCalendarUserAddresses:(id)addresses forCalendar:(id)calendar
{
  addressesCopy = addresses;
  calendarCopy = calendar;
  calendarUserAddressesPerCalendar = [(MobileCalDAVPrincipal *)self calendarUserAddressesPerCalendar];
  guid = [calendarCopy guid];
  v9 = [calendarUserAddressesPerCalendar objectForKeyedSubscript:guid];

  if (![(MobileCalDAVPrincipal *)self _userAddressSet:v9 isEqualToSet:addressesCopy])
  {
    [(MobileCalDAVPrincipal *)self setIsDirty:1];
    calendarUserAddressesPerCalendar = self->_calendarUserAddressesPerCalendar;
    guid2 = [calendarCopy guid];
    [(NSMutableDictionary *)calendarUserAddressesPerCalendar setObject:addressesCopy forKeyedSubscript:guid2];
  }
}

- (void)setSupportsPush:(BOOL)push
{
  if ([(MobileCalDAVPrincipal *)self supportsPush]!= push)
  {
    self->_supportsPush = push;

    [(MobileCalDAVPrincipal *)self setIsDirty:1];
  }
}

- (BOOL)calendarsAreDirty
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_calendarsAreDirty)
  {
    LOBYTE(v2) = 1;
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    calendars = [(MobileCalDAVPrincipal *)self calendars];
    v2 = [calendars countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v2)
    {
      v4 = *v9;
      while (2)
      {
        for (i = 0; i != v2; ++i)
        {
          if (*v9 != v4)
          {
            objc_enumerationMutation(calendars);
          }

          if ([*(*(&v8 + 1) + 8 * i) isDirty])
          {
            LOBYTE(v2) = 1;
            goto LABEL_13;
          }
        }

        v2 = [calendars countByEnumeratingWithState:&v8 objects:v12 count:16];
        if (v2)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  v6 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)setIsDirty:(BOOL)dirty
{
  v10 = *MEMORY[0x277D85DE8];
  if (dirty)
  {
    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v5, v6))
    {
      v8 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_2484B2000, v5, v6, "Marking principal as dirty: %@", &v8, 0xCu);
    }
  }

  self->_isDirty = dirty;
  v7 = *MEMORY[0x277D85DE8];
}

- (NSString)APSTopic
{
  pushTransports = [(MobileCalDAVPrincipal *)self pushTransports];
  v3 = [pushTransports objectForKeyedSubscript:@"APSD"];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CFDDF8]];

  return v4;
}

- (NSURL)APSSubscriptionURL
{
  pushTransports = [(MobileCalDAVPrincipal *)self pushTransports];
  v4 = [pushTransports objectForKeyedSubscript:@"APSD"];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CFDE80]];

  if (v5)
  {
    account = [(MobileCalDAVPrincipal *)self account];
    v7 = [MEMORY[0x277CBEBC0] URLWithString:v5];
    v8 = [account addUsernameToURL:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSString)APSEnv
{
  pushTransports = [(MobileCalDAVPrincipal *)self pushTransports];
  v3 = [pushTransports objectForKeyedSubscript:@"APSD"];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CFDF60]];

  uppercaseString = [v4 uppercaseString];
  if ([uppercaseString isEqualToString:@"PRODUCTION"])
  {
    v6 = @"production";
LABEL_6:

    v4 = v6;
    goto LABEL_7;
  }

  if ([uppercaseString isEqualToString:@"SANDBOX"] & 1) != 0 || (objc_msgSend(uppercaseString, "isEqualToString:", @"DEVELOPMENT"))
  {
    v6 = @"development";
    goto LABEL_6;
  }

  if ([uppercaseString isEqualToString:@"DEV"])
  {
    v6 = @"demo";
    goto LABEL_6;
  }

LABEL_7:

  return v4;
}

- (NSURL)preferredCalendarUserAddress
{
  preferredCalendarUserAddress = self->_preferredCalendarUserAddress;
  if (!preferredCalendarUserAddress)
  {
    v4 = MEMORY[0x277CBEBC0];
    v5 = MEMORY[0x277CF6FF8];
    preferredCalendarUserAddresses = [(MobileCalDAVPrincipal *)self preferredCalendarUserAddresses];
    v7 = [v5 preferredAddress:preferredCalendarUserAddresses];
    v8 = [v4 URLWithString:v7];
    v9 = self->_preferredCalendarUserAddress;
    self->_preferredCalendarUserAddress = v8;

    preferredCalendarUserAddress = self->_preferredCalendarUserAddress;
    if (!preferredCalendarUserAddress)
    {
      account = [(MobileCalDAVPrincipal *)self account];
      principalURL = [account principalURL];
      v12 = self->_preferredCalendarUserAddress;
      self->_preferredCalendarUserAddress = principalURL;

      preferredCalendarUserAddress = self->_preferredCalendarUserAddress;
    }
  }

  return preferredCalendarUserAddress;
}

- (NSString)preferredCalendarEmailAddress
{
  v25 = *MEMORY[0x277D85DE8];
  if (!self->_preferredCalendarEmailAddress)
  {
    preferredCalendarUserAddress = [(MobileCalDAVPrincipal *)self preferredCalendarUserAddress];
    scheme = [preferredCalendarUserAddress scheme];
    v5 = [scheme hasPrefix:@"mailto"];

    if (v5)
    {
      preferredCalendarUserAddress2 = [(MobileCalDAVPrincipal *)self preferredCalendarUserAddress];
      calendarUserAddresses = preferredCalendarUserAddress2;
LABEL_14:
      resourceSpecifier = [preferredCalendarUserAddress2 resourceSpecifier];
      preferredCalendarEmailAddress = self->_preferredCalendarEmailAddress;
      self->_preferredCalendarEmailAddress = resourceSpecifier;
    }

    else
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      calendarUserAddresses = [(MobileCalDAVPrincipal *)self calendarUserAddresses];
      v8 = [calendarUserAddresses countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v21;
        while (2)
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v21 != v10)
            {
              objc_enumerationMutation(calendarUserAddresses);
            }

            v12 = *(*(&v20 + 1) + 8 * i);
            scheme2 = [v12 scheme];
            v14 = [scheme2 hasPrefix:@"mailto"];

            if (v14)
            {
              preferredCalendarUserAddress2 = v12;
              goto LABEL_14;
            }
          }

          v9 = [calendarUserAddresses countByEnumeratingWithState:&v20 objects:v24 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }
    }
  }

  v17 = self->_preferredCalendarEmailAddress;
  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (NSString)preferredCalendarPhoneNumber
{
  v25 = *MEMORY[0x277D85DE8];
  if (!self->_preferredCalendarPhoneNumber)
  {
    preferredCalendarUserAddress = [(MobileCalDAVPrincipal *)self preferredCalendarUserAddress];
    scheme = [preferredCalendarUserAddress scheme];
    v5 = [scheme hasPrefix:@"tel"];

    if (v5)
    {
      preferredCalendarUserAddress2 = [(MobileCalDAVPrincipal *)self preferredCalendarUserAddress];
      calendarUserAddresses = preferredCalendarUserAddress2;
LABEL_14:
      resourceSpecifier = [preferredCalendarUserAddress2 resourceSpecifier];
      preferredCalendarPhoneNumber = self->_preferredCalendarPhoneNumber;
      self->_preferredCalendarPhoneNumber = resourceSpecifier;
    }

    else
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      calendarUserAddresses = [(MobileCalDAVPrincipal *)self calendarUserAddresses];
      v8 = [calendarUserAddresses countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v21;
        while (2)
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v21 != v10)
            {
              objc_enumerationMutation(calendarUserAddresses);
            }

            v12 = *(*(&v20 + 1) + 8 * i);
            scheme2 = [v12 scheme];
            v14 = [scheme2 hasPrefix:@"tel"];

            if (v14)
            {
              preferredCalendarUserAddress2 = v12;
              goto LABEL_14;
            }
          }

          v9 = [calendarUserAddresses countByEnumeratingWithState:&v20 objects:v24 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }
    }
  }

  v17 = self->_preferredCalendarPhoneNumber;
  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (BOOL)hasCalendarUserAddress:(id)address
{
  v22 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  calendarUserAddresses = [(MobileCalDAVPrincipal *)self calendarUserAddresses];
  v6 = [calendarUserAddresses countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = *v18;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(calendarUserAddresses);
        }

        absoluteString = [*(*(&v17 + 1) + 8 * i) absoluteString];
        da_removeSlashIfNeeded = [absoluteString da_removeSlashIfNeeded];
        lowercaseString = [da_removeSlashIfNeeded lowercaseString];

        absoluteString2 = [addressCopy absoluteString];
        da_removeSlashIfNeeded2 = [absoluteString2 da_removeSlashIfNeeded];
        lowercaseString2 = [da_removeSlashIfNeeded2 lowercaseString];

        LOBYTE(absoluteString2) = [lowercaseString isEqualToString:lowercaseString2];
        if (absoluteString2)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [calendarUserAddresses countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v15 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)calendarUserAddressIsEquivalentToURL:(id)l
{
  v18 = *MEMORY[0x277D85DE8];
  lCopy = l;
  if (lCopy)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    calendarUserAddresses = [(MobileCalDAVPrincipal *)self calendarUserAddresses];
    v6 = [calendarUserAddresses countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(calendarUserAddresses);
          }

          absoluteString = [*(*(&v13 + 1) + 8 * i) absoluteString];
          v10 = [MobileCalDAVPrincipal compareAddressURL:lCopy localString:absoluteString];

          if (v10)
          {
            LOBYTE(v6) = 1;
            goto LABEL_12;
          }
        }

        v6 = [calendarUserAddresses countByEnumeratingWithState:&v13 objects:v17 count:16];
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

  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

- (CoreDAVTaskManager)taskManager
{
  account = [(MobileCalDAVPrincipal *)self account];
  taskManager = [account taskManager];

  return taskManager;
}

- (BOOL)useSSL
{
  account = [(MobileCalDAVPrincipal *)self account];
  backingAccount = [account backingAccount];
  useSSL = [backingAccount useSSL];

  return useSSL;
}

- (id)scheme
{
  account = [(MobileCalDAVPrincipal *)self account];
  backingAccount = [account backingAccount];
  scheme = [backingAccount scheme];

  return scheme;
}

- (id)host
{
  account = [(MobileCalDAVPrincipal *)self account];
  backingAccount = [account backingAccount];
  host = [backingAccount host];

  return host;
}

- (int64_t)port
{
  account = [(MobileCalDAVPrincipal *)self account];
  backingAccount = [account backingAccount];
  port = [backingAccount port];

  return port;
}

- (void)noteHomeSetOnDifferentHost:(id)host
{
  hostCopy = host;
  account = [(MobileCalDAVPrincipal *)self account];
  [account noteHomeSetOnDifferentHost:hostCopy];
}

- (id)user
{
  account = [(MobileCalDAVPrincipal *)self account];
  backingAccount = [account backingAccount];
  user = [backingAccount user];

  return user;
}

- (id)password
{
  account = [(MobileCalDAVPrincipal *)self account];
  backingAccount = [account backingAccount];
  password = [backingAccount password];

  return password;
}

- (id)identityPersist
{
  account = [(MobileCalDAVPrincipal *)self account];
  backingAccount = [account backingAccount];
  identityPersist = [backingAccount identityPersist];

  return identityPersist;
}

- (id)accountID
{
  account = [(MobileCalDAVPrincipal *)self account];
  accountID = [account accountID];

  return accountID;
}

- (id)additionalHeaderValues
{
  account = [(MobileCalDAVPrincipal *)self account];
  backingAccount = [account backingAccount];
  additionalHeaderValues = [backingAccount additionalHeaderValues];

  return additionalHeaderValues;
}

- (id)customConnectionProperties
{
  account = [(MobileCalDAVPrincipal *)self account];
  backingAccount = [account backingAccount];
  customConnectionProperties = [backingAccount customConnectionProperties];

  return customConnectionProperties;
}

- (id)oauth2Token
{
  account = [(MobileCalDAVPrincipal *)self account];
  backingAccount = [account backingAccount];
  oauth2Token = [backingAccount oauth2Token];

  return oauth2Token;
}

- (void)promptUserForNewCoreDAVPasswordWithCompletionBlock:(id)block
{
  blockCopy = block;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __76__MobileCalDAVPrincipal_promptUserForNewCoreDAVPasswordWithCompletionBlock___block_invoke;
  v13[3] = &unk_278F17500;
  v14 = blockCopy;
  v5 = blockCopy;
  v6 = MEMORY[0x24C1D0520](v13);
  account = [(MobileCalDAVPrincipal *)self account];
  backingAccount = [account backingAccount];
  isValidating = [backingAccount isValidating];

  if (isValidating)
  {
    v6[2](v6, 2, 0);
  }

  else
  {
    account2 = [(MobileCalDAVPrincipal *)self account];
    backingAccount2 = [account2 backingAccount];
    v12 = dataaccess_get_global_queue();
    [backingAccount2 dropAssertionsAndRenewCredentialsInQueue:v12 withHandler:v6];
  }
}

void __76__MobileCalDAVPrincipal_promptUserForNewCoreDAVPasswordWithCompletionBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  (*(*(a1 + 32) + 16))();
}

- (id)clientToken
{
  account = [(MobileCalDAVPrincipal *)self account];
  backingAccount = [account backingAccount];
  clientToken = [backingAccount clientToken];

  return clientToken;
}

- (void)clientTokenRequestedByServer
{
  account = [(MobileCalDAVPrincipal *)self account];
  backingAccount = [account backingAccount];
  [backingAccount clientTokenRequestedByServer];
}

- (void)webLoginRequestedAtURL:(id)l reasonString:(id)string inQueue:(id)queue completionBlock:(id)block
{
  blockCopy = block;
  queueCopy = queue;
  stringCopy = string;
  lCopy = l;
  account = [(MobileCalDAVPrincipal *)self account];
  backingAccount = [account backingAccount];
  [backingAccount webLoginRequestedAtURL:lCopy reasonString:stringCopy inQueue:queueCopy completionBlock:blockCopy];
}

- (BOOL)handleTrustChallenge:(id)challenge completionHandler:(id)handler
{
  challengeCopy = challenge;
  handlerCopy = handler;
  account = [(MobileCalDAVPrincipal *)self account];
  v9 = account;
  if (account)
  {
    backingAccount = [account backingAccount];
    [backingAccount handleTrustChallenge:challengeCopy completionHandler:handlerCopy];
  }

  else
  {
    v11 = DALoggingwithCategory();
    v12 = *(MEMORY[0x277D03988] + 5);
    if (os_log_type_enabled(v11, v12))
    {
      *v14 = 0;
      _os_log_impl(&dword_2484B2000, v11, v12, "Asked to handle a trust challenge, but the account is gone. No point in continuing without an account, so we'll cancel.", v14, 2u);
    }

    (*(handlerCopy + 2))(handlerCopy, 2, 0);
  }

  return 0;
}

- (BOOL)shouldFailAllTasks
{
  account = [(MobileCalDAVPrincipal *)self account];
  shouldFailAllTasks = [account shouldFailAllTasks];

  return shouldFailAllTasks;
}

- (__CFURLStorageSession)copyStorageSession
{
  account = [(MobileCalDAVPrincipal *)self account];
  backingAccount = [account backingAccount];
  copyStorageSession = [backingAccount copyStorageSession];

  return copyStorageSession;
}

- (BOOL)shouldSendClientInfoHeaderForURL:(id)l
{
  lCopy = l;
  account = [(MobileCalDAVPrincipal *)self account];
  if (objc_opt_respondsToSelector())
  {
    account2 = [(MobileCalDAVPrincipal *)self account];
    v7 = [account2 shouldSendClientInfoHeaderForURL:lCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)shouldCompressRequests
{
  compressRequests = [MEMORY[0x277D03910] compressRequests];
  if (compressRequests)
  {
    account = [(MobileCalDAVPrincipal *)self account];
    serverVersion = [account serverVersion];
    supportsRequestCompression = [serverVersion supportsRequestCompression];

    LOBYTE(compressRequests) = supportsRequestCompression;
  }

  return compressRequests;
}

- (BOOL)shouldUseOpportunisticSockets
{
  account = [(MobileCalDAVPrincipal *)self account];
  backingAccount = [account backingAccount];
  shouldUseOpportunisticSockets = [backingAccount shouldUseOpportunisticSockets];

  return shouldUseOpportunisticSockets;
}

- (void)noteSuccessfulRequestWithNumDownloadedElements:(int64_t)elements numUploadedElements:(int64_t)uploadedElements
{
  account = [(MobileCalDAVPrincipal *)self account];
  backingAccount = [account backingAccount];
  statusReport = [backingAccount statusReport];
  [statusReport noteSuccessfulRequestWithNumDownloadedElements:elements numUploadedElements:uploadedElements];
}

- (void)noteFailedNetworkRequest
{
  account = [(MobileCalDAVPrincipal *)self account];
  backingAccount = [account backingAccount];
  statusReport = [backingAccount statusReport];
  [statusReport noteFailedNetworkRequest];
}

- (void)noteFailedProtocolRequest
{
  account = [(MobileCalDAVPrincipal *)self account];
  backingAccount = [account backingAccount];
  statusReport = [backingAccount statusReport];
  [statusReport noteFailedProtocolRequest];
}

- (void)noteTimeSpentInNetworking:(double)networking
{
  account = [(MobileCalDAVPrincipal *)self account];
  backingAccount = [account backingAccount];
  statusReport = [backingAccount statusReport];
  [statusReport noteTimeSpentInNetworking:networking];
}

- (NSDictionary)contextDictionary
{
  account = [(MobileCalDAVPrincipal *)self account];
  contextDictionary = [account contextDictionary];

  return contextDictionary;
}

- (CalDAVAccount)account
{
  WeakRetained = objc_loadWeakRetained(&self->_account);

  return WeakRetained;
}

- (void)initWithConfiguration:(uint64_t)a1 principalUID:(uint64_t)a2 account:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MobileCalDAVPrincipal.m" lineNumber:110 description:@"Cannot create a principal with a nil account"];
}

- (void)calendarOfType:(uint64_t)a1 atURL:(uint64_t)a2 withOptions:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MobileCalDAVPrincipal.m" lineNumber:747 description:@"Cannot create a calendar without a URL"];
}

@end