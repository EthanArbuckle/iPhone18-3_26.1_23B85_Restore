@interface HDConceptStoreTaskServer
+ (id)requiredEntitlements;
- (void)conceptIndexManagerDidChangeExecutionState:(unint64_t)state;
- (void)connectionInvalidated;
- (void)remote_currentIndexingState:(id)state;
- (void)remote_queryConceptByIdentifier:(id)identifier loadRelationships:(BOOL)relationships completion:(id)completion;
- (void)remote_queryCountOfConceptsAssociatedToUserRecordsWithCompletion:(id)completion;
- (void)remote_queryRelationshipsForNodeWithID:(id)d completion:(id)completion;
- (void)remote_startObservingConceptIndexManagerWithCompletion:(id)completion;
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
  profile = [(HDStandardTaskServer *)self profile];
  conceptIndexManager = [profile conceptIndexManager];
  [conceptIndexManager removeObserver:self];
}

- (void)remote_startObservingConceptIndexManagerWithCompletion:(id)completion
{
  completionCopy = completion;
  profile = [(HDStandardTaskServer *)self profile];
  conceptIndexManager = [profile conceptIndexManager];
  [conceptIndexManager addObserver:self];

  completionCopy[2](completionCopy, 1, 0);
}

- (void)remote_currentIndexingState:(id)state
{
  stateCopy = state;
  profile = [(HDStandardTaskServer *)self profile];
  conceptIndexManager = [profile conceptIndexManager];

  if (conceptIndexManager)
  {
    currentExecutionState = [conceptIndexManager currentExecutionState];
  }

  else
  {
    currentExecutionState = 0;
  }

  stateCopy[2](stateCopy, currentExecutionState);
}

- (void)remote_queryConceptByIdentifier:(id)identifier loadRelationships:(BOOL)relationships completion:(id)completion
{
  relationshipsCopy = relationships;
  completionCopy = completion;
  identifierCopy = identifier;
  profile = [(HDStandardTaskServer *)self profile];
  internalContentDatabaseManager = [profile internalContentDatabaseManager];

  v14 = 0;
  v12 = [internalContentDatabaseManager conceptForIdentifier:identifierCopy options:relationshipsCopy error:&v14];

  v13 = v14;
  completionCopy[2](completionCopy, v12, v13);
}

- (void)remote_queryRelationshipsForNodeWithID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  profile = [(HDStandardTaskServer *)self profile];
  internalContentDatabaseManager = [profile internalContentDatabaseManager];

  v12 = 0;
  v10 = [internalContentDatabaseManager relationshipsForConceptWithIdentifier:dCopy error:&v12];

  v11 = v12;
  completionCopy[2](completionCopy, v10, v11);
}

- (void)remote_queryCountOfConceptsAssociatedToUserRecordsWithCompletion:(id)completion
{
  completionCopy = completion;
  profile = [(HDStandardTaskServer *)self profile];
  v8 = 0;
  v6 = [HDConceptIndexEntity numberOfIndexedConceptsWithProfile:profile error:&v8];
  v7 = v8;

  completionCopy[2](completionCopy, v6, v7);
}

- (void)conceptIndexManagerDidChangeExecutionState:(unint64_t)state
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __71__HDConceptStoreTaskServer_conceptIndexManagerDidChangeExecutionState___block_invoke;
  v5[3] = &unk_2786138D0;
  v5[4] = self;
  v4 = [(HDStandardTaskServer *)self remoteObjectProxyWithErrorHandler:v5];
  [v4 clientRemote_conceptIndexManagerDidChangeState:state];
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