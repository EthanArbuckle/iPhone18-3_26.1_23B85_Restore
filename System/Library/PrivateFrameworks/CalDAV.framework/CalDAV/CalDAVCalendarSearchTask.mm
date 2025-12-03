@interface CalDAVCalendarSearchTask
- (CalDAVCalendarSearchTask)initWithLanguages:(id)languages location:(id)location calendarType:(id)type url:(id)url;
- (id)additionalHeaderValues;
- (id)copyDefaultParserForContentType:(id)type;
- (id)requestBody;
- (void)finishCoreDAVTaskWithError:(id)error;
- (void)setAdditionalAuthenticationHeaders:(id)headers;
@end

@implementation CalDAVCalendarSearchTask

- (CalDAVCalendarSearchTask)initWithLanguages:(id)languages location:(id)location calendarType:(id)type url:(id)url
{
  languagesCopy = languages;
  locationCopy = location;
  typeCopy = type;
  v21.receiver = self;
  v21.super_class = CalDAVCalendarSearchTask;
  v14 = [(CalDAVCalendarSearchTask *)&v21 initWithURL:url];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_languages, languages);
    v16 = [locationCopy copy];
    location = v15->_location;
    v15->_location = v16;

    v18 = [typeCopy copy];
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
    selfCopy = self;
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
          [v3 appendElement:v12 inNamespace:v6 withStringContent:selfCopy->_location withAttributeNamesAndValues:0];
          [v3 appendElement:v13 inNamespace:v6 withStringContent:selfCopy->_calendarType withAttributeNamesAndValues:0];
          [v3 endElement:v10 inNamespace:v6];
        }

        v8 = [(NSArray *)obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v8);
    }

    v5 = v23;
    self = selfCopy;
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
  data = [v3 data];

  v21 = *MEMORY[0x277D85DE8];

  return data;
}

- (id)copyDefaultParserForContentType:(id)type
{
  v4 = objc_alloc(MEMORY[0x277CFDCA8]);
  v5 = *MEMORY[0x277CFDEF8];
  v6 = *MEMORY[0x277CFDF98];
  v7 = objc_opt_class();
  v8 = [(CalDAVCalendarSearchTask *)self url];
  v9 = [v4 initWithRootElementNameSpace:v5 name:v6 parseClass:v7 baseURL:v8];

  return v9;
}

- (void)finishCoreDAVTaskWithError:(id)error
{
  v27 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  responseBodyParser = [(CalDAVCalendarSearchTask *)self responseBodyParser];
  [responseBodyParser rootElement];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v18 = v25 = 0u;
  responses = [v18 responses];
  v5 = [responses countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(responses);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        matchResults = [v9 matchResults];

        if (matchResults)
        {
          firstHref = [v9 firstHref];
          payloadAsFullURL = [firstHref payloadAsFullURL];

          urlsToResults = self->_urlsToResults;
          if (!urlsToResults)
          {
            v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
            v15 = self->_urlsToResults;
            self->_urlsToResults = v14;

            urlsToResults = self->_urlsToResults;
          }

          matchResults2 = [v9 matchResults];
          [(NSDictionary *)urlsToResults setObject:matchResults2 forKey:payloadAsFullURL];
        }
      }

      v6 = [responses countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v6);
  }

  v21.receiver = self;
  v21.super_class = CalDAVCalendarSearchTask;
  [(CalDAVCalendarSearchTask *)&v21 finishCoreDAVTaskWithError:errorCopy];

  v17 = *MEMORY[0x277D85DE8];
}

- (id)additionalHeaderValues
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v7.receiver = self;
  v7.super_class = CalDAVCalendarSearchTask;
  additionalHeaderValues = [(CalDAVCalendarSearchTask *)&v7 additionalHeaderValues];
  if ([additionalHeaderValues count])
  {
    [dictionary addEntriesFromDictionary:additionalHeaderValues];
  }

  v5 = MGGetStringAnswer();
  if (v5)
  {
    [dictionary setObject:v5 forKeyedSubscript:@"X-Request-Sku"];
  }

  if ([(NSDictionary *)self->_additionalAuthenticationHeaders count])
  {
    [dictionary addEntriesFromDictionary:self->_additionalAuthenticationHeaders];
  }

  return dictionary;
}

- (void)setAdditionalAuthenticationHeaders:(id)headers
{
  v4 = [headers copy];
  additionalAuthenticationHeaders = self->_additionalAuthenticationHeaders;
  self->_additionalAuthenticationHeaders = v4;

  MEMORY[0x2821F96F8]();
}

@end