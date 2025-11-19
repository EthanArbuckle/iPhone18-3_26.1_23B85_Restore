@interface BBSectionAuthorizationManager
- (BBSectionAuthorizationManager)initWithQueue:(id)a3;
- (BBSectionAuthorizationManagerDelegate)delegate;
- (id)handleChangeForSectionInfo:(id)a3 replacingSectionInfo:(id)a4;
- (void)_addNewTimerForSectionID:(id)a3 withExpirationDate:(id)a4;
- (void)_cancelExisitingTimerForSectionID:(id)a3;
- (void)_queue_triggerDidFireForExpiryTimer:(id)a3;
- (void)_replaceExisitingTimerForSectionID:(id)a3 withExpirationDate:(id)a4;
@end

@implementation BBSectionAuthorizationManager

- (BBSectionAuthorizationManager)initWithQueue:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = BBSectionAuthorizationManager;
  v6 = [(BBSectionAuthorizationManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    sectionIDsToAuthorizationExpiryTimers = v7->_sectionIDsToAuthorizationExpiryTimers;
    v7->_sectionIDsToAuthorizationExpiryTimers = v8;
  }

  return v7;
}

- (id)handleChangeForSectionInfo:(id)a3 replacingSectionInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 authorizationStatus];
  v9 = [v7 authorizationStatus];
  v10 = [v6 authorizationExpirationDate];
  v11 = [v7 authorizationExpirationDate];
  v12 = [v6 lastUserGrantedAuthorizationDate];
  v13 = [v7 lastUserGrantedAuthorizationDate];

  if (v8 == 4)
  {
    if (!v9)
    {
      goto LABEL_11;
    }

    if (v9 == 4)
    {
      if (![v10 compare:v11])
      {
        goto LABEL_13;
      }

      v14 = [v6 sectionID];
      [(BBSectionAuthorizationManager *)self _replaceExisitingTimerForSectionID:v14 withExpirationDate:v10];
      goto LABEL_12;
    }

    if (v12 != v13)
    {
LABEL_11:
      v14 = [v6 sectionID];
      [(BBSectionAuthorizationManager *)self _addNewTimerForSectionID:v14 withExpirationDate:v10];
LABEL_12:

      goto LABEL_13;
    }

    [v6 setAuthorizationStatus:v9];
LABEL_9:
    [v6 setAuthorizationExpirationDate:0];
    goto LABEL_13;
  }

  if (v9 == 4)
  {
    v15 = [v6 sectionID];
    [(BBSectionAuthorizationManager *)self _cancelExisitingTimerForSectionID:v15];
  }

  if (v10)
  {
    goto LABEL_9;
  }

LABEL_13:

  return v6;
}

- (void)_addNewTimerForSectionID:(id)a3 withExpirationDate:(id)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277D3A180];
  v7 = a4;
  v8 = a3;
  v9 = [v6 alloc];
  v13 = @"sectionID";
  v14[0] = v8;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v11 = [v9 initWithFireDate:v7 serviceIdentifier:v8 target:self selector:sel__queue_triggerDidFireForExpiryTimer_ userInfo:v10];

  [v11 setMinimumEarlyFireProportion:1.0];
  [v11 setUserVisible:1];
  [v11 scheduleInQueue:self->_queue];
  [(NSMutableDictionary *)self->_sectionIDsToAuthorizationExpiryTimers setObject:v11 forKey:v8];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_replaceExisitingTimerForSectionID:(id)a3 withExpirationDate:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(BBSectionAuthorizationManager *)self _cancelExisitingTimerForSectionID:v7];
  [(BBSectionAuthorizationManager *)self _addNewTimerForSectionID:v7 withExpirationDate:v6];
}

- (void)_cancelExisitingTimerForSectionID:(id)a3
{
  sectionIDsToAuthorizationExpiryTimers = self->_sectionIDsToAuthorizationExpiryTimers;
  v5 = a3;
  v6 = [(NSMutableDictionary *)sectionIDsToAuthorizationExpiryTimers objectForKey:v5];
  [v6 invalidate];
  [(NSMutableDictionary *)self->_sectionIDsToAuthorizationExpiryTimers removeObjectForKey:v5];
}

- (void)_queue_triggerDidFireForExpiryTimer:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = [a3 userInfo];
  v5 = [v4 valueForKey:@"sectionID"];

  v6 = BBLogSettings;
  if (os_log_type_enabled(BBLogSettings, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = v5;
    _os_log_impl(&dword_241EFF000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Temporary authorization expired, effective authorization status has changed", &v9, 0xCu);
  }

  [(NSMutableDictionary *)self->_sectionIDsToAuthorizationExpiryTimers removeObjectForKey:v5];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didChangeEffectiveAuthorizationStatusForSectionID:v5];

  v8 = *MEMORY[0x277D85DE8];
}

- (BBSectionAuthorizationManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end