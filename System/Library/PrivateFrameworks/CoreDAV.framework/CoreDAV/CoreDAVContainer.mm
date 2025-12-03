@interface CoreDAVContainer
+ (id)convertPushTransportsForNSServerNotificationCenter:(id)center;
+ (id)copyPropertyMappingsForParser;
- (BOOL)_anyPrivilegesMatches:(id)matches;
- (BOOL)hasBindPrivileges;
- (BOOL)hasReadPrivileges;
- (BOOL)hasUnbindPrivileges;
- (BOOL)hasWriteContentPrivileges;
- (BOOL)hasWritePropertiesPrivileges;
- (BOOL)isPrincipal;
- (BOOL)supportsPrincipalPropertySearchReport;
- (BOOL)supportsSyncCollectionReport;
- (CoreDAVContainer)initWithURL:(id)l andProperties:(id)properties;
- (NSSet)privilegesAsStringSet;
- (NSSet)resourceTypeAsStringSet;
- (NSSet)supportedReports;
- (NSSet)supportedReportsAsStringSet;
- (id)description;
- (void)applyParsedProperties:(id)properties;
@end

@implementation CoreDAVContainer

+ (id)copyPropertyMappingsForParser
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB58]);
  [v2 CDVAddItemParserMappingWithNameSpace:@"DAV:" name:@"resourcetype" parseClass:objc_opt_class()];
  [v2 CDVAddItemParserMappingWithNameSpace:@"DAV:" name:@"displayname" parseClass:objc_opt_class()];
  [v2 CDVAddItemParserMappingWithNameSpace:@"DAV:" name:@"owner" parseClass:objc_opt_class()];
  [v2 CDVAddItemParserMappingWithNameSpace:@"DAV:" name:@"current-user-privilege-set" parseClass:objc_opt_class()];
  [v2 CDVAddItemParserMappingWithNameSpace:@"http://calendarserver.org/ns/" name:@"pushkey" parseClass:objc_opt_class()];
  [v2 CDVAddItemParserMappingWithNameSpace:@"http://calendarserver.org/ns/" name:@"push-transports" parseClass:objc_opt_class()];
  [v2 CDVAddItemParserMappingWithNameSpace:@"DAV:" name:@"resource-id" parseClass:objc_opt_class()];
  [v2 CDVAddItemParserMappingWithNameSpace:@"DAV:" name:@"quota-available-bytes" parseClass:objc_opt_class()];
  [v2 CDVAddItemParserMappingWithNameSpace:@"DAV:" name:@"quota-used-bytes" parseClass:objc_opt_class()];
  [v2 CDVAddItemParserMappingWithNameSpace:@"DAV:" name:@"supported-report-set" parseClass:objc_opt_class()];
  [v2 CDVAddItemParserMappingWithNameSpace:@"DAV:" name:@"add-member" parseClass:objc_opt_class()];
  [v2 CDVAddItemParserMappingWithNameSpace:@"http://me.com/_namespace/" name:@"bulk-requests" parseClass:objc_opt_class()];
  [v2 CDVAddItemParserMappingWithNameSpace:@"DAV:" name:@"sync-token" parseClass:objc_opt_class()];
  return v2;
}

- (CoreDAVContainer)initWithURL:(id)l andProperties:(id)properties
{
  lCopy = l;
  propertiesCopy = properties;
  v9 = [(CoreDAVContainer *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_url, l);
    [(CoreDAVContainer *)v10 applyParsedProperties:propertiesCopy];
  }

  return v10;
}

- (id)description
{
  v23.receiver = self;
  v23.super_class = CoreDAVContainer;
  v3 = [(CoreDAVContainer *)&v23 description];
  v4 = MEMORY[0x277CCAB68];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 stringWithFormat:@"%@ %p: ", v6, self];

  [v7 appendFormat:@" PARENT CLASS: %@", v3];
  v8 = [(CoreDAVContainer *)self url];
  [v7 appendFormat:@"\n\turl: %@", v8];

  resourceType = [(CoreDAVContainer *)self resourceType];
  [v7 appendFormat:@"\n\tresourceType: %@", resourceType];

  isUnauthenticated = [(CoreDAVContainer *)self isUnauthenticated];
  v11 = @"NO";
  if (isUnauthenticated)
  {
    v11 = @"YES";
  }

  [v7 appendFormat:@"\n\tisUnauthenticated: %@", v11];
  containerTitle = [(CoreDAVContainer *)self containerTitle];
  [v7 appendFormat:@"\n\tcontainerTitle: %@", containerTitle];

  privilegesAsStringSet = [(CoreDAVContainer *)self privilegesAsStringSet];
  [v7 appendFormat:@"\n\tprivileges: %@", privilegesAsStringSet];

  pushKey = [(CoreDAVContainer *)self pushKey];
  [v7 appendFormat:@"\n\tpushKey: %@", pushKey];

  resourceID = [(CoreDAVContainer *)self resourceID];
  [v7 appendFormat:@"\n\tresourceID: %@", resourceID];

  quotaAvailable = [(CoreDAVContainer *)self quotaAvailable];
  [v7 appendFormat:@"\n\tquotaAvailable: %@", quotaAvailable];

  quotaUsed = [(CoreDAVContainer *)self quotaUsed];
  [v7 appendFormat:@"\n\tquotaUsed: %@", quotaUsed];

  supportedReportsAsStringSet = [(CoreDAVContainer *)self supportedReportsAsStringSet];
  [v7 appendFormat:@"\n\tsupportedReports: %@", supportedReportsAsStringSet];

  pushTransports = [(CoreDAVContainer *)self pushTransports];
  [v7 appendFormat:@"\n\tpushTransports: %@", pushTransports];

  bulkRequests = [(CoreDAVContainer *)self bulkRequests];
  [v7 appendFormat:@"\n\tbulkRequests: %@", bulkRequests];

  syncToken = [(CoreDAVContainer *)self syncToken];
  [v7 appendFormat:@"\n\tsyncToken: %@", syncToken];

  return v7;
}

- (void)applyParsedProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = [propertiesCopy CDVObjectForKeyWithNameSpace:@"DAV:" andName:@"resourcetype"];
  [(CoreDAVContainer *)self setResourceType:v5];

  resourceType = [(CoreDAVContainer *)self resourceType];
  unauthenticated = [resourceType unauthenticated];
  [(CoreDAVContainer *)self setIsUnauthenticated:unauthenticated != 0];

  v8 = [propertiesCopy CDVObjectForKeyWithNameSpace:@"DAV:" andName:@"displayname"];
  payloadAsString = [v8 payloadAsString];
  [(CoreDAVContainer *)self setContainerTitle:payloadAsString];

  v10 = [propertiesCopy CDVObjectForKeyWithNameSpace:@"DAV:" andName:@"current-user-privilege-set"];
  privileges = [v10 privileges];
  [(CoreDAVContainer *)self setPrivileges:privileges];

  v12 = [propertiesCopy CDVObjectForKeyWithNameSpace:@"http://calendarserver.org/ns/" andName:@"pushkey"];
  payloadAsString2 = [v12 payloadAsString];
  [(CoreDAVContainer *)self setPushKey:payloadAsString2];

  v14 = [propertiesCopy CDVObjectForKeyWithNameSpace:@"DAV:" andName:@"resource-id"];
  href = [v14 href];
  payloadAsFullURL = [href payloadAsFullURL];
  [(CoreDAVContainer *)self setResourceID:payloadAsFullURL];

  v17 = [propertiesCopy CDVObjectForKeyWithNameSpace:@"DAV:" andName:@"quota-available-bytes"];
  payloadAsString3 = [v17 payloadAsString];
  [(CoreDAVContainer *)self setQuotaAvailable:payloadAsString3];

  v19 = [propertiesCopy CDVObjectForKeyWithNameSpace:@"DAV:" andName:@"quota-used-bytes"];
  payloadAsString4 = [v19 payloadAsString];
  [(CoreDAVContainer *)self setQuotaUsed:payloadAsString4];

  v21 = [propertiesCopy CDVObjectForKeyWithNameSpace:@"DAV:" andName:@"supported-report-set"];
  [(CoreDAVContainer *)self setSupportedReportSetItem:v21];

  v22 = [propertiesCopy CDVObjectForKeyWithNameSpace:@"DAV:" andName:@"owner"];
  href2 = [v22 href];
  payloadAsFullURL2 = [href2 payloadAsFullURL];
  [(CoreDAVContainer *)self setOwner:payloadAsFullURL2];

  v25 = [propertiesCopy CDVObjectForKeyWithNameSpace:@"DAV:" andName:@"add-member"];
  href3 = [v25 href];
  payloadAsFullURL3 = [href3 payloadAsFullURL];
  [(CoreDAVContainer *)self setAddMemberURL:payloadAsFullURL3];

  v28 = [propertiesCopy CDVObjectForKeyWithNameSpace:@"http://calendarserver.org/ns/" andName:@"push-transports"];
  v29 = [CoreDAVContainer convertPushTransportsForNSServerNotificationCenter:v28];
  [(CoreDAVContainer *)self setPushTransports:v29];

  v30 = [propertiesCopy CDVObjectForKeyWithNameSpace:@"http://me.com/_namespace/" andName:@"bulk-requests"];
  dictRepresentation = [v30 dictRepresentation];
  [(CoreDAVContainer *)self setBulkRequests:dictRepresentation];

  v33 = [propertiesCopy CDVObjectForKeyWithNameSpace:@"DAV:" andName:@"sync-token"];

  payloadAsString5 = [v33 payloadAsString];
  [(CoreDAVContainer *)self setSyncToken:payloadAsString5];
}

- (NSSet)supportedReports
{
  supportedReportSetItem = [(CoreDAVContainer *)self supportedReportSetItem];
  supportedReports = [supportedReportSetItem supportedReports];

  return supportedReports;
}

- (NSSet)resourceTypeAsStringSet
{
  resourceType = [(CoreDAVContainer *)self resourceType];
  stringSet = [resourceType stringSet];

  return stringSet;
}

- (BOOL)isPrincipal
{
  resourceType = [(CoreDAVContainer *)self resourceType];
  if (resourceType)
  {
    resourceType2 = [(CoreDAVContainer *)self resourceType];
    principal = [resourceType2 principal];
    v6 = principal != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSSet)privilegesAsStringSet
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [(CoreDAVContainer *)self privileges];
  v20 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v20)
  {
    v19 = *v26;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v25 + 1) + 8 * i);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        extraChildItems = [v5 extraChildItems];
        v7 = [extraChildItems countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v22;
          do
          {
            for (j = 0; j != v8; ++j)
            {
              if (*v22 != v9)
              {
                objc_enumerationMutation(extraChildItems);
              }

              v11 = *(*(&v21 + 1) + 8 * j);
              v12 = objc_alloc(MEMORY[0x277CCACA8]);
              nameSpace = [v11 nameSpace];
              name = [v11 name];
              v15 = [v12 initWithCDVNameSpace:nameSpace andName:name];

              [v3 addObject:v15];
            }

            v8 = [extraChildItems countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v8);
        }
      }

      v20 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v20);
  }

  if (![v3 count])
  {

    v3 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)_anyPrivilegesMatches:(id)matches
{
  v29 = *MEMORY[0x277D85DE8];
  matchesCopy = matches;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  privileges = [(CoreDAVContainer *)self privileges];
  v6 = [privileges countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(privileges);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        extraChildItems = [v10 extraChildItems];
        v12 = [extraChildItems countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v20;
          while (2)
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v20 != v14)
              {
                objc_enumerationMutation(extraChildItems);
              }

              if (matchesCopy[2](matchesCopy, *(*(&v19 + 1) + 8 * j)))
              {

                v16 = 1;
                goto LABEL_19;
              }
            }

            v13 = [extraChildItems countByEnumeratingWithState:&v19 objects:v27 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }
      }

      v7 = [privileges countByEnumeratingWithState:&v23 objects:v28 count:16];
      v16 = 0;
    }

    while (v7);
  }

  else
  {
    v16 = 0;
  }

LABEL_19:

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (BOOL)hasReadPrivileges
{
  v3 = [MEMORY[0x277CBEB98] setWithObjects:{@"all", @"read", 0}];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__CoreDAVContainer_hasReadPrivileges__block_invoke;
  v6[3] = &unk_278E30EF0;
  v7 = v3;
  v4 = v3;
  LOBYTE(self) = [(CoreDAVContainer *)self _anyPrivilegesMatches:v6];

  return self;
}

uint64_t __37__CoreDAVContainer_hasReadPrivileges__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 nameSpace];
  if ([@"DAV:" isEqualToString:v4])
  {
    v5 = *(a1 + 32);
    v6 = [v3 name];
    v7 = [v5 containsObject:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)hasWriteContentPrivileges
{
  v3 = [MEMORY[0x277CBEB98] setWithObjects:{@"all", @"write", @"write-content", 0}];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__CoreDAVContainer_hasWriteContentPrivileges__block_invoke;
  v6[3] = &unk_278E30EF0;
  v7 = v3;
  v4 = v3;
  LOBYTE(self) = [(CoreDAVContainer *)self _anyPrivilegesMatches:v6];

  return self;
}

uint64_t __45__CoreDAVContainer_hasWriteContentPrivileges__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 nameSpace];
  if ([@"DAV:" isEqualToString:v4])
  {
    v5 = *(a1 + 32);
    v6 = [v3 name];
    v7 = [v5 containsObject:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)hasWritePropertiesPrivileges
{
  v3 = [MEMORY[0x277CBEB98] setWithObjects:{@"all", @"write", @"write-properties", 0}];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__CoreDAVContainer_hasWritePropertiesPrivileges__block_invoke;
  v6[3] = &unk_278E30EF0;
  v7 = v3;
  v4 = v3;
  LOBYTE(self) = [(CoreDAVContainer *)self _anyPrivilegesMatches:v6];

  return self;
}

uint64_t __48__CoreDAVContainer_hasWritePropertiesPrivileges__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 nameSpace];
  if ([@"DAV:" isEqualToString:v4])
  {
    v5 = *(a1 + 32);
    v6 = [v3 name];
    v7 = [v5 containsObject:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)hasBindPrivileges
{
  v3 = [MEMORY[0x277CBEB98] setWithObjects:{@"all", @"write", @"bind", 0}];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__CoreDAVContainer_hasBindPrivileges__block_invoke;
  v6[3] = &unk_278E30EF0;
  v7 = v3;
  v4 = v3;
  LOBYTE(self) = [(CoreDAVContainer *)self _anyPrivilegesMatches:v6];

  return self;
}

uint64_t __37__CoreDAVContainer_hasBindPrivileges__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 nameSpace];
  if ([@"DAV:" isEqualToString:v4])
  {
    v5 = *(a1 + 32);
    v6 = [v3 name];
    v7 = [v5 containsObject:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)hasUnbindPrivileges
{
  v3 = [MEMORY[0x277CBEB98] setWithObjects:{@"all", @"write", @"unbind", 0}];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__CoreDAVContainer_hasUnbindPrivileges__block_invoke;
  v6[3] = &unk_278E30EF0;
  v7 = v3;
  v4 = v3;
  LOBYTE(self) = [(CoreDAVContainer *)self _anyPrivilegesMatches:v6];

  return self;
}

uint64_t __39__CoreDAVContainer_hasUnbindPrivileges__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 nameSpace];
  if ([@"DAV:" isEqualToString:v4])
  {
    v5 = *(a1 + 32);
    v6 = [v3 name];
    v7 = [v5 containsObject:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSSet)supportedReportsAsStringSet
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [(CoreDAVContainer *)self supportedReports];
  v21 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v21)
  {
    v20 = *v27;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v26 + 1) + 8 * i);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        report = [v5 report];
        extraChildItems = [report extraChildItems];

        v8 = [extraChildItems countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v23;
          do
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v23 != v10)
              {
                objc_enumerationMutation(extraChildItems);
              }

              v12 = *(*(&v22 + 1) + 8 * j);
              v13 = objc_alloc(MEMORY[0x277CCACA8]);
              nameSpace = [v12 nameSpace];
              name = [v12 name];
              v16 = [v13 initWithCDVNameSpace:nameSpace andName:name];

              [v3 addObject:v16];
            }

            v9 = [extraChildItems countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v9);
        }
      }

      v21 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v21);
  }

  if (![v3 count])
  {

    v3 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)supportsPrincipalPropertySearchReport
{
  supportedReportSetItem = [(CoreDAVContainer *)self supportedReportSetItem];
  v3 = [supportedReportSetItem supportsReportWithNameSpace:@"DAV:" andName:@"principal-property-search"];

  return v3;
}

- (BOOL)supportsSyncCollectionReport
{
  supportedReportSetItem = [(CoreDAVContainer *)self supportedReportSetItem];
  v3 = [supportedReportSetItem supportsReportWithNameSpace:@"DAV:" andName:@"sync-collection"];

  return v3;
}

+ (id)convertPushTransportsForNSServerNotificationCenter:(id)center
{
  v75 = *MEMORY[0x277D85DE8];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  centerCopy = center;
  obj = [centerCopy transports];
  v59 = [obj countByEnumeratingWithState:&v68 objects:v74 count:16];
  if (v59)
  {
    v57 = 0;
    v58 = *v69;
    do
    {
      for (i = 0; i != v59; ++i)
      {
        if (*v69 != v58)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v68 + 1) + 8 * i);
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        attributes = [v4 attributes];
        v6 = [attributes countByEnumeratingWithState:&v64 objects:v73 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v65;
LABEL_8:
          v9 = 0;
          while (1)
          {
            if (*v65 != v8)
            {
              objc_enumerationMutation(attributes);
            }

            v10 = *(*(&v64 + 1) + 8 * v9);
            name = [v10 name];
            v12 = [name isEqualToString:@"type"];

            if (v12)
            {
              break;
            }

            if (v7 == ++v9)
            {
              v7 = [attributes countByEnumeratingWithState:&v64 objects:v73 count:16];
              if (v7)
              {
                goto LABEL_8;
              }

              goto LABEL_44;
            }
          }

          value = [v10 value];

          if (!value)
          {
            continue;
          }

          v56 = value;
          v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
          subscriptionURL = [v4 subscriptionURL];
          href = [subscriptionURL href];
          payloadAsFullURL = [href payloadAsFullURL];

          if (payloadAsFullURL)
          {
            absoluteString = [payloadAsFullURL absoluteString];
            [v14 setObject:absoluteString forKey:@"subscription-url"];
          }

          tokenURL = [v4 tokenURL];
          href2 = [tokenURL href];
          payloadAsFullURL2 = [href2 payloadAsFullURL];

          if (payloadAsFullURL2)
          {
            absoluteString2 = [payloadAsFullURL2 absoluteString];
            [v14 setObject:absoluteString2 forKey:@"token-url"];
          }

          apsBundleID = [v4 apsBundleID];
          payloadAsString = [apsBundleID payloadAsString];

          if (payloadAsString)
          {
            [v14 setObject:payloadAsString forKey:@"apsbundleid"];
          }

          v54 = payloadAsFullURL2;
          courierServer = [v4 courierServer];
          payloadAsString2 = [courierServer payloadAsString];

          if (payloadAsString2)
          {
            [v14 setObject:payloadAsString2 forKey:@"courierserver"];
          }

          v27 = payloadAsFullURL;
          apsEnv = [v4 apsEnv];
          payloadAsString3 = [apsEnv payloadAsString];

          if (payloadAsString3)
          {
            [v14 setObject:payloadAsString3 forKey:@"env"];
          }

          refreshInterval = [v4 refreshInterval];
          payloadAsString4 = [refreshInterval payloadAsString];

          if (payloadAsString4)
          {
            [v14 setObject:payloadAsString4 forKey:@"refresh-interval"];
          }

          v50 = payloadAsString4;
          v53 = payloadAsString;
          v55 = v27;
          xmppServer = [v4 xmppServer];
          payloadAsString5 = [xmppServer payloadAsString];

          if (payloadAsString5)
          {
            [v14 setObject:payloadAsString5 forKey:@"xmpp-server"];
          }

          v49 = payloadAsString5;
          v51 = payloadAsString3;
          v52 = payloadAsString2;
          xmppURI = [v4 xmppURI];
          payloadAsString6 = [xmppURI payloadAsString];

          if (payloadAsString6)
          {
            [v14 setObject:payloadAsString6 forKey:@"xmpp-uri"];
          }

          v62 = 0u;
          v63 = 0u;
          v60 = 0u;
          v61 = 0u;
          extraChildItems = [v4 extraChildItems];
          v37 = [extraChildItems countByEnumeratingWithState:&v60 objects:v72 count:16];
          if (v37)
          {
            v38 = v37;
            v39 = *v61;
            do
            {
              for (j = 0; j != v38; ++j)
              {
                if (*v61 != v39)
                {
                  objc_enumerationMutation(extraChildItems);
                }

                v41 = *(*(&v60 + 1) + 8 * j);
                payloadAsString7 = [v41 payloadAsString];
                if (payloadAsString7)
                {
                  name2 = [v41 name];
                  [v14 setObject:payloadAsString7 forKey:name2];
                }
              }

              v38 = [extraChildItems countByEnumeratingWithState:&v60 objects:v72 count:16];
            }

            while (v38);
          }

          v44 = v57;
          if (!v57)
          {
            v44 = objc_alloc_init(MEMORY[0x277CBEB38]);
          }

          v57 = v44;
          [v44 setObject:v14 forKey:v56];

          attributes = v56;
        }

LABEL_44:
      }

      v59 = [obj countByEnumeratingWithState:&v68 objects:v74 count:16];
    }

    while (v59);
  }

  else
  {
    v57 = 0;
  }

  v45 = *MEMORY[0x277D85DE8];

  return v57;
}

@end