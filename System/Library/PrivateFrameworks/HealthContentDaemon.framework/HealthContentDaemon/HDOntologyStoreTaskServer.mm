@interface HDOntologyStoreTaskServer
+ (id)createTaskServerWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate error:(id *)error;
- (id)updateCoordinator;
- (void)connectionInterrupted;
- (void)connectionInvalidated;
- (void)ontologyShardDownloader:(id)downloader didStageEntry:(id)entry;
- (void)ontologyShardImporter:(id)importer didImportEntry:(id)entry;
- (void)remote_downloadRequiredShardsWithCompletion:(id)completion;
- (void)remote_importRequiredShardsWithCompletion:(id)completion;
- (void)remote_insertEntries:(id)entries completion:(id)completion;
- (void)remote_markShardsWithIdentifiers:(id)identifiers options:(unint64_t)options completion:(id)completion;
- (void)remote_observeOntologyStoreChanges:(BOOL)changes completion:(id)completion;
- (void)remote_ontologyServerURLWithCompletion:(id)completion;
- (void)remote_ontologyShardRegistryEntriesWithCompletion:(id)completion;
- (void)remote_pruneOntologyWithOptions:(unint64_t)options completion:(id)completion;
- (void)remote_requestGatedOntologyUpdateWithCompletion:(id)completion;
- (void)remote_setOntologyServerURL:(id)l completion:(id)completion;
- (void)remote_shardRequirementStatusesWithCompletion:(id)completion;
- (void)remote_updateOntologyForReason:(int64_t)reason completion:(id)completion;
- (void)remote_updateOntologyWithConfiguration:(id)configuration completion:(id)completion;
- (void)remote_updateOntologyWithEntry:(id)entry completion:(id)completion;
- (void)remote_updateShardRegistryWithCompletion:(id)completion;
@end

@implementation HDOntologyStoreTaskServer

+ (id)createTaskServerWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate error:(id *)error
{
  dCopy = d;
  configurationCopy = configuration;
  clientCopy = client;
  delegateCopy = delegate;
  profile = [clientCopy profile];
  daemon = [profile daemon];
  behavior = [daemon behavior];
  supportsOntology = [behavior supportsOntology];

  if (supportsOntology)
  {
    v19 = [(HDStandardTaskServer *)[HDOntologyStoreTaskServer alloc] initWithUUID:dCopy configuration:configurationCopy client:clientCopy delegate:delegateCopy];
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:110 description:@"Device does not support health ontology"];
    v19 = 0;
  }

  return v19;
}

- (void)connectionInvalidated
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  selfCopy = self;
  _os_log_error_impl(&dword_2514A1000, a2, OS_LOG_TYPE_ERROR, "%{public}@: Connection Invalidated", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)connectionInterrupted
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  selfCopy = self;
  _os_log_error_impl(&dword_2514A1000, a2, OS_LOG_TYPE_ERROR, "%{public}@: Connection Interrupted", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)remote_insertEntries:(id)entries completion:(id)completion
{
  completionCopy = completion;
  entriesCopy = entries;
  updateCoordinator = [(HDOntologyStoreTaskServer *)self updateCoordinator];
  shardRegistry = [updateCoordinator shardRegistry];
  v12 = 0;
  v10 = [shardRegistry insertEntries:entriesCopy error:&v12];

  v11 = v12;
  completionCopy[2](completionCopy, v10, v11);
}

- (void)ontologyShardDownloader:(id)downloader didStageEntry:(id)entry
{
  v22 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __67__HDOntologyStoreTaskServer_ontologyShardDownloader_didStageEntry___block_invoke;
  v15 = &unk_2796BA208;
  selfCopy = self;
  v6 = entryCopy;
  v17 = v6;
  v7 = [(HDStandardTaskServer *)self remoteObjectProxyWithErrorHandler:&v12];
  _HKInitializeLogging();
  v8 = HKLogHealthOntology();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);

  if (v9)
  {
    v10 = HKLogHealthOntology();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      selfCopy2 = self;
      v20 = 2114;
      v21 = v6;
      _os_log_impl(&dword_2514A1000, v10, OS_LOG_TYPE_INFO, "%{public}@: Notify client for staged entry %{public}@", buf, 0x16u);
    }
  }

  [v7 client_didStageEntry:{v6, v12, v13, v14, v15, selfCopy}];

  v11 = *MEMORY[0x277D85DE8];
}

void __67__HDOntologyStoreTaskServer_ontologyShardDownloader_didStageEntry___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogHealthOntology();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __67__HDOntologyStoreTaskServer_ontologyShardDownloader_didStageEntry___block_invoke_cold_1(a1);
  }
}

- (void)ontologyShardImporter:(id)importer didImportEntry:(id)entry
{
  v22 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __66__HDOntologyStoreTaskServer_ontologyShardImporter_didImportEntry___block_invoke;
  v15 = &unk_2796BA208;
  selfCopy = self;
  v6 = entryCopy;
  v17 = v6;
  v7 = [(HDStandardTaskServer *)self remoteObjectProxyWithErrorHandler:&v12];
  _HKInitializeLogging();
  v8 = HKLogHealthOntology();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);

  if (v9)
  {
    v10 = HKLogHealthOntology();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      selfCopy2 = self;
      v20 = 2114;
      v21 = v6;
      _os_log_impl(&dword_2514A1000, v10, OS_LOG_TYPE_INFO, "%{public}@: Notify client for imported entry %{public}@", buf, 0x16u);
    }
  }

  [v7 client_didImportEntry:{v6, v12, v13, v14, v15, selfCopy}];

  v11 = *MEMORY[0x277D85DE8];
}

void __66__HDOntologyStoreTaskServer_ontologyShardImporter_didImportEntry___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogHealthOntology();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __66__HDOntologyStoreTaskServer_ontologyShardImporter_didImportEntry___block_invoke_cold_1(a1);
  }
}

- (void)remote_updateOntologyWithConfiguration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  identifier = [configurationCopy identifier];
  if (HKIsKnownOntologyShardIdentifier())
  {
    v8 = HKOntologyShardSchemaTypeForShardIdentifier();
    v9 = HKCurrentSchemaVersionForShardIdentifier();
    updateCoordinator = [(HDOntologyStoreTaskServer *)self updateCoordinator];
    v11 = [configurationCopy url];
    [updateCoordinator updateOntologyWithShardIdentifier:identifier schemaType:v8 schemaVersion:v9 shardURL:v11 shardVersion:objc_msgSend(configurationCopy shouldPruneOldShard:"version") reason:objc_msgSend(configurationCopy completion:{"shouldPruneOldShard"), 1, completionCopy}];

    completionCopy = updateCoordinator;
  }

  else
  {
    v8 = [MEMORY[0x277CCA9B8] hk_error:3 format:{@"[%@] Attempting to save an unknown shard identifier: %@", self, identifier}];
    (*(completionCopy + 2))(completionCopy, 0, v8);
  }
}

- (id)updateCoordinator
{
  if (self)
  {
    profile = [self profile];
    daemon = [profile daemon];
    ontologyUpdateCoordinator = [daemon ontologyUpdateCoordinator];
  }

  else
  {
    ontologyUpdateCoordinator = 0;
  }

  return ontologyUpdateCoordinator;
}

- (void)remote_ontologyShardRegistryEntriesWithCompletion:(id)completion
{
  completionCopy = completion;
  updateCoordinator = [(HDOntologyStoreTaskServer *)self updateCoordinator];
  shardRegistry = [updateCoordinator shardRegistry];
  v11 = 0;
  v7 = [shardRegistry entriesWithPredicate:0 orderingTerms:0 error:&v11];
  v8 = v11;

  v9 = OUTLINED_FUNCTION_1_5();
  v10(v9, v7, v8);
}

- (void)remote_ontologyServerURLWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = OUTLINED_FUNCTION_5();
  updateCoordinator = [(HDOntologyStoreTaskServer *)v5 updateCoordinator];
  ontologyServerURL = [updateCoordinator ontologyServerURL];

  (v3)[2](v3, ontologyServerURL, 0);
}

- (void)remote_setOntologyServerURL:(id)l completion:(id)completion
{
  OUTLINED_FUNCTION_3_3();
  v9 = v6;
  v7 = v4;
  updateCoordinator = [(HDOntologyStoreTaskServer *)v5 updateCoordinator];
  [updateCoordinator setOntologyServerURL:v7];

  v9[2](v9, 1, 0);
}

- (void)remote_updateShardRegistryWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = OUTLINED_FUNCTION_5();
  updateCoordinator = [(HDOntologyStoreTaskServer *)v5 updateCoordinator];
  [updateCoordinator updateShardRegistryWithCompletion:v3];
}

- (void)remote_downloadRequiredShardsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = OUTLINED_FUNCTION_5();
  updateCoordinator = [(HDOntologyStoreTaskServer *)v5 updateCoordinator];
  [updateCoordinator downloadRequiredShardsWithCompletion:v3];
}

- (void)remote_importRequiredShardsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = OUTLINED_FUNCTION_5();
  updateCoordinator = [(HDOntologyStoreTaskServer *)v5 updateCoordinator];
  importer = [updateCoordinator importer];
  v10 = 0;
  v8 = [importer importStagedShardFilesWithError:&v10];
  v9 = v10;

  (v3)[2](v3, v8, v9);
}

- (void)remote_updateOntologyForReason:(int64_t)reason completion:(id)completion
{
  OUTLINED_FUNCTION_3_3();
  v7 = v6;
  updateCoordinator = [(HDOntologyStoreTaskServer *)v5 updateCoordinator];
  [updateCoordinator updateOntologyWithReason:v4 completion:v7];
}

- (void)remote_requestGatedOntologyUpdateWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = OUTLINED_FUNCTION_5();
  updateCoordinator = [(HDOntologyStoreTaskServer *)v5 updateCoordinator];
  [updateCoordinator triggerGatedUpdateWithMaximumDelay:v3 completion:1.0];
}

- (void)remote_pruneOntologyWithOptions:(unint64_t)options completion:(id)completion
{
  OUTLINED_FUNCTION_3_3();
  v7 = v6;
  updateCoordinator = [(HDOntologyStoreTaskServer *)v5 updateCoordinator];
  pruner = [updateCoordinator pruner];
  v12 = 0;
  v10 = [pruner pruneOntologyWithOptions:v4 error:&v12];
  v11 = v12;

  v7[2](v7, v10, v11);
}

- (void)remote_markShardsWithIdentifiers:(id)identifiers options:(unint64_t)options completion:(id)completion
{
  completionCopy = completion;
  identifiersCopy = identifiers;
  updateCoordinator = [(HDOntologyStoreTaskServer *)self updateCoordinator];
  featureCoordinator = [updateCoordinator featureCoordinator];
  v16 = 0;
  v12 = [featureCoordinator markShardsWithIdentifiers:identifiersCopy options:options error:&v16];

  v13 = v16;
  v14 = OUTLINED_FUNCTION_1_5();
  v15(v14, v12, v13);
}

- (void)remote_shardRequirementStatusesWithCompletion:(id)completion
{
  OUTLINED_FUNCTION_3_3();
  v5 = v3;
  updateCoordinator = [(HDOntologyStoreTaskServer *)v4 updateCoordinator];
  featureCoordinator = [updateCoordinator featureCoordinator];
  shardRequirementStatuses = [featureCoordinator shardRequirementStatuses];
  (v3)[2](v5, shardRequirementStatuses, 0);
}

- (void)remote_observeOntologyStoreChanges:(BOOL)changes completion:(id)completion
{
  changesCopy = changes;
  completionCopy = completion;
  updateCoordinator = [(HDOntologyStoreTaskServer *)self updateCoordinator];
  downloader = [updateCoordinator downloader];

  updateCoordinator2 = [(HDOntologyStoreTaskServer *)self updateCoordinator];
  importer = [updateCoordinator2 importer];

  if (changesCopy)
  {
    [downloader addOntologyShardDownloaderObserver:self queue:0];
    [importer addOntologyShardImporterObserver:self queue:0];
  }

  else
  {
    [downloader removeOntologyShardDownloaderObserver:self];
    [importer removeOntologyShardImporterObserver:self];
  }

  v10 = OUTLINED_FUNCTION_1_5();
  v11(v10, 1, 0);
}

- (void)remote_updateOntologyWithEntry:(id)entry completion:(id)completion
{
  completionCopy = completion;
  entryCopy = entry;
  updateCoordinator = [(HDOntologyStoreTaskServer *)self updateCoordinator];
  identifier = [entryCopy identifier];
  schemaType = [entryCopy schemaType];
  schemaVersion = [entryCopy schemaVersion];
  availableURL = [entryCopy availableURL];
  availableVersion = [entryCopy availableVersion];

  [updateCoordinator updateOntologyWithShardIdentifier:identifier schemaType:schemaType schemaVersion:schemaVersion shardURL:availableURL shardVersion:availableVersion shouldPruneOldShard:1 reason:5 completion:completionCopy];
}

void __67__HDOntologyStoreTaskServer_ontologyShardDownloader_didStageEntry___block_invoke_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4_2(&dword_2514A1000, v3, v4, "%{public}@: Unable to notify client for staged entry %{public}@: %{public}@");
  v5 = *MEMORY[0x277D85DE8];
}

void __66__HDOntologyStoreTaskServer_ontologyShardImporter_didImportEntry___block_invoke_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4_2(&dword_2514A1000, v3, v4, "%{public}@: Unable to notify client for imported entry %{public}@: %{public}@");
  v5 = *MEMORY[0x277D85DE8];
}

@end