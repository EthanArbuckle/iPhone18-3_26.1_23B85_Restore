@interface CoreDAVResponseItem
+ (id)copyParseRules;
- (BOOL)hasPropertyError;
- (id)description;
- (id)firstHref;
- (id)successfulPropertiesToValues;
- (void)addHref:(id)a3;
- (void)addPropStat:(id)a3;
- (void)setErrorItem:(id)a3;
@end

@implementation CoreDAVResponseItem

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v14.receiver = self;
  v14.super_class = CoreDAVResponseItem;
  v4 = [(CoreDAVItem *)&v14 description];
  [v3 appendFormat:@"[%@ ", v4];

  v5 = [(CoreDAVResponseItem *)self hrefs];
  [v3 appendFormat:@"| Number of HREFs: [%lu]", objc_msgSend(v5, "count")];

  v6 = [(CoreDAVResponseItem *)self status];
  [v3 appendFormat:@"| Status: [%@]", v6];

  v7 = [(CoreDAVResponseItem *)self propStats];
  [v3 appendFormat:@"| Number of prop stats: [%lu]", objc_msgSend(v7, "count")];

  v8 = [(CoreDAVResponseItem *)self errorItem];
  [v3 appendFormat:@"| Error: [%@]", v8];

  v9 = [(CoreDAVResponseItem *)self responseDescription];
  [v3 appendFormat:@"| Response description: [%@]", v9];

  v10 = [(CoreDAVResponseItem *)self location];
  [v3 appendFormat:@"| Location: [%@]", v10];

  v11 = [(CoreDAVResponseItem *)self serverUID];
  [v3 appendFormat:@"| UID: [%@]", v11];

  v12 = [(CoreDAVResponseItem *)self matchResults];
  [v3 appendFormat:@"| Match-Results: [%@]", v12];

  [v3 appendFormat:@"]"];

  return v3;
}

+ (id)copyParseRules
{
  v3 = +[CoreDAVItem parseRuleCache];
  v4 = NSStringFromClass(a1);
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v22 = objc_alloc(MEMORY[0x277CBEAC0]);
    v23 = a1;
    v26 = [CoreDAVParseRule ruleWithMinimumNumber:0 maximumNumber:0x7FFFFFFFLL nameSpace:@"DAV:" elementName:@"href" objectClass:objc_opt_class() setterMethod:sel_addHref_];
    v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"DAV:", @"href"];
    v24 = [CoreDAVParseRule ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:@"DAV:" elementName:@"status" objectClass:objc_opt_class() setterMethod:sel_setStatus_];
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"DAV:", @"status"];
    v20 = [CoreDAVParseRule ruleWithMinimumNumber:0 maximumNumber:0x7FFFFFFFLL nameSpace:@"DAV:" elementName:@"propstat" objectClass:objc_opt_class() setterMethod:sel_addPropStat_];
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"DAV:", @"propstat"];
    v18 = [CoreDAVParseRule ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:@"DAV:" elementName:@"error" objectClass:objc_opt_class() setterMethod:sel_setErrorItem_];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"DAV:", @"error"];
    v16 = [CoreDAVParseRule ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:@"DAV:" elementName:@"responsedescription" objectClass:objc_opt_class() setterMethod:sel_setResponseDescription_];
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"DAV:", @"responsedescription"];
    v14 = [CoreDAVParseRule ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:@"DAV:" elementName:@"location" objectClass:objc_opt_class() setterMethod:sel_setLocation_];
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"DAV:", @"location"];
    v12 = [CoreDAVParseRule ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:@"http://calendarserver.org/ns/" elementName:@"uid" objectClass:objc_opt_class() setterMethod:sel_setServerUID_];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"http://calendarserver.org/ns/", @"uid"];
    v7 = [CoreDAVParseRule ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:@"http://calendarserver.org/ns/" elementName:@"match-results" objectClass:objc_opt_class() setterMethod:sel_setMatchResults_];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"http://calendarserver.org/ns/", @"match-results"];
    v5 = [v22 initWithObjectsAndKeys:{v26, v25, v24, v21, v20, v19, v18, v17, v16, v15, v14, v13, v12, v6, v7, v8, 0}];

    v9 = +[CoreDAVItem parseRuleCache];
    v10 = NSStringFromClass(v23);
    [v9 setObject:v5 forKey:v10];
  }

  return v5;
}

- (void)addPropStat:(id)a3
{
  v4 = a3;
  v5 = [(CoreDAVResponseItem *)self propStats];

  if (!v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    [(CoreDAVResponseItem *)self setPropStats:v6];
  }

  v7 = [(CoreDAVResponseItem *)self propStats];
  [v7 addObject:v4];
}

- (void)addHref:(id)a3
{
  v4 = a3;
  v5 = [(CoreDAVResponseItem *)self hrefs];

  if (!v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(CoreDAVResponseItem *)self setHrefs:v6];
  }

  v7 = [(CoreDAVResponseItem *)self hrefs];
  [v7 addObject:v4];
}

- (id)firstHref
{
  v2 = [(CoreDAVResponseItem *)self hrefs];
  v3 = [v2 objectAtIndex:0];

  return v3;
}

- (id)successfulPropertiesToValues
{
  v38 = *MEMORY[0x277D85DE8];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = [(CoreDAVResponseItem *)self propStats];
  v2 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v33;
    v24 = *v33;
    do
    {
      v6 = 0;
      v25 = v3;
      do
      {
        if (*v33 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v32 + 1) + 8 * v6);
        v8 = [v7 status];
        v9 = [v8 payloadAsString];
        v10 = [v9 CDVIsHTTPStatusLineWithStatusCode:200];

        if (v10)
        {
          v27 = v6;
          if (!v4)
          {
            v4 = [MEMORY[0x277CBEB38] dictionary];
          }

          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v11 = [v7 prop];
          v12 = [v11 extraChildItems];

          v13 = [v12 countByEnumeratingWithState:&v28 objects:v36 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v29;
            do
            {
              for (i = 0; i != v14; ++i)
              {
                if (*v29 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = *(*(&v28 + 1) + 8 * i);
                v18 = MEMORY[0x277CCACA8];
                v19 = [v17 nameSpace];
                v20 = [v17 name];
                v21 = [v18 CDVStringWithNameSpace:v19 andName:v20];

                [v4 setObject:v17 forKey:v21];
              }

              v14 = [v12 countByEnumeratingWithState:&v28 objects:v36 count:16];
            }

            while (v14);
          }

          v5 = v24;
          v3 = v25;
          v6 = v27;
        }

        ++v6;
      }

      while (v6 != v3);
      v3 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v4;
}

- (BOOL)hasPropertyError
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(CoreDAVResponseItem *)self errorItem];

  if (v3)
  {
    goto LABEL_2;
  }

  v5 = [(CoreDAVResponseItem *)self propStats];
  v6 = [v5 count];

  if (v6 || (-[CoreDAVResponseItem status](self, "status"), v7 = objc_claimAutoreleasedReturnValue(), [v7 payloadAsString], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "CDVIsHTTPStatusLineWithStatusCode:", 200), v8, v7, v9))
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = [(CoreDAVResponseItem *)self propStats];
    v4 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v4)
    {
      v11 = *v19;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v10);
          }

          v13 = [*(*(&v18 + 1) + 8 * i) status];
          v14 = [v13 payloadAsString];
          v15 = [v14 CDVIsHTTPStatusLineWithStatusCode:200];

          if (!v15)
          {
            LOBYTE(v4) = 1;
            goto LABEL_15;
          }
        }

        v4 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:
  }

  else
  {
LABEL_2:
    LOBYTE(v4) = 1;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)setErrorItem:(id)a3
{
  v5 = a3;
  if (self->_errorItem != v5)
  {
    objc_storeStrong(&self->_errorItem, a3);
    if (self->_status)
    {
      [(CoreDAVErrorItem *)self->_errorItem setStatus:?];
    }
  }
}

@end