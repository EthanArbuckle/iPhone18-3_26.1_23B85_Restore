@interface HDUserDomainConceptStoreTaskServer
- (HDUserDomainConceptStoreTaskServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (uint64_t)_storeUserDomainConcepts:(uint64_t)concepts method:(uint64_t)method error:;
- (void)_notifyClientForChangesOfType:(void *)type userDomainConcepts:;
- (void)dealloc;
- (void)remote_createAndStoreUserDomainConceptWithConceptIdentifier:(id)identifier additionalProperties:(id)properties userDomainConceptTypeIdentifier:(id)typeIdentifier completion:(id)completion;
- (void)remote_observeUserDomainConceptChanges:(BOOL)changes completion:(id)completion;
- (void)remote_storeUserDomainConcepts:(id)concepts method:(int64_t)method completion:(id)completion;
@end

@implementation HDUserDomainConceptStoreTaskServer

- (HDUserDomainConceptStoreTaskServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  clientCopy = client;
  v16.receiver = self;
  v16.super_class = HDUserDomainConceptStoreTaskServer;
  v11 = [(HDStandardTaskServer *)&v16 initWithUUID:d configuration:configuration client:clientCopy delegate:delegate];
  if (v11)
  {
    profile = [clientCopy profile];
    userDomainConceptManager = [profile userDomainConceptManager];
    userDomainConceptManager = v11->_userDomainConceptManager;
    v11->_userDomainConceptManager = userDomainConceptManager;

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

- (void)remote_storeUserDomainConcepts:(id)concepts method:(int64_t)method completion:(id)completion
{
  v11 = 0;
  completionCopy = completion;
  v9 = [(HDUserDomainConceptStoreTaskServer *)self _storeUserDomainConcepts:concepts method:method error:&v11];
  v10 = v11;
  completionCopy[2](completionCopy, v9, v10);
}

- (uint64_t)_storeUserDomainConcepts:(uint64_t)concepts method:(uint64_t)method error:
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a2;
  if (self)
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
        selfCopy = self;
        v18 = 2048;
        v19 = v11;
        v20 = 2112;
        v21 = v12;
        _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_INFO, "%{public}@: Store %ld concepts with method '%@'", &v16, 0x20u);
      }
    }

    v13 = [*(self + 40) modifyUserDomainConcepts:v7 method:concepts error:method];
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)remote_observeUserDomainConceptChanges:(BOOL)changes completion:(id)completion
{
  changesCopy = changes;
  completionCopy = completion;
  os_unfair_lock_lock(&self->_lock);
  self->_shouldObserveChanges = changesCopy;
  userDomainConceptManager = self->_userDomainConceptManager;
  if (changesCopy)
  {
    [(HDUserDomainConceptManager *)userDomainConceptManager addUserDomainConceptObserver:self queue:0];
  }

  else
  {
    [(HDUserDomainConceptManager *)userDomainConceptManager removeUserDomainConceptObserver:self];
  }

  os_unfair_lock_unlock(&self->_lock);
  completionCopy[2](completionCopy, 1, 0);
}

- (void)remote_createAndStoreUserDomainConceptWithConceptIdentifier:(id)identifier additionalProperties:(id)properties userDomainConceptTypeIdentifier:(id)typeIdentifier completion:(id)completion
{
  v24[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  typeIdentifierCopy = typeIdentifier;
  propertiesCopy = properties;
  identifierCopy = identifier;
  profile = [(HDStandardTaskServer *)self profile];
  v23 = 0;
  v15 = [HDUserDomainConceptEntity createAndRefreshOntologyBackedUserDomainConceptWithConceptIdentifier:identifierCopy additionalProperties:propertiesCopy userDomainConceptTypeIdentifier:typeIdentifierCopy profile:profile error:&v23];

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

    (completionCopy)[2](completionCopy, v20, v19);
    v16 = v19;
  }

  else
  {
    completionCopy[2](completionCopy, 0, v16);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_notifyClientForChangesOfType:(void *)type userDomainConcepts:
{
  v23 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  if (self)
  {
    os_unfair_lock_lock((self + 48));
    if (*(self + 52) == 1)
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __87__HDUserDomainConceptStoreTaskServer__notifyClientForChangesOfType_userDomainConcepts___block_invoke;
      v14[3] = &unk_27861D390;
      v14[4] = self;
      v6 = typeCopy;
      v15 = v6;
      v16 = a2;
      v7 = [self remoteObjectProxyWithErrorHandler:v14];
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
          selfCopy = self;
          v19 = 2048;
          v20 = v11;
          v21 = 2112;
          v22 = v12;
          _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_INFO, "%{public}@: Notify client for %ld changes of type '%@'", buf, 0x20u);
        }
      }

      [v7 client_notifyForChangesToUserDomainConcepts:v6 changeType:a2];
    }

    os_unfair_lock_unlock((self + 48));
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