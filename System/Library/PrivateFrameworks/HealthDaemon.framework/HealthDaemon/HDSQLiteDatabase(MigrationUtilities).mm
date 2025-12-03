@interface HDSQLiteDatabase(MigrationUtilities)
+ (BOOL)databaseSchemas:()MigrationUtilities containTable:;
- (uint64_t)deleteDataEntitySubclassTable:()MigrationUtilities intermediateTables:error:;
- (uint64_t)deleteDataEntitySubclassTablesIfExist:()MigrationUtilities intermediateTables:error:;
- (uint64_t)deleteRowsFromDataEntitySubclassTable:()MigrationUtilities intermediateTables:error:;
@end

@implementation HDSQLiteDatabase(MigrationUtilities)

- (uint64_t)deleteRowsFromDataEntitySubclassTable:()MigrationUtilities intermediateTables:error:
{
  aBlock[16] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  selfCopy = self;
  if (self)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE FROM metadata_values WHERE object_id IN (SELECT data_id FROM %@)", v7];
    [v9 addObject:v10];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v36 objects:aBlock count:16];
    if (v12)
    {
      v13 = *v37;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v37 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE FROM %@ WHERE data_id IN (SELECT data_id FROM %@)", *(*(&v36 + 1) + 8 * i), v7];
          [v9 addObject:v15];
        }

        v12 = [v11 countByEnumeratingWithState:&v36 objects:aBlock count:16];
      }

      while (v12);
    }

    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE FROM %@", v7];
    [v9 addObject:v16];
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    goto LABEL_27;
  }

  v17 = v7;
  v18 = v17;
  if (!selfCopy)
  {

    goto LABEL_27;
  }

  *&v36 = 0;
  *(&v36 + 1) = &v36;
  v37 = 0x2020000000uLL;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __96__HDSQLiteDatabase_MigrationUtilities___correlationCountForDataEntitySubclassTable_count_error___block_invoke;
  aBlock[3] = &unk_278614620;
  aBlock[4] = &v36;
  v19 = _Block_copy(aBlock);
  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT COUNT(*) FROM correlations WHERE correlation IN (SELECT data_id FROM %@) OR object IN (SELECT data_id FROM %@)", v18, v18];
  v21 = [selfCopy executeSQL:v20 error:a5 bindingHandler:0 enumerationHandler:v19];
  v22 = (v21 & 1) == 0 || *(*(&v36 + 1) + 24) == 0;

  _Block_object_dispose(&v36, 8);
  if (!v21)
  {
    goto LABEL_27;
  }

  if (!v22)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a5 code:100 format:@"Unable to remove samples with associations."];
LABEL_27:
    v27 = 0;
    goto LABEL_28;
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v23 = v9;
  v24 = [v23 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v24)
  {
    v25 = *v33;
    while (2)
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v33 != v25)
        {
          objc_enumerationMutation(v23);
        }

        if (![selfCopy executeUncachedSQL:*(*(&v32 + 1) + 8 * j) error:a5 bindingHandler:0 enumerationHandler:0])
        {
          v27 = 0;
          goto LABEL_30;
        }
      }

      v24 = [v23 countByEnumeratingWithState:&v32 objects:v40 count:16];
      if (v24)
      {
        continue;
      }

      break;
    }
  }

  v27 = 1;
LABEL_30:

LABEL_28:
  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

- (uint64_t)deleteDataEntitySubclassTable:()MigrationUtilities intermediateTables:error:
{
  v8 = a3;
  if ([self deleteRowsFromDataEntitySubclassTable:v8 intermediateTables:a4 error:a5])
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"DROP TABLE %@", v8];
    v10 = [self executeUncachedSQL:v9 error:a5 bindingHandler:0 enumerationHandler:0];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (uint64_t)deleteDataEntitySubclassTablesIfExist:()MigrationUtilities intermediateTables:error:
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [self dumpSchemaWithError:a5];
  if (v10)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v21 = v8;
      v14 = *v23;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v22 + 1) + 8 * i);
          if ([objc_opt_class() databaseSchemas:v10 containTable:v16])
          {
            if (![self deleteDataEntitySubclassTable:v16 intermediateTables:v9 error:a5])
            {
              v18 = 0;
              goto LABEL_16;
            }
          }

          else
          {
            _HKInitializeLogging();
            v17 = *MEMORY[0x277CCC2A0];
            if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v27 = v16;
              _os_log_impl(&dword_228986000, v17, OS_LOG_TYPE_INFO, "Skipping deletion from nonexistent table %@", buf, 0xCu);
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v22 objects:v28 count:16];
      }

      while (v13);
      v18 = 1;
LABEL_16:
      v8 = v21;
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

+ (BOOL)databaseSchemas:()MigrationUtilities containTable:
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 componentsSeparatedByString:@"."];
  if ([v7 count] < 2)
  {
    v8 = @"main";
  }

  else
  {
    v8 = [v7 objectAtIndexedSubscript:0];
    v9 = [v7 objectAtIndexedSubscript:1];

    v6 = v9;
  }

  v10 = [v5 objectForKeyedSubscript:v8];
  tables = [v10 tables];
  v12 = [tables objectForKeyedSubscript:v6];
  v13 = v12 != 0;

  return v13;
}

@end