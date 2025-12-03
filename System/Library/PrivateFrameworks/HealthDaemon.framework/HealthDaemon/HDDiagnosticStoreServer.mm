@interface HDDiagnosticStoreServer
- (void)remote_fetchDiagnosticsWithKeys:(id)keys completion:(id)completion;
- (void)remote_fetchSQLPragma:(int64_t)pragma completion:(id)completion;
- (void)remote_fetchURLForAnalyticsFileWithName:(id)name completion:(id)completion;
@end

@implementation HDDiagnosticStoreServer

- (void)remote_fetchDiagnosticsWithKeys:(id)keys completion:(id)completion
{
  v6 = MEMORY[0x277D10AF8];
  completionCopy = completion;
  keysCopy = keys;
  sharedDiagnosticManager = [v6 sharedDiagnosticManager];
  v9 = [sharedDiagnosticManager diagnosticsForKeys:keysCopy];

  (*(completion + 2))(completionCopy, v9, 0);
}

- (void)remote_fetchURLForAnalyticsFileWithName:(id)name completion:(id)completion
{
  v6 = MEMORY[0x277D10AB0];
  completionCopy = completion;
  nameCopy = name;
  v9 = [v6 alloc];
  profile = [(HDStandardTaskServer *)self profile];
  v12 = [v9 initWithProfile:profile];

  v11 = [v12 URLForAnalyticsFileWithName:nameCopy];

  completionCopy[2](completionCopy, v11, 0);
}

- (void)remote_fetchSQLPragma:(int64_t)pragma completion:(id)completion
{
  completionCopy = completion;
  if (pragma >= 3)
  {
    v13 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"Unsupported PRAGMA"];
    completionCopy[2](completionCopy, 0, v13);
  }

  else
  {
    v7 = off_278624128[pragma];
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__119;
    v29 = __Block_byref_object_dispose__119;
    v30 = 0;
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__119;
    v23 = __Block_byref_object_dispose__119;
    v24 = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __60__HDDiagnosticStoreServer_remote_fetchSQLPragma_completion___block_invoke;
    aBlock[3] = &unk_278624108;
    v16 = v7;
    v17 = &v19;
    v18 = &v25;
    v8 = _Block_copy(aBlock);
    profile = [(HDStandardTaskServer *)self profile];
    database = [profile database];
    v11 = +[HDDatabaseTransactionContext contextForReadingProtectedData];
    v12 = (v20 + 5);
    obj = v20[5];
    [database performTransactionWithContext:v11 error:&obj block:v8 inaccessibilityHandler:0];
    objc_storeStrong(v12, obj);

    completionCopy[2](completionCopy, v26[5], v20[5]);
    _Block_object_dispose(&v19, 8);

    _Block_object_dispose(&v25, 8);
  }
}

uint64_t __60__HDDiagnosticStoreServer_remote_fetchSQLPragma_completion___block_invoke(void *a1, void *a2)
{
  v3 = [a2 protectedDatabase];
  v4 = a1[4];
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__HDDiagnosticStoreServer_remote_fetchSQLPragma_completion___block_invoke_3;
  v9[3] = &unk_278614620;
  v9[4] = a1[6];
  obj = v6;
  v7 = [v3 executeSQL:v4 error:&obj bindingHandler:&__block_literal_global_140 enumerationHandler:v9];
  objc_storeStrong((v5 + 40), obj);

  return v7;
}

uint64_t __60__HDDiagnosticStoreServer_remote_fetchSQLPragma_completion___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x22AAC6C90](a2, 0);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 1;
}

@end