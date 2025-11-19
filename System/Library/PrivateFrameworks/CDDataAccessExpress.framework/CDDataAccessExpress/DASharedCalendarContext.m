@interface DASharedCalendarContext
- (DASharedCalendarContext)initWithCalendarID:(id)a3 accountID:(id)a4 queue:(id)a5 completionBlock:(id)a6;
- (void)finishedWithError:(id)a3;
@end

@implementation DASharedCalendarContext

- (DASharedCalendarContext)initWithCalendarID:(id)a3 accountID:(id)a4 queue:(id)a5 completionBlock:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v11)
  {
    [DASharedCalendarContext initWithCalendarID:accountID:queue:completionBlock:];
  }

  if (!v12)
  {
    [DASharedCalendarContext initWithCalendarID:accountID:queue:completionBlock:];
  }

  v15 = v14;
  v21.receiver = self;
  v21.super_class = DASharedCalendarContext;
  v16 = [(DASharedCalendarContext *)&v21 init];
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
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    calendarID = self->_calendarID;
    accountID = self->_accountID;
    *buf = 138412546;
    v17 = calendarID;
    v18 = 2112;
    v19 = accountID;
    _os_log_impl(&dword_242505000, v5, OS_LOG_TYPE_DEBUG, "Share of calendar ID %@ for account %@ completed.", buf, 0x16u);
  }

  if (!v4 && [(DASharedCalendarContext *)self shouldSyncCalendar])
  {
    v8 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__DASharedCalendarContext_finishedWithError___block_invoke;
    block[3] = &unk_278D542E0;
    block[4] = self;
    dispatch_async(v8, block);
  }

  if (self->_completionBlock)
  {
    queue = self->_queue;
    if (queue)
    {
      v10 = queue;
    }

    else
    {
      v10 = dispatch_get_global_queue(0, 0);
    }

    v11 = v10;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __45__DASharedCalendarContext_finishedWithError___block_invoke_2;
    v13[3] = &unk_278D542B8;
    v13[4] = self;
    v14 = v4;
    dispatch_async(v11, v13);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __45__DASharedCalendarContext_finishedWithError___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = +[CDDADConnection sharedConnection];
  v5[0] = *(*(a1 + 32) + 16);
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  [v2 updateContentsOfFoldersWithKeys:v3 forAccountID:*(*(a1 + 32) + 24) andDataclass:4 isUserRequested:1];

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t __45__DASharedCalendarContext_finishedWithError___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = v2[2];
  v4 = v2[3];
  return (*(v2[5] + 16))();
}

@end