@interface MobileCalDAVPrincipal
+ (id)alarmICSStringFromOffset:(int64_t)a3;
- (BOOL)_userAddressSet:(id)a3 isEqualToSet:(id)a4;
- (BOOL)calendarUserAddressIsEquivalentToURL:(id)a3;
- (BOOL)calendarsAreDirty;
- (BOOL)clearCalendarChanges;
- (BOOL)handleTrustChallenge:(id)a3 completionHandler:(id)a4;
- (BOOL)hasCalendarUserAddress:(id)a3;
- (BOOL)isEnabledForEvents;
- (BOOL)isEnabledForTodos;
- (BOOL)isMergeSync;
- (BOOL)shouldCompressRequests;
- (BOOL)shouldFailAllTasks;
- (BOOL)shouldSendClientInfoHeaderForURL:(id)a3;
- (BOOL)shouldUseOpportunisticSockets;
- (BOOL)supportsExtendedCalendarQuery;
- (BOOL)useSSL;
- (CalDAVAccount)account;
- (CalDAVRefreshContext)refreshContext;
- (CoreDAVTaskManager)taskManager;
- (MobileCalDAVPrincipal)initWithConfiguration:(id)a3 principalUID:(id)a4 account:(id)a5;
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
- (id)_startDateFromDaysToSync:(int)a3;
- (id)accountID;
- (id)additionalHeaderValues;
- (id)calendarOfType:(int)a3 atURL:(id)a4 withOptions:(id)a5;
- (id)calendarUserAddresses;
- (id)clientToken;
- (id)configuration;
- (id)customConnectionProperties;
- (id)host;
- (id)identityPersist;
- (id)oauth2Token;
- (id)password;
- (id)preferredCalendarUserAddressesForCalendar:(id)a3;
- (id)scheme;
- (id)user;
- (int64_t)port;
- (void)clientTokenRequestedByServer;
- (void)noteFailedNetworkRequest;
- (void)noteFailedProtocolRequest;
- (void)noteHomeSetOnDifferentHost:(id)a3;
- (void)noteSuccessfulRequestWithNumDownloadedElements:(int64_t)a3 numUploadedElements:(int64_t)a4;
- (void)noteTimeSpentInNetworking:(double)a3;
- (void)prepareCalendarsForSyncWithCompletionBlock:(id)a3;
- (void)promptUserForNewCoreDAVPasswordWithCompletionBlock:(id)a3;
- (void)removeCalendar:(id)a3;
- (void)removePreferredCalendarUserAddressesForCalendarWithIdentifier:(id)a3;
- (void)removecalendarWithURL:(id)a3;
- (void)setCalendarHomePushKey:(id)a3;
- (void)setCalendarHomeSyncToken:(id)a3;
- (void)setCalendarHomeURL:(id)a3;
- (void)setCanCreateCalendars:(BOOL)a3;
- (void)setDefaultAllDayAlarms:(id)a3;
- (void)setDefaultCalendarURL:(id)a3;
- (void)setDefaultTimedAlarms:(id)a3;
- (void)setDropBoxURL:(id)a3;
- (void)setFullName:(id)a3;
- (void)setInboxCTag:(id)a3;
- (void)setInboxURL:(id)a3;
- (void)setIsDelegate:(BOOL)a3;
- (void)setIsDirty:(BOOL)a3;
- (void)setIsEnabled:(BOOL)a3;
- (void)setIsExpandPropertyReportSupported:(BOOL)a3;
- (void)setIsWritable:(BOOL)a3;
- (void)setNotificationCollectionCTag:(id)a3;
- (void)setNotificationCollectionURL:(id)a3;
- (void)setNotificationURLString:(id)a3;
- (void)setOutboxURL:(id)a3;
- (void)setPreferredCalendarUserAddresses:(id)a3;
- (void)setPreferredCalendarUserAddresses:(id)a3 forCalendar:(id)a4;
- (void)setPrincipalPath:(id)a3;
- (void)setPrincipalURL:(id)a3;
- (void)setPushTransports:(id)a3;
- (void)setQuotaFreeBytes:(id)a3;
- (void)setSupportedCalendarComponentSets:(id)a3;
- (void)setSupportsCalendarUserSearch:(BOOL)a3;
- (void)setSupportsFreebusy:(BOOL)a3;
- (void)setSupportsPush:(BOOL)a3;
- (void)setSupportsSyncToken:(BOOL)a3;
- (void)updateAddedOrModifiedSubscribedCalendars:(id)a3;
- (void)updatePropertiesFromCalStore:(void *)a3;
- (void)webLoginRequestedAtURL:(id)a3 reasonString:(id)a4 inQueue:(id)a5 completionBlock:(id)a6;
@end

@implementation MobileCalDAVPrincipal

- (MobileCalDAVPrincipal)initWithConfiguration:(id)a3 principalUID:(id)a4 account:(id)a5
{
  v164 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v158.receiver = self;
  v158.super_class = MobileCalDAVPrincipal;
  v12 = [(MobileCalDAVPrincipal *)&v158 init];

  if (v12)
  {
    if (!v11)
    {
      [MobileCalDAVPrincipal initWithConfiguration:a2 principalUID:v12 account:?];
    }

    [(MobileCalDAVPrincipal *)v12 setAccount:v11];
    v13 = *MEMORY[0x277CF7A18];
    v14 = [v9 objectForKeyedSubscript:*MEMORY[0x277CF7A18]];

    if (v14)
    {
      v15 = [v9 objectForKeyedSubscript:v13];
      uid = v12->_uid;
      v12->_uid = v15;
    }

    if (v10)
    {
      v17 = v12->_uid;
      if (!v17 || ![(NSString *)v17 isEqualToString:v10])
      {
        v18 = DALoggingwithCategory();
        v19 = *(MEMORY[0x277D03988] + 4);
        if (os_log_type_enabled(v18, v19))
        {
          v20 = v12->_uid;
          *buf = 138543618;
          v161 = v20;
          v162 = 2114;
          v163 = v10;
          _os_log_impl(&dword_2484B2000, v18, v19, "Principal configuration UID (%{public}@) doesn't match provided UID (%{public}@). Using the provided UID.", buf, 0x16u);
        }

        objc_storeStrong(&v12->_uid, a4);
      }
    }

    if (!v12->_uid)
    {
      v21 = [MEMORY[0x277CCACA8] da_newGUID];
      v22 = v12->_uid;
      v12->_uid = v21;
    }

    v12->_isWritable = [v11 isWritable];
    v12->_shouldRefreshPrincipalSearchProperties = 1;
    v12->_canCreateCalendars = [v11 isWritable];
    v23 = *MEMORY[0x277CF7A00];
    v24 = [v9 objectForKeyedSubscript:*MEMORY[0x277CF7A00]];

    if (v24)
    {
      v148 = v11;
      v25 = v10;
      v26 = objc_opt_new();
      v154 = 0u;
      v155 = 0u;
      v156 = 0u;
      v157 = 0u;
      v27 = [v9 objectForKeyedSubscript:v23];
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
      v10 = v25;
      v11 = v148;
    }

    v33 = objc_opt_new();
    calendarUserAddressesPerCalendar = v12->_calendarUserAddressesPerCalendar;
    v12->_calendarUserAddressesPerCalendar = v33;

    v35 = [v9 objectForKeyedSubscript:*MEMORY[0x277CF7A08]];
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

    v36 = [v11 backingAccount];
    v37 = [v36 topLevelAccountTypeIdentifier];
    v38 = [v37 isEqualToString:*MEMORY[0x277CB8BA0]];

    if (v38)
    {
      v39 = [objc_alloc(MEMORY[0x277CF0188]) initWithIdentifier:@"CardDAViCloudDaemonAccount"];
      appleIDSession = v12->_appleIDSession;
      v12->_appleIDSession = v39;
    }

    v41 = *MEMORY[0x277CF79D0];
    v42 = [v9 objectForKeyedSubscript:*MEMORY[0x277CF79D0]];

    if (v42)
    {
      v43 = [v9 objectForKeyedSubscript:v41];
      fullName = v12->_fullName;
      v12->_fullName = v43;
    }

    v45 = *MEMORY[0x277CF7980];
    v46 = [v9 objectForKeyedSubscript:*MEMORY[0x277CF7980]];

    if (v46)
    {
      v47 = MEMORY[0x277CBEBC0];
      v48 = [v9 objectForKeyedSubscript:v45];
      v49 = [v47 URLWithString:v48];
      calendarHomeURL = v12->_calendarHomeURL;
      v12->_calendarHomeURL = v49;
    }

    v51 = *MEMORY[0x277CF7A10];
    v52 = [v9 objectForKeyedSubscript:*MEMORY[0x277CF7A10]];

    if (v52)
    {
      v53 = [v9 objectForKeyedSubscript:v51];
      principalPath = v12->_principalPath;
      v12->_principalPath = v53;
    }

    v55 = *MEMORY[0x277CF79C8];
    v56 = [v9 objectForKeyedSubscript:*MEMORY[0x277CF79C8]];

    if (v56)
    {
      v57 = MEMORY[0x277CBEBC0];
      v58 = [v9 objectForKeyedSubscript:v55];
      v59 = [v57 URLWithString:v58];
      defaultCalendarURL = v12->_defaultCalendarURL;
      v12->_defaultCalendarURL = v59;
    }

    v61 = *MEMORY[0x277CF79A8];
    v62 = [v9 objectForKeyedSubscript:*MEMORY[0x277CF79A8]];

    if (v62)
    {
      v63 = MEMORY[0x277CBEBC0];
      v64 = [v9 objectForKeyedSubscript:v61];
      v65 = [v63 URLWithString:v64];
      notificationCollectionURL = v12->_notificationCollectionURL;
      v12->_notificationCollectionURL = v65;
    }

    v67 = *MEMORY[0x277CF79A0];
    v68 = [v9 objectForKeyedSubscript:*MEMORY[0x277CF79A0]];

    if (v68)
    {
      v69 = [v9 objectForKeyedSubscript:v67];
      notificationCollectionCTag = v12->_notificationCollectionCTag;
      v12->_notificationCollectionCTag = v69;
    }

    v71 = *MEMORY[0x277CF7998];
    v72 = [v9 objectForKeyedSubscript:*MEMORY[0x277CF7998]];

    if (v72)
    {
      v73 = MEMORY[0x277CBEBC0];
      v74 = [v9 objectForKeyedSubscript:v71];
      v75 = [v73 URLWithString:v74];
      inboxURL = v12->_inboxURL;
      v12->_inboxURL = v75;
    }

    v77 = *MEMORY[0x277CF7990];
    v78 = [v9 objectForKeyedSubscript:*MEMORY[0x277CF7990]];

    if (v78)
    {
      v79 = [v9 objectForKeyedSubscript:v77];
      inboxCTag = v12->_inboxCTag;
      v12->_inboxCTag = v79;
    }

    v81 = *MEMORY[0x277CF79B0];
    v82 = [v9 objectForKeyedSubscript:*MEMORY[0x277CF79B0]];

    if (v82)
    {
      v83 = MEMORY[0x277CBEBC0];
      v84 = [v9 objectForKeyedSubscript:v81];
      v85 = [v83 URLWithString:v84];
      outboxURL = v12->_outboxURL;
      v12->_outboxURL = v85;
    }

    v87 = *MEMORY[0x277CF7988];
    v88 = [v9 objectForKeyedSubscript:*MEMORY[0x277CF7988]];

    if (v88)
    {
      v89 = MEMORY[0x277CBEBC0];
      v90 = [v9 objectForKeyedSubscript:v87];
      v91 = [v89 URLWithString:v90];
      dropBoxURL = v12->_dropBoxURL;
      v12->_dropBoxURL = v91;
    }

    v93 = *MEMORY[0x277CF79F8];
    v94 = [v9 objectForKeyedSubscript:*MEMORY[0x277CF79F8]];

    if (v94)
    {
      v95 = [v9 objectForKeyedSubscript:v93];
      notificationURLString = v12->_notificationURLString;
      v12->_notificationURLString = v95;
    }

    v97 = *MEMORY[0x277CF7A20];
    v98 = [v9 objectForKeyedSubscript:*MEMORY[0x277CF7A20]];

    if (v98)
    {
      v99 = [v9 objectForKeyedSubscript:v97];
      pushTransports = v12->_pushTransports;
      v12->_pushTransports = v99;
    }

    v101 = *MEMORY[0x277CF79B8];
    v102 = [v9 objectForKeyedSubscript:*MEMORY[0x277CF79B8]];

    if (v102)
    {
      v103 = [v9 objectForKeyedSubscript:v101];
      calendarHomePushKey = v12->_calendarHomePushKey;
      v12->_calendarHomePushKey = v103;
    }

    v105 = *MEMORY[0x277CF79D8];
    v106 = [v9 objectForKeyedSubscript:*MEMORY[0x277CF79D8]];

    if (v106)
    {
      v107 = [v9 objectForKeyedSubscript:v105];
      v12->_isDelegate = [v107 BOOLValue];
    }

    v108 = *MEMORY[0x277CF79F0];
    v109 = [v9 objectForKeyedSubscript:*MEMORY[0x277CF79F0]];

    if (v109)
    {
      v110 = [v9 objectForKeyedSubscript:v108];
      v12->_isWritable = [v110 BOOLValue];
    }

    v111 = *MEMORY[0x277CF79C0];
    v112 = [v9 objectForKeyedSubscript:*MEMORY[0x277CF79C0]];

    if (v112)
    {
      v113 = [v9 objectForKeyedSubscript:v111];
      v12->_canCreateCalendars = [v113 BOOLValue];
    }

    v114 = *MEMORY[0x277CF79E0];
    v115 = [v9 objectForKeyedSubscript:*MEMORY[0x277CF79E0]];

    if (v115)
    {
      v116 = [v9 objectForKeyedSubscript:v114];
      v12->_isEnabled = [v116 BOOLValue];
    }

    v117 = *MEMORY[0x277CF79E8];
    v118 = [v9 objectForKeyedSubscript:*MEMORY[0x277CF79E8]];

    if (v118)
    {
      v119 = [v9 objectForKeyedSubscript:v117];
      v12->_isExpandPropertyReportSupported = [v119 BOOLValue];
    }

    v120 = *MEMORY[0x277CF7A38];
    v121 = [v9 objectForKeyedSubscript:*MEMORY[0x277CF7A38]];

    if (v121)
    {
      v122 = [v9 objectForKeyedSubscript:v120];
      v12->_supportsCalendarUserSearch = [v122 BOOLValue];
    }

    v123 = *MEMORY[0x277CF7A40];
    v124 = [v9 objectForKeyedSubscript:*MEMORY[0x277CF7A40]];

    if (v124)
    {
      v125 = [v9 objectForKeyedSubscript:v123];
      v12->_supportsFreebusy = [v125 BOOLValue];
    }

    v126 = *MEMORY[0x277CF7A50];
    v127 = [v9 objectForKeyedSubscript:*MEMORY[0x277CF7A50]];

    if (v127)
    {
      v128 = [v9 objectForKeyedSubscript:v126];
      v12->_supportsSyncToken = [v128 BOOLValue];
    }

    v129 = *MEMORY[0x277CF7A48];
    v130 = [v9 objectForKeyedSubscript:*MEMORY[0x277CF7A48]];

    if (v130)
    {
      v131 = [v9 objectForKeyedSubscript:v129];
      v12->_supportsPush = [v131 BOOLValue];
    }

    v132 = *MEMORY[0x277CF7A28];
    v133 = [v9 objectForKeyedSubscript:*MEMORY[0x277CF7A28]];

    if (v133)
    {
      v134 = [v9 objectForKeyedSubscript:v132];
      quotaFreeBytes = v12->_quotaFreeBytes;
      v12->_quotaFreeBytes = v134;
    }

    v136 = *MEMORY[0x277CF7A30];
    v137 = [v9 objectForKeyedSubscript:*MEMORY[0x277CF7A30]];

    if (v137)
    {
      v138 = [v9 objectForKeyedSubscript:v136];
      supportedCalendarComponentSets = v12->_supportedCalendarComponentSets;
      v12->_supportedCalendarComponentSets = v138;
    }

    v140 = [v9 objectForKeyedSubscript:@"PrincipalURL"];

    if (v140)
    {
      v141 = MEMORY[0x277CBEBC0];
      v142 = [v9 objectForKeyedSubscript:@"PrincipalURL"];
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
  v7 = [(MobileCalDAVPrincipal *)self preferredCalendarUserAddresses];
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __38__MobileCalDAVPrincipal_configuration__block_invoke;
  v62[3] = &unk_278F17720;
  v8 = v6;
  v63 = v8;
  [v7 enumerateObjectsUsingBlock:v62];

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
    v13 = [(MobileCalDAVPrincipal *)self fullName];
    [v3 setObject:v13 forKey:*MEMORY[0x277CF79D0]];
  }

  v14 = [(MobileCalDAVPrincipal *)self calendarHomeURL];

  if (v14)
  {
    v15 = [(MobileCalDAVPrincipal *)self calendarHomeURL];
    v16 = [v15 absoluteString];
    [v3 setObject:v16 forKey:*MEMORY[0x277CF7980]];
  }

  v17 = [(MobileCalDAVPrincipal *)self principalPath];

  if (v17)
  {
    v18 = [(MobileCalDAVPrincipal *)self principalPath];
    [v3 setObject:v18 forKey:*MEMORY[0x277CF7A10]];
  }

  v19 = [(MobileCalDAVPrincipal *)self defaultCalendarURL];

  if (v19)
  {
    v20 = [(MobileCalDAVPrincipal *)self defaultCalendarURL];
    v21 = [v20 absoluteString];
    [v3 setObject:v21 forKey:*MEMORY[0x277CF79C8]];
  }

  v22 = [(MobileCalDAVPrincipal *)self notificationCollectionURL];

  if (v22)
  {
    v23 = [(MobileCalDAVPrincipal *)self notificationCollectionURL];
    v24 = [v23 absoluteString];
    [v3 setObject:v24 forKey:*MEMORY[0x277CF79A8]];
  }

  v25 = [(MobileCalDAVPrincipal *)self notificationCollectionCTag];

  if (v25)
  {
    v26 = [(MobileCalDAVPrincipal *)self notificationCollectionCTag];
    [v3 setObject:v26 forKey:*MEMORY[0x277CF79A0]];
  }

  v27 = [(MobileCalDAVPrincipal *)self inboxURL];

  if (v27)
  {
    v28 = [(MobileCalDAVPrincipal *)self inboxURL];
    v29 = [v28 absoluteString];
    [v3 setObject:v29 forKey:*MEMORY[0x277CF7998]];
  }

  v30 = [(MobileCalDAVPrincipal *)self inboxCTag];

  if (v30)
  {
    v31 = [(MobileCalDAVPrincipal *)self inboxCTag];
    [v3 setObject:v31 forKey:*MEMORY[0x277CF7990]];
  }

  v32 = [(MobileCalDAVPrincipal *)self outboxURL];

  if (v32)
  {
    v33 = [(MobileCalDAVPrincipal *)self outboxURL];
    v34 = [v33 absoluteString];
    [v3 setObject:v34 forKey:*MEMORY[0x277CF79B0]];
  }

  v35 = [(MobileCalDAVPrincipal *)self dropBoxURL];

  if (v35)
  {
    v36 = [(MobileCalDAVPrincipal *)self dropBoxURL];
    v37 = [v36 absoluteString];
    [v3 setObject:v37 forKey:*MEMORY[0x277CF7988]];
  }

  v38 = [(MobileCalDAVPrincipal *)self notificationURLString];

  if (v38)
  {
    v39 = [(MobileCalDAVPrincipal *)self notificationURLString];
    [v3 setObject:v39 forKey:*MEMORY[0x277CF79F8]];
  }

  v40 = [(MobileCalDAVPrincipal *)self pushTransports];

  if (v40)
  {
    v41 = [(MobileCalDAVPrincipal *)self pushTransports];
    [v3 setObject:v41 forKey:*MEMORY[0x277CF7A20]];
  }

  v42 = [(MobileCalDAVPrincipal *)self calendarHomePushKey];

  if (v42)
  {
    v43 = [(MobileCalDAVPrincipal *)self calendarHomePushKey];
    [v3 setObject:v43 forKey:*MEMORY[0x277CF79B8]];
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

  v53 = [(MobileCalDAVPrincipal *)self quotaFreeBytes];

  if (v53)
  {
    v54 = [(MobileCalDAVPrincipal *)self quotaFreeBytes];
    [v3 setObject:v54 forKey:*MEMORY[0x277CF7A28]];
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

- (BOOL)_userAddressSet:(id)a3 isEqualToSet:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    v7 = [v5 count];
    if (v7 == [v6 count])
    {
      v14 = 0;
      v15 = &v14;
      v16 = 0x2020000000;
      v17 = 0;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __54__MobileCalDAVPrincipal__userAddressSet_isEqualToSet___block_invoke;
      v11[3] = &unk_278F17770;
      v12 = v5;
      v13 = &v14;
      [v6 enumerateObjectsUsingBlock:v11];
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

- (void)setPreferredCalendarUserAddresses:(id)a3
{
  v7 = a3;
  v5 = [(MobileCalDAVPrincipal *)self preferredCalendarUserAddresses];
  v6 = [(MobileCalDAVPrincipal *)self _userAddressSet:v7 isEqualToSet:v5];

  if (!v6)
  {
    [(MobileCalDAVPrincipal *)self setIsDirty:1];
    objc_storeStrong(&self->_preferredCalendarUserAddresses, a3);
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
  v4 = [(MobileCalDAVPrincipal *)self preferredCalendarUserAddresses];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) address];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)setFullName:(id)a3
{
  v8 = a3;
  fullName = [(MobileCalDAVPrincipal *)self fullName];
  if (fullName != v8)
  {
    v5 = [(MobileCalDAVPrincipal *)self fullName];
    v6 = [v8 isEqualToString:v5];

    if (v6)
    {
      goto LABEL_5;
    }

    [(MobileCalDAVPrincipal *)self setIsDirty:1];
    v7 = v8;
    fullName = self->_fullName;
    self->_fullName = v7;
  }

LABEL_5:
}

- (NSURL)calendarHomeURL
{
  v3 = [(MobileCalDAVPrincipal *)self account];
  v4 = [v3 addUsernameToURL:self->_calendarHomeURL];

  return v4;
}

- (void)setCalendarHomeURL:(id)a3
{
  v4 = a3;
  v5 = [(MobileCalDAVPrincipal *)self account];
  v10 = [v5 addUsernameToURL:v4];

  calendarHomeURL = [(MobileCalDAVPrincipal *)self calendarHomeURL];
  if (v10 != calendarHomeURL)
  {
    v7 = [(MobileCalDAVPrincipal *)self calendarHomeURL];
    v8 = [v10 da_isEqualToDAVURL:v7];

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
  v2 = [(MobileCalDAVPrincipal *)self account];
  v3 = [v2 calendarHomeSyncToken];

  return v3;
}

- (void)setCalendarHomeSyncToken:(id)a3
{
  v6 = a3;
  v4 = [(MobileCalDAVPrincipal *)self calendarHomeSyncToken];
  if (v4 != v6 && ([v6 isEqualToString:v4] & 1) == 0)
  {
    v5 = [(MobileCalDAVPrincipal *)self account];
    [v5 setCalendarHomeSyncToken:v6];

    [(MobileCalDAVPrincipal *)self setCalendarsAreDirty:1];
  }
}

- (NSDictionary)subCalPropertiesByURL
{
  v2 = [(MobileCalDAVPrincipal *)self account];
  v3 = [MEMORY[0x277D03970] CalDAVSubscribedCalendarsKey];
  v4 = [v2 objectForKeyedSubscript:v3];

  return v4;
}

- (void)setPrincipalPath:(id)a3
{
  obj = a3;
  if ([obj length])
  {
    v4 = [obj da_appendSlashIfNeeded];

    v5 = v4;
  }

  else
  {
    v5 = obj;
  }

  if (v5 != self->_principalPath)
  {
    obja = v5;
    v6 = [(MobileCalDAVPrincipal *)self principalPath];
    v7 = [(NSString *)obja isEqualToString:v6];

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
  v3 = [(MobileCalDAVPrincipal *)self account];
  v4 = [v3 principalURL];
  v5 = [(MobileCalDAVPrincipal *)self principalPath];
  v6 = [v4 da_urlBySettingPath:v5];

  return v6;
}

- (void)setPrincipalURL:(id)a3
{
  v10 = a3;
  if ([(MobileCalDAVPrincipal *)self isDelegate])
  {
    v4 = [v10 absoluteString];
    v5 = [v4 hasPrefix:@"/"];

    if (v5)
    {
      v6 = [v10 absoluteString];
      v7 = self;
      v8 = v6;
    }

    else
    {
      v9 = [v10 path];
      v6 = v9;
      if (v9)
      {
        v8 = v9;
      }

      else
      {
        v8 = @"/";
      }

      v7 = self;
    }

    [(MobileCalDAVPrincipal *)v7 setPrincipalPath:v8];
  }

  else
  {
    v6 = [(MobileCalDAVPrincipal *)self account];
    [(__CFString *)v6 setPrincipalURL:v10];
  }
}

- (NSURL)defaultCalendarURL
{
  v3 = [(MobileCalDAVPrincipal *)self account];
  v4 = [v3 addUsernameToURL:self->_defaultCalendarURL];

  return v4;
}

- (void)setDefaultCalendarURL:(id)a3
{
  v4 = a3;
  v5 = [(MobileCalDAVPrincipal *)self account];
  v10 = [v5 addUsernameToURL:v4];

  defaultCalendarURL = [(MobileCalDAVPrincipal *)self defaultCalendarURL];
  if (v10 != defaultCalendarURL)
  {
    v7 = [(MobileCalDAVPrincipal *)self defaultCalendarURL];
    v8 = [v10 da_isEqualToDAVURL:v7];

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
  v3 = [(MobileCalDAVPrincipal *)self account];
  v4 = [v3 addUsernameToURL:self->_notificationCollectionURL];

  return v4;
}

- (void)setNotificationCollectionURL:(id)a3
{
  v4 = a3;
  v5 = [(MobileCalDAVPrincipal *)self account];
  v10 = [v5 addUsernameToURL:v4];

  notificationCollectionURL = [(MobileCalDAVPrincipal *)self notificationCollectionURL];
  if (v10 != notificationCollectionURL)
  {
    v7 = [(MobileCalDAVPrincipal *)self notificationCollectionURL];
    v8 = [v10 da_isEqualToDAVURL:v7];

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

- (void)setNotificationCollectionCTag:(id)a3
{
  v8 = a3;
  notificationCollectionCTag = [(MobileCalDAVPrincipal *)self notificationCollectionCTag];
  if (notificationCollectionCTag != v8)
  {
    v5 = [(MobileCalDAVPrincipal *)self notificationCollectionCTag];
    v6 = [v8 isEqualToString:v5];

    if (v6)
    {
      goto LABEL_5;
    }

    [(MobileCalDAVPrincipal *)self setIsDirty:1];
    v7 = v8;
    notificationCollectionCTag = self->_notificationCollectionCTag;
    self->_notificationCollectionCTag = v7;
  }

LABEL_5:
}

- (NSURL)inboxURL
{
  v3 = [(MobileCalDAVPrincipal *)self account];
  v4 = [v3 addUsernameToURL:self->_inboxURL];

  return v4;
}

- (void)setInboxURL:(id)a3
{
  v4 = a3;
  v5 = [(MobileCalDAVPrincipal *)self account];
  v10 = [v5 addUsernameToURL:v4];

  inboxURL = [(MobileCalDAVPrincipal *)self inboxURL];
  if (v10 != inboxURL)
  {
    v7 = [(MobileCalDAVPrincipal *)self inboxURL];
    v8 = [v10 da_isEqualToDAVURL:v7];

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

- (void)setInboxCTag:(id)a3
{
  v8 = a3;
  inboxCTag = [(MobileCalDAVPrincipal *)self inboxCTag];
  if (inboxCTag != v8)
  {
    v5 = [(MobileCalDAVPrincipal *)self inboxCTag];
    v6 = [v8 isEqualToString:v5];

    if (v6)
    {
      goto LABEL_5;
    }

    [(MobileCalDAVPrincipal *)self setIsDirty:1];
    v7 = v8;
    inboxCTag = self->_inboxCTag;
    self->_inboxCTag = v7;
  }

LABEL_5:
}

- (NSURL)outboxURL
{
  v3 = [(MobileCalDAVPrincipal *)self account];
  v4 = [v3 addUsernameToURL:self->_outboxURL];

  return v4;
}

- (void)setOutboxURL:(id)a3
{
  v4 = a3;
  v5 = [(MobileCalDAVPrincipal *)self account];
  obj = [v5 addUsernameToURL:v4];

  v6 = [(MobileCalDAVPrincipal *)self outboxURL];
  if (obj == v6)
  {
  }

  else
  {
    v7 = [(MobileCalDAVPrincipal *)self outboxURL];
    v8 = [obj da_isEqualToDAVURL:v7];

    if ((v8 & 1) == 0)
    {
      objc_storeStrong(&self->_outboxURL, obj);
      [(MobileCalDAVPrincipal *)self setIsDirty:1];
    }
  }
}

- (NSURL)dropBoxURL
{
  v3 = [(MobileCalDAVPrincipal *)self account];
  v4 = [v3 addUsernameToURL:self->_dropBoxURL];

  return v4;
}

- (void)setDropBoxURL:(id)a3
{
  v4 = a3;
  v5 = [(MobileCalDAVPrincipal *)self account];
  v10 = [v5 addUsernameToURL:v4];

  dropBoxURL = [(MobileCalDAVPrincipal *)self dropBoxURL];
  if (v10 != dropBoxURL)
  {
    v7 = [(MobileCalDAVPrincipal *)self dropBoxURL];
    v8 = [v10 da_isEqualToDAVURL:v7];

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

- (void)setNotificationURLString:(id)a3
{
  v8 = a3;
  v5 = [(MobileCalDAVPrincipal *)self notificationURLString];
  if (v5 == v8)
  {
  }

  else
  {
    v6 = [(MobileCalDAVPrincipal *)self notificationURLString];
    v7 = [v8 isEqualToString:v6];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_notificationURLString, a3);
      [(MobileCalDAVPrincipal *)self setShouldUpdatePushDelegate:1];
      [(MobileCalDAVPrincipal *)self setIsDirty:1];
    }
  }
}

- (void)setPushTransports:(id)a3
{
  v8 = a3;
  v5 = [(MobileCalDAVPrincipal *)self pushTransports];
  if (v5 == v8)
  {
  }

  else
  {
    v6 = [(MobileCalDAVPrincipal *)self pushTransports];
    v7 = [v8 isEqual:v6];

    if ((v7 & 1) == 0)
    {
      [(MobileCalDAVPrincipal *)self setIsDirty:1];
      objc_storeStrong(&self->_pushTransports, a3);
      [(MobileCalDAVPrincipal *)self setShouldUpdatePushDelegate:1];
    }
  }
}

- (void)setCalendarHomePushKey:(id)a3
{
  v8 = a3;
  calendarHomePushKey = [(MobileCalDAVPrincipal *)self calendarHomePushKey];
  if (calendarHomePushKey != v8)
  {
    v5 = [(MobileCalDAVPrincipal *)self calendarHomePushKey];
    v6 = [v8 isEqualToString:v5];

    if (v6)
    {
      goto LABEL_5;
    }

    [(MobileCalDAVPrincipal *)self setIsDirty:1];
    v7 = v8;
    calendarHomePushKey = self->_calendarHomePushKey;
    self->_calendarHomePushKey = v7;
  }

LABEL_5:
}

- (void)setDefaultTimedAlarms:(id)a3
{
  v8 = a3;
  defaultTimedAlarms = [(MobileCalDAVPrincipal *)self defaultTimedAlarms];
  if (defaultTimedAlarms != v8)
  {
    v5 = [(MobileCalDAVPrincipal *)self defaultTimedAlarms];
    v6 = [v8 isEqualToString:v5];

    if (v6)
    {
      goto LABEL_5;
    }

    [(MobileCalDAVPrincipal *)self setIsDirty:1];
    [(MobileCalDAVPrincipal *)self setAlarmsDirty:1];
    v7 = v8;
    defaultTimedAlarms = self->_defaultTimedAlarms;
    self->_defaultTimedAlarms = v7;
  }

LABEL_5:
}

- (void)setDefaultAllDayAlarms:(id)a3
{
  v8 = a3;
  defaultAllDayAlarms = [(MobileCalDAVPrincipal *)self defaultAllDayAlarms];
  if (defaultAllDayAlarms != v8)
  {
    v5 = [(MobileCalDAVPrincipal *)self defaultAllDayAlarms];
    v6 = [v8 isEqualToString:v5];

    if (v6)
    {
      goto LABEL_5;
    }

    [(MobileCalDAVPrincipal *)self setIsDirty:1];
    [(MobileCalDAVPrincipal *)self setAlarmsDirty:1];
    v7 = v8;
    defaultAllDayAlarms = self->_defaultAllDayAlarms;
    self->_defaultAllDayAlarms = v7;
  }

LABEL_5:
}

- (void)setQuotaFreeBytes:(id)a3
{
  v8 = a3;
  quotaFreeBytes = [(MobileCalDAVPrincipal *)self quotaFreeBytes];
  if (quotaFreeBytes != v8)
  {
    v5 = [(MobileCalDAVPrincipal *)self quotaFreeBytes];
    v6 = [v8 isEqual:v5];

    if (v6)
    {
      goto LABEL_5;
    }

    v7 = v8;
    quotaFreeBytes = self->_quotaFreeBytes;
    self->_quotaFreeBytes = v7;
  }

LABEL_5:
}

- (void)setSupportedCalendarComponentSets:(id)a3
{
  v8 = a3;
  supportedCalendarComponentSets = [(MobileCalDAVPrincipal *)self supportedCalendarComponentSets];
  if (supportedCalendarComponentSets != v8)
  {
    v5 = [(MobileCalDAVPrincipal *)self supportedCalendarComponentSets];
    v6 = [v5 isEqualToString:v8];

    if (v6)
    {
      goto LABEL_5;
    }

    [(MobileCalDAVPrincipal *)self setIsDirty:1];
    v7 = v8;
    supportedCalendarComponentSets = self->_supportedCalendarComponentSets;
    self->_supportedCalendarComponentSets = v7;
  }

LABEL_5:
}

- (void)setIsDelegate:(BOOL)a3
{
  if ([(MobileCalDAVPrincipal *)self isDelegate]!= a3)
  {
    [(MobileCalDAVPrincipal *)self setIsDirty:1];
    self->_isDelegate = a3;
  }
}

- (void)setIsWritable:(BOOL)a3
{
  if ([(MobileCalDAVPrincipal *)self isWritable]!= a3)
  {
    [(MobileCalDAVPrincipal *)self setIsDirty:1];
    self->_isWritable = a3;
  }
}

- (void)setIsEnabled:(BOOL)a3
{
  if ([(MobileCalDAVPrincipal *)self isEnabled]!= a3)
  {
    [(MobileCalDAVPrincipal *)self setIsDirty:1];
    self->_isEnabled = a3;
  }
}

- (void)setCanCreateCalendars:(BOOL)a3
{
  if ([(MobileCalDAVPrincipal *)self canCreateCalendars]!= a3)
  {
    [(MobileCalDAVPrincipal *)self setIsDirty:1];
    self->_canCreateCalendars = a3;
  }
}

- (BOOL)isMergeSync
{
  v2 = [(MobileCalDAVPrincipal *)self account];
  v3 = [v2 wasMigrated];

  return v3;
}

- (BOOL)isEnabledForEvents
{
  v3 = [(MobileCalDAVPrincipal *)self account];
  v4 = [v3 backingAccount];
  if ([v4 isEnabledForDataclass:*MEMORY[0x277CB90F0]])
  {
    v5 = [(MobileCalDAVPrincipal *)self account];
    v6 = [v5 supportsEvents];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEnabledForTodos
{
  if (!CalShouldSyncReminders())
  {
    return 0;
  }

  v3 = [(MobileCalDAVPrincipal *)self account];
  v4 = [v3 backingAccount];
  if ([v4 isEnabledForDataclass:*MEMORY[0x277CB9190]])
  {
    v5 = [(MobileCalDAVPrincipal *)self account];
    v6 = [v5 supportsReminders];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)supportsExtendedCalendarQuery
{
  v2 = [(MobileCalDAVPrincipal *)self account];
  v3 = [v2 serverVersion];
  v4 = [v3 supportsExtendedCalendarQuery];

  return v4;
}

- (id)_eventSyncEndDate
{
  v2 = objc_alloc(MEMORY[0x277CBEA80]);
  v3 = [v2 initWithCalendarIdentifier:*MEMORY[0x277CBE650]];
  v4 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"UTC"];
  [v3 setTimeZone:v4];

  v5 = MEMORY[0x277CBEAA8];
  v6 = [MEMORY[0x277CBEAA8] date];
  v7 = [v5 dateWithTimeInterval:v6 sinceDate:63072000.0];

  v8 = [v3 components:28 fromDate:v7];

  return v8;
}

- (id)_startDateFromDaysToSync:(int)a3
{
  v4 = objc_alloc(MEMORY[0x277CBEA80]);
  v5 = [v4 initWithCalendarIdentifier:*MEMORY[0x277CBE650]];
  v6 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"UTC"];
  [v5 setTimeZone:v6];

  v7 = objc_opt_new();
  [v7 setDay:-a3];
  v8 = [MEMORY[0x277CBEAA8] date];
  v9 = [v5 dateByAddingComponents:v7 toDate:v8 options:0];

  v10 = [v5 components:28 fromDate:v9];

  return v10;
}

- (NSDateComponents)eventFilterStartDate
{
  v3 = [(MobileCalDAVPrincipal *)self account];
  v4 = [v3 shouldFilterEventSyncTimeRange];

  if (v4)
  {
    v5 = [(MobileCalDAVPrincipal *)self account];
    v6 = -[MobileCalDAVPrincipal _startDateFromDaysToSync:](self, "_startDateFromDaysToSync:", [v5 preferredEventDaysToSync]);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSDateComponents)eventFilterEndDate
{
  v3 = [(MobileCalDAVPrincipal *)self account];
  if ([v3 shouldFilterEventSyncTimeRange])
  {
    v4 = [(MobileCalDAVPrincipal *)self account];
    v5 = [v4 serverVersion];
    v6 = [v5 supportsTimeRangeFilterWithoutEndDate];

    if ((v6 & 1) == 0)
    {
      v7 = [(MobileCalDAVPrincipal *)self _eventSyncEndDate];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v7 = 0;
LABEL_6:

  return v7;
}

- (void)setIsExpandPropertyReportSupported:(BOOL)a3
{
  if ([(MobileCalDAVPrincipal *)self isExpandPropertyReportSupported]!= a3)
  {
    [(MobileCalDAVPrincipal *)self setIsDirty:1];
    self->_isExpandPropertyReportSupported = a3;
  }
}

- (void)setSupportsCalendarUserSearch:(BOOL)a3
{
  if ([(MobileCalDAVPrincipal *)self supportsCalendarUserSearch]!= a3)
  {
    [(MobileCalDAVPrincipal *)self setIsDirty:1];
    self->_supportsCalendarUserSearch = a3;
  }
}

- (void)setSupportsFreebusy:(BOOL)a3
{
  if ([(MobileCalDAVPrincipal *)self supportsFreebusy]!= a3)
  {
    [(MobileCalDAVPrincipal *)self setIsDirty:1];
    self->_supportsFreebusy = a3;
  }
}

- (void)setSupportsSyncToken:(BOOL)a3
{
  if ([(MobileCalDAVPrincipal *)self supportsSyncToken]!= a3)
  {
    [(MobileCalDAVPrincipal *)self setIsDirty:1];
    self->_supportsSyncToken = a3;
  }
}

- (CalDAVRefreshContext)refreshContext
{
  v2 = [(MobileCalDAVPrincipal *)self account];
  v3 = [v2 refreshContext];

  return v3;
}

- (NSSet)calendars
{
  v2 = [(MobileCalDAVPrincipal *)self account];
  v3 = [v2 calendars];

  return v3;
}

+ (id)alarmICSStringFromOffset:(int64_t)a3
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = [MEMORY[0x277D7F0B0] createNoneAlarm];
    [v3 setX_apple_default_alarm:1];
  }

  else
  {
    v3 = objc_opt_new();
    v5 = [objc_alloc(MEMORY[0x277D7F110]) initWithWeeks:0 days:0 hours:0 minutes:0 seconds:a3];
    v6 = [objc_alloc(MEMORY[0x277D7F150]) initWithDuration:v5];
    [v3 setTrigger:v6];
    [v3 setAction:{objc_msgSend(MEMORY[0x277D7F0B0], "actionFromICSString:", @"AUDIO"}];
    v7 = [MEMORY[0x277D7F0E0] makeUID];
    [v3 setUid:v7];
  }

  v8 = [v3 ICSStringWithOptions:0];

  return v8;
}

- (void)updatePropertiesFromCalStore:(void *)a3
{
  DefaultAlarmOffsetNSInteger = CalStoreGetDefaultAlarmOffsetNSInteger();
  if (DefaultAlarmOffsetNSInteger == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [MEMORY[0x277D7F0B0] createNoneAlarm];
    v6 = [v5 ICSStringWithOptions:0];
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

- (void)prepareCalendarsForSyncWithCompletionBlock:(id)a3
{
  v53 = *MEMORY[0x277D85DE8];
  v39 = a3;
  v4 = [(MobileCalDAVPrincipal *)self account];
  [v4 reloadCalendars];

  v5 = [(MobileCalDAVPrincipal *)self deletedCalendarURLs];

  if (!v5)
  {
    v6 = objc_opt_new();
    [(MobileCalDAVPrincipal *)self setDeletedCalendarURLs:v6];
  }

  v7 = [(MobileCalDAVPrincipal *)self deletedCalendarURLs];
  [v7 removeAllObjects];

  v8 = [(MobileCalDAVPrincipal *)self calendars];
  v9 = objc_opt_new();
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v10 = v8;
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
        v16 = [v15 guid];
        [v9 setObject:v15 forKeyedSubscript:v16];
      }

      v12 = [v10 countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v12);
  }

  v45 = 0;
  v46 = 0;
  v44 = 0;
  v17 = [(MobileCalDAVPrincipal *)self refreshContext];
  v18 = [v17 changeTracker];
  v19 = [MobileCalDAVCalendar gatherCalendarChangesInPrincipal:self calendars:v9 adds:&v46 modifies:&v45 deletes:&v44 changeTracker:v18];
  v20 = v46;
  v21 = v45;
  v22 = v44;

  [(MobileCalDAVPrincipal *)self updateAddedOrModifiedSubscribedCalendars:v20];
  [(MobileCalDAVPrincipal *)self updateAddedOrModifiedSubscribedCalendars:v21];
  v23 = [(MobileCalDAVPrincipal *)self calendarChangesToClear];

  if (v23)
  {
    if (v19)
    {
      v24 = [(MobileCalDAVPrincipal *)self calendarChangesToClear];

      Count = CFArrayGetCount(v24);
      v26 = CFArrayGetCount(v19);
      Mutable = CFArrayCreateMutable(0, v26 + Count, 0);
      v54.length = CFArrayGetCount(v24);
      v54.location = 0;
      CFArrayAppendArray(Mutable, v24, v54);
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
        v34 = [(MobileCalDAVPrincipal *)self calendarHomeURL];
        v35 = [v33 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:v34];

        if (v35)
        {
          v36 = [(MobileCalDAVPrincipal *)self deletedCalendarURLs];
          [v36 addObject:v35];
        }
      }

      v30 = [v28 countByEnumeratingWithState:&v40 objects:v51 count:16];
    }

    while (v30);
  }

  v39[2](v39, self);
  v37 = *MEMORY[0x277D85DE8];
}

- (void)updateAddedOrModifiedSubscribedCalendars:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v3);
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
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)clearCalendarChanges
{
  v3 = [(MobileCalDAVPrincipal *)self calendarChangesToClear];

  if (v3)
  {
    v4 = [(MobileCalDAVPrincipal *)self calendarChangesToClear];
    v5 = [(MobileCalDAVPrincipal *)self account];
    v6 = [v5 changeTrackingID];
    v7 = [MobileCalDAVCalendar clearCalendarChanges:v4 forPrincipal:self changeTrackingClient:v6];

    if (v7)
    {
      [(MobileCalDAVPrincipal *)self setCalendarChangesToClear:0];
    }

    [(MobileCalDAVPrincipal *)self setAddedCalendars:0];
    [(MobileCalDAVPrincipal *)self setModifiedCalendars:0];
    v8 = [(MobileCalDAVPrincipal *)self deletedCalendarURLs];
    [v8 removeAllObjects];
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (id)calendarOfType:(int)a3 atURL:(id)a4 withOptions:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  if (!v9)
  {
    [MobileCalDAVPrincipal calendarOfType:a2 atURL:self withOptions:?];
  }

  v11 = 0;
  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        if (a3 == 2)
        {
          goto LABEL_21;
        }

LABEL_11:
        v12 = DALoggingwithCategory();
        v13 = *(MEMORY[0x277D03988] + 4);
        if (os_log_type_enabled(v12, v13))
        {
          v19[0] = 67109120;
          v19[1] = a3;
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

  if (a3 == 3)
  {
    v14 = MobileCalDAVNotificationCalendar;
LABEL_17:
    v15 = [[v14 alloc] initWithCalendarURL:v9 principal:self];
    goto LABEL_19;
  }

  if (a3 != 4)
  {
    if (a3 == 5)
    {
      goto LABEL_21;
    }

    goto LABEL_11;
  }

  v15 = [[MobileCalDAVSubscribedCalendar alloc] initWithCalendarURL:v9 calendar:0 properties:0 principal:self];
LABEL_19:
  v11 = v15;
  if (v15)
  {
    v16 = [(MobileCalDAVPrincipal *)self account];
    [v16 addCalendar:v11];

    [(MobileCalDAVPrincipal *)self setCalendarsAreDirty:1];
  }

LABEL_21:

  v17 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)removeCalendar:(id)a3
{
  v4 = a3;
  [(MobileCalDAVPrincipal *)self setCalendarsAreDirty:1];
  v5 = [(MobileCalDAVPrincipal *)self account];
  [v5 removeCalendar:v4];
}

- (void)removecalendarWithURL:(id)a3
{
  v4 = a3;
  [(MobileCalDAVPrincipal *)self setCalendarsAreDirty:1];
  v5 = [(MobileCalDAVPrincipal *)self account];
  [v5 removeCalendarWithURL:v4];
}

- (NSDictionary)calendarUserAddressesPerCalendar
{
  v2 = [(NSMutableDictionary *)self->_calendarUserAddressesPerCalendar copy];

  return v2;
}

- (id)preferredCalendarUserAddressesForCalendar:(id)a3
{
  calendarUserAddressesPerCalendar = self->_calendarUserAddressesPerCalendar;
  v4 = [a3 guid];
  v5 = [(NSMutableDictionary *)calendarUserAddressesPerCalendar objectForKeyedSubscript:v4];

  return v5;
}

- (void)removePreferredCalendarUserAddressesForCalendarWithIdentifier:(id)a3
{
  v5 = a3;
  v4 = [(NSMutableDictionary *)self->_calendarUserAddressesPerCalendar objectForKey:?];

  if (v4)
  {
    [(NSMutableDictionary *)self->_calendarUserAddressesPerCalendar removeObjectForKey:v5];
    [(MobileCalDAVPrincipal *)self setIsDirty:1];
  }
}

- (void)setPreferredCalendarUserAddresses:(id)a3 forCalendar:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(MobileCalDAVPrincipal *)self calendarUserAddressesPerCalendar];
  v8 = [v6 guid];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (![(MobileCalDAVPrincipal *)self _userAddressSet:v9 isEqualToSet:v12])
  {
    [(MobileCalDAVPrincipal *)self setIsDirty:1];
    calendarUserAddressesPerCalendar = self->_calendarUserAddressesPerCalendar;
    v11 = [v6 guid];
    [(NSMutableDictionary *)calendarUserAddressesPerCalendar setObject:v12 forKeyedSubscript:v11];
  }
}

- (void)setSupportsPush:(BOOL)a3
{
  if ([(MobileCalDAVPrincipal *)self supportsPush]!= a3)
  {
    self->_supportsPush = a3;

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
    v3 = [(MobileCalDAVPrincipal *)self calendars];
    v2 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v2)
    {
      v4 = *v9;
      while (2)
      {
        for (i = 0; i != v2; ++i)
        {
          if (*v9 != v4)
          {
            objc_enumerationMutation(v3);
          }

          if ([*(*(&v8 + 1) + 8 * i) isDirty])
          {
            LOBYTE(v2) = 1;
            goto LABEL_13;
          }
        }

        v2 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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

- (void)setIsDirty:(BOOL)a3
{
  v10 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v5, v6))
    {
      v8 = 138412290;
      v9 = self;
      _os_log_impl(&dword_2484B2000, v5, v6, "Marking principal as dirty: %@", &v8, 0xCu);
    }
  }

  self->_isDirty = a3;
  v7 = *MEMORY[0x277D85DE8];
}

- (NSString)APSTopic
{
  v2 = [(MobileCalDAVPrincipal *)self pushTransports];
  v3 = [v2 objectForKeyedSubscript:@"APSD"];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CFDDF8]];

  return v4;
}

- (NSURL)APSSubscriptionURL
{
  v3 = [(MobileCalDAVPrincipal *)self pushTransports];
  v4 = [v3 objectForKeyedSubscript:@"APSD"];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CFDE80]];

  if (v5)
  {
    v6 = [(MobileCalDAVPrincipal *)self account];
    v7 = [MEMORY[0x277CBEBC0] URLWithString:v5];
    v8 = [v6 addUsernameToURL:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSString)APSEnv
{
  v2 = [(MobileCalDAVPrincipal *)self pushTransports];
  v3 = [v2 objectForKeyedSubscript:@"APSD"];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CFDF60]];

  v5 = [v4 uppercaseString];
  if ([v5 isEqualToString:@"PRODUCTION"])
  {
    v6 = @"production";
LABEL_6:

    v4 = v6;
    goto LABEL_7;
  }

  if ([v5 isEqualToString:@"SANDBOX"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"DEVELOPMENT"))
  {
    v6 = @"development";
    goto LABEL_6;
  }

  if ([v5 isEqualToString:@"DEV"])
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
    v6 = [(MobileCalDAVPrincipal *)self preferredCalendarUserAddresses];
    v7 = [v5 preferredAddress:v6];
    v8 = [v4 URLWithString:v7];
    v9 = self->_preferredCalendarUserAddress;
    self->_preferredCalendarUserAddress = v8;

    preferredCalendarUserAddress = self->_preferredCalendarUserAddress;
    if (!preferredCalendarUserAddress)
    {
      v10 = [(MobileCalDAVPrincipal *)self account];
      v11 = [v10 principalURL];
      v12 = self->_preferredCalendarUserAddress;
      self->_preferredCalendarUserAddress = v11;

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
    v3 = [(MobileCalDAVPrincipal *)self preferredCalendarUserAddress];
    v4 = [v3 scheme];
    v5 = [v4 hasPrefix:@"mailto"];

    if (v5)
    {
      v6 = [(MobileCalDAVPrincipal *)self preferredCalendarUserAddress];
      v7 = v6;
LABEL_14:
      v15 = [v6 resourceSpecifier];
      preferredCalendarEmailAddress = self->_preferredCalendarEmailAddress;
      self->_preferredCalendarEmailAddress = v15;
    }

    else
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v7 = [(MobileCalDAVPrincipal *)self calendarUserAddresses];
      v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v20 + 1) + 8 * i);
            v13 = [v12 scheme];
            v14 = [v13 hasPrefix:@"mailto"];

            if (v14)
            {
              v6 = v12;
              goto LABEL_14;
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
    v3 = [(MobileCalDAVPrincipal *)self preferredCalendarUserAddress];
    v4 = [v3 scheme];
    v5 = [v4 hasPrefix:@"tel"];

    if (v5)
    {
      v6 = [(MobileCalDAVPrincipal *)self preferredCalendarUserAddress];
      v7 = v6;
LABEL_14:
      v15 = [v6 resourceSpecifier];
      preferredCalendarPhoneNumber = self->_preferredCalendarPhoneNumber;
      self->_preferredCalendarPhoneNumber = v15;
    }

    else
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v7 = [(MobileCalDAVPrincipal *)self calendarUserAddresses];
      v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v20 + 1) + 8 * i);
            v13 = [v12 scheme];
            v14 = [v13 hasPrefix:@"tel"];

            if (v14)
            {
              v6 = v12;
              goto LABEL_14;
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
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

- (BOOL)hasCalendarUserAddress:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [(MobileCalDAVPrincipal *)self calendarUserAddresses];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = *v18;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v17 + 1) + 8 * i) absoluteString];
        v10 = [v9 da_removeSlashIfNeeded];
        v11 = [v10 lowercaseString];

        v12 = [v4 absoluteString];
        v13 = [v12 da_removeSlashIfNeeded];
        v14 = [v13 lowercaseString];

        LOBYTE(v12) = [v11 isEqualToString:v14];
        if (v12)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
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

- (BOOL)calendarUserAddressIsEquivalentToURL:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [(MobileCalDAVPrincipal *)self calendarUserAddresses];
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = [*(*(&v13 + 1) + 8 * i) absoluteString];
          v10 = [MobileCalDAVPrincipal compareAddressURL:v4 localString:v9];

          if (v10)
          {
            LOBYTE(v6) = 1;
            goto LABEL_12;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  v2 = [(MobileCalDAVPrincipal *)self account];
  v3 = [v2 taskManager];

  return v3;
}

- (BOOL)useSSL
{
  v2 = [(MobileCalDAVPrincipal *)self account];
  v3 = [v2 backingAccount];
  v4 = [v3 useSSL];

  return v4;
}

- (id)scheme
{
  v2 = [(MobileCalDAVPrincipal *)self account];
  v3 = [v2 backingAccount];
  v4 = [v3 scheme];

  return v4;
}

- (id)host
{
  v2 = [(MobileCalDAVPrincipal *)self account];
  v3 = [v2 backingAccount];
  v4 = [v3 host];

  return v4;
}

- (int64_t)port
{
  v2 = [(MobileCalDAVPrincipal *)self account];
  v3 = [v2 backingAccount];
  v4 = [v3 port];

  return v4;
}

- (void)noteHomeSetOnDifferentHost:(id)a3
{
  v4 = a3;
  v5 = [(MobileCalDAVPrincipal *)self account];
  [v5 noteHomeSetOnDifferentHost:v4];
}

- (id)user
{
  v2 = [(MobileCalDAVPrincipal *)self account];
  v3 = [v2 backingAccount];
  v4 = [v3 user];

  return v4;
}

- (id)password
{
  v2 = [(MobileCalDAVPrincipal *)self account];
  v3 = [v2 backingAccount];
  v4 = [v3 password];

  return v4;
}

- (id)identityPersist
{
  v2 = [(MobileCalDAVPrincipal *)self account];
  v3 = [v2 backingAccount];
  v4 = [v3 identityPersist];

  return v4;
}

- (id)accountID
{
  v2 = [(MobileCalDAVPrincipal *)self account];
  v3 = [v2 accountID];

  return v3;
}

- (id)additionalHeaderValues
{
  v2 = [(MobileCalDAVPrincipal *)self account];
  v3 = [v2 backingAccount];
  v4 = [v3 additionalHeaderValues];

  return v4;
}

- (id)customConnectionProperties
{
  v2 = [(MobileCalDAVPrincipal *)self account];
  v3 = [v2 backingAccount];
  v4 = [v3 customConnectionProperties];

  return v4;
}

- (id)oauth2Token
{
  v2 = [(MobileCalDAVPrincipal *)self account];
  v3 = [v2 backingAccount];
  v4 = [v3 oauth2Token];

  return v4;
}

- (void)promptUserForNewCoreDAVPasswordWithCompletionBlock:(id)a3
{
  v4 = a3;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __76__MobileCalDAVPrincipal_promptUserForNewCoreDAVPasswordWithCompletionBlock___block_invoke;
  v13[3] = &unk_278F17500;
  v14 = v4;
  v5 = v4;
  v6 = MEMORY[0x24C1D0520](v13);
  v7 = [(MobileCalDAVPrincipal *)self account];
  v8 = [v7 backingAccount];
  v9 = [v8 isValidating];

  if (v9)
  {
    v6[2](v6, 2, 0);
  }

  else
  {
    v10 = [(MobileCalDAVPrincipal *)self account];
    v11 = [v10 backingAccount];
    v12 = dataaccess_get_global_queue();
    [v11 dropAssertionsAndRenewCredentialsInQueue:v12 withHandler:v6];
  }
}

void __76__MobileCalDAVPrincipal_promptUserForNewCoreDAVPasswordWithCompletionBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  (*(*(a1 + 32) + 16))();
}

- (id)clientToken
{
  v2 = [(MobileCalDAVPrincipal *)self account];
  v3 = [v2 backingAccount];
  v4 = [v3 clientToken];

  return v4;
}

- (void)clientTokenRequestedByServer
{
  v3 = [(MobileCalDAVPrincipal *)self account];
  v2 = [v3 backingAccount];
  [v2 clientTokenRequestedByServer];
}

- (void)webLoginRequestedAtURL:(id)a3 reasonString:(id)a4 inQueue:(id)a5 completionBlock:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v15 = [(MobileCalDAVPrincipal *)self account];
  v14 = [v15 backingAccount];
  [v14 webLoginRequestedAtURL:v13 reasonString:v12 inQueue:v11 completionBlock:v10];
}

- (BOOL)handleTrustChallenge:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MobileCalDAVPrincipal *)self account];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 backingAccount];
    [v10 handleTrustChallenge:v6 completionHandler:v7];
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

    (*(v7 + 2))(v7, 2, 0);
  }

  return 0;
}

- (BOOL)shouldFailAllTasks
{
  v2 = [(MobileCalDAVPrincipal *)self account];
  v3 = [v2 shouldFailAllTasks];

  return v3;
}

- (__CFURLStorageSession)copyStorageSession
{
  v2 = [(MobileCalDAVPrincipal *)self account];
  v3 = [v2 backingAccount];
  v4 = [v3 copyStorageSession];

  return v4;
}

- (BOOL)shouldSendClientInfoHeaderForURL:(id)a3
{
  v4 = a3;
  v5 = [(MobileCalDAVPrincipal *)self account];
  if (objc_opt_respondsToSelector())
  {
    v6 = [(MobileCalDAVPrincipal *)self account];
    v7 = [v6 shouldSendClientInfoHeaderForURL:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)shouldCompressRequests
{
  v3 = [MEMORY[0x277D03910] compressRequests];
  if (v3)
  {
    v4 = [(MobileCalDAVPrincipal *)self account];
    v5 = [v4 serverVersion];
    v6 = [v5 supportsRequestCompression];

    LOBYTE(v3) = v6;
  }

  return v3;
}

- (BOOL)shouldUseOpportunisticSockets
{
  v2 = [(MobileCalDAVPrincipal *)self account];
  v3 = [v2 backingAccount];
  v4 = [v3 shouldUseOpportunisticSockets];

  return v4;
}

- (void)noteSuccessfulRequestWithNumDownloadedElements:(int64_t)a3 numUploadedElements:(int64_t)a4
{
  v8 = [(MobileCalDAVPrincipal *)self account];
  v6 = [v8 backingAccount];
  v7 = [v6 statusReport];
  [v7 noteSuccessfulRequestWithNumDownloadedElements:a3 numUploadedElements:a4];
}

- (void)noteFailedNetworkRequest
{
  v4 = [(MobileCalDAVPrincipal *)self account];
  v2 = [v4 backingAccount];
  v3 = [v2 statusReport];
  [v3 noteFailedNetworkRequest];
}

- (void)noteFailedProtocolRequest
{
  v4 = [(MobileCalDAVPrincipal *)self account];
  v2 = [v4 backingAccount];
  v3 = [v2 statusReport];
  [v3 noteFailedProtocolRequest];
}

- (void)noteTimeSpentInNetworking:(double)a3
{
  v6 = [(MobileCalDAVPrincipal *)self account];
  v4 = [v6 backingAccount];
  v5 = [v4 statusReport];
  [v5 noteTimeSpentInNetworking:a3];
}

- (NSDictionary)contextDictionary
{
  v2 = [(MobileCalDAVPrincipal *)self account];
  v3 = [v2 contextDictionary];

  return v3;
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