@interface HDDatabaseDiagnosticOperation
- (BOOL)_captureUnprotectedDatabaseAtURL:(id)a3 protectedDatabaseAtURL:(id)a4 reason:(id)a5;
- (BOOL)_reportStatisticsForUnprotectedDatabaseAtURL:(id)a3 protectedDatabaseAtURL:(id)a4;
- (void)_reportJournalStatisticsInSubdirectory:(id)a3 profileDirectory:(id)a4;
- (void)_reportMedicalIDStatistics;
- (void)_reportMissingSourceOrderEntriesWithUnprotectedDatabase:(id)a3 protectedDatabase:(id)a4;
- (void)_reportSamplePruningStateDescriptionWithHealthStore:(id)a3;
- (void)_reportSizeForHFDAtURL:(id)a3;
- (void)run;
@end

@implementation HDDatabaseDiagnosticOperation

- (void)run
{
  [(HDDiagnosticOperation *)self log:@"Analyzing health database...\n"];
  v7 = [(HDDiagnosticOperation *)self healthDirectoryURL];
  v3 = [v7 URLByAppendingPathComponent:@"healthdb.sqlite" isDirectory:0];
  v4 = [v7 URLByAppendingPathComponent:@"healthdb_secure.sqlite" isDirectory:0];
  v5 = [v7 URLByAppendingPathComponent:@"healthdb_secure.hfd" isDirectory:0];
  [(HDDiagnosticOperation *)self reportStatsForDatabaseAtURL:v3];
  [(HDDiagnosticOperation *)self appendNewline];
  [(HDDiagnosticOperation *)self reportStatsForDatabaseAtURL:v4];
  [(HDDiagnosticOperation *)self appendNewline];
  [(HDDatabaseDiagnosticOperation *)self _reportSizeForHFDAtURL:v5];
  [(HDDiagnosticOperation *)self appendNewline];
  [(HDDatabaseDiagnosticOperation *)self _reportJournalStatisticsInSubdirectory:@"Journals" profileDirectory:v7];
  [(HDDatabaseDiagnosticOperation *)self _reportJournalStatisticsInSubdirectory:@"CloudSyncJournals" profileDirectory:v7];
  [(HDDatabaseDiagnosticOperation *)self _reportMedicalIDStatistics];
  if ([(HDDatabaseDiagnosticOperation *)self _reportStatisticsForUnprotectedDatabaseAtURL:v3 protectedDatabaseAtURL:v4]&& ![(HDDatabaseDiagnosticOperation *)self _captureUnprotectedDatabaseAtURL:v3 protectedDatabaseAtURL:v4 reason:@"analysis result"])
  {
    [(HDDiagnosticOperation *)self log:@"Failed to capture databases"];
  }

  v6 = objc_alloc_init(MEMORY[0x277CCD4D8]);
  [(HDDatabaseDiagnosticOperation *)self _reportSamplePruningStateDescriptionWithHealthStore:v6];
}

- (BOOL)_captureUnprotectedDatabaseAtURL:(id)a3 protectedDatabaseAtURL:(id)a4 reason:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(HDDatabaseDiagnosticOperation *)self allowsSensitiveAttachments])
  {
    [(HDDiagnosticOperation *)self log:@"Capturing Health database for reason: %@", v10];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v32[0] = v8;
    v32[1] = v9;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
    v12 = [v11 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v12)
    {
      v13 = v12;
      v25 = v10;
      v26 = v9;
      v27 = v8;
      v14 = 0;
      v15 = *v29;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v29 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v28 + 1) + 8 * i);
          v18 = [(HDDiagnosticOperation *)self attachmentDirectoryURL];
          v19 = [v17 lastPathComponent];
          v20 = [v18 URLByAppendingPathComponent:v19 isDirectory:0];

          if ([(HDDiagnosticOperation *)self copyDatabaseFromURL:v17 toURL:v20])
          {
            ++v14;
          }

          else
          {
            v21 = [v17 path];
            [(HDDiagnosticOperation *)self log:@"Failed to collect database at path %@", v21];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v13);
      v22 = v14 > 0;
      v9 = v26;
      v8 = v27;
      v10 = v25;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    [(HDDiagnosticOperation *)self log:@"Sensitive attachments disabled. Skipping database capture for: %@", v10];
    v22 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

- (void)_reportMedicalIDStatistics
{
  v9 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v3 = [MEMORY[0x277CBEBC0] URLWithString:@"/var/mobile/Library"];
  v4 = [v3 URLByAppendingPathComponent:@"MedicalID"];
  v5 = [v4 URLByAppendingPathComponent:@"MedicalIDData.archive" isDirectory:0];

  v6 = [v5 path];
  v7 = [v9 fileExistsAtPath:v6];

  if (v7)
  {
    v8 = [(HDDiagnosticOperation *)self prettyPrintFileSize:[(HDDiagnosticOperation *)self fileSizeForURL:v5]];
    [(HDDiagnosticOperation *)self appendFormat:@"Medical ID has been set up; archive is %@", v8];
  }

  else
  {
    [(HDDiagnosticOperation *)self appendFormat:@"No medical ID present."];
  }
}

- (BOOL)_reportStatisticsForUnprotectedDatabaseAtURL:(id)a3 protectedDatabaseAtURL:(id)a4
{
  v19[4] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  [(HDDiagnosticOperation *)self appendNewline];
  [(HDDiagnosticOperation *)self appendStrongSeparator];
  v8 = [v7 path];
  [(HDDiagnosticOperation *)self appendFormat:@"Unprotected Database (%@):\n", v8];

  [(HDDiagnosticOperation *)self verifyPermissionsForFileAtURL:v7];
  v9 = [(HDDiagnosticOperation *)self openReadOnlyDatabaseAtURL:v7];

  if (v9)
  {
    [(HDDiagnosticOperation *)self log:@"Analyzing unprotected database..."];
    [(HDDiagnosticOperation *)self reportIntegrityForDatabase:v9];
    [(HDDiagnosticOperation *)self checkSchemaVersionForDatabase:v9 currentSchema:19102 futureSchema:100003];
    v19[0] = objc_opt_class();
    v19[1] = objc_opt_class();
    v19[2] = objc_opt_class();
    v19[3] = objc_opt_class();
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:4];
    [(HDDiagnosticOperation *)self reportCountsForDatabase:v9 entityClasses:v10];
  }

  [(HDDiagnosticOperation *)self appendNewline];
  [(HDDiagnosticOperation *)self appendStrongSeparator];
  v11 = [v6 path];
  [(HDDiagnosticOperation *)self appendFormat:@"Protected Database (%@):\n", v11];

  [(HDDiagnosticOperation *)self verifyPermissionsForFileAtURL:v6];
  v12 = [(HDDiagnosticOperation *)self openReadOnlyDatabaseAtURL:v6];

  if (v12)
  {
    [(HDDiagnosticOperation *)self log:@"Analyzing protected database..."];
    v13 = [v12 fileURL];
    v14 = [v13 path];
    [(HDDiagnosticOperation *)self log:@"Skip integrity check for %@", v14];

    [(HDDiagnosticOperation *)self checkSchemaVersionForDatabase:v12 currentSchema:19102 futureSchema:100030];
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v18[2] = objc_opt_class();
    v18[3] = objc_opt_class();
    v18[4] = objc_opt_class();
    v18[5] = objc_opt_class();
    v18[6] = objc_opt_class();
    v18[7] = objc_opt_class();
    v18[8] = objc_opt_class();
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:9];
    [(HDDiagnosticOperation *)self reportCountsForDatabase:v12 entityClasses:v15];

    if (v9)
    {
      [(HDDatabaseDiagnosticOperation *)self _reportMissingSourceOrderEntriesWithUnprotectedDatabase:v9 protectedDatabase:v12];
    }
  }

  [v12 close];
  [v9 close];

  v16 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)_reportSizeForHFDAtURL:(id)a3
{
  v16 = a3;
  v4 = [v16 path];
  [(HDDiagnosticOperation *)self appendFormat:@"HFD database %@:", v4];

  v5 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v6 = [v16 path];
  v7 = [v5 fileExistsAtPath:v6];

  if (v7)
  {
    v8 = [(HDDiagnosticOperation *)self fileSizeForURL:v16];
    if ((v8 & 0x8000000000000000) == 0)
    {
      v9 = v8;
      v10 = [v16 lastPathComponent];
      [(HDDiagnosticOperation *)self appendFormat:@"\t%@:", v10];

      v11 = [(HDDiagnosticOperation *)self prettyPrintFileSize:v9];
      [(HDDiagnosticOperation *)self appendFormat:@"\t\tSize:\t\t%@", v11];

      v12 = [(HDDiagnosticOperation *)self fileCreationDateForURL:v16];
      v13 = [(HDDiagnosticOperation *)self stringFromDate:v12];
      [(HDDiagnosticOperation *)self appendFormat:@"\t\tCreated:\t%@", v13];

      v14 = [(HDDiagnosticOperation *)self fileModificationDateForURL:v16];
      v15 = [(HDDiagnosticOperation *)self stringFromDate:v14];
      [(HDDiagnosticOperation *)self appendFormat:@"\t\tModified:\t%@", v15];
    }
  }

  else
  {
    [(HDDiagnosticOperation *)self appendFormat:@"\tNo HFD store"];
  }
}

- (void)_reportJournalStatisticsInSubdirectory:(id)a3 profileDirectory:(id)a4
{
  v6 = a3;
  v7 = [a4 URLByAppendingPathComponent:v6 isDirectory:1];
  v15 = 0;
  v16 = 0.0;
  v14 = 0;
  v8 = [(HDDiagnosticOperation *)self getFileStatisticsForDirectoryWithURL:v7 earliestModificationDate:&v16 totalFileSize:&v15 maxFileSize:&v14];
  if (v8)
  {
    v9 = v8;
    v10 = v15 * 0.0009765625;
    v11 = v14 * 0.0009765625;
    v12 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v16];
    v13 = [(HDDiagnosticOperation *)self stringFromDate:v12];
    [(HDDiagnosticOperation *)self appendFormat:@"%@: Found %ld unprocessed journal chapters (total %0.2lfkb, max %0.2lfkb). The oldest file was last modified %@", v6, v9, *&v10, *&v11, v13];
  }

  else
  {
    [(HDDiagnosticOperation *)self appendFormat:@"%@: No outstanding unprocessed journal chapters.", v6];
  }
}

- (void)_reportMissingSourceOrderEntriesWithUnprotectedDatabase:(id)a3 protectedDatabase:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(HDDiagnosticOperation *)self log:@"Checking for missing source order entries..."];
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v9 = MEMORY[0x277CCACA8];
  v10 = *MEMORY[0x277D10468];
  v11 = *MEMORY[0x277D10470];
  v12 = [MEMORY[0x277D10740] databaseTable];
  v13 = *MEMORY[0x277D10A40];
  v14 = [v9 stringWithFormat:@"SELECT %@, %@ FROM %@ ORDER BY %@ ASC, %@ ASC", v10, v11, v12, v10, *MEMORY[0x277D10A40]];

  v38[0] = 0;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __107__HDDatabaseDiagnosticOperation__reportMissingSourceOrderEntriesWithUnprotectedDatabase_protectedDatabase___block_invoke;
  v36[3] = &unk_2796C0D00;
  v15 = v8;
  v37 = v15;
  LOBYTE(v12) = [v7 executeSQL:v14 error:v38 bindingHandler:0 enumerationHandler:v36];

  v16 = v38[0];
  v17 = v16;
  if (v12)
  {
    v29 = MEMORY[0x277CCACA8];
    v28 = *MEMORY[0x277D104A0];
    v18 = *MEMORY[0x277D10428];
    v27 = [MEMORY[0x277D10848] databaseTable];
    v26 = [MEMORY[0x277D10690] databaseTable];
    v25 = *MEMORY[0x277D10410];
    [MEMORY[0x277D106A0] databaseTable];
    v19 = v31 = self;
    v20 = [MEMORY[0x277D10690] databaseTable];
    v30 = v6;
    v21 = *MEMORY[0x277D10418];
    v22 = [MEMORY[0x277D106A0] databaseTable];
    v23 = [v29 stringWithFormat:@"SELECT %@, %@ FROM %@ INNER JOIN %@ USING (%@) INNER JOIN %@ ON %@.%@=%@.%@ GROUP BY %@, %@", v28, v18, v27, v26, v25, v19, v20, v21, v22, v13, v28, v18];

    v35 = 0;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __107__HDDatabaseDiagnosticOperation__reportMissingSourceOrderEntriesWithUnprotectedDatabase_protectedDatabase___block_invoke_2;
    v32[3] = &unk_2796C0D28;
    v33 = v15;
    v34 = v31;
    v6 = v30;
    LOBYTE(v22) = [v30 executeSQL:v23 error:&v35 bindingHandler:0 enumerationHandler:v32];
    v24 = v35;
    v17 = v24;
    if ((v22 & 1) == 0)
    {
      [(HDDiagnosticOperation *)v31 log:@"Failed to enumerate data_type/source_id combinations: %@", v24];
    }

    v14 = v23;
  }

  else
  {
    [(HDDiagnosticOperation *)self log:@"Unable to look up source order information: %@", v16];
  }
}

uint64_t __107__HDDatabaseDiagnosticOperation__reportMissingSourceOrderEntriesWithUnprotectedDatabase_protectedDatabase___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x25307B2A0](a2, 0);
  v5 = MEMORY[0x25307B2A0](a2, 1);
  v6 = [*(a1 + 32) objectForKeyedSubscript:v4];
  if (!v6)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v4];
  }

  [v6 addObject:v5];

  return 1;
}

uint64_t __107__HDDatabaseDiagnosticOperation__reportMissingSourceOrderEntriesWithUnprotectedDatabase_protectedDatabase___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x25307B2A0](a2, 0);
  v5 = MEMORY[0x25307B2A0](a2, 1);
  v6 = [*(a1 + 32) objectForKeyedSubscript:v4];
  v7 = v6;
  if (v6 && ([v6 containsObject:v5] & 1) == 0)
  {
    [*(a1 + 40) appendFormat:@"WARNING: Source order for data type %@ is missing entry for source %@", v4, v5];
  }

  return 1;
}

- (void)_reportSamplePruningStateDescriptionWithHealthStore:(id)a3
{
  v4 = a3;
  v5 = dispatch_semaphore_create(0);
  v6 = [objc_alloc(MEMORY[0x277CCD2C0]) initWithHealthStore:v4];

  v7 = [MEMORY[0x277CBEAA8] date];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __85__HDDatabaseDiagnosticOperation__reportSamplePruningStateDescriptionWithHealthStore___block_invoke;
  v13 = &unk_2796C0CD8;
  v14 = self;
  v8 = v5;
  v15 = v8;
  [v6 showAndDeletedSampleInfoWithReferenceDate:v7 completion:&v10];

  v9 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v8, v9))
  {
    [(HDDiagnosticOperation *)self log:@"ERROR: Timed out attempting collect pruning state description", v10, v11, v12, v13, v14];
  }
}

void __85__HDDatabaseDiagnosticOperation__reportSamplePruningStateDescriptionWithHealthStore___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v9 = v5;
  if (v5)
  {
    [v6 appendNewline];
    [*(a1 + 32) appendNewline];
    [*(a1 + 32) appendStrongSeparator];
    [*(a1 + 32) appendString:@"Pruning State Description:"];
    v7 = *(a1 + 32);
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v9 encoding:4];
    [v7 appendString:v8];
  }

  else
  {
    [v6 log:{@"ERROR: Failed to get pruning state description: %@", a3}];
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

@end