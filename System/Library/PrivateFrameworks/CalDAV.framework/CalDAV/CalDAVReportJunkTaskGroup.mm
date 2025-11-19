@interface CalDAVReportJunkTaskGroup
- (CalDAVReportJunkTaskGroup)initWithReportJunkActions:(id)a3 accountInfoProvider:(id)a4 taskManager:(id)a5;
- (void)startTaskGroup;
@end

@implementation CalDAVReportJunkTaskGroup

- (CalDAVReportJunkTaskGroup)initWithReportJunkActions:(id)a3 accountInfoProvider:(id)a4 taskManager:(id)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = CalDAVReportJunkTaskGroup;
  v10 = [(CoreDAVTaskGroup *)&v13 initWithAccountInfoProvider:a4 taskManager:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_reportJunkActions, a3);
  }

  return v11;
}

- (void)startTaskGroup
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = dispatch_group_create();
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = __Block_byref_object_copy_;
  v29[4] = __Block_byref_object_dispose_;
  v30 = 0;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = self->_reportJunkActions;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v4)
  {
    v5 = *v26;
    do
    {
      v6 = 0;
      do
      {
        if (*v26 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v25 + 1) + 8 * v6);
        v8 = [CalDAVPostAuditFailureTask alloc];
        v9 = [v7 resourceURL];
        v10 = [(CalDAVPostAuditFailureTask *)v8 initWithResourceURL:v9 reason:0];

        v11 = [(CoreDAVTaskGroup *)self accountInfoProvider];
        [(CalDAVPostAuditFailureTask *)v10 setAccountInfoProvider:v11];

        objc_initWeak(&location, self);
        objc_initWeak(&from, v10);
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __43__CalDAVReportJunkTaskGroup_startTaskGroup__block_invoke;
        v18[3] = &unk_278D668A0;
        objc_copyWeak(&v21, &location);
        objc_copyWeak(&v22, &from);
        v20 = v29;
        v18[4] = v7;
        v12 = v3;
        v19 = v12;
        [(CalDAVPostAuditFailureTask *)v10 setCompletionBlock:v18];
        v13 = [(CoreDAVTaskGroup *)self outstandingTasks];
        [v13 addObject:v10];

        dispatch_group_enter(v12);
        v14 = [(CoreDAVTaskGroup *)self taskManager];
        [v14 submitQueuedCoreDAVTask:v10];

        objc_destroyWeak(&v22);
        objc_destroyWeak(&v21);
        objc_destroyWeak(&from);
        objc_destroyWeak(&location);

        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSArray *)obj countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v4);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__CalDAVReportJunkTaskGroup_startTaskGroup__block_invoke_2;
  block[3] = &unk_278D668C8;
  block[4] = self;
  block[5] = v29;
  dispatch_group_notify(v3, MEMORY[0x277D85CD0], block);
  _Block_object_dispose(v29, 8);

  v15 = *MEMORY[0x277D85DE8];
}

void __43__CalDAVReportJunkTaskGroup_startTaskGroup__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v3 = [WeakRetained outstandingTasks];
    [v3 removeObject:v2];
  }

  v4 = [v2 error];
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v4);
  }

  v5 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 reportJunkAction:*(a1 + 32) completedWithError:v4];
  }

  dispatch_group_leave(*(a1 + 40));
}

@end