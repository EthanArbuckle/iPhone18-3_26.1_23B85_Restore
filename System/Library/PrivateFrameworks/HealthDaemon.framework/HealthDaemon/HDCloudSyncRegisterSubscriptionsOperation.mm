@interface HDCloudSyncRegisterSubscriptionsOperation
- (HDCloudSyncRegisterSubscriptionsOperation)initWithConfiguration:(id)configuration cloudState:(id)state;
- (HDCloudSyncRegisterSubscriptionsOperation)initWithConfiguration:(id)configuration cloudState:(id)state container:(id)container subscriptions:(id)subscriptions;
- (void)main;
@end

@implementation HDCloudSyncRegisterSubscriptionsOperation

- (HDCloudSyncRegisterSubscriptionsOperation)initWithConfiguration:(id)configuration cloudState:(id)state
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (HDCloudSyncRegisterSubscriptionsOperation)initWithConfiguration:(id)configuration cloudState:(id)state container:(id)container subscriptions:(id)subscriptions
{
  containerCopy = container;
  subscriptionsCopy = subscriptions;
  v17.receiver = self;
  v17.super_class = HDCloudSyncRegisterSubscriptionsOperation;
  v13 = [(HDCloudSyncOperation *)&v17 initWithConfiguration:configuration cloudState:state];
  if (v13)
  {
    v14 = [subscriptionsCopy copy];
    subscriptions = v13->_subscriptions;
    v13->_subscriptions = v14;

    objc_storeStrong(&v13->_container, container);
  }

  return v13;
}

- (void)main
{
  v24 = *MEMORY[0x277D85DE8];
  if ([(NSDictionary *)self->_subscriptions count])
  {
    v3 = objc_alloc(MEMORY[0x277CBC418]);
    allKeys = [(NSDictionary *)self->_subscriptions allKeys];
    v5 = [v3 initWithSubscriptionIDs:allKeys];

    container = self->_container;
    configuration = [(HDCloudSyncOperation *)self configuration];
    repository = [configuration repository];
    profileIdentifier = [repository profileIdentifier];
    v10 = HDDatabaseForContainer(container, profileIdentifier);

    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __49__HDCloudSyncRegisterSubscriptionsOperation_main__block_invoke;
    v19 = &unk_27862A7F8;
    selfCopy = self;
    v21 = v10;
    v11 = v10;
    [v5 setFetchSubscriptionCompletionBlock:&v16];
    v12 = [(HDCloudSyncOperation *)self configuration:v16];
    operationGroup = [v12 operationGroup];
    [v5 setGroup:operationGroup];

    [v11 addOperation:v5];
  }

  else
  {
    _HKInitializeLogging();
    v14 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: No subscriptions to register.", buf, 0xCu);
    }

    [(HDCloudSyncOperation *)self finishWithSuccess:1 error:0];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __49__HDCloudSyncRegisterSubscriptionsOperation_main__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6 && ([v6 hk_isErrorInDomain:*MEMORY[0x277CBBF50] code:2] & 1) == 0)
  {
    _HKInitializeLogging();
    v22 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v24 = *(a1 + 32);
      *buf = 138543618;
      *&buf[4] = v24;
      *&buf[12] = 2114;
      *&buf[14] = v7;
      _os_log_error_impl(&dword_228986000, v22, OS_LOG_TYPE_ERROR, "%{public}@: Failed to look up subscriptions: %{public}@", buf, 0x16u);
    }

    [*(a1 + 32) finishWithSuccess:0 error:v7];
  }

  else
  {
    v8 = [*(*(a1 + 32) + 104) allKeys];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __49__HDCloudSyncRegisterSubscriptionsOperation_main__block_invoke_296;
    v25[3] = &unk_27862A7D0;
    v26 = v5;
    v9 = [v8 hk_filter:v25];

    if ([v9 count])
    {
      _HKInitializeLogging();
      v10 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 32);
        v12 = v10;
        v13 = [v9 count];
        v14 = [v9 componentsJoinedByString:{@", "}];
        *buf = 138543874;
        *&buf[4] = v11;
        *&buf[12] = 2048;
        *&buf[14] = v13;
        *&buf[22] = 2112;
        v30 = v14;
        _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Missing %ld subscriptions: %@", buf, 0x20u);
      }

      v15 = *(a1 + 32);
      v16 = *(a1 + 40);
      if (v15)
      {
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __90__HDCloudSyncRegisterSubscriptionsOperation__registerSubscriptionsWithIdentifer_database___block_invoke;
        v30 = &unk_27862A820;
        v31 = v15;
        v32 = sel__registerSubscriptionsWithIdentifer_database_;
        v17 = [v9 hk_map:buf];
        v18 = [objc_alloc(MEMORY[0x277CBC4B0]) initWithSubscriptionsToSave:v17 subscriptionIDsToDelete:0];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __90__HDCloudSyncRegisterSubscriptionsOperation__registerSubscriptionsWithIdentifer_database___block_invoke_2;
        v27[3] = &unk_27862A848;
        v27[4] = v15;
        v19 = v16;
        v28 = v19;
        [v18 setModifySubscriptionsCompletionBlock:v27];
        v20 = [v15 configuration];
        v21 = [v20 operationGroup];
        [v18 setGroup:v21];

        [v19 addOperation:v18];
      }
    }

    else
    {
      [*(a1 + 32) finishWithSuccess:1 error:0];
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

BOOL __49__HDCloudSyncRegisterSubscriptionsOperation_main__block_invoke_296(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v3 = v2 == 0;

  return v3;
}

id __90__HDCloudSyncRegisterSubscriptionsOperation__registerSubscriptionsWithIdentifer_database___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 104) objectForKeyedSubscript:v3];
  if (!v4)
  {
    v22 = [MEMORY[0x277CCA890] currentHandler];
    [v22 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"HDCloudSyncRegisterSubscriptionsOperation.m" lineNumber:86 description:@"Record type nil for subscription after validation."];
  }

  if (v4 == @"CloudSyncStateRecord")
  {
    v8 = *(a1 + 32);
    if (!v8)
    {
      goto LABEL_8;
    }

    v10 = @"CloudSyncStateRecord";
    v11 = v3;
    v12 = [v8 profile];
    v13 = [v12 daemon];
    v14 = [v13 cloudSyncCoordinator];
    v15 = [v14 stateSyncDomainForSubscriptionIdentifier];
    v9 = [v15 objectForKeyedSubscript:v11];

    v16 = MEMORY[0x277CBC5F8];
    v17 = [v8 configuration];
    v18 = [v17 syncContainerPrefix];
    v19 = [v16 hd_stateSyncZoneIDForSyncCircleIdentifier:v18 domain:v9];

    v8 = [objc_alloc(MEMORY[0x277CBC618]) initWithZoneID:v19 subscriptionID:v11];
    [v8 setRecordType:v10];

    v20 = objc_alloc_init(MEMORY[0x277CBC4D0]);
    [v20 setAlertBody:v11];

    [v8 setNotificationInfo:v20];
  }

  else
  {
    v5 = MEMORY[0x277CBC2A0];
    v6 = v3;
    v7 = v4;
    v8 = [[v5 alloc] initWithSubscriptionID:v6];
    [v8 setRecordType:v7];

    v9 = objc_alloc_init(MEMORY[0x277CBC4D0]);
    [v9 setAlertBody:v6];

    [v8 setNotificationInfo:v9];
  }

LABEL_8:

  return v8;
}

void __90__HDCloudSyncRegisterSubscriptionsOperation__registerSubscriptionsWithIdentifer_database___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a4;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC328];
  v7 = *MEMORY[0x277CCC328];
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 32);
      v15 = *(a1 + 40);
      v16 = 138543874;
      v17 = v14;
      v18 = 2114;
      v19 = v15;
      v20 = 2114;
      v21 = v5;
      _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "%{public}@ Error saving subscriptions in database %{public}@, error: %{public}@", &v16, 0x20u);
    }

    v8 = *(a1 + 32);
    v9 = 0;
    v10 = v5;
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      v16 = 138543618;
      v17 = v11;
      v18 = 2114;
      v19 = v12;
      _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Successfully saved subscriptions in database %{public}@", &v16, 0x16u);
    }

    v8 = *(a1 + 32);
    v9 = 1;
    v10 = 0;
  }

  [v8 finishWithSuccess:v9 error:v10];

  v13 = *MEMORY[0x277D85DE8];
}

@end