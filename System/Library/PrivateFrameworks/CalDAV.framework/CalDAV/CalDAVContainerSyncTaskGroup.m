@interface CalDAVContainerSyncTaskGroup
- (BOOL)_shouldFetchEventsForState:(int)a3;
- (BOOL)_shouldFetchTodosForState:(int)a3;
- (BOOL)shouldFetchResourceWithEtag:(id)a3 propertiesToValues:(id)a4;
- (CalDAVContainerSyncTaskGroup)initWithCalendar:(id)a3 accountInfoProvider:(id)a4 taskManager:(id)a5;
- (CalDAVContainerSyncTaskGroup)initWithFolderURL:(id)a3 previousCTag:(id)a4 previousSyncToken:(id)a5 actions:(id)a6 accountInfoProvider:(id)a7 taskManager:(id)a8 appSpecificCalendarItemClass:(Class)a9;
- (id)copyAdditionalResourcePropertiesToFetch;
- (id)copyGetEtagTaskWithPropertiesToFind:(id)a3;
- (id)copyGetTaskWithURL:(id)a3;
- (id)copyMultiGetTaskWithURLs:(id)a3;
- (id)copyPutTaskWithPayloadItem:(id)a3 forAction:(id)a4;
- (void)applyAdditionalPropertiesFromPostTask:(id)a3;
- (void)applyAdditionalPropertiesFromPutTask:(id)a3;
@end

@implementation CalDAVContainerSyncTaskGroup

- (CalDAVContainerSyncTaskGroup)initWithFolderURL:(id)a3 previousCTag:(id)a4 previousSyncToken:(id)a5 actions:(id)a6 accountInfoProvider:(id)a7 taskManager:(id)a8 appSpecificCalendarItemClass:(Class)a9
{
  v12.receiver = self;
  v12.super_class = CalDAVContainerSyncTaskGroup;
  v9 = [(CoreDAVContainerSyncTaskGroup *)&v12 initWithFolderURL:a3 previousCTag:a4 previousSyncToken:a5 actions:a6 syncItemOrder:0 context:0 accountInfoProvider:a7 taskManager:a8];
  v10 = v9;
  if (v9)
  {
    [(CalDAVContainerSyncTaskGroup *)v9 setSyncEvents:1];
    [(CalDAVContainerSyncTaskGroup *)v10 setSyncTodos:1];
    *&v10->_getScheduleTags = 0;
    *(&v10->super.super.super.isa + *MEMORY[0x277CFDCE0]) = a9;
  }

  return v10;
}

- (CalDAVContainerSyncTaskGroup)initWithCalendar:(id)a3 accountInfoProvider:(id)a4 taskManager:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  if (objc_opt_respondsToSelector())
  {
    v11 = [v8 appSpecificCalendarItemClass];
  }

  else
  {
    v11 = 0;
  }

  v12 = [v8 ctag];
  v13 = [v8 syncToken];
  if ([v8 needsResync])
  {

    v12 = 0;
    v13 = 0;
  }

  v14 = [v8 calendarURL];
  v15 = [v8 syncActions];
  v16 = [(CalDAVContainerSyncTaskGroup *)self initWithFolderURL:v14 previousCTag:v12 previousSyncToken:v13 actions:v15 accountInfoProvider:v10 taskManager:v9 appSpecificCalendarItemClass:v11];

  if (v16)
  {
    [(CalDAVContainerSyncTaskGroup *)v16 setCalendar:v8];
    if ([v8 isScheduleInbox])
    {
      v17 = 0;
    }

    else
    {
      v17 = [v8 isNotification] ^ 1;
    }

    [(CalDAVContainerSyncTaskGroup *)v16 setGetScheduleTags:v17];
    -[CalDAVContainerSyncTaskGroup setGetScheduleChanges:](v16, "setGetScheduleChanges:", [v8 isScheduleInbox]);
    if ([v8 isNotification])
    {
      [(CoreDAVContainerSyncTaskGroup *)v16 setUseMultiGet:0];
    }
  }

  return v16;
}

- (id)copyMultiGetTaskWithURLs:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __57__CalDAVContainerSyncTaskGroup_copyMultiGetTaskWithURLs___block_invoke;
  v14[3] = &unk_278D66780;
  v14[4] = self;
  v5 = MEMORY[0x245D182B0](v14);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __57__CalDAVContainerSyncTaskGroup_copyMultiGetTaskWithURLs___block_invoke_2;
  v12[3] = &unk_278D667A8;
  objc_copyWeak(&v13, &location);
  v6 = MEMORY[0x245D182B0](v12);
  if (*(&self->_fallbackOnMultiGetError + 4))
  {
    v7 = objc_alloc(MEMORY[0x277CFDC30]);
    v8 = [(CoreDAVTaskGroup *)self accountInfoProvider];
    v9 = [(CoreDAVTaskGroup *)self taskManager];
    v10 = [v7 initWithURLs:v4 multiGetBlock:v5 getBlock:v6 accountInfoProvider:v8 taskManager:v9];
  }

  else
  {
    v10 = (v5)[2](v5, v4);
  }

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v10;
}

CalDAVContainerMultiGetTask *__57__CalDAVContainerSyncTaskGroup_copyMultiGetTaskWithURLs___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [CalDAVContainerMultiGetTask alloc];
  v5 = *(a1 + 32);
  v6 = *&v5[*MEMORY[0x277CFDCF0]];
  v7 = [v5 getScheduleTags];
  v8 = [*(a1 + 32) getScheduleChanges];
  v9 = [(CalDAVContainerMultiGetTask *)v4 initWithURLs:v3 atContainerURL:v6 getScheduleTags:v7 getScheduleChanges:v8 appSpecificCalendarItemClass:*(*(a1 + 32) + *MEMORY[0x277CFDCE0])];

  return v9;
}

id __57__CalDAVContainerSyncTaskGroup_copyMultiGetTaskWithURLs___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained copyGetTaskWithURL:v3];

  return v5;
}

- (id)copyGetTaskWithURL:(id)a3
{
  calendar = self->_calendar;
  v4 = a3;
  v5 = [(CalDAVCalendar *)calendar isNotification];
  v6 = off_278D65BA8;
  if (!v5)
  {
    v6 = off_278D65B98;
  }

  v7 = [objc_alloc(*v6) initWithURL:v4];

  return v7;
}

- (id)copyPutTaskWithPayloadItem:(id)a3 forAction:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [CalDAVPutCalendarItemTask alloc];
  v9 = [v6 dataPayload];
  v10 = [(CalDAVContainerSyncTaskGroup *)self dataContentType];
  v11 = [v6 serverID];
  v12 = [v7 action];

  if (v12)
  {
    v13 = [v6 syncKey];
    v14 = [(CoreDAVPostOrPutTask *)v8 initWithDataPayload:v9 dataContentType:v10 atURL:v11 previousETag:v13];
  }

  else
  {
    v14 = [(CoreDAVPostOrPutTask *)v8 initWithDataPayload:v9 dataContentType:v10 atURL:v11 previousETag:0];
  }

  v15 = [v6 scheduleTag];
  [(CalDAVPutCalendarItemTask *)v14 setPreviousScheduleTag:v15];

  return v14;
}

- (void)applyAdditionalPropertiesFromPutTask:(id)a3
{
  v10 = a3;
  v4 = [(CoreDAVTaskGroup *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [v10 responseHeaders];
    v7 = [v6 CDVObjectForKeyCaseInsensitive:@"Schedule-Tag"];

    v8 = [(CoreDAVTaskGroup *)self delegate];
    v9 = [v10 url];
    [v8 setLocalScheduleTag:v7 forItemWithURL:v9 inFolderWithURL:*(&self->super.super.super.isa + *MEMORY[0x277CFDCF0])];
  }
}

- (void)applyAdditionalPropertiesFromPostTask:(id)a3
{
  v10 = a3;
  v4 = [(CoreDAVTaskGroup *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [v10 responseHeaders];
    v7 = [v6 CDVObjectForKeyCaseInsensitive:@"Schedule-Tag"];

    v8 = [(CoreDAVTaskGroup *)self delegate];
    v9 = [v10 url];
    [v8 setLocalScheduleTag:v7 forItemWithURL:v9 inFolderWithURL:*(&self->super.super.super.isa + *MEMORY[0x277CFDCF0])];
  }
}

- (BOOL)_shouldFetchEventsForState:(int)a3
{
  result = [(CalDAVContainerSyncTaskGroup *)self syncEvents];
  if ((a3 & 0xFFFFFFFE) != 2)
  {
    return 0;
  }

  return result;
}

- (BOOL)_shouldFetchTodosForState:(int)a3
{
  v4 = [(CalDAVContainerSyncTaskGroup *)self syncTodos];
  v6 = a3 == 2 || a3 == 4;
  return v4 && v6;
}

- (id)copyGetEtagTaskWithPropertiesToFind:(id)a3
{
  v5 = a3;
  calendar = self->_calendar;
  if (calendar)
  {
    v7 = [(CalDAVCalendar *)calendar isEventContainer];
    v8 = v7 ^ [(CalDAVCalendar *)self->_calendar isTaskContainer];
    calendar = self->_calendar;
  }

  else
  {
    v8 = 0;
  }

  v9 = [(CalDAVCalendar *)calendar isNotification];
  v10 = MEMORY[0x277CFDD20];
  if ((v9 & 1) == 0)
  {
    if (![(CalDAVCalendar *)self->_calendar isScheduleInbox])
    {
      goto LABEL_7;
    }

    v11 = [(CalDAVCalendar *)self->_calendar principal];
    v12 = [v11 account];
    v13 = [v12 serverVersion];
    v14 = [v13 supportsTimeRangeFilterOnInbox];

    if (v14)
    {
LABEL_7:
      if ((*(&self->super.super.super.isa + *v10) & 1) == 0)
      {
        if ((v8 & 1) == 0)
        {
          v15 = [(CalDAVContainerSyncTaskGroup *)self syncEvents];
          if (v15 != [(CalDAVContainerSyncTaskGroup *)self syncTodos])
          {
LABEL_14:
            if ([(CalDAVContainerSyncTaskGroup *)self syncEvents]&& [(CalDAVContainerSyncTaskGroup *)self syncTodos])
            {
              v18 = *&self->_getScheduleTags;
              if (v18 == 1)
              {
                v19 = [MEMORY[0x277CFDC18] sharedLogging];
                WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + *MEMORY[0x277CFDD48]));
                v21 = [v19 logHandleForAccountInfoProvider:WeakRetained];

                if (v21 && os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_242742000, v21, OS_LOG_TYPE_DEFAULT, "<rdar://problem/11466753> Was asked for an etag task while our state is CalDAVContainerFetchingETagPropfindAll", buf, 2u);
                }

                v18 = *&self->_getScheduleTags;
              }

              if (v18 >= 2)
              {
                if (v18 != 3)
                {
                  v31 = [MEMORY[0x277CCA890] currentHandler];
                  [v31 handleFailureInMethod:a2 object:self file:@"CalDAVContainerSyncTaskGroup.m" lineNumber:188 description:{@"Unexpected state (%d) when fetching etags", *&self->_getScheduleTags}];

                  goto LABEL_37;
                }

                v22 = 4;
              }

              else if ([(CalDAVContainerSyncTaskGroup *)self supportsExtendedCalendarQuery])
              {
                v22 = 2;
              }

              else
              {
                v22 = 3;
              }
            }

            else
            {
              if (![(CalDAVContainerSyncTaskGroup *)self syncEvents]&& ![(CalDAVContainerSyncTaskGroup *)self syncTodos])
              {
                [(CalDAVContainerSyncTaskGroup *)a2 copyGetEtagTaskWithPropertiesToFind:?];
              }

              if ([(CalDAVContainerSyncTaskGroup *)self syncEvents])
              {
                v22 = 3;
              }

              else
              {
                v22 = 4;
              }
            }

            *&self->_getScheduleTags = v22;
LABEL_37:
            v28 = [CalDAVCalendarQueryTask alloc];
            v26 = [(CoreDAVPropFindTask *)v28 initWithPropertiesToFind:v5 atURL:*(&self->super.super.super.isa + *MEMORY[0x277CFDCF0]) withDepth:3];
            [(CalDAVCalendarQueryTask *)v26 setSyncEvents:[(CalDAVContainerSyncTaskGroup *)self _shouldFetchEventsForState:*&self->_getScheduleTags]];
            [(CalDAVCalendarQueryTask *)v26 setSyncTodos:[(CalDAVContainerSyncTaskGroup *)self _shouldFetchTodosForState:*&self->_getScheduleTags]];
            v29 = [(CalDAVContainerSyncTaskGroup *)self eventFilterStartDate];
            [(CalDAVCalendarQueryTask *)v26 setEventFilterStartDate:v29];

            v30 = [(CalDAVContainerSyncTaskGroup *)self eventFilterEndDate];
            [(CalDAVCalendarQueryTask *)v26 setEventFilterEndDate:v30];

            goto LABEL_29;
          }
        }

        if ([(CalDAVContainerSyncTaskGroup *)self syncEvents])
        {
          v16 = [(CalDAVContainerSyncTaskGroup *)self eventFilterStartDate];
          if (v16)
          {

            goto LABEL_14;
          }

          v17 = [(CalDAVContainerSyncTaskGroup *)self eventFilterEndDate];

          if (v17)
          {
            goto LABEL_14;
          }
        }
      }
    }
  }

  *&self->_getScheduleTags = 1;
  if (*(&self->super.super.super.isa + *v10) == 1)
  {
    v23 = objc_alloc(MEMORY[0x277CFDC90]);
    v24 = [v23 initWithPropertiesToFind:v5 atURL:*(&self->super.super.super.isa + *MEMORY[0x277CFDCF0]) withDepth:3 previousSyncToken:*(&self->super.super.super.isa + *MEMORY[0x277CFDD10])];
  }

  else
  {
    v25 = objc_alloc(MEMORY[0x277CFDC68]);
    v24 = [v25 initWithPropertiesToFind:v5 atURL:*(&self->super.super.super.isa + *MEMORY[0x277CFDCF0]) withDepth:3];
  }

  v26 = v24;
LABEL_29:

  return v26;
}

- (BOOL)shouldFetchResourceWithEtag:(id)a3 propertiesToValues:(id)a4
{
  calendar = self->_calendar;
  v5 = a4;
  if ([(CalDAVCalendar *)calendar isNotification])
  {
    v6 = [v5 CDVObjectForKeyWithNameSpace:*MEMORY[0x277CFDE90] andName:@"notificationtype"];

    if ([v6 isInviteNotification] & 1) != 0 || (objc_msgSend(v6, "isInviteReply"))
    {
      v7 = 1;
    }

    else
    {
      v7 = [v6 isResourceChanged];
    }
  }

  else
  {
    v8 = [v5 CDVObjectForKeyWithNameSpace:*MEMORY[0x277CFDEF8] andName:*MEMORY[0x277CFDF18]];

    v6 = [v8 payloadAsString];

    v7 = [v6 rangeOfString:@"text/calendar"] != 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- (id)copyAdditionalResourcePropertiesToFetch
{
  v3 = objc_opt_new();
  v4 = [(CalDAVCalendar *)self->_calendar isNotification];
  v5 = MEMORY[0x277CFDE90];
  if (!v4)
  {
    v5 = MEMORY[0x277CFDEF8];
  }

  v6 = *v5;
  v7 = cdXMLCalendarServerNotificationType;
  if (!v4)
  {
    v7 = MEMORY[0x277CFDF18];
  }

  v8 = *v7;
  v9 = off_278D65AF0;
  if (!v4)
  {
    v9 = 0x277CFDC10;
  }

  v10 = *v9;
  [v3 CDVAddItemParserMappingWithNameSpace:v6 name:v8 parseClass:objc_opt_class()];
  return v3;
}

- (void)copyGetEtagTaskWithPropertiesToFind:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CalDAVContainerSyncTaskGroup.m" lineNumber:192 description:@"Attempted to sync neither Todos nor Events in a CalDAV container"];
}

@end