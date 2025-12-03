@interface MobileCalDAVPrincipal
+ (BOOL)compareAddressURL:(id)l localString:(id)string;
- (BOOL)_userAddressSet:(id)set isEqualToSet:(id)toSet;
- (BOOL)calendarUserAddressIsEquivalentToURL:(id)l;
- (BOOL)calendarsAreDirty;
- (BOOL)clearCalendarChanges;
- (BOOL)handleTrustChallenge:(id)challenge;
- (BOOL)handleTrustChallenge:(id)challenge completionHandler:(id)handler;
- (BOOL)hasCalendarUserAddress:(id)address;
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
- (id)rem_changeTracking;
- (id)scheme;
- (id)user;
- (int64_t)port;
- (void)clear_rem_changeTracking;
- (void)clientTokenRequestedByServer;
- (void)noteFailedNetworkRequest;
- (void)noteFailedProtocolRequest;
- (void)noteHomeSetOnDifferentHost:(id)host;
- (void)noteSuccessfulRequestWithNumDownloadedElements:(int64_t)elements numUploadedElements:(int64_t)uploadedElements;
- (void)noteTimeSpentInNetworking:(double)networking;
- (void)prepareCalendarsForSyncWithCompletionBlock:(id)block;
- (void)promptUserForNewCoreDAVPasswordWithCompletionBlock:(id)block;
- (void)removeCalendar:(id)calendar;
- (void)removecalendarWithURL:(id)l;
- (void)setCalendarHomePushKey:(id)key;
- (void)setCalendarHomeSyncToken:(id)token;
- (void)setCalendarHomeURL:(id)l;
- (void)setCanCreateCalendars:(BOOL)calendars;
- (void)setDefaultCalendarURL:(id)l;
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
- (void)webLoginRequestedAtURL:(id)l reasonString:(id)string inQueue:(id)queue completionBlock:(id)block;
@end

@implementation MobileCalDAVPrincipal

+ (BOOL)compareAddressURL:(id)l localString:(id)string
{
  lCopy = l;
  v6 = 0;
  if (lCopy && string)
  {
    v7 = MEMORY[0x277CBEBC0];
    stringCopy = string;
    v9 = [v7 URLWithString:stringCopy];
    absoluteString = [lCopy absoluteString];
    da_removeSlashIfNeeded = [absoluteString da_removeSlashIfNeeded];
    da_removeSlashIfNeeded2 = [stringCopy da_removeSlashIfNeeded];

    v13 = [da_removeSlashIfNeeded caseInsensitiveCompare:da_removeSlashIfNeeded2];
    if (!v13)
    {
      v6 = 1;
LABEL_32:

      goto LABEL_33;
    }

    relativePath = [lCopy relativePath];
    da_removeSlashIfNeeded3 = [relativePath da_removeSlashIfNeeded];

    relativePath2 = [v9 relativePath];
    da_removeSlashIfNeeded4 = [relativePath2 da_removeSlashIfNeeded];

    if (!da_removeSlashIfNeeded3 || da_removeSlashIfNeeded3 == da_removeSlashIfNeeded4 || [da_removeSlashIfNeeded3 caseInsensitiveCompare:da_removeSlashIfNeeded4])
    {
      path = [v9 path];
      path2 = [lCopy path];
      v20 = [path isEqualToString:path2];

      if (v20)
      {
        port = [v9 port];
        port2 = [lCopy port];
        v23 = port2;
        if (port)
        {
          if (port2 && ([port isEqualToNumber:port2] & 1) != 0)
          {
LABEL_11:
            host = [v9 host];
            host2 = [lCopy host];
            if ([host isEqualToString:host2])
            {
LABEL_12:
              v6 = 1;
LABEL_29:

              goto LABEL_30;
            }

            v26 = [host length];
            v27 = [host2 length];
            if (v26 >= v27)
            {
              v28 = host2;
            }

            else
            {
              v28 = host;
            }

            if (v26 >= v27)
            {
              v29 = host;
            }

            else
            {
              v29 = host2;
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

        else if (!port2)
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

- (MobileCalDAVPrincipal)initWithConfiguration:(id)configuration principalUID:(id)d account:(id)account
{
  v137 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  dCopy = d;
  accountCopy = account;
  v131.receiver = self;
  v131.super_class = MobileCalDAVPrincipal;
  v12 = [(MobileCalDAVPrincipal *)&v131 init];

  if (v12)
  {
    if (!accountCopy)
    {
      [MobileCalDAVPrincipal initWithConfiguration:a2 principalUID:v12 account:?];
    }

    [(MobileCalDAVPrincipal *)v12 setAccount:accountCopy];
    v13 = [configurationCopy objectForKeyedSubscript:@"UID"];

    if (v13)
    {
      v14 = [configurationCopy objectForKeyedSubscript:@"UID"];
      uid = v12->_uid;
      v12->_uid = v14;
    }

    if (dCopy)
    {
      v16 = v12->_uid;
      if (!v16 || ![(NSString *)v16 isEqualToString:dCopy])
      {
        v17 = DALoggingwithCategory();
        v18 = *(MEMORY[0x277CF3AF0] + 4);
        if (os_log_type_enabled(v17, v18))
        {
          v19 = v12->_uid;
          *buf = 138543618;
          v134 = v19;
          v135 = 2114;
          v136 = dCopy;
          _os_log_impl(&dword_242490000, v17, v18, "Principal configuration UID (%{public}@) doesn't match provided UID (%{public}@). Using the provided UID.", buf, 0x16u);
        }

        objc_storeStrong(&v12->_uid, d);
      }
    }

    if (!v12->_uid)
    {
      da_newGUID = [MEMORY[0x277CCACA8] da_newGUID];
      v21 = v12->_uid;
      v12->_uid = da_newGUID;
    }

    v12->_isWritable = 1;
    v12->_shouldRefreshPrincipalSearchProperties = 1;
    v12->_canCreateCalendars = 1;
    v22 = [configurationCopy objectForKeyedSubscript:{@"PreferredCalendarUserAddresses", accountCopy}];

    if (v22)
    {
      v23 = dCopy;
      v24 = objc_opt_new();
      v127 = 0u;
      v128 = 0u;
      v129 = 0u;
      v130 = 0u;
      v25 = [configurationCopy objectForKeyedSubscript:@"PreferredCalendarUserAddresses"];
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
      dCopy = v23;
    }

    v31 = objc_opt_new();
    calendarUserAddressesPerCalendar = v12->_calendarUserAddressesPerCalendar;
    v12->_calendarUserAddressesPerCalendar = v31;

    v33 = [configurationCopy objectForKeyedSubscript:@"PreferredCalendarUserAddressesPerCalendar"];
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

    accountCopy = v124;
    backingAccountInfo = [v124 backingAccountInfo];
    parentAccount = [backingAccountInfo parentAccount];
    accountType = [parentAccount accountType];
    identifier = [accountType identifier];
    v38 = [identifier isEqualToString:*MEMORY[0x277CB8BA0]];

    if (v38)
    {
      v39 = [objc_alloc(MEMORY[0x277CF0188]) initWithIdentifier:@"CardDAViCloudDaemonAccount"];
      appleIDSession = v12->_appleIDSession;
      v12->_appleIDSession = v39;
    }

    v41 = [configurationCopy objectForKeyedSubscript:@"FullName"];

    if (v41)
    {
      v42 = [configurationCopy objectForKeyedSubscript:@"FullName"];
      fullName = v12->_fullName;
      v12->_fullName = v42;
    }

    v44 = [configurationCopy objectForKeyedSubscript:@"CalendarHomeURL"];

    if (v44)
    {
      v45 = MEMORY[0x277CBEBC0];
      v46 = [configurationCopy objectForKeyedSubscript:@"CalendarHomeURL"];
      v47 = [v45 URLWithString:v46];
      calendarHomeURL = v12->_calendarHomeURL;
      v12->_calendarHomeURL = v47;
    }

    v49 = [configurationCopy objectForKeyedSubscript:@"PrincipalPath"];

    if (v49)
    {
      v50 = [configurationCopy objectForKeyedSubscript:@"PrincipalPath"];
      principalPath = v12->_principalPath;
      v12->_principalPath = v50;
    }

    v52 = [configurationCopy objectForKeyedSubscript:@"DefaultCalendarURL"];

    if (v52)
    {
      v53 = MEMORY[0x277CBEBC0];
      v54 = [configurationCopy objectForKeyedSubscript:@"DefaultCalendarURL"];
      v55 = [v53 URLWithString:v54];
      defaultCalendarURL = v12->_defaultCalendarURL;
      v12->_defaultCalendarURL = v55;
    }

    v57 = [configurationCopy objectForKeyedSubscript:@"NotificationCollectionURL"];

    if (v57)
    {
      v58 = MEMORY[0x277CBEBC0];
      v59 = [configurationCopy objectForKeyedSubscript:@"NotificationCollectionURL"];
      v60 = [v58 URLWithString:v59];
      notificationCollectionURL = v12->_notificationCollectionURL;
      v12->_notificationCollectionURL = v60;
    }

    v62 = [configurationCopy objectForKeyedSubscript:@"NotificationCollectionCTag"];

    if (v62)
    {
      v63 = [configurationCopy objectForKeyedSubscript:@"NotificationCollectionCTag"];
      notificationCollectionCTag = v12->_notificationCollectionCTag;
      v12->_notificationCollectionCTag = v63;
    }

    v65 = [configurationCopy objectForKeyedSubscript:@"InboxURL"];

    if (v65)
    {
      v66 = MEMORY[0x277CBEBC0];
      v67 = [configurationCopy objectForKeyedSubscript:@"InboxURL"];
      v68 = [v66 URLWithString:v67];
      inboxURL = v12->_inboxURL;
      v12->_inboxURL = v68;
    }

    v70 = [configurationCopy objectForKeyedSubscript:@"InboxCTag"];

    if (v70)
    {
      v71 = [configurationCopy objectForKeyedSubscript:@"InboxCTag"];
      inboxCTag = v12->_inboxCTag;
      v12->_inboxCTag = v71;
    }

    v73 = [configurationCopy objectForKeyedSubscript:@"OutboxURL"];

    if (v73)
    {
      v74 = MEMORY[0x277CBEBC0];
      v75 = [configurationCopy objectForKeyedSubscript:@"OutboxURL"];
      v76 = [v74 URLWithString:v75];
      outboxURL = v12->_outboxURL;
      v12->_outboxURL = v76;
    }

    v78 = [configurationCopy objectForKeyedSubscript:@"DropBoxURL"];

    if (v78)
    {
      v79 = MEMORY[0x277CBEBC0];
      v80 = [configurationCopy objectForKeyedSubscript:@"DropBoxURL"];
      v81 = [v79 URLWithString:v80];
      dropBoxURL = v12->_dropBoxURL;
      v12->_dropBoxURL = v81;
    }

    v83 = [configurationCopy objectForKeyedSubscript:@"NotificationsURLString"];

    if (v83)
    {
      v84 = [configurationCopy objectForKeyedSubscript:@"NotificationsURLString"];
      notificationURLString = v12->_notificationURLString;
      v12->_notificationURLString = v84;
    }

    v86 = [configurationCopy objectForKeyedSubscript:@"PushTransports"];

    if (v86)
    {
      v87 = [configurationCopy objectForKeyedSubscript:@"PushTransports"];
      pushTransports = v12->_pushTransports;
      v12->_pushTransports = v87;
    }

    v89 = [configurationCopy objectForKeyedSubscript:@"CalendarHomePushKey"];

    if (v89)
    {
      v90 = [configurationCopy objectForKeyedSubscript:@"CalendarHomePushKey"];
      calendarHomePushKey = v12->_calendarHomePushKey;
      v12->_calendarHomePushKey = v90;
    }

    v92 = [configurationCopy objectForKeyedSubscript:@"Delegate"];

    if (v92)
    {
      v93 = [configurationCopy objectForKeyedSubscript:@"Delegate"];
      v12->_isDelegate = [v93 BOOLValue];
    }

    v94 = [configurationCopy objectForKeyedSubscript:@"Writable"];

    if (v94)
    {
      v95 = [configurationCopy objectForKeyedSubscript:@"Writable"];
      v12->_isWritable = [v95 BOOLValue];
    }

    v96 = [configurationCopy objectForKeyedSubscript:@"CanCreateCalendars"];

    if (v96)
    {
      v97 = [configurationCopy objectForKeyedSubscript:@"CanCreateCalendars"];
      v12->_canCreateCalendars = [v97 BOOLValue];
    }

    v98 = [configurationCopy objectForKeyedSubscript:@"Enabled"];

    if (v98)
    {
      v99 = [configurationCopy objectForKeyedSubscript:@"Enabled"];
      v12->_isEnabled = [v99 BOOLValue];
    }

    v100 = [configurationCopy objectForKeyedSubscript:@"ExpandPropertyReportSupported"];

    if (v100)
    {
      v101 = [configurationCopy objectForKeyedSubscript:@"ExpandPropertyReportSupported"];
      v12->_isExpandPropertyReportSupported = [v101 BOOLValue];
    }

    v102 = [configurationCopy objectForKeyedSubscript:@"SupportsCalendarUserSearch"];

    if (v102)
    {
      v103 = [configurationCopy objectForKeyedSubscript:@"SupportsCalendarUserSearch"];
      v12->_supportsCalendarUserSearch = [v103 BOOLValue];
    }

    v104 = [configurationCopy objectForKeyedSubscript:@"SupportsFreebusy"];

    if (v104)
    {
      v105 = [configurationCopy objectForKeyedSubscript:@"SupportsFreebusy"];
      v12->_supportsFreebusy = [v105 BOOLValue];
    }

    v106 = [configurationCopy objectForKeyedSubscript:@"SupportsSyncToken"];

    if (v106)
    {
      v107 = [configurationCopy objectForKeyedSubscript:@"SupportsSyncToken"];
      v12->_supportsSyncToken = [v107 BOOLValue];
    }

    v108 = [configurationCopy objectForKeyedSubscript:@"SupportsPush"];

    if (v108)
    {
      v109 = [configurationCopy objectForKeyedSubscript:@"SupportsPush"];
      v12->_supportsPush = [v109 BOOLValue];
    }

    v110 = [configurationCopy objectForKeyedSubscript:@"QuotaFreeBytes"];

    if (v110)
    {
      v111 = [configurationCopy objectForKeyedSubscript:@"QuotaFreeBytes"];
      quotaFreeBytes = v12->_quotaFreeBytes;
      v12->_quotaFreeBytes = v111;
    }

    v113 = [configurationCopy objectForKeyedSubscript:@"SupportedCalendarComponentSets"];

    if (v113)
    {
      v114 = [configurationCopy objectForKeyedSubscript:@"SupportedCalendarComponentSets"];
      supportedCalendarComponentSets = v12->_supportedCalendarComponentSets;
      v12->_supportedCalendarComponentSets = v114;
    }

    v116 = [configurationCopy objectForKeyedSubscript:@"PrincipalURL"];

    if (v116)
    {
      v117 = MEMORY[0x277CBEBC0];
      v118 = [configurationCopy objectForKeyedSubscript:@"PrincipalURL"];
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
  preferredCalendarUserAddresses = [(MobileCalDAVPrincipal *)self preferredCalendarUserAddresses];
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __38__MobileCalDAVPrincipal_configuration__block_invoke;
  v62[3] = &unk_278D4F500;
  v8 = v6;
  v63 = v8;
  [preferredCalendarUserAddresses enumerateObjectsUsingBlock:v62];

  if (v8)
  {
    [v3 setObject:v8 forKey:@"PreferredCalendarUserAddresses"];
  }

  v9 = objc_opt_new();
  calendarUserAddressesPerCalendar = [(MobileCalDAVPrincipal *)self calendarUserAddressesPerCalendar];
  v57 = MEMORY[0x277D85DD0];
  v58 = 3221225472;
  v59 = __38__MobileCalDAVPrincipal_configuration__block_invoke_2;
  v60 = &unk_278D4F528;
  v11 = v9;
  v61 = v11;
  [calendarUserAddressesPerCalendar enumerateKeysAndObjectsUsingBlock:&v57];

  if (v11)
  {
    [v3 setObject:v11 forKey:{@"PreferredCalendarUserAddressesPerCalendar", v57, v58, v59, v60}];
  }

  v12 = [(MobileCalDAVPrincipal *)self fullName:v57];

  if (v12)
  {
    fullName = [(MobileCalDAVPrincipal *)self fullName];
    [v3 setObject:fullName forKey:@"FullName"];
  }

  calendarHomeURL = [(MobileCalDAVPrincipal *)self calendarHomeURL];

  if (calendarHomeURL)
  {
    calendarHomeURL2 = [(MobileCalDAVPrincipal *)self calendarHomeURL];
    absoluteString = [calendarHomeURL2 absoluteString];
    [v3 setObject:absoluteString forKey:@"CalendarHomeURL"];
  }

  principalPath = [(MobileCalDAVPrincipal *)self principalPath];

  if (principalPath)
  {
    principalPath2 = [(MobileCalDAVPrincipal *)self principalPath];
    [v3 setObject:principalPath2 forKey:@"PrincipalPath"];
  }

  defaultCalendarURL = [(MobileCalDAVPrincipal *)self defaultCalendarURL];

  if (defaultCalendarURL)
  {
    defaultCalendarURL2 = [(MobileCalDAVPrincipal *)self defaultCalendarURL];
    absoluteString2 = [defaultCalendarURL2 absoluteString];
    [v3 setObject:absoluteString2 forKey:@"DefaultCalendarURL"];
  }

  notificationCollectionURL = [(MobileCalDAVPrincipal *)self notificationCollectionURL];

  if (notificationCollectionURL)
  {
    notificationCollectionURL2 = [(MobileCalDAVPrincipal *)self notificationCollectionURL];
    absoluteString3 = [notificationCollectionURL2 absoluteString];
    [v3 setObject:absoluteString3 forKey:@"NotificationCollectionURL"];
  }

  notificationCollectionCTag = [(MobileCalDAVPrincipal *)self notificationCollectionCTag];

  if (notificationCollectionCTag)
  {
    notificationCollectionCTag2 = [(MobileCalDAVPrincipal *)self notificationCollectionCTag];
    [v3 setObject:notificationCollectionCTag2 forKey:@"NotificationCollectionCTag"];
  }

  inboxURL = [(MobileCalDAVPrincipal *)self inboxURL];

  if (inboxURL)
  {
    inboxURL2 = [(MobileCalDAVPrincipal *)self inboxURL];
    absoluteString4 = [inboxURL2 absoluteString];
    [v3 setObject:absoluteString4 forKey:@"InboxURL"];
  }

  inboxCTag = [(MobileCalDAVPrincipal *)self inboxCTag];

  if (inboxCTag)
  {
    inboxCTag2 = [(MobileCalDAVPrincipal *)self inboxCTag];
    [v3 setObject:inboxCTag2 forKey:@"InboxCTag"];
  }

  outboxURL = [(MobileCalDAVPrincipal *)self outboxURL];

  if (outboxURL)
  {
    outboxURL2 = [(MobileCalDAVPrincipal *)self outboxURL];
    absoluteString5 = [outboxURL2 absoluteString];
    [v3 setObject:absoluteString5 forKey:@"OutboxURL"];
  }

  dropBoxURL = [(MobileCalDAVPrincipal *)self dropBoxURL];

  if (dropBoxURL)
  {
    dropBoxURL2 = [(MobileCalDAVPrincipal *)self dropBoxURL];
    absoluteString6 = [dropBoxURL2 absoluteString];
    [v3 setObject:absoluteString6 forKey:@"DropBoxURL"];
  }

  notificationURLString = [(MobileCalDAVPrincipal *)self notificationURLString];

  if (notificationURLString)
  {
    notificationURLString2 = [(MobileCalDAVPrincipal *)self notificationURLString];
    [v3 setObject:notificationURLString2 forKey:@"NotificationsURLString"];
  }

  pushTransports = [(MobileCalDAVPrincipal *)self pushTransports];

  if (pushTransports)
  {
    pushTransports2 = [(MobileCalDAVPrincipal *)self pushTransports];
    [v3 setObject:pushTransports2 forKey:@"PushTransports"];
  }

  calendarHomePushKey = [(MobileCalDAVPrincipal *)self calendarHomePushKey];

  if (calendarHomePushKey)
  {
    calendarHomePushKey2 = [(MobileCalDAVPrincipal *)self calendarHomePushKey];
    [v3 setObject:calendarHomePushKey2 forKey:@"CalendarHomePushKey"];
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

  quotaFreeBytes = [(MobileCalDAVPrincipal *)self quotaFreeBytes];

  if (quotaFreeBytes)
  {
    quotaFreeBytes2 = [(MobileCalDAVPrincipal *)self quotaFreeBytes];
    [v3 setObject:quotaFreeBytes2 forKey:@"QuotaFreeBytes"];
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
      v11[3] = &unk_278D4F550;
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
  daAccount = [(MobileCalDAVPrincipal *)self daAccount];
  v4 = [daAccount addUsernameToURL:self->_calendarHomeURL];

  return v4;
}

- (void)setCalendarHomeURL:(id)l
{
  lCopy = l;
  daAccount = [(MobileCalDAVPrincipal *)self daAccount];
  v10 = [daAccount addUsernameToURL:lCopy];

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
  daAccount = [(MobileCalDAVPrincipal *)self daAccount];
  calendarHomeSyncToken = [daAccount calendarHomeSyncToken];

  return calendarHomeSyncToken;
}

- (void)setCalendarHomeSyncToken:(id)token
{
  tokenCopy = token;
  calendarHomeSyncToken = [(MobileCalDAVPrincipal *)self calendarHomeSyncToken];
  if (calendarHomeSyncToken != tokenCopy && ([tokenCopy isEqualToString:calendarHomeSyncToken] & 1) == 0)
  {
    daAccount = [(MobileCalDAVPrincipal *)self daAccount];
    [daAccount setCalendarHomeSyncToken:tokenCopy];

    [(MobileCalDAVPrincipal *)self setCalendarsAreDirty:1];
  }
}

- (NSDictionary)subCalPropertiesByURL
{
  daAccount = [(MobileCalDAVPrincipal *)self daAccount];
  v3 = [daAccount objectForKeyedSubscript:@"SubscribedCalendars"];

  return v3;
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
  daAccount = [(MobileCalDAVPrincipal *)self daAccount];
  principalURL = [daAccount principalURL];
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
    absoluteString2 = [(MobileCalDAVPrincipal *)self daAccount];
    [(__CFString *)absoluteString2 setPrincipalURL:lCopy];
  }
}

- (NSURL)defaultCalendarURL
{
  daAccount = [(MobileCalDAVPrincipal *)self daAccount];
  v4 = [daAccount addUsernameToURL:self->_defaultCalendarURL];

  return v4;
}

- (void)setDefaultCalendarURL:(id)l
{
  lCopy = l;
  daAccount = [(MobileCalDAVPrincipal *)self daAccount];
  v10 = [daAccount addUsernameToURL:lCopy];

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
  daAccount = [(MobileCalDAVPrincipal *)self daAccount];
  v4 = [daAccount addUsernameToURL:self->_notificationCollectionURL];

  return v4;
}

- (void)setNotificationCollectionURL:(id)l
{
  lCopy = l;
  daAccount = [(MobileCalDAVPrincipal *)self daAccount];
  v10 = [daAccount addUsernameToURL:lCopy];

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
  daAccount = [(MobileCalDAVPrincipal *)self daAccount];
  v4 = [daAccount addUsernameToURL:self->_inboxURL];

  return v4;
}

- (void)setInboxURL:(id)l
{
  lCopy = l;
  daAccount = [(MobileCalDAVPrincipal *)self daAccount];
  v10 = [daAccount addUsernameToURL:lCopy];

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
  daAccount = [(MobileCalDAVPrincipal *)self daAccount];
  v4 = [daAccount addUsernameToURL:self->_outboxURL];

  return v4;
}

- (void)setOutboxURL:(id)l
{
  lCopy = l;
  daAccount = [(MobileCalDAVPrincipal *)self daAccount];
  obj = [daAccount addUsernameToURL:lCopy];

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
  daAccount = [(MobileCalDAVPrincipal *)self daAccount];
  v4 = [daAccount addUsernameToURL:self->_dropBoxURL];

  return v4;
}

- (void)setDropBoxURL:(id)l
{
  lCopy = l;
  daAccount = [(MobileCalDAVPrincipal *)self daAccount];
  v10 = [daAccount addUsernameToURL:lCopy];

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
  daAccount = [(MobileCalDAVPrincipal *)self daAccount];
  wasMigrated = [daAccount wasMigrated];

  return wasMigrated;
}

- (BOOL)isEnabledForTodos
{
  daAccount = [(MobileCalDAVPrincipal *)self daAccount];
  if ([daAccount isEnabledForDataclass:*MEMORY[0x277CB9190]])
  {
    daAccount2 = [(MobileCalDAVPrincipal *)self daAccount];
    supportsReminders = [daAccount2 supportsReminders];
  }

  else
  {
    supportsReminders = 0;
  }

  return supportsReminders;
}

- (BOOL)supportsExtendedCalendarQuery
{
  daAccount = [(MobileCalDAVPrincipal *)self daAccount];
  serverVersion = [daAccount serverVersion];
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
  daAccount = [(MobileCalDAVPrincipal *)self daAccount];
  shouldFilterEventSyncTimeRange = [daAccount shouldFilterEventSyncTimeRange];

  if (shouldFilterEventSyncTimeRange)
  {
    daAccount2 = [(MobileCalDAVPrincipal *)self daAccount];
    v6 = -[MobileCalDAVPrincipal _startDateFromDaysToSync:](self, "_startDateFromDaysToSync:", [daAccount2 preferredEventDaysToSync]);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSDateComponents)eventFilterEndDate
{
  daAccount = [(MobileCalDAVPrincipal *)self daAccount];
  if ([daAccount shouldFilterEventSyncTimeRange])
  {
    daAccount2 = [(MobileCalDAVPrincipal *)self daAccount];
    serverVersion = [daAccount2 serverVersion];
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
  daAccount = [(MobileCalDAVPrincipal *)self daAccount];
  refreshContext = [daAccount refreshContext];

  return refreshContext;
}

- (NSSet)calendars
{
  daAccount = [(MobileCalDAVPrincipal *)self daAccount];
  calendars = [daAccount calendars];

  return calendars;
}

- (id)rem_changeTracking
{
  v24 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  rem_changeTracking = selfCopy->_rem_changeTracking;
  if (!rem_changeTracking)
  {
    v4 = DALoggingwithCategory();
    v5 = *(MEMORY[0x277CF3AF0] + 5);
    if (os_log_type_enabled(v4, v5))
    {
      daAccount = [(MobileCalDAVPrincipal *)selfCopy daAccount];
      accountDescription = [daAccount accountDescription];
      v20 = 138412546;
      v21 = selfCopy;
      v22 = 2112;
      v23 = accountDescription;
      _os_log_impl(&dword_242490000, v4, v5, "Change Tracking Helper - creating one for {principal=%@, account=%@}", &v20, 0x16u);
    }

    mEMORY[0x277CF3AA8] = [MEMORY[0x277CF3AA8] sharedManager];
    rem_storeProvider = [mEMORY[0x277CF3AA8] rem_storeProvider];
    rem_storeForDataAccess = [rem_storeProvider rem_storeForDataAccess];

    v11 = objc_alloc(MEMORY[0x277D445E0]);
    daAccount2 = [(MobileCalDAVPrincipal *)selfCopy daAccount];
    rem_provideAccountInfo = [daAccount2 rem_provideAccountInfo];
    v14 = [v11 initWithREMDAAccount:rem_provideAccountInfo clientName:*MEMORY[0x277D44540] withREMStore:rem_storeForDataAccess];

    v15 = selfCopy->_rem_changeTracking;
    selfCopy->_rem_changeTracking = v14;

    rem_changeTracking = selfCopy->_rem_changeTracking;
  }

  fetchChangesSinceLastConsumed = [(REMDAChangeTrackingHelper *)rem_changeTracking fetchChangesSinceLastConsumed];
  objc_sync_exit(selfCopy);

  v17 = selfCopy->_rem_changeTracking;
  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)clear_rem_changeTracking
{
  v13 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_rem_changeTracking)
  {
    v3 = DALoggingwithCategory();
    v4 = *(MEMORY[0x277CF3AF0] + 5);
    if (os_log_type_enabled(v3, v4))
    {
      daAccount = [(MobileCalDAVPrincipal *)selfCopy daAccount];
      accountDescription = [daAccount accountDescription];
      v9 = 138412546;
      v10 = selfCopy;
      v11 = 2112;
      v12 = accountDescription;
      _os_log_impl(&dword_242490000, v3, v4, "Change Tracking Helper - marking consumed and clearing Change Tracking helper for {principal=%@, account=%@}", &v9, 0x16u);
    }

    [(REMDAChangeTrackingHelper *)selfCopy->_rem_changeTracking markChangesConsumed];
    rem_changeTracking = selfCopy->_rem_changeTracking;
    selfCopy->_rem_changeTracking = 0;
  }

  objc_sync_exit(selfCopy);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)prepareCalendarsForSyncWithCompletionBlock:(id)block
{
  v102 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  daAccount = [(MobileCalDAVPrincipal *)self daAccount];
  [daAccount reloadCalendars];

  addedCalendars = [(MobileCalDAVPrincipal *)self addedCalendars];

  if (!addedCalendars)
  {
    v6 = objc_opt_new();
    [(MobileCalDAVPrincipal *)self setAddedCalendars:v6];
  }

  modifiedCalendars = [(MobileCalDAVPrincipal *)self modifiedCalendars];

  if (!modifiedCalendars)
  {
    v8 = objc_opt_new();
    [(MobileCalDAVPrincipal *)self setModifiedCalendars:v8];
  }

  deletedCalendarURLs = [(MobileCalDAVPrincipal *)self deletedCalendarURLs];

  if (!deletedCalendarURLs)
  {
    v10 = objc_opt_new();
    [(MobileCalDAVPrincipal *)self setDeletedCalendarURLs:v10];
  }

  addedCalendars2 = [(MobileCalDAVPrincipal *)self addedCalendars];
  [addedCalendars2 removeAllObjects];

  modifiedCalendars2 = [(MobileCalDAVPrincipal *)self modifiedCalendars];
  [modifiedCalendars2 removeAllObjects];

  deletedCalendarURLs2 = [(MobileCalDAVPrincipal *)self deletedCalendarURLs];
  [deletedCalendarURLs2 removeAllObjects];

  selfCopy = self;
  calendars = [(MobileCalDAVPrincipal *)self calendars];
  v15 = objc_opt_new();
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v16 = calendars;
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
        guid = [v21 guid];
        [v15 setObject:v21 forKeyedSubscript:guid];
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

  selfCopy5 = self;
  rem_changeTracking = [(MobileCalDAVPrincipal *)self rem_changeTracking];
  array = [MEMORY[0x277CBEB18] array];
  v74 = rem_changeTracking;
  v28 = [MobileCalDAVCalendar rem_addedCalendarsWithChangeTrackingHelper:rem_changeTracking inPrincipal:self];
  v29 = DALoggingwithCategory();
  if (os_log_type_enabled(v29, v24))
  {
    *buf = 138543362;
    v97 = v28;
    _os_log_impl(&dword_242490000, v29, v24, "prepareCalendarsForSync - ADDED ReminderKit calendars: %{public}@", buf, 0xCu);
  }

  type = v24;

  v71 = v28;
  v30 = [array arrayByAddingObjectsFromArray:v28];

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
        guid2 = [v35 guid];
        v37 = [v15 objectForKeyedSubscript:guid2];

        if (v37)
        {
          [v37 setWasModifiedLocally:1];
          [v37 setNeedsPublishUpdate:{objc_msgSend(v35, "needsPublishUpdate")}];
          addedCalendars3 = [(MobileCalDAVPrincipal *)selfCopy5 addedCalendars];
          [addedCalendars3 addObject:v37];
        }

        else
        {
          addedCalendars3 = DALoggingwithCategory();
          if (os_log_type_enabled(addedCalendars3, type))
          {
            guid3 = [v35 guid];
            *buf = 138543618;
            v97 = v35;
            v98 = 2114;
            v99 = guid3;
            _os_log_impl(&dword_242490000, addedCalendars3, type, "prepareCalendarsForSync - Couldn't get a cached calendar of added calendar %{public}@ {guid: %{public}@}", buf, 0x16u);

            selfCopy5 = self;
          }
        }
      }

      v32 = [obj countByEnumeratingWithState:&v86 objects:v100 count:16];
    }

    while (v32);
  }

  array2 = [MEMORY[0x277CBEB18] array];
  v41 = [MobileCalDAVCalendar rem_modifiedCalendarsWithChangeTrackingHelper:v74 inPrincipal:selfCopy5];
  v42 = DALoggingwithCategory();
  if (os_log_type_enabled(v42, type))
  {
    *buf = 138543362;
    v97 = v41;
    _os_log_impl(&dword_242490000, v42, type, "prepareCalendarsForSync - UPDATED ReminderKit calendars: %{public}@", buf, 0xCu);
  }

  v70 = v41;
  v43 = [array2 arrayByAddingObjectsFromArray:v41];

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
        guid4 = [v49 guid];
        v51 = [v15 objectForKeyedSubscript:guid4];

        if (v51)
        {
          [v51 setWasModifiedLocally:1];
          [v51 setNeedsPublishUpdate:{objc_msgSend(v49, "needsPublishUpdate")}];
          selfCopy5 = self;
          modifiedCalendars3 = [(MobileCalDAVPrincipal *)self modifiedCalendars];
          [modifiedCalendars3 addObject:v51];
        }

        else
        {
          modifiedCalendars3 = DALoggingwithCategory();
          if (os_log_type_enabled(modifiedCalendars3, type))
          {
            guid5 = [v49 guid];
            *buf = 138543362;
            v97 = guid5;
            _os_log_impl(&dword_242490000, modifiedCalendars3, type, "prepareCalendarsForSync - Couldn't get a cached calendar of modified calendar {guid: %{public}@}", buf, 0xCu);
          }

          selfCopy5 = self;
        }
      }

      v46 = [v44 countByEnumeratingWithState:&v82 objects:v95 count:16];
    }

    while (v46);
  }

  array3 = [MEMORY[0x277CBEB18] array];
  v55 = [MobileCalDAVCalendar rem_deletedCalendarsWithChangeTrackingHelper:v74 inPrincipal:selfCopy5];
  v56 = DALoggingwithCategory();
  if (os_log_type_enabled(v56, type))
  {
    *buf = 138543362;
    v97 = v55;
    _os_log_impl(&dword_242490000, v56, type, "prepareCalendarsForSync - DELETED ReminderKit calendars: %{public}@", buf, 0xCu);
  }

  v69 = v55;
  v57 = [array3 arrayByAddingObjectsFromArray:v55];

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
        calendarHomeURL = [(MobileCalDAVPrincipal *)selfCopy5 calendarHomeURL];
        v66 = [v64 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:calendarHomeURL];

        if (v66)
        {
          deletedCalendarURLs3 = [(MobileCalDAVPrincipal *)selfCopy5 deletedCalendarURLs];
          [deletedCalendarURLs3 addObject:v66];
        }

        else
        {
          deletedCalendarURLs3 = DALoggingwithCategory();
          if (os_log_type_enabled(deletedCalendarURLs3, type))
          {
            *buf = 138543362;
            v97 = v64;
            _os_log_impl(&dword_242490000, deletedCalendarURLs3, type, "prepareCalendarsForSync - Couldn't obtain a URL of deleted calendar {externalID: %{public}@}", buf, 0xCu);
          }

          selfCopy5 = selfCopy;
        }
      }

      v60 = [v58 countByEnumeratingWithState:&v78 objects:v94 count:16];
    }

    while (v60);
  }

  blockCopy[2](blockCopy, selfCopy5);
  v68 = *MEMORY[0x277D85DE8];
}

- (BOOL)clearCalendarChanges
{
  [(MobileCalDAVPrincipal *)self clear_rem_changeTracking];
  addedCalendars = [(MobileCalDAVPrincipal *)self addedCalendars];
  [addedCalendars removeAllObjects];

  modifiedCalendars = [(MobileCalDAVPrincipal *)self modifiedCalendars];
  [modifiedCalendars removeAllObjects];

  deletedCalendarURLs = [(MobileCalDAVPrincipal *)self deletedCalendarURLs];
  [deletedCalendarURLs removeAllObjects];

  return 1;
}

- (id)calendarOfType:(int)type atURL:(id)l withOptions:(id)options
{
  v27 = *MEMORY[0x277D85DE8];
  lCopy = l;
  optionsCopy = options;
  if (!lCopy)
  {
    [MobileCalDAVPrincipal calendarOfType:a2 atURL:self withOptions:?];
  }

  v11 = 0;
  if (type > 2)
  {
    if (type != 3)
    {
      if (type != 4)
      {
        if (type == 5)
        {
          goto LABEL_26;
        }

LABEL_11:
        v12 = DALoggingwithCategory();
        v13 = *(MEMORY[0x277CF3AF0] + 4);
        if (os_log_type_enabled(v12, v13))
        {
          v25 = 67109120;
          LODWORD(v26) = type;
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
      v26 = lCopy;
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
      v26 = lCopy;
      _os_log_impl(&dword_242490000, v19, v20, "TODO - Notification calendar being created here is only a barebone implementation {url: %@}", &v25, 0xCu);
    }

    v18 = MobileCalDAVNotificationCalendar;
  }

  else
  {
    if (type)
    {
      if (type != 1)
      {
        if (type == 2)
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
      v26 = lCopy;
      v14 = "RDDataacess doesn't care about inbox calendar (yet) {url: %@}";
      goto LABEL_23;
    }

    v18 = MobileCalDAVCalendar;
  }

  v11 = [[v18 alloc] initWithCalendarURL:lCopy principal:self];
  if (v11)
  {
    daAccount = [(MobileCalDAVPrincipal *)self daAccount];
    [daAccount addCalendar:v11];

    [(MobileCalDAVPrincipal *)self setCalendarsAreDirty:1];
  }

LABEL_26:

  v23 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)removeCalendar:(id)calendar
{
  calendarCopy = calendar;
  [(MobileCalDAVPrincipal *)self setCalendarsAreDirty:1];
  daAccount = [(MobileCalDAVPrincipal *)self daAccount];
  [daAccount removeCalendar:calendarCopy];
}

- (void)removecalendarWithURL:(id)l
{
  lCopy = l;
  [(MobileCalDAVPrincipal *)self setCalendarsAreDirty:1];
  daAccount = [(MobileCalDAVPrincipal *)self daAccount];
  [daAccount removeCalendarWithURL:lCopy];
}

- (id)preferredCalendarUserAddressesForCalendar:(id)calendar
{
  calendarCopy = calendar;
  calendarUserAddressesPerCalendar = [(MobileCalDAVPrincipal *)self calendarUserAddressesPerCalendar];
  guid = [calendarCopy guid];

  v7 = [calendarUserAddressesPerCalendar objectForKeyedSubscript:guid];

  return v7;
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
    calendarUserAddressesPerCalendar2 = [(MobileCalDAVPrincipal *)self calendarUserAddressesPerCalendar];
    guid2 = [calendarCopy guid];
    [calendarUserAddressesPerCalendar2 setObject:addressesCopy forKeyedSubscript:guid2];
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
    v6 = *(MEMORY[0x277CF3AF0] + 7);
    if (os_log_type_enabled(v5, v6))
    {
      v8 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_242490000, v5, v6, "Marking principal as dirty: %@", &v8, 0xCu);
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
    daAccount = [(MobileCalDAVPrincipal *)self daAccount];
    v7 = [MEMORY[0x277CBEBC0] URLWithString:v5];
    v8 = [daAccount addUsernameToURL:v7];
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
      daAccount = [(MobileCalDAVPrincipal *)self daAccount];
      principalURL = [daAccount principalURL];
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
  daAccount = [(MobileCalDAVPrincipal *)self daAccount];
  taskManager = [daAccount taskManager];

  return taskManager;
}

- (BOOL)useSSL
{
  daAccount = [(MobileCalDAVPrincipal *)self daAccount];
  useSSL = [daAccount useSSL];

  return useSSL;
}

- (id)scheme
{
  daAccount = [(MobileCalDAVPrincipal *)self daAccount];
  scheme = [daAccount scheme];

  return scheme;
}

- (id)host
{
  daAccount = [(MobileCalDAVPrincipal *)self daAccount];
  host = [daAccount host];

  return host;
}

- (int64_t)port
{
  daAccount = [(MobileCalDAVPrincipal *)self daAccount];
  port = [daAccount port];

  return port;
}

- (void)noteHomeSetOnDifferentHost:(id)host
{
  hostCopy = host;
  daAccount = [(MobileCalDAVPrincipal *)self daAccount];
  [daAccount noteHomeSetOnDifferentHost:hostCopy];
}

- (id)user
{
  daAccount = [(MobileCalDAVPrincipal *)self daAccount];
  user = [daAccount user];

  return user;
}

- (id)password
{
  daAccount = [(MobileCalDAVPrincipal *)self daAccount];
  password = [daAccount password];

  return password;
}

- (id)identityPersist
{
  daAccount = [(MobileCalDAVPrincipal *)self daAccount];
  identityPersist = [daAccount identityPersist];

  return identityPersist;
}

- (id)accountID
{
  daAccount = [(MobileCalDAVPrincipal *)self daAccount];
  accountID = [daAccount accountID];

  return accountID;
}

- (id)additionalHeaderValues
{
  daAccount = [(MobileCalDAVPrincipal *)self daAccount];
  additionalHeaderValues = [daAccount additionalHeaderValues];

  return additionalHeaderValues;
}

- (id)customConnectionProperties
{
  daAccount = [(MobileCalDAVPrincipal *)self daAccount];
  customConnectionProperties = [daAccount customConnectionProperties];

  return customConnectionProperties;
}

- (id)oauth2Token
{
  daAccount = [(MobileCalDAVPrincipal *)self daAccount];
  oauth2Token = [daAccount oauth2Token];

  return oauth2Token;
}

- (void)promptUserForNewCoreDAVPasswordWithCompletionBlock:(id)block
{
  blockCopy = block;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __76__MobileCalDAVPrincipal_promptUserForNewCoreDAVPasswordWithCompletionBlock___block_invoke;
  v11[3] = &unk_278D4F578;
  v12 = blockCopy;
  v5 = blockCopy;
  v6 = MEMORY[0x245D0F810](v11);
  daAccount = [(MobileCalDAVPrincipal *)self daAccount];
  isValidating = [daAccount isValidating];

  if (isValidating)
  {
    v6[2](v6, 2, 0);
  }

  else
  {
    daAccount2 = [(MobileCalDAVPrincipal *)self daAccount];
    v10 = dataaccess_get_global_queue();
    [daAccount2 dropAssertionsAndRenewCredentialsInQueue:v10 withHandler:v6];
  }
}

void __76__MobileCalDAVPrincipal_promptUserForNewCoreDAVPasswordWithCompletionBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  (*(*(a1 + 32) + 16))();
}

- (id)clientToken
{
  daAccount = [(MobileCalDAVPrincipal *)self daAccount];
  clientToken = [daAccount clientToken];

  return clientToken;
}

- (void)clientTokenRequestedByServer
{
  daAccount = [(MobileCalDAVPrincipal *)self daAccount];
  [daAccount clientTokenRequestedByServer];
}

- (void)webLoginRequestedAtURL:(id)l reasonString:(id)string inQueue:(id)queue completionBlock:(id)block
{
  blockCopy = block;
  queueCopy = queue;
  stringCopy = string;
  lCopy = l;
  daAccount = [(MobileCalDAVPrincipal *)self daAccount];
  [daAccount webLoginRequestedAtURL:lCopy reasonString:stringCopy inQueue:queueCopy completionBlock:blockCopy];
}

- (BOOL)handleTrustChallenge:(id)challenge
{
  challengeCopy = challenge;
  daAccount = [(MobileCalDAVPrincipal *)self daAccount];
  [daAccount handleTrustChallenge:challengeCopy];

  return 0;
}

- (BOOL)handleTrustChallenge:(id)challenge completionHandler:(id)handler
{
  handlerCopy = handler;
  challengeCopy = challenge;
  daAccount = [(MobileCalDAVPrincipal *)self daAccount];
  [daAccount handleTrustChallenge:challengeCopy completionHandler:handlerCopy];

  return 0;
}

- (BOOL)shouldFailAllTasks
{
  daAccount = [(MobileCalDAVPrincipal *)self daAccount];
  shouldFailAllTasks = [daAccount shouldFailAllTasks];

  return shouldFailAllTasks;
}

- (__CFURLStorageSession)copyStorageSession
{
  daAccount = [(MobileCalDAVPrincipal *)self daAccount];
  copyStorageSession = [daAccount copyStorageSession];

  return copyStorageSession;
}

- (BOOL)shouldSendClientInfoHeaderForURL:(id)l
{
  lCopy = l;
  daAccount = [(MobileCalDAVPrincipal *)self daAccount];
  if (objc_opt_respondsToSelector())
  {
    daAccount2 = [(MobileCalDAVPrincipal *)self daAccount];
    v7 = [daAccount2 shouldSendClientInfoHeaderForURL:lCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)shouldCompressRequests
{
  compressRequests = [MEMORY[0x277CF3AC8] compressRequests];
  if (compressRequests)
  {
    daAccount = [(MobileCalDAVPrincipal *)self daAccount];
    serverVersion = [daAccount serverVersion];
    supportsRequestCompression = [serverVersion supportsRequestCompression];

    LOBYTE(compressRequests) = supportsRequestCompression;
  }

  return compressRequests;
}

- (BOOL)shouldUseOpportunisticSockets
{
  daAccount = [(MobileCalDAVPrincipal *)self daAccount];
  shouldUseOpportunisticSockets = [daAccount shouldUseOpportunisticSockets];

  return shouldUseOpportunisticSockets;
}

- (void)noteSuccessfulRequestWithNumDownloadedElements:(int64_t)elements numUploadedElements:(int64_t)uploadedElements
{
  daAccount = [(MobileCalDAVPrincipal *)self daAccount];
  statusReport = [daAccount statusReport];
  [statusReport noteSuccessfulRequestWithNumDownloadedElements:elements numUploadedElements:uploadedElements];
}

- (void)noteFailedNetworkRequest
{
  daAccount = [(MobileCalDAVPrincipal *)self daAccount];
  statusReport = [daAccount statusReport];
  [statusReport noteFailedNetworkRequest];
}

- (void)noteFailedProtocolRequest
{
  daAccount = [(MobileCalDAVPrincipal *)self daAccount];
  statusReport = [daAccount statusReport];
  [statusReport noteFailedProtocolRequest];
}

- (void)noteTimeSpentInNetworking:(double)networking
{
  daAccount = [(MobileCalDAVPrincipal *)self daAccount];
  statusReport = [daAccount statusReport];
  [statusReport noteTimeSpentInNetworking:networking];
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