@interface CalDAVCalendarUserSearchTask
+ (BOOL)tokensAreLegal:(id)a3;
- (CalDAVCalendarUserSearchTask)initWithSearchStrings:(id)a3 atURL:(id)a4;
- (id)extraAttributes;
- (id)requestBody;
- (id)searchItems;
- (void)finishCoreDAVTaskWithError:(id)a3;
@end

@implementation CalDAVCalendarUserSearchTask

- (CalDAVCalendarUserSearchTask)initWithSearchStrings:(id)a3 atURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [CalDAVPrincipalSearchSupport parserMappingsWithServerSupportSet:0 includeEmail:1];
  v11.receiver = self;
  v11.super_class = CalDAVCalendarUserSearchTask;
  v9 = [(CoreDAVPropertyFindBaseTask *)&v11 initWithPropertiesToFind:v8 atURL:v7];

  if (v9)
  {
    [(CalDAVCalendarUserSearchTask *)v9 setSearchStrings:v6];
  }

  return v9;
}

+ (BOOL)tokensAreLegal:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v5 += [v9 length];
        v6 |= [v9 length] > 1;
        if ((v6 & 1) != 0 && v5 > 2)
        {
          LOBYTE(v4) = 1;
          goto LABEL_12;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v10 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)extraAttributes
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(CalDAVCalendarUserSearchTask *)self searchType];
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        v4 = MEMORY[0x277CBEAC0];
        v5 = cdXMLCalendarServerUser;
        goto LABEL_18;
      case 4:
        v4 = MEMORY[0x277CBEAC0];
        v5 = cdXMLCalendarServerGroup;
        goto LABEL_18;
      case 5:
        v4 = MEMORY[0x277CBEAC0];
        v5 = cdXMLCalendarServerResource;
        goto LABEL_18;
    }
  }

  else
  {
    switch(v3)
    {
      case 0:
        goto LABEL_19;
      case 1:
        v4 = MEMORY[0x277CBEAC0];
        v5 = cdXMLCalendarServerAttendee;
        goto LABEL_18;
      case 2:
        v4 = MEMORY[0x277CBEAC0];
        v5 = MEMORY[0x277CFDF58];
LABEL_18:
        v3 = [v4 dictionaryWithObject:*v5 forKey:@"context"];
        goto LABEL_19;
    }
  }

  v6 = [MEMORY[0x277CFDC18] sharedLogging];
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + *MEMORY[0x277CFDD38]));
  v8 = [v6 logHandleForAccountInfoProvider:WeakRetained];

  if (v8)
  {
    v9 = v8;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = 138543362;
      v14 = objc_opt_class();
      v10 = v14;
      _os_log_impl(&dword_242742000, v9, OS_LOG_TYPE_ERROR, "%{public}@ shouldn't be created finding nothing. Finding all instead.", &v13, 0xCu);
    }
  }

  v3 = 0;
LABEL_19:
  v11 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)searchItems
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(CalDAVCalendarUserSearchTask *)self searchStrings];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    v8 = *MEMORY[0x277CFDE90];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [objc_alloc(MEMORY[0x277CFDBE0]) initWithNameSpace:v8 andName:@"search-token"];
        [v11 setPayloadAsString:v10];
        [v3 addObject:v11];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)requestBody
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = [(CoreDAVPropertyFindBaseTask *)self propertiesToFind];
  v4 = [v3 count];

  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CFDCA0]);
    v6 = *MEMORY[0x277CFDE90];
    v7 = [(CalDAVCalendarUserSearchTask *)self extraAttributes];
    [v5 startElement:@"calendarserver-principal-search" inNamespace:v6 withAttributes:v7];

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v8 = [(CalDAVCalendarUserSearchTask *)self searchItems];
    v9 = [v8 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v33;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v33 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v32 + 1) + 8 * i) write:v5];
        }

        v10 = [v8 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v10);
    }

    if ([(CalDAVCalendarUserSearchTask *)self resultLimit])
    {
      v13 = *MEMORY[0x277CFDEA8];
      [v5 startElement:*MEMORY[0x277CFDEA8] inNamespace:v6 withAttributeNamesAndValues:0];
      v14 = *MEMORY[0x277CFDEC0];
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", -[CalDAVCalendarUserSearchTask resultLimit](self, "resultLimit")];
      [v5 appendElement:v14 inNamespace:v6 withStringContent:v15 withAttributeNamesAndValues:0];

      [v5 endElement:v13 inNamespace:v6];
    }

    v16 = *MEMORY[0x277CFDFC8];
    v17 = *MEMORY[0x277CFDEF8];
    [v5 startElement:*MEMORY[0x277CFDFC8] inNamespace:*MEMORY[0x277CFDEF8] withAttributeNamesAndValues:0];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v18 = [(CoreDAVPropertyFindBaseTask *)self propertiesToFind];
    v19 = [v18 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v29;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v29 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v28 + 1) + 8 * j);
          v24 = [v23 name];
          v25 = [v23 nameSpace];
          [v5 appendElement:v24 inNamespace:v25 withStringContent:0 withAttributeNamesAndValues:0];
        }

        v20 = [v18 countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v20);
    }

    [v5 endElement:v16 inNamespace:v17];
    [v5 endElement:@"calendarserver-principal-search" inNamespace:v6];
    v4 = [v5 data];
  }

  v26 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)finishCoreDAVTaskWithError:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(CoreDAVPropertyFindBaseTask *)self getTotalFailureError];
  }

  v7 = v6;
  v8.receiver = self;
  v8.super_class = CalDAVCalendarUserSearchTask;
  [(CoreDAVPropertyFindBaseTask *)&v8 finishCoreDAVTaskWithError:v6];
}

@end