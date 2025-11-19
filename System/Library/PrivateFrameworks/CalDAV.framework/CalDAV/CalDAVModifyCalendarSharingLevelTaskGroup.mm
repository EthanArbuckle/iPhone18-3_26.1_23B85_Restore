@interface CalDAVModifyCalendarSharingLevelTaskGroup
- (CalDAVModifyCalendarSharingLevelTaskGroup)initWithAccountInfoProvider:(id)a3 taskManager:(id)a4;
- (void)startTaskGroup;
- (void)task:(id)a3 didFinishWithError:(id)a4;
@end

@implementation CalDAVModifyCalendarSharingLevelTaskGroup

- (CalDAVModifyCalendarSharingLevelTaskGroup)initWithAccountInfoProvider:(id)a3 taskManager:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Initializing this class instance with an inherited initializer not allowed." userInfo:0];
  objc_exception_throw(v7);
}

- (void)startTaskGroup
{
  v3 = [(CalDAVModifyCalendarSharingLevelTaskGroup *)self action];
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v13 = objc_alloc(MEMORY[0x277CFDBE8]);
      v5 = [v13 initWithNameSpace:*MEMORY[0x277CFDEF8] name:*MEMORY[0x277CFDFE0] parseClass:objc_opt_class()];
      v14 = objc_alloc(MEMORY[0x277CFDC68]);
      v9 = [MEMORY[0x277CBEB98] setWithObject:v5];
      v10 = [(CalDAVModifyCalendarSharingLevelTaskGroup *)self url];
      v11 = 2;
      v17 = [v14 initWithPropertiesToFind:v9 atURL:v10 withDepth:2];
    }

    else
    {
      if (v3 != 3)
      {
        return;
      }

      v7 = objc_alloc(MEMORY[0x277CFDBE8]);
      v5 = [v7 initWithNameSpace:*MEMORY[0x277CFDEF8] name:*MEMORY[0x277CFDFE0] parseClass:objc_opt_class()];
      v8 = objc_alloc(MEMORY[0x277CFDC68]);
      v9 = [MEMORY[0x277CBEB98] setWithObject:v5];
      v10 = [(CalDAVModifyCalendarSharingLevelTaskGroup *)self url];
      v17 = [v8 initWithPropertiesToFind:v9 atURL:v10 withDepth:2];
      v11 = 3;
    }
  }

  else
  {
    if (v3)
    {
      if (v3 != 1)
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
    v9 = [v5 data];
    v10 = [(CalDAVModifyCalendarSharingLevelTaskGroup *)self url];
    v17 = [v12 initWithDataPayload:v9 dataContentType:@"text/xml" atURL:v10 previousETag:0];
    v11 = 1;
  }

  [(CalDAVModifyCalendarSharingLevelTaskGroup *)self setState:v11];
  if (v17)
  {
    v15 = [(CoreDAVTaskGroup *)self accountInfoProvider];
    [v17 setAccountInfoProvider:v15];

    [v17 setDelegate:self];
    v16 = [(CoreDAVTaskGroup *)self taskManager];
    [v16 submitQueuedCoreDAVTask:v17];
  }
}

- (void)task:(id)a3 didFinishWithError:(id)a4
{
  v31 = a3;
  v6 = a4;
  if (v6)
  {
    [(CalDAVModifyCalendarSharingLevelTaskGroup *)self setState:7];
    v7 = self;
    v8 = v6;
LABEL_3:
    [(CalDAVModifyCalendarSharingLevelTaskGroup *)v7 finishWithError:v8];
    goto LABEL_22;
  }

  v9 = [(CalDAVModifyCalendarSharingLevelTaskGroup *)self state];
  if (v9 > 2)
  {
    if (v9 == 3)
    {
      v24 = [v31 successfulValueForNameSpace:*MEMORY[0x277CFDEF8] elementName:*MEMORY[0x277CFDFE0]];
      v11 = v24;
      if (v24)
      {
        v25 = [v24 sharedOwner];

        if (v25)
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

    if (v9 == 6)
    {
      v15 = [v31 successfulValueForNameSpace:*MEMORY[0x277CFDE90] elementName:*MEMORY[0x277CFDE50]];
      v16 = [v15 href];
      v17 = [v16 payloadAsFullURL];
      [(CalDAVModifyCalendarSharingLevelTaskGroup *)self setPublishedURL:v17];
    }

LABEL_13:
    [(CalDAVModifyCalendarSharingLevelTaskGroup *)self setState:7];
    v7 = self;
    v8 = 0;
    goto LABEL_3;
  }

  if (v9 != 1)
  {
    if (v9 == 2)
    {
      v10 = [v31 successfulValueForNameSpace:*MEMORY[0x277CFDEF8] elementName:*MEMORY[0x277CFDFE0]];
      v11 = v10;
      if (v10)
      {
        v12 = [v10 sharedOwner];

        if (!v12)
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
          v29 = [(CoreDAVTaskGroup *)self accountInfoProvider];
          [v22 setAccountInfoProvider:v29];

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

  v23 = [(CoreDAVTaskGroup *)self accountInfoProvider];
  [v22 setAccountInfoProvider:v23];

  [v22 setDelegate:self];
  [(CalDAVModifyCalendarSharingLevelTaskGroup *)self setState:6];
LABEL_19:
  v30 = [(CoreDAVTaskGroup *)self taskManager];
  [v30 submitQueuedCoreDAVTask:v22];

LABEL_21:
LABEL_22:
}

@end