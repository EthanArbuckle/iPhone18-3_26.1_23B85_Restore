@interface CalDAVRecurrenceSplitTaskGroup
- (CalDAVRecurrenceSplitTaskGroup)initWithCalendar:(id)calendar accountInfoProvider:(id)provider taskManager:(id)manager;
- (void)startTaskGroup;
@end

@implementation CalDAVRecurrenceSplitTaskGroup

- (CalDAVRecurrenceSplitTaskGroup)initWithCalendar:(id)calendar accountInfoProvider:(id)provider taskManager:(id)manager
{
  calendarCopy = calendar;
  v15.receiver = self;
  v15.super_class = CalDAVRecurrenceSplitTaskGroup;
  v9 = [(CoreDAVTaskGroup *)&v15 initWithAccountInfoProvider:provider taskManager:manager];
  if (v9)
  {
    calendarURL = [calendarCopy calendarURL];
    folderURL = v9->_folderURL;
    v9->_folderURL = calendarURL;

    if (objc_opt_respondsToSelector())
    {
      recurrenceSplitActions = [calendarCopy recurrenceSplitActions];
      actions = v9->_actions;
      v9->_actions = recurrenceSplitActions;
    }
  }

  return v9;
}

- (void)startTaskGroup
{
  v36 = *MEMORY[0x277D85DE8];
  group = dispatch_group_create();
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x3032000000;
  v33[3] = __Block_byref_object_copy__0;
  v33[4] = __Block_byref_object_dispose__0;
  v34 = 0;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = self->_actions;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v3)
  {
    v4 = *v30;
    do
    {
      v5 = 0;
      do
      {
        if (*v30 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v29 + 1) + 8 * v5);
        v7 = [CalDAVPostCalendarItemRecurrenceSplitTask alloc];
        resourceURL = [v6 resourceURL];
        recurrenceDate = [v6 recurrenceDate];
        v10 = -[CalDAVPostCalendarItemRecurrenceSplitTask initWithResourceURL:recurrenceDate:floating:allday:](v7, "initWithResourceURL:recurrenceDate:floating:allday:", resourceURL, recurrenceDate, [v6 isFloating], objc_msgSend(v6, "isAllDay"));

        uidForCreatedSeries = [v6 uidForCreatedSeries];
        [(CalDAVPostCalendarItemRecurrenceSplitTask *)v10 setUidForCreatedSeries:uidForCreatedSeries];

        WeakRetained = objc_loadWeakRetained((&self->super.super.isa + *MEMORY[0x277CFDD48]));
        [(CalDAVPostCalendarItemRecurrenceSplitTask *)v10 setAccountInfoProvider:WeakRetained];

        objc_initWeak(&location, self);
        objc_initWeak(&from, v10);
        objc_initWeak(&v26, v6);
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __48__CalDAVRecurrenceSplitTaskGroup_startTaskGroup__block_invoke;
        v20[3] = &unk_278D669B0;
        objc_copyWeak(&v23, &location);
        objc_copyWeak(&v24, &from);
        objc_copyWeak(&v25, &v26);
        v22 = v33;
        v20[4] = self;
        v13 = group;
        v21 = v13;
        [(CalDAVPostCalendarItemRecurrenceSplitTask *)v10 setCompletionBlock:v20];
        outstandingTasks = [(CoreDAVTaskGroup *)self outstandingTasks];
        [outstandingTasks addObject:v10];

        dispatch_group_enter(v13);
        taskManager = [(CoreDAVTaskGroup *)self taskManager];
        [taskManager submitQueuedCoreDAVTask:v10];

        objc_destroyWeak(&v25);
        objc_destroyWeak(&v24);
        objc_destroyWeak(&v23);
        objc_destroyWeak(&v26);
        objc_destroyWeak(&from);
        objc_destroyWeak(&location);

        ++v5;
      }

      while (v3 != v5);
      v3 = [(NSArray *)obj countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v3);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__CalDAVRecurrenceSplitTaskGroup_startTaskGroup__block_invoke_2;
  block[3] = &unk_278D668C8;
  block[4] = self;
  block[5] = v33;
  dispatch_group_notify(group, MEMORY[0x277D85CD0], block);
  _Block_object_dispose(v33, 8);

  v16 = *MEMORY[0x277D85DE8];
}

void __48__CalDAVRecurrenceSplitTaskGroup_startTaskGroup__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = objc_loadWeakRetained((a1 + 64));
  v3 = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    v4 = [WeakRetained outstandingTasks];
    [v4 removeObject:v2];
  }

  v5 = [v2 error];
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = *(*(a1 + 48) + 8);
  v8 = *(v6 + 40);
  v7 = (v6 + 40);
  if (!v8)
  {
    objc_storeStrong(v7, v5);
  }

  v9 = [*(a1 + 32) delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [*(a1 + 32) delegate];
    [v11 recurrenceSplitAction:v3 failedWithError:*(*(*(a1 + 48) + 8) + 40)];
  }

  else
  {
LABEL_8:
    v12 = [*(a1 + 32) delegate];
    v13 = objc_opt_respondsToSelector();

    if ((v13 & 1) == 0)
    {
      goto LABEL_11;
    }

    v11 = [*(a1 + 32) delegate];
    v14 = [v2 updatedETag];
    v15 = [v2 updatedScheduleTag];
    v16 = [v2 createdURL];
    v17 = [v2 createdETag];
    v18 = [v2 createdScheduleTag];
    [v11 recurrenceSplitAction:v3 completedWithUpdatedETag:v14 updatedScheduleTag:v15 createdURL:v16 createdETag:v17 createdScheduleTag:v18];
  }

LABEL_11:
  dispatch_group_leave(*(a1 + 40));
}

@end