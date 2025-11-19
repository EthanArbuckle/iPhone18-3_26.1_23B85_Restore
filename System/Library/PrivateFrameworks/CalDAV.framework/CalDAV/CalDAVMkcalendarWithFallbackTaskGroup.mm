@interface CalDAVMkcalendarWithFallbackTaskGroup
- (CalDAVMkcalendarWithFallbackTaskGroup)initWithAccountInfoProvider:(id)a3 taskManager:(id)a4 primaryPropertiesToSet:(id)a5 fallbackPropertiesToSet:(id)a6 atURL:(id)a7;
- (void)_mkcalendarAfterFailureCount:(unint64_t)a3;
@end

@implementation CalDAVMkcalendarWithFallbackTaskGroup

- (CalDAVMkcalendarWithFallbackTaskGroup)initWithAccountInfoProvider:(id)a3 taskManager:(id)a4 primaryPropertiesToSet:(id)a5 fallbackPropertiesToSet:(id)a6 atURL:(id)a7
{
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v19.receiver = self;
  v19.super_class = CalDAVMkcalendarWithFallbackTaskGroup;
  v16 = [(CoreDAVTaskGroup *)&v19 initWithAccountInfoProvider:a3 taskManager:a4];
  v17 = v16;
  if (v16)
  {
    v16->_shouldSupportVEVENT = 1;
    v16->_shouldSupportVTODO = 0;
    objc_storeStrong(&v16->_primaryElements, a5);
    objc_storeStrong(&v17->_fallbackElements, a6);
    objc_storeStrong(&v17->_url, a7);
  }

  return v17;
}

- (void)_mkcalendarAfterFailureCount:(unint64_t)a3
{
  v28 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v5 = &OBJC_IVAR___CalDAVMkcalendarWithFallbackTaskGroup__fallbackElements;
  }

  else
  {
    v5 = &OBJC_IVAR___CalDAVMkcalendarWithFallbackTaskGroup__primaryElements;
  }

  v17 = *(&self->super.super.isa + *v5);
  v6 = [[CalDAVMkcalendarTask alloc] initWithPropertiesToSet:v17 atURL:self->_url];
  v7 = [(CoreDAVTaskGroup *)self accountInfoProvider];
  [(CalDAVMkcalendarTask *)v6 setAccountInfoProvider:v7];

  [(CalDAVMkcalendarTask *)v6 setSupportForEvents:self->_shouldSupportVEVENT tasks:self->_shouldSupportVTODO];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [(CalDAVMkcalendarWithFallbackTaskGroup *)self headersToOverride];
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = *v24;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        v13 = [(CalDAVMkcalendarWithFallbackTaskGroup *)self headersToOverride];
        v14 = [v13 valueForKey:v12];
        [(CalDAVMkcalendarTask *)v6 overrideRequestHeader:v12 withValue:v14];
      }

      v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v9);
  }

  objc_initWeak(&location, self);
  objc_initWeak(&from, v6);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __70__CalDAVMkcalendarWithFallbackTaskGroup__mkcalendarAfterFailureCount___block_invoke;
  v18[3] = &unk_278D663B8;
  objc_copyWeak(&v19, &from);
  v20[1] = a3;
  objc_copyWeak(v20, &location);
  [(CalDAVMkcalendarTask *)v6 setCompletionBlock:v18];
  v15 = [(CoreDAVTaskGroup *)self taskManager];
  [v15 submitQueuedCoreDAVTask:v6];

  objc_destroyWeak(v20);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  v16 = *MEMORY[0x277D85DE8];
}

void __70__CalDAVMkcalendarWithFallbackTaskGroup__mkcalendarAfterFailureCount___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained error];
  v4 = v3;
  if (!v3 || *(a1 + 48))
  {

LABEL_4:
    v5 = objc_loadWeakRetained((a1 + 32));
    v6 = [v5 responseHeaders];
    v7 = objc_loadWeakRetained((a1 + 40));
    [v7 setResponseHeaders:v6];

    v13 = objc_loadWeakRetained((a1 + 40));
    v8 = objc_loadWeakRetained((a1 + 32));
    v9 = [v8 error];
    [v13 finishCoreDAVTaskGroupWithError:v9 delegateCallbackBlock:0];

    goto LABEL_5;
  }

  v10 = objc_loadWeakRetained((a1 + 40));
  v11 = [v10 fallbackElements];
  v12 = [v11 count];

  if (!v12)
  {
    goto LABEL_4;
  }

  v13 = objc_loadWeakRetained((a1 + 40));
  [v13 _mkcalendarAfterFailureCount:*(a1 + 48) + 1];
LABEL_5:
}

@end