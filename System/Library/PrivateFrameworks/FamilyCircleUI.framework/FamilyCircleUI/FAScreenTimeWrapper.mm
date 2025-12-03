@interface FAScreenTimeWrapper
- (BOOL)activityEnabledForUser;
- (FAScreenTimeWrapper)initWithUserDSID:(id)d;
- (id)getScreenTimeUsageGraphForUser;
- (void)refresh;
@end

@implementation FAScreenTimeWrapper

- (FAScreenTimeWrapper)initWithUserDSID:(id)d
{
  dCopy = d;
  v16.receiver = self;
  v16.super_class = FAScreenTimeWrapper;
  v5 = [(FAScreenTimeWrapper *)&v16 init];
  if (v5 && [dCopy intValue] != -1)
  {
    v6 = dispatch_group_create();
    dispatch_group_enter(v6);
    v7 = dispatch_get_global_queue(33, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__FAScreenTimeWrapper_initWithUserDSID___block_invoke;
    block[3] = &unk_2782F3190;
    v13 = v5;
    v14 = dCopy;
    v8 = v6;
    v15 = v8;
    dispatch_sync(v7, block);

    v9 = dispatch_time(0, 1000000000);
    if (dispatch_group_wait(v8, v9))
    {
      v10 = _FALogSystem();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [FAScreenTimeWrapper initWithUserDSID:v10];
      }
    }
  }

  return v5;
}

void __40__FAScreenTimeWrapper_initWithUserDSID___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277D4BD28]) initWithUserDSID:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  [*(a1 + 32) setUserDSID:*(a1 + 40)];
  v5 = *(a1 + 48);

  dispatch_group_leave(v5);
}

- (id)getScreenTimeUsageGraphForUser
{
  userDSID = [(FAScreenTimeWrapper *)self userDSID];
  intValue = [userDSID intValue];

  if (intValue == -1)
  {
    provider = 0;
  }

  else
  {
    provider = self->_provider;
    if (provider)
    {
      provider = [provider usageSummaryTableViewCellForUser];
    }
  }

  return provider;
}

- (BOOL)activityEnabledForUser
{
  provider = self->_provider;
  if (provider)
  {
    shouldShowUsageSummaryForUser = [(STUsageSummaryTableViewCellProvider *)provider shouldShowUsageSummaryForUser];
  }

  else
  {
    shouldShowUsageSummaryForUser = 0;
  }

  [(FAScreenTimeWrapper *)self setPreviousState:shouldShowUsageSummaryForUser];
  return shouldShowUsageSummaryForUser;
}

- (void)refresh
{
  provider = self->_provider;
  if (provider)
  {
    [(STUsageSummaryTableViewCellProvider *)provider refresh];
  }
}

@end