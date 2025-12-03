@interface CalDAVPropPatchWithFallbackTaskGroup
- (CalDAVPropPatchWithFallbackTaskGroup)initWithAccountInfoProvider:(id)provider taskManager:(id)manager primaryPropertiesToSet:(id)set fallbackPropertiesToSet:(id)toSet atURL:(id)l;
- (void)_proppatchAfterFailureCount:(unint64_t)count;
@end

@implementation CalDAVPropPatchWithFallbackTaskGroup

- (CalDAVPropPatchWithFallbackTaskGroup)initWithAccountInfoProvider:(id)provider taskManager:(id)manager primaryPropertiesToSet:(id)set fallbackPropertiesToSet:(id)toSet atURL:(id)l
{
  setCopy = set;
  toSetCopy = toSet;
  lCopy = l;
  v19.receiver = self;
  v19.super_class = CalDAVPropPatchWithFallbackTaskGroup;
  v16 = [(CoreDAVTaskGroup *)&v19 initWithAccountInfoProvider:provider taskManager:manager];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_primaryElements, set);
    objc_storeStrong(&v17->_fallbackElements, toSet);
    objc_storeStrong(&v17->_url, l);
  }

  return v17;
}

- (void)_proppatchAfterFailureCount:(unint64_t)count
{
  v5 = &OBJC_IVAR___CalDAVPropPatchWithFallbackTaskGroup__fallbackElements;
  if (!count)
  {
    v5 = &OBJC_IVAR___CalDAVPropPatchWithFallbackTaskGroup__primaryElements;
  }

  v6 = *(&self->super.super.isa + *v5);
  v7 = [objc_alloc(MEMORY[0x277CFDC70]) initWithPropertiesToSet:v6 andRemove:0 atURL:self->_url];
  accountInfoProvider = [(CoreDAVTaskGroup *)self accountInfoProvider];
  [v7 setAccountInfoProvider:accountInfoProvider];

  objc_initWeak(&location, v7);
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __68__CalDAVPropPatchWithFallbackTaskGroup__proppatchAfterFailureCount___block_invoke;
  v13 = &unk_278D66CA0;
  objc_copyWeak(v15, &location);
  v15[1] = count;
  selfCopy = self;
  [v7 setCompletionBlock:&v10];
  v9 = [(CoreDAVTaskGroup *)self taskManager:v10];
  [v9 submitQueuedCoreDAVTask:v7];

  objc_destroyWeak(v15);
  objc_destroyWeak(&location);
}

void __68__CalDAVPropPatchWithFallbackTaskGroup__proppatchAfterFailureCount___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained error];
  v4 = v3;
  if (!v3 || *(a1 + 48))
  {

LABEL_4:
    v5 = objc_loadWeakRetained((a1 + 40));
    v6 = [v5 responseItem];
    [*(a1 + 32) setResponseItem:v6];

    v7 = *(a1 + 32);
    v12 = objc_loadWeakRetained((a1 + 40));
    v8 = [v12 error];
    [v7 finishCoreDAVTaskGroupWithError:v8 delegateCallbackBlock:0];

    return;
  }

  v9 = [*(*(a1 + 32) + 104) count];

  if (!v9)
  {
    goto LABEL_4;
  }

  v10 = *(a1 + 32);
  v11 = *(a1 + 48) + 1;

  [v10 _proppatchAfterFailureCount:v11];
}

@end