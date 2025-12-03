@interface FLSQLitePersistence
+ (id)batchStatusDescription:(int)description;
+ (id)uploadStatusDescription:(int)description;
- (BOOL)__deleteStatementHelper:(const char *)helper forUploadId:(id)id;
- (BOOL)__purgeStatementHelper:(const char *)helper forBatchId:(id)id;
- (BOOL)_updateMetadataHelperForBatch:(id)batch query:(const char *)query;
- (BOOL)_updateMetadataHelperForUpload:(id)upload query:(const char *)query;
- (BOOL)_updateStatusHelperForBatch:(id)batch toStatus:(int)status;
- (BOOL)_updateStatusHelperForUpload:(id)upload toStatus:(int)status;
- (BOOL)canAddRecords;
- (BOOL)closeOpenBatch;
- (BOOL)closeOrphanedBatches;
- (BOOL)createDatabase;
- (BOOL)deleteAllUploads;
- (BOOL)deleteAllUploadsQueuedBefore:(id)before;
- (BOOL)deleteDatabase;
- (BOOL)deleteUploadWithIdentifier:(id)identifier;
- (BOOL)executeInTransactionMultipleSQLStatements:(id)statements;
- (BOOL)executeSQLStatement:(const char *)statement usingTransaction:(BOOL)transaction;
- (BOOL)forceCloseOpenBatches;
- (BOOL)getIntValueForPragma:(id)pragma into:(int *)into;
- (BOOL)initializeNewBatch;
- (BOOL)iteratePayloadForBatch:(id)batch codeblock:(id)codeblock;
- (BOOL)iterateUploadsWithCodeblock:(id)codeblock;
- (BOOL)prepareSchema;
- (BOOL)purgeAllBatches;
- (BOOL)purgeBatch:(id)batch;
- (BOOL)recreateDatabase;
- (BOOL)setDatabaseSizeLimit;
- (BOOL)shouldIgnoreQuota;
- (BOOL)tryPrepare:(const char *)prepare preparedStatement:(sqlite3_stmt *)statement;
- (BOOL)tryRolloverBatchIfNecessary:(unint64_t)necessary preferredBatchSize:(unint64_t)size;
- (BOOL)updateSchema;
- (FLSQLitePersistence)initWithStoreId:(id)id dbConnection:(id)connection loggingContext:(id)context;
- (FLSQLitePersistence)initWithStoreId:(id)id loggingContext:(id)context;
- (id)_getBatchIdsHelper:(sqlite3_stmt *)helper;
- (id)_getUploadIdsHelper:(sqlite3_stmt *)helper;
- (id)getBatchIdsWithAllStatuses;
- (id)getBatchIdsWithStatus:(int)status;
- (id)getPurgableBatchIds;
- (id)getPurgableUploadIds;
- (id)getRecordsRangeStart:(int64_t)start end:(int64_t)end;
- (id)getUploadIdsWithAllStatuses;
- (id)getUploadIdsWithStatus:(int)status;
- (id)getUploadRecordWithId:(id)id;
- (id)getUploadsRangeStart:(int64_t)start end:(int64_t)end;
- (id)metadataForBatch:(id)batch bundleID:(id)d;
- (id)persist:(id)persist preferredBatchSize:(unint64_t)size;
- (id)persistUploadPayload:(id)payload;
- (id)registerInsertionObserver:(id)observer;
- (int)getDataVersion;
- (int)getSchemaVersion;
- (int64_t)cleanupPurgableUploads;
- (int64_t)doBatchesHousekeeping;
- (int64_t)doUploadHousekeeping;
- (int64_t)maxRowId;
- (unint64_t)getCurrentDatabaseSize;
- (void)closeDatabase;
- (void)dealloc;
- (void)finalizeObserver;
- (void)observeInsertionAtRow:(int64_t)row observer:(id)observer;
@end

@implementation FLSQLitePersistence

- (BOOL)deleteAllUploads
{
  if ([(FLSQLitePersistence *)self initializeConnectionForUseBy:1])
  {

    return [(FLSQLitePersistence *)self executeInTransactionMultipleSQLStatements:&unk_285E1AEB0];
  }

  else
  {
    v4 = [(FLSQLitePersistence *)self log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_24AB3F000, v4, OS_LOG_TYPE_ERROR, "deleteAllUploads: initializeConnection failed", v5, 2u);
    }

    return 0;
  }
}

- (BOOL)__deleteStatementHelper:(const char *)helper forUploadId:(id)id
{
  v21 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v7 = objc_autoreleasePoolPush();
  pStmt = 0;
  if (![(FLSQLitePersistence *)self tryPrepare:helper preparedStatement:&pStmt])
  {
    v10 = [(FLSQLitePersistence *)self log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      helperCopy2 = helper;
      v11 = "Can't deleteUpload (%s), statement prep failed";
      v12 = v10;
      v13 = 12;
      goto LABEL_9;
    }

LABEL_6:

    v8 = 0;
    goto LABEL_7;
  }

  sqlite3_reset(pStmt);
  v8 = 1;
  sqlite3_bind_text(pStmt, 1, [idCopy UTF8String], objc_msgSend(idCopy, "length"), 0);
  v9 = sqlite3_step(pStmt);
  sqlite3_finalize(pStmt);
  if (v9 != 101)
  {
    v10 = [(FLSQLitePersistence *)self log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      helperCopy2 = helper;
      v19 = 1024;
      v20 = v9;
      v11 = "deleteUpload (%s) failed: %d";
      v12 = v10;
      v13 = 18;
LABEL_9:
      _os_log_error_impl(&dword_24AB3F000, v12, OS_LOG_TYPE_ERROR, v11, buf, v13);
      goto LABEL_6;
    }

    goto LABEL_6;
  }

LABEL_7:
  objc_autoreleasePoolPop(v7);

  v14 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)deleteUploadWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (![(FLSQLitePersistence *)self initializeConnectionForUseBy:1])
  {
    v6 = [(FLSQLitePersistence *)self log];
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
LABEL_9:
      v8 = 0;
      goto LABEL_10;
    }

    v14 = 0;
    v9 = "Can't deleteUploadWithIdentifier, initializeConnection failed";
    v10 = &v14;
LABEL_12:
    _os_log_error_impl(&dword_24AB3F000, v6, OS_LOG_TYPE_ERROR, v9, v10, 2u);
    goto LABEL_9;
  }

  v5 = [(FLSQLitePersistence *)self __deleteStatementHelper:"DELETE FROM fileUploads WHERE uploadId=?;" forUploadId:identifierCopy];
  v6 = [(FLSQLitePersistence *)self log];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  if (!v5)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    v12 = 0;
    v9 = "Failed to deleteUploadWithIdentifier";
    v10 = &v12;
    goto LABEL_12;
  }

  if (v7)
  {
    *buf = 0;
    _os_log_error_impl(&dword_24AB3F000, v6, OS_LOG_TYPE_ERROR, "Failed to deleteUploadWithIdentifier, rolling back transaction", buf, 2u);
  }

  v8 = 1;
LABEL_10:

  return v8;
}

- (BOOL)iterateUploadsWithCodeblock:(id)codeblock
{
  v30 = *MEMORY[0x277D85DE8];
  codeblockCopy = codeblock;
  if (![(FLSQLitePersistence *)self initializeConnectionForUseBy:1])
  {
    v17 = [(FLSQLitePersistence *)self log];
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
LABEL_11:

      goto LABEL_12;
    }

    LOWORD(pStmt[0]) = 0;
    v18 = "Can't iterateUploadsWithCodeblock, initializeConnection failed";
    v19 = pStmt;
LABEL_24:
    _os_log_error_impl(&dword_24AB3F000, v17, OS_LOG_TYPE_ERROR, v18, v19, 2u);
    goto LABEL_11;
  }

  pStmt[0] = 0;
  if (![(FLSQLitePersistence *)self tryPrepare:"SELECT uploadId preparedStatement:payload, timestampRefId, status, processedAttempts, dateCreated, dateUploaded, dateLastProcessed FROM fileUploads WHERE status=0;", pStmt])
  {
    v17 = [(FLSQLitePersistence *)self log];
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    *buf = 0;
    v18 = "Failed to create SQLite iterate uploads statement";
    v19 = buf;
    goto LABEL_24;
  }

  v5 = objc_autoreleasePoolPush();
  v26 = 0;
  while (1)
  {
    v6 = sqlite3_step(pStmt[0]);
    if (v6 != 100)
    {
      v23 = v6;
      if (v6 == 101)
      {
LABEL_15:
        v20 = 1;
      }

      else
      {
        v24 = [(FLSQLitePersistence *)self log];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v29 = v23;
          _os_log_error_impl(&dword_24AB3F000, v24, OS_LOG_TYPE_ERROR, "SQLite iterate uploads, failed: %d", buf, 8u);
        }

        v20 = 0;
      }

      objc_autoreleasePoolPop(v5);
      sqlite3_finalize(pStmt[0]);
      goto LABEL_13;
    }

    v7 = objc_alloc_init(UploadRecord);
    v8 = tryGetTextProperty(pStmt[0], 0);
    [(UploadRecord *)v7 setUploadIdentifier:v8];

    v9 = [(FLSQLitePersistence *)self db];
    v10 = [(FLSQLitePersistence *)self log];
    v11 = tryGetDataProperty(v9, v10, pStmt[0], 1);
    [(UploadRecord *)v7 setPayload:v11];

    v12 = tryGetTextProperty(pStmt[0], 2);
    [(UploadRecord *)v7 setTimestampReferenceIdentifier:v12];

    [(UploadRecord *)v7 setUploadStatus:sqlite3_column_int(pStmt[0], 3)];
    [(UploadRecord *)v7 setProcessedAttempts:sqlite3_column_int(pStmt[0], 4)];
    v13 = tryGetDateProperty(pStmt[0], 5);
    if (!v13)
    {
      break;
    }

    v14 = v13;
    [(UploadRecord *)v7 setDateCreated:v13];
    v15 = tryGetDateProperty(pStmt[0], 6);
    [(UploadRecord *)v7 setDateUploaded:v15];

    v16 = tryGetDateProperty(pStmt[0], 7);
    [(UploadRecord *)v7 setDateLastProcessed:v16];

    codeblockCopy[2](codeblockCopy, v7, &v26);
    if (v26)
    {
      goto LABEL_15;
    }
  }

  v25 = [(FLSQLitePersistence *)self log];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_24AB3F000, v25, OS_LOG_TYPE_ERROR, "Upload record has no creation date.", buf, 2u);
  }

  sqlite3_finalize(pStmt[0]);
  objc_autoreleasePoolPop(v5);
LABEL_12:
  v20 = 0;
LABEL_13:

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

- (id)getUploadRecordWithId:(id)id
{
  v25 = *MEMORY[0x277D85DE8];
  idCopy = id;
  if ([(FLSQLitePersistence *)self initializeConnectionForUseBy:1])
  {
    pStmt[0] = 0;
    if ([(FLSQLitePersistence *)self tryPrepare:"SELECT payload preparedStatement:timestampRefId, status, processedAttempts, dateCreated, dateUploaded, dateLastProcessed, length(payload) FROM fileUploads WHERE uploadId=?;", pStmt])
    {
      sqlite3_bind_text(pStmt[0], 1, [idCopy UTF8String], objc_msgSend(idCopy, "length"), 0);
      v5 = sqlite3_step(pStmt[0]);
      if (v5 == 101)
      {
        v7 = 0;
LABEL_18:
        sqlite3_finalize(pStmt[0]);
        v7 = v7;
        v18 = v7;
        goto LABEL_19;
      }

      v6 = v5;
      if (v5 != 100)
      {
        v13 = [(FLSQLitePersistence *)self log];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v24 = v6;
          _os_log_error_impl(&dword_24AB3F000, v13, OS_LOG_TYPE_ERROR, "SQLite iterate uploads, failed: %d", buf, 8u);
        }

        v7 = 0;
        goto LABEL_17;
      }

      v7 = objc_alloc_init(UploadRecord);
      [(UploadRecord *)v7 setUploadIdentifier:idCopy];
      v8 = [(FLSQLitePersistence *)self db];
      v9 = [(FLSQLitePersistence *)self log];
      v10 = tryGetDataProperty(v8, v9, pStmt[0], 0);
      [(UploadRecord *)v7 setPayload:v10];

      v11 = tryGetTextProperty(pStmt[0], 1);
      [(UploadRecord *)v7 setTimestampReferenceIdentifier:v11];

      [(UploadRecord *)v7 setUploadStatus:sqlite3_column_int(pStmt[0], 2)];
      [(UploadRecord *)v7 setProcessedAttempts:sqlite3_column_int(pStmt[0], 3)];
      v12 = tryGetDateProperty(pStmt[0], 4);
      if (v12)
      {
        v13 = v12;
        [(UploadRecord *)v7 setDateCreated:v12];
        v14 = tryGetDateProperty(pStmt[0], 5);
        [(UploadRecord *)v7 setDateUploaded:v14];

        v15 = tryGetDateProperty(pStmt[0], 6);
        [(UploadRecord *)v7 setDateLastProcessed:v15];

        [(UploadRecord *)v7 setSize:sqlite3_column_int(pStmt[0], 7)];
        storeIdentifier = [(FLSQLitePersistence *)self storeIdentifier];
        [(UploadRecord *)v7 setApplicationIdentifier:storeIdentifier];

LABEL_17:
        goto LABEL_18;
      }

      v21 = [(FLSQLitePersistence *)self log];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_24AB3F000, v21, OS_LOG_TYPE_ERROR, "Upload record has no creation date.", buf, 2u);
      }

      sqlite3_finalize(pStmt[0]);
    }

    else
    {
      v7 = [(FLSQLitePersistence *)self log];
      if (os_log_type_enabled(&v7->super, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_24AB3F000, &v7->super, OS_LOG_TYPE_ERROR, "Failed to create SQLite iterate uploads statement", buf, 2u);
      }
    }

    v18 = 0;
LABEL_19:

    goto LABEL_20;
  }

  v17 = [(FLSQLitePersistence *)self log];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    LOWORD(pStmt[0]) = 0;
    _os_log_error_impl(&dword_24AB3F000, v17, OS_LOG_TYPE_ERROR, "Can't getUploadRecordWithId, initializeConnection failed", pStmt, 2u);
  }

  v18 = 0;
LABEL_20:

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)persistUploadPayload:(id)payload
{
  v37 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  if (![(FLSQLitePersistence *)self initializeConnectionForUseBy:0])
  {
    v21 = [(FLSQLitePersistence *)self log];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_24AB3F000, v21, OS_LOG_TYPE_ERROR, "Can't persistUploadPayload, initializeConnection failed", buf, 2u);
    }

    v22 = MEMORY[0x277CCA9B8];
    v23 = -4;
    goto LABEL_14;
  }

  pStmt = 0;
  if (![(FLSQLitePersistence *)self tryPrepare:"INSERT INTO fileUploads(uploadId preparedStatement:payload, timestampRefId, dateCreated) VALUES (?, ?, ?, ?);", &pStmt])
  {
    v24 = [(FLSQLitePersistence *)self log];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_24AB3F000, v24, OS_LOG_TYPE_ERROR, "Failed to create SQLite iterate uploads statement", buf, 2u);
    }

    v22 = MEMORY[0x277CCA9B8];
    v23 = -7;
LABEL_14:
    v20 = [v22 errorWithDomain:@"FLErrorDomain" code:v23 userInfo:0];
    goto LABEL_23;
  }

  v5 = objc_autoreleasePoolPush();
  v6 = objc_opt_new();
  uUIDString = [v6 UUIDString];

  sqlite3_bind_text(pStmt, 1, [uUIDString UTF8String], objc_msgSend(uUIDString, "length"), 0);
  sqlite3_bind_blob(pStmt, 2, [payloadCopy bytes], objc_msgSend(payloadCopy, "length"), 0);
  v8 = pStmt;
  context = [(FLSQLitePersistence *)self context];
  timestampReferenceIdentifier = [context timestampReferenceIdentifier];
  uTF8String = [timestampReferenceIdentifier UTF8String];
  context2 = [(FLSQLitePersistence *)self context];
  timestampReferenceIdentifier2 = [context2 timestampReferenceIdentifier];
  sqlite3_bind_text(v8, 3, uTF8String, [timestampReferenceIdentifier2 length], 0);

  v14 = pStmt;
  v15 = objc_opt_new();
  [v15 timeIntervalSince1970];
  sqlite3_bind_int64(v14, 4, v16);

  v17 = sqlite3_step(pStmt);
  v18 = [(FLSQLitePersistence *)self log];
  v19 = v18;
  if (v17 == 13)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      getCurrentDatabaseSize = [(FLSQLitePersistence *)self getCurrentDatabaseSize];
      maxAllowedDatabaseSizeInBytes = [(FLSQLitePersistence *)self maxAllowedDatabaseSizeInBytes];
      *buf = 134218240;
      v34 = getCurrentDatabaseSize;
      v35 = 2048;
      v36 = maxAllowedDatabaseSizeInBytes;
      _os_log_error_impl(&dword_24AB3F000, v19, OS_LOG_TYPE_ERROR, "Database quota exceeded, using %llu out of %llu bytes, failing persist request", buf, 0x16u);
    }

    v25 = MEMORY[0x277CCA9B8];
    v26 = -2;
  }

  else
  {
    if (v17 == 101)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_24AB3F000, v19, OS_LOG_TYPE_DEFAULT, "Successfully added file upload record", buf, 2u);
      }

      v20 = 0;
      goto LABEL_22;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v34) = v17;
      _os_log_error_impl(&dword_24AB3F000, v19, OS_LOG_TYPE_ERROR, "Failed to insert upload record %d", buf, 8u);
    }

    v27 = MEMORY[0x277CCA9B8];
    v26 = sqlite3_errcode([(FLSQLitePersistence *)self db]);
    v25 = v27;
  }

  v20 = [v25 errorWithDomain:@"FLErrorDomain" code:v26 userInfo:0];
LABEL_22:

  objc_autoreleasePoolPop(v5);
  sqlite3_finalize(pStmt);
LABEL_23:

  v28 = *MEMORY[0x277D85DE8];

  return v20;
}

- (int64_t)cleanupPurgableUploads
{
  if ([(FLSQLitePersistence *)self executeSQLStatement:"DELETE FROM fileUploads WHERE uploadId IN (SELECT uploadId FROM fileUploads WHERE (dateUploaded IS NOT NULL OR dateCreated < strftime('%s', datetime('now', '-7 day')) OR status IN (3, 4, 5)));"])
  {
    return sqlite3_changes([(FLSQLitePersistence *)self db]);
  }

  else
  {
    return -1;
  }
}

- (int64_t)doUploadHousekeeping
{
  v30 = *MEMORY[0x277D85DE8];
  context = [(FLSQLitePersistence *)self context];
  userDefaults = [context userDefaults];
  v5 = [userDefaults BOOLForKey:@"DisableFileHousekeeping"];

  if (!v5)
  {
    getPurgableUploadIds = [(FLSQLitePersistence *)self getPurgableUploadIds];
    if ([getPurgableUploadIds count])
    {
      if ([(FLSQLitePersistence *)self markUploadsForPurge])
      {
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v8 = getPurgableUploadIds;
        v9 = [v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v22;
          do
          {
            v12 = 0;
            do
            {
              if (*v22 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = [(FLSQLitePersistence *)self getUploadRecordWithId:*(*(&v21 + 1) + 8 * v12), v21];
              outcomeTelemetryDictionary = [v13 outcomeTelemetryDictionary];
              context2 = [(FLSQLitePersistence *)self context];
              [context2 reportTelemetry:@"com.apple.parsec-fbf.batchUploadOutcome" payload:outcomeTelemetryDictionary];

              ++v12;
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v10);
        }

        cleanupPurgableUploads = [(FLSQLitePersistence *)self cleanupPurgableUploads];
        v16 = [v8 count];
        if (cleanupPurgableUploads == v16)
        {
          getPurgableUploadIds = v8;
          goto LABEL_25;
        }

        v18 = v16;
        v17 = [(FLSQLitePersistence *)self log];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          v26 = v18;
          v27 = 2048;
          v28 = cleanupPurgableUploads;
          _os_log_error_impl(&dword_24AB3F000, v17, OS_LOG_TYPE_ERROR, "Expected %ld purged uploads from housekeeping, but there were %ld.", buf, 0x16u);
        }
      }

      else
      {
        v17 = [(FLSQLitePersistence *)self log];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_24AB3F000, v17, OS_LOG_TYPE_ERROR, "Error marking uploads for purge, bailing on housekeeping.", buf, 2u);
        }

        cleanupPurgableUploads = -1;
      }
    }

    else
    {
      v17 = [(FLSQLitePersistence *)self log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_24AB3F000, v17, OS_LOG_TYPE_DEFAULT, "Housekeeping found no eligible file uploads.", buf, 2u);
      }

      cleanupPurgableUploads = 0;
    }

    goto LABEL_25;
  }

  getPurgableUploadIds = [(FLSQLitePersistence *)self log];
  if (os_log_type_enabled(getPurgableUploadIds, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24AB3F000, getPurgableUploadIds, OS_LOG_TYPE_DEFAULT, "File housekeeping is disabled, doing nothing.", buf, 2u);
  }

  cleanupPurgableUploads = 0;
LABEL_25:

  v19 = *MEMORY[0x277D85DE8];
  return cleanupPurgableUploads;
}

- (BOOL)_updateMetadataHelperForUpload:(id)upload query:(const char *)query
{
  v14 = *MEMORY[0x277D85DE8];
  uploadCopy = upload;
  pStmt = 0;
  if (![(FLSQLitePersistence *)self tryPrepare:query preparedStatement:&pStmt])
  {
LABEL_6:
    v7 = 0;
    goto LABEL_7;
  }

  v7 = 1;
  sqlite3_bind_text(pStmt, 1, [uploadCopy UTF8String], objc_msgSend(uploadCopy, "length"), 0);
  if (sqlite3_step(pStmt) != 101)
  {
    v8 = [(FLSQLitePersistence *)self log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = uploadCopy;
      _os_log_error_impl(&dword_24AB3F000, v8, OS_LOG_TYPE_ERROR, "Failed to update status metadata for upload %@", buf, 0xCu);
    }

    goto LABEL_6;
  }

LABEL_7:
  sqlite3_finalize(pStmt);

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)_updateStatusHelperForUpload:(id)upload toStatus:(int)status
{
  v14 = *MEMORY[0x277D85DE8];
  uploadCopy = upload;
  pStmt = 0;
  if (![(FLSQLitePersistence *)self tryPrepare:"UPDATE fileUploads SET status=? WHERE uploadId=?;" preparedStatement:&pStmt])
  {
LABEL_6:
    v7 = 0;
    goto LABEL_7;
  }

  v7 = 1;
  sqlite3_bind_int(pStmt, 1, status);
  sqlite3_bind_text(pStmt, 2, [uploadCopy UTF8String], objc_msgSend(uploadCopy, "length"), 0);
  if (sqlite3_step(pStmt) != 101)
  {
    v8 = [(FLSQLitePersistence *)self log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = uploadCopy;
      _os_log_error_impl(&dword_24AB3F000, v8, OS_LOG_TYPE_ERROR, "Failed to update status for upload %@", buf, 0xCu);
    }

    goto LABEL_6;
  }

LABEL_7:
  sqlite3_finalize(pStmt);

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)getUploadsRangeStart:(int64_t)start end:(int64_t)end
{
  if (![(FLSQLitePersistence *)self initializeConnectionForUseBy:1])
  {
    v7 = [(FLSQLitePersistence *)self log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(pStmt[0]) = 0;
      v8 = "Can't getRecordsRangeStartDate:endDate, initializeConnection failed";
      v9 = pStmt;
      goto LABEL_25;
    }

LABEL_8:

    v10 = 0;
    goto LABEL_9;
  }

  pStmt[0] = 0;
  if (![(FLSQLitePersistence *)self tryPrepare:"SELECT payload preparedStatement:dateCreated, uploadId FROM fileUploads WHERE dateCreated >= ? AND dateCreated <= ? ORDER BY dateCreated ASC;", pStmt]|| sqlite3_bind_int64(pStmt[0], 1, start) || sqlite3_bind_int64(pStmt[0], 2, end))
  {
    sqlite3_finalize(pStmt[0]);
    v7 = [(FLSQLitePersistence *)self log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v19 = 0;
      v8 = "getRecordsRangeStartDate:endDate, failed";
      v9 = v19;
LABEL_25:
      _os_log_error_impl(&dword_24AB3F000, v7, OS_LOG_TYPE_ERROR, v8, v9, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  while (sqlite3_step(pStmt[0]) == 100)
  {
    v12 = [(FLSQLitePersistence *)self db];
    v13 = [(FLSQLitePersistence *)self log];
    v14 = tryGetDataProperty(v12, v13, pStmt[0], 0);

    v15 = tryGetDateProperty(pStmt[0], 1);
    if (v15)
    {
      v16 = tryGetTextProperty(pStmt[0], 2);
      if (v16)
      {
        v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
        [v17 addObject:v14];
        [v17 addObject:v15];
        storeIdentifier = [(FLSQLitePersistence *)self storeIdentifier];
        [v17 addObject:storeIdentifier];

        [v17 addObject:v16];
        [v10 addObject:v17];
      }

      else
      {
        v17 = [(FLSQLitePersistence *)self log];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *v19 = 0;
          _os_log_error_impl(&dword_24AB3F000, v17, OS_LOG_TYPE_ERROR, "getRecordsRangeStartDate:endDate uploadId failed", v19, 2u);
        }
      }
    }

    else
    {
      v16 = [(FLSQLitePersistence *)self log];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *v19 = 0;
        _os_log_error_impl(&dword_24AB3F000, v16, OS_LOG_TYPE_ERROR, "getRecordsRangeStartDate:endDate dateCreated failed", v19, 2u);
      }
    }
  }

  sqlite3_finalize(pStmt[0]);
LABEL_9:

  return v10;
}

- (id)_getUploadIdsHelper:(sqlite3_stmt *)helper
{
  if (helper)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    while (sqlite3_step(helper) == 100)
    {
      v5 = tryGetTextProperty(helper, 0);
      if (v5)
      {
        [v4 addObject:v5];
      }
    }

    sqlite3_finalize(helper);
  }

  else
  {
    v6 = [(FLSQLitePersistence *)self log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_24AB3F000, v6, OS_LOG_TYPE_ERROR, "Can't getUploadIds, no statement", v8, 2u);
    }

    v4 = 0;
  }

  return v4;
}

- (id)getPurgableUploadIds
{
  if (![(FLSQLitePersistence *)self initializeConnectionForUseBy:1])
  {
    v4 = [(FLSQLitePersistence *)self log];
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v10 = 0;
    v5 = "Can't getPurgableUploadIds, initializeConnection failed";
    v6 = &v10;
LABEL_12:
    _os_log_error_impl(&dword_24AB3F000, v4, OS_LOG_TYPE_ERROR, v5, v6, 2u);
    goto LABEL_7;
  }

  pStmt = 0;
  if ([(FLSQLitePersistence *)self tryPrepare:"SELECT uploadId FROM fileUploads WHERE (dateUploaded IS NOT NULL OR dateCreated < strftime('%s' preparedStatement:datetime('now', '-7 day')) OR status IN (3, 4, 5))", &pStmt])
  {
    v3 = [(FLSQLitePersistence *)self _getUploadIdsHelper:pStmt];
    goto LABEL_8;
  }

  sqlite3_finalize(pStmt);
  v4 = [(FLSQLitePersistence *)self log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 0;
    v5 = "getPurgableUploadIds failed";
    v6 = &v8;
    goto LABEL_12;
  }

LABEL_7:

  v3 = 0;
LABEL_8:

  return v3;
}

- (id)getUploadIdsWithAllStatuses
{
  if (![(FLSQLitePersistence *)self initializeConnectionForUseBy:1])
  {
    v4 = [(FLSQLitePersistence *)self log];
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v10 = 0;
    v5 = "Can't getUploadIdsWithAllStatuses, initializeConnection failed";
    v6 = &v10;
LABEL_12:
    _os_log_error_impl(&dword_24AB3F000, v4, OS_LOG_TYPE_ERROR, v5, v6, 2u);
    goto LABEL_7;
  }

  pStmt = 0;
  if ([(FLSQLitePersistence *)self tryPrepare:"SELECT uploadId FROM fileUploads ORDER BY rowid ASC;" preparedStatement:&pStmt])
  {
    v3 = [(FLSQLitePersistence *)self _getUploadIdsHelper:pStmt];
    goto LABEL_8;
  }

  sqlite3_finalize(pStmt);
  v4 = [(FLSQLitePersistence *)self log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 0;
    v5 = "getUploadIdsWithAllStatuses failed";
    v6 = &v8;
    goto LABEL_12;
  }

LABEL_7:

  v3 = 0;
LABEL_8:

  return v3;
}

- (id)getUploadIdsWithStatus:(int)status
{
  if (![(FLSQLitePersistence *)self initializeConnectionForUseBy:1])
  {
    v5 = [(FLSQLitePersistence *)self log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v6 = "Can't getUploadIdsWithStatus, initializeConnection failed";
      v7 = buf;
      goto LABEL_13;
    }

LABEL_7:

    v8 = 0;
    goto LABEL_8;
  }

  pStmt = 0;
  if (![(FLSQLitePersistence *)self tryPrepare:"SELECT uploadId FROM fileUploads WHERE status=? ORDER BY rowid ASC;" preparedStatement:&pStmt]|| sqlite3_bind_int(pStmt, 1, status))
  {
    sqlite3_finalize(pStmt);
    v5 = [(FLSQLitePersistence *)self log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = 0;
      v6 = "getUploadIdsWithStatus failed";
      v7 = &v10;
LABEL_13:
      _os_log_error_impl(&dword_24AB3F000, v5, OS_LOG_TYPE_ERROR, v6, v7, 2u);
      goto LABEL_7;
    }

    goto LABEL_7;
  }

  v8 = [(FLSQLitePersistence *)self _getUploadIdsHelper:pStmt];
LABEL_8:

  return v8;
}

+ (id)uploadStatusDescription:(int)description
{
  if (description > 5)
  {
    return @"unknown";
  }

  else
  {
    return off_278FF8B88[description];
  }
}

- (BOOL)purgeAllBatches
{
  if ([(FLSQLitePersistence *)self initializeConnectionForUseBy:1])
  {

    return [(FLSQLitePersistence *)self executeInTransactionMultipleSQLStatements:&unk_285E1AEC8];
  }

  else
  {
    v4 = [(FLSQLitePersistence *)self log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_24AB3F000, v4, OS_LOG_TYPE_ERROR, "Can't purgeAllBatches, initializeConnection failed", v5, 2u);
    }

    return 0;
  }
}

- (BOOL)__purgeStatementHelper:(const char *)helper forBatchId:(id)id
{
  v21 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v7 = objc_autoreleasePoolPush();
  pStmt = 0;
  if (![(FLSQLitePersistence *)self tryPrepare:helper preparedStatement:&pStmt])
  {
    v10 = [(FLSQLitePersistence *)self log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      helperCopy2 = helper;
      v11 = "Can't purgeBatch (%s), statement prep failed";
      v12 = v10;
      v13 = 12;
      goto LABEL_9;
    }

LABEL_6:

    v8 = 0;
    goto LABEL_7;
  }

  sqlite3_reset(pStmt);
  v8 = 1;
  sqlite3_bind_text(pStmt, 1, [idCopy UTF8String], objc_msgSend(idCopy, "length"), 0);
  v9 = sqlite3_step(pStmt);
  sqlite3_finalize(pStmt);
  if (v9 != 101)
  {
    v10 = [(FLSQLitePersistence *)self log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      helperCopy2 = helper;
      v19 = 1024;
      v20 = v9;
      v11 = "purgeBatch (%s) failed: %d";
      v12 = v10;
      v13 = 18;
LABEL_9:
      _os_log_error_impl(&dword_24AB3F000, v12, OS_LOG_TYPE_ERROR, v11, buf, v13);
      goto LABEL_6;
    }

    goto LABEL_6;
  }

LABEL_7:
  objc_autoreleasePoolPop(v7);

  v14 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)purgeBatch:(id)batch
{
  batchCopy = batch;
  if (![(FLSQLitePersistence *)self initializeConnectionForUseBy:1])
  {
    v10 = [(FLSQLitePersistence *)self log];
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      v13 = 0;
      goto LABEL_14;
    }

    v18 = 0;
    v11 = "Can't purgeBatch, initializeConnection failed";
    v12 = &v18;
LABEL_16:
    _os_log_error_impl(&dword_24AB3F000, v10, OS_LOG_TYPE_ERROR, v11, v12, 2u);
    goto LABEL_9;
  }

  uTF8String = [@"BEGIN TRANSACTION;" UTF8String];
  uTF8String2 = [@"END TRANSACTION;" UTF8String];
  uTF8String3 = [@"ROLLBACK;" UTF8String];
  if (![(FLSQLitePersistence *)self executeSQLStatement:uTF8String usingTransaction:0])
  {
    v10 = [(FLSQLitePersistence *)self log];
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v11 = "Can't purgeBatch, couldn't begin transaction";
    v12 = buf;
    goto LABEL_16;
  }

  if ([(FLSQLitePersistence *)self __purgeStatementHelper:"DELETE FROM records WHERE batchId=?;" forBatchId:batchCopy]&& [(FLSQLitePersistence *)self __purgeStatementHelper:"DELETE FROM batchStatus WHERE batchId=?;" forBatchId:batchCopy])
  {
    selfCopy2 = self;
    v9 = uTF8String2;
  }

  else
  {
    v14 = [(FLSQLitePersistence *)self log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v16 = 0;
      _os_log_error_impl(&dword_24AB3F000, v14, OS_LOG_TYPE_ERROR, "Failed to purgeBatch, rolling back transaction", v16, 2u);
    }

    selfCopy2 = self;
    v9 = uTF8String3;
  }

  v13 = [(FLSQLitePersistence *)selfCopy2 executeSQLStatement:v9 usingTransaction:0];
LABEL_14:

  return v13;
}

- (int64_t)doBatchesHousekeeping
{
  if ([(FLSQLitePersistence *)self executeSQLStatement:"DELETE FROM records WHERE batchId IN (SELECT batchId FROM batchStatus WHERE (dateUploaded IS NOT NULL OR dateCreated < strftime('%s', datetime('now', '-7 day')) OR status IN (4, 5, 6))); DELETE FROM batchStatus WHERE batchId IN (SELECT batchId FROM batchStatus WHERE (dateUploaded IS NOT NULL OR dateCreated < strftime('%s', datetime('now', '-7 day')) OR status IN (4, 5, 6)));"])
  {
    return sqlite3_changes([(FLSQLitePersistence *)self db]);
  }

  else
  {
    return -1;
  }
}

- (BOOL)closeOpenBatch
{
  v21 = *MEMORY[0x277D85DE8];
  currentBatchIdentifier = [(FLSQLitePersistence *)self currentBatchIdentifier];

  if (!currentBatchIdentifier)
  {
    goto LABEL_5;
  }

  pStmt = 0;
  if (![(FLSQLitePersistence *)self tryPrepare:"UPDATE batchStatus SET status=1 WHERE status=0 AND batchId=?;" preparedStatement:&pStmt])
  {
LABEL_9:
    sqlite3_finalize(pStmt);
    result = 0;
    goto LABEL_10;
  }

  v4 = pStmt;
  currentBatchIdentifier2 = [(FLSQLitePersistence *)self currentBatchIdentifier];
  uTF8String = [currentBatchIdentifier2 UTF8String];
  currentBatchIdentifier3 = [(FLSQLitePersistence *)self currentBatchIdentifier];
  sqlite3_bind_text(v4, 1, uTF8String, [currentBatchIdentifier3 length], 0);

  v8 = sqlite3_step(pStmt);
  if (v8 != 101)
  {
    v10 = v8;
    v11 = [(FLSQLitePersistence *)self log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = sqlite3_errmsg([(FLSQLitePersistence *)self db]);
      *buf = 138412802;
      v16 = @"UPDATE batchStatus SET status=1 WHERE status=0 AND batchId=?;";
      v17 = 1024;
      v18 = v10;
      v19 = 2080;
      v20 = v13;
      _os_log_error_impl(&dword_24AB3F000, v11, OS_LOG_TYPE_ERROR, "Failed to close batch with statement %@ with status %d, error: %s", buf, 0x1Cu);
    }

    goto LABEL_9;
  }

  sqlite3_finalize(pStmt);
  [(FLSQLitePersistence *)self setCurrentBatchCreationDate:0];
  [(FLSQLitePersistence *)self setCurrentBatchIdentifier:0];
LABEL_5:
  result = 1;
LABEL_10:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)forceCloseOpenBatches
{
  v3 = [(FLSQLitePersistence *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_24AB3F000, v3, OS_LOG_TYPE_INFO, "Force closing open batches", v5, 2u);
  }

  return [(FLSQLitePersistence *)self executeSQLStatement:"UPDATE batchStatus SET status=1 WHERE status=0;"];
}

- (BOOL)closeOrphanedBatches
{
  v16 = *MEMORY[0x277D85DE8];
  pStmt = 0;
  if ([(FLSQLitePersistence *)self tryPrepare:"SELECT batchId preparedStatement:dateCreated FROM batchStatus WHERE status=0 AND dateCreated < strftime('%s', datetime('now', '-16 minute'));", &pStmt])
  {
    *&v3 = 138412546;
    v10 = v3;
    while (sqlite3_step(pStmt) == 100)
    {
      v4 = tryGetTextProperty(pStmt, 0);
      v5 = tryGetDateProperty(pStmt, 1);
      v6 = [(FLSQLitePersistence *)self log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = v10;
        v13 = v4;
        v14 = 2112;
        v15 = v5;
        _os_log_error_impl(&dword_24AB3F000, v6, OS_LOG_TYPE_ERROR, "Found orphaned batch %@ created at %@", buf, 0x16u);
      }
    }

    sqlite3_finalize(pStmt);
  }

  else
  {
    v7 = [(FLSQLitePersistence *)self log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_24AB3F000, v7, OS_LOG_TYPE_ERROR, "Failed to get orphaned batches", buf, 2u);
    }
  }

  result = [(FLSQLitePersistence *)self executeSQLStatement:"UPDATE batchStatus SET status=1 WHERE status=0 AND dateCreated < strftime('%s', datetime('now', '-16 minute'));", v10];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)initializeNewBatch
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  if (![(FLSQLitePersistence *)self closeOpenBatch])
  {
    v4 = [(FLSQLitePersistence *)self log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      LOWORD(pStmt[0]) = 0;
      _os_log_error_impl(&dword_24AB3F000, v4, OS_LOG_TYPE_ERROR, "Couldn't close open batches, failing", pStmt, 2u);
    }
  }

  pStmt[0] = 0;
  if (![(FLSQLitePersistence *)self tryPrepare:"INSERT INTO batchStatus(batchId preparedStatement:timestampRefId, dateCreated) VALUES (?, ?, ?);", pStmt])
  {
    uUIDString = [(FLSQLitePersistence *)self log];
    if (os_log_type_enabled(uUIDString, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_24AB3F000, uUIDString, OS_LOG_TYPE_ERROR, "Couldn't prepare batch initializer statement, failing", buf, 2u);
    }

    goto LABEL_13;
  }

  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];

  sqlite3_reset(pStmt[0]);
  sqlite3_bind_text(pStmt[0], 1, [uUIDString UTF8String], [uUIDString length], 0);
  v7 = pStmt[0];
  context = [(FLSQLitePersistence *)self context];
  timestampReferenceIdentifier = [context timestampReferenceIdentifier];
  uTF8String = [timestampReferenceIdentifier UTF8String];
  context2 = [(FLSQLitePersistence *)self context];
  timestampReferenceIdentifier2 = [context2 timestampReferenceIdentifier];
  sqlite3_bind_text(v7, 2, uTF8String, [timestampReferenceIdentifier2 length], 0);

  v13 = pStmt[0];
  v14 = objc_opt_new();
  [v14 timeIntervalSince1970];
  sqlite3_bind_int64(v13, 3, v15);

  v16 = sqlite3_step(pStmt[0]);
  sqlite3_finalize(pStmt[0]);
  if (v16 != 101)
  {
    v19 = [(FLSQLitePersistence *)self log];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v24 = v16;
      _os_log_error_impl(&dword_24AB3F000, v19, OS_LOG_TYPE_ERROR, "SQLite initialize new batch failed: %d", buf, 8u);
    }

LABEL_13:
    v18 = 0;
    goto LABEL_14;
  }

  [(FLSQLitePersistence *)self setCurrentBatchIdentifier:uUIDString];
  date = [MEMORY[0x277CBEAA8] date];
  [(FLSQLitePersistence *)self setCurrentBatchCreationDate:date];

  [(FLSQLitePersistence *)self setCurrentBatchPayloadSize:0];
  [(FLSQLitePersistence *)self setCurrentBatchEventCount:0];
  v18 = 1;
LABEL_14:

  objc_autoreleasePoolPop(v3);
  v20 = *MEMORY[0x277D85DE8];
  return v18;
}

- (int)getDataVersion
{
  v6 = 1;
  if (![(FLSQLitePersistence *)self getIntValueForPragma:@"data_version" into:&v6])
  {
    v3 = [(FLSQLitePersistence *)self log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_24AB3F000, v3, OS_LOG_TYPE_ERROR, "Could not infer data_version, assuming 1", v5, 2u);
    }
  }

  return v6;
}

- (BOOL)_updateMetadataHelperForBatch:(id)batch query:(const char *)query
{
  batchCopy = batch;
  pStmt = 0;
  if (![(FLSQLitePersistence *)self tryPrepare:query preparedStatement:&pStmt])
  {
LABEL_6:
    v7 = 0;
    goto LABEL_7;
  }

  v7 = 1;
  sqlite3_bind_text(pStmt, 1, [batchCopy UTF8String], objc_msgSend(batchCopy, "length"), 0);
  if (sqlite3_step(pStmt) != 101)
  {
    v8 = [(FLSQLitePersistence *)self log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_24AB3F000, v8, OS_LOG_TYPE_ERROR, "Failed to update status metadata for batch", v10, 2u);
    }

    goto LABEL_6;
  }

LABEL_7:
  sqlite3_finalize(pStmt);

  return v7;
}

- (BOOL)_updateStatusHelperForBatch:(id)batch toStatus:(int)status
{
  v14 = *MEMORY[0x277D85DE8];
  batchCopy = batch;
  pStmt = 0;
  if (![(FLSQLitePersistence *)self tryPrepare:"UPDATE batchStatus SET status=? WHERE batchId=?;" preparedStatement:&pStmt])
  {
LABEL_6:
    v7 = 0;
    goto LABEL_7;
  }

  v7 = 1;
  sqlite3_bind_int(pStmt, 1, status);
  sqlite3_bind_text(pStmt, 2, [batchCopy UTF8String], objc_msgSend(batchCopy, "length"), 0);
  if (sqlite3_step(pStmt) != 101)
  {
    v8 = [(FLSQLitePersistence *)self log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = @"UPDATE batchStatus SET status=? WHERE batchId=?;";
      _os_log_error_impl(&dword_24AB3F000, v8, OS_LOG_TYPE_ERROR, "Failed to update status for batch with statement: %@", buf, 0xCu);
    }

    goto LABEL_6;
  }

LABEL_7:
  sqlite3_finalize(pStmt);

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)metadataForBatch:(id)batch bundleID:(id)d
{
  v41 = *MEMORY[0x277D85DE8];
  batchCopy = batch;
  dCopy = d;
  if (![(FLSQLitePersistence *)self initializeConnectionForUseBy:1])
  {
    v11 = [(FLSQLitePersistence *)self log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_24AB3F000, v11, OS_LOG_TYPE_ERROR, "Can't getBatchSize, initialization failed", buf, 2u);
    }

    goto LABEL_11;
  }

  pStmt = 0;
  if (!-[FLSQLitePersistence tryPrepare:preparedStatement:](self, "tryPrepare:preparedStatement:", "SELECT s.batchId, s.timestampRefId, COALESCE(sum(length(r.payload)), 0), s.status, s.processedAttempts, s.dateCreated, s.dateUploaded, s.dateLastProcessed, COUNT(DISTINCT(r.rowId)), first_value(r.payload) OVER (ORDER BY r.rowId) FROM batchStatus s LEFT JOIN records r ON s.batchId = r.batchId WHERE s.batchId=? GROUP BY s.batchId;", &pStmt) || (v8 = pStmt, v9 = batchCopy, sqlite3_bind_text(v8, 1, [batchCopy UTF8String], objc_msgSend(batchCopy, "length"), 0)))
  {
    v10 = [(FLSQLitePersistence *)self log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_24AB3F000, v10, OS_LOG_TYPE_ERROR, "Failed to get batch metadata", buf, 2u);
    }

    goto LABEL_7;
  }

  if (sqlite3_step(pStmt) != 100)
  {
LABEL_7:
    sqlite3_finalize(pStmt);
LABEL_11:
    v12 = 0;
    goto LABEL_12;
  }

  v15 = objc_alloc_init(BatchMetadata);
  [(BatchMetadata *)v15 setBatchIdentifier:batchCopy];
  v16 = tryGetTextProperty(pStmt, 1);
  [(BatchMetadata *)v15 setTimestampReferenceIdentifier:v16];

  [(BatchMetadata *)v15 setBatchSize:sqlite3_column_int(pStmt, 2)];
  [(BatchMetadata *)v15 setBatchStatus:sqlite3_column_int(pStmt, 3)];
  [(BatchMetadata *)v15 setProcessedAttempts:sqlite3_column_int(pStmt, 4)];
  v17 = tryGetDateProperty(pStmt, 5);
  if (v17)
  {
    [(BatchMetadata *)v15 setDateCreated:v17];
    v18 = tryGetDateProperty(pStmt, 6);
    [(BatchMetadata *)v15 setDateUploaded:v18];

    v19 = tryGetDateProperty(pStmt, 7);
    [(BatchMetadata *)v15 setDateLastProcessed:v19];

    [(BatchMetadata *)v15 setBatchEventCount:sqlite3_column_int(pStmt, 8)];
    v20 = [(FLSQLitePersistence *)self db];
    v21 = [(FLSQLitePersistence *)self log];
    v22 = tryGetDataProperty(v20, v21, pStmt, 9);

    v23 = [FLLogger fixedCategoryForBundleID:dCopy];
    if (v23)
    {
      [(BatchMetadata *)v15 setCategory:v23];
    }

    else if (v22)
    {
      objc_initWeak(buf, self);
      v31 = MEMORY[0x277D85DD0];
      v32 = 3221225472;
      v33 = __63__FLSQLitePersistence_BatchManager__metadataForBatch_bundleID___block_invoke;
      v34 = &unk_278FF8BC0;
      objc_copyWeak(&v37, buf);
      v35 = dCopy;
      v36 = v22;
      v25 = _Block_copy(&v31);
      v26 = [FLLogger alloc];
      v27 = [(FLSQLitePersistence *)self context:v31];
      v28 = [(FLLogger *)v26 initWithContext:v27];

      v29 = [(FLLogger *)v28 categoryForSiriPayload:v22 autoBugCaptureBlock:v25];
      [(BatchMetadata *)v15 setCategory:v29];

      objc_destroyWeak(&v37);
      objc_destroyWeak(buf);
    }

    else
    {
      [(BatchMetadata *)v15 setCategory:0];
      v30 = [(FLSQLitePersistence *)self log];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v40 = dCopy;
        _os_log_error_impl(&dword_24AB3F000, v30, OS_LOG_TYPE_ERROR, "Batch has no payload for bundleID %@", buf, 0xCu);
      }
    }

    sqlite3_finalize(pStmt);
    v12 = v15;
  }

  else
  {
    v24 = [(FLSQLitePersistence *)self log];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_24AB3F000, v24, OS_LOG_TYPE_ERROR, "Batch has no creation date.", buf, 2u);
    }

    sqlite3_finalize(pStmt);
    v12 = 0;
  }

LABEL_12:
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

void __63__FLSQLitePersistence_BatchManager__metadataForBatch_bundleID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a3;
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = [FLAutoBugHelper alloc];
  v8 = [WeakRetained context];
  v9 = [v8 autoBugCapture];
  v10 = [(FLAutoBugHelper *)v7 initWithAutoBugCapture:v9 bundleID:*(a1 + 32) eventValue:*(a1 + 40)];

  if (v11)
  {
    [(FLAutoBugHelper *)v10 triggerABCWithSubtype:v5 additionalEventName:v11];
  }

  else
  {
    [(FLAutoBugHelper *)v10 triggerABCWithSubtype:v5];
  }
}

- (id)getRecordsRangeStart:(int64_t)start end:(int64_t)end
{
  if (![(FLSQLitePersistence *)self initializeConnectionForUseBy:1])
  {
    v7 = [(FLSQLitePersistence *)self log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(pStmt[0]) = 0;
      v8 = "Can't getRecordsRangeStartDate:endDate, initializeConnection failed";
      v9 = pStmt;
      goto LABEL_25;
    }

LABEL_8:

    v10 = 0;
    goto LABEL_9;
  }

  pStmt[0] = 0;
  if (![(FLSQLitePersistence *)self tryPrepare:"SELECT r.payload preparedStatement:r.dateCreated, r.batchId FROM records r WHERE r.dateCreated >= ? AND r.dateCreated <= ? ORDER BY r.dateCreated ASC;", pStmt]|| sqlite3_bind_int64(pStmt[0], 1, start) || sqlite3_bind_int64(pStmt[0], 2, end))
  {
    sqlite3_finalize(pStmt[0]);
    v7 = [(FLSQLitePersistence *)self log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v19 = 0;
      v8 = "getRecordsRangeStartDate:endDate, failed";
      v9 = v19;
LABEL_25:
      _os_log_error_impl(&dword_24AB3F000, v7, OS_LOG_TYPE_ERROR, v8, v9, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  while (sqlite3_step(pStmt[0]) == 100)
  {
    v12 = [(FLSQLitePersistence *)self db];
    v13 = [(FLSQLitePersistence *)self log];
    v14 = tryGetDataProperty(v12, v13, pStmt[0], 0);

    v15 = tryGetDateProperty(pStmt[0], 1);
    if (v15)
    {
      v16 = tryGetTextProperty(pStmt[0], 2);
      if (v16)
      {
        v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
        [v17 addObject:v14];
        [v17 addObject:v15];
        storeIdentifier = [(FLSQLitePersistence *)self storeIdentifier];
        [v17 addObject:storeIdentifier];

        [v17 addObject:v16];
        [v10 addObject:v17];
      }

      else
      {
        v17 = [(FLSQLitePersistence *)self log];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *v19 = 0;
          _os_log_error_impl(&dword_24AB3F000, v17, OS_LOG_TYPE_ERROR, "getRecordsRangeStartDate:endDate batchId failed", v19, 2u);
        }
      }
    }

    else
    {
      v16 = [(FLSQLitePersistence *)self log];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *v19 = 0;
        _os_log_error_impl(&dword_24AB3F000, v16, OS_LOG_TYPE_ERROR, "getRecordsRangeStartDate:endDate dateCreated failed", v19, 2u);
      }
    }
  }

  sqlite3_finalize(pStmt[0]);
LABEL_9:

  return v10;
}

- (id)_getBatchIdsHelper:(sqlite3_stmt *)helper
{
  context = [(FLSQLitePersistence *)self context];
  queue = [context queue];
  dispatch_assert_queue_V2(queue);

  if (helper)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    while (sqlite3_step(helper) == 100)
    {
      v8 = tryGetTextProperty(helper, 0);
      if (v8)
      {
        [v7 addObject:v8];
      }
    }

    sqlite3_finalize(helper);
  }

  else
  {
    v9 = [(FLSQLitePersistence *)self log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_error_impl(&dword_24AB3F000, v9, OS_LOG_TYPE_ERROR, "Can't getBatchIds, no statement", v11, 2u);
    }

    v7 = 0;
  }

  return v7;
}

- (id)getPurgableBatchIds
{
  if (![(FLSQLitePersistence *)self initializeConnectionForUseBy:1])
  {
    v4 = [(FLSQLitePersistence *)self log];
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v10 = 0;
    v5 = "Can't getPurgableBatchIds, initializeConnection failed";
    v6 = &v10;
LABEL_12:
    _os_log_error_impl(&dword_24AB3F000, v4, OS_LOG_TYPE_ERROR, v5, v6, 2u);
    goto LABEL_7;
  }

  pStmt = 0;
  if ([(FLSQLitePersistence *)self tryPrepare:"SELECT batchId FROM batchStatus WHERE (dateUploaded IS NOT NULL OR dateCreated < strftime('%s' preparedStatement:datetime('now', '-7 day')) OR status IN (4, 5, 6))", &pStmt])
  {
    v3 = [(FLSQLitePersistence *)self _getBatchIdsHelper:pStmt];
    goto LABEL_8;
  }

  sqlite3_finalize(pStmt);
  v4 = [(FLSQLitePersistence *)self log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 0;
    v5 = "getPurgableBatchIds failed";
    v6 = &v8;
    goto LABEL_12;
  }

LABEL_7:

  v3 = 0;
LABEL_8:

  return v3;
}

- (id)getBatchIdsWithAllStatuses
{
  if (![(FLSQLitePersistence *)self initializeConnectionForUseBy:1])
  {
    v4 = [(FLSQLitePersistence *)self log];
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v10 = 0;
    v5 = "Can't getBatchIdsWithAllStatuses, initializeConnection failed";
    v6 = &v10;
LABEL_12:
    _os_log_error_impl(&dword_24AB3F000, v4, OS_LOG_TYPE_ERROR, v5, v6, 2u);
    goto LABEL_7;
  }

  pStmt = 0;
  if ([(FLSQLitePersistence *)self tryPrepare:"SELECT batchId FROM batchStatus ORDER BY rowid ASC;" preparedStatement:&pStmt])
  {
    v3 = [(FLSQLitePersistence *)self _getBatchIdsHelper:pStmt];
    goto LABEL_8;
  }

  sqlite3_finalize(pStmt);
  v4 = [(FLSQLitePersistence *)self log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 0;
    v5 = "getBatchIdsWithAllStatuses failed";
    v6 = &v8;
    goto LABEL_12;
  }

LABEL_7:

  v3 = 0;
LABEL_8:

  return v3;
}

- (id)getBatchIdsWithStatus:(int)status
{
  if (![(FLSQLitePersistence *)self initializeConnectionForUseBy:1])
  {
    v5 = [(FLSQLitePersistence *)self log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v6 = "Can't getBatchIdsWithStatus, initializeConnection failed";
      v7 = buf;
      goto LABEL_13;
    }

LABEL_7:

    v8 = 0;
    goto LABEL_8;
  }

  pStmt = 0;
  if (![(FLSQLitePersistence *)self tryPrepare:"SELECT batchId FROM batchStatus WHERE status=? ORDER BY rowid ASC LIMIT 4096;" preparedStatement:&pStmt]|| sqlite3_bind_int(pStmt, 1, status))
  {
    sqlite3_finalize(pStmt);
    v5 = [(FLSQLitePersistence *)self log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = 0;
      v6 = "getBatchIdsWithStatus failed";
      v7 = &v10;
LABEL_13:
      _os_log_error_impl(&dword_24AB3F000, v5, OS_LOG_TYPE_ERROR, v6, v7, 2u);
      goto LABEL_7;
    }

    goto LABEL_7;
  }

  v8 = [(FLSQLitePersistence *)self _getBatchIdsHelper:pStmt];
LABEL_8:

  return v8;
}

+ (id)batchStatusDescription:(int)description
{
  if (description > 6)
  {
    return @"unknown";
  }

  else
  {
    return off_278FF8BE0[description];
  }
}

- (BOOL)shouldIgnoreQuota
{
  context = [(FLSQLitePersistence *)self context];
  isInternalBuild = [objc_opt_class() isInternalBuild];

  if (!isInternalBuild)
  {
    return 0;
  }

  v5 = MEMORY[0x277CBEBC0];
  databasePath = [(FLSQLitePersistence *)self databasePath];
  v7 = [v5 fileURLWithPath:databasePath];

  uRLByDeletingLastPathComponent = [v7 URLByDeletingLastPathComponent];
  v9 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:@".com.apple.feedbacklogger.ignore_quota"];
  standardizedURL = [v9 standardizedURL];

  path = [standardizedURL path];
  if (path && (-[FLSQLitePersistence context](self, "context"), v12 = objc_claimAutoreleasedReturnValue(), [v12 fileManager], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "fileExistsAtPath:", path), v13, v12, v14))
  {
    v15 = [(FLSQLitePersistence *)self log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_24AB3F000, v15, OS_LOG_TYPE_DEFAULT, "Ignoring FeedbackLogger DB size quota.", v18, 2u);
    }

    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)setDatabaseSizeLimit
{
  if ([(FLSQLitePersistence *)self shouldIgnoreQuota])
  {
    return 1;
  }

  v12 = 0;
  if ([(FLSQLitePersistence *)self getIntValueForPragma:@"page_size" into:&v12])
  {
    maxAllowedDatabaseSizeInBytes = [(FLSQLitePersistence *)self maxAllowedDatabaseSizeInBytes];
    v5 = maxAllowedDatabaseSizeInBytes / v12;
    v6 = objc_autoreleasePoolPush();
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"PRAGMA max_page_count = %i", v5];;
    uTF8String = [v7 UTF8String];

    v3 = [(FLSQLitePersistence *)self executeSQLStatement:uTF8String];
    objc_autoreleasePoolPop(v6);
  }

  else
  {
    v9 = [(FLSQLitePersistence *)self log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_24AB3F000, v9, OS_LOG_TYPE_ERROR, "Couldn't infer page_size, failing request to set database size limit", buf, 2u);
    }

    return 0;
  }

  return v3;
}

- (unint64_t)getCurrentDatabaseSize
{
  v4 = 0;
  [(FLSQLitePersistence *)self getIntValueForPragma:@"page_size" into:&v4];
  [(FLSQLitePersistence *)self getIntValueForPragma:@"page_count" into:&v4 + 4];
  return v4 * SHIDWORD(v4);
}

- (int)getSchemaVersion
{
  v6 = 0;
  if (![(FLSQLitePersistence *)self getIntValueForPragma:@"user_version" into:&v6])
  {
    v3 = [(FLSQLitePersistence *)self log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_24AB3F000, v3, OS_LOG_TYPE_ERROR, "Could not infer schema_version, assuming 0", v5, 2u);
    }
  }

  return v6;
}

- (BOOL)recreateDatabase
{
  v14 = *MEMORY[0x277D85DE8];
  if (![(FLSQLitePersistence *)self deleteDatabase]|| ![(FLSQLitePersistence *)self createDatabase])
  {
    v5 = [(FLSQLitePersistence *)self log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12) = 0;
      v8 = "could not recreate database for migration";
      v10 = v5;
      v11 = 2;
      goto LABEL_18;
    }

    goto LABEL_10;
  }

  v3 = [(FLSQLitePersistence *)self executeSQLStatement:"PRAGMA journal_mode=WAL;" usingTransaction:0];
  v4 = [(FLSQLitePersistence *)self log];
  v5 = v4;
  if (!v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315138;
      v13 = sqlite3_errmsg([(FLSQLitePersistence *)self db]);
      v8 = "%s";
LABEL_16:
      v10 = v5;
      v11 = 12;
LABEL_18:
      _os_log_error_impl(&dword_24AB3F000, v10, OS_LOG_TYPE_ERROR, v8, &v12, v11);
    }

LABEL_10:

    result = 0;
    goto LABEL_11;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "CREATE TABLE batchStatus(batchId TEXT NOT NULL PRIMARY KEY, timestampRefId TEXT NOT NULL, status INT DEFAULT 0, processedAttempts INT DEFAULT 0, dateCreated INT NOT NULL, dateUploaded INT DEFAULT NULL, dateLastProcessed INT DEFAULT NULL);CREATE TABLE records(batchId TEXT NOT NULL, payload BLOB, dateCreated INT NOT NULL, FOREIGN KEY (batchId) REFERENCES batchStatus(batchId));CREATE TABLE fileUploads(uploadId TEXT NOT NULL PRIMARY KEY, payload BLOB, timestampRefId TEXT NOT NULL, status INT DEFAULT 0, processedAttempts INT DEFAULT 0, dateCreated INT NOT NULL, dateUploaded INT DEFAULT NULL, dateLastProcessed INT DEFAULT NULL);";
    _os_log_impl(&dword_24AB3F000, v5, OS_LOG_TYPE_DEFAULT, "migrating schema with: %s", &v12, 0xCu);
  }

  if (![(FLSQLitePersistence *)self executeSQLStatement:"DROP TABLE IF EXISTS records; DROP TABLE IF EXISTS batchStatus;"]|| ![(FLSQLitePersistence *)self executeSQLStatement:"CREATE TABLE batchStatus(batchId TEXT NOT NULL PRIMARY KEY, timestampRefId TEXT NOT NULL, status INT DEFAULT 0, processedAttempts INT DEFAULT 0, dateCreated INT NOT NULL, dateUploaded INT DEFAULT NULL, dateLastProcessed INT DEFAULT NULL);CREATE TABLE records(batchId TEXT NOT NULL, payload BLOB, dateCreated INT NOT NULL, FOREIGN KEY (batchId) REFERENCES batchStatus(batchId));CREATE TABLE fileUploads(uploadId TEXT NOT NULL PRIMARY KEY, payload BLOB, timestampRefId TEXT NOT NULL, status INT DEFAULT 0, processedAttempts INT DEFAULT 0, dateCreated INT NOT NULL, dateUploaded INT DEFAULT NULL, dateLastProcessed INT DEFAULT NULL);"])
  {
    v5 = [(FLSQLitePersistence *)self log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v9 = sqlite3_errmsg([(FLSQLitePersistence *)self db]);
      v12 = 136315138;
      v13 = v9;
      v8 = "%s";
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  result = 1;
LABEL_11:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)updateSchema
{
  *&v18[5] = *MEMORY[0x277D85DE8];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __50__FLSQLitePersistence_SchemaManager__updateSchema__block_invoke;
  aBlock[3] = &unk_278FF8C28;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  getSchemaVersion = [(FLSQLitePersistence *)self getSchemaVersion];
  v5 = [(FLSQLitePersistence *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v18[0] = getSchemaVersion;
    LOWORD(v18[1]) = 1024;
    *(&v18[1] + 2) = 8;
    _os_log_impl(&dword_24AB3F000, v5, OS_LOG_TYPE_DEFAULT, "db's schema version %d. required schema version %d.", buf, 0xEu);
  }

  if (getSchemaVersion <= 4)
  {
    if (getSchemaVersion < 5)
    {
      if (![(FLSQLitePersistence *)self recreateDatabase])
      {
        goto LABEL_26;
      }

      goto LABEL_24;
    }

    goto LABEL_10;
  }

  if ((getSchemaVersion - 6) < 2)
  {
    storeIdentifier = [(FLSQLitePersistence *)self storeIdentifier];
    if ([storeIdentifier isEqualToString:@"com.apple.siri.metrics.MetricsExtension"] && !-[FLSQLitePersistence canAddRecords](self, "canAddRecords"))
    {
      recreateDatabase = [(FLSQLitePersistence *)self recreateDatabase];

      if (!recreateDatabase)
      {
LABEL_26:
        v12 = 0;
        goto LABEL_27;
      }
    }

    else
    {
    }

    goto LABEL_24;
  }

  if (getSchemaVersion == 5)
  {
    v8 = [(FLSQLitePersistence *)self executeSQLStatement:"PRAGMA journal_mode=WAL;" usingTransaction:0];
    v9 = [(FLSQLitePersistence *)self log];
    v10 = v9;
    if (!v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v15 = sqlite3_errmsg([(FLSQLitePersistence *)self db]);
        *buf = 136315138;
        *v18 = v15;
        _os_log_error_impl(&dword_24AB3F000, v10, OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
      }

      goto LABEL_26;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *v18 = "CREATE TABLE fileUploads(uploadId TEXT NOT NULL PRIMARY KEY, payload BLOB, timestampRefId TEXT NOT NULL, status INT DEFAULT 0, processedAttempts INT DEFAULT 0, dateCreated INT NOT NULL, dateUploaded INT DEFAULT NULL, dateLastProcessed INT DEFAULT NULL);";
      _os_log_impl(&dword_24AB3F000, v10, OS_LOG_TYPE_DEFAULT, "migrating schema with: %s", buf, 0xCu);
    }

    [(FLSQLitePersistence *)self executeSQLStatement:"CREATE TABLE fileUploads(uploadId TEXT NOT NULL PRIMARY KEY, payload BLOB, timestampRefId TEXT NOT NULL, status INT DEFAULT 0, processedAttempts INT DEFAULT 0, dateCreated INT NOT NULL, dateUploaded INT DEFAULT NULL, dateLastProcessed INT DEFAULT NULL);"];
LABEL_24:
    v3[2](v3, 8);
    goto LABEL_25;
  }

  if (getSchemaVersion != 8)
  {
LABEL_10:
    v6 = [(FLSQLitePersistence *)self log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_24AB3F000, v6, OS_LOG_TYPE_ERROR, "Received unexpected schema version, failing migration", buf, 2u);
    }

    goto LABEL_26;
  }

LABEL_25:
  v12 = [(FLSQLitePersistence *)self getSchemaVersion]== 8;
LABEL_27:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t __50__FLSQLitePersistence_SchemaManager__updateSchema__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"PRAGMA user_version = %i", a2];;
  v6 = [v5 UTF8String];

  if (!v6)
  {
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  if (([*(a1 + 32) executeSQLStatement:v6] & 1) == 0)
  {
    v8 = [*(a1 + 32) log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_24AB3F000, v8, OS_LOG_TYPE_ERROR, "Schema updateVersion failed", buf, 2u);
    }

    goto LABEL_7;
  }

  v7 = 1;
LABEL_8:
  objc_autoreleasePoolPop(v4);
  return v7;
}

- (BOOL)prepareSchema
{
  if ([(FLSQLitePersistence *)self isSchemaReady])
  {
    return 1;
  }

  return [(FLSQLitePersistence *)self updateSchema];
}

- (BOOL)deleteAllUploadsQueuedBefore:(id)before
{
  v19 = *MEMORY[0x277D85DE8];
  beforeCopy = before;
  if ([(FLSQLitePersistence *)self initializeConnectionForUseBy:1])
  {
    [beforeCopy timeIntervalSince1970];
    v6 = v5;
    v7 = [(FLSQLitePersistence *)self log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v18 = v6;
      _os_log_impl(&dword_24AB3F000, v7, OS_LOG_TYPE_DEFAULT, "Deleting all uploads queued before %lld (timestampInSecondsSince1970)", buf, 0xCu);
    }

    v8 = objc_autoreleasePoolPush();
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE FROM fileUploads WHERE dateCreated <= %lld", v6];;
    v10 = -[FLSQLitePersistence executeSQLStatement:usingTransaction:](self, "executeSQLStatement:usingTransaction:", [v9 UTF8String], 0);
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE FROM records     WHERE dateCreated <= %lld", v6];;
    v16[0] = v11;
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE FROM batchStatus WHERE dateCreated <= %lld", v6];;
    v16[1] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
    LODWORD(self) = v10 & [(FLSQLitePersistence *)self executeInTransactionMultipleSQLStatements:v13];

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    self = [(FLSQLitePersistence *)self log];
    if (os_log_type_enabled(&self->super, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_24AB3F000, &self->super, OS_LOG_TYPE_ERROR, "deleteAllQueuedFileAndBatchedRecordUploads: initializeConnection failed", buf, 2u);
    }

    LOBYTE(self) = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return self;
}

- (BOOL)deleteDatabase
{
  v12 = *MEMORY[0x277D85DE8];
  if ([(FLSQLiteDatabaseConnection *)self->_dbConnection db])
  {
    v3 = [(FLSQLitePersistence *)self log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_24AB3F000, v3, OS_LOG_TYPE_DEFAULT, "Resetting to an empty database file.", &v10, 2u);
    }

    [(FLSQLiteDatabaseConnection *)self->_dbConnection db];
    v4 = _sqlite3_db_truncate();
    v5 = v4 == 0;
    if (v4)
    {
      v6 = [(FLSQLitePersistence *)self log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v9 = sqlite3_errmsg([(FLSQLiteDatabaseConnection *)self->_dbConnection db]);
        v10 = 136315138;
        v11 = v9;
        _os_log_error_impl(&dword_24AB3F000, v6, OS_LOG_TYPE_ERROR, "%s", &v10, 0xCu);
      }
    }

    [(FLSQLitePersistence *)self closeDatabase];
  }

  else
  {
    v5 = 1;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)closeDatabase
{
  v3 = [(FLSQLitePersistence *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_24AB3F000, v3, OS_LOG_TYPE_DEFAULT, "Closing database file", v4, 2u);
  }

  [(FLSQLiteDatabaseConnection *)self->_dbConnection close];
}

- (BOOL)createDatabase
{
  open = [(FLSQLitePersistence *)self open];
  if (open)
  {

    LOBYTE(open) = [(FLSQLitePersistence *)self executeSQLStatement:"PRAGMA foreign_keys=ON;" usingTransaction:0];
  }

  return open;
}

- (BOOL)canAddRecords
{
  v3 = objc_autoreleasePoolPush();
  v7 = 0;
  pStmt = 0;
  v6 = 0;
  v4 = [(FLSQLitePersistence *)self tryPrepare:"INSERT INTO records (batchId preparedStatement:payload, dateCreated) VALUES (?, ?, ?);", &pStmt]&& [(FLSQLitePersistence *)self tryPrepare:"INSERT INTO batchStatus(batchId preparedStatement:timestampRefId, dateCreated) VALUES (?, ?, ?);", &v7]&& [(FLSQLitePersistence *)self tryPrepare:"INSERT INTO fileUploads(uploadId preparedStatement:payload, timestampRefId, dateCreated) VALUES (?, ?, ?, ?);", &v6];
  sqlite3_finalize(pStmt);
  sqlite3_finalize(v7);
  sqlite3_finalize(v6);
  objc_autoreleasePoolPop(v3);
  return v4;
}

- (BOOL)getIntValueForPragma:(id)pragma into:(int *)into
{
  v17 = *MEMORY[0x277D85DE8];
  pragmaCopy = pragma;
  v7 = objc_autoreleasePoolPush();
  pStmt = 0;
  pragmaCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"PRAGMA %@", pragmaCopy];;
  uTF8String = [pragmaCopy UTF8String];

  if (![(FLSQLitePersistence *)self tryPrepare:uTF8String preparedStatement:&pStmt])
  {
LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  if (sqlite3_step(pStmt) != 100)
  {
    sqlite3_finalize(pStmt);
    v11 = [(FLSQLitePersistence *)self log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = pragmaCopy;
      _os_log_error_impl(&dword_24AB3F000, v11, OS_LOG_TYPE_ERROR, "Could not infer PRAGMA %@", buf, 0xCu);
    }

    goto LABEL_7;
  }

  *into = sqlite3_column_int(pStmt, 0);
  sqlite3_finalize(pStmt);
  v10 = 1;
LABEL_8:
  objc_autoreleasePoolPop(v7);

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)iteratePayloadForBatch:(id)batch codeblock:(id)codeblock
{
  v27 = *MEMORY[0x277D85DE8];
  batchCopy = batch;
  codeblockCopy = codeblock;
  sqlite3_reset(self->_iteratePayloadStatement);
  sqlite3_bind_text(self->_iteratePayloadStatement, 1, [batchCopy UTF8String], objc_msgSend(batchCopy, "length"), 0);
  v22 = 0;
  while (1)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = sqlite3_step(self->_iteratePayloadStatement);
    if (v9 != 100)
    {
      break;
    }

    v10 = sqlite3_column_blob(self->_iteratePayloadStatement, 0);
    if (sqlite3_errcode([(FLSQLitePersistence *)self db]) == 7)
    {
      v15 = [(FLSQLitePersistence *)self log];
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      *buf = 0;
      v17 = "SQLite payload blob iteration OOM";
      v18 = v15;
      v19 = 2;
      goto LABEL_15;
    }

    v11 = [MEMORY[0x277CBEA90] dataWithBytes:v10 length:{sqlite3_column_bytes(self->_iteratePayloadStatement, 0)}];
    context = [(FLSQLitePersistence *)self context];
    codeblockCopy[2](codeblockCopy, v11, &v22, context);

    objc_autoreleasePoolPop(v8);
    if (v22 == 1)
    {
      v13 = 1;
      goto LABEL_13;
    }
  }

  v14 = v9;
  if (v9 == 101)
  {
    v13 = 1;
    goto LABEL_12;
  }

  v15 = [(FLSQLitePersistence *)self log];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    uTF8String = [batchCopy UTF8String];
    *buf = 136315394;
    v24 = uTF8String;
    v25 = 1024;
    v26 = v14;
    v17 = "SQLite iterate payload for batch (%s) failed: %d";
    v18 = v15;
    v19 = 18;
LABEL_15:
    _os_log_error_impl(&dword_24AB3F000, v18, OS_LOG_TYPE_ERROR, v17, buf, v19);
  }

LABEL_11:

  v13 = 0;
LABEL_12:
  objc_autoreleasePoolPop(v8);
LABEL_13:

  v20 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)executeInTransactionMultipleSQLStatements:(id)statements
{
  v22 = *MEMORY[0x277D85DE8];
  statementsCopy = statements;
  if ([(FLSQLitePersistence *)self db]|| [(FLSQLitePersistence *)self open])
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 1;
    if (sqlite3_exec([(FLSQLitePersistence *)self db], "BEGIN TRANSACTION;", 0, 0, 0))
    {
      v5 = [(FLSQLitePersistence *)self log];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_24AB3F000, v5, OS_LOG_TYPE_ERROR, "Failed to start transaction", buf, 2u);
      }

LABEL_7:
      v6 = 0;
LABEL_19:
      _Block_object_dispose(&v14, 8);
      goto LABEL_20;
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __65__FLSQLitePersistence_executeInTransactionMultipleSQLStatements___block_invoke;
    v13[3] = &unk_278FF8C58;
    v13[4] = self;
    v13[5] = &v14;
    [statementsCopy enumerateObjectsUsingBlock:v13];
    if (*(v15 + 24) == 1)
    {
      errmsg = 0;
      v7 = sqlite3_exec([(FLSQLitePersistence *)self db], "COMMIT;", 0, 0, &errmsg);
      if (v7)
      {
        v8 = [(FLSQLitePersistence *)self log];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109378;
          v19 = v7;
          v20 = 2080;
          v21 = errmsg;
          _os_log_error_impl(&dword_24AB3F000, v8, OS_LOG_TYPE_ERROR, "Failed to commit transaction - error-code: %d error-message: %s", buf, 0x12u);
        }

        sqlite3_free(errmsg);
        goto LABEL_7;
      }
    }

    else if (sqlite3_exec([(FLSQLitePersistence *)self db], "ROLLBACK;", 0, 0, 0))
    {
      v9 = [(FLSQLitePersistence *)self log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_24AB3F000, v9, OS_LOG_TYPE_ERROR, "Failed to rollback transaction", buf, 2u);
      }
    }

    v6 = *(v15 + 24);
    goto LABEL_19;
  }

  v6 = 0;
LABEL_20:

  v10 = *MEMORY[0x277D85DE8];
  return v6 & 1;
}

void __65__FLSQLitePersistence_executeInTransactionMultipleSQLStatements___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a2;
  *(*(*(a1 + 40) + 8) + 24) &= [*(a1 + 32) executeSQLStatement:objc_msgSend(v6 usingTransaction:{"UTF8String"), 0}];
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    *a4 = 1;
    v7 = [*(a1 + 32) log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v6;
      _os_log_error_impl(&dword_24AB3F000, v7, OS_LOG_TYPE_ERROR, "Failed to execute (%@) in set, rolling back", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)executeSQLStatement:(const char *)statement usingTransaction:(BOOL)transaction
{
  transactionCopy = transaction;
  v24 = *MEMORY[0x277D85DE8];
  errmsg = 0;
  if ([(FLSQLitePersistence *)self db]|| (v7 = [(FLSQLitePersistence *)self open]))
  {
    if (transactionCopy && sqlite3_exec([(FLSQLitePersistence *)self db], "BEGIN TRANSACTION;", 0, 0, 0))
    {
      v8 = [(FLSQLitePersistence *)self log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_24AB3F000, v8, OS_LOG_TYPE_ERROR, "Failed to start transaction", buf, 2u);
      }
    }

    else
    {
      v9 = sqlite3_exec([(FLSQLitePersistence *)self db], statement, 0, 0, &errmsg);
      if (v9)
      {
        v10 = v9;
        v11 = [(FLSQLitePersistence *)self log];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          statementCopy2 = statement;
          v20 = 1024;
          v21 = v10;
          v22 = 2080;
          v23 = errmsg;
          _os_log_error_impl(&dword_24AB3F000, v11, OS_LOG_TYPE_ERROR, "SQL statement failed - SQL:%s error-code: %d error-message: %s", buf, 0x1Cu);
        }

        sqlite3_free(errmsg);
        if (transactionCopy)
        {
          sqlite3_exec([(FLSQLitePersistence *)self db], "ROLLBACK;", 0, 0, 0);
        }
      }

      else
      {
        if (!transactionCopy || (v12 = sqlite3_exec([(FLSQLitePersistence *)self db], "COMMIT;", 0, 0, &errmsg)) == 0)
        {
          LOBYTE(v7) = 1;
          goto LABEL_19;
        }

        v13 = v12;
        v14 = [(FLSQLitePersistence *)self log];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          statementCopy2 = statement;
          v20 = 1024;
          v21 = v13;
          v22 = 2080;
          v23 = errmsg;
          _os_log_error_impl(&dword_24AB3F000, v14, OS_LOG_TYPE_ERROR, "SQL statement failed - SQL:%s error-code: %d error-message: %s", buf, 0x1Cu);
        }

        sqlite3_free(errmsg);
      }
    }

    LOBYTE(v7) = 0;
  }

LABEL_19:
  v15 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)tryPrepare:(const char *)prepare preparedStatement:(sqlite3_stmt *)statement
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = sqlite3_prepare_v2([(FLSQLitePersistence *)self db], prepare, -1, statement, 0);
  if (v6)
  {
    v7 = [(FLSQLitePersistence *)self log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      prepareCopy = prepare;
      v12 = 1024;
      v13 = v6;
      _os_log_error_impl(&dword_24AB3F000, v7, OS_LOG_TYPE_ERROR, "SQLite statement (%s) prep failed: %d", &v10, 0x12u);
    }
  }

  result = v6 == 0;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)tryRolloverBatchIfNecessary:(unint64_t)necessary preferredBatchSize:(unint64_t)size
{
  v27 = *MEMORY[0x277D85DE8];
  currentBatchIdentifier = [(FLSQLitePersistence *)self currentBatchIdentifier];

  if (currentBatchIdentifier)
  {
    if ([(FLSQLitePersistence *)self currentBatchPayloadSize]<= size)
    {
      v11 = [(FLSQLitePersistence *)self currentBatchPayloadSize]+ necessary;
      if (v11 <= [(FLSQLitePersistence *)self maxBatchPayloadInBytes])
      {
        currentBatchCreationDate = [(FLSQLitePersistence *)self currentBatchCreationDate];
        [currentBatchCreationDate timeIntervalSinceNow];
        v14 = -v13;
        [(FLSQLitePersistence *)self batchMaximumDuration];
        v16 = v15;

        if (v16 >= v14)
        {
LABEL_17:
          LOBYTE(initializeNewBatch) = 1;
          goto LABEL_18;
        }

        v8 = [(FLSQLitePersistence *)self log];
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_12;
        }

        currentBatchCreationDate2 = [(FLSQLitePersistence *)self currentBatchCreationDate];
        [currentBatchCreationDate2 timeIntervalSinceNow];
        v23 = v22;
        currentBatchIdentifier2 = [(FLSQLitePersistence *)self currentBatchIdentifier];
        *v26 = 134218242;
        *&v26[4] = v23;
        *&v26[12] = 2080;
        *&v26[14] = [currentBatchIdentifier2 UTF8String];
        _os_log_error_impl(&dword_24AB3F000, v8, OS_LOG_TYPE_ERROR, "Batch exceeded maximum allowed life time (%f), rolling over Id(%s).", v26, 0x16u);

        goto LABEL_9;
      }

      v8 = [(FLSQLitePersistence *)self log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        currentBatchCreationDate2 = [(FLSQLitePersistence *)self currentBatchIdentifier];
        *v26 = 136315138;
        *&v26[4] = [currentBatchCreationDate2 UTF8String];
        v10 = "Batch exceeded maximum size, rolling over Id(%s)";
        goto LABEL_8;
      }
    }

    else
    {
      v8 = [(FLSQLitePersistence *)self log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        currentBatchCreationDate2 = [(FLSQLitePersistence *)self currentBatchIdentifier];
        *v26 = 136315138;
        *&v26[4] = [currentBatchCreationDate2 UTF8String];
        v10 = "Batch is already larger than preferred size, rolling over Id(%s)";
LABEL_8:
        _os_log_impl(&dword_24AB3F000, v8, OS_LOG_TYPE_INFO, v10, v26, 0xCu);
LABEL_9:
      }
    }

LABEL_12:
  }

  initializeNewBatch = [(FLSQLitePersistence *)self initializeNewBatch];
  if (initializeNewBatch)
  {
    v18 = [(FLSQLitePersistence *)self log];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      currentBatchIdentifier3 = [(FLSQLitePersistence *)self currentBatchIdentifier];
      uTF8String = [currentBatchIdentifier3 UTF8String];
      *v26 = 136315138;
      *&v26[4] = uTF8String;
      _os_log_impl(&dword_24AB3F000, v18, OS_LOG_TYPE_DEFAULT, "Rolled over to new batch with Id(%s)", v26, 0xCu);
    }

    goto LABEL_17;
  }

LABEL_18:
  v21 = *MEMORY[0x277D85DE8];
  return initializeNewBatch;
}

- (id)persist:(id)persist preferredBatchSize:(unint64_t)size
{
  v43 = *MEMORY[0x277D85DE8];
  persistCopy = persist;
  if (size <= 0x10000)
  {
    sizeCopy = 0x10000;
  }

  else
  {
    sizeCopy = size;
  }

  v8 = os_signpost_id_generate(FL_LOG_SIGNPOSTS);
  if ([persistCopy length] > self->_maxBatchPayloadInBytes)
  {
    v9 = [(FLSQLitePersistence *)self log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v34 = [persistCopy length];
      maxBatchPayloadInBytes = self->_maxBatchPayloadInBytes;
      v39 = 134218240;
      v40 = v34;
      v41 = 2048;
      v42 = maxBatchPayloadInBytes;
      _os_log_error_impl(&dword_24AB3F000, v9, OS_LOG_TYPE_ERROR, "Can't persist blob sizes(%lu) greater than maximum allowed(%llu)", &v39, 0x16u);
    }

    v10 = MEMORY[0x277CCA9B8];
    v11 = -5;
LABEL_36:
    v20 = [v10 errorWithDomain:@"FLErrorDomain" code:v11 userInfo:0];
    goto LABEL_37;
  }

  if (![(FLSQLitePersistence *)self initializeConnectionForUseBy:0])
  {
    v22 = [(FLSQLitePersistence *)self log];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v39) = 0;
      _os_log_error_impl(&dword_24AB3F000, v22, OS_LOG_TYPE_ERROR, "Can't persist, initialization failed", &v39, 2u);
    }

    v10 = MEMORY[0x277CCA9B8];
    v11 = -4;
    goto LABEL_36;
  }

  if (!-[FLSQLitePersistence tryRolloverBatchIfNecessary:preferredBatchSize:](self, "tryRolloverBatchIfNecessary:preferredBatchSize:", [persistCopy length], sizeCopy))
  {
    v23 = [(FLSQLitePersistence *)self log];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v39) = 0;
      _os_log_error_impl(&dword_24AB3F000, v23, OS_LOG_TYPE_ERROR, "Detected necessary rollover, but couldn't succeed, failing persist request", &v39, 2u);
    }

    v10 = MEMORY[0x277CCA9B8];
    v11 = -6;
    goto LABEL_36;
  }

  sqlite3_reset(self->_insertRecordsStatement);
  sqlite3_bind_text(self->_insertRecordsStatement, 1, [(NSString *)self->_currentBatchIdentifier UTF8String], [(NSString *)self->_currentBatchIdentifier length], 0);
  sqlite3_bind_blob(self->_insertRecordsStatement, 2, [persistCopy bytes], objc_msgSend(persistCopy, "length"), 0);
  insertRecordsStatement = self->_insertRecordsStatement;
  v13 = objc_opt_new();
  [v13 timeIntervalSince1970];
  sqlite3_bind_int64(insertRecordsStatement, 3, v14);

  v15 = sqlite3_step(self->_insertRecordsStatement);
  if (v15 == 13)
  {
    v24 = [(FLSQLitePersistence *)self log];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      getCurrentDatabaseSize = [(FLSQLitePersistence *)self getCurrentDatabaseSize];
      maxAllowedDatabaseSizeInBytes = self->_maxAllowedDatabaseSizeInBytes;
      v39 = 134218240;
      v40 = getCurrentDatabaseSize;
      v41 = 2048;
      v42 = maxAllowedDatabaseSizeInBytes;
      _os_log_error_impl(&dword_24AB3F000, v24, OS_LOG_TYPE_ERROR, "Database quota exceeded, using %llu out of %llu bytes, failing persist request", &v39, 0x16u);
    }

    v25 = FL_LOG_SIGNPOSTS;
    v26 = v25;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
    {
      LOWORD(v39) = 0;
      _os_signpost_emit_with_name_impl(&dword_24AB3F000, v26, OS_SIGNPOST_EVENT, v8, "database quota exceeded", "", &v39, 2u);
    }

    v10 = MEMORY[0x277CCA9B8];
    v11 = -2;
    goto LABEL_36;
  }

  v16 = v15;
  if (v15 != 101)
  {
    v27 = FL_LOG_SIGNPOSTS;
    v28 = v27;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
    {
      LOWORD(v39) = 0;
      _os_signpost_emit_with_name_impl(&dword_24AB3F000, v28, OS_SIGNPOST_EVENT, v8, "persist request failed", "", &v39, 2u);
    }

    v29 = [(FLSQLitePersistence *)self log];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v39 = 67109120;
      LODWORD(v40) = v16;
      _os_log_error_impl(&dword_24AB3F000, v29, OS_LOG_TYPE_ERROR, "SQLite insertion failed: %d", &v39, 8u);
    }

    v30 = [(FLSQLitePersistence *)self log];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v38 = sqlite3_errmsg([(FLSQLitePersistence *)self db]);
      v39 = 136315138;
      v40 = v38;
      _os_log_error_impl(&dword_24AB3F000, v30, OS_LOG_TYPE_ERROR, "Failure detail: %s", &v39, 0xCu);
    }

    v31 = MEMORY[0x277CCA9B8];
    v11 = sqlite3_errcode([(FLSQLitePersistence *)self db]);
    v10 = v31;
    goto LABEL_36;
  }

  v17 = FL_LOG_SIGNPOSTS;
  v18 = v17;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    LOWORD(v39) = 0;
    _os_signpost_emit_with_name_impl(&dword_24AB3F000, v18, OS_SIGNPOST_EVENT, v8, "data persisted", "", &v39, 2u);
  }

  v19 = [persistCopy length];
  v20 = 0;
  v21 = vdupq_n_s64(1uLL);
  v21.i64[0] = v19;
  *&self->_currentBatchPayloadSize = vaddq_s64(*&self->_currentBatchPayloadSize, v21);
LABEL_37:

  v32 = *MEMORY[0x277D85DE8];

  return v20;
}

- (void)dealloc
{
  if ([(FLSQLitePersistence *)self db])
  {
    v3 = atomic_load(&self->_configured);
    if ((v3 & 1) != 0 && ![(FLSQLitePersistence *)self user])
    {
      [(FLSQLitePersistence *)self closeOpenBatch];
    }

    [(FLSQLitePersistence *)self finalizeObserver];
    insertRecordsStatement = self->_insertRecordsStatement;
    if (insertRecordsStatement)
    {
      sqlite3_finalize(insertRecordsStatement);
    }

    iteratePayloadStatement = self->_iteratePayloadStatement;
    if (iteratePayloadStatement)
    {
      sqlite3_finalize(iteratePayloadStatement);
    }
  }

  v6.receiver = self;
  v6.super_class = FLSQLitePersistence;
  [(FLSQLitePersistence *)&v6 dealloc];
}

- (FLSQLitePersistence)initWithStoreId:(id)id loggingContext:(id)context
{
  contextCopy = context;
  idCopy = id;
  fileManager = [contextCopy fileManager];
  v9 = [fileManager urlForStoreWithId:idCopy];
  path = [v9 path];

  v11 = [[FLSQLiteDatabaseConnection alloc] initWithStorePath:path];
  v12 = [(FLSQLitePersistence *)self initWithStoreId:idCopy dbConnection:v11 loggingContext:contextCopy];

  return v12;
}

- (FLSQLitePersistence)initWithStoreId:(id)id dbConnection:(id)connection loggingContext:(id)context
{
  v28 = *MEMORY[0x277D85DE8];
  idCopy = id;
  connectionCopy = connection;
  contextCopy = context;
  v25.receiver = self;
  v25.super_class = FLSQLitePersistence;
  v11 = [(FLSQLitePersistence *)&v25 init];
  v12 = v11;
  if (FLSignpostLoggingInit_onceToken == -1)
  {
    if (!v11)
    {
      goto LABEL_5;
    }
  }

  else
  {
    dispatch_once(&FLSignpostLoggingInit_onceToken, &__block_literal_global_640);
    if (!v12)
    {
      goto LABEL_5;
    }
  }

  *&v12->_maxBatchPayloadInBytes = xmmword_24AB63270;
  storePath = [connectionCopy storePath];
  databasePath = v12->_databasePath;
  v12->_databasePath = storePath;

  v15 = flAnnotatedLogForObject(v12, idCopy);
  log = v12->_log;
  v12->_log = v15;

  objc_storeStrong(&v12->_context, context);
  v17 = [idCopy copy];
  storeIdentifier = v12->_storeIdentifier;
  v12->_storeIdentifier = v17;

  currentBatchIdentifier = v12->_currentBatchIdentifier;
  v12->_currentBatchIdentifier = 0;

  currentBatchCreationDate = v12->_currentBatchCreationDate;
  v12->_currentBatchCreationDate = 0;

  v12->_currentBatchPayloadSize = 0;
  v12->_currentBatchEventCount = 0;
  v12->_batchMaximumDuration = 900.0;
  objc_storeStrong(&v12->_dbConnection, connection);
  v12->_user = -1;
  v12->_configured = 0;
  v21 = v12->_log;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = v12->_databasePath;
    *buf = 138412290;
    v27 = v22;
    _os_log_impl(&dword_24AB3F000, v21, OS_LOG_TYPE_DEFAULT, "Initialized SQLite persistent store manager for %@", buf, 0xCu);
  }

LABEL_5:

  v23 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)observeInsertionAtRow:(int64_t)row observer:(id)observer
{
  observerCopy = observer;
  ppStmt = 0;
  if (sqlite3_prepare_v2([(FLSQLitePersistence *)self db], "SELECT payload FROM records WHERE rowId=?;", -1, &ppStmt, 0) || sqlite3_bind_int64(ppStmt, 1, row) || sqlite3_step(ppStmt) != 100)
  {
    v8 = [(FLSQLitePersistence *)self log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_24AB3F000, v8, OS_LOG_TYPE_ERROR, "Row insertion observer failed", v9, 2u);
    }
  }

  else
  {
    v7 = sqlite3_column_blob(ppStmt, 0);
    v8 = [MEMORY[0x277CBEA90] dataWithBytes:v7 length:{sqlite3_column_bytes(ppStmt, 0)}];
    observerCopy[2](observerCopy, v8);
    sqlite3_finalize(ppStmt);
  }
}

- (id)registerInsertionObserver:(id)observer
{
  v24 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  [(FLSQLitePersistence *)self open];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  maxRowId = [(FLSQLitePersistence *)self maxRowId];
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v17[3] = v19[3] + 1;
  v5 = [(FLSQLitePersistence *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v19[3];
    *buf = 134217984;
    v23 = v6;
    _os_log_impl(&dword_24AB3F000, v5, OS_LOG_TYPE_DEFAULT, "Registering new insertion observer, starting max row: %lld", buf, 0xCu);
  }

  context = [(FLSQLitePersistence *)self context];
  queue = [context queue];
  v9 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, queue);

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __59__FLSQLitePersistence_Observer__registerInsertionObserver___block_invoke;
  v13[3] = &unk_278FF8CD0;
  v15 = &v18;
  v16 = v17;
  v13[4] = self;
  v14 = observerCopy;
  v10 = observerCopy;
  dispatch_source_set_event_handler(v9, v13);
  dispatch_source_set_timer(v9, 0, 0x3B9ACA00uLL, 0x3B9ACA00uLL);
  dispatch_activate(v9);

  _Block_object_dispose(v17, 8);
  _Block_object_dispose(&v18, 8);
  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

uint64_t __59__FLSQLitePersistence_Observer__registerInsertionObserver___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) maxRowId];
  *(*(*(a1 + 48) + 8) + 24) = result;
  if (*(*(*(a1 + 56) + 8) + 24) <= *(*(*(a1 + 48) + 8) + 24))
  {
    *&v3 = 134217984;
    v7 = v3;
    do
    {
      v4 = [*(a1 + 32) log];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(*(*(a1 + 56) + 8) + 24);
        *buf = v7;
        v9 = v5;
        _os_log_impl(&dword_24AB3F000, v4, OS_LOG_TYPE_DEFAULT, "Informing observer about insertion at row: %lld", buf, 0xCu);
      }

      result = [*(a1 + 32) observeInsertionAtRow:(*(*(*(a1 + 56) + 8) + 24))++ observer:*(a1 + 40)];
    }

    while (*(*(*(a1 + 56) + 8) + 24) <= *(*(*(a1 + 48) + 8) + 24));
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (int64_t)maxRowId
{
  if (![(FLSQLitePersistence *)self maxRowIdStatement])
  {
    ppStmt = 0;
    if (sqlite3_prepare_v2([(FLSQLitePersistence *)self db], "SELECT MAX(ROWID) FROM records;", -1, &ppStmt, 0) == 1)
    {
      v3 = [(FLSQLitePersistence *)self log];
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v9 = 0;
        v4 = "Max ID calculation failed to prepare statement";
        v5 = &v9;
LABEL_12:
        _os_log_error_impl(&dword_24AB3F000, v3, OS_LOG_TYPE_ERROR, v4, v5, 2u);
        goto LABEL_8;
      }

      goto LABEL_8;
    }

    [(FLSQLitePersistence *)self setMaxRowIdStatement:ppStmt];
  }

  if (sqlite3_step([(FLSQLitePersistence *)self maxRowIdStatement]) != 1)
  {
    v6 = sqlite3_column_int64([(FLSQLitePersistence *)self maxRowIdStatement], 0);
    sqlite3_reset([(FLSQLitePersistence *)self maxRowIdStatement]);
    return v6;
  }

  v3 = [(FLSQLitePersistence *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v8 = 0;
    v4 = "Max ID calculation failed to run";
    v5 = &v8;
    goto LABEL_12;
  }

LABEL_8:

  return 0;
}

- (void)finalizeObserver
{
  if ([(FLSQLitePersistence *)self maxRowIdStatement])
  {
    sqlite3_finalize([(FLSQLitePersistence *)self maxRowIdStatement]);

    [(FLSQLitePersistence *)self setMaxRowIdStatement:0];
  }
}

@end