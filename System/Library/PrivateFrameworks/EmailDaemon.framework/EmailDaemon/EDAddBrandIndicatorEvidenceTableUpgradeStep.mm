@interface EDAddBrandIndicatorEvidenceTableUpgradeStep
+ (BOOL)_addBrandIndicatorEvidenceTableWithConnection:(id)connection databaseName:(id)name error:(id *)error;
+ (BOOL)_copyEvidenceFromBrandIndicatorsWithConnection:(id)connection databaseName:(id)name error:(id *)error;
+ (BOOL)_dropBrandIndicatorsIndexesWithConnection:(id)connection databaseName:(id)name error:(id *)error;
+ (BOOL)_dropEvidenceURLColumnFromBrandIndicatorsTableWithConnection:(id)connection databaseName:(id)name error:(id *)error;
+ (BOOL)_dropVerifiedColumnFromBrandIndicatorsTableWithConnection:(id)connection databaseName:(id)name error:(id *)error;
+ (BOOL)_runWithConnection:(id)connection databaseName:(id)name error:(id *)error;
+ (BOOL)runWithConnection:(id)connection journalManager:(id)manager error:(id *)error;
+ (id)_brandIndicatorEvidenceTableSchemaWithBrandIndicatorsTableSchema:(id)schema;
+ (id)_qualifiedNameForName:(id)name inDatabase:(id)database;
@end

@implementation EDAddBrandIndicatorEvidenceTableUpgradeStep

void ___ef_log_EDAddBrandIndicatorEvidenceTableUpgradeStep_block_invoke()
{
  v0 = os_log_create("com.apple.email", "EDAddBrandIndicatorEvidenceTableUpgradeStep");
  v1 = _ef_log_EDAddBrandIndicatorEvidenceTableUpgradeStep_log;
  _ef_log_EDAddBrandIndicatorEvidenceTableUpgradeStep_log = v0;
}

+ (BOOL)runWithConnection:(id)connection journalManager:(id)manager error:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [manager allJournals];
  v8 = [obj countByEnumeratingWithState:&v21 objects:v30 count:16];
  if (v8)
  {
    v9 = *v22;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v12 = _ef_log_EDAddBrandIndicatorEvidenceTableUpgradeStep();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          number = [v11 number];
          LODWORD(buf) = 134217984;
          *(&buf + 4) = number;
          _os_log_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_DEFAULT, "Upgrading journal %lu", &buf, 0xCu);
        }

        if (![connectionCopy attachJournalDatabase:v11 withName:@"journal" error:error])
        {
          goto LABEL_19;
        }

        *&buf = 0;
        *(&buf + 1) = &buf;
        v26 = 0x3032000000;
        v27 = __Block_byref_object_copy_;
        v28 = __Block_byref_object_dispose_;
        v29 = 0;
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __86__EDAddBrandIndicatorEvidenceTableUpgradeStep_runWithConnection_journalManager_error___block_invoke;
        v20[3] = &unk_1E8250150;
        v20[4] = &buf;
        v20[5] = self;
        if (([connectionCopy performWithOptions:7 transactionError:error block:v20] & 1) == 0)
        {
          if (error)
          {
            v15 = *(*(&buf + 1) + 40);
            if (v15)
            {
              *error = v15;
            }
          }

          _Block_object_dispose(&buf, 8);

LABEL_19:
          LOBYTE(detachJournalDatabase) = 0;
          goto LABEL_20;
        }

        detachJournalDatabase = [connectionCopy detachJournalDatabase];
        _Block_object_dispose(&buf, 8);

        if (!detachJournalDatabase)
        {
          goto LABEL_20;
        }
      }

      v8 = [obj countByEnumeratingWithState:&v21 objects:v30 count:16];
      LOBYTE(detachJournalDatabase) = 1;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    LOBYTE(detachJournalDatabase) = 1;
  }

LABEL_20:

  v16 = *MEMORY[0x1E69E9840];
  return detachJournalDatabase;
}

BOOL __86__EDAddBrandIndicatorEvidenceTableUpgradeStep_runWithConnection_journalManager_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = 1;
  if ([v3 tableExists:@"brand_indicators" inDatabase:@"journal"])
  {
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 32) + 8);
    obj = *(v5 + 40);
    v6 = [v4 _runWithConnection:v3 databaseName:@"journal" error:&obj];
    objc_storeStrong((v5 + 40), obj);
    if ((v6 & 1) == 0)
    {
      v7 = 0;
    }
  }

  return v7;
}

+ (BOOL)_runWithConnection:(id)connection databaseName:(id)name error:(id *)error
{
  connectionCopy = connection;
  nameCopy = name;
  if (([self _addBrandIndicatorEvidenceTableWithConnection:connectionCopy databaseName:nameCopy error:error] & 1) != 0 && objc_msgSend(self, "_copyEvidenceFromBrandIndicatorsWithConnection:databaseName:error:", connectionCopy, nameCopy, error) && objc_msgSend(self, "_dropBrandIndicatorsIndexesWithConnection:databaseName:error:", connectionCopy, nameCopy, error) && objc_msgSend(self, "_dropEvidenceURLColumnFromBrandIndicatorsTableWithConnection:databaseName:error:", connectionCopy, nameCopy, error))
  {
    v10 = [self _dropVerifiedColumnFromBrandIndicatorsTableWithConnection:connectionCopy databaseName:nameCopy error:error];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (BOOL)_addBrandIndicatorEvidenceTableWithConnection:(id)connection databaseName:(id)name error:(id *)error
{
  connectionCopy = connection;
  nameCopy = name;
  v10 = objc_alloc(MEMORY[0x1E699B958]);
  v11 = [v10 initWithName:@"brand_indicators" rowIDType:2 columns:MEMORY[0x1E695E0F0]];
  v12 = [self _brandIndicatorEvidenceTableSchemaWithBrandIndicatorsTableSchema:v11];
  v13 = [v12 definitionWithDatabaseName:nameCopy];
  v14 = [connectionCopy preparedStatementForQueryString:v13];
  LOBYTE(error) = [v14 executeUsingBlock:0 error:error];

  return error;
}

+ (BOOL)_copyEvidenceFromBrandIndicatorsWithConnection:(id)connection databaseName:(id)name error:(id *)error
{
  connectionCopy = connection;
  nameCopy = name;
  v10 = objc_alloc(MEMORY[0x1E696AEC0]);
  v11 = [self _qualifiedNameForName:@"brand_indicator_evidence" inDatabase:nameCopy];
  v12 = [self _qualifiedNameForName:@"brand_indicators" inDatabase:nameCopy];
  v13 = [v10 initWithFormat:@"INSERT INTO %@ (%@, %@) SELECT %@, %@ FROM %@", v11, @"brand_indicator", @"url", *MEMORY[0x1E699B768], @"evidence_url", v12];

  v14 = [connectionCopy preparedStatementForQueryString:v13];
  LOBYTE(error) = [v14 executeUsingBlock:0 error:error];

  return error;
}

+ (BOOL)_dropBrandIndicatorsIndexesWithConnection:(id)connection databaseName:(id)name error:(id *)error
{
  connectionCopy = connection;
  nameCopy = name;
  v10 = objc_alloc(MEMORY[0x1E696AEC0]);
  v11 = [self _qualifiedNameForName:@"brand_indicators_url_verified_index" inDatabase:nameCopy];
  v12 = [v10 initWithFormat:@"DROP INDEX IF EXISTS %@", v11];
  v13 = [connectionCopy preparedStatementForQueryString:v12];

  if ([v13 executeUsingBlock:0 error:error])
  {
    v14 = objc_alloc(MEMORY[0x1E696AEC0]);
    v15 = [self _qualifiedNameForName:@"brand_indicators_indicator_url_indicator_hash_hash_algorithm_index" inDatabase:nameCopy];
    v16 = [v14 initWithFormat:@"DROP INDEX IF EXISTS %@", v15];
    v17 = [connectionCopy preparedStatementForQueryString:v16];

    v18 = [v17 executeUsingBlock:0 error:error];
    v13 = v17;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (BOOL)_dropEvidenceURLColumnFromBrandIndicatorsTableWithConnection:(id)connection databaseName:(id)name error:(id *)error
{
  connectionCopy = connection;
  nameCopy = name;
  v10 = objc_alloc(MEMORY[0x1E696AEC0]);
  v11 = [self _qualifiedNameForName:@"brand_indicators" inDatabase:nameCopy];
  v12 = [v10 initWithFormat:@"ALTER TABLE %@ DROP COLUMN %@", v11, @"evidence_url"];

  v13 = [connectionCopy preparedStatementForQueryString:v12];
  LOBYTE(error) = [v13 executeUsingBlock:0 error:error];

  return error;
}

+ (BOOL)_dropVerifiedColumnFromBrandIndicatorsTableWithConnection:(id)connection databaseName:(id)name error:(id *)error
{
  connectionCopy = connection;
  nameCopy = name;
  v10 = objc_alloc(MEMORY[0x1E696AEC0]);
  v11 = [self _qualifiedNameForName:@"brand_indicators" inDatabase:nameCopy];
  v12 = [v10 initWithFormat:@"ALTER TABLE %@ DROP COLUMN %@", v11, @"verified"];

  v13 = [connectionCopy preparedStatementForQueryString:v12];
  LOBYTE(error) = [v13 executeUsingBlock:0 error:error];

  return error;
}

+ (id)_brandIndicatorEvidenceTableSchemaWithBrandIndicatorsTableSchema:(id)schema
{
  v21[4] = *MEMORY[0x1E69E9840];
  schemaCopy = schema;
  v4 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"brand_indicator" nullable:0];
  v5 = objc_alloc(MEMORY[0x1E699B958]);
  v21[0] = v4;
  v6 = [MEMORY[0x1E699B8D0] textColumnWithName:@"url" collation:1 nullable:0];
  v21[1] = v6;
  v7 = [MEMORY[0x1E699B8D0] blobColumnWithName:@"evidence" nullable:1];
  v21[2] = v7;
  v8 = [MEMORY[0x1E699B8D0] textColumnWithName:@"unverified_messages" collation:1 nullable:1];
  v21[3] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:4];
  v10 = [v5 initWithName:@"brand_indicator_evidence" rowIDType:2 columns:v9];

  v20[0] = @"brand_indicator";
  v20[1] = @"url";
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  [v10 addUniquenessConstraintForColumns:v11 conflictResolution:1];

  v12 = [MEMORY[0x1E699B8C8] column:@"unverified_messages"];
  isNotNull = [v12 isNotNull];

  v14 = objc_alloc(MEMORY[0x1E699B900]);
  v19 = @"unverified_messages";
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
  v16 = [v14 initWithTableName:@"brand_indicator_evidence" columnNames:v15 where:isNotNull unique:0];

  [v10 addIndex:v16];
  [v4 setAsForeignKeyForTable:schemaCopy onDelete:2 onUpdate:2];

  v17 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)_qualifiedNameForName:(id)name inDatabase:(id)database
{
  nameCopy = name;
  databaseCopy = database;
  if (databaseCopy)
  {
    nameCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@.%@", databaseCopy, nameCopy];
  }

  else
  {
    nameCopy = nameCopy;
  }

  v8 = nameCopy;

  return v8;
}

@end