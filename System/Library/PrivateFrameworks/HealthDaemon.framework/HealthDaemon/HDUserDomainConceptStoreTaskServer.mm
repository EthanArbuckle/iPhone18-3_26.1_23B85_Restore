@interface HDUserDomainConceptStoreTaskServer
- (HDUserDomainConceptStoreTaskServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (uint64_t)_storeUserDomainConcepts:(uint64_t)a3 method:(uint64_t)a4 error:;
- (void)_notifyClientForChangesOfType:(void *)a3 userDomainConcepts:;
- (void)dealloc;
- (void)remote_createAndStoreUserDomainConceptWithConceptIdentifier:(id)a3 additionalProperties:(id)a4 userDomainConceptTypeIdentifier:(id)a5 completion:(id)a6;
- (void)remote_observeUserDomainConceptChanges:(BOOL)a3 completion:(id)a4;
- (void)remote_storeUserDomainConcepts:(id)a3 method:(int64_t)a4 completion:(id)a5;
@end

@implementation HDUserDomainConceptStoreTaskServer

- (HDUserDomainConceptStoreTaskServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v10 = a5;
  v16.receiver = self;
  v16.super_class = HDUserDomainConceptStoreTaskServer;
  v11 = [(HDStandardTaskServer *)&v16 initWithUUID:a3 configuration:a4 client:v10 delegate:a6];
  if (v11)
  {
    v12 = [v10 profile];
    v13 = [v12 userDomainConceptManager];
    userDomainConceptManager = v11->_userDomainConceptManager;
    v11->_userDomainConceptManager = v13;

    v11->_lock._os_unfair_lock_opaque = 0;
    v11->_shouldObserveChanges = 0;
  }

  return v11;
}

- (void)dealloc
{
  [(HDUserDomainConceptManager *)self->_userDomainConceptManager removeUserDomainConceptObserver:self];
  v3.receiver = self;
  v3.super_class = HDUserDomainConceptStoreTaskServer;
  [(HDUserDomainConceptStoreTaskServer *)&v3 dealloc];
}

- (void)remote_storeUserDomainConcepts:(id)a3 method:(int64_t)a4 completion:(id)a5
{
  v11 = 0;
  v8 = a5;
  v9 = [(HDUserDomainConceptStoreTaskServer *)self _storeUserDomainConcepts:a3 method:a4 error:&v11];
  v10 = v11;
  v8[2](v8, v9, v10);
}

- (uint64_t)_storeUserDomainConcepts:(uint64_t)a3 method:(uint64_t)a4 error:
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a2;
  if (a1)
  {
    _HKInitializeLogging();
    v8 = HKLogHealthOntology();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);

    if (v9)
    {
      v10 = HKLogHealthOntology();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [v7 count];
        v12 = HKStringFromUserDomainConceptStoreMethod();
        v16 = 138543874;
        v17 = a1;
        v18 = 2048;
        v19 = v11;
        v20 = 2112;
        v21 = v12;
        _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_INFO, "%{public}@: Store %ld concepts with method '%@'", &v16, 0x20u);
      }
    }

    v13 = [*(a1 + 40) modifyUserDomainConcepts:v7 method:a3 error:a4];
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)remote_observeUserDomainConceptChanges:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  self->_shouldObserveChanges = v4;
  userDomainConceptManager = self->_userDomainConceptManager;
  if (v4)
  {
    [(HDUserDomainConceptManager *)userDomainConceptManager addUserDomainConceptObserver:self queue:0];
  }

  else
  {
    [(HDUserDomainConceptManager *)userDomainConceptManager removeUserDomainConceptObserver:self];
  }

  os_unfair_lock_unlock(&self->_lock);
  v7[2](v7, 1, 0);
}

- (void)remote_createAndStoreUserDomainConceptWithConceptIdentifier:(id)a3 additionalProperties:(id)a4 userDomainConceptTypeIdentifier:(id)a5 completion:(id)a6
{
  v24[1] = *MEMORY[0x277D85DE8];
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(HDStandardTaskServer *)self profile];
  v23 = 0;
  v15 = [HDUserDomainConceptEntity createAndRefreshOntologyBackedUserDomainConceptWithConceptIdentifier:v13 additionalProperties:v12 userDomainConceptTypeIdentifier:v11 profile:v14 error:&v23];

  v16 = v23;
  if (v15)
  {
    v24[0] = v15;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
    v22 = v16;
    v18 = [(HDUserDomainConceptStoreTaskServer *)self _storeUserDomainConcepts:v17 method:1 error:&v22];
    v19 = v22;

    if (v18)
    {
      v20 = v15;
    }

    else
    {
      v20 = 0;
    }

    (v10)[2](v10, v20, v19);
    v16 = v19;
  }

  else
  {
    v10[2](v10, 0, v16);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_notifyClientForChangesOfType:(void *)a3 userDomainConcepts:
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a1)
  {
    os_unfair_lock_lock((a1 + 48));
    if (*(a1 + 52) == 1)
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __87__HDUserDomainConceptStoreTaskServer__notifyClientForChangesOfType_userDomainConcepts___block_invoke;
      v14[3] = &unk_27861D390;
      v14[4] = a1;
      v6 = v5;
      v15 = v6;
      v16 = a2;
      v7 = [a1 remoteObjectProxyWithErrorHandler:v14];
      _HKInitializeLogging();
      v8 = HKLogHealthOntology();
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);

      if (v9)
      {
        v10 = HKLogHealthOntology();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = [v6 count];
          v12 = HKStringFromUserDomainConceptStoreChangeType();
          *buf = 138543874;
          v18 = a1;
          v19 = 2048;
          v20 = v11;
          v21 = 2112;
          v22 = v12;
          _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_INFO, "%{public}@: Notify client for %ld changes of type '%@'", buf, 0x20u);
        }
      }

      [v7 client_notifyForChangesToUserDomainConcepts:v6 changeType:a2];
    }

    os_unfair_lock_unlock((a1 + 48));
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __87__HDUserDomainConceptStoreTaskServer__notifyClientForChangesOfType_userDomainConcepts___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogHealthOntology();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) count];
    v8 = *(a1 + 48);
    v9 = HKStringFromUserDomainConceptStoreChangeType();
    v10 = 138544130;
    v11 = v6;
    v12 = 2048;
    v13 = v7;
    v14 = 2112;
    v15 = v9;
    v16 = 2114;
    v17 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Unable to notify client for %ld changes of type '%@': %{public}@", &v10, 0x2Au);
  }

  v5 = *MEMORY[0x277D85DE8];
}

@end