@interface CalDAVGetAccountPropertiesTaskGroup
- (id)_copyAccountPropertiesPropFindElements;
- (id)description;
- (id)userAddresses;
- (void)_setPropertiesFromParsedResponses:(id)a3;
- (void)processPrincipalHeaders:(id)a3;
- (void)startTaskGroup;
@end

@implementation CalDAVGetAccountPropertiesTaskGroup

- (id)description
{
  v7.receiver = self;
  v7.super_class = CalDAVGetAccountPropertiesTaskGroup;
  v3 = [(CoreDAVGetAccountPropertiesTaskGroup *)&v7 description];
  v4 = [v3 mutableCopy];

  [v4 appendFormat:@"\tCalendar home paths: %@\n", self->_calendarHomes];
  [v4 appendFormat:@"\tInbox path: %@\n", self->_inboxURL];
  [v4 appendFormat:@"\tOutbox path: %@\n", self->_outboxURL];
  [v4 appendFormat:@"\tDropbox path: %@\n", self->_dropboxURL];
  [v4 appendFormat:@"\tNotification path: %@\n", self->_notificationURL];
  v5 = [(CalDAVGetAccountPropertiesTaskGroup *)self userAddresses];
  [v4 appendFormat:@"\tUser addresses: %@\n", v5];

  [v4 appendFormat:@"\tServer version: %@\n", self->_serverVersion];
  [v4 appendFormat:@"\tNew Principal URL: %@\n", self->_updatedPrincipalURL];

  return v4;
}

- (id)_copyAccountPropertiesPropFindElements
{
  v11.receiver = self;
  v11.super_class = CalDAVGetAccountPropertiesTaskGroup;
  v3 = [(CoreDAVGetAccountPropertiesTaskGroup *)&v11 _copyAccountPropertiesPropFindElements];
  v4 = [objc_alloc(MEMORY[0x277CBEB58]) initWithSet:v3];
  [v4 CDVAddItemParserMappingWithNameSpace:*MEMORY[0x277CFDEF8] name:*MEMORY[0x277CFDEF0] parseClass:objc_opt_class()];
  v5 = *MEMORY[0x277CFDDC0];
  [v4 CDVAddItemParserMappingWithNameSpace:*MEMORY[0x277CFDDC0] name:*MEMORY[0x277CFDD78] parseClass:objc_opt_class()];
  [v4 CDVAddItemParserMappingWithNameSpace:v5 name:*MEMORY[0x277CFDDC8] parseClass:objc_opt_class()];
  [v4 CDVAddItemParserMappingWithNameSpace:v5 name:*MEMORY[0x277CFDD98] parseClass:objc_opt_class()];
  [v4 CDVAddItemParserMappingWithNameSpace:v5 name:*MEMORY[0x277CFDDB0] parseClass:objc_opt_class()];
  [v4 CDVAddItemParserMappingWithNameSpace:v5 name:*MEMORY[0x277CFDF90] parseClass:objc_opt_class()];
  v6 = *MEMORY[0x277CFDE90];
  [v4 CDVAddItemParserMappingWithNameSpace:*MEMORY[0x277CFDE90] name:*MEMORY[0x277CFDE20] parseClass:objc_opt_class()];
  [v4 CDVAddItemParserMappingWithNameSpace:v6 name:*MEMORY[0x277CFDE40] parseClass:objc_opt_class()];
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + *MEMORY[0x277CFDD48]));
  v8 = [WeakRetained host];
  v9 = [v8 hasSuffix:@"me.com"];

  if (v9)
  {
    [v4 CDVAddItemParserMappingWithNameSpace:*MEMORY[0x277CFDF88] name:*MEMORY[0x277CFDF68] parseClass:objc_opt_class()];
  }

  return v4;
}

- (void)startTaskGroup
{
  v10 = [(CalDAVGetAccountPropertiesTaskGroup *)self _copyAccountPropertiesPropFindElements];
  v3 = [(CalDAVGetAccountPropertiesTaskGroup *)self delegatePrincipalURL];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(CoreDAVTaskGroup *)self accountInfoProvider];
    v5 = [v6 principalURL];
  }

  v7 = [objc_alloc(MEMORY[0x277CFDC68]) initWithPropertiesToFind:v10 atURL:v5 withDepth:2];
  [*(&self->super.super.super.isa + *MEMORY[0x277CFDD58]) addObject:v7];
  [v7 setDelegate:self];
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + *MEMORY[0x277CFDD48]));
  [v7 setAccountInfoProvider:WeakRetained];

  v9 = objc_loadWeakRetained((&self->super.super.super.isa + *MEMORY[0x277CFDD60]));
  [v9 submitQueuedCoreDAVTask:v7];
}

- (void)_setPropertiesFromParsedResponses:(id)a3
{
  v82 = *MEMORY[0x277D85DE8];
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = a3;
  v72 = [obj countByEnumeratingWithState:&v75 objects:v81 count:16];
  if (v72)
  {
    v71 = *v76;
    v5 = *MEMORY[0x277CFDDC0];
    v70 = *MEMORY[0x277CFDDC8];
    v69 = *MEMORY[0x277CFDD78];
    v68 = *MEMORY[0x277CFDD98];
    v6 = *MEMORY[0x277CFDE90];
    v66 = *MEMORY[0x277CFDE40];
    v65 = *MEMORY[0x277CFDDB0];
    v64 = *MEMORY[0x277CFDE20];
    v7 = *MEMORY[0x277CFDEF8];
    v63 = *MEMORY[0x277CFDEF0];
    v60 = *MEMORY[0x277CFDFC0];
    v62 = *MEMORY[0x277CFE030];
    *&v4 = 138412290;
    v59 = v4;
    v67 = *MEMORY[0x277CFDE90];
    v73 = *MEMORY[0x277CFDEF8];
    do
    {
      for (i = 0; i != v72; ++i)
      {
        if (*v76 != v71)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [*(*(&v75 + 1) + 8 * i) successfulPropertiesToValues];
        v10 = [v9 CDVObjectForKeyWithNameSpace:v5 andName:v70];
        v11 = [CalDAVCalendarUserAddressItemTranslator userAddressesForAddressSetItem:v10];
        preferredUserAddresses = self->_preferredUserAddresses;
        self->_preferredUserAddresses = v11;

        v13 = [v9 CDVObjectForKeyWithNameSpace:v5 andName:v69];
        v14 = [v13 hrefsAsFullURLs];
        calendarHomes = self->_calendarHomes;
        self->_calendarHomes = v14;

        v16 = [v9 CDVObjectForKeyWithNameSpace:v5 andName:v68];
        v17 = [v16 href];
        v18 = [v17 payloadAsFullURL];
        inboxURL = self->_inboxURL;
        self->_inboxURL = v18;

        v20 = [v9 CDVObjectForKeyWithNameSpace:v6 andName:v66];
        v21 = [v20 href];
        v22 = [v21 payloadAsFullURL];
        notificationURL = self->_notificationURL;
        self->_notificationURL = v22;

        v24 = [v9 CDVObjectForKeyWithNameSpace:v5 andName:v65];
        v25 = [v24 href];
        v26 = [v25 payloadAsFullURL];
        outboxURL = self->_outboxURL;
        self->_outboxURL = v26;

        v28 = [v9 CDVObjectForKeyWithNameSpace:v6 andName:v64];
        v29 = [v28 href];
        v30 = [v29 payloadAsFullURL];
        dropboxURL = self->_dropboxURL;
        self->_dropboxURL = v30;

        v32 = [v9 CDVObjectForKeyWithNameSpace:v7 andName:v63];
        v33 = v32;
        if (!v32)
        {
          v35 = [MEMORY[0x277CFDC18] sharedLogging];
          WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + *MEMORY[0x277CFDD48]));
          v37 = [v35 logHandleForAccountInfoProvider:WeakRetained];

          if (v37 && os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v59;
            v80 = v9;
            v38 = v37;
            v39 = "Could not find the current user principal. Found properties: [%@]";
            goto LABEL_14;
          }

LABEL_16:

          v7 = v73;
          goto LABEL_17;
        }

        v34 = [v32 unauthenticated];

        if (v34)
        {
          v35 = [MEMORY[0x277CFDC18] sharedLogging];
          v36 = objc_loadWeakRetained((&self->super.super.super.isa + *MEMORY[0x277CFDD48]));
          v37 = [v35 logHandleForAccountInfoProvider:v36];

          if (!v37 || !os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_16;
          }

          *buf = 0;
          v38 = v37;
          v39 = "Not authenticated to get current user principal";
          v40 = 2;
          goto LABEL_15;
        }

        v52 = [v33 href];
        v53 = [v52 payloadAsFullURL];
        updatedPrincipalURL = self->_updatedPrincipalURL;
        self->_updatedPrincipalURL = v53;

        if (!self->_updatedPrincipalURL)
        {
          v35 = [MEMORY[0x277CFDC18] sharedLogging];
          v55 = objc_loadWeakRetained((&self->super.super.super.isa + *MEMORY[0x277CFDD48]));
          v37 = [v35 logHandleForAccountInfoProvider:v55];

          if (!v37 || !os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_16;
          }

          *buf = v59;
          v80 = v33;
          v38 = v37;
          v39 = "Could not find the current user principal's HREF.  Current user principal: [%@]";
LABEL_14:
          v40 = 12;
LABEL_15:
          _os_log_impl(&dword_242742000, v38, OS_LOG_TYPE_DEFAULT, v39, buf, v40);
          goto LABEL_16;
        }

LABEL_17:
        if (self->_updatedPrincipalURL)
        {
          goto LABEL_33;
        }

        v42 = [v9 CDVObjectForKeyWithNameSpace:v7 andName:v60];
        v43 = v42;
        if (!v42)
        {
          v47 = [MEMORY[0x277CFDC18] sharedLogging];
          v56 = objc_loadWeakRetained((&self->super.super.super.isa + *MEMORY[0x277CFDD48]));
          v49 = [v47 logHandleForAccountInfoProvider:v56];

          if (v49 && os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v59;
            v80 = v9;
            v50 = v49;
            v51 = "Could not find the user's principal URL. Found properties: [%@]";
LABEL_30:
            _os_log_impl(&dword_242742000, v50, OS_LOG_TYPE_DEFAULT, v51, buf, 0xCu);
          }

LABEL_31:

          v7 = v73;
          goto LABEL_32;
        }

        v44 = [v42 href];
        v45 = [v44 payloadAsFullURL];
        v46 = self->_updatedPrincipalURL;
        self->_updatedPrincipalURL = v45;

        if (!self->_updatedPrincipalURL)
        {
          v47 = [MEMORY[0x277CFDC18] sharedLogging];
          v48 = objc_loadWeakRetained((&self->super.super.super.isa + *MEMORY[0x277CFDD48]));
          v49 = [v47 logHandleForAccountInfoProvider:v48];

          if (v49 && os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v59;
            v80 = v9;
            v50 = v49;
            v51 = "Could not find the href of the user's principal URL. Found properties: [%@]";
            goto LABEL_30;
          }

          goto LABEL_31;
        }

LABEL_32:

LABEL_33:
        v57 = [v9 CDVObjectForKeyWithNameSpace:v7 andName:v62];
        v6 = v67;
        self->_supportsCalendarUserSearch = [v57 supportsReportWithNameSpace:v67 andName:@"calendarserver-principal-search"];
      }

      v72 = [obj countByEnumeratingWithState:&v75 objects:v81 count:16];
    }

    while (v72);
  }

  v74.receiver = self;
  v74.super_class = CalDAVGetAccountPropertiesTaskGroup;
  [(CoreDAVGetAccountPropertiesTaskGroup *)&v74 _setPropertiesFromParsedResponses:obj];

  v58 = *MEMORY[0x277D85DE8];
}

- (id)userAddresses
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(CalDAVGetAccountPropertiesTaskGroup *)self preferredUserAddresses];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) address];
        v10 = [v9 absoluteString];
        [v3 addObject:v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)processPrincipalHeaders:(id)a3
{
  v4 = a3;
  v5 = [CalDAVServerVersion versionWithHTTPHeaders:v4];
  serverVersion = self->_serverVersion;
  self->_serverVersion = v5;

  if ([(CoreDAVGetAccountPropertiesTaskGroup *)self fetchPrincipalSearchProperties])
  {
    [(CoreDAVGetAccountPropertiesTaskGroup *)self setFetchPrincipalSearchProperties:[(CalDAVServerVersion *)self->_serverVersion supportsPrincipalPropertySearch]];
  }

  v7.receiver = self;
  v7.super_class = CalDAVGetAccountPropertiesTaskGroup;
  [(CoreDAVGetAccountPropertiesTaskGroup *)&v7 processPrincipalHeaders:v4];
}

@end