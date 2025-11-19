@interface HDCloudSyncDiagnosticOperation
- (BOOL)_reportCloudSyncStatusWithHealthStore:(id)a3;
- (void)_reportCloudSyncDescriptionWithHealthStore:(id)a3;
- (void)_reportCloudSyncErrors;
- (void)_reportCloudSyncJournalStats;
- (void)_reportCloudSyncKeyValuesWithDatabase:(id)a3;
- (void)_reportCloudSyncStoreDetailsWithDatabase:(id)a3;
- (void)_reportCloudSyncStoreDetailsWithSyncProvenance:(int64_t)a3 storeUUID:(id)a4 database:(id)a5;
- (void)_reportCurrentSyncIdentityWithDatabase:(id)a3;
- (void)run;
@end

@implementation HDCloudSyncDiagnosticOperation

- (void)run
{
  v6 = objc_alloc_init(MEMORY[0x277CCD4D8]);
  if ([(HDCloudSyncDiagnosticOperation *)self _reportCloudSyncStatusWithHealthStore:?])
  {
    v3 = [(HDDiagnosticOperation *)self healthDirectoryURL];
    v4 = [v3 URLByAppendingPathComponent:@"healthdb.sqlite" isDirectory:0];

    v5 = [(HDDiagnosticOperation *)self openReadOnlyDatabaseAtURL:v4];
    [(HDCloudSyncDiagnosticOperation *)self _reportCurrentSyncIdentityWithDatabase:v5];
    [(HDCloudSyncDiagnosticOperation *)self _reportCloudSyncJournalStats];
    [(HDCloudSyncDiagnosticOperation *)self _reportCloudSyncErrors];
    [(HDCloudSyncDiagnosticOperation *)self _reportCloudSyncStoreDetailsWithDatabase:v5];
    [(HDCloudSyncDiagnosticOperation *)self _reportCloudSyncKeyValuesWithDatabase:v5];
    [(HDCloudSyncDiagnosticOperation *)self _reportCloudSyncDescriptionWithHealthStore:v6];
    [v5 close];
  }
}

- (BOOL)_reportCloudSyncStatusWithHealthStore:(id)a3
{
  v4 = a3;
  v5 = dispatch_semaphore_create(0);
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v6 = [objc_alloc(MEMORY[0x277CCD128]) initWithHealthStore:v4];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__HDCloudSyncDiagnosticOperation__reportCloudSyncStatusWithHealthStore___block_invoke;
  v11[3] = &unk_2796C0C40;
  v13 = &v14;
  v11[4] = self;
  v7 = v5;
  v12 = v7;
  [v6 fetchCloudSyncStatusWithCompletion:v11];
  v8 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v7, v8))
  {
    [(HDDiagnosticOperation *)self log:@"ERROR: Timed out attempting collect Cloud Sync status"];
    v9 = 0;
  }

  else
  {
    v9 = *(v15 + 24);
  }

  _Block_object_dispose(&v14, 8);
  return v9 & 1;
}

void __72__HDCloudSyncDiagnosticOperation__reportCloudSyncStatusWithHealthStore___block_invoke(uint64_t a1, char a2, void *a3, void *a4, int a5, void *a6)
{
  v20 = a3;
  v11 = a4;
  v12 = a6;
  *(*(*(a1 + 48) + 8) + 24) = a2;
  if (a2)
  {
    [*(a1 + 32) appendFormat:@"CloudSync Status:"];
    v13 = *(a1 + 32);
    v14 = [v13 stringFromDate:v20];
    [v13 appendFormat:@"\tLast successful push: %@", v14];

    v15 = *(a1 + 32);
    v16 = [v15 stringFromDate:v11];
    [v15 appendFormat:@"\tLast successful pull: %@", v16];

    v17 = "NO";
    if (a5)
    {
      v17 = "YES";
    }

    [*(a1 + 32) appendFormat:@"\tSync in-progress: %s", v17];
  }

  else
  {
    v18 = *(a1 + 32);
    if (v12)
    {
      [v18 log:{@"ERROR: Failed to fetch Cloud Sync status: %@", v12}];
    }

    else
    {
      [v18 log:{@"Cloud Sync disabled", v19}];
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)_reportCurrentSyncIdentityWithDatabase:(id)a3
{
  v4 = *MEMORY[0x277D104C8];
  v14 = 0;
  v5 = [MEMORY[0x277D10900] _rawValuesForKeys:0 domain:v4 category:0 database:a3 error:&v14];
  v6 = v14;
  v7 = v6;
  if (v5)
  {
    v8 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v9 = [v8 objectForKey:*MEMORY[0x277D10578]];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v9 = 0;
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __73__HDCloudSyncDiagnosticOperation__reportCurrentSyncIdentityWithDatabase___block_invoke;
    v13[3] = &unk_2796C0C68;
    v13[4] = self;
    v10 = MEMORY[0x25307B760](v13);
    [(HDDiagnosticOperation *)self appendFormat:@"Current Sync Identity:"];
    (v10)[2](v10, @"HardwareIdentifier", v9);
    v11 = [v5 objectForKeyedSubscript:*MEMORY[0x277D104B8]];
    (v10)[2](v10, @"DatabaseIdentifier", v11);

    v12 = [v5 objectForKeyedSubscript:*MEMORY[0x277D104C0]];
    (v10)[2](v10, @"InstanceDiscriminator", v12);
  }

  else
  {
    [(HDDiagnosticOperation *)self log:@"ERROR: Failed to get key value pairs for domain %@: %@", v4, v6];
  }
}

void __73__HDCloudSyncDiagnosticOperation__reportCurrentSyncIdentityWithDatabase___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    v5 = MEMORY[0x277CCAD78];
    v6 = a2;
    v8 = [v5 hk_UUIDWithData:a3];
    v7 = [v8 UUIDString];
    [v3 appendFormat:@"%@: %@", v6, v7];
  }

  else
  {
    v8 = a2;
    [v3 appendFormat:@"%@: %@", v8, @"(null)"];
  }
}

- (void)_reportCloudSyncJournalStats
{
  v3 = [(HDDiagnosticOperation *)self healthDirectoryURL];
  v4 = [v3 URLByAppendingPathComponent:@"CloudSyncJournals" isDirectory:1];

  v13 = 0;
  v14 = 0.0;
  v12 = 0;
  v5 = [(HDDiagnosticOperation *)self getFileStatisticsForDirectoryWithURL:v4 earliestModificationDate:&v14 totalFileSize:&v13 maxFileSize:&v12];
  if (v5)
  {
    v6 = v5;
    [(HDDiagnosticOperation *)self appendNewline];
    v7 = [v4 lastPathComponent];
    v8 = v13 * 0.0009765625;
    v9 = v12 * 0.0009765625;
    v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v14];
    v11 = [(HDDiagnosticOperation *)self stringFromDate:v10];
    [(HDDiagnosticOperation *)self appendFormat:@"%@: Found %ld unprocessed journal chapters (total %0.2lfkb, max %0.2lfkb). The oldest file was last modified %@", v7, v6, *&v8, *&v9, v11];
  }

  else
  {
    v7 = [v4 lastPathComponent];
    [(HDDiagnosticOperation *)self appendFormat:@"%@: No outstanding unprocessed journal chapters.", v7];
  }
}

- (void)_reportCloudSyncKeyValuesWithDatabase:(id)a3
{
  v4 = *MEMORY[0x277D109A8];
  v15 = 0;
  v5 = [MEMORY[0x277D10900] _rawValuesForKeys:0 domain:v4 category:0 database:a3 error:&v15];
  v6 = v15;
  v7 = v6;
  if (v5)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __72__HDCloudSyncDiagnosticOperation__reportCloudSyncKeyValuesWithDatabase___block_invoke;
    v14[3] = &unk_2796C0C68;
    v14[4] = self;
    v8 = MEMORY[0x25307B760](v14);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __72__HDCloudSyncDiagnosticOperation__reportCloudSyncKeyValuesWithDatabase___block_invoke_2;
    v13[3] = &unk_2796C0C68;
    v13[4] = self;
    v9 = MEMORY[0x25307B760](v13);
    [(HDDiagnosticOperation *)self appendNewline];
    v10 = [v5 objectForKeyedSubscript:*MEMORY[0x277D10998]];
    (v8)[2](v8, @"Last push forward progress", v10);

    v11 = [v5 objectForKeyedSubscript:*MEMORY[0x277D10990]];
    (v9)[2](v9, @"Has pull applied change", v11);

    v12 = [v5 objectForKeyedSubscript:*MEMORY[0x277D103F0]];
    (v8)[2](v8, @"Restore complete date", v12);
  }

  else
  {
    [(HDDiagnosticOperation *)self log:@"ERROR: Failed to get key value pairs for domain %@: %@", v4, v6];
  }
}

void __72__HDCloudSyncDiagnosticOperation__reportCloudSyncKeyValuesWithDatabase___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v8 = v5;
  if (a3)
  {
    v6 = [v4 stringFromDate:a3];
    [v4 appendFormat:@"%@: %@", v8, v6];

    v7 = v6;
  }

  else
  {
    [v4 appendFormat:@"%@: %@", v5, @"(null)"];
    v7 = v8;
  }
}

void __72__HDCloudSyncDiagnosticOperation__reportCloudSyncKeyValuesWithDatabase___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v8 = v5;
  if (a3)
  {
    v6 = [a3 description];
    [v4 appendFormat:@"%@: %@", v8, v6];

    v7 = v6;
  }

  else
  {
    [v4 appendFormat:@"%@: %@", v5, @"(null)"];
    v7 = v8;
  }
}

- (void)_reportCloudSyncErrors
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = CFPreferencesCopyValue(*MEMORY[0x277D10478], *MEMORY[0x277CCE408], *MEMORY[0x277CBF020], *MEMORY[0x277CBF010]);
  if ([v3 count])
  {
    [(HDDiagnosticOperation *)self appendNewline];
    [(HDDiagnosticOperation *)self appendString:@"Recent Periodic Sync Errors:"];
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [(HDDiagnosticOperation *)self appendFormat:@"\t%@", *(*(&v10 + 1) + 8 * v8++)];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_reportCloudSyncStoreDetailsWithDatabase:(id)a3
{
  v16[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277D10B18] predicateWithProperty:*MEMORY[0x277D104D0] equalToValue:&unk_286389038];
  v6 = [MEMORY[0x277D108F0] queryWithDatabase:v4 predicate:v5];
  v7 = *MEMORY[0x277D104D8];
  v16[0] = *MEMORY[0x277D10A40];
  v16[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v15 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __75__HDCloudSyncDiagnosticOperation__reportCloudSyncStoreDetailsWithDatabase___block_invoke;
  v13[3] = &unk_2796C0C90;
  v13[4] = self;
  v9 = v4;
  v14 = v9;
  v10 = [v6 enumerateProperties:v8 error:&v15 enumerationHandler:v13];
  v11 = v15;

  if ((v10 & 1) == 0)
  {
    [(HDDiagnosticOperation *)self log:@"ERROR: Failed to query for Cloud Sync stores: %@", v11];
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __75__HDCloudSyncDiagnosticOperation__reportCloudSyncStoreDetailsWithDatabase___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = HDSQLiteColumnAsInt64();
  v6 = MEMORY[0x25307B2C0](a3, 1);
  [*(a1 + 32) _reportCloudSyncStoreDetailsWithSyncProvenance:v5 storeUUID:v6 database:*(a1 + 40)];

  return 1;
}

- (void)_reportCloudSyncStoreDetailsWithSyncProvenance:(int64_t)a3 storeUUID:(id)a4 database:(id)a5
{
  v8 = a4;
  v9 = MEMORY[0x277D10608];
  v35 = 0;
  v10 = a5;
  v11 = [v9 persistedStateForStoreUUID:v8 database:v10 error:&v35];
  v12 = v35;
  if (!v11)
  {
    v13 = [v8 UUIDString];
    [(HDDiagnosticOperation *)self log:@"ERROR: Failed to get persistent state for Cloud Sync store %@: %@", v13, v12];
  }

  [(HDDiagnosticOperation *)self appendNewline];
  [(HDDiagnosticOperation *)self appendNewline];
  [(HDDiagnosticOperation *)self appendStrongSeparator];
  v14 = [objc_alloc(MEMORY[0x277CCDA90]) initWithColumnTitles:0];
  v15 = [v8 UUIDString];
  __100__HDCloudSyncDiagnosticOperation__reportCloudSyncStoreDetailsWithSyncProvenance_storeUUID_database___block_invoke(v15, v14, @"Cloud Sync Store:", v15);

  v16 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
  v17 = [v16 description];
  __100__HDCloudSyncDiagnosticOperation__reportCloudSyncStoreDetailsWithSyncProvenance_storeUUID_database___block_invoke(v17, v14, @"Sync Provenance:", v17);

  v18 = [v11 ownerIdentifier];
  __100__HDCloudSyncDiagnosticOperation__reportCloudSyncStoreDetailsWithSyncProvenance_storeUUID_database___block_invoke(v18, v14, @"Owner Identifier:", v18);

  v19 = [v11 syncIdentity];
  v20 = [v19 description];
  __100__HDCloudSyncDiagnosticOperation__reportCloudSyncStoreDetailsWithSyncProvenance_storeUUID_database___block_invoke(v20, v14, @"Sync Identity:", v20);

  v21 = [v11 containerIdentifier];
  __100__HDCloudSyncDiagnosticOperation__reportCloudSyncStoreDetailsWithSyncProvenance_storeUUID_database___block_invoke(v21, v14, @"Container Identifier:", v21);

  v22 = [v11 serverChangeToken];
  v23 = [v22 description];
  __100__HDCloudSyncDiagnosticOperation__reportCloudSyncStoreDetailsWithSyncProvenance_storeUUID_database___block_invoke(v23, v14, @"Change Token:", v23);

  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v11, "baselineEpoch")}];
  v25 = [v24 description];
  __100__HDCloudSyncDiagnosticOperation__reportCloudSyncStoreDetailsWithSyncProvenance_storeUUID_database___block_invoke(v25, v14, @"Baseline Epoch:", v25);

  v26 = [v11 rebaseDeadline];
  v27 = [(HDDiagnosticOperation *)self stringFromDate:v26];
  __100__HDCloudSyncDiagnosticOperation__reportCloudSyncStoreDetailsWithSyncProvenance_storeUUID_database___block_invoke(v27, v14, @"Rebase Deadline:", v27);

  v28 = [v11 lastSyncDate];
  v29 = [(HDDiagnosticOperation *)self stringFromDate:v28];
  __100__HDCloudSyncDiagnosticOperation__reportCloudSyncStoreDetailsWithSyncProvenance_storeUUID_database___block_invoke(v29, v14, @"Last Sync Date:", v29);

  v30 = [v11 lastCheckDate];
  v31 = [(HDDiagnosticOperation *)self stringFromDate:v30];
  __100__HDCloudSyncDiagnosticOperation__reportCloudSyncStoreDetailsWithSyncProvenance_storeUUID_database___block_invoke(v31, v14, @"Last Check Date:", v31);

  v32 = [v11 hasEncounteredGapInCurrentEpoch];
  if (v32)
  {
    v33 = @"YES";
  }

  else
  {
    v33 = @"NO";
  }

  __100__HDCloudSyncDiagnosticOperation__reportCloudSyncStoreDetailsWithSyncProvenance_storeUUID_database___block_invoke(v32, v14, @"Has Encountered Gap:", v33);
  v34 = [v14 formattedTable];
  [(HDDiagnosticOperation *)self appendString:v34];

  [(HDDiagnosticOperation *)self appendNewline];
  [(HDDiagnosticOperation *)self appendNewline];
  [MEMORY[0x277D108D0] hde_reportSyncAnchorsForSyncProvenance:a3 diagnosticOperation:self database:v10];
}

void __100__HDCloudSyncDiagnosticOperation__reportCloudSyncStoreDetailsWithSyncProvenance_storeUUID_database___block_invoke(uint64_t a1, void *a2, void *a3, __CFString *a4)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v7 = @"(null)";
  if (a4)
  {
    v7 = a4;
  }

  v15[0] = a3;
  v15[1] = v7;
  v8 = MEMORY[0x277CBEA60];
  v9 = v7;
  v10 = a4;
  v11 = a3;
  v12 = a2;
  v13 = [v8 arrayWithObjects:v15 count:2];

  [v12 appendRow:v13];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)_reportCloudSyncDescriptionWithHealthStore:(id)a3
{
  v4 = a3;
  v5 = dispatch_semaphore_create(0);
  v6 = [objc_alloc(MEMORY[0x277CCD128]) initWithHealthStore:v4];

  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __77__HDCloudSyncDiagnosticOperation__reportCloudSyncDescriptionWithHealthStore___block_invoke_2;
  v12 = &unk_2796C0CD8;
  v13 = self;
  v7 = v5;
  v14 = v7;
  [v6 fetchCloudDescriptionWithProgress:&__block_literal_global_434 useDescriptionForLogs:0 prettyPrinted:0 updateCacheAndPrepareForSync:0 completion:&v9];
  v8 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v7, v8))
  {
    [(HDDiagnosticOperation *)self log:@"ERROR: Timed out attempting collect Cloud Sync description", v9, v10, v11, v12, v13];
  }
}

void __77__HDCloudSyncDiagnosticOperation__reportCloudSyncDescriptionWithHealthStore___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v9 = v5;
  if (v5)
  {
    [v6 appendNewline];
    [*(a1 + 32) appendNewline];
    [*(a1 + 32) appendStrongSeparator];
    [*(a1 + 32) appendString:@"Cloud Description:"];
    v7 = *(a1 + 32);
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v9 encoding:4];
    [v7 appendString:v8];
  }

  else
  {
    [v6 log:{@"ERROR: Failed to get Cloud Sync description: %@", a3}];
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

@end