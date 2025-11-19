@interface ML3ValidationBuildDatabaseTables
@end

@implementation ML3ValidationBuildDatabaseTables

uint64_t ___ML3ValidationBuildDatabaseTables_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[ML3MusicLibrary allSchemaSQL];
  *(*(*(a1 + 40) + 8) + 24) = _ML3ValidationExecuteSQLArray(v2, v3);

  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v14 = os_log_create("com.apple.amp.medialibrary", "Validation");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v23 = 0;
      v15 = "Failed to build tables with schema.";
      v16 = &v23;
      goto LABEL_19;
    }

LABEL_20:

    v13 = *(*(*(a1 + 40) + 8) + 24);
    return v13 & 1;
  }

  v4 = *(a1 + 32);
  v5 = +[ML3MusicLibrary indexSchemaSQL];
  v6 = [v5 allObjects];
  v7 = _ML3ValidationExecuteSQLArray(v4, v6);

  *(*(*(a1 + 40) + 8) + 24) = v7;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v14 = os_log_create("com.apple.amp.medialibrary", "Validation");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v22 = 0;
      v15 = "Failed to create indexes on database connection.";
      v16 = &v22;
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  v8 = *(a1 + 32);
  v9 = +[ML3MusicLibrary allTriggersSQL];
  v10 = _ML3ValidationExecuteSQLArray(v8, v9);

  *(*(*(a1 + 40) + 8) + 24) = v10;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v14 = os_log_create("com.apple.amp.medialibrary", "Validation");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v21 = 0;
      v15 = "Failed to create triggers on database connection.";
      v16 = &v21;
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  *(*(*(a1 + 40) + 8) + 24) = ML3ValidationRunInitialInsertStatements(*(a1 + 32));
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v14 = os_log_create("com.apple.amp.medialibrary", "Validation");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v20 = 0;
      v15 = "Failed to complete initial insertion statements.";
      v16 = &v20;
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  v11 = *(a1 + 32);
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"PRAGMA user_version = %d", 2310000];;
  *(*(*(a1 + 40) + 8) + 24) = [v11 executeUpdate:v12];

  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v14 = os_log_create("com.apple.amp.medialibrary", "Validation");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v15 = "Failed to set latest database version on connection.";
      v16 = buf;
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) executeUpdate:@"ANALYZE"];
  v13 = *(*(*(a1 + 40) + 8) + 24);
  if ((v13 & 1) == 0)
  {
    v14 = _ML3LogCategoryValidation();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v18 = 0;
      v15 = "Failed to prepare SQLite query optimizer.";
      v16 = &v18;
LABEL_19:
      _os_log_impl(&dword_22D2FA000, v14, OS_LOG_TYPE_ERROR, v15, v16, 2u);
      goto LABEL_20;
    }

    goto LABEL_20;
  }

  return v13 & 1;
}

@end