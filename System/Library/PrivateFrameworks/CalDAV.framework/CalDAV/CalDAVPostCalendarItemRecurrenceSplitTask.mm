@interface CalDAVPostCalendarItemRecurrenceSplitTask
- (CoreDAVResponseItem)createdResponseItem;
- (CoreDAVResponseItem)updatedResponseItem;
- (id)_dataForItem:(id)item;
- (id)_documentForItem:(id)item;
- (id)_etagForItem:(id)item;
- (id)_recurrenceDateString;
- (id)_scheduleTagForItem:(id)item;
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
  recurrenceDate = [(CalDAVPostCalendarItemRecurrenceSplitTask *)self recurrenceDate];

  if (recurrenceDate)
  {
    recurrenceDate2 = [(CalDAVPostCalendarItemRecurrenceSplitTask *)self recurrenceDate];
    v7 = [v3 componentsInTimeZone:v4 fromDate:recurrenceDate2];

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
    icsString = [v8 icsString];
  }

  else
  {
    icsString = 0;
  }

  return icsString;
}

- (id)urlWithQuery
{
  v22[3] = *MEMORY[0x277D85DE8];
  postURLWithQuery = self->_postURLWithQuery;
  if (!postURLWithQuery)
  {
    v4 = MEMORY[0x277CCACE0];
    resourceURL = [(CalDAVPostCalendarItemRecurrenceSplitTask *)self resourceURL];
    v6 = [v4 componentsWithURL:resourceURL resolvingAgainstBaseURL:0];

    v7 = [MEMORY[0x277CCAD18] queryItemWithName:@"action" value:@"split"];
    v8 = MEMORY[0x277CCAD18];
    _recurrenceDateString = [(CalDAVPostCalendarItemRecurrenceSplitTask *)self _recurrenceDateString];
    v10 = [v8 queryItemWithName:@"rid" value:_recurrenceDateString];

    uidForCreatedSeries = [(CalDAVPostCalendarItemRecurrenceSplitTask *)self uidForCreatedSeries];
    v12 = [uidForCreatedSeries length];

    if (v12)
    {
      v13 = MEMORY[0x277CCAD18];
      uidForCreatedSeries2 = [(CalDAVPostCalendarItemRecurrenceSplitTask *)self uidForCreatedSeries];
      v15 = [v13 queryItemWithName:@"uid" value:uidForCreatedSeries2];

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
  recurrenceDate = [(CalDAVPostCalendarItemRecurrenceSplitTask *)self recurrenceDate];
  previousScheduleTag = [(CalDAVPostCalendarItemRecurrenceSplitTask *)self previousScheduleTag];
  previousETag = [(CalDAVPostCalendarItemRecurrenceSplitTask *)self previousETag];
  v8 = [v3 stringWithFormat:@"[%@], recurrenceDate: [%@], previousScheduleTag: [%@], previousETag: [%@]", v4, recurrenceDate, previousScheduleTag, previousETag];

  return v8;
}

- (id)additionalHeaderValues
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  previousScheduleTag = [(CalDAVPostCalendarItemRecurrenceSplitTask *)self previousScheduleTag];
  v5 = [previousScheduleTag length];

  if (v5)
  {
    previousScheduleTag2 = [(CalDAVPostCalendarItemRecurrenceSplitTask *)self previousScheduleTag];
    v7 = CalDAVHTTPHeader_IfScheduleTagMatch;
  }

  else
  {
    previousETag = [(CalDAVPostCalendarItemRecurrenceSplitTask *)self previousETag];
    v9 = [previousETag length];

    if (!v9)
    {
      goto LABEL_6;
    }

    previousScheduleTag2 = [(CalDAVPostCalendarItemRecurrenceSplitTask *)self previousETag];
    v7 = MEMORY[0x277CFDB38];
  }

  [dictionary setObject:previousScheduleTag2 forKeyedSubscript:*v7];

LABEL_6:
  [dictionary setObject:@"return=representation" forKeyedSubscript:*MEMORY[0x277CFDB50]];

  return dictionary;
}

- (void)_updateBothResponseItems
{
  v24 = *MEMORY[0x277D85DE8];
  resourceURL = [(CalDAVPostCalendarItemRecurrenceSplitTask *)self resourceURL];
  path = [resourceURL path];
  lastPathComponent = [path lastPathComponent];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  multiStatus = [(CoreDAVPropertyFindBaseTask *)self multiStatus];
  responses = [multiStatus responses];

  v8 = [responses countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(responses);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        firstHref = [v12 firstHref];
        payloadAsString = [firstHref payloadAsString];
        lastPathComponent2 = [payloadAsString lastPathComponent];

        v16 = [lastPathComponent2 isEqualToString:lastPathComponent];
        v17 = &OBJC_IVAR___CalDAVPostCalendarItemRecurrenceSplitTask__createdResponseItem;
        if (v16)
        {
          v17 = &OBJC_IVAR___CalDAVPostCalendarItemRecurrenceSplitTask__updatedResponseItem;
        }

        objc_storeStrong((&self->super.super.super.isa + *v17), v12);
      }

      v9 = [responses countByEnumeratingWithState:&v19 objects:v23 count:16];
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

- (id)_etagForItem:(id)item
{
  successfulPropertiesToValues = [item successfulPropertiesToValues];
  v4 = [successfulPropertiesToValues CDVObjectForKeyWithNameSpace:*MEMORY[0x277CFDEF8] andName:*MEMORY[0x277CFDF20]];
  payloadAsString = [v4 payloadAsString];

  return payloadAsString;
}

- (id)_scheduleTagForItem:(id)item
{
  successfulPropertiesToValues = [item successfulPropertiesToValues];
  v4 = [successfulPropertiesToValues CDVObjectForKeyWithNameSpace:*MEMORY[0x277CFDDC0] andName:@"schedule-tag"];
  payloadAsString = [v4 payloadAsString];

  return payloadAsString;
}

- (id)_dataForItem:(id)item
{
  successfulPropertiesToValues = [item successfulPropertiesToValues];
  v4 = [successfulPropertiesToValues CDVObjectForKeyWithNameSpace:*MEMORY[0x277CFDDC0] andName:@"calendar-data"];
  payload = [v4 payload];

  return payload;
}

- (id)_documentForItem:(id)item
{
  v3 = [(CalDAVPostCalendarItemRecurrenceSplitTask *)self _dataForItem:item];
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
  responseHeaders = [(CalDAVPostCalendarItemRecurrenceSplitTask *)self responseHeaders];
  v4 = [responseHeaders objectForKeyedSubscript:*MEMORY[0x277CFDB30]];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    updatedResponseItem = [(CalDAVPostCalendarItemRecurrenceSplitTask *)self updatedResponseItem];
    v5 = [(CalDAVPostCalendarItemRecurrenceSplitTask *)self _etagForItem:updatedResponseItem];
  }

  return v5;
}

- (id)updatedScheduleTag
{
  responseHeaders = [(CalDAVPostCalendarItemRecurrenceSplitTask *)self responseHeaders];
  v4 = [responseHeaders objectForKeyedSubscript:@"Schedule-Tag"];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    updatedResponseItem = [(CalDAVPostCalendarItemRecurrenceSplitTask *)self updatedResponseItem];
    v5 = [(CalDAVPostCalendarItemRecurrenceSplitTask *)self _scheduleTagForItem:updatedResponseItem];
  }

  return v5;
}

- (id)updatedICSDocument
{
  updatedResponseItem = [(CalDAVPostCalendarItemRecurrenceSplitTask *)self updatedResponseItem];
  v4 = [(CalDAVPostCalendarItemRecurrenceSplitTask *)self _documentForItem:updatedResponseItem];

  return v4;
}

- (id)createdURL
{
  createdResponseItem = [(CalDAVPostCalendarItemRecurrenceSplitTask *)self createdResponseItem];
  firstHref = [createdResponseItem firstHref];
  payloadAsFullURL = [firstHref payloadAsFullURL];

  return payloadAsFullURL;
}

- (id)createdETag
{
  createdResponseItem = [(CalDAVPostCalendarItemRecurrenceSplitTask *)self createdResponseItem];
  v4 = [(CalDAVPostCalendarItemRecurrenceSplitTask *)self _etagForItem:createdResponseItem];

  return v4;
}

- (id)createdScheduleTag
{
  createdResponseItem = [(CalDAVPostCalendarItemRecurrenceSplitTask *)self createdResponseItem];
  v4 = [(CalDAVPostCalendarItemRecurrenceSplitTask *)self _scheduleTagForItem:createdResponseItem];

  return v4;
}

- (id)createdICSDocument
{
  createdResponseItem = [(CalDAVPostCalendarItemRecurrenceSplitTask *)self createdResponseItem];
  v4 = [(CalDAVPostCalendarItemRecurrenceSplitTask *)self _documentForItem:createdResponseItem];

  return v4;
}

- (id)createdICSData
{
  createdResponseItem = [(CalDAVPostCalendarItemRecurrenceSplitTask *)self createdResponseItem];
  v4 = [(CalDAVPostCalendarItemRecurrenceSplitTask *)self _dataForItem:createdResponseItem];

  return v4;
}

@end