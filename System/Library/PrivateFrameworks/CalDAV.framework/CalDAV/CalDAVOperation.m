@interface CalDAVOperation
- (CalDAVOperation)init;
- (CalDAVOperation)initWithPrincipal:(id)a3;
- (void)_tearDownAllTaskGroupsWithBlock:(id)a3;
- (void)bailWithError:(id)a3;
- (void)cancelTaskGroup;
- (void)dealloc;
@end

@implementation CalDAVOperation

- (CalDAVOperation)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"CalDAVOperation.m" lineNumber:23 description:@"You must call initWithPrincipal:"];

  return 0;
}

- (CalDAVOperation)initWithPrincipal:(id)a3
{
  v5 = a3;
  v6 = [v5 taskManager];
  v11.receiver = self;
  v11.super_class = CalDAVOperation;
  v7 = [(CoreDAVTaskGroup *)&v11 initWithAccountInfoProvider:v5 taskManager:v6];

  if (v7)
  {
    objc_storeStrong(&v7->_principal, a3);
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    outstandingTaskGroups = v7->_outstandingTaskGroups;
    v7->_outstandingTaskGroups = v8;
  }

  return v7;
}

- (void)dealloc
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a2 object:a3 file:@"CalDAVOperation.m" lineNumber:37 description:{@"We should never finish a task group with an existing task group.  I have %@", *a1}];
}

- (void)_tearDownAllTaskGroupsWithBlock:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!self->_isCancellingTaskGroups)
  {
    self->_isCancellingTaskGroups = 1;
    v5 = [(NSMutableSet *)self->_outstandingTaskGroups copy];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          v4[2](v4, v11);
          [v11 setDelegate:{0, v13}];
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)cancelTaskGroup
{
  [(CalDAVOperation *)self _tearDownAllTaskGroupsWithBlock:&__block_literal_global_2];
  v3.receiver = self;
  v3.super_class = CalDAVOperation;
  [(CoreDAVTaskGroup *)&v3 cancelTaskGroup];
}

- (void)bailWithError:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__CalDAVOperation_bailWithError___block_invoke;
  v7[3] = &unk_278D66A40;
  v8 = v4;
  v5 = v4;
  [(CalDAVOperation *)self _tearDownAllTaskGroupsWithBlock:v7];
  v6.receiver = self;
  v6.super_class = CalDAVOperation;
  [(CoreDAVTaskGroup *)&v6 bailWithError:v5];
}

@end