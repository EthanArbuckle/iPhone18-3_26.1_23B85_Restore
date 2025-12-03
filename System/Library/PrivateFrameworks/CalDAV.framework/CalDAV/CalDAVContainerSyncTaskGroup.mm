@interface CalDAVContainerSyncTaskGroup
- (BOOL)_shouldFetchEventsForState:(int)state;
- (BOOL)_shouldFetchTodosForState:(int)state;
- (BOOL)shouldFetchResourceWithEtag:(id)etag propertiesToValues:(id)values;
- (CalDAVContainerSyncTaskGroup)initWithCalendar:(id)calendar accountInfoProvider:(id)provider taskManager:(id)manager;
- (CalDAVContainerSyncTaskGroup)initWithFolderURL:(id)l previousCTag:(id)tag previousSyncToken:(id)token actions:(id)actions accountInfoProvider:(id)provider taskManager:(id)manager appSpecificCalendarItemClass:(Class)class;
- (id)copyAdditionalResourcePropertiesToFetch;
- (id)copyGetEtagTaskWithPropertiesToFind:(id)find;
- (id)copyGetTaskWithURL:(id)l;
- (id)copyMultiGetTaskWithURLs:(id)ls;
- (id)copyPutTaskWithPayloadItem:(id)item forAction:(id)action;
- (void)applyAdditionalPropertiesFromPostTask:(id)task;
- (void)applyAdditionalPropertiesFromPutTask:(id)task;
@end

@implementation CalDAVContainerSyncTaskGroup

- (CalDAVContainerSyncTaskGroup)initWithFolderURL:(id)l previousCTag:(id)tag previousSyncToken:(id)token actions:(id)actions accountInfoProvider:(id)provider taskManager:(id)manager appSpecificCalendarItemClass:(Class)class
{
  v12.receiver = self;
  v12.super_class = CalDAVContainerSyncTaskGroup;
  v9 = [(CoreDAVContainerSyncTaskGroup *)&v12 initWithFolderURL:l previousCTag:tag previousSyncToken:token actions:actions syncItemOrder:0 context:0 accountInfoProvider:provider taskManager:manager];
  v10 = v9;
  if (v9)
  {
    [(CalDAVContainerSyncTaskGroup *)v9 setSyncEvents:1];
    [(CalDAVContainerSyncTaskGroup *)v10 setSyncTodos:1];
    *&v10->_getScheduleTags = 0;
    *(&v10->super.super.super.isa + *MEMORY[0x277CFDCE0]) = class;
  }

  return v10;
}

- (CalDAVContainerSyncTaskGroup)initWithCalendar:(id)calendar accountInfoProvider:(id)provider taskManager:(id)manager
{
  calendarCopy = calendar;
  managerCopy = manager;
  providerCopy = provider;
  if (objc_opt_respondsToSelector())
  {
    appSpecificCalendarItemClass = [calendarCopy appSpecificCalendarItemClass];
  }

  else
  {
    appSpecificCalendarItemClass = 0;
  }

  ctag = [calendarCopy ctag];
  syncToken = [calendarCopy syncToken];
  if ([calendarCopy needsResync])
  {

    ctag = 0;
    syncToken = 0;
  }

  calendarURL = [calendarCopy calendarURL];
  syncActions = [calendarCopy syncActions];
  v16 = [(CalDAVContainerSyncTaskGroup *)self initWithFolderURL:calendarURL previousCTag:ctag previousSyncToken:syncToken actions:syncActions accountInfoProvider:providerCopy taskManager:managerCopy appSpecificCalendarItemClass:appSpecificCalendarItemClass];

  if (v16)
  {
    [(CalDAVContainerSyncTaskGroup *)v16 setCalendar:calendarCopy];
    if ([calendarCopy isScheduleInbox])
    {
      v17 = 0;
    }

    else
    {
      v17 = [calendarCopy isNotification] ^ 1;
    }

    [(CalDAVContainerSyncTaskGroup *)v16 setGetScheduleTags:v17];
    -[CalDAVContainerSyncTaskGroup setGetScheduleChanges:](v16, "setGetScheduleChanges:", [calendarCopy isScheduleInbox]);
    if ([calendarCopy isNotification])
    {
      [(CoreDAVContainerSyncTaskGroup *)v16 setUseMultiGet:0];
    }
  }

  return v16;
}

- (id)copyMultiGetTaskWithURLs:(id)ls
{
  lsCopy = ls;
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
    accountInfoProvider = [(CoreDAVTaskGroup *)self accountInfoProvider];
    taskManager = [(CoreDAVTaskGroup *)self taskManager];
    v10 = [v7 initWithURLs:lsCopy multiGetBlock:v5 getBlock:v6 accountInfoProvider:accountInfoProvider taskManager:taskManager];
  }

  else
  {
    v10 = (v5)[2](v5, lsCopy);
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

- (id)copyGetTaskWithURL:(id)l
{
  calendar = self->_calendar;
  lCopy = l;
  isNotification = [(CalDAVCalendar *)calendar isNotification];
  v6 = off_278D65BA8;
  if (!isNotification)
  {
    v6 = off_278D65B98;
  }

  v7 = [objc_alloc(*v6) initWithURL:lCopy];

  return v7;
}

- (id)copyPutTaskWithPayloadItem:(id)item forAction:(id)action
{
  itemCopy = item;
  actionCopy = action;
  v8 = [CalDAVPutCalendarItemTask alloc];
  dataPayload = [itemCopy dataPayload];
  dataContentType = [(CalDAVContainerSyncTaskGroup *)self dataContentType];
  serverID = [itemCopy serverID];
  action = [actionCopy action];

  if (action)
  {
    syncKey = [itemCopy syncKey];
    v14 = [(CoreDAVPostOrPutTask *)v8 initWithDataPayload:dataPayload dataContentType:dataContentType atURL:serverID previousETag:syncKey];
  }

  else
  {
    v14 = [(CoreDAVPostOrPutTask *)v8 initWithDataPayload:dataPayload dataContentType:dataContentType atURL:serverID previousETag:0];
  }

  scheduleTag = [itemCopy scheduleTag];
  [(CalDAVPutCalendarItemTask *)v14 setPreviousScheduleTag:scheduleTag];

  return v14;
}

- (void)applyAdditionalPropertiesFromPutTask:(id)task
{
  taskCopy = task;
  delegate = [(CoreDAVTaskGroup *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    responseHeaders = [taskCopy responseHeaders];
    v7 = [responseHeaders CDVObjectForKeyCaseInsensitive:@"Schedule-Tag"];

    delegate2 = [(CoreDAVTaskGroup *)self delegate];
    v9 = [taskCopy url];
    [delegate2 setLocalScheduleTag:v7 forItemWithURL:v9 inFolderWithURL:*(&self->super.super.super.isa + *MEMORY[0x277CFDCF0])];
  }
}

- (void)applyAdditionalPropertiesFromPostTask:(id)task
{
  taskCopy = task;
  delegate = [(CoreDAVTaskGroup *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    responseHeaders = [taskCopy responseHeaders];
    v7 = [responseHeaders CDVObjectForKeyCaseInsensitive:@"Schedule-Tag"];

    delegate2 = [(CoreDAVTaskGroup *)self delegate];
    v9 = [taskCopy url];
    [delegate2 setLocalScheduleTag:v7 forItemWithURL:v9 inFolderWithURL:*(&self->super.super.super.isa + *MEMORY[0x277CFDCF0])];
  }
}

- (BOOL)_shouldFetchEventsForState:(int)state
{
  result = [(CalDAVContainerSyncTaskGroup *)self syncEvents];
  if ((state & 0xFFFFFFFE) != 2)
  {
    return 0;
  }

  return result;
}

- (BOOL)_shouldFetchTodosForState:(int)state
{
  syncTodos = [(CalDAVContainerSyncTaskGroup *)self syncTodos];
  v6 = state == 2 || state == 4;
  return syncTodos && v6;
}

- (id)copyGetEtagTaskWithPropertiesToFind:(id)find
{
  findCopy = find;
  calendar = self->_calendar;
  if (calendar)
  {
    isEventContainer = [(CalDAVCalendar *)calendar isEventContainer];
    v8 = isEventContainer ^ [(CalDAVCalendar *)self->_calendar isTaskContainer];
    calendar = self->_calendar;
  }

  else
  {
    v8 = 0;
  }

  isNotification = [(CalDAVCalendar *)calendar isNotification];
  v10 = MEMORY[0x277CFDD20];
  if ((isNotification & 1) == 0)
  {
    if (![(CalDAVCalendar *)self->_calendar isScheduleInbox])
    {
      goto LABEL_7;
    }

    principal = [(CalDAVCalendar *)self->_calendar principal];
    account = [principal account];
    serverVersion = [account serverVersion];
    supportsTimeRangeFilterOnInbox = [serverVersion supportsTimeRangeFilterOnInbox];

    if (supportsTimeRangeFilterOnInbox)
    {
LABEL_7:
      if ((*(&self->super.super.super.isa + *v10) & 1) == 0)
      {
        if ((v8 & 1) == 0)
        {
          syncEvents = [(CalDAVContainerSyncTaskGroup *)self syncEvents];
          if (syncEvents != [(CalDAVContainerSyncTaskGroup *)self syncTodos])
          {
LABEL_14:
            if ([(CalDAVContainerSyncTaskGroup *)self syncEvents]&& [(CalDAVContainerSyncTaskGroup *)self syncTodos])
            {
              v18 = *&self->_getScheduleTags;
              if (v18 == 1)
              {
                mEMORY[0x277CFDC18] = [MEMORY[0x277CFDC18] sharedLogging];
                WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + *MEMORY[0x277CFDD48]));
                v21 = [mEMORY[0x277CFDC18] logHandleForAccountInfoProvider:WeakRetained];

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
                  currentHandler = [MEMORY[0x277CCA890] currentHandler];
                  [currentHandler handleFailureInMethod:a2 object:self file:@"CalDAVContainerSyncTaskGroup.m" lineNumber:188 description:{@"Unexpected state (%d) when fetching etags", *&self->_getScheduleTags}];

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
            v26 = [(CoreDAVPropFindTask *)v28 initWithPropertiesToFind:findCopy atURL:*(&self->super.super.super.isa + *MEMORY[0x277CFDCF0]) withDepth:3];
            [(CalDAVCalendarQueryTask *)v26 setSyncEvents:[(CalDAVContainerSyncTaskGroup *)self _shouldFetchEventsForState:*&self->_getScheduleTags]];
            [(CalDAVCalendarQueryTask *)v26 setSyncTodos:[(CalDAVContainerSyncTaskGroup *)self _shouldFetchTodosForState:*&self->_getScheduleTags]];
            eventFilterStartDate = [(CalDAVContainerSyncTaskGroup *)self eventFilterStartDate];
            [(CalDAVCalendarQueryTask *)v26 setEventFilterStartDate:eventFilterStartDate];

            eventFilterEndDate = [(CalDAVContainerSyncTaskGroup *)self eventFilterEndDate];
            [(CalDAVCalendarQueryTask *)v26 setEventFilterEndDate:eventFilterEndDate];

            goto LABEL_29;
          }
        }

        if ([(CalDAVContainerSyncTaskGroup *)self syncEvents])
        {
          eventFilterStartDate2 = [(CalDAVContainerSyncTaskGroup *)self eventFilterStartDate];
          if (eventFilterStartDate2)
          {

            goto LABEL_14;
          }

          eventFilterEndDate2 = [(CalDAVContainerSyncTaskGroup *)self eventFilterEndDate];

          if (eventFilterEndDate2)
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
    v24 = [v23 initWithPropertiesToFind:findCopy atURL:*(&self->super.super.super.isa + *MEMORY[0x277CFDCF0]) withDepth:3 previousSyncToken:*(&self->super.super.super.isa + *MEMORY[0x277CFDD10])];
  }

  else
  {
    v25 = objc_alloc(MEMORY[0x277CFDC68]);
    v24 = [v25 initWithPropertiesToFind:findCopy atURL:*(&self->super.super.super.isa + *MEMORY[0x277CFDCF0]) withDepth:3];
  }

  v26 = v24;
LABEL_29:

  return v26;
}

- (BOOL)shouldFetchResourceWithEtag:(id)etag propertiesToValues:(id)values
{
  calendar = self->_calendar;
  valuesCopy = values;
  if ([(CalDAVCalendar *)calendar isNotification])
  {
    payloadAsString = [valuesCopy CDVObjectForKeyWithNameSpace:*MEMORY[0x277CFDE90] andName:@"notificationtype"];

    if ([payloadAsString isInviteNotification] & 1) != 0 || (objc_msgSend(payloadAsString, "isInviteReply"))
    {
      isResourceChanged = 1;
    }

    else
    {
      isResourceChanged = [payloadAsString isResourceChanged];
    }
  }

  else
  {
    v8 = [valuesCopy CDVObjectForKeyWithNameSpace:*MEMORY[0x277CFDEF8] andName:*MEMORY[0x277CFDF18]];

    payloadAsString = [v8 payloadAsString];

    isResourceChanged = [payloadAsString rangeOfString:@"text/calendar"] != 0x7FFFFFFFFFFFFFFFLL;
  }

  return isResourceChanged;
}

- (id)copyAdditionalResourcePropertiesToFetch
{
  v3 = objc_opt_new();
  isNotification = [(CalDAVCalendar *)self->_calendar isNotification];
  v5 = MEMORY[0x277CFDE90];
  if (!isNotification)
  {
    v5 = MEMORY[0x277CFDEF8];
  }

  v6 = *v5;
  v7 = cdXMLCalendarServerNotificationType;
  if (!isNotification)
  {
    v7 = MEMORY[0x277CFDF18];
  }

  v8 = *v7;
  v9 = off_278D65AF0;
  if (!isNotification)
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