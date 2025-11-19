@interface HDOntologyStoreTaskServer
+ (id)createTaskServerWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 error:(id *)a7;
- (id)updateCoordinator;
- (void)connectionInterrupted;
- (void)connectionInvalidated;
- (void)ontologyShardDownloader:(id)a3 didStageEntry:(id)a4;
- (void)ontologyShardImporter:(id)a3 didImportEntry:(id)a4;
- (void)remote_downloadRequiredShardsWithCompletion:(id)a3;
- (void)remote_importRequiredShardsWithCompletion:(id)a3;
- (void)remote_insertEntries:(id)a3 completion:(id)a4;
- (void)remote_markShardsWithIdentifiers:(id)a3 options:(unint64_t)a4 completion:(id)a5;
- (void)remote_observeOntologyStoreChanges:(BOOL)a3 completion:(id)a4;
- (void)remote_ontologyServerURLWithCompletion:(id)a3;
- (void)remote_ontologyShardRegistryEntriesWithCompletion:(id)a3;
- (void)remote_pruneOntologyWithOptions:(unint64_t)a3 completion:(id)a4;
- (void)remote_requestGatedOntologyUpdateWithCompletion:(id)a3;
- (void)remote_setOntologyServerURL:(id)a3 completion:(id)a4;
- (void)remote_shardRequirementStatusesWithCompletion:(id)a3;
- (void)remote_updateOntologyForReason:(int64_t)a3 completion:(id)a4;
- (void)remote_updateOntologyWithConfiguration:(id)a3 completion:(id)a4;
- (void)remote_updateOntologyWithEntry:(id)a3 completion:(id)a4;
- (void)remote_updateShardRegistryWithCompletion:(id)a3;
@end

@implementation HDOntologyStoreTaskServer

+ (id)createTaskServerWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [v13 profile];
  v16 = [v15 daemon];
  v17 = [v16 behavior];
  v18 = [v17 supportsOntology];

  if (v18)
  {
    v19 = [(HDStandardTaskServer *)[HDOntologyStoreTaskServer alloc] initWithUUID:v11 configuration:v12 client:v13 delegate:v14];
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a7 code:110 description:@"Device does not support health ontology"];
    v19 = 0;
  }

  return v19;
}

- (void)connectionInvalidated
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_2514A1000, a2, OS_LOG_TYPE_ERROR, "%{public}@: Connection Invalidated", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)connectionInterrupted
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_2514A1000, a2, OS_LOG_TYPE_ERROR, "%{public}@: Connection Interrupted", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)remote_insertEntries:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HDOntologyStoreTaskServer *)self updateCoordinator];
  v9 = [v8 shardRegistry];
  v12 = 0;
  v10 = [v9 insertEntries:v7 error:&v12];

  v11 = v12;
  v6[2](v6, v10, v11);
}

- (void)ontologyShardDownloader:(id)a3 didStageEntry:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __67__HDOntologyStoreTaskServer_ontologyShardDownloader_didStageEntry___block_invoke;
  v15 = &unk_2796BA208;
  v16 = self;
  v6 = v5;
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
      v19 = self;
      v20 = 2114;
      v21 = v6;
      _os_log_impl(&dword_2514A1000, v10, OS_LOG_TYPE_INFO, "%{public}@: Notify client for staged entry %{public}@", buf, 0x16u);
    }
  }

  [v7 client_didStageEntry:{v6, v12, v13, v14, v15, v16}];

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

- (void)ontologyShardImporter:(id)a3 didImportEntry:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __66__HDOntologyStoreTaskServer_ontologyShardImporter_didImportEntry___block_invoke;
  v15 = &unk_2796BA208;
  v16 = self;
  v6 = v5;
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
      v19 = self;
      v20 = 2114;
      v21 = v6;
      _os_log_impl(&dword_2514A1000, v10, OS_LOG_TYPE_INFO, "%{public}@: Notify client for imported entry %{public}@", buf, 0x16u);
    }
  }

  [v7 client_didImportEntry:{v6, v12, v13, v14, v15, v16}];

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

- (void)remote_updateOntologyWithConfiguration:(id)a3 completion:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [v12 identifier];
  if (HKIsKnownOntologyShardIdentifier())
  {
    v8 = HKOntologyShardSchemaTypeForShardIdentifier();
    v9 = HKCurrentSchemaVersionForShardIdentifier();
    v10 = [(HDOntologyStoreTaskServer *)self updateCoordinator];
    v11 = [v12 url];
    [v10 updateOntologyWithShardIdentifier:v7 schemaType:v8 schemaVersion:v9 shardURL:v11 shardVersion:objc_msgSend(v12 shouldPruneOldShard:"version") reason:objc_msgSend(v12 completion:{"shouldPruneOldShard"), 1, v6}];

    v6 = v10;
  }

  else
  {
    v8 = [MEMORY[0x277CCA9B8] hk_error:3 format:{@"[%@] Attempting to save an unknown shard identifier: %@", self, v7}];
    (*(v6 + 2))(v6, 0, v8);
  }
}

- (id)updateCoordinator
{
  if (a1)
  {
    v1 = [a1 profile];
    v2 = [v1 daemon];
    v3 = [v2 ontologyUpdateCoordinator];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)remote_ontologyShardRegistryEntriesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HDOntologyStoreTaskServer *)self updateCoordinator];
  v6 = [v5 shardRegistry];
  v11 = 0;
  v7 = [v6 entriesWithPredicate:0 orderingTerms:0 error:&v11];
  v8 = v11;

  v9 = OUTLINED_FUNCTION_1_5();
  v10(v9, v7, v8);
}

- (void)remote_ontologyServerURLWithCompletion:(id)a3
{
  v4 = a3;
  v5 = OUTLINED_FUNCTION_5();
  v6 = [(HDOntologyStoreTaskServer *)v5 updateCoordinator];
  v7 = [v6 ontologyServerURL];

  (v3)[2](v3, v7, 0);
}

- (void)remote_setOntologyServerURL:(id)a3 completion:(id)a4
{
  OUTLINED_FUNCTION_3_3();
  v9 = v6;
  v7 = v4;
  v8 = [(HDOntologyStoreTaskServer *)v5 updateCoordinator];
  [v8 setOntologyServerURL:v7];

  v9[2](v9, 1, 0);
}

- (void)remote_updateShardRegistryWithCompletion:(id)a3
{
  v4 = a3;
  v5 = OUTLINED_FUNCTION_5();
  v6 = [(HDOntologyStoreTaskServer *)v5 updateCoordinator];
  [v6 updateShardRegistryWithCompletion:v3];
}

- (void)remote_downloadRequiredShardsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = OUTLINED_FUNCTION_5();
  v6 = [(HDOntologyStoreTaskServer *)v5 updateCoordinator];
  [v6 downloadRequiredShardsWithCompletion:v3];
}

- (void)remote_importRequiredShardsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = OUTLINED_FUNCTION_5();
  v6 = [(HDOntologyStoreTaskServer *)v5 updateCoordinator];
  v7 = [v6 importer];
  v10 = 0;
  v8 = [v7 importStagedShardFilesWithError:&v10];
  v9 = v10;

  (v3)[2](v3, v8, v9);
}

- (void)remote_updateOntologyForReason:(int64_t)a3 completion:(id)a4
{
  OUTLINED_FUNCTION_3_3();
  v7 = v6;
  v8 = [(HDOntologyStoreTaskServer *)v5 updateCoordinator];
  [v8 updateOntologyWithReason:v4 completion:v7];
}

- (void)remote_requestGatedOntologyUpdateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = OUTLINED_FUNCTION_5();
  v6 = [(HDOntologyStoreTaskServer *)v5 updateCoordinator];
  [v6 triggerGatedUpdateWithMaximumDelay:v3 completion:1.0];
}

- (void)remote_pruneOntologyWithOptions:(unint64_t)a3 completion:(id)a4
{
  OUTLINED_FUNCTION_3_3();
  v7 = v6;
  v8 = [(HDOntologyStoreTaskServer *)v5 updateCoordinator];
  v9 = [v8 pruner];
  v12 = 0;
  v10 = [v9 pruneOntologyWithOptions:v4 error:&v12];
  v11 = v12;

  v7[2](v7, v10, v11);
}

- (void)remote_markShardsWithIdentifiers:(id)a3 options:(unint64_t)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(HDOntologyStoreTaskServer *)self updateCoordinator];
  v11 = [v10 featureCoordinator];
  v16 = 0;
  v12 = [v11 markShardsWithIdentifiers:v9 options:a4 error:&v16];

  v13 = v16;
  v14 = OUTLINED_FUNCTION_1_5();
  v15(v14, v12, v13);
}

- (void)remote_shardRequirementStatusesWithCompletion:(id)a3
{
  OUTLINED_FUNCTION_3_3();
  v5 = v3;
  v8 = [(HDOntologyStoreTaskServer *)v4 updateCoordinator];
  v6 = [v8 featureCoordinator];
  v7 = [v6 shardRequirementStatuses];
  (v3)[2](v5, v7, 0);
}

- (void)remote_observeOntologyStoreChanges:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(HDOntologyStoreTaskServer *)self updateCoordinator];
  v12 = [v7 downloader];

  v8 = [(HDOntologyStoreTaskServer *)self updateCoordinator];
  v9 = [v8 importer];

  if (v4)
  {
    [v12 addOntologyShardDownloaderObserver:self queue:0];
    [v9 addOntologyShardImporterObserver:self queue:0];
  }

  else
  {
    [v12 removeOntologyShardDownloaderObserver:self];
    [v9 removeOntologyShardImporterObserver:self];
  }

  v10 = OUTLINED_FUNCTION_1_5();
  v11(v10, 1, 0);
}

- (void)remote_updateOntologyWithEntry:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v13 = [(HDOntologyStoreTaskServer *)self updateCoordinator];
  v8 = [v7 identifier];
  v9 = [v7 schemaType];
  v10 = [v7 schemaVersion];
  v11 = [v7 availableURL];
  v12 = [v7 availableVersion];

  [v13 updateOntologyWithShardIdentifier:v8 schemaType:v9 schemaVersion:v10 shardURL:v11 shardVersion:v12 shouldPruneOldShard:1 reason:5 completion:v6];
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