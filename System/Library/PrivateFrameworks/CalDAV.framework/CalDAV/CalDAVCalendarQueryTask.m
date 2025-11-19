@interface CalDAVCalendarQueryTask
- (id)_icsDateStringForNSDateComponents:(id)a3;
- (id)description;
- (id)requestBody;
- (void)_appendComponentFiltersToXMLData:(id)a3;
- (void)_appendTimeRangeFilterToXMLData:(id)a3 startDate:(id)a4 endDate:(id)a5;
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

  v9 = [(CalDAVCalendarQueryTask *)self syncTodos];
  v10 = @" Todos";
  if (!v9)
  {
    v10 = &stru_285505238;
  }

  [v3 appendFormat:@"\n  Syncing:%@%@", v8, v10];
  v11 = [(CalDAVCalendarQueryTask *)self eventFilterStartDate];
  if (v11)
  {
  }

  else
  {
    v12 = [(CalDAVCalendarQueryTask *)self eventFilterEndDate];

    if (!v12)
    {
      goto LABEL_22;
    }
  }

  v13 = [(CalDAVCalendarQueryTask *)self eventFilterStartDate];
  if (v13)
  {
    v14 = [(CalDAVCalendarQueryTask *)self eventFilterStartDate];
    v15 = [v5 dateFromComponents:v14];
  }

  else
  {
    v15 = 0;
  }

  v16 = [(CalDAVCalendarQueryTask *)self eventFilterEndDate];
  if (v16)
  {
    v17 = v16;
    v18 = [(CalDAVCalendarQueryTask *)self eventFilterEndDate];
    v19 = [v5 dateFromComponents:v18];

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

- (id)_icsDateStringForNSDateComponents:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x277D7F0F0];
    v4 = a3;
    v5 = [v3 alloc];
    v6 = [v4 year];
    v7 = [v4 month];
    v8 = [v4 day];
    v9 = [v4 hour] != 0x7FFFFFFFFFFFFFFFLL;
    v10 = [v4 minute] != 0x7FFFFFFFFFFFFFFFLL;
    v11 = [v4 second];

    v12 = [v5 initWithYear:v6 month:v7 day:v8 hour:v9 minute:v10 second:v11 != 0x7FFFFFFFFFFFFFFFLL];
    v13 = [v12 icsString];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_appendTimeRangeFilterToXMLData:(id)a3 startDate:(id)a4 endDate:(id)a5
{
  v16 = a3;
  v8 = a5;
  v9 = [(CalDAVCalendarQueryTask *)self _icsDateStringForNSDateComponents:a4];
  v10 = [(CalDAVCalendarQueryTask *)self _icsDateStringForNSDateComponents:v8];

  if (v9 && v10)
  {
    v11 = *MEMORY[0x277CFE038];
    v12 = *MEMORY[0x277CFDDC0];
    v14 = v10;
    v15 = 0;
    v13 = @"end";
LABEL_6:
    [v16 appendElement:v11 inNamespace:v12 withStringContent:0 withAttributeNamesAndValues:{@"start", v9, v13, v14, v15}];
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
    [v16 appendElement:*MEMORY[0x277CFE038] inNamespace:*MEMORY[0x277CFDDC0] withStringContent:0 withAttributeNamesAndValues:{@"end", v10, 0, v14, v15}];
  }

LABEL_7:
}

- (void)_appendComponentFiltersToXMLData:(id)a3
{
  v11 = a3;
  v4 = objc_alloc(MEMORY[0x277CBEB38]);
  v5 = *MEMORY[0x277CFDFA8];
  v6 = [v4 initWithObjectsAndKeys:{@"VCALENDAR", *MEMORY[0x277CFDFA8], 0}];
  if ([(CalDAVCalendarQueryTask *)self syncEvents]&& [(CalDAVCalendarQueryTask *)self syncTodos])
  {
    [v6 setValue:*MEMORY[0x277CFDEA0] forKey:*MEMORY[0x277CFDED0]];
  }

  v7 = *MEMORY[0x277CFDEE8];
  v8 = *MEMORY[0x277CFDDC0];
  [v11 startElement:*MEMORY[0x277CFDEE8] inNamespace:*MEMORY[0x277CFDDC0] withAttributes:v6];
  if ([(CalDAVCalendarQueryTask *)self syncEvents])
  {
    [v11 startElement:v7 inNamespace:v8 withAttributeNamesAndValues:{v5, @"VEVENT", 0}];
    v9 = [(CalDAVCalendarQueryTask *)self eventFilterStartDate];
    v10 = [(CalDAVCalendarQueryTask *)self eventFilterEndDate];
    [(CalDAVCalendarQueryTask *)self _appendTimeRangeFilterToXMLData:v11 startDate:v9 endDate:v10];

    [v11 endElement:v7 inNamespace:v8];
  }

  [v11 endElement:v7 inNamespace:v8];
}

- (id)requestBody
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = [(CoreDAVPropertyFindBaseTask *)self propertiesToFind];
  if (v3 && (v4 = v3, -[CoreDAVPropertyFindBaseTask propertiesToFind](self, "propertiesToFind"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v4, v6))
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
    v10 = [(CoreDAVPropertyFindBaseTask *)self propertiesToFind];
    v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v24 + 1) + 8 * i);
          v16 = [v15 name];
          v17 = [v15 nameSpace];
          [v7 appendElement:v16 inNamespace:v17 withStringContent:0 withAttributeNamesAndValues:0];
        }

        v12 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v12);
    }

    [v7 endElement:v22 inNamespace:v9];
    v18 = *MEMORY[0x277CFDF10];
    [v7 startElement:*MEMORY[0x277CFDF10] inNamespace:v8 withAttributeNamesAndValues:0];
    [(CalDAVCalendarQueryTask *)self _appendComponentFiltersToXMLData:v7];
    [v7 endElement:v18 inNamespace:v8];
    [v7 endElement:v23 inNamespace:v8];
    v19 = [v7 data];
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

@end