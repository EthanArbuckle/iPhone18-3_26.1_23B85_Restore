@interface CalDAVCalendarSearchTask
- (CalDAVCalendarSearchTask)initWithLanguages:(id)a3 location:(id)a4 calendarType:(id)a5 url:(id)a6;
- (id)additionalHeaderValues;
- (id)copyDefaultParserForContentType:(id)a3;
- (id)requestBody;
- (void)finishCoreDAVTaskWithError:(id)a3;
- (void)setAdditionalAuthenticationHeaders:(id)a3;
@end

@implementation CalDAVCalendarSearchTask

- (CalDAVCalendarSearchTask)initWithLanguages:(id)a3 location:(id)a4 calendarType:(id)a5 url:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v21.receiver = self;
  v21.super_class = CalDAVCalendarSearchTask;
  v14 = [(CalDAVCalendarSearchTask *)&v21 initWithURL:a6];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_languages, a3);
    v16 = [v12 copy];
    location = v15->_location;
    v15->_location = v16;

    v18 = [v13 copy];
    calendarType = v15->_calendarType;
    v15->_calendarType = v18;

    v15->_limit = 3;
  }

  return v15;
}

- (id)requestBody
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CFDCA0]);
  v4 = [(NSArray *)self->_languages count];
  v5 = *MEMORY[0x277CFDD90];
  v6 = *MEMORY[0x277CFDE90];
  if (v4)
  {
    v23 = *MEMORY[0x277CFDD90];
    [v3 startElement:v5 inNamespace:v6 withAttributeNamesAndValues:{*MEMORY[0x277CFDDB8], *MEMORY[0x277CFDD70], 0}];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = self;
    obj = self->_languages;
    v7 = [(NSArray *)obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v27;
      v10 = *MEMORY[0x277CFDE18];
      v11 = *MEMORY[0x277CFDE38];
      v12 = *MEMORY[0x277CFDE58];
      v13 = *MEMORY[0x277CFDE88];
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v27 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v26 + 1) + 8 * i);
          [v3 startElement:v10 inNamespace:v6 withAttributeNamesAndValues:0];
          [v3 appendElement:v11 inNamespace:v6 withStringContent:v15 withAttributeNamesAndValues:0];
          [v3 appendElement:v12 inNamespace:v6 withStringContent:v25->_location withAttributeNamesAndValues:0];
          [v3 appendElement:v13 inNamespace:v6 withStringContent:v25->_calendarType withAttributeNamesAndValues:0];
          [v3 endElement:v10 inNamespace:v6];
        }

        v8 = [(NSArray *)obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v8);
    }

    v5 = v23;
    self = v25;
  }

  else
  {
    [v3 startElement:*MEMORY[0x277CFDD90] inNamespace:*MEMORY[0x277CFDE90] withAttributeNamesAndValues:0];
    v16 = *MEMORY[0x277CFDE18];
    [v3 startElement:*MEMORY[0x277CFDE18] inNamespace:v6 withAttributeNamesAndValues:0];
    [v3 appendElement:*MEMORY[0x277CFDE88] inNamespace:v6 withStringContent:self->_calendarType withAttributeNamesAndValues:0];
    [v3 endElement:v16 inNamespace:v6];
  }

  if (self->_limit)
  {
    v17 = *MEMORY[0x277CFDDA0];
    [v3 startElement:*MEMORY[0x277CFDDA0] inNamespace:v6 withAttributeNamesAndValues:0];
    v18 = *MEMORY[0x277CFDDA8];
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", self->_limit];
    [v3 appendElement:v18 inNamespace:v6 withStringContent:v19 withAttributeNamesAndValues:0];

    [v3 endElement:v17 inNamespace:v6];
  }

  [v3 endElement:v5 inNamespace:v6];
  v20 = [v3 data];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)copyDefaultParserForContentType:(id)a3
{
  v4 = objc_alloc(MEMORY[0x277CFDCA8]);
  v5 = *MEMORY[0x277CFDEF8];
  v6 = *MEMORY[0x277CFDF98];
  v7 = objc_opt_class();
  v8 = [(CalDAVCalendarSearchTask *)self url];
  v9 = [v4 initWithRootElementNameSpace:v5 name:v6 parseClass:v7 baseURL:v8];

  return v9;
}

- (void)finishCoreDAVTaskWithError:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v20 = a3;
  v19 = [(CalDAVCalendarSearchTask *)self responseBodyParser];
  [v19 rootElement];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v18 = v25 = 0u;
  v4 = [v18 responses];
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v10 = [v9 matchResults];

        if (v10)
        {
          v11 = [v9 firstHref];
          v12 = [v11 payloadAsFullURL];

          urlsToResults = self->_urlsToResults;
          if (!urlsToResults)
          {
            v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
            v15 = self->_urlsToResults;
            self->_urlsToResults = v14;

            urlsToResults = self->_urlsToResults;
          }

          v16 = [v9 matchResults];
          [(NSDictionary *)urlsToResults setObject:v16 forKey:v12];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v6);
  }

  v21.receiver = self;
  v21.super_class = CalDAVCalendarSearchTask;
  [(CalDAVCalendarSearchTask *)&v21 finishCoreDAVTaskWithError:v20];

  v17 = *MEMORY[0x277D85DE8];
}

- (id)additionalHeaderValues
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v7.receiver = self;
  v7.super_class = CalDAVCalendarSearchTask;
  v4 = [(CalDAVCalendarSearchTask *)&v7 additionalHeaderValues];
  if ([v4 count])
  {
    [v3 addEntriesFromDictionary:v4];
  }

  v5 = MGGetStringAnswer();
  if (v5)
  {
    [v3 setObject:v5 forKeyedSubscript:@"X-Request-Sku"];
  }

  if ([(NSDictionary *)self->_additionalAuthenticationHeaders count])
  {
    [v3 addEntriesFromDictionary:self->_additionalAuthenticationHeaders];
  }

  return v3;
}

- (void)setAdditionalAuthenticationHeaders:(id)a3
{
  v4 = [a3 copy];
  additionalAuthenticationHeaders = self->_additionalAuthenticationHeaders;
  self->_additionalAuthenticationHeaders = v4;

  MEMORY[0x2821F96F8]();
}

@end