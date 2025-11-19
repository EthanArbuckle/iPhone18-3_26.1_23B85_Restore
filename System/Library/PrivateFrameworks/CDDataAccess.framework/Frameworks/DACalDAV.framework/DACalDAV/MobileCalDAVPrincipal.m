@interface MobileCalDAVPrincipal
+ (BOOL)compareAddressURL:(id)a3 localString:(id)a4;
- (BOOL)_userAddressSet:(id)a3 isEqualToSet:(id)a4;
- (BOOL)calendarUserAddressIsEquivalentToURL:(id)a3;
- (BOOL)calendarsAreDirty;
- (BOOL)clearCalendarChanges;
- (BOOL)handleTrustChallenge:(id)a3;
- (BOOL)handleTrustChallenge:(id)a3 completionHandler:(id)a4;
- (BOOL)hasCalendarUserAddress:(id)a3;
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
- (id)rem_changeTracking;
- (id)scheme;
- (id)user;
- (int64_t)port;
- (void)clear_rem_changeTracking;
- (void)clientTokenRequestedByServer;
- (void)noteFailedNetworkRequest;
- (void)noteFailedProtocolRequest;
- (void)noteHomeSetOnDifferentHost:(id)a3;
- (void)noteSuccessfulRequestWithNumDownloadedElements:(int64_t)a3 numUploadedElements:(int64_t)a4;
- (void)noteTimeSpentInNetworking:(double)a3;
- (void)prepareCalendarsForSyncWithCompletionBlock:(id)a3;
- (void)promptUserForNewCoreDAVPasswordWithCompletionBlock:(id)a3;
- (void)removeCalendar:(id)a3;
- (void)removecalendarWithURL:(id)a3;
- (void)setCalendarHomePushKey:(id)a3;
- (void)setCalendarHomeSyncToken:(id)a3;
- (void)setCalendarHomeURL:(id)a3;
- (void)setCanCreateCalendars:(BOOL)a3;
- (void)setDefaultCalendarURL:(id)a3;
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
- (void)webLoginRequestedAtURL:(id)a3 reasonString:(id)a4 inQueue:(id)a5 completionBlock:(id)a6;
@end

@implementation MobileCalDAVPrincipal

+ (BOOL)compareAddressURL:(id)a3 localString:(id)a4
{
  v5 = a3;
  v6 = 0;
  if (v5 && a4)
  {
    v7 = MEMORY[0x277CBEBC0];
    v8 = a4;
    v9 = [v7 URLWithString:v8];
    v10 = [v5 absoluteString];
    v11 = [v10 da_removeSlashIfNeeded];
    v12 = [v8 da_removeSlashIfNeeded];

    v13 = [v11 caseInsensitiveCompare:v12];
    if (!v13)
    {
      v6 = 1;
LABEL_32:

      goto LABEL_33;
    }

    v14 = [v5 relativePath];
    v15 = [v14 da_removeSlashIfNeeded];

    v16 = [v9 relativePath];
    v17 = [v16 da_removeSlashIfNeeded];

    if (!v15 || v15 == v17 || [v15 caseInsensitiveCompare:v17])
    {
      v18 = [v9 path];
      v19 = [v5 path];
      v20 = [v18 isEqualToString:v19];

      if (v20)
      {
        v21 = [v9 port];
        v22 = [v5 port];
        v23 = v22;
        if (v21)
        {
          if (v22 && ([v21 isEqualToNumber:v22] & 1) != 0)
          {
LABEL_11:
            v24 = [v9 host];
            v25 = [v5 host];
            if ([v24 isEqualToString:v25])
            {
LABEL_12:
              v6 = 1;
LABEL_29:

              goto LABEL_30;
            }

            v26 = [v24 length];
            v27 = [v25 length];
            if (v26 >= v27)
            {
              v28 = v25;
            }

            else
            {
              v28 = v24;
            }

            if (v26 >= v27)
            {
              v29 = v24;
            }

            else
            {
              v29 = v25;
            }

            v30 = v28;
            v31 = v29;
            if ([v30 rangeOfString:@"."] == 0x7FFFFFFFFFFFFFFFLL)
            {
              v33 = [v31 hasPrefix:v30];

              if (v33)
              {
                goto LABEL_12;
              }
            }

            else
            {
            }

            v6 = 0;
            goto LABEL_29;
          }
        }

        else if (!v22)
        {
          goto LABEL_11;
        }

        v6 = 0;
LABEL_30:

        goto LABEL_31;
      }

      v6 = 0;
    }

    else
    {
      v6 = 1;
    }

LABEL_31:

    goto LABEL_32;
  }

LABEL_33:

  return v6;
}

- (MobileCalDAVPrincipal)initWithConfiguration:(id)a3 principalUID:(id)a4 account:(id)a5
{
  v137 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v131.receiver = self;
  v131.super_class = MobileCalDAVPrincipal;
  v12 = [(MobileCalDAVPrincipal *)&v131 init];

  if (v12)
  {
    if (!v11)
    {
      [MobileCalDAVPrincipal initWithConfiguration:a2 principalUID:v12 account:?];
    }

    [(MobileCalDAVPrincipal *)v12 setAccount:v11];
    v13 = [v9 objectForKeyedSubscript:@"UID"];

    if (v13)
    {
      v14 = [v9 objectForKeyedSubscript:@"UID"];
      uid = v12->_uid;
      v12->_uid = v14;
    }

    if (v10)
    {
      v16 = v12->_uid;
      if (!v16 || ![(NSString *)v16 isEqualToString:v10])
      {
        v17 = DALoggingwithCategory();
        v18 = *(MEMORY[0x277CF3AF0] + 4);
        if (os_log_type_enabled(v17, v18))
        {
          v19 = v12->_uid;
          *buf = 138543618;
          v134 = v19;
          v135 = 2114;
          v136 = v10;
          _os_log_impl(&dword_242490000, v17, v18, "Principal configuration UID (%{public}@) doesn't match provided UID (%{public}@). Using the provided UID.", buf, 0x16u);
        }

        objc_storeStrong(&v12->_uid, a4);
      }
    }

    if (!v12->_uid)
    {
      v20 = [MEMORY[0x277CCACA8] da_newGUID];
      v21 = v12->_uid;
      v12->_uid = v20;
    }

    v12->_isWritable = 1;
    v12->_shouldRefreshPrincipalSearchProperties = 1;
    v12->_canCreateCalendars = 1;
    v22 = [v9 objectForKeyedSubscript:{@"PreferredCalendarUserAddresses", v11}];

    if (v22)
    {
      v23 = v10;
      v24 = objc_opt_new();
      v127 = 0u;
      v128 = 0u;
      v129 = 0u;
      v130 = 0u;
      v25 = [v9 objectForKeyedSubscript:@"PreferredCalendarUserAddresses"];
      v26 = [v25 countByEnumeratingWithState:&v127 objects:v132 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v128;
        do
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v128 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = [MEMORY[0x277CF6FF8] unpackCalDAVUserAdress:*(*(&v127 + 1) + 8 * i)];
            [v24 addObject:v30];
          }

          v27 = [v25 countByEnumeratingWithState:&v127 objects:v132 count:16];
        }

        while (v27);
      }

      objc_storeStrong(&v12->_preferredCalendarUserAddresses, v24);
      v10 = v23;
    }

    v31 = objc_opt_new();
    calendarUserAddressesPerCalendar = v12->_calendarUserAddressesPerCalendar;
    v12->_calendarUserAddressesPerCalendar = v31;

    v33 = [v9 objectForKeyedSubscript:@"PreferredCalendarUserAddressesPerCalendar"];
    if (v33)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v125[0] = MEMORY[0x277D85DD0];
        v125[1] = 3221225472;
        v125[2] = __68__MobileCalDAVPrincipal_initWithConfiguration_principalUID_account___block_invoke;
        v125[3] = &unk_278D4F4D8;
        v126 = v12;
        [v33 enumerateKeysAndObjectsUsingBlock:v125];
      }
    }

    v11 = v124;
    v34 = [v124 backingAccountInfo];
    v35 = [v34 parentAccount];
    v36 = [v35 accountType];
    v37 = [v36 identifier];
    v38 = [v37 isEqualToString:*MEMORY[0x277CB8BA0]];

    if (v38)
    {
      v39 = [objc_alloc(MEMORY[0x277CF0188]) initWithIdentifier:@"CardDAViCloudDaemonAccount"];
      appleIDSession = v12->_appleIDSession;
      v12->_appleIDSession = v39;
    }

    v41 = [v9 objectForKeyedSubscript:@"FullName"];

    if (v41)
    {
      v42 = [v9 objectForKeyedSubscript:@"FullName"];
      fullName = v12->_fullName;
      v12->_fullName = v42;
    }

    v44 = [v9 objectForKeyedSubscript:@"CalendarHomeURL"];

    if (v44)
    {
      v45 = MEMORY[0x277CBEBC0];
      v46 = [v9 objectForKeyedSubscript:@"CalendarHomeURL"];
      v47 = [v45 URLWithString:v46];
      calendarHomeURL = v12->_calendarHomeURL;
      v12->_calendarHomeURL = v47;
    }

    v49 = [v9 objectForKeyedSubscript:@"PrincipalPath"];

    if (v49)
    {
      v50 = [v9 objectForKeyedSubscript:@"PrincipalPath"];
      principalPath = v12->_principalPath;
      v12->_principalPath = v50;
    }

    v52 = [v9 objectForKeyedSubscript:@"DefaultCalendarURL"];

    if (v52)
    {
      v53 = MEMORY[0x277CBEBC0];
      v54 = [v9 objectForKeyedSubscript:@"DefaultCalendarURL"];
      v55 = [v53 URLWithString:v54];
      defaultCalendarURL = v12->_defaultCalendarURL;
      v12->_defaultCalendarURL = v55;
    }

    v57 = [v9 objectForKeyedSubscript:@"NotificationCollectionURL"];

    if (v57)
    {
      v58 = MEMORY[0x277CBEBC0];
      v59 = [v9 objectForKeyedSubscript:@"NotificationCollectionURL"];
      v60 = [v58 URLWithString:v59];
      notificationCollectionURL = v12->_notificationCollectionURL;
      v12->_notificationCollectionURL = v60;
    }

    v62 = [v9 objectForKeyedSubscript:@"NotificationCollectionCTag"];

    if (v62)
    {
      v63 = [v9 objectForKeyedSubscript:@"NotificationCollectionCTag"];
      notificationCollectionCTag = v12->_notificationCollectionCTag;
      v12->_notificationCollectionCTag = v63;
    }

    v65 = [v9 objectForKeyedSubscript:@"InboxURL"];

    if (v65)
    {
      v66 = MEMORY[0x277CBEBC0];
      v67 = [v9 objectForKeyedSubscript:@"InboxURL"];
      v68 = [v66 URLWithString:v67];
      inboxURL = v12->_inboxURL;
      v12->_inboxURL = v68;
    }

    v70 = [v9 objectForKeyedSubscript:@"InboxCTag"];

    if (v70)
    {
      v71 = [v9 objectForKeyedSubscript:@"InboxCTag"];
      inboxCTag = v12->_inboxCTag;
      v12->_inboxCTag = v71;
    }

    v73 = [v9 objectForKeyedSubscript:@"OutboxURL"];

    if (v73)
    {
      v74 = MEMORY[0x277CBEBC0];
      v75 = [v9 objectForKeyedSubscript:@"OutboxURL"];
      v76 = [v74 URLWithString:v75];
      outboxURL = v12->_outboxURL;
      v12->_outboxURL = v76;
    }

    v78 = [v9 objectForKeyedSubscript:@"DropBoxURL"];

    if (v78)
    {
      v79 = MEMORY[0x277CBEBC0];
      v80 = [v9 objectForKeyedSubscript:@"DropBoxURL"];
      v81 = [v79 URLWithString:v80];
      dropBoxURL = v12->_dropBoxURL;
      v12->_dropBoxURL = v81;
    }

    v83 = [v9 objectForKeyedSubscript:@"NotificationsURLString"];

    if (v83)
    {
      v84 = [v9 objectForKeyedSubscript:@"NotificationsURLString"];
      notificationURLString = v12->_notificationURLString;
      v12->_notificationURLString = v84;
    }

    v86 = [v9 objectForKeyedSubscript:@"PushTransports"];

    if (v86)
    {
      v87 = [v9 objectForKeyedSubscript:@"PushTransports"];
      pushTransports = v12->_pushTransports;
      v12->_pushTransports = v87;
    }

    v89 = [v9 objectForKeyedSubscript:@"CalendarHomePushKey"];

    if (v89)
    {
      v90 = [v9 objectForKeyedSubscript:@"CalendarHomePushKey"];
      calendarHomePushKey = v12->_calendarHomePushKey;
      v12->_calendarHomePushKey = v90;
    }

    v92 = [v9 objectForKeyedSubscript:@"Delegate"];

    if (v92)
    {
      v93 = [v9 objectForKeyedSubscript:@"Delegate"];
      v12->_isDelegate = [v93 BOOLValue];
    }

    v94 = [v9 objectForKeyedSubscript:@"Writable"];

    if (v94)
    {
      v95 = [v9 objectForKeyedSubscript:@"Writable"];
      v12->_isWritable = [v95 BOOLValue];
    }

    v96 = [v9 objectForKeyedSubscript:@"CanCreateCalendars"];

    if (v96)
    {
      v97 = [v9 objectForKeyedSubscript:@"CanCreateCalendars"];
      v12->_canCreateCalendars = [v97 BOOLValue];
    }

    v98 = [v9 objectForKeyedSubscript:@"Enabled"];

    if (v98)
    {
      v99 = [v9 objectForKeyedSubscript:@"Enabled"];
      v12->_isEnabled = [v99 BOOLValue];
    }

    v100 = [v9 objectForKeyedSubscript:@"ExpandPropertyReportSupported"];

    if (v100)
    {
      v101 = [v9 objectForKeyedSubscript:@"ExpandPropertyReportSupported"];
      v12->_isExpandPropertyReportSupported = [v101 BOOLValue];
    }

    v102 = [v9 objectForKeyedSubscript:@"SupportsCalendarUserSearch"];

    if (v102)
    {
      v103 = [v9 objectForKeyedSubscript:@"SupportsCalendarUserSearch"];
      v12->_supportsCalendarUserSearch = [v103 BOOLValue];
    }

    v104 = [v9 objectForKeyedSubscript:@"SupportsFreebusy"];

    if (v104)
    {
      v105 = [v9 objectForKeyedSubscript:@"SupportsFreebusy"];
      v12->_supportsFreebusy = [v105 BOOLValue];
    }

    v106 = [v9 objectForKeyedSubscript:@"SupportsSyncToken"];

    if (v106)
    {
      v107 = [v9 objectForKeyedSubscript:@"SupportsSyncToken"];
      v12->_supportsSyncToken = [v107 BOOLValue];
    }

    v108 = [v9 objectForKeyedSubscript:@"SupportsPush"];

    if (v108)
    {
      v109 = [v9 objectForKeyedSubscript:@"SupportsPush"];
      v12->_supportsPush = [v109 BOOLValue];
    }

    v110 = [v9 objectForKeyedSubscript:@"QuotaFreeBytes"];

    if (v110)
    {
      v111 = [v9 objectForKeyedSubscript:@"QuotaFreeBytes"];
      quotaFreeBytes = v12->_quotaFreeBytes;
      v12->_quotaFreeBytes = v111;
    }

    v113 = [v9 objectForKeyedSubscript:@"SupportedCalendarComponentSets"];

    if (v113)
    {
      v114 = [v9 objectForKeyedSubscript:@"SupportedCalendarComponentSets"];
      supportedCalendarComponentSets = v12->_supportedCalendarComponentSets;
      v12->_supportedCalendarComponentSets = v114;
    }

    v116 = [v9 objectForKeyedSubscript:@"PrincipalURL"];

    if (v116)
    {
      v117 = MEMORY[0x277CBEBC0];
      v118 = [v9 objectForKeyedSubscript:@"PrincipalURL"];
      v119 = [v117 URLWithString:v118];
      legacy_principalURL = v12->_legacy_principalURL;
      v12->_legacy_principalURL = v119;
    }
  }

  v121 = v12;

  v122 = *MEMORY[0x277D85DE8];
  return v121;
}

void __68__MobileCalDAVPrincipal_initWithConfiguration_principalUID_account___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = objc_opt_new();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__MobileCalDAVPrincipal_initWithConfiguration_principalUID_account___block_invoke_2;
  v9[3] = &unk_278D4F4B0;
  v10 = v7;
  v8 = v7;
  [v5 enumerateObjectsUsingBlock:v9];

  [*(*(a1 + 32) + 216) setObject:v8 forKeyedSubscript:v6];
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
    [v3 setObject:v5 forKey:@"UID"];
  }

  v6 = objc_opt_new();
  v7 = [(MobileCalDAVPrincipal *)self preferredCalendarUserAddresses];
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __38__MobileCalDAVPrincipal_configuration__block_invoke;
  v62[3] = &unk_278D4F500;
  v8 = v6;
  v63 = v8;
  [v7 enumerateObjectsUsingBlock:v62];

  if (v8)
  {
    [v3 setObject:v8 forKey:@"PreferredCalendarUserAddresses"];
  }

  v9 = objc_opt_new();
  v10 = [(MobileCalDAVPrincipal *)self calendarUserAddressesPerCalendar];
  v57 = MEMORY[0x277D85DD0];
  v58 = 3221225472;
  v59 = __38__MobileCalDAVPrincipal_configuration__block_invoke_2;
  v60 = &unk_278D4F528;
  v11 = v9;
  v61 = v11;
  [v10 enumerateKeysAndObjectsUsingBlock:&v57];

  if (v11)
  {
    [v3 setObject:v11 forKey:{@"PreferredCalendarUserAddressesPerCalendar", v57, v58, v59, v60}];
  }

  v12 = [(MobileCalDAVPrincipal *)self fullName:v57];

  if (v12)
  {
    v13 = [(MobileCalDAVPrincipal *)self fullName];
    [v3 setObject:v13 forKey:@"FullName"];
  }

  v14 = [(MobileCalDAVPrincipal *)self calendarHomeURL];

  if (v14)
  {
    v15 = [(MobileCalDAVPrincipal *)self calendarHomeURL];
    v16 = [v15 absoluteString];
    [v3 setObject:v16 forKey:@"CalendarHomeURL"];
  }

  v17 = [(MobileCalDAVPrincipal *)self principalPath];

  if (v17)
  {
    v18 = [(MobileCalDAVPrincipal *)self principalPath];
    [v3 setObject:v18 forKey:@"PrincipalPath"];
  }

  v19 = [(MobileCalDAVPrincipal *)self defaultCalendarURL];

  if (v19)
  {
    v20 = [(MobileCalDAVPrincipal *)self defaultCalendarURL];
    v21 = [v20 absoluteString];
    [v3 setObject:v21 forKey:@"DefaultCalendarURL"];
  }

  v22 = [(MobileCalDAVPrincipal *)self notificationCollectionURL];

  if (v22)
  {
    v23 = [(MobileCalDAVPrincipal *)self notificationCollectionURL];
    v24 = [v23 absoluteString];
    [v3 setObject:v24 forKey:@"NotificationCollectionURL"];
  }

  v25 = [(MobileCalDAVPrincipal *)self notificationCollectionCTag];

  if (v25)
  {
    v26 = [(MobileCalDAVPrincipal *)self notificationCollectionCTag];
    [v3 setObject:v26 forKey:@"NotificationCollectionCTag"];
  }

  v27 = [(MobileCalDAVPrincipal *)self inboxURL];

  if (v27)
  {
    v28 = [(MobileCalDAVPrincipal *)self inboxURL];
    v29 = [v28 absoluteString];
    [v3 setObject:v29 forKey:@"InboxURL"];
  }

  v30 = [(MobileCalDAVPrincipal *)self inboxCTag];

  if (v30)
  {
    v31 = [(MobileCalDAVPrincipal *)self inboxCTag];
    [v3 setObject:v31 forKey:@"InboxCTag"];
  }

  v32 = [(MobileCalDAVPrincipal *)self outboxURL];

  if (v32)
  {
    v33 = [(MobileCalDAVPrincipal *)self outboxURL];
    v34 = [v33 absoluteString];
    [v3 setObject:v34 forKey:@"OutboxURL"];
  }

  v35 = [(MobileCalDAVPrincipal *)self dropBoxURL];

  if (v35)
  {
    v36 = [(MobileCalDAVPrincipal *)self dropBoxURL];
    v37 = [v36 absoluteString];
    [v3 setObject:v37 forKey:@"DropBoxURL"];
  }

  v38 = [(MobileCalDAVPrincipal *)self notificationURLString];

  if (v38)
  {
    v39 = [(MobileCalDAVPrincipal *)self notificationURLString];
    [v3 setObject:v39 forKey:@"NotificationsURLString"];
  }

  v40 = [(MobileCalDAVPrincipal *)self pushTransports];

  if (v40)
  {
    v41 = [(MobileCalDAVPrincipal *)self pushTransports];
    [v3 setObject:v41 forKey:@"PushTransports"];
  }

  v42 = [(MobileCalDAVPrincipal *)self calendarHomePushKey];

  if (v42)
  {
    v43 = [(MobileCalDAVPrincipal *)self calendarHomePushKey];
    [v3 setObject:v43 forKey:@"CalendarHomePushKey"];
  }

  v44 = [MEMORY[0x277CCABB0] numberWithBool:{-[MobileCalDAVPrincipal isDelegate](self, "isDelegate")}];
  [v3 setObject:v44 forKey:@"Delegate"];

  v45 = [MEMORY[0x277CCABB0] numberWithBool:{-[MobileCalDAVPrincipal isWritable](self, "isWritable")}];
  [v3 setObject:v45 forKey:@"Writable"];

  v46 = [MEMORY[0x277CCABB0] numberWithBool:{-[MobileCalDAVPrincipal canCreateCalendars](self, "canCreateCalendars")}];
  [v3 setObject:v46 forKey:@"CanCreateCalendars"];

  v47 = [MEMORY[0x277CCABB0] numberWithBool:{-[MobileCalDAVPrincipal isEnabled](self, "isEnabled")}];
  [v3 setObject:v47 forKey:@"Enabled"];

  v48 = [MEMORY[0x277CCABB0] numberWithBool:{-[MobileCalDAVPrincipal isExpandPropertyReportSupported](self, "isExpandPropertyReportSupported")}];
  [v3 setObject:v48 forKey:@"ExpandPropertyReportSupported"];

  v49 = [MEMORY[0x277CCABB0] numberWithBool:{-[MobileCalDAVPrincipal supportsCalendarUserSearch](self, "supportsCalendarUserSearch")}];
  [v3 setObject:v49 forKey:@"SupportsCalendarUserSearch"];

  v50 = [MEMORY[0x277CCABB0] numberWithBool:{-[MobileCalDAVPrincipal supportsFreebusy](self, "supportsFreebusy")}];
  [v3 setObject:v50 forKey:@"SupportsFreebusy"];

  v51 = [MEMORY[0x277CCABB0] numberWithBool:{-[MobileCalDAVPrincipal supportsSyncToken](self, "supportsSyncToken")}];
  [v3 setObject:v51 forKey:@"SupportsSyncToken"];

  v52 = [MEMORY[0x277CCABB0] numberWithBool:{-[MobileCalDAVPrincipal supportsPush](self, "supportsPush")}];
  [v3 setObject:v52 forKey:@"SupportsPush"];

  v53 = [(MobileCalDAVPrincipal *)self quotaFreeBytes];

  if (v53)
  {
    v54 = [(MobileCalDAVPrincipal *)self quotaFreeBytes];
    [v3 setObject:v54 forKey:@"QuotaFreeBytes"];
  }

  supportedCalendarComponentSets = self->_supportedCalendarComponentSets;
  if (supportedCalendarComponentSets)
  {
    [v3 setObject:supportedCalendarComponentSets forKey:@"SupportedCalendarComponentSets"];
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
  v9[3] = &unk_278D4F500;
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
      v11[3] = &unk_278D4F550;
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
  v8[3] = &unk_278D4F550;
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
  v3 = [(MobileCalDAVPrincipal *)self daAccount];
  v4 = [v3 addUsernameToURL:self->_calendarHomeURL];

  return v4;
}

- (void)setCalendarHomeURL:(id)a3
{
  v4 = a3;
  v5 = [(MobileCalDAVPrincipal *)self daAccount];
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
  v2 = [(MobileCalDAVPrincipal *)self daAccount];
  v3 = [v2 calendarHomeSyncToken];

  return v3;
}

- (void)setCalendarHomeSyncToken:(id)a3
{
  v6 = a3;
  v4 = [(MobileCalDAVPrincipal *)self calendarHomeSyncToken];
  if (v4 != v6 && ([v6 isEqualToString:v4] & 1) == 0)
  {
    v5 = [(MobileCalDAVPrincipal *)self daAccount];
    [v5 setCalendarHomeSyncToken:v6];

    [(MobileCalDAVPrincipal *)self setCalendarsAreDirty:1];
  }
}

- (NSDictionary)subCalPropertiesByURL
{
  v2 = [(MobileCalDAVPrincipal *)self daAccount];
  v3 = [v2 objectForKeyedSubscript:@"SubscribedCalendars"];

  return v3;
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
  v3 = [(MobileCalDAVPrincipal *)self daAccount];
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
    v6 = [(MobileCalDAVPrincipal *)self daAccount];
    [(__CFString *)v6 setPrincipalURL:v10];
  }
}

- (NSURL)defaultCalendarURL
{
  v3 = [(MobileCalDAVPrincipal *)self daAccount];
  v4 = [v3 addUsernameToURL:self->_defaultCalendarURL];

  return v4;
}

- (void)setDefaultCalendarURL:(id)a3
{
  v4 = a3;
  v5 = [(MobileCalDAVPrincipal *)self daAccount];
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
  v3 = [(MobileCalDAVPrincipal *)self daAccount];
  v4 = [v3 addUsernameToURL:self->_notificationCollectionURL];

  return v4;
}

- (void)setNotificationCollectionURL:(id)a3
{
  v4 = a3;
  v5 = [(MobileCalDAVPrincipal *)self daAccount];
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
  v3 = [(MobileCalDAVPrincipal *)self daAccount];
  v4 = [v3 addUsernameToURL:self->_inboxURL];

  return v4;
}

- (void)setInboxURL:(id)a3
{
  v4 = a3;
  v5 = [(MobileCalDAVPrincipal *)self daAccount];
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
  v3 = [(MobileCalDAVPrincipal *)self daAccount];
  v4 = [v3 addUsernameToURL:self->_outboxURL];

  return v4;
}

- (void)setOutboxURL:(id)a3
{
  v4 = a3;
  v5 = [(MobileCalDAVPrincipal *)self daAccount];
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
  v3 = [(MobileCalDAVPrincipal *)self daAccount];
  v4 = [v3 addUsernameToURL:self->_dropBoxURL];

  return v4;
}

- (void)setDropBoxURL:(id)a3
{
  v4 = a3;
  v5 = [(MobileCalDAVPrincipal *)self daAccount];
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
  v2 = [(MobileCalDAVPrincipal *)self daAccount];
  v3 = [v2 wasMigrated];

  return v3;
}

- (BOOL)isEnabledForTodos
{
  v3 = [(MobileCalDAVPrincipal *)self daAccount];
  if ([v3 isEnabledForDataclass:*MEMORY[0x277CB9190]])
  {
    v4 = [(MobileCalDAVPrincipal *)self daAccount];
    v5 = [v4 supportsReminders];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)supportsExtendedCalendarQuery
{
  v2 = [(MobileCalDAVPrincipal *)self daAccount];
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
  v3 = [(MobileCalDAVPrincipal *)self daAccount];
  v4 = [v3 shouldFilterEventSyncTimeRange];

  if (v4)
  {
    v5 = [(MobileCalDAVPrincipal *)self daAccount];
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
  v3 = [(MobileCalDAVPrincipal *)self daAccount];
  if ([v3 shouldFilterEventSyncTimeRange])
  {
    v4 = [(MobileCalDAVPrincipal *)self daAccount];
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
  v2 = [(MobileCalDAVPrincipal *)self daAccount];
  v3 = [v2 refreshContext];

  return v3;
}

- (NSSet)calendars
{
  v2 = [(MobileCalDAVPrincipal *)self daAccount];
  v3 = [v2 calendars];

  return v3;
}

- (id)rem_changeTracking
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  rem_changeTracking = v2->_rem_changeTracking;
  if (!rem_changeTracking)
  {
    v4 = DALoggingwithCategory();
    v5 = *(MEMORY[0x277CF3AF0] + 5);
    if (os_log_type_enabled(v4, v5))
    {
      v6 = [(MobileCalDAVPrincipal *)v2 daAccount];
      v7 = [v6 accountDescription];
      v20 = 138412546;
      v21 = v2;
      v22 = 2112;
      v23 = v7;
      _os_log_impl(&dword_242490000, v4, v5, "Change Tracking Helper - creating one for {principal=%@, account=%@}", &v20, 0x16u);
    }

    v8 = [MEMORY[0x277CF3AA8] sharedManager];
    v9 = [v8 rem_storeProvider];
    v10 = [v9 rem_storeForDataAccess];

    v11 = objc_alloc(MEMORY[0x277D445E0]);
    v12 = [(MobileCalDAVPrincipal *)v2 daAccount];
    v13 = [v12 rem_provideAccountInfo];
    v14 = [v11 initWithREMDAAccount:v13 clientName:*MEMORY[0x277D44540] withREMStore:v10];

    v15 = v2->_rem_changeTracking;
    v2->_rem_changeTracking = v14;

    rem_changeTracking = v2->_rem_changeTracking;
  }

  v16 = [(REMDAChangeTrackingHelper *)rem_changeTracking fetchChangesSinceLastConsumed];
  objc_sync_exit(v2);

  v17 = v2->_rem_changeTracking;
  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)clear_rem_changeTracking
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_rem_changeTracking)
  {
    v3 = DALoggingwithCategory();
    v4 = *(MEMORY[0x277CF3AF0] + 5);
    if (os_log_type_enabled(v3, v4))
    {
      v5 = [(MobileCalDAVPrincipal *)v2 daAccount];
      v6 = [v5 accountDescription];
      v9 = 138412546;
      v10 = v2;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_242490000, v3, v4, "Change Tracking Helper - marking consumed and clearing Change Tracking helper for {principal=%@, account=%@}", &v9, 0x16u);
    }

    [(REMDAChangeTrackingHelper *)v2->_rem_changeTracking markChangesConsumed];
    rem_changeTracking = v2->_rem_changeTracking;
    v2->_rem_changeTracking = 0;
  }

  objc_sync_exit(v2);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)prepareCalendarsForSyncWithCompletionBlock:(id)a3
{
  v102 = *MEMORY[0x277D85DE8];
  v73 = a3;
  v4 = [(MobileCalDAVPrincipal *)self daAccount];
  [v4 reloadCalendars];

  v5 = [(MobileCalDAVPrincipal *)self addedCalendars];

  if (!v5)
  {
    v6 = objc_opt_new();
    [(MobileCalDAVPrincipal *)self setAddedCalendars:v6];
  }

  v7 = [(MobileCalDAVPrincipal *)self modifiedCalendars];

  if (!v7)
  {
    v8 = objc_opt_new();
    [(MobileCalDAVPrincipal *)self setModifiedCalendars:v8];
  }

  v9 = [(MobileCalDAVPrincipal *)self deletedCalendarURLs];

  if (!v9)
  {
    v10 = objc_opt_new();
    [(MobileCalDAVPrincipal *)self setDeletedCalendarURLs:v10];
  }

  v11 = [(MobileCalDAVPrincipal *)self addedCalendars];
  [v11 removeAllObjects];

  v12 = [(MobileCalDAVPrincipal *)self modifiedCalendars];
  [v12 removeAllObjects];

  v13 = [(MobileCalDAVPrincipal *)self deletedCalendarURLs];
  [v13 removeAllObjects];

  v77 = self;
  v14 = [(MobileCalDAVPrincipal *)self calendars];
  v15 = objc_opt_new();
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v16 = v14;
  v17 = [v16 countByEnumeratingWithState:&v90 objects:v101 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v91;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v91 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v90 + 1) + 8 * i);
        v22 = [v21 guid];
        [v15 setObject:v21 forKeyedSubscript:v22];
      }

      v18 = [v16 countByEnumeratingWithState:&v90 objects:v101 count:16];
    }

    while (v18);
  }

  v23 = DALoggingwithCategory();
  v24 = *(MEMORY[0x277CF3AF0] + 4);
  if (os_log_type_enabled(v23, v24))
  {
    *buf = 138543362;
    v97 = v15;
    _os_log_impl(&dword_242490000, v23, v24, "prepareCalendarsForSync - prepare calendars for sync with guid-calendar-map: %{public}@", buf, 0xCu);
  }

  v72 = v16;

  v25 = self;
  v26 = [(MobileCalDAVPrincipal *)self rem_changeTracking];
  v27 = [MEMORY[0x277CBEB18] array];
  v74 = v26;
  v28 = [MobileCalDAVCalendar rem_addedCalendarsWithChangeTrackingHelper:v26 inPrincipal:self];
  v29 = DALoggingwithCategory();
  if (os_log_type_enabled(v29, v24))
  {
    *buf = 138543362;
    v97 = v28;
    _os_log_impl(&dword_242490000, v29, v24, "prepareCalendarsForSync - ADDED ReminderKit calendars: %{public}@", buf, 0xCu);
  }

  type = v24;

  v71 = v28;
  v30 = [v27 arrayByAddingObjectsFromArray:v28];

  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  obj = v30;
  v31 = [obj countByEnumeratingWithState:&v86 objects:v100 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v87;
    do
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v87 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v35 = *(*(&v86 + 1) + 8 * j);
        v36 = [v35 guid];
        v37 = [v15 objectForKeyedSubscript:v36];

        if (v37)
        {
          [v37 setWasModifiedLocally:1];
          [v37 setNeedsPublishUpdate:{objc_msgSend(v35, "needsPublishUpdate")}];
          v38 = [(MobileCalDAVPrincipal *)v25 addedCalendars];
          [v38 addObject:v37];
        }

        else
        {
          v38 = DALoggingwithCategory();
          if (os_log_type_enabled(v38, type))
          {
            v39 = [v35 guid];
            *buf = 138543618;
            v97 = v35;
            v98 = 2114;
            v99 = v39;
            _os_log_impl(&dword_242490000, v38, type, "prepareCalendarsForSync - Couldn't get a cached calendar of added calendar %{public}@ {guid: %{public}@}", buf, 0x16u);

            v25 = self;
          }
        }
      }

      v32 = [obj countByEnumeratingWithState:&v86 objects:v100 count:16];
    }

    while (v32);
  }

  v40 = [MEMORY[0x277CBEB18] array];
  v41 = [MobileCalDAVCalendar rem_modifiedCalendarsWithChangeTrackingHelper:v74 inPrincipal:v25];
  v42 = DALoggingwithCategory();
  if (os_log_type_enabled(v42, type))
  {
    *buf = 138543362;
    v97 = v41;
    _os_log_impl(&dword_242490000, v42, type, "prepareCalendarsForSync - UPDATED ReminderKit calendars: %{public}@", buf, 0xCu);
  }

  v70 = v41;
  v43 = [v40 arrayByAddingObjectsFromArray:v41];

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v44 = v43;
  v45 = [v44 countByEnumeratingWithState:&v82 objects:v95 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v83;
    do
    {
      for (k = 0; k != v46; ++k)
      {
        if (*v83 != v47)
        {
          objc_enumerationMutation(v44);
        }

        v49 = *(*(&v82 + 1) + 8 * k);
        v50 = [v49 guid];
        v51 = [v15 objectForKeyedSubscript:v50];

        if (v51)
        {
          [v51 setWasModifiedLocally:1];
          [v51 setNeedsPublishUpdate:{objc_msgSend(v49, "needsPublishUpdate")}];
          v25 = self;
          v52 = [(MobileCalDAVPrincipal *)self modifiedCalendars];
          [v52 addObject:v51];
        }

        else
        {
          v52 = DALoggingwithCategory();
          if (os_log_type_enabled(v52, type))
          {
            v53 = [v49 guid];
            *buf = 138543362;
            v97 = v53;
            _os_log_impl(&dword_242490000, v52, type, "prepareCalendarsForSync - Couldn't get a cached calendar of modified calendar {guid: %{public}@}", buf, 0xCu);
          }

          v25 = self;
        }
      }

      v46 = [v44 countByEnumeratingWithState:&v82 objects:v95 count:16];
    }

    while (v46);
  }

  v54 = [MEMORY[0x277CBEB18] array];
  v55 = [MobileCalDAVCalendar rem_deletedCalendarsWithChangeTrackingHelper:v74 inPrincipal:v25];
  v56 = DALoggingwithCategory();
  if (os_log_type_enabled(v56, type))
  {
    *buf = 138543362;
    v97 = v55;
    _os_log_impl(&dword_242490000, v56, type, "prepareCalendarsForSync - DELETED ReminderKit calendars: %{public}@", buf, 0xCu);
  }

  v69 = v55;
  v57 = [v54 arrayByAddingObjectsFromArray:v55];

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v58 = v57;
  v59 = [v58 countByEnumeratingWithState:&v78 objects:v94 count:16];
  if (v59)
  {
    v60 = v59;
    v61 = *v79;
    do
    {
      for (m = 0; m != v60; ++m)
      {
        if (*v79 != v61)
        {
          objc_enumerationMutation(v58);
        }

        v63 = *(*(&v78 + 1) + 8 * m);
        objc_opt_class();
        v64 = REMCheckedDynamicCast();
        v65 = [(MobileCalDAVPrincipal *)v25 calendarHomeURL];
        v66 = [v64 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:v65];

        if (v66)
        {
          v67 = [(MobileCalDAVPrincipal *)v25 deletedCalendarURLs];
          [v67 addObject:v66];
        }

        else
        {
          v67 = DALoggingwithCategory();
          if (os_log_type_enabled(v67, type))
          {
            *buf = 138543362;
            v97 = v64;
            _os_log_impl(&dword_242490000, v67, type, "prepareCalendarsForSync - Couldn't obtain a URL of deleted calendar {externalID: %{public}@}", buf, 0xCu);
          }

          v25 = v77;
        }
      }

      v60 = [v58 countByEnumeratingWithState:&v78 objects:v94 count:16];
    }

    while (v60);
  }

  v73[2](v73, v25);
  v68 = *MEMORY[0x277D85DE8];
}

- (BOOL)clearCalendarChanges
{
  [(MobileCalDAVPrincipal *)self clear_rem_changeTracking];
  v3 = [(MobileCalDAVPrincipal *)self addedCalendars];
  [v3 removeAllObjects];

  v4 = [(MobileCalDAVPrincipal *)self modifiedCalendars];
  [v4 removeAllObjects];

  v5 = [(MobileCalDAVPrincipal *)self deletedCalendarURLs];
  [v5 removeAllObjects];

  return 1;
}

- (id)calendarOfType:(int)a3 atURL:(id)a4 withOptions:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  if (!v9)
  {
    [MobileCalDAVPrincipal calendarOfType:a2 atURL:self withOptions:?];
  }

  v11 = 0;
  if (a3 > 2)
  {
    if (a3 != 3)
    {
      if (a3 != 4)
      {
        if (a3 == 5)
        {
          goto LABEL_26;
        }

LABEL_11:
        v12 = DALoggingwithCategory();
        v13 = *(MEMORY[0x277CF3AF0] + 4);
        if (os_log_type_enabled(v12, v13))
        {
          v25 = 67109120;
          LODWORD(v26) = a3;
          v14 = "Asked to create a calendar of a type we don't know about: %d";
          v15 = v12;
          v16 = v13;
          v17 = 8;
LABEL_24:
          _os_log_impl(&dword_242490000, v15, v16, v14, &v25, v17);
        }

LABEL_25:

        v11 = 0;
        goto LABEL_26;
      }

      v12 = DALoggingwithCategory();
      v22 = *(MEMORY[0x277CF3AF0] + 4);
      if (!os_log_type_enabled(v12, v22))
      {
        goto LABEL_25;
      }

      v25 = 138412290;
      v26 = v9;
      v14 = "RDDataacess doesn't care about subscribed calendar (yet) {url: %@}";
LABEL_23:
      v15 = v12;
      v16 = v22;
      v17 = 12;
      goto LABEL_24;
    }

    v19 = DALoggingwithCategory();
    v20 = *(MEMORY[0x277CF3AF0] + 5);
    if (os_log_type_enabled(v19, v20))
    {
      v25 = 138412290;
      v26 = v9;
      _os_log_impl(&dword_242490000, v19, v20, "TODO - Notification calendar being created here is only a barebone implementation {url: %@}", &v25, 0xCu);
    }

    v18 = MobileCalDAVNotificationCalendar;
  }

  else
  {
    if (a3)
    {
      if (a3 != 1)
      {
        if (a3 == 2)
        {
          goto LABEL_26;
        }

        goto LABEL_11;
      }

      v12 = DALoggingwithCategory();
      v22 = *(MEMORY[0x277CF3AF0] + 4);
      if (!os_log_type_enabled(v12, v22))
      {
        goto LABEL_25;
      }

      v25 = 138412290;
      v26 = v9;
      v14 = "RDDataacess doesn't care about inbox calendar (yet) {url: %@}";
      goto LABEL_23;
    }

    v18 = MobileCalDAVCalendar;
  }

  v11 = [[v18 alloc] initWithCalendarURL:v9 principal:self];
  if (v11)
  {
    v21 = [(MobileCalDAVPrincipal *)self daAccount];
    [v21 addCalendar:v11];

    [(MobileCalDAVPrincipal *)self setCalendarsAreDirty:1];
  }

LABEL_26:

  v23 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)removeCalendar:(id)a3
{
  v4 = a3;
  [(MobileCalDAVPrincipal *)self setCalendarsAreDirty:1];
  v5 = [(MobileCalDAVPrincipal *)self daAccount];
  [v5 removeCalendar:v4];
}

- (void)removecalendarWithURL:(id)a3
{
  v4 = a3;
  [(MobileCalDAVPrincipal *)self setCalendarsAreDirty:1];
  v5 = [(MobileCalDAVPrincipal *)self daAccount];
  [v5 removeCalendarWithURL:v4];
}

- (id)preferredCalendarUserAddressesForCalendar:(id)a3
{
  v4 = a3;
  v5 = [(MobileCalDAVPrincipal *)self calendarUserAddressesPerCalendar];
  v6 = [v4 guid];

  v7 = [v5 objectForKeyedSubscript:v6];

  return v7;
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
    v10 = [(MobileCalDAVPrincipal *)self calendarUserAddressesPerCalendar];
    v11 = [v6 guid];
    [v10 setObject:v12 forKeyedSubscript:v11];
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
    v6 = *(MEMORY[0x277CF3AF0] + 7);
    if (os_log_type_enabled(v5, v6))
    {
      v8 = 138412290;
      v9 = self;
      _os_log_impl(&dword_242490000, v5, v6, "Marking principal as dirty: %@", &v8, 0xCu);
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
    v6 = [(MobileCalDAVPrincipal *)self daAccount];
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
      v10 = [(MobileCalDAVPrincipal *)self daAccount];
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
  v2 = [(MobileCalDAVPrincipal *)self daAccount];
  v3 = [v2 taskManager];

  return v3;
}

- (BOOL)useSSL
{
  v2 = [(MobileCalDAVPrincipal *)self daAccount];
  v3 = [v2 useSSL];

  return v3;
}

- (id)scheme
{
  v2 = [(MobileCalDAVPrincipal *)self daAccount];
  v3 = [v2 scheme];

  return v3;
}

- (id)host
{
  v2 = [(MobileCalDAVPrincipal *)self daAccount];
  v3 = [v2 host];

  return v3;
}

- (int64_t)port
{
  v2 = [(MobileCalDAVPrincipal *)self daAccount];
  v3 = [v2 port];

  return v3;
}

- (void)noteHomeSetOnDifferentHost:(id)a3
{
  v4 = a3;
  v5 = [(MobileCalDAVPrincipal *)self daAccount];
  [v5 noteHomeSetOnDifferentHost:v4];
}

- (id)user
{
  v2 = [(MobileCalDAVPrincipal *)self daAccount];
  v3 = [v2 user];

  return v3;
}

- (id)password
{
  v2 = [(MobileCalDAVPrincipal *)self daAccount];
  v3 = [v2 password];

  return v3;
}

- (id)identityPersist
{
  v2 = [(MobileCalDAVPrincipal *)self daAccount];
  v3 = [v2 identityPersist];

  return v3;
}

- (id)accountID
{
  v2 = [(MobileCalDAVPrincipal *)self daAccount];
  v3 = [v2 accountID];

  return v3;
}

- (id)additionalHeaderValues
{
  v2 = [(MobileCalDAVPrincipal *)self daAccount];
  v3 = [v2 additionalHeaderValues];

  return v3;
}

- (id)customConnectionProperties
{
  v2 = [(MobileCalDAVPrincipal *)self daAccount];
  v3 = [v2 customConnectionProperties];

  return v3;
}

- (id)oauth2Token
{
  v2 = [(MobileCalDAVPrincipal *)self daAccount];
  v3 = [v2 oauth2Token];

  return v3;
}

- (void)promptUserForNewCoreDAVPasswordWithCompletionBlock:(id)a3
{
  v4 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __76__MobileCalDAVPrincipal_promptUserForNewCoreDAVPasswordWithCompletionBlock___block_invoke;
  v11[3] = &unk_278D4F578;
  v12 = v4;
  v5 = v4;
  v6 = MEMORY[0x245D0F810](v11);
  v7 = [(MobileCalDAVPrincipal *)self daAccount];
  v8 = [v7 isValidating];

  if (v8)
  {
    v6[2](v6, 2, 0);
  }

  else
  {
    v9 = [(MobileCalDAVPrincipal *)self daAccount];
    v10 = dataaccess_get_global_queue();
    [v9 dropAssertionsAndRenewCredentialsInQueue:v10 withHandler:v6];
  }
}

void __76__MobileCalDAVPrincipal_promptUserForNewCoreDAVPasswordWithCompletionBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  (*(*(a1 + 32) + 16))();
}

- (id)clientToken
{
  v2 = [(MobileCalDAVPrincipal *)self daAccount];
  v3 = [v2 clientToken];

  return v3;
}

- (void)clientTokenRequestedByServer
{
  v2 = [(MobileCalDAVPrincipal *)self daAccount];
  [v2 clientTokenRequestedByServer];
}

- (void)webLoginRequestedAtURL:(id)a3 reasonString:(id)a4 inQueue:(id)a5 completionBlock:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(MobileCalDAVPrincipal *)self daAccount];
  [v14 webLoginRequestedAtURL:v13 reasonString:v12 inQueue:v11 completionBlock:v10];
}

- (BOOL)handleTrustChallenge:(id)a3
{
  v4 = a3;
  v5 = [(MobileCalDAVPrincipal *)self daAccount];
  [v5 handleTrustChallenge:v4];

  return 0;
}

- (BOOL)handleTrustChallenge:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MobileCalDAVPrincipal *)self daAccount];
  [v8 handleTrustChallenge:v7 completionHandler:v6];

  return 0;
}

- (BOOL)shouldFailAllTasks
{
  v2 = [(MobileCalDAVPrincipal *)self daAccount];
  v3 = [v2 shouldFailAllTasks];

  return v3;
}

- (__CFURLStorageSession)copyStorageSession
{
  v2 = [(MobileCalDAVPrincipal *)self daAccount];
  v3 = [v2 copyStorageSession];

  return v3;
}

- (BOOL)shouldSendClientInfoHeaderForURL:(id)a3
{
  v4 = a3;
  v5 = [(MobileCalDAVPrincipal *)self daAccount];
  if (objc_opt_respondsToSelector())
  {
    v6 = [(MobileCalDAVPrincipal *)self daAccount];
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
  v3 = [MEMORY[0x277CF3AC8] compressRequests];
  if (v3)
  {
    v4 = [(MobileCalDAVPrincipal *)self daAccount];
    v5 = [v4 serverVersion];
    v6 = [v5 supportsRequestCompression];

    LOBYTE(v3) = v6;
  }

  return v3;
}

- (BOOL)shouldUseOpportunisticSockets
{
  v2 = [(MobileCalDAVPrincipal *)self daAccount];
  v3 = [v2 shouldUseOpportunisticSockets];

  return v3;
}

- (void)noteSuccessfulRequestWithNumDownloadedElements:(int64_t)a3 numUploadedElements:(int64_t)a4
{
  v7 = [(MobileCalDAVPrincipal *)self daAccount];
  v6 = [v7 statusReport];
  [v6 noteSuccessfulRequestWithNumDownloadedElements:a3 numUploadedElements:a4];
}

- (void)noteFailedNetworkRequest
{
  v3 = [(MobileCalDAVPrincipal *)self daAccount];
  v2 = [v3 statusReport];
  [v2 noteFailedNetworkRequest];
}

- (void)noteFailedProtocolRequest
{
  v3 = [(MobileCalDAVPrincipal *)self daAccount];
  v2 = [v3 statusReport];
  [v2 noteFailedProtocolRequest];
}

- (void)noteTimeSpentInNetworking:(double)a3
{
  v5 = [(MobileCalDAVPrincipal *)self daAccount];
  v4 = [v5 statusReport];
  [v4 noteTimeSpentInNetworking:a3];
}

- (CalDAVAccount)account
{
  WeakRetained = objc_loadWeakRetained(&self->_account);

  return WeakRetained;
}

- (void)initWithConfiguration:(uint64_t)a1 principalUID:(uint64_t)a2 account:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MobileCalDAVPrincipal.m" lineNumber:237 description:@"Cannot create a principal with a nil account"];
}

- (void)calendarOfType:(uint64_t)a1 atURL:(uint64_t)a2 withOptions:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MobileCalDAVPrincipal.m" lineNumber:874 description:@"Cannot create a calendar without a URL"];
}

@end