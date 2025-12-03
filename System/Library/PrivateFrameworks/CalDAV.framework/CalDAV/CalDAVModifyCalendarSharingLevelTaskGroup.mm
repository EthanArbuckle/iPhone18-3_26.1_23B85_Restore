@interface CalDAVModifyCalendarSharingLevelTaskGroup
- (CalDAVModifyCalendarSharingLevelTaskGroup)initWithAccountInfoProvider:(id)provider taskManager:(id)manager;
- (void)startTaskGroup;
- (void)task:(id)task didFinishWithError:(id)error;
@end

@implementation CalDAVModifyCalendarSharingLevelTaskGroup

- (CalDAVModifyCalendarSharingLevelTaskGroup)initWithAccountInfoProvider:(id)provider taskManager:(id)manager
{
  providerCopy = provider;
  managerCopy = manager;
  v7 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Initializing this class instance with an inherited initializer not allowed." userInfo:0];
  objc_exception_throw(v7);
}

- (void)startTaskGroup
{
  action = [(CalDAVModifyCalendarSharingLevelTaskGroup *)self action];
  if (action > 1)
  {
    if (action == 2)
    {
      v13 = objc_alloc(MEMORY[0x277CFDBE8]);
      v5 = [v13 initWithNameSpace:*MEMORY[0x277CFDEF8] name:*MEMORY[0x277CFDFE0] parseClass:objc_opt_class()];
      v14 = objc_alloc(MEMORY[0x277CFDC68]);
      data = [MEMORY[0x277CBEB98] setWithObject:v5];
      v10 = [(CalDAVModifyCalendarSharingLevelTaskGroup *)self url];
      v11 = 2;
      v17 = [v14 initWithPropertiesToFind:data atURL:v10 withDepth:2];
    }

    else
    {
      if (action != 3)
      {
        return;
      }

      v7 = objc_alloc(MEMORY[0x277CFDBE8]);
      v5 = [v7 initWithNameSpace:*MEMORY[0x277CFDEF8] name:*MEMORY[0x277CFDFE0] parseClass:objc_opt_class()];
      v8 = objc_alloc(MEMORY[0x277CFDC68]);
      data = [MEMORY[0x277CBEB98] setWithObject:v5];
      v10 = [(CalDAVModifyCalendarSharingLevelTaskGroup *)self url];
      v17 = [v8 initWithPropertiesToFind:data atURL:v10 withDepth:2];
      v11 = 3;
    }
  }

  else
  {
    if (action)
    {
      if (action != 1)
      {
        return;
      }

      v4 = objc_alloc_init(MEMORY[0x277CFDCA0]);
      v5 = v4;
      v6 = cdXMLCalendarServerUnpublishCalendar;
    }

    else
    {
      v4 = objc_alloc_init(MEMORY[0x277CFDCA0]);
      v5 = v4;
      v6 = cdXMLCalendarServerPublishCalendar;
    }

    [v4 appendElement:*v6 inNamespace:*MEMORY[0x277CFDE90] withStringContent:0 withAttributeNamesAndValues:0];
    v12 = objc_alloc(MEMORY[0x277CFDC58]);
    data = [v5 data];
    v10 = [(CalDAVModifyCalendarSharingLevelTaskGroup *)self url];
    v17 = [v12 initWithDataPayload:data dataContentType:@"text/xml" atURL:v10 previousETag:0];
    v11 = 1;
  }

  [(CalDAVModifyCalendarSharingLevelTaskGroup *)self setState:v11];
  if (v17)
  {
    accountInfoProvider = [(CoreDAVTaskGroup *)self accountInfoProvider];
    [v17 setAccountInfoProvider:accountInfoProvider];

    [v17 setDelegate:self];
    taskManager = [(CoreDAVTaskGroup *)self taskManager];
    [taskManager submitQueuedCoreDAVTask:v17];
  }
}

- (void)task:(id)task didFinishWithError:(id)error
{
  taskCopy = task;
  errorCopy = error;
  if (errorCopy)
  {
    [(CalDAVModifyCalendarSharingLevelTaskGroup *)self setState:7];
    selfCopy2 = self;
    v8 = errorCopy;
LABEL_3:
    [(CalDAVModifyCalendarSharingLevelTaskGroup *)selfCopy2 finishWithError:v8];
    goto LABEL_22;
  }

  state = [(CalDAVModifyCalendarSharingLevelTaskGroup *)self state];
  if (state > 2)
  {
    if (state == 3)
    {
      v24 = [taskCopy successfulValueForNameSpace:*MEMORY[0x277CFDEF8] elementName:*MEMORY[0x277CFDFE0]];
      v11 = v24;
      if (v24)
      {
        sharedOwner = [v24 sharedOwner];

        if (sharedOwner)
        {
          [v11 setSharedOwner:0];
          goto LABEL_18;
        }
      }

LABEL_20:
      [(CalDAVModifyCalendarSharingLevelTaskGroup *)self setState:7];
      [(CalDAVModifyCalendarSharingLevelTaskGroup *)self finishWithError:0];
      goto LABEL_21;
    }

    if (state == 6)
    {
      v15 = [taskCopy successfulValueForNameSpace:*MEMORY[0x277CFDE90] elementName:*MEMORY[0x277CFDE50]];
      href = [v15 href];
      payloadAsFullURL = [href payloadAsFullURL];
      [(CalDAVModifyCalendarSharingLevelTaskGroup *)self setPublishedURL:payloadAsFullURL];
    }

LABEL_13:
    [(CalDAVModifyCalendarSharingLevelTaskGroup *)self setState:7];
    selfCopy2 = self;
    v8 = 0;
    goto LABEL_3;
  }

  if (state != 1)
  {
    if (state == 2)
    {
      v10 = [taskCopy successfulValueForNameSpace:*MEMORY[0x277CFDEF8] elementName:*MEMORY[0x277CFDFE0]];
      v11 = v10;
      if (v10)
      {
        sharedOwner2 = [v10 sharedOwner];

        if (!sharedOwner2)
        {
          v13 = objc_alloc(MEMORY[0x277CFDC08]);
          v14 = [v13 initWithNameSpace:*MEMORY[0x277CFDE90] andName:@"shared-owner"];
          [v11 setSharedOwner:v14];

LABEL_18:
          v26 = objc_alloc(MEMORY[0x277CFDC70]);
          v27 = [MEMORY[0x277CBEB98] setWithObjects:{v11, 0}];
          v28 = [(CalDAVModifyCalendarSharingLevelTaskGroup *)self url];
          v22 = [v26 initWithPropertiesToSet:v27 andRemove:0 atURL:v28];

          [(CalDAVModifyCalendarSharingLevelTaskGroup *)self setState:4];
          accountInfoProvider = [(CoreDAVTaskGroup *)self accountInfoProvider];
          [v22 setAccountInfoProvider:accountInfoProvider];

          [v22 setDelegate:self];
          goto LABEL_19;
        }
      }

      goto LABEL_20;
    }

    goto LABEL_13;
  }

  v18 = objc_alloc(MEMORY[0x277CFDBE8]);
  v11 = [v18 initWithNameSpace:*MEMORY[0x277CFDE90] name:*MEMORY[0x277CFDE50] parseClass:objc_opt_class()];
  v19 = objc_alloc(MEMORY[0x277CFDC68]);
  v20 = [MEMORY[0x277CBEB98] setWithObject:v11];
  v21 = [(CalDAVModifyCalendarSharingLevelTaskGroup *)self url];
  v22 = [v19 initWithPropertiesToFind:v20 atURL:v21 withDepth:2];

  accountInfoProvider2 = [(CoreDAVTaskGroup *)self accountInfoProvider];
  [v22 setAccountInfoProvider:accountInfoProvider2];

  [v22 setDelegate:self];
  [(CalDAVModifyCalendarSharingLevelTaskGroup *)self setState:6];
LABEL_19:
  taskManager = [(CoreDAVTaskGroup *)self taskManager];
  [taskManager submitQueuedCoreDAVTask:v22];

LABEL_21:
LABEL_22:
}

@end