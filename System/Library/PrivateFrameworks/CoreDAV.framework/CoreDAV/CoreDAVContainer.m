@interface CoreDAVContainer
+ (id)convertPushTransportsForNSServerNotificationCenter:(id)a3;
+ (id)copyPropertyMappingsForParser;
- (BOOL)_anyPrivilegesMatches:(id)a3;
- (BOOL)hasBindPrivileges;
- (BOOL)hasReadPrivileges;
- (BOOL)hasUnbindPrivileges;
- (BOOL)hasWriteContentPrivileges;
- (BOOL)hasWritePropertiesPrivileges;
- (BOOL)isPrincipal;
- (BOOL)supportsPrincipalPropertySearchReport;
- (BOOL)supportsSyncCollectionReport;
- (CoreDAVContainer)initWithURL:(id)a3 andProperties:(id)a4;
- (NSSet)privilegesAsStringSet;
- (NSSet)resourceTypeAsStringSet;
- (NSSet)supportedReports;
- (NSSet)supportedReportsAsStringSet;
- (id)description;
- (void)applyParsedProperties:(id)a3;
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

- (CoreDAVContainer)initWithURL:(id)a3 andProperties:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(CoreDAVContainer *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_url, a3);
    [(CoreDAVContainer *)v10 applyParsedProperties:v8];
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

  v9 = [(CoreDAVContainer *)self resourceType];
  [v7 appendFormat:@"\n\tresourceType: %@", v9];

  v10 = [(CoreDAVContainer *)self isUnauthenticated];
  v11 = @"NO";
  if (v10)
  {
    v11 = @"YES";
  }

  [v7 appendFormat:@"\n\tisUnauthenticated: %@", v11];
  v12 = [(CoreDAVContainer *)self containerTitle];
  [v7 appendFormat:@"\n\tcontainerTitle: %@", v12];

  v13 = [(CoreDAVContainer *)self privilegesAsStringSet];
  [v7 appendFormat:@"\n\tprivileges: %@", v13];

  v14 = [(CoreDAVContainer *)self pushKey];
  [v7 appendFormat:@"\n\tpushKey: %@", v14];

  v15 = [(CoreDAVContainer *)self resourceID];
  [v7 appendFormat:@"\n\tresourceID: %@", v15];

  v16 = [(CoreDAVContainer *)self quotaAvailable];
  [v7 appendFormat:@"\n\tquotaAvailable: %@", v16];

  v17 = [(CoreDAVContainer *)self quotaUsed];
  [v7 appendFormat:@"\n\tquotaUsed: %@", v17];

  v18 = [(CoreDAVContainer *)self supportedReportsAsStringSet];
  [v7 appendFormat:@"\n\tsupportedReports: %@", v18];

  v19 = [(CoreDAVContainer *)self pushTransports];
  [v7 appendFormat:@"\n\tpushTransports: %@", v19];

  v20 = [(CoreDAVContainer *)self bulkRequests];
  [v7 appendFormat:@"\n\tbulkRequests: %@", v20];

  v21 = [(CoreDAVContainer *)self syncToken];
  [v7 appendFormat:@"\n\tsyncToken: %@", v21];

  return v7;
}

- (void)applyParsedProperties:(id)a3
{
  v4 = a3;
  v5 = [v4 CDVObjectForKeyWithNameSpace:@"DAV:" andName:@"resourcetype"];
  [(CoreDAVContainer *)self setResourceType:v5];

  v6 = [(CoreDAVContainer *)self resourceType];
  v7 = [v6 unauthenticated];
  [(CoreDAVContainer *)self setIsUnauthenticated:v7 != 0];

  v8 = [v4 CDVObjectForKeyWithNameSpace:@"DAV:" andName:@"displayname"];
  v9 = [v8 payloadAsString];
  [(CoreDAVContainer *)self setContainerTitle:v9];

  v10 = [v4 CDVObjectForKeyWithNameSpace:@"DAV:" andName:@"current-user-privilege-set"];
  v11 = [v10 privileges];
  [(CoreDAVContainer *)self setPrivileges:v11];

  v12 = [v4 CDVObjectForKeyWithNameSpace:@"http://calendarserver.org/ns/" andName:@"pushkey"];
  v13 = [v12 payloadAsString];
  [(CoreDAVContainer *)self setPushKey:v13];

  v14 = [v4 CDVObjectForKeyWithNameSpace:@"DAV:" andName:@"resource-id"];
  v15 = [v14 href];
  v16 = [v15 payloadAsFullURL];
  [(CoreDAVContainer *)self setResourceID:v16];

  v17 = [v4 CDVObjectForKeyWithNameSpace:@"DAV:" andName:@"quota-available-bytes"];
  v18 = [v17 payloadAsString];
  [(CoreDAVContainer *)self setQuotaAvailable:v18];

  v19 = [v4 CDVObjectForKeyWithNameSpace:@"DAV:" andName:@"quota-used-bytes"];
  v20 = [v19 payloadAsString];
  [(CoreDAVContainer *)self setQuotaUsed:v20];

  v21 = [v4 CDVObjectForKeyWithNameSpace:@"DAV:" andName:@"supported-report-set"];
  [(CoreDAVContainer *)self setSupportedReportSetItem:v21];

  v22 = [v4 CDVObjectForKeyWithNameSpace:@"DAV:" andName:@"owner"];
  v23 = [v22 href];
  v24 = [v23 payloadAsFullURL];
  [(CoreDAVContainer *)self setOwner:v24];

  v25 = [v4 CDVObjectForKeyWithNameSpace:@"DAV:" andName:@"add-member"];
  v26 = [v25 href];
  v27 = [v26 payloadAsFullURL];
  [(CoreDAVContainer *)self setAddMemberURL:v27];

  v28 = [v4 CDVObjectForKeyWithNameSpace:@"http://calendarserver.org/ns/" andName:@"push-transports"];
  v29 = [CoreDAVContainer convertPushTransportsForNSServerNotificationCenter:v28];
  [(CoreDAVContainer *)self setPushTransports:v29];

  v30 = [v4 CDVObjectForKeyWithNameSpace:@"http://me.com/_namespace/" andName:@"bulk-requests"];
  v31 = [v30 dictRepresentation];
  [(CoreDAVContainer *)self setBulkRequests:v31];

  v33 = [v4 CDVObjectForKeyWithNameSpace:@"DAV:" andName:@"sync-token"];

  v32 = [v33 payloadAsString];
  [(CoreDAVContainer *)self setSyncToken:v32];
}

- (NSSet)supportedReports
{
  v2 = [(CoreDAVContainer *)self supportedReportSetItem];
  v3 = [v2 supportedReports];

  return v3;
}

- (NSSet)resourceTypeAsStringSet
{
  v2 = [(CoreDAVContainer *)self resourceType];
  v3 = [v2 stringSet];

  return v3;
}

- (BOOL)isPrincipal
{
  v3 = [(CoreDAVContainer *)self resourceType];
  if (v3)
  {
    v4 = [(CoreDAVContainer *)self resourceType];
    v5 = [v4 principal];
    v6 = v5 != 0;
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
        v6 = [v5 extraChildItems];
        v7 = [v6 countByEnumeratingWithState:&v21 objects:v29 count:16];
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
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v21 + 1) + 8 * j);
              v12 = objc_alloc(MEMORY[0x277CCACA8]);
              v13 = [v11 nameSpace];
              v14 = [v11 name];
              v15 = [v12 initWithCDVNameSpace:v13 andName:v14];

              [v3 addObject:v15];
            }

            v8 = [v6 countByEnumeratingWithState:&v21 objects:v29 count:16];
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

- (BOOL)_anyPrivilegesMatches:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = [(CoreDAVContainer *)self privileges];
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v11 = [v10 extraChildItems];
        v12 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
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
                objc_enumerationMutation(v11);
              }

              if (v4[2](v4, *(*(&v19 + 1) + 8 * j)))
              {

                v16 = 1;
                goto LABEL_19;
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
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
        v6 = [v5 report];
        v7 = [v6 extraChildItems];

        v8 = [v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
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
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v22 + 1) + 8 * j);
              v13 = objc_alloc(MEMORY[0x277CCACA8]);
              v14 = [v12 nameSpace];
              v15 = [v12 name];
              v16 = [v13 initWithCDVNameSpace:v14 andName:v15];

              [v3 addObject:v16];
            }

            v9 = [v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
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
  v2 = [(CoreDAVContainer *)self supportedReportSetItem];
  v3 = [v2 supportsReportWithNameSpace:@"DAV:" andName:@"principal-property-search"];

  return v3;
}

- (BOOL)supportsSyncCollectionReport
{
  v2 = [(CoreDAVContainer *)self supportedReportSetItem];
  v3 = [v2 supportsReportWithNameSpace:@"DAV:" andName:@"sync-collection"];

  return v3;
}

+ (id)convertPushTransportsForNSServerNotificationCenter:(id)a3
{
  v75 = *MEMORY[0x277D85DE8];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v47 = a3;
  obj = [v47 transports];
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
        v5 = [v4 attributes];
        v6 = [v5 countByEnumeratingWithState:&v64 objects:v73 count:16];
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
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v64 + 1) + 8 * v9);
            v11 = [v10 name];
            v12 = [v11 isEqualToString:@"type"];

            if (v12)
            {
              break;
            }

            if (v7 == ++v9)
            {
              v7 = [v5 countByEnumeratingWithState:&v64 objects:v73 count:16];
              if (v7)
              {
                goto LABEL_8;
              }

              goto LABEL_44;
            }
          }

          v13 = [v10 value];

          if (!v13)
          {
            continue;
          }

          v56 = v13;
          v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v15 = [v4 subscriptionURL];
          v16 = [v15 href];
          v17 = [v16 payloadAsFullURL];

          if (v17)
          {
            v18 = [v17 absoluteString];
            [v14 setObject:v18 forKey:@"subscription-url"];
          }

          v19 = [v4 tokenURL];
          v20 = [v19 href];
          v21 = [v20 payloadAsFullURL];

          if (v21)
          {
            v22 = [v21 absoluteString];
            [v14 setObject:v22 forKey:@"token-url"];
          }

          v23 = [v4 apsBundleID];
          v24 = [v23 payloadAsString];

          if (v24)
          {
            [v14 setObject:v24 forKey:@"apsbundleid"];
          }

          v54 = v21;
          v25 = [v4 courierServer];
          v26 = [v25 payloadAsString];

          if (v26)
          {
            [v14 setObject:v26 forKey:@"courierserver"];
          }

          v27 = v17;
          v28 = [v4 apsEnv];
          v29 = [v28 payloadAsString];

          if (v29)
          {
            [v14 setObject:v29 forKey:@"env"];
          }

          v30 = [v4 refreshInterval];
          v31 = [v30 payloadAsString];

          if (v31)
          {
            [v14 setObject:v31 forKey:@"refresh-interval"];
          }

          v50 = v31;
          v53 = v24;
          v55 = v27;
          v32 = [v4 xmppServer];
          v33 = [v32 payloadAsString];

          if (v33)
          {
            [v14 setObject:v33 forKey:@"xmpp-server"];
          }

          v49 = v33;
          v51 = v29;
          v52 = v26;
          v34 = [v4 xmppURI];
          v35 = [v34 payloadAsString];

          if (v35)
          {
            [v14 setObject:v35 forKey:@"xmpp-uri"];
          }

          v62 = 0u;
          v63 = 0u;
          v60 = 0u;
          v61 = 0u;
          v36 = [v4 extraChildItems];
          v37 = [v36 countByEnumeratingWithState:&v60 objects:v72 count:16];
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
                  objc_enumerationMutation(v36);
                }

                v41 = *(*(&v60 + 1) + 8 * j);
                v42 = [v41 payloadAsString];
                if (v42)
                {
                  v43 = [v41 name];
                  [v14 setObject:v42 forKey:v43];
                }
              }

              v38 = [v36 countByEnumeratingWithState:&v60 objects:v72 count:16];
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

          v5 = v56;
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