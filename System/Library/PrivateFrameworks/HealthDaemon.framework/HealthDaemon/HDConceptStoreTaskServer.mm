@interface HDConceptStoreTaskServer
+ (id)requiredEntitlements;
- (void)conceptIndexManagerDidChangeExecutionState:(unint64_t)a3;
- (void)connectionInvalidated;
- (void)remote_currentIndexingState:(id)a3;
- (void)remote_queryConceptByIdentifier:(id)a3 loadRelationships:(BOOL)a4 completion:(id)a5;
- (void)remote_queryCountOfConceptsAssociatedToUserRecordsWithCompletion:(id)a3;
- (void)remote_queryRelationshipsForNodeWithID:(id)a3 completion:(id)a4;
- (void)remote_startObservingConceptIndexManagerWithCompletion:(id)a3;
@end

@implementation HDConceptStoreTaskServer

+ (id)requiredEntitlements
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = *MEMORY[0x277CCC8B0];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)connectionInvalidated
{
  v4 = [(HDStandardTaskServer *)self profile];
  v3 = [v4 conceptIndexManager];
  [v3 removeObserver:self];
}

- (void)remote_startObservingConceptIndexManagerWithCompletion:(id)a3
{
  v6 = a3;
  v4 = [(HDStandardTaskServer *)self profile];
  v5 = [v4 conceptIndexManager];
  [v5 addObserver:self];

  v6[2](v6, 1, 0);
}

- (void)remote_currentIndexingState:(id)a3
{
  v7 = a3;
  v4 = [(HDStandardTaskServer *)self profile];
  v5 = [v4 conceptIndexManager];

  if (v5)
  {
    v6 = [v5 currentExecutionState];
  }

  else
  {
    v6 = 0;
  }

  v7[2](v7, v6);
}

- (void)remote_queryConceptByIdentifier:(id)a3 loadRelationships:(BOOL)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [(HDStandardTaskServer *)self profile];
  v11 = [v10 internalContentDatabaseManager];

  v14 = 0;
  v12 = [v11 conceptForIdentifier:v9 options:v7 error:&v14];

  v13 = v14;
  v8[2](v8, v12, v13);
}

- (void)remote_queryRelationshipsForNodeWithID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HDStandardTaskServer *)self profile];
  v9 = [v8 internalContentDatabaseManager];

  v12 = 0;
  v10 = [v9 relationshipsForConceptWithIdentifier:v7 error:&v12];

  v11 = v12;
  v6[2](v6, v10, v11);
}

- (void)remote_queryCountOfConceptsAssociatedToUserRecordsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HDStandardTaskServer *)self profile];
  v8 = 0;
  v6 = [HDConceptIndexEntity numberOfIndexedConceptsWithProfile:v5 error:&v8];
  v7 = v8;

  v4[2](v4, v6, v7);
}

- (void)conceptIndexManagerDidChangeExecutionState:(unint64_t)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __71__HDConceptStoreTaskServer_conceptIndexManagerDidChangeExecutionState___block_invoke;
  v5[3] = &unk_2786138D0;
  v5[4] = self;
  v4 = [(HDStandardTaskServer *)self remoteObjectProxyWithErrorHandler:v5];
  [v4 clientRemote_conceptIndexManagerDidChangeState:a3];
}

void __71__HDConceptStoreTaskServer_conceptIndexManagerDidChangeExecutionState___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = v4;
    v8 = HKSensitiveLogItem();
    v9 = 138543618;
    v10 = v6;
    v11 = 2114;
    v12 = v8;
    _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "%{public}@: Failed to call HKOntologyTaskServerClient clientRemote_conceptIndexManagerDidChangeState: with error: %{public}@", &v9, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

@end