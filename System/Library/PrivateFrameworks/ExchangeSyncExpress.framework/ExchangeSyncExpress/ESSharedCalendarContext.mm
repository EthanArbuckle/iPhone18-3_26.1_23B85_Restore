@interface ESSharedCalendarContext
- (ESSharedCalendarContext)initWithCalendarID:(id)a3 accountID:(id)a4 queue:(id)a5 completionBlock:(id)a6;
- (void)finishedWithError:(id)a3;
@end

@implementation ESSharedCalendarContext

- (ESSharedCalendarContext)initWithCalendarID:(id)a3 accountID:(id)a4 queue:(id)a5 completionBlock:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v11)
  {
    [ESSharedCalendarContext initWithCalendarID:accountID:queue:completionBlock:];
  }

  if (!v12)
  {
    [ESSharedCalendarContext initWithCalendarID:accountID:queue:completionBlock:];
  }

  v15 = v14;
  v21.receiver = self;
  v21.super_class = ESSharedCalendarContext;
  v16 = [(ESSharedCalendarContext *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_calendarID, a3);
    objc_storeStrong(&v17->_accountID, a4);
    objc_storeStrong(&v17->_queue, a5);
    v18 = [v15 copy];
    completionBlock = v17->_completionBlock;
    v17->_completionBlock = v18;
  }

  return v17;
}

- (void)finishedWithError:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v5, v6))
  {
    calendarID = self->_calendarID;
    accountID = self->_accountID;
    *buf = 138412546;
    v18 = calendarID;
    v19 = 2112;
    v20 = accountID;
    _os_log_impl(&dword_24A1B8000, v5, v6, "Share of calendar ID %@ for account %@ completed.", buf, 0x16u);
  }

  if (!v4 && [(ESSharedCalendarContext *)self shouldSyncCalendar])
  {
    v9 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__ESSharedCalendarContext_finishedWithError___block_invoke;
    block[3] = &unk_278FCFB40;
    block[4] = self;
    dispatch_async(v9, block);
  }

  if (self->_completionBlock)
  {
    queue = self->_queue;
    if (queue)
    {
      v11 = queue;
    }

    else
    {
      v11 = dispatch_get_global_queue(0, 0);
    }

    v12 = v11;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __45__ESSharedCalendarContext_finishedWithError___block_invoke_2;
    v14[3] = &unk_278FCFB18;
    v14[4] = self;
    v15 = v4;
    dispatch_async(v12, v14);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __45__ESSharedCalendarContext_finishedWithError___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = +[ESDConnection sharedConnection];
  v5[0] = *(*(a1 + 32) + 16);
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  [v2 updateContentsOfFoldersWithKeys:v3 forAccountID:*(*(a1 + 32) + 24) andDataclass:4 isUserRequested:1];

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t __45__ESSharedCalendarContext_finishedWithError___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = v2[2];
  v4 = v2[3];
  return (*(v2[5] + 16))();
}

@end