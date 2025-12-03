@interface CalDAVUpdateFreeBusySetTaskGroup
- (CalDAVUpdateFreeBusySetTaskGroup)initWithAccountInfoProvider:(id)provider inboxURL:(id)l urlToAdd:(id)add suffixToFilterOut:(id)out taskManager:(id)manager;
- (void)_startFetchFreeBusySet;
- (void)_startPropPatchWithURLs:(id)ls;
- (void)propFindTask:(id)task parsedResponses:(id)responses error:(id)error;
- (void)propPatchTask:(id)task parsedResponses:(id)responses error:(id)error;
@end

@implementation CalDAVUpdateFreeBusySetTaskGroup

- (CalDAVUpdateFreeBusySetTaskGroup)initWithAccountInfoProvider:(id)provider inboxURL:(id)l urlToAdd:(id)add suffixToFilterOut:(id)out taskManager:(id)manager
{
  lCopy = l;
  addCopy = add;
  outCopy = out;
  v18.receiver = self;
  v18.super_class = CalDAVUpdateFreeBusySetTaskGroup;
  v15 = [(CoreDAVTaskGroup *)&v18 initWithAccountInfoProvider:provider taskManager:manager];
  v16 = v15;
  if (v15)
  {
    [(CalDAVUpdateFreeBusySetTaskGroup *)v15 setState:0];
    [(CalDAVUpdateFreeBusySetTaskGroup *)v16 setInboxURL:lCopy];
    [(CalDAVUpdateFreeBusySetTaskGroup *)v16 setUrlToAdd:addCopy];
    [(CalDAVUpdateFreeBusySetTaskGroup *)v16 setSuffixToFilterOut:outCopy];
    [(CalDAVUpdateFreeBusySetTaskGroup *)v16 setFetchTask:0];
  }

  return v16;
}

- (void)_startFetchFreeBusySet
{
  v3 = objc_alloc(MEMORY[0x277CFDBE8]);
  v15 = [v3 initWithNameSpace:*MEMORY[0x277CFDDC0] name:*MEMORY[0x277CFDDE8] parseClass:objc_opt_class()];
  v4 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v15, 0}];
  v5 = objc_alloc(MEMORY[0x277CFDC68]);
  inboxURL = [(CalDAVUpdateFreeBusySetTaskGroup *)self inboxURL];
  v7 = [v5 initWithPropertiesToFind:v4 atURL:inboxURL withDepth:2];

  [(CalDAVUpdateFreeBusySetTaskGroup *)self setFetchTask:v7];
  outstandingTasks = [(CoreDAVTaskGroup *)self outstandingTasks];
  fetchTask = [(CalDAVUpdateFreeBusySetTaskGroup *)self fetchTask];
  [outstandingTasks addObject:fetchTask];

  accountInfoProvider = [(CoreDAVTaskGroup *)self accountInfoProvider];
  fetchTask2 = [(CalDAVUpdateFreeBusySetTaskGroup *)self fetchTask];
  [fetchTask2 setAccountInfoProvider:accountInfoProvider];

  fetchTask3 = [(CalDAVUpdateFreeBusySetTaskGroup *)self fetchTask];
  [fetchTask3 setDelegate:self];

  taskManager = [(CoreDAVTaskGroup *)self taskManager];
  fetchTask4 = [(CalDAVUpdateFreeBusySetTaskGroup *)self fetchTask];
  [taskManager submitQueuedCoreDAVTask:fetchTask4];

  [(CalDAVUpdateFreeBusySetTaskGroup *)self setState:1];
}

- (void)_startPropPatchWithURLs:(id)ls
{
  v29 = *MEMORY[0x277D85DE8];
  lsCopy = ls;
  v5 = objc_alloc(MEMORY[0x277CFDBE0]);
  v6 = [v5 initWithNameSpace:*MEMORY[0x277CFDDC0] andName:*MEMORY[0x277CFDDE8]];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = lsCopy;
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      v11 = 0;
      do
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v24 + 1) + 8 * v11);
        v13 = objc_alloc_init(MEMORY[0x277CFDBD8]);
        cDVRawPath = [v12 CDVRawPath];
        [v13 setPayloadAsString:cDVRawPath];

        extraChildItems = [v6 extraChildItems];
        [extraChildItems addObject:v13];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }

  v16 = objc_alloc(MEMORY[0x277CFDC70]);
  v17 = [MEMORY[0x277CBEB98] setWithObject:v6];
  inboxURL = [(CalDAVUpdateFreeBusySetTaskGroup *)self inboxURL];
  v19 = [v16 initWithPropertiesToSet:v17 andRemove:0 atURL:inboxURL];

  outstandingTasks = [(CoreDAVTaskGroup *)self outstandingTasks];
  [outstandingTasks addObject:v19];

  accountInfoProvider = [(CoreDAVTaskGroup *)self accountInfoProvider];
  [v19 setAccountInfoProvider:accountInfoProvider];

  [v19 setDelegate:self];
  taskManager = [(CoreDAVTaskGroup *)self taskManager];
  [taskManager submitQueuedCoreDAVTask:v19];

  [(CalDAVUpdateFreeBusySetTaskGroup *)self setState:2];
  v23 = *MEMORY[0x277D85DE8];
}

- (void)propFindTask:(id)task parsedResponses:(id)responses error:(id)error
{
  errorCopy = error;
  outstandingTasks = [(CoreDAVTaskGroup *)self outstandingTasks];
  fetchTask = [(CalDAVUpdateFreeBusySetTaskGroup *)self fetchTask];
  [outstandingTasks removeObject:fetchTask];

  if (!errorCopy)
  {
    goto LABEL_4;
  }

  domain = [errorCopy domain];
  if (([domain isEqualToString:*MEMORY[0x277CFDB18]] & 1) == 0)
  {

    goto LABEL_8;
  }

  code = [errorCopy code];

  if (code != 2)
  {
LABEL_8:
    [(CalDAVUpdateFreeBusySetTaskGroup *)self _finishWithError:errorCopy state:4];
    goto LABEL_17;
  }

LABEL_4:
  fetchTask2 = [(CalDAVUpdateFreeBusySetTaskGroup *)self fetchTask];
  v12 = [fetchTask2 successfulValueForNameSpace:*MEMORY[0x277CFDDC0] elementName:*MEMORY[0x277CFDDE8]];

  if (v12)
  {
    hrefsAsFullURLs = [v12 hrefsAsFullURLs];
    v14 = hrefsAsFullURLs;
    if (hrefsAsFullURLs)
    {
      v15 = hrefsAsFullURLs;
    }

    else
    {
      v15 = [MEMORY[0x277CBEB98] set];
    }

    v16 = v15;

    suffixToFilterOut = [(CalDAVUpdateFreeBusySetTaskGroup *)self suffixToFilterOut];
    v18 = [suffixToFilterOut length];

    if (v18)
    {
      suffixToFilterOut2 = [(CalDAVUpdateFreeBusySetTaskGroup *)self suffixToFilterOut];
      cDVStringByAppendingSlashIfNeeded = [suffixToFilterOut2 CDVStringByAppendingSlashIfNeeded];

      suffixToFilterOut3 = [(CalDAVUpdateFreeBusySetTaskGroup *)self suffixToFilterOut];
      cDVStringByRemovingTerminatingSlashIfNeeded = [suffixToFilterOut3 CDVStringByRemovingTerminatingSlashIfNeeded];

      v29 = MEMORY[0x277D85DD0];
      v30 = 3221225472;
      v31 = __71__CalDAVUpdateFreeBusySetTaskGroup_propFindTask_parsedResponses_error___block_invoke;
      v32 = &unk_278D668F0;
      v33 = cDVStringByAppendingSlashIfNeeded;
      v34 = cDVStringByRemovingTerminatingSlashIfNeeded;
      v23 = cDVStringByRemovingTerminatingSlashIfNeeded;
      v24 = cDVStringByAppendingSlashIfNeeded;
      v25 = [v16 objectsPassingTest:&v29];

      v16 = v25;
    }

    v26 = [(CalDAVUpdateFreeBusySetTaskGroup *)self urlToAdd:v29];

    if (v26)
    {
      urlToAdd = [(CalDAVUpdateFreeBusySetTaskGroup *)self urlToAdd];
      v28 = [v16 setByAddingObject:urlToAdd];

      v16 = v28;
    }

    [(CalDAVUpdateFreeBusySetTaskGroup *)self _startPropPatchWithURLs:v16];
  }

  else
  {
    [(CalDAVUpdateFreeBusySetTaskGroup *)self _finishWithError:0 state:4];
  }

LABEL_17:
}

uint64_t __71__CalDAVUpdateFreeBusySetTaskGroup_propFindTask_parsedResponses_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 absoluteString];
  if ([v3 hasSuffix:*(a1 + 32)])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 hasSuffix:*(a1 + 40)] ^ 1;
  }

  return v4;
}

- (void)propPatchTask:(id)task parsedResponses:(id)responses error:(id)error
{
  errorCopy = error;
  taskCopy = task;
  outstandingTasks = [(CoreDAVTaskGroup *)self outstandingTasks];
  [outstandingTasks removeObject:taskCopy];

  [CalDAVUpdateFreeBusySetTaskGroup _finishWithError:"_finishWithError:state:" state:?];
}

@end