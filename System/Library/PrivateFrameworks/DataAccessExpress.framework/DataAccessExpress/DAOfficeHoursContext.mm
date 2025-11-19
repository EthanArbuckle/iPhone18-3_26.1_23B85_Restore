@interface DAOfficeHoursContext
- (BOOL)isFetch;
- (void)abortWithError:(id)a3;
- (void)finishFetchWithOfficeHours:(id)a3 error:(id)a4;
- (void)finishSetWithError:(id)a3;
@end

@implementation DAOfficeHoursContext

- (BOOL)isFetch
{
  v2 = [(DAOfficeHoursContext *)self fetchCompletionBlock];
  v3 = v2 != 0;

  return v3;
}

- (void)finishFetchWithOfficeHours:(id)a3 error:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    accountID = self->_accountID;
    *buf = 138543362;
    v19 = accountID;
    _os_log_impl(&dword_2243BD000, v8, OS_LOG_TYPE_DEBUG, "Fetch of office hours for account %{public}@ completed.", buf, 0xCu);
  }

  v10 = [(DAOfficeHoursContext *)self fetchCompletionBlock];

  if (v10)
  {
    queue = self->_queue;
    if (queue)
    {
      v12 = queue;
    }

    else
    {
      v12 = dispatch_get_global_queue(0, 0);
    }

    v13 = v12;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__DAOfficeHoursContext_finishFetchWithOfficeHours_error___block_invoke;
    block[3] = &unk_27851FF28;
    block[4] = self;
    v16 = v6;
    v17 = v7;
    dispatch_async(v13, block);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __57__DAOfficeHoursContext_finishFetchWithOfficeHours_error___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) fetchCompletionBlock];
  v2 = [*(a1 + 32) accountID];
  (*(v3 + 2))(v3, v2, *(a1 + 40), *(a1 + 48));
}

- (void)finishSetWithError:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    accountID = self->_accountID;
    *buf = 138543362;
    v15 = accountID;
    _os_log_impl(&dword_2243BD000, v5, OS_LOG_TYPE_DEBUG, "Setting of office hours for account %{public}@ completed.", buf, 0xCu);
  }

  v7 = [(DAOfficeHoursContext *)self setCompletionBlock];

  if (v7)
  {
    queue = self->_queue;
    if (queue)
    {
      v9 = queue;
    }

    else
    {
      v9 = dispatch_get_global_queue(0, 0);
    }

    v10 = v9;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __43__DAOfficeHoursContext_finishSetWithError___block_invoke;
    v12[3] = &unk_27851FED8;
    v12[4] = self;
    v13 = v4;
    dispatch_async(v10, v12);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __43__DAOfficeHoursContext_finishSetWithError___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) setCompletionBlock];
  v2 = [*(a1 + 32) accountID];
  v3[2](v3, v2, *(a1 + 40));
}

- (void)abortWithError:(id)a3
{
  v6 = a3;
  v4 = [(DAOfficeHoursContext *)self fetchCompletionBlock];

  if (v4)
  {
    [(DAOfficeHoursContext *)self finishFetchWithOfficeHours:0 error:v6];
  }

  else
  {
    v5 = [(DAOfficeHoursContext *)self setCompletionBlock];

    if (v5)
    {
      [(DAOfficeHoursContext *)self finishSetWithError:v6];
    }
  }
}

@end