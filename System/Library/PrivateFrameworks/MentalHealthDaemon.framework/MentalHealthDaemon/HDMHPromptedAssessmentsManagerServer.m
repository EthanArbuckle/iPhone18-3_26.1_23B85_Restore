@interface HDMHPromptedAssessmentsManagerServer
+ (id)createTaskServerWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 error:(id *)a7;
+ (id)taskIdentifier;
- (id)_clientRemoteObjectProxy;
- (void)promptedAssessmentsManagerDidUpdatePromptedAssessments:(id)a3;
- (void)remote_getPromptedAssessmentsWithCompletion:(id)a3;
- (void)remote_startObservingChangesWithCompletion:(id)a3;
- (void)remote_stopObservingChanges;
@end

@implementation HDMHPromptedAssessmentsManagerServer

- (void)remote_getPromptedAssessmentsWithCompletion:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__0;
  v14 = __Block_byref_object_dispose__0;
  v15 = 0;
  v5 = [(HDStandardTaskServer *)self profile];
  v6 = [v5 database];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __84__HDMHPromptedAssessmentsManagerServer_remote_getPromptedAssessmentsWithCompletion___block_invoke;
  v8[3] = &unk_2798AAC38;
  v8[5] = &v10;
  v9 = 0;
  v8[4] = self;
  [v6 performHighPriorityTransactionsWithError:&v9 block:v8];
  v7 = v9;

  v4[2](v4, v11[5], v7);
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

- (void)remote_startObservingChangesWithCompletion:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC2F0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = self;
    _os_log_impl(&dword_258977000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Registering for extension changes", &v7, 0xCu);
  }

  [(HDMHPromptedAssessmentsManager *)self->_manager registerObserver:self queue:0];
  v4[2](v4, 1, 0);

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
    v6 = self;
    _os_log_impl(&dword_258977000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Unregistering for extension changes", &v5, 0xCu);
  }

  [(HDMHPromptedAssessmentsManager *)self->_manager unregisterObserver:self];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)promptedAssessmentsManagerDidUpdatePromptedAssessments:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC2F0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = self;
    _os_log_impl(&dword_258977000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notifying client of prompted assessment update", &v7, 0xCu);
  }

  v5 = [(HDMHPromptedAssessmentsManagerServer *)self _clientRemoteObjectProxy];
  [v5 client_promptedAssessmentsManagerDidUpdatePromptedAssessments];

  v6 = *MEMORY[0x277D85DE8];
}

+ (id)createTaskServerWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [v13 profile];
  v16 = [v15 profileExtensionWithIdentifier:*MEMORY[0x277D28040]];

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
        v21 = [(HDStandardTaskServer *)[HDMHPromptedAssessmentsManagerServer alloc] initWithUUID:v11 configuration:v12 client:v13 delegate:v14];
        v22 = [HDMHPromptedAssessmentsManager alloc];
        v23 = [v13 profile];
        v24 = [(HDMHPromptedAssessmentsManager *)v22 initWithProfile:v23 periodicAssessmentsAvailability:v18 loggingPatternEscalationsAvailability:v20];
        manager = v21->_manager;
        v21->_manager = v24;
      }

      else
      {
        [MEMORY[0x277CCA9B8] hk_assignError:a7 code:110 format:{@"No availability extension found for %@", v19}];
        v21 = 0;
      }

      goto LABEL_14;
    }

    [MEMORY[0x277CCA9B8] hk_assignError:a7 code:110 format:{@"No availability extension found for %@", v17}];
  }

  else
  {
    v18 = [MEMORY[0x277CCA9B8] hk_error:3 format:{@"No profile extension found for %@", objc_opt_class()}];
    if (v18)
    {
      if (a7)
      {
        v26 = v18;
        *a7 = v18;
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
  if (a1)
  {
    v1 = [a1 client];
    v2 = [v1 connection];
    v3 = [v2 remoteObjectProxy];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end