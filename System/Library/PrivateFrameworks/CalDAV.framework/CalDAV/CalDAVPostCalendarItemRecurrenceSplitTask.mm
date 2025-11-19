@interface CalDAVPostCalendarItemRecurrenceSplitTask
- (CoreDAVResponseItem)createdResponseItem;
- (CoreDAVResponseItem)updatedResponseItem;
- (id)_dataForItem:(id)a3;
- (id)_documentForItem:(id)a3;
- (id)_etagForItem:(id)a3;
- (id)_recurrenceDateString;
- (id)_scheduleTagForItem:(id)a3;
- (id)additionalHeaderValues;
- (id)createdETag;
- (id)createdICSData;
- (id)createdICSDocument;
- (id)createdScheduleTag;
- (id)createdURL;
- (id)description;
- (id)updatedETag;
- (id)updatedICSDocument;
- (id)updatedScheduleTag;
- (id)urlWithQuery;
- (void)_updateBothResponseItems;
@end

@implementation CalDAVPostCalendarItemRecurrenceSplitTask

- (id)_recurrenceDateString
{
  v3 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
  v4 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"UTC"];
  v5 = [(CalDAVPostCalendarItemRecurrenceSplitTask *)self recurrenceDate];

  if (v5)
  {
    v6 = [(CalDAVPostCalendarItemRecurrenceSplitTask *)self recurrenceDate];
    v7 = [v3 componentsInTimeZone:v4 fromDate:v6];

    if ([(CalDAVPostCalendarItemRecurrenceSplitTask *)self isAllDay])
    {
      v8 = [objc_alloc(MEMORY[0x277D7F100]) initWithYear:objc_msgSend(v7 month:"year") day:{objc_msgSend(v7, "month"), objc_msgSend(v7, "day")}];
    }

    else
    {
      if ([(CalDAVPostCalendarItemRecurrenceSplitTask *)self isFloating])
      {
        v10 = MEMORY[0x277D7F0F8];
      }

      else
      {
        v10 = MEMORY[0x277D7F0F0];
      }

      v8 = [[v10 alloc] initWithYear:objc_msgSend(v7 month:"year") day:objc_msgSend(v7 hour:"month") minute:objc_msgSend(v7 second:{"day"), objc_msgSend(v7, "hour"), objc_msgSend(v7, "minute"), objc_msgSend(v7, "second")}];
    }

    v11 = v8;
    v9 = [v8 icsString];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)urlWithQuery
{
  v22[3] = *MEMORY[0x277D85DE8];
  postURLWithQuery = self->_postURLWithQuery;
  if (!postURLWithQuery)
  {
    v4 = MEMORY[0x277CCACE0];
    v5 = [(CalDAVPostCalendarItemRecurrenceSplitTask *)self resourceURL];
    v6 = [v4 componentsWithURL:v5 resolvingAgainstBaseURL:0];

    v7 = [MEMORY[0x277CCAD18] queryItemWithName:@"action" value:@"split"];
    v8 = MEMORY[0x277CCAD18];
    v9 = [(CalDAVPostCalendarItemRecurrenceSplitTask *)self _recurrenceDateString];
    v10 = [v8 queryItemWithName:@"rid" value:v9];

    v11 = [(CalDAVPostCalendarItemRecurrenceSplitTask *)self uidForCreatedSeries];
    v12 = [v11 length];

    if (v12)
    {
      v13 = MEMORY[0x277CCAD18];
      v14 = [(CalDAVPostCalendarItemRecurrenceSplitTask *)self uidForCreatedSeries];
      v15 = [v13 queryItemWithName:@"uid" value:v14];

      v22[0] = v7;
      v22[1] = v10;
      v22[2] = v15;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:3];
      [v6 setQueryItems:v16];
    }

    else
    {
      v21[0] = v7;
      v21[1] = v10;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
      [v6 setQueryItems:v15];
    }

    v17 = [v6 URL];
    v18 = self->_postURLWithQuery;
    self->_postURLWithQuery = v17;

    postURLWithQuery = self->_postURLWithQuery;
  }

  v19 = *MEMORY[0x277D85DE8];

  return postURLWithQuery;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = CalDAVPostCalendarItemRecurrenceSplitTask;
  v4 = [(CoreDAVPropertyFindBaseTask *)&v10 description];
  v5 = [(CalDAVPostCalendarItemRecurrenceSplitTask *)self recurrenceDate];
  v6 = [(CalDAVPostCalendarItemRecurrenceSplitTask *)self previousScheduleTag];
  v7 = [(CalDAVPostCalendarItemRecurrenceSplitTask *)self previousETag];
  v8 = [v3 stringWithFormat:@"[%@], recurrenceDate: [%@], previousScheduleTag: [%@], previousETag: [%@]", v4, v5, v6, v7];

  return v8;
}

- (id)additionalHeaderValues
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(CalDAVPostCalendarItemRecurrenceSplitTask *)self previousScheduleTag];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [(CalDAVPostCalendarItemRecurrenceSplitTask *)self previousScheduleTag];
    v7 = CalDAVHTTPHeader_IfScheduleTagMatch;
  }

  else
  {
    v8 = [(CalDAVPostCalendarItemRecurrenceSplitTask *)self previousETag];
    v9 = [v8 length];

    if (!v9)
    {
      goto LABEL_6;
    }

    v6 = [(CalDAVPostCalendarItemRecurrenceSplitTask *)self previousETag];
    v7 = MEMORY[0x277CFDB38];
  }

  [v3 setObject:v6 forKeyedSubscript:*v7];

LABEL_6:
  [v3 setObject:@"return=representation" forKeyedSubscript:*MEMORY[0x277CFDB50]];

  return v3;
}

- (void)_updateBothResponseItems
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(CalDAVPostCalendarItemRecurrenceSplitTask *)self resourceURL];
  v4 = [v3 path];
  v5 = [v4 lastPathComponent];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [(CoreDAVPropertyFindBaseTask *)self multiStatus];
  v7 = [v6 responses];

  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [v12 firstHref];
        v14 = [v13 payloadAsString];
        v15 = [v14 lastPathComponent];

        v16 = [v15 isEqualToString:v5];
        v17 = &OBJC_IVAR___CalDAVPostCalendarItemRecurrenceSplitTask__createdResponseItem;
        if (v16)
        {
          v17 = &OBJC_IVAR___CalDAVPostCalendarItemRecurrenceSplitTask__updatedResponseItem;
        }

        objc_storeStrong((&self->super.super.super.isa + *v17), v12);
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (CoreDAVResponseItem)createdResponseItem
{
  createdResponseItem = self->_createdResponseItem;
  if (!createdResponseItem)
  {
    [(CalDAVPostCalendarItemRecurrenceSplitTask *)self _updateBothResponseItems];
    createdResponseItem = self->_createdResponseItem;
  }

  return createdResponseItem;
}

- (CoreDAVResponseItem)updatedResponseItem
{
  updatedResponseItem = self->_updatedResponseItem;
  if (!updatedResponseItem)
  {
    [(CalDAVPostCalendarItemRecurrenceSplitTask *)self _updateBothResponseItems];
    updatedResponseItem = self->_updatedResponseItem;
  }

  return updatedResponseItem;
}

- (id)_etagForItem:(id)a3
{
  v3 = [a3 successfulPropertiesToValues];
  v4 = [v3 CDVObjectForKeyWithNameSpace:*MEMORY[0x277CFDEF8] andName:*MEMORY[0x277CFDF20]];
  v5 = [v4 payloadAsString];

  return v5;
}

- (id)_scheduleTagForItem:(id)a3
{
  v3 = [a3 successfulPropertiesToValues];
  v4 = [v3 CDVObjectForKeyWithNameSpace:*MEMORY[0x277CFDDC0] andName:@"schedule-tag"];
  v5 = [v4 payloadAsString];

  return v5;
}

- (id)_dataForItem:(id)a3
{
  v3 = [a3 successfulPropertiesToValues];
  v4 = [v3 CDVObjectForKeyWithNameSpace:*MEMORY[0x277CFDDC0] andName:@"calendar-data"];
  v5 = [v4 payload];

  return v5;
}

- (id)_documentForItem:(id)a3
{
  v3 = [(CalDAVPostCalendarItemRecurrenceSplitTask *)self _dataForItem:a3];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277D7F108]) initWithData:v3 options:0 error:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)updatedETag
{
  v3 = [(CalDAVPostCalendarItemRecurrenceSplitTask *)self responseHeaders];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CFDB30]];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = [(CalDAVPostCalendarItemRecurrenceSplitTask *)self updatedResponseItem];
    v5 = [(CalDAVPostCalendarItemRecurrenceSplitTask *)self _etagForItem:v6];
  }

  return v5;
}

- (id)updatedScheduleTag
{
  v3 = [(CalDAVPostCalendarItemRecurrenceSplitTask *)self responseHeaders];
  v4 = [v3 objectForKeyedSubscript:@"Schedule-Tag"];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = [(CalDAVPostCalendarItemRecurrenceSplitTask *)self updatedResponseItem];
    v5 = [(CalDAVPostCalendarItemRecurrenceSplitTask *)self _scheduleTagForItem:v6];
  }

  return v5;
}

- (id)updatedICSDocument
{
  v3 = [(CalDAVPostCalendarItemRecurrenceSplitTask *)self updatedResponseItem];
  v4 = [(CalDAVPostCalendarItemRecurrenceSplitTask *)self _documentForItem:v3];

  return v4;
}

- (id)createdURL
{
  v2 = [(CalDAVPostCalendarItemRecurrenceSplitTask *)self createdResponseItem];
  v3 = [v2 firstHref];
  v4 = [v3 payloadAsFullURL];

  return v4;
}

- (id)createdETag
{
  v3 = [(CalDAVPostCalendarItemRecurrenceSplitTask *)self createdResponseItem];
  v4 = [(CalDAVPostCalendarItemRecurrenceSplitTask *)self _etagForItem:v3];

  return v4;
}

- (id)createdScheduleTag
{
  v3 = [(CalDAVPostCalendarItemRecurrenceSplitTask *)self createdResponseItem];
  v4 = [(CalDAVPostCalendarItemRecurrenceSplitTask *)self _scheduleTagForItem:v3];

  return v4;
}

- (id)createdICSDocument
{
  v3 = [(CalDAVPostCalendarItemRecurrenceSplitTask *)self createdResponseItem];
  v4 = [(CalDAVPostCalendarItemRecurrenceSplitTask *)self _documentForItem:v3];

  return v4;
}

- (id)createdICSData
{
  v3 = [(CalDAVPostCalendarItemRecurrenceSplitTask *)self createdResponseItem];
  v4 = [(CalDAVPostCalendarItemRecurrenceSplitTask *)self _dataForItem:v3];

  return v4;
}

@end