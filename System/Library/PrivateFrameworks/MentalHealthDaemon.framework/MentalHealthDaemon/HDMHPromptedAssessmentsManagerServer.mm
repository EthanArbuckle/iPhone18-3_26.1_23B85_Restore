@interface HDMHPromptedAssessmentsManagerServer
+ (id)createTaskServerWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate error:(id *)error;
+ (id)taskIdentifier;
- (id)_clientRemoteObjectProxy;
- (void)promptedAssessmentsManagerDidUpdatePromptedAssessments:(id)assessments;
- (void)remote_getPromptedAssessmentsWithCompletion:(id)completion;
- (void)remote_startObservingChangesWithCompletion:(id)completion;
- (void)remote_stopObservingChanges;
@end

@implementation HDMHPromptedAssessmentsManagerServer

- (void)remote_getPromptedAssessmentsWithCompletion:(id)completion
{
  completionCopy = completion;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__0;
  v14 = __Block_byref_object_dispose__0;
  v15 = 0;
  profile = [(HDStandardTaskServer *)self profile];
  database = [profile database];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __84__HDMHPromptedAssessmentsManagerServer_remote_getPromptedAssessmentsWithCompletion___block_invoke;
  v8[3] = &unk_2798AAC38;
  v8[5] = &v10;
  v9 = 0;
  v8[4] = self;
  [database performHighPriorityTransactionsWithError:&v9 block:v8];
  v7 = v9;

  completionCopy[2](completionCopy, v11[5], v7);
  _Block_object_dispose(&v10, 8);
}

BOOL __84__HDMHPromptedAssessmentsManagerServer_remote_getPromptedAssessmentsWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 32) + 40) promptedAssessmentsWithError:a2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

- (void)remote_startObservingChangesWithCompletion:(id)completion
{
  v9 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC2F0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_258977000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Registering for extension changes", &v7, 0xCu);
  }

  [(HDMHPromptedAssessmentsManager *)self->_manager registerObserver:self queue:0];
  completionCopy[2](completionCopy, 1, 0);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)remote_stopObservingChanges
{
  v7 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC2F0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_258977000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Unregistering for extension changes", &v5, 0xCu);
  }

  [(HDMHPromptedAssessmentsManager *)self->_manager unregisterObserver:self];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)promptedAssessmentsManagerDidUpdatePromptedAssessments:(id)assessments
{
  v9 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC2F0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_258977000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notifying client of prompted assessment update", &v7, 0xCu);
  }

  _clientRemoteObjectProxy = [(HDMHPromptedAssessmentsManagerServer *)self _clientRemoteObjectProxy];
  [_clientRemoteObjectProxy client_promptedAssessmentsManagerDidUpdatePromptedAssessments];

  v6 = *MEMORY[0x277D85DE8];
}

+ (id)createTaskServerWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate error:(id *)error
{
  dCopy = d;
  configurationCopy = configuration;
  clientCopy = client;
  delegateCopy = delegate;
  profile = [clientCopy profile];
  v16 = [profile profileExtensionWithIdentifier:*MEMORY[0x277D28040]];

  if (v16)
  {
    v17 = *MEMORY[0x277CCC0C0];
    v18 = [v16 featureAvailabilityExtensionForFeatureIdentifier:*MEMORY[0x277CCC0C0]];
    if (v18)
    {
      v19 = *MEMORY[0x277CCC108];
      v20 = [v16 featureAvailabilityExtensionForFeatureIdentifier:*MEMORY[0x277CCC108]];
      if (v20)
      {
        v21 = [(HDStandardTaskServer *)[HDMHPromptedAssessmentsManagerServer alloc] initWithUUID:dCopy configuration:configurationCopy client:clientCopy delegate:delegateCopy];
        v22 = [HDMHPromptedAssessmentsManager alloc];
        profile2 = [clientCopy profile];
        v24 = [(HDMHPromptedAssessmentsManager *)v22 initWithProfile:profile2 periodicAssessmentsAvailability:v18 loggingPatternEscalationsAvailability:v20];
        manager = v21->_manager;
        v21->_manager = v24;
      }

      else
      {
        [MEMORY[0x277CCA9B8] hk_assignError:error code:110 format:{@"No availability extension found for %@", v19}];
        v21 = 0;
      }

      goto LABEL_14;
    }

    [MEMORY[0x277CCA9B8] hk_assignError:error code:110 format:{@"No availability extension found for %@", v17}];
  }

  else
  {
    v18 = [MEMORY[0x277CCA9B8] hk_error:3 format:{@"No profile extension found for %@", objc_opt_class()}];
    if (v18)
    {
      if (error)
      {
        v26 = v18;
        *error = v18;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  v21 = 0;
LABEL_14:

  return v21;
}

+ (id)taskIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)_clientRemoteObjectProxy
{
  if (self)
  {
    client = [self client];
    connection = [client connection];
    remoteObjectProxy = [connection remoteObjectProxy];
  }

  else
  {
    remoteObjectProxy = 0;
  }

  return remoteObjectProxy;
}

@end