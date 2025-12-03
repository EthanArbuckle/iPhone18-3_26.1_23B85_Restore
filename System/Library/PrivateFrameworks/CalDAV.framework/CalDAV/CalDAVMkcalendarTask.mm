@interface CalDAVMkcalendarTask
- (CalDAVMkcalendarTask)initWithPropertiesToSet:(id)set atURL:(id)l;
- (id)copyDefaultParserForContentType:(id)type;
- (id)description;
- (id)requestBody;
- (void)finishCoreDAVTaskWithError:(id)error;
- (void)setSupportForEvents:(BOOL)events tasks:(BOOL)tasks;
@end

@implementation CalDAVMkcalendarTask

- (CalDAVMkcalendarTask)initWithPropertiesToSet:(id)set atURL:(id)l
{
  setCopy = set;
  v10.receiver = self;
  v10.super_class = CalDAVMkcalendarTask;
  v7 = [(CalDAVMkcalendarTask *)&v10 initWithURL:l];
  v8 = v7;
  if (v7)
  {
    [(CalDAVMkcalendarTask *)v7 setSetElements:setCopy];
  }

  return v8;
}

- (void)setSupportForEvents:(BOOL)events tasks:(BOOL)tasks
{
  eventsCopy = events;
  v24 = *MEMORY[0x277D85DE8];
  if (events == tasks)
  {
    tasksCopy = tasks;
    mEMORY[0x277CFDC18] = [MEMORY[0x277CFDC18] sharedLogging];
    WeakRetained = objc_loadWeakRetained((&self->super.super.isa + *MEMORY[0x277CFDD38]));
    v17 = [mEMORY[0x277CFDC18] logHandleForAccountInfoProvider:WeakRetained];

    if (v17 && os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      v21 = eventsCopy;
      v22 = 1024;
      v23 = tasksCopy;
      _os_log_impl(&dword_242742000, v17, OS_LOG_TYPE_INFO, "setSupportForEvents:tasks: called with identical values for supportVEVENT (%d) and supportVTODO (%d), doing nothing", buf, 0xEu);
    }

    v18 = *MEMORY[0x277D85DE8];
  }

  else
  {
    setElements = [(CalDAVMkcalendarTask *)self setElements];
    v19 = [setElements objectsPassingTest:&__block_literal_global];

    v7 = objc_alloc_init(CalDAVSupportedCalendarComponentSet);
    v8 = objc_alloc_init(CalDAVCompItem);
    v9 = v8;
    v10 = cdEventComponentType;
    if (!eventsCopy)
    {
      v10 = cdTodoComponentType;
    }

    [(CalDAVCompItem *)v8 setNameAttribute:*v10];
    v11 = [MEMORY[0x277CBEB58] setWithObject:v9];
    [(CalDAVSupportedCalendarComponentSet *)v7 setComps:v11];

    v12 = [v19 setByAddingObject:v7];
    [(CalDAVMkcalendarTask *)self setSetElements:v12];

    v13 = *MEMORY[0x277D85DE8];
  }
}

uint64_t __50__CalDAVMkcalendarTask_setSupportForEvents_tasks___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 name];
  if ([v3 isEqualToString:*MEMORY[0x277CFE028]])
  {
    v4 = [v2 nameSpace];
    v5 = [v4 isEqualToString:*MEMORY[0x277CFDDC0]] ^ 1;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)description
{
  setElements = [(CalDAVMkcalendarTask *)self setElements];
  if (setElements)
  {
    setElements2 = [(CalDAVMkcalendarTask *)self setElements];
    v5 = [setElements2 count];
  }

  else
  {
    v5 = 0;
  }

  requestBody = [(CalDAVMkcalendarTask *)self requestBody];
  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:objc_msgSend(requestBody length:"bytes") encoding:{objc_msgSend(requestBody, "length"), 4}];
  v8 = MEMORY[0x277CCACA8];
  v12.receiver = self;
  v12.super_class = CalDAVMkcalendarTask;
  v9 = [(CalDAVMkcalendarTask *)&v12 description];
  v10 = [v8 stringWithFormat:@"[%@] Number of properties to set: [%u], Request body: [%@]", v9, v5, v7];

  return v10;
}

- (id)requestBody
{
  v28 = *MEMORY[0x277D85DE8];
  setElements = [(CalDAVMkcalendarTask *)self setElements];
  if (setElements && (v4 = setElements, -[CalDAVMkcalendarTask setElements](self, "setElements"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v4, v6))
  {
    v7 = objc_alloc_init(MEMORY[0x277CFDCA0]);
    [v7 startElement:@"mkcalendar" inNamespace:*MEMORY[0x277CFDDC0] withAttributeNamesAndValues:0];
    setElements2 = [(CalDAVMkcalendarTask *)self setElements];
    if (setElements2)
    {
      v9 = setElements2;
      setElements3 = [(CalDAVMkcalendarTask *)self setElements];
      v11 = [setElements3 count];

      v12 = *MEMORY[0x277CFDEF8];
      if (v11)
      {
        v13 = *MEMORY[0x277CFE018];
        [v7 startElement:*MEMORY[0x277CFE018] inNamespace:*MEMORY[0x277CFDEF8] withAttributeNamesAndValues:0];
        v14 = *MEMORY[0x277CFDFC8];
        [v7 startElement:*MEMORY[0x277CFDFC8] inNamespace:v12 withAttributeNamesAndValues:0];
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        setElements4 = [(CalDAVMkcalendarTask *)self setElements];
        v16 = [setElements4 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v24;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v24 != v18)
              {
                objc_enumerationMutation(setElements4);
              }

              [*(*(&v23 + 1) + 8 * i) write:v7];
            }

            v17 = [setElements4 countByEnumeratingWithState:&v23 objects:v27 count:16];
          }

          while (v17);
        }

        [v7 endElement:v14 inNamespace:v12];
        [v7 endElement:v13 inNamespace:v12];
      }
    }

    else
    {
      v12 = *MEMORY[0x277CFDEF8];
    }

    [v7 endElement:@"mkcalendar" inNamespace:v12];
    data = [v7 data];
  }

  else
  {
    data = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return data;
}

- (id)copyDefaultParserForContentType:(id)type
{
  v4 = objc_alloc(MEMORY[0x277CFDCA8]);
  v5 = *MEMORY[0x277CFDDC0];
  v6 = objc_opt_class();
  v7 = [(CalDAVMkcalendarTask *)self url];
  v8 = [v4 initWithRootElementNameSpace:v5 name:@"mkcalendar-response" parseClass:v6 baseURL:v7];

  return v8;
}

- (void)finishCoreDAVTaskWithError:(id)error
{
  v26 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = errorCopy;
  if (errorCopy)
  {
    code = [errorCopy code];
    mEMORY[0x277CFDC18] = [MEMORY[0x277CFDC18] sharedLogging];
    WeakRetained = objc_loadWeakRetained((&self->super.super.isa + *MEMORY[0x277CFDD38]));
    v9 = [mEMORY[0x277CFDC18] logHandleForAccountInfoProvider:WeakRetained];

    if (code == 1)
    {
      if (v9)
      {
        v10 = v9;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v23 = objc_opt_class();
          v11 = v23;
          v12 = "%{public}@ cancelled";
          v13 = v10;
          v14 = OS_LOG_TYPE_INFO;
          v15 = 12;
LABEL_9:
          _os_log_impl(&dword_242742000, v13, v14, v12, buf, v15);

          goto LABEL_10;
        }

        goto LABEL_10;
      }
    }

    else if (v9)
    {
      v16 = v9;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v23 = objc_opt_class();
        v24 = 2112;
        v25 = v5;
        v11 = v23;
        v12 = "%{public}@ failed: %@";
        v13 = v16;
        v14 = OS_LOG_TYPE_ERROR;
        v15 = 22;
        goto LABEL_9;
      }

LABEL_10:
    }
  }

  *(&self->super.super.isa + *MEMORY[0x277CFDD40]) = 0;
  delegate = [(CalDAVMkcalendarTask *)self delegate];
  v18 = objc_opt_respondsToSelector();

  if (v18)
  {
    delegate2 = [(CalDAVMkcalendarTask *)self delegate];
    [delegate2 mkcalendarTask:self error:v5];
  }

  v21.receiver = self;
  v21.super_class = CalDAVMkcalendarTask;
  [(CalDAVMkcalendarTask *)&v21 finishCoreDAVTaskWithError:v5];

  v20 = *MEMORY[0x277D85DE8];
}

@end