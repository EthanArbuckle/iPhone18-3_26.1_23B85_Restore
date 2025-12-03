@interface CalDAVCalendarQueryTask
- (id)_icsDateStringForNSDateComponents:(id)components;
- (id)description;
- (id)requestBody;
- (void)_appendComponentFiltersToXMLData:(id)data;
- (void)_appendTimeRangeFilterToXMLData:(id)data startDate:(id)date endDate:(id)endDate;
@end

@implementation CalDAVCalendarQueryTask

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v4 = objc_alloc(MEMORY[0x277CBEA80]);
  v5 = [v4 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  v6 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"UTC"];
  [v5 setTimeZone:v6];

  v23.receiver = self;
  v23.super_class = CalDAVCalendarQueryTask;
  v7 = [(CoreDAVPropertyFindBaseTask *)&v23 description];
  [v3 appendFormat:@"%@", v7];

  if ([(CalDAVCalendarQueryTask *)self syncEvents])
  {
    v8 = @" Events";
  }

  else
  {
    v8 = &stru_285505238;
  }

  syncTodos = [(CalDAVCalendarQueryTask *)self syncTodos];
  v10 = @" Todos";
  if (!syncTodos)
  {
    v10 = &stru_285505238;
  }

  [v3 appendFormat:@"\n  Syncing:%@%@", v8, v10];
  eventFilterStartDate = [(CalDAVCalendarQueryTask *)self eventFilterStartDate];
  if (eventFilterStartDate)
  {
  }

  else
  {
    eventFilterEndDate = [(CalDAVCalendarQueryTask *)self eventFilterEndDate];

    if (!eventFilterEndDate)
    {
      goto LABEL_22;
    }
  }

  eventFilterStartDate2 = [(CalDAVCalendarQueryTask *)self eventFilterStartDate];
  if (eventFilterStartDate2)
  {
    eventFilterStartDate3 = [(CalDAVCalendarQueryTask *)self eventFilterStartDate];
    v15 = [v5 dateFromComponents:eventFilterStartDate3];
  }

  else
  {
    v15 = 0;
  }

  eventFilterEndDate2 = [(CalDAVCalendarQueryTask *)self eventFilterEndDate];
  if (eventFilterEndDate2)
  {
    v17 = eventFilterEndDate2;
    eventFilterEndDate3 = [(CalDAVCalendarQueryTask *)self eventFilterEndDate];
    v19 = [v5 dateFromComponents:eventFilterEndDate3];

    if (v15 && v19)
    {
      v20 = [MEMORY[0x277CCA968] localizedStringFromDate:v15 dateStyle:1 timeStyle:1];
      v21 = [MEMORY[0x277CCA968] localizedStringFromDate:v19 dateStyle:1 timeStyle:1];
      [v3 appendFormat:@"\n Event filter Start: (%@), End: (%@)", v20, v21];

LABEL_20:
      goto LABEL_21;
    }

    if (!v15)
    {
      if (!v19)
      {
        goto LABEL_21;
      }

      v20 = [MEMORY[0x277CCA968] localizedStringFromDate:v19 dateStyle:1 timeStyle:1];
      [v3 appendFormat:@"\n Event filter End: (%@)", v20];
      goto LABEL_20;
    }

LABEL_19:
    v20 = [MEMORY[0x277CCA968] localizedStringFromDate:v15 dateStyle:1 timeStyle:1];
    [v3 appendFormat:@"\n Event filter Start: (%@)", v20];
    goto LABEL_20;
  }

  if (v15)
  {
    v19 = 0;
    goto LABEL_19;
  }

LABEL_21:

LABEL_22:

  return v3;
}

- (id)_icsDateStringForNSDateComponents:(id)components
{
  if (components)
  {
    v3 = MEMORY[0x277D7F0F0];
    componentsCopy = components;
    v5 = [v3 alloc];
    year = [componentsCopy year];
    month = [componentsCopy month];
    v8 = [componentsCopy day];
    v9 = [componentsCopy hour] != 0x7FFFFFFFFFFFFFFFLL;
    v10 = [componentsCopy minute] != 0x7FFFFFFFFFFFFFFFLL;
    second = [componentsCopy second];

    0x7FFFFFFFFFFFFFFFLL = [v5 initWithYear:year month:month day:v8 hour:v9 minute:v10 second:second != 0x7FFFFFFFFFFFFFFFLL];
    icsString = [0x7FFFFFFFFFFFFFFFLL icsString];
  }

  else
  {
    icsString = 0;
  }

  return icsString;
}

- (void)_appendTimeRangeFilterToXMLData:(id)data startDate:(id)date endDate:(id)endDate
{
  dataCopy = data;
  endDateCopy = endDate;
  v9 = [(CalDAVCalendarQueryTask *)self _icsDateStringForNSDateComponents:date];
  v10 = [(CalDAVCalendarQueryTask *)self _icsDateStringForNSDateComponents:endDateCopy];

  if (v9 && v10)
  {
    v11 = *MEMORY[0x277CFE038];
    v12 = *MEMORY[0x277CFDDC0];
    v14 = v10;
    v15 = 0;
    v13 = @"end";
LABEL_6:
    [dataCopy appendElement:v11 inNamespace:v12 withStringContent:0 withAttributeNamesAndValues:{@"start", v9, v13, v14, v15}];
    goto LABEL_7;
  }

  if (v9)
  {
    v11 = *MEMORY[0x277CFE038];
    v12 = *MEMORY[0x277CFDDC0];
    v13 = 0;
    goto LABEL_6;
  }

  if (v10)
  {
    [dataCopy appendElement:*MEMORY[0x277CFE038] inNamespace:*MEMORY[0x277CFDDC0] withStringContent:0 withAttributeNamesAndValues:{@"end", v10, 0, v14, v15}];
  }

LABEL_7:
}

- (void)_appendComponentFiltersToXMLData:(id)data
{
  dataCopy = data;
  v4 = objc_alloc(MEMORY[0x277CBEB38]);
  v5 = *MEMORY[0x277CFDFA8];
  v6 = [v4 initWithObjectsAndKeys:{@"VCALENDAR", *MEMORY[0x277CFDFA8], 0}];
  if ([(CalDAVCalendarQueryTask *)self syncEvents]&& [(CalDAVCalendarQueryTask *)self syncTodos])
  {
    [v6 setValue:*MEMORY[0x277CFDEA0] forKey:*MEMORY[0x277CFDED0]];
  }

  v7 = *MEMORY[0x277CFDEE8];
  v8 = *MEMORY[0x277CFDDC0];
  [dataCopy startElement:*MEMORY[0x277CFDEE8] inNamespace:*MEMORY[0x277CFDDC0] withAttributes:v6];
  if ([(CalDAVCalendarQueryTask *)self syncEvents])
  {
    [dataCopy startElement:v7 inNamespace:v8 withAttributeNamesAndValues:{v5, @"VEVENT", 0}];
    eventFilterStartDate = [(CalDAVCalendarQueryTask *)self eventFilterStartDate];
    eventFilterEndDate = [(CalDAVCalendarQueryTask *)self eventFilterEndDate];
    [(CalDAVCalendarQueryTask *)self _appendTimeRangeFilterToXMLData:dataCopy startDate:eventFilterStartDate endDate:eventFilterEndDate];

    [dataCopy endElement:v7 inNamespace:v8];
  }

  [dataCopy endElement:v7 inNamespace:v8];
}

- (id)requestBody
{
  v29 = *MEMORY[0x277D85DE8];
  propertiesToFind = [(CoreDAVPropertyFindBaseTask *)self propertiesToFind];
  if (propertiesToFind && (v4 = propertiesToFind, -[CoreDAVPropertyFindBaseTask propertiesToFind](self, "propertiesToFind"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v4, v6))
  {
    v7 = objc_alloc_init(MEMORY[0x277CFDCA0]);
    v8 = *MEMORY[0x277CFDDC0];
    v23 = *MEMORY[0x277CFDD88];
    [v7 startElement:? inNamespace:? withAttributeNamesAndValues:?];
    v9 = *MEMORY[0x277CFDEF8];
    v22 = *MEMORY[0x277CFDFC8];
    [v7 startElement:? inNamespace:? withAttributeNamesAndValues:?];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    propertiesToFind2 = [(CoreDAVPropertyFindBaseTask *)self propertiesToFind];
    v11 = [propertiesToFind2 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v25;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(propertiesToFind2);
          }

          v15 = *(*(&v24 + 1) + 8 * i);
          name = [v15 name];
          nameSpace = [v15 nameSpace];
          [v7 appendElement:name inNamespace:nameSpace withStringContent:0 withAttributeNamesAndValues:0];
        }

        v12 = [propertiesToFind2 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v12);
    }

    [v7 endElement:v22 inNamespace:v9];
    v18 = *MEMORY[0x277CFDF10];
    [v7 startElement:*MEMORY[0x277CFDF10] inNamespace:v8 withAttributeNamesAndValues:0];
    [(CalDAVCalendarQueryTask *)self _appendComponentFiltersToXMLData:v7];
    [v7 endElement:v18 inNamespace:v8];
    [v7 endElement:v23 inNamespace:v8];
    data = [v7 data];
  }

  else
  {
    data = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return data;
}

@end