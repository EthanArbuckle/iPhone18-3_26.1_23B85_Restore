@interface CoreDAVUpdateACLTaskGroup
- (CoreDAVUpdateACLTaskGroup)initWithAccountInfoProvider:(id)a3 aceItems:(id)a4 url:(id)a5 taskManager:(id)a6;
- (void)_startGetACL;
- (void)_startSetACLWithAccessControlEntities:(id)a3;
- (void)task:(id)a3 didFinishWithError:(id)a4;
@end

@implementation CoreDAVUpdateACLTaskGroup

- (CoreDAVUpdateACLTaskGroup)initWithAccountInfoProvider:(id)a3 aceItems:(id)a4 url:(id)a5 taskManager:(id)a6
{
  v11 = a4;
  v12 = a5;
  v16.receiver = self;
  v16.super_class = CoreDAVUpdateACLTaskGroup;
  v13 = [(CoreDAVTaskGroup *)&v16 initWithAccountInfoProvider:a3 taskManager:a6];
  v14 = v13;
  if (v13)
  {
    v13->_state = 0;
    objc_storeStrong(&v13->_aceItems, a4);
    objc_storeStrong(&v14->_url, a5);
  }

  return v14;
}

- (void)_startGetACL
{
  v14 = [[CoreDAVItemParserMapping alloc] initWithNameSpace:@"DAV:" name:@"acl" parseClass:objc_opt_class()];
  v3 = [MEMORY[0x277CBEB98] setWithObject:v14];
  v4 = [CoreDAVPropFindTask alloc];
  v5 = [(CoreDAVUpdateACLTaskGroup *)self url];
  v6 = [(CoreDAVPropFindTask *)v4 initWithPropertiesToFind:v3 atURL:v5 withDepth:2];

  [(CoreDAVUpdateACLTaskGroup *)self setFetchTask:v6];
  outstandingTasks = self->super._outstandingTasks;
  v8 = [(CoreDAVUpdateACLTaskGroup *)self fetchTask];
  [(NSMutableSet *)outstandingTasks addObject:v8];

  WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
  v10 = [(CoreDAVUpdateACLTaskGroup *)self fetchTask];
  [v10 setAccountInfoProvider:WeakRetained];

  v11 = [(CoreDAVUpdateACLTaskGroup *)self fetchTask];
  [v11 setDelegate:self];

  v12 = objc_loadWeakRetained(&self->super._taskManager);
  v13 = [(CoreDAVUpdateACLTaskGroup *)self fetchTask];
  [v12 submitQueuedCoreDAVTask:v13];

  [(CoreDAVUpdateACLTaskGroup *)self setState:1];
}

- (void)_startSetACLWithAccessControlEntities:(id)a3
{
  v4 = a3;
  v5 = [CoreDAVACLTask alloc];
  v6 = [(CoreDAVUpdateACLTaskGroup *)self url];
  v9 = [(CoreDAVACLTask *)v5 initWithAccessControlEntities:v4 atURL:v6];

  [(NSMutableSet *)self->super._outstandingTasks addObject:v9];
  WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
  [(CoreDAVTask *)v9 setAccountInfoProvider:WeakRetained];

  [(CoreDAVTask *)v9 setDelegate:self];
  v8 = objc_loadWeakRetained(&self->super._taskManager);
  [v8 submitQueuedCoreDAVTask:v9];

  [(CoreDAVUpdateACLTaskGroup *)self setState:2];
}

- (void)task:(id)a3 didFinishWithError:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(CoreDAVUpdateACLTaskGroup *)self state];
  if (v8 == 2)
  {
    [(NSMutableSet *)self->super._outstandingTasks removeObject:v6];
    if (v7)
    {
      v13 = 6;
    }

    else
    {
      v13 = 4;
    }

    v11 = self;
    v12 = v7;
    goto LABEL_9;
  }

  if (v8 == 1)
  {
    outstandingTasks = self->super._outstandingTasks;
    v10 = [(CoreDAVUpdateACLTaskGroup *)self fetchTask];
    [(NSMutableSet *)outstandingTasks removeObject:v10];

    if (v7)
    {
      v11 = self;
      v12 = v7;
      v13 = 5;
LABEL_9:
      [(CoreDAVUpdateACLTaskGroup *)v11 _finishWithError:v12 state:v13];
      goto LABEL_10;
    }

    v15 = [(CoreDAVUpdateACLTaskGroup *)self fetchTask];
    v16 = [v15 successfulValueForNameSpace:@"DAV:" elementName:@"acl"];

    if (v16)
    {
      v17 = [(CoreDAVUpdateACLTaskGroup *)self aceItems];
      v18 = [v16 notGrantedSubsetOfACEs:v17];

      if ([v18 count])
      {
        v19 = MEMORY[0x277CBEB18];
        v20 = [v18 allObjects];
        v21 = [v19 arrayWithArray:v20];

        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v22 = [v16 liveACEs];
        v23 = [v22 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v28;
          do
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v28 != v25)
              {
                objc_enumerationMutation(v22);
              }

              [v21 addObject:*(*(&v27 + 1) + 8 * i)];
            }

            v24 = [v22 countByEnumeratingWithState:&v27 objects:v31 count:16];
          }

          while (v24);
        }

        [(CoreDAVUpdateACLTaskGroup *)self _startSetACLWithAccessControlEntities:v21];
      }

      else
      {
        [(CoreDAVUpdateACLTaskGroup *)self _finishWithError:0 state:3];
      }
    }

    else
    {
      [(CoreDAVUpdateACLTaskGroup *)self _finishWithError:0 state:5];
    }
  }

LABEL_10:

  v14 = *MEMORY[0x277D85DE8];
}

@end