@interface MFDataCollector
@end

@implementation MFDataCollector

uint64_t __24___MFDataCollector_done__block_invoke(void *a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v26 = a2;
  v3 = [v26 preparedStatementForQueryString:@"SELECT 1 FROM messages WHERE ROWID = ?"];;
  v4 = [v3 compiled];

  sqlite3_bind_int64(v4, 1, a1[7]);
  LODWORD(v3) = sqlite3_step(v4);
  sqlite3_reset(v4);
  [v26 checkForConnectionErrorWithMessage:@"testing for message existence"];
  if (v3 == 100)
  {
    v27 = 0x7FFFFFFFFFFFFFFFLL;
    [*(a1[4] + 8) messageDataExistsInDatabaseForMessageLibraryID:a1[7] part:*(a1[4] + 40) length:&v27];
    if (v27 == 0x7FFFFFFFFFFFFFFFLL || (v5 = [a1[5] length], v5 > v27))
    {
      v6 = a1[4];
      v7 = *(v6 + 8);
      v8 = [*(v6 + 16) libraryID];
      v9 = [*(a1[4] + 16) globalMessageID];
      v10 = a1[4];
      v11 = a1[5];
      v12 = *(v10 + 40);
      v13 = *(v10 + 48);
      v14 = *(v10 + 49);
      v15 = [*(v10 + 16) account];
      v16 = v7;
      v17 = v26;
      v18 = v12;
      v19 = v15;
      v20 = [MEMORY[0x1E69AD6B8] dataHolderWithData:v11];
      LOBYTE(v8) = _writeDataHolderForMessageAndPart(v16, v17, v8, v9, 0, v18, v20, v13, v14, v19);

      *(*(a1[6] + 8) + 24) = v8;
    }

    else
    {
      v25 = MFPersistenceLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        __24___MFDataCollector_done__block_invoke_cold_1();
      }
    }
  }

  else
  {
    v21 = MFPersistenceLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B0389000, v21, OS_LOG_TYPE_DEFAULT, "not saving message data for non-existent message", buf, 2u);
    }
  }

  v22 = *(*(a1[6] + 8) + 24);

  v23 = *MEMORY[0x1E69E9840];
  return v22 & 1;
}

uint64_t __24___MFDataCollector_done__block_invoke_2407(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(*(a1 + 32) + 40))
  {
    v5 = @"DELETE FROM message_data WHERE message_id = ? AND part = ?";
  }

  else
  {
    v5 = @"DELETE FROM message_data WHERE message_id = ? AND part IS NULL";
  }

  v6 = [v3 preparedStatementForQueryString:v5];
  v7 = [v6 compiled];

  sqlite3_bind_int64(v7, 1, [*(*(a1 + 32) + 16) libraryID]);
  v8 = *(*(a1 + 32) + 40);
  if (v8)
  {
    sqlite3_bind_text(v7, 2, [v8 UTF8String], -1, 0);
  }

  sqlite3_step(v7);
  sqlite3_reset(v7);
  [v4 checkForConnectionErrorWithMessage:@"deleting message data"];

  return 1;
}

void __24___MFDataCollector_done__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_12(v0, v1, v2, 3.8521e-34);
  OUTLINED_FUNCTION_4_0(&dword_1B0389000, "Exception occurred while message with ID %lld: %@", v3, v4);
}

@end