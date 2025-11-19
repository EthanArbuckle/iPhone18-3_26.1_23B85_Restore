@interface HDDatabaseValidationTaskServer
- (void)remote_validateDatabase:(int64_t)a3 clientCompletionHandler:(id)a4 errorHandlerIdentifier:(id)a5;
- (void)remote_validateEntitiesWithClientCompletionHandler:(id)a3 errorHandlerIdentifier:(id)a4;
@end

@implementation HDDatabaseValidationTaskServer

- (void)remote_validateDatabase:(int64_t)a3 clientCompletionHandler:(id)a4 errorHandlerIdentifier:(id)a5
{
  v8 = a5;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __105__HDDatabaseValidationTaskServer_remote_validateDatabase_clientCompletionHandler_errorHandlerIdentifier___block_invoke;
  v23[3] = &unk_2786138D0;
  v23[4] = self;
  v9 = a4;
  v10 = [(HDStandardTaskServer *)self remoteObjectProxyWithErrorHandler:v23];
  v11 = [(HDStandardTaskServer *)self profile];
  v12 = [v11 database];
  v13 = +[HDDatabaseTransactionContext contextForReadingProtectedData];
  v21 = a3;
  v22 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __105__HDDatabaseValidationTaskServer_remote_validateDatabase_clientCompletionHandler_errorHandlerIdentifier___block_invoke_293;
  v18[3] = &unk_278614698;
  v19 = v10;
  v20 = v8;
  v14 = v8;
  v15 = v10;
  v16 = [v12 performTransactionWithContext:v13 error:&v22 block:v18 inaccessibilityHandler:0];
  v17 = v22;

  [v15 clientRemote_synchronizeWithCompletion:v9 success:v16 error:v17];
}

void __105__HDDatabaseValidationTaskServer_remote_validateDatabase_clientCompletionHandler_errorHandlerIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = v4;
    v8 = HKSensitiveLogItem();
    v9 = 138543618;
    v10 = v6;
    v11 = 2114;
    v12 = v8;
    _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "%{public}@: Failed to call HKDatabaseValidationClient clientRemote_processIntegrityErrorString, with error: %{public}@", &v9, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __105__HDDatabaseValidationTaskServer_remote_validateDatabase_clientCompletionHandler_errorHandlerIdentifier___block_invoke_293(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 unprotectedDatabase];
  v7 = *MEMORY[0x277CCCE28];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __105__HDDatabaseValidationTaskServer_remote_validateDatabase_clientCompletionHandler_errorHandlerIdentifier___block_invoke_2;
  v15[3] = &unk_278619438;
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v8 = [v6 performIntegrityCheckOnDatabase:v7 error:a3 integrityErrorHandler:v15];

  if (*(a1 + 48) && v8)
  {
    v9 = [v5 protectedDatabase];
    v10 = *MEMORY[0x277CCC8E8];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __105__HDDatabaseValidationTaskServer_remote_validateDatabase_clientCompletionHandler_errorHandlerIdentifier___block_invoke_295;
    v12[3] = &unk_278619438;
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v8 = [v9 performIntegrityCheckOnDatabase:v10 error:a3 integrityErrorHandler:v12];
  }

  return v8;
}

void __105__HDDatabaseValidationTaskServer_remote_validateDatabase_clientCompletionHandler_errorHandlerIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "Integrity issues in unprotected database: %{public}@.", &v6, 0xCu);
  }

  [*(a1 + 32) clientRemote_processIntegrityErrorString:v3 errorHandlerIdentifier:*(a1 + 40)];

  v5 = *MEMORY[0x277D85DE8];
}

void __105__HDDatabaseValidationTaskServer_remote_validateDatabase_clientCompletionHandler_errorHandlerIdentifier___block_invoke_295(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "Integrity issues in protected database: %{public}@.", &v6, 0xCu);
  }

  [*(a1 + 32) clientRemote_processIntegrityErrorString:v3 errorHandlerIdentifier:*(a1 + 40)];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)remote_validateEntitiesWithClientCompletionHandler:(id)a3 errorHandlerIdentifier:(id)a4
{
  v6 = a4;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __108__HDDatabaseValidationTaskServer_remote_validateEntitiesWithClientCompletionHandler_errorHandlerIdentifier___block_invoke;
  v20[3] = &unk_2786138D0;
  v20[4] = self;
  v7 = a3;
  v8 = [(HDStandardTaskServer *)self remoteObjectProxyWithErrorHandler:v20];
  v9 = [(HDStandardTaskServer *)self profile];
  v10 = [v9 database];
  v11 = +[HDDatabaseTransactionContext contextForReadingProtectedData];
  v18 = v6;
  v19 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __108__HDDatabaseValidationTaskServer_remote_validateEntitiesWithClientCompletionHandler_errorHandlerIdentifier___block_invoke_297;
  v16[3] = &unk_278615D40;
  v16[4] = self;
  v17 = v8;
  v12 = v6;
  v13 = v8;
  v14 = [v10 performTransactionWithContext:v11 error:&v19 block:v16 inaccessibilityHandler:0];
  v15 = v19;

  [v13 clientRemote_synchronizeWithCompletion:v7 success:v14 error:v15];
}

void __108__HDDatabaseValidationTaskServer_remote_validateEntitiesWithClientCompletionHandler_errorHandlerIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = v4;
    v8 = HKSensitiveLogItem();
    v9 = 138543618;
    v10 = v6;
    v11 = 2114;
    v12 = v8;
    _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "%{public}@: Failed to call HKDatabaseValidationClient clientRemote_processValidationError, with error: %{public}@", &v9, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __108__HDDatabaseValidationTaskServer_remote_validateEntitiesWithClientCompletionHandler_errorHandlerIdentifier___block_invoke_297(id *a1, uint64_t a2, uint64_t *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  +[HDDatabase allCurrentAndFutureEntityClasses];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = v24 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * v9);
        v11 = objc_opt_class();
        if ([v11 isSubclassOfClass:objc_opt_class()])
        {
          v12 = objc_opt_class();
          v13 = [a1[4] profile];
          v18[0] = MEMORY[0x277D85DD0];
          v18[1] = 3221225472;
          v18[2] = __108__HDDatabaseValidationTaskServer_remote_validateEntitiesWithClientCompletionHandler_errorHandlerIdentifier___block_invoke_2;
          v18[3] = &unk_278619460;
          v19 = a1[5];
          v20 = a1[6];
          [v12 validateEntityWithProfile:v13 error:a3 validationErrorHandler:v18];

          v14 = *a3;
          if (v14)
          {
            v15 = 0;
            goto LABEL_12;
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v15 = 1;
LABEL_12:

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

void __108__HDDatabaseValidationTaskServer_remote_validateEntitiesWithClientCompletionHandler_errorHandlerIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x277CCA7E8]];
  v6 = MEMORY[0x277CCACA8];
  v7 = [v4 objectForKey:*MEMORY[0x277CCBD78]];
  v8 = [v5 localizedDescription];
  v9 = [v4 objectForKey:*MEMORY[0x277CCBD80]];
  v10 = [v4 objectForKey:*MEMORY[0x277CCBD70]];
  v11 = [v4 objectForKey:*MEMORY[0x277CCBD88]];
  v12 = [v6 stringWithFormat:@"%@ %@ %@ %@ (%@)", v7, v8, v9, v10, v11];

  _HKInitializeLogging();
  v13 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v16 = v12;
    _os_log_error_impl(&dword_228986000, v13, OS_LOG_TYPE_ERROR, "%{public}@.", buf, 0xCu);
  }

  [*(a1 + 32) clientRemote_processValidationError:v3 errorHandlerIdentifier:*(a1 + 40)];

  v14 = *MEMORY[0x277D85DE8];
}

@end