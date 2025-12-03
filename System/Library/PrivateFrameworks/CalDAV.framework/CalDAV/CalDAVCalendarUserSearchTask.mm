@interface CalDAVCalendarUserSearchTask
+ (BOOL)tokensAreLegal:(id)legal;
- (CalDAVCalendarUserSearchTask)initWithSearchStrings:(id)strings atURL:(id)l;
- (id)extraAttributes;
- (id)requestBody;
- (id)searchItems;
- (void)finishCoreDAVTaskWithError:(id)error;
@end

@implementation CalDAVCalendarUserSearchTask

- (CalDAVCalendarUserSearchTask)initWithSearchStrings:(id)strings atURL:(id)l
{
  stringsCopy = strings;
  lCopy = l;
  v8 = [CalDAVPrincipalSearchSupport parserMappingsWithServerSupportSet:0 includeEmail:1];
  v11.receiver = self;
  v11.super_class = CalDAVCalendarUserSearchTask;
  v9 = [(CoreDAVPropertyFindBaseTask *)&v11 initWithPropertiesToFind:v8 atURL:lCopy];

  if (v9)
  {
    [(CalDAVCalendarUserSearchTask *)v9 setSearchStrings:stringsCopy];
  }

  return v9;
}

+ (BOOL)tokensAreLegal:(id)legal
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  legalCopy = legal;
  v4 = [legalCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(legalCopy);
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

      v4 = [legalCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  searchType = [(CalDAVCalendarUserSearchTask *)self searchType];
  if (searchType > 2)
  {
    switch(searchType)
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
    switch(searchType)
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
        searchType = [v4 dictionaryWithObject:*v5 forKey:@"context"];
        goto LABEL_19;
    }
  }

  mEMORY[0x277CFDC18] = [MEMORY[0x277CFDC18] sharedLogging];
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + *MEMORY[0x277CFDD38]));
  v8 = [mEMORY[0x277CFDC18] logHandleForAccountInfoProvider:WeakRetained];

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

  searchType = 0;
LABEL_19:
  v11 = *MEMORY[0x277D85DE8];

  return searchType;
}

- (id)searchItems
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  searchStrings = [(CalDAVCalendarUserSearchTask *)self searchStrings];
  v5 = [searchStrings countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(searchStrings);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [objc_alloc(MEMORY[0x277CFDBE0]) initWithNameSpace:v8 andName:@"search-token"];
        [v11 setPayloadAsString:v10];
        [v3 addObject:v11];
      }

      v6 = [searchStrings countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)requestBody
{
  v38 = *MEMORY[0x277D85DE8];
  propertiesToFind = [(CoreDAVPropertyFindBaseTask *)self propertiesToFind];
  data = [propertiesToFind count];

  if (data)
  {
    v5 = objc_alloc_init(MEMORY[0x277CFDCA0]);
    v6 = *MEMORY[0x277CFDE90];
    extraAttributes = [(CalDAVCalendarUserSearchTask *)self extraAttributes];
    [v5 startElement:@"calendarserver-principal-search" inNamespace:v6 withAttributes:extraAttributes];

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    searchItems = [(CalDAVCalendarUserSearchTask *)self searchItems];
    v9 = [searchItems countByEnumeratingWithState:&v32 objects:v37 count:16];
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
            objc_enumerationMutation(searchItems);
          }

          [*(*(&v32 + 1) + 8 * i) write:v5];
        }

        v10 = [searchItems countByEnumeratingWithState:&v32 objects:v37 count:16];
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
    propertiesToFind2 = [(CoreDAVPropertyFindBaseTask *)self propertiesToFind];
    v19 = [propertiesToFind2 countByEnumeratingWithState:&v28 objects:v36 count:16];
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
            objc_enumerationMutation(propertiesToFind2);
          }

          v23 = *(*(&v28 + 1) + 8 * j);
          name = [v23 name];
          nameSpace = [v23 nameSpace];
          [v5 appendElement:name inNamespace:nameSpace withStringContent:0 withAttributeNamesAndValues:0];
        }

        v20 = [propertiesToFind2 countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v20);
    }

    [v5 endElement:v16 inNamespace:v17];
    [v5 endElement:@"calendarserver-principal-search" inNamespace:v6];
    data = [v5 data];
  }

  v26 = *MEMORY[0x277D85DE8];

  return data;
}

- (void)finishCoreDAVTaskWithError:(id)error
{
  errorCopy = error;
  v5 = errorCopy;
  if (errorCopy)
  {
    getTotalFailureError = errorCopy;
  }

  else
  {
    getTotalFailureError = [(CoreDAVPropertyFindBaseTask *)self getTotalFailureError];
  }

  v7 = getTotalFailureError;
  v8.receiver = self;
  v8.super_class = CalDAVCalendarUserSearchTask;
  [(CoreDAVPropertyFindBaseTask *)&v8 finishCoreDAVTaskWithError:getTotalFailureError];
}

@end