@interface CalDAVUpdateFreeBusySetTaskGroup
- (CalDAVUpdateFreeBusySetTaskGroup)initWithAccountInfoProvider:(id)a3 inboxURL:(id)a4 urlToAdd:(id)a5 suffixToFilterOut:(id)a6 taskManager:(id)a7;
- (void)_startFetchFreeBusySet;
- (void)_startPropPatchWithURLs:(id)a3;
- (void)propFindTask:(id)a3 parsedResponses:(id)a4 error:(id)a5;
- (void)propPatchTask:(id)a3 parsedResponses:(id)a4 error:(id)a5;
@end

@implementation CalDAVUpdateFreeBusySetTaskGroup

- (CalDAVUpdateFreeBusySetTaskGroup)initWithAccountInfoProvider:(id)a3 inboxURL:(id)a4 urlToAdd:(id)a5 suffixToFilterOut:(id)a6 taskManager:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = CalDAVUpdateFreeBusySetTaskGroup;
  v15 = [(CoreDAVTaskGroup *)&v18 initWithAccountInfoProvider:a3 taskManager:a7];
  v16 = v15;
  if (v15)
  {
    [(CalDAVUpdateFreeBusySetTaskGroup *)v15 setState:0];
    [(CalDAVUpdateFreeBusySetTaskGroup *)v16 setInboxURL:v12];
    [(CalDAVUpdateFreeBusySetTaskGroup *)v16 setUrlToAdd:v13];
    [(CalDAVUpdateFreeBusySetTaskGroup *)v16 setSuffixToFilterOut:v14];
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
  v6 = [(CalDAVUpdateFreeBusySetTaskGroup *)self inboxURL];
  v7 = [v5 initWithPropertiesToFind:v4 atURL:v6 withDepth:2];

  [(CalDAVUpdateFreeBusySetTaskGroup *)self setFetchTask:v7];
  v8 = [(CoreDAVTaskGroup *)self outstandingTasks];
  v9 = [(CalDAVUpdateFreeBusySetTaskGroup *)self fetchTask];
  [v8 addObject:v9];

  v10 = [(CoreDAVTaskGroup *)self accountInfoProvider];
  v11 = [(CalDAVUpdateFreeBusySetTaskGroup *)self fetchTask];
  [v11 setAccountInfoProvider:v10];

  v12 = [(CalDAVUpdateFreeBusySetTaskGroup *)self fetchTask];
  [v12 setDelegate:self];

  v13 = [(CoreDAVTaskGroup *)self taskManager];
  v14 = [(CalDAVUpdateFreeBusySetTaskGroup *)self fetchTask];
  [v13 submitQueuedCoreDAVTask:v14];

  [(CalDAVUpdateFreeBusySetTaskGroup *)self setState:1];
}

- (void)_startPropPatchWithURLs:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277CFDBE0]);
  v6 = [v5 initWithNameSpace:*MEMORY[0x277CFDDC0] andName:*MEMORY[0x277CFDDE8]];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = v4;
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
        v14 = [v12 CDVRawPath];
        [v13 setPayloadAsString:v14];

        v15 = [v6 extraChildItems];
        [v15 addObject:v13];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }

  v16 = objc_alloc(MEMORY[0x277CFDC70]);
  v17 = [MEMORY[0x277CBEB98] setWithObject:v6];
  v18 = [(CalDAVUpdateFreeBusySetTaskGroup *)self inboxURL];
  v19 = [v16 initWithPropertiesToSet:v17 andRemove:0 atURL:v18];

  v20 = [(CoreDAVTaskGroup *)self outstandingTasks];
  [v20 addObject:v19];

  v21 = [(CoreDAVTaskGroup *)self accountInfoProvider];
  [v19 setAccountInfoProvider:v21];

  [v19 setDelegate:self];
  v22 = [(CoreDAVTaskGroup *)self taskManager];
  [v22 submitQueuedCoreDAVTask:v19];

  [(CalDAVUpdateFreeBusySetTaskGroup *)self setState:2];
  v23 = *MEMORY[0x277D85DE8];
}

- (void)propFindTask:(id)a3 parsedResponses:(id)a4 error:(id)a5
{
  v6 = a5;
  v7 = [(CoreDAVTaskGroup *)self outstandingTasks];
  v8 = [(CalDAVUpdateFreeBusySetTaskGroup *)self fetchTask];
  [v7 removeObject:v8];

  if (!v6)
  {
    goto LABEL_4;
  }

  v9 = [v6 domain];
  if (([v9 isEqualToString:*MEMORY[0x277CFDB18]] & 1) == 0)
  {

    goto LABEL_8;
  }

  v10 = [v6 code];

  if (v10 != 2)
  {
LABEL_8:
    [(CalDAVUpdateFreeBusySetTaskGroup *)self _finishWithError:v6 state:4];
    goto LABEL_17;
  }

LABEL_4:
  v11 = [(CalDAVUpdateFreeBusySetTaskGroup *)self fetchTask];
  v12 = [v11 successfulValueForNameSpace:*MEMORY[0x277CFDDC0] elementName:*MEMORY[0x277CFDDE8]];

  if (v12)
  {
    v13 = [v12 hrefsAsFullURLs];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = [MEMORY[0x277CBEB98] set];
    }

    v16 = v15;

    v17 = [(CalDAVUpdateFreeBusySetTaskGroup *)self suffixToFilterOut];
    v18 = [v17 length];

    if (v18)
    {
      v19 = [(CalDAVUpdateFreeBusySetTaskGroup *)self suffixToFilterOut];
      v20 = [v19 CDVStringByAppendingSlashIfNeeded];

      v21 = [(CalDAVUpdateFreeBusySetTaskGroup *)self suffixToFilterOut];
      v22 = [v21 CDVStringByRemovingTerminatingSlashIfNeeded];

      v29 = MEMORY[0x277D85DD0];
      v30 = 3221225472;
      v31 = __71__CalDAVUpdateFreeBusySetTaskGroup_propFindTask_parsedResponses_error___block_invoke;
      v32 = &unk_278D668F0;
      v33 = v20;
      v34 = v22;
      v23 = v22;
      v24 = v20;
      v25 = [v16 objectsPassingTest:&v29];

      v16 = v25;
    }

    v26 = [(CalDAVUpdateFreeBusySetTaskGroup *)self urlToAdd:v29];

    if (v26)
    {
      v27 = [(CalDAVUpdateFreeBusySetTaskGroup *)self urlToAdd];
      v28 = [v16 setByAddingObject:v27];

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

- (void)propPatchTask:(id)a3 parsedResponses:(id)a4 error:(id)a5
{
  v9 = a5;
  v7 = a3;
  v8 = [(CoreDAVTaskGroup *)self outstandingTasks];
  [v8 removeObject:v7];

  [CalDAVUpdateFreeBusySetTaskGroup _finishWithError:"_finishWithError:state:" state:?];
}

@end