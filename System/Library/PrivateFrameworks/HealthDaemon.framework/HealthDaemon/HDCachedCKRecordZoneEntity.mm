@interface HDCachedCKRecordZoneEntity
+ (BOOL)deleteZoneWithContainerIdentifier:(id)identifier databaseScope:(int64_t)scope zoneName:(id)name ownerName:(id)ownerName profile:(id)profile error:(id *)error;
+ (BOOL)enumerateCKRecordZoneIDsWithContainerIdentifier:(id)identifier databaseScope:(int64_t)scope profile:(id)profile error:(id *)error enumerationHandler:(id)handler;
+ (BOOL)insertIfDoesNotExistWithContainerIdentifier:(id)identifier databaseScope:(int64_t)scope zoneName:(id)name ownerName:(id)ownerName userRecordName:(id)recordName serverChangeToken:(id)token profile:(id)profile error:(id *)self0;
+ (BOOL)insertOrUpdateWithContainerIdentifier:(id)identifier databaseScope:(int64_t)scope zoneName:(id)name ownerName:(id)ownerName userRecordName:(id)recordName serverChangeToken:(id)token fetchComplete:(id)complete profile:(id)self0 error:(id *)self1;
+ (BOOL)setRequiresFetch:(BOOL)fetch containerIdentifier:(id)identifier databaseScope:(int64_t)scope zoneName:(id)name ownerName:(id)ownerName transaction:(id)transaction error:(id *)error;
+ (BOOL)setZoneEntityState:(int64_t)state containerIdentifier:(id)identifier databaseScope:(int64_t)scope zoneName:(id)name ownerName:(id)ownerName profile:(id)profile error:(id *)error;
+ (BOOL)updateServerChangeToken:(id)token databaseID:(int64_t)d zoneName:(id)name ownerName:(id)ownerName transaction:(id)transaction error:(id *)error;
+ (id)foreignKeys;
+ (id)insertWithDatabaseID:(int64_t)d zoneName:(id)name ownerName:(id)ownerName serverChangeToken:(id)token transaction:(id)transaction error:(id *)error;
+ (id)serverChangeTokenForContainerIdentifier:(id)identifier databaseScope:(int64_t)scope zoneName:(id)name ownerName:(id)ownerName profile:(id)profile error:(id *)error;
+ (id)uniquedColumns;
+ (int64_t)requiresFetchForZoneWithContainerIdentifier:(id)identifier databaseScope:(int64_t)scope zoneName:(id)name ownerName:(id)ownerName transaction:(id)transaction error:(id *)error;
@end

@implementation HDCachedCKRecordZoneEntity

+ (id)foreignKeys
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"database_id";
  v2 = +[(HDHealthEntity *)HDCachedCKDatabaseEntity];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)uniquedColumns
{
  v5[3] = *MEMORY[0x277D85DE8];
  v5[0] = @"database_id";
  v5[1] = @"zone_name";
  v5[2] = @"owner_name";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:3];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)insertWithDatabaseID:(int64_t)d zoneName:(id)name ownerName:(id)ownerName serverChangeToken:(id)token transaction:(id)transaction error:(id *)error
{
  nameCopy = name;
  ownerNameCopy = ownerName;
  tokenCopy = token;
  transactionCopy = transaction;
  if (tokenCopy)
  {
    v18 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:tokenCopy requiringSecureCoding:1 error:error];
    if (!v18)
    {
      v19 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v18 = 0;
  }

  v20 = [transactionCopy databaseForEntityClass:self];
  dCopy = d;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __106__HDCachedCKRecordZoneEntity_insertWithDatabaseID_zoneName_ownerName_serverChangeToken_transaction_error___block_invoke;
  v31[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v31[4] = self;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __106__HDCachedCKRecordZoneEntity_insertWithDatabaseID_zoneName_ownerName_serverChangeToken_transaction_error___block_invoke_2;
  v26[3] = &unk_2786144E0;
  v27 = nameCopy;
  v28 = ownerNameCopy;
  v21 = v18;
  v29 = v21;
  v22 = [v20 executeCachedStatementForKey:&insertWithDatabaseID_zoneName_ownerName_serverChangeToken_transaction_error__lookupKey error:error SQLGenerator:v31 bindingHandler:v26 enumerationHandler:0];
  v19 = 0;
  if (v22)
  {
    v23 = [HDCachedCKRecordZoneEntity alloc];
    lastInsertRowID = [v20 lastInsertRowID];
    v19 = -[HDSQLiteEntity initWithPersistentID:](v23, "initWithPersistentID:", [lastInsertRowID longLongValue]);
  }

LABEL_8:

  return v19;
}

id __106__HDCachedCKRecordZoneEntity_insertWithDatabaseID_zoneName_ownerName_serverChangeToken_transaction_error___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_self();
  v3 = MEMORY[0x277CCACA8];
  v4 = [v2 disambiguatedDatabaseTable];
  v5 = [v3 stringWithFormat:@"INSERT INTO %@ (%@, %@, %@, %@, %@, %@) VALUES (?, ?, ?, ?, ?, ?)", v4, @"database_id", @"zone_name", @"owner_name", @"server_change_token", @"needs_fetch", @"zone_state"];

  return v5;
}

uint64_t __106__HDCachedCKRecordZoneEntity_insertWithDatabaseID_zoneName_ownerName_serverChangeToken_transaction_error___block_invoke_2(void *a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, a1[7]);
  v4 = a1[4];
  HDSQLiteBindFoundationValueToStatement();
  v5 = a1[5];
  HDSQLiteBindFoundationValueToStatement();
  v6 = a1[6];
  HDSQLiteBindFoundationValueToStatement();
  HDSQLiteBindFoundationValueToStatement();

  return sqlite3_bind_int64(a2, 6, 0);
}

+ (BOOL)updateServerChangeToken:(id)token databaseID:(int64_t)d zoneName:(id)name ownerName:(id)ownerName transaction:(id)transaction error:(id *)error
{
  v28[1] = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  nameCopy = name;
  ownerNameCopy = ownerName;
  transactionCopy = transaction;
  if (!tokenCopy)
  {
    v18 = 0;
    goto LABEL_5;
  }

  v18 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:tokenCopy requiringSecureCoding:1 error:error];
  if (v18)
  {
LABEL_5:
    v20 = [transactionCopy databaseForEntityClass:self];
    v21 = HDPredicateForDatabaseIDAndRecordZone(d, nameCopy, ownerNameCopy);
    v28[0] = @"server_change_token";
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __102__HDCachedCKRecordZoneEntity_updateServerChangeToken_databaseID_zoneName_ownerName_transaction_error___block_invoke;
    v26[3] = &unk_278614508;
    v27 = v18;
    v23 = v18;
    v19 = [self updateProperties:v22 predicate:v21 database:v20 error:error bindingHandler:v26];

    goto LABEL_6;
  }

  v19 = 0;
LABEL_6:

  v24 = *MEMORY[0x277D85DE8];
  return v19;
}

+ (BOOL)insertOrUpdateWithContainerIdentifier:(id)identifier databaseScope:(int64_t)scope zoneName:(id)name ownerName:(id)ownerName userRecordName:(id)recordName serverChangeToken:(id)token fetchComplete:(id)complete profile:(id)self0 error:(id *)self1
{
  identifierCopy = identifier;
  nameCopy = name;
  ownerNameCopy = ownerName;
  recordNameCopy = recordName;
  tokenCopy = token;
  completeCopy = complete;
  database = [profile database];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __162__HDCachedCKRecordZoneEntity_insertOrUpdateWithContainerIdentifier_databaseScope_zoneName_ownerName_userRecordName_serverChangeToken_fetchComplete_profile_error___block_invoke;
  v31[3] = &unk_278614530;
  v32 = identifierCopy;
  v33 = recordNameCopy;
  v34 = nameCopy;
  v35 = ownerNameCopy;
  scopeCopy = scope;
  selfCopy = self;
  v36 = tokenCopy;
  v37 = completeCopy;
  v23 = completeCopy;
  v24 = tokenCopy;
  v25 = ownerNameCopy;
  v26 = nameCopy;
  v27 = recordNameCopy;
  v28 = identifierCopy;
  LOBYTE(tokenCopy) = [(HDHealthEntity *)HDCachedCKRecordZoneEntity performWriteTransactionWithHealthDatabase:database error:error block:v31];

  return tokenCopy;
}

BOOL __162__HDCachedCKRecordZoneEntity_insertOrUpdateWithContainerIdentifier_databaseScope_zoneName_ownerName_userRecordName_serverChangeToken_fetchComplete_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [HDCachedCKDatabaseEntity entityForContainerIdentifier:*(a1 + 32) databaseScope:*(a1 + 80) userRecordName:*(a1 + 40) transaction:v5 shouldCreate:1 error:a3];
  v7 = v6;
  if (v6)
  {
    v8 = HDPredicateForDatabaseIDAndRecordZone([v6 persistentID], *(a1 + 48), *(a1 + 56));
    v9 = [v5 databaseForEntityClass:*(a1 + 88)];
    v24 = 0;
    v10 = [(HDSQLiteEntity *)HDCachedCKRecordZoneEntity anyInDatabase:v9 predicate:v8 error:&v24];
    v11 = v24;

    if (v10)
    {
      v12 = 1;
    }

    else
    {
      v12 = v11 == 0;
    }

    if (!v12)
    {
      if (a3)
      {
        v14 = v11;
        v10 = 0;
        v13 = 0;
        *a3 = v11;
LABEL_25:

        goto LABEL_26;
      }

      _HKLogDroppedError();
      v10 = 0;
LABEL_18:
      v13 = 0;
      goto LABEL_25;
    }

    if (v10)
    {
      if (!+[HDCachedCKRecordZoneEntity updateServerChangeToken:databaseID:zoneName:ownerName:transaction:error:](HDCachedCKRecordZoneEntity, "updateServerChangeToken:databaseID:zoneName:ownerName:transaction:error:", *(a1 + 64), [v7 persistentID], *(a1 + 48), *(a1 + 56), v5, a3))
      {
        goto LABEL_18;
      }
    }

    else
    {
      v15 = [v7 persistentID];
      v16 = *(a1 + 48);
      v17 = *(a1 + 56);
      v18 = *(a1 + 64);
      v23 = v11;
      v10 = [HDCachedCKRecordZoneEntity insertWithDatabaseID:v15 zoneName:v16 ownerName:v17 serverChangeToken:v18 transaction:v5 error:&v23];
      v19 = v23;

      if (!v10 && v19)
      {
        if (a3)
        {
          v20 = v19;
          v10 = 0;
          v13 = 0;
          *a3 = v19;
        }

        else
        {
          _HKLogDroppedError();
          v10 = 0;
          v13 = 0;
        }

        v11 = v19;
        goto LABEL_25;
      }

      v11 = v19;
    }

    v21 = *(a1 + 72);
    if (v21)
    {
      v13 = +[HDCachedCKRecordZoneEntity setRequiresFetch:containerIdentifier:databaseScope:zoneName:ownerName:transaction:error:](HDCachedCKRecordZoneEntity, "setRequiresFetch:containerIdentifier:databaseScope:zoneName:ownerName:transaction:error:", [v21 BOOLValue] ^ 1, *(a1 + 32), *(a1 + 80), *(a1 + 48), *(a1 + 56), v5, a3);
    }

    else
    {
      v13 = 1;
    }

    goto LABEL_25;
  }

  v13 = 0;
LABEL_26:

  return v13;
}

+ (BOOL)insertIfDoesNotExistWithContainerIdentifier:(id)identifier databaseScope:(int64_t)scope zoneName:(id)name ownerName:(id)ownerName userRecordName:(id)recordName serverChangeToken:(id)token profile:(id)profile error:(id *)self0
{
  identifierCopy = identifier;
  nameCopy = name;
  ownerNameCopy = ownerName;
  recordNameCopy = recordName;
  tokenCopy = token;
  database = [profile database];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __154__HDCachedCKRecordZoneEntity_insertIfDoesNotExistWithContainerIdentifier_databaseScope_zoneName_ownerName_userRecordName_serverChangeToken_profile_error___block_invoke;
  v28[3] = &unk_278614558;
  v29 = identifierCopy;
  v30 = recordNameCopy;
  v31 = nameCopy;
  v32 = ownerNameCopy;
  scopeCopy = scope;
  selfCopy = self;
  v33 = tokenCopy;
  v22 = tokenCopy;
  v23 = ownerNameCopy;
  v24 = nameCopy;
  v25 = recordNameCopy;
  v26 = identifierCopy;
  LOBYTE(tokenCopy) = [(HDHealthEntity *)HDCachedCKRecordZoneEntity performWriteTransactionWithHealthDatabase:database error:error block:v28];

  return tokenCopy;
}

uint64_t __154__HDCachedCKRecordZoneEntity_insertIfDoesNotExistWithContainerIdentifier_databaseScope_zoneName_ownerName_userRecordName_serverChangeToken_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [HDCachedCKDatabaseEntity entityForContainerIdentifier:*(a1 + 32) databaseScope:*(a1 + 72) userRecordName:*(a1 + 40) transaction:v5 shouldCreate:1 error:a3];
  v7 = v6;
  if (v6)
  {
    v8 = HDPredicateForDatabaseIDAndRecordZone([v6 persistentID], *(a1 + 48), *(a1 + 56));
    v9 = [v5 databaseForEntityClass:*(a1 + 80)];
    v23 = 0;
    v10 = [(HDSQLiteEntity *)HDCachedCKRecordZoneEntity anyInDatabase:v9 predicate:v8 error:&v23];
    v11 = v23;

    if (v10)
    {
      v12 = 1;
    }

    else
    {
      v12 = v11 == 0;
    }

    if (v12)
    {
      if (v10)
      {
        v13 = 1;
      }

      else
      {
        v15 = [v7 persistentID];
        v16 = *(a1 + 48);
        v17 = *(a1 + 56);
        v18 = *(a1 + 64);
        v22 = v11;
        v10 = [HDCachedCKRecordZoneEntity insertWithDatabaseID:v15 zoneName:v16 ownerName:v17 serverChangeToken:v18 transaction:v5 error:&v22];
        v19 = v22;

        v13 = 1;
        if (!v10 && v19)
        {
          if (a3)
          {
            v20 = v19;
            v13 = 0;
            v10 = 0;
            *a3 = v19;
          }

          else
          {
            _HKLogDroppedError();
            v13 = 0;
            v10 = 0;
          }
        }

        v11 = v19;
      }
    }

    else if (a3)
    {
      v14 = v11;
      v13 = 0;
      v10 = 0;
      *a3 = v11;
    }

    else
    {
      _HKLogDroppedError();
      v13 = 0;
      v10 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)serverChangeTokenForContainerIdentifier:(id)identifier databaseScope:(int64_t)scope zoneName:(id)name ownerName:(id)ownerName profile:(id)profile error:(id *)error
{
  identifierCopy = identifier;
  nameCopy = name;
  ownerNameCopy = ownerName;
  profileCopy = profile;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__7;
  v36 = __Block_byref_object_dispose__7;
  v37 = 0;
  database = [profileCopy database];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __117__HDCachedCKRecordZoneEntity_serverChangeTokenForContainerIdentifier_databaseScope_zoneName_ownerName_profile_error___block_invoke;
  v25[3] = &unk_278614580;
  v19 = identifierCopy;
  v26 = v19;
  scopeCopy = scope;
  selfCopy = self;
  v20 = nameCopy;
  v27 = v20;
  v21 = ownerNameCopy;
  v28 = v21;
  v29 = &v32;
  LODWORD(error) = [(HDHealthEntity *)HDCachedCKRecordZoneEntity performReadTransactionWithHealthDatabase:database error:error block:v25];

  if (error)
  {
    v22 = v33[5];
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;

  _Block_object_dispose(&v32, 8);

  return v23;
}

uint64_t __117__HDCachedCKRecordZoneEntity_serverChangeTokenForContainerIdentifier_databaseScope_zoneName_ownerName_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = *(a1 + 64);
  v26 = 0;
  v8 = [HDCachedCKDatabaseEntity entityForContainerIdentifier:v6 databaseScope:v7 userRecordName:0 transaction:v5 shouldCreate:0 error:&v26];
  v9 = v26;
  v10 = v9;
  if (v8)
  {
    v11 = 1;
  }

  else
  {
    v11 = v9 == 0;
  }

  if (v11)
  {
    if (v8)
    {
      v12 = *(a1 + 72);
      v13 = [v5 databaseForEntityClass:v12];
      v14 = HDPredicateForDatabaseIDAndRecordZone([v8 persistentID], *(a1 + 40), *(a1 + 48));
      v25 = 0;
      v15 = [v12 propertyValueForAnyInDatabase:v13 property:@"server_change_token" predicate:v14 error:&v25];
      v16 = v25;

      if (v15)
      {
        v17 = 1;
      }

      else
      {
        v17 = v16 == 0;
      }

      v18 = v17;
      if (v17)
      {
        if (v15)
        {
          v19 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v15 error:a3];
          v20 = *(*(a1 + 56) + 8);
          v21 = *(v20 + 40);
          *(v20 + 40) = v19;
        }
      }

      else if (a3)
      {
        v23 = v16;
        *a3 = v16;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    else
    {
      v18 = 1;
    }
  }

  else if (a3)
  {
    v22 = v9;
    v18 = 0;
    *a3 = v10;
  }

  else
  {
    _HKLogDroppedError();
    v18 = 0;
  }

  return v18;
}

+ (BOOL)enumerateCKRecordZoneIDsWithContainerIdentifier:(id)identifier databaseScope:(int64_t)scope profile:(id)profile error:(id *)error enumerationHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  database = [profile database];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __125__HDCachedCKRecordZoneEntity_enumerateCKRecordZoneIDsWithContainerIdentifier_databaseScope_profile_error_enumerationHandler___block_invoke;
  v18[3] = &unk_2786145D0;
  scopeCopy = scope;
  selfCopy = self;
  v19 = identifierCopy;
  v20 = handlerCopy;
  v15 = handlerCopy;
  v16 = identifierCopy;
  LOBYTE(error) = [(HDHealthEntity *)HDCachedCKDatabaseEntity performReadTransactionWithHealthDatabase:database error:error block:v18];

  return error;
}

uint64_t __125__HDCachedCKRecordZoneEntity_enumerateCKRecordZoneIDsWithContainerIdentifier_databaseScope_profile_error_enumerationHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24[4] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v23 = 0;
  v8 = [HDCachedCKDatabaseEntity entityForContainerIdentifier:v6 databaseScope:v7 userRecordName:0 transaction:v5 shouldCreate:0 error:&v23];
  v9 = v23;
  v10 = v9;
  if (v8)
  {
    v11 = 1;
  }

  else
  {
    v11 = v9 == 0;
  }

  if (v11)
  {
    if (v8)
    {
      v12 = *(a1 + 56);
      v13 = [v5 databaseForEntityClass:v12];
      v14 = HDPredicateForDatabaseID([v8 persistentID]);
      v15 = [v12 queryWithDatabase:v13 predicate:v14];

      v24[0] = @"zone_name";
      v24[1] = @"owner_name";
      v24[2] = @"needs_fetch";
      v24[3] = @"zone_state";
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:4];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __125__HDCachedCKRecordZoneEntity_enumerateCKRecordZoneIDsWithContainerIdentifier_databaseScope_profile_error_enumerationHandler___block_invoke_2;
      v21[3] = &unk_2786145A8;
      v22 = *(a1 + 40);
      v17 = [v15 enumerateProperties:v16 error:a3 enumerationHandler:v21];
    }

    else
    {
      v17 = 1;
    }
  }

  else if (a3)
  {
    v18 = v9;
    v17 = 0;
    *a3 = v10;
  }

  else
  {
    _HKLogDroppedError();
    v17 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t __125__HDCachedCKRecordZoneEntity_enumerateCKRecordZoneIDsWithContainerIdentifier_databaseScope_profile_error_enumerationHandler___block_invoke_2(uint64_t a1)
{
  v2 = HDSQLiteColumnWithNameAsString();
  v3 = HDSQLiteColumnWithNameAsString();
  HDSQLiteColumnWithNameAsBoolean();
  HDSQLiteColumnWithNameAsInt64();
  v4 = [objc_alloc(MEMORY[0x277CBC5F8]) initWithZoneName:v2 ownerName:v3];
  v5 = (*(*(a1 + 32) + 16))();

  return v5;
}

+ (BOOL)deleteZoneWithContainerIdentifier:(id)identifier databaseScope:(int64_t)scope zoneName:(id)name ownerName:(id)ownerName profile:(id)profile error:(id *)error
{
  identifierCopy = identifier;
  nameCopy = name;
  ownerNameCopy = ownerName;
  database = [profile database];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __111__HDCachedCKRecordZoneEntity_deleteZoneWithContainerIdentifier_databaseScope_zoneName_ownerName_profile_error___block_invoke;
  v22[3] = &unk_2786145F8;
  v23 = identifierCopy;
  v24 = nameCopy;
  v25 = ownerNameCopy;
  scopeCopy = scope;
  selfCopy = self;
  v18 = ownerNameCopy;
  v19 = nameCopy;
  v20 = identifierCopy;
  LOBYTE(error) = [(HDHealthEntity *)HDCachedCKRecordZoneEntity performWriteTransactionWithHealthDatabase:database error:error block:v22];

  return error;
}

uint64_t __111__HDCachedCKRecordZoneEntity_deleteZoneWithContainerIdentifier_databaseScope_zoneName_ownerName_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = *(a1 + 56);
  v25 = 0;
  v8 = [HDCachedCKDatabaseEntity entityForContainerIdentifier:v6 databaseScope:v7 userRecordName:0 transaction:v5 shouldCreate:0 error:&v25];
  v9 = v25;
  v10 = v9;
  if (v8)
  {
    v11 = 1;
  }

  else
  {
    v11 = v9 == 0;
  }

  if (v11)
  {
    if (v8)
    {
      v12 = HDPredicateForDatabaseIDAndRecordZone([v8 persistentID], *(a1 + 40), *(a1 + 48));
      v13 = [v5 databaseForEntityClass:*(a1 + 64)];
      v24 = 0;
      v14 = [(HDSQLiteEntity *)HDCachedCKRecordZoneEntity anyInDatabase:v13 predicate:v12 error:&v24];
      v15 = v24;

      if (v14)
      {
        v16 = 1;
      }

      else
      {
        v16 = v15 == 0;
      }

      if (v16)
      {
        v17 = *(a1 + 64);
        v18 = [v5 databaseForEntityClass:v17];
        v23.receiver = v17;
        v23.super_class = &OBJC_METACLASS___HDCachedCKRecordZoneEntity;
        v19 = objc_msgSendSuper2(&v23, sel_deleteEntitiesInDatabase_predicate_error_, v18, v12, a3);
      }

      else if (a3)
      {
        v21 = v15;
        v19 = 0;
        *a3 = v15;
      }

      else
      {
        _HKLogDroppedError();
        v19 = 0;
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else if (a3)
  {
    v20 = v9;
    v19 = 0;
    *a3 = v10;
  }

  else
  {
    _HKLogDroppedError();
    v19 = 0;
  }

  return v19;
}

+ (int64_t)requiresFetchForZoneWithContainerIdentifier:(id)identifier databaseScope:(int64_t)scope zoneName:(id)name ownerName:(id)ownerName transaction:(id)transaction error:(id *)error
{
  identifierCopy = identifier;
  nameCopy = name;
  ownerNameCopy = ownerName;
  transactionCopy = transaction;
  v37[0] = 0;
  v18 = [HDCachedCKDatabaseEntity entityForContainerIdentifier:identifierCopy databaseScope:scope userRecordName:0 transaction:transactionCopy shouldCreate:0 error:v37];
  v19 = v37[0];
  v20 = v19;
  if (v18)
  {
    v21 = 1;
  }

  else
  {
    v21 = v19 == 0;
  }

  if (v21)
  {
    if (v18)
    {
      v33 = 0;
      v34 = &v33;
      v35 = 0x2020000000;
      v36 = 0;
      v22 = [transactionCopy databaseForEntityClass:self];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __125__HDCachedCKRecordZoneEntity_requiresFetchForZoneWithContainerIdentifier_databaseScope_zoneName_ownerName_transaction_error___block_invoke;
      v32[3] = &__block_descriptor_40_e15___NSString_8__0l;
      v32[4] = self;
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __125__HDCachedCKRecordZoneEntity_requiresFetchForZoneWithContainerIdentifier_databaseScope_zoneName_ownerName_transaction_error___block_invoke_2;
      v28[3] = &unk_278613528;
      v29 = v18;
      v30 = nameCopy;
      v31 = ownerNameCopy;
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __125__HDCachedCKRecordZoneEntity_requiresFetchForZoneWithContainerIdentifier_databaseScope_zoneName_ownerName_transaction_error___block_invoke_3;
      v27[3] = &unk_278614620;
      v27[4] = &v33;
      v23 = [v22 executeCachedStatementForKey:&requiresFetchForZoneWithContainerIdentifier_databaseScope_zoneName_ownerName_transaction_error__fetchKey error:error SQLGenerator:v32 bindingHandler:v28 enumerationHandler:v27];

      if (v23)
      {
        if (*(v34 + 24))
        {
          v24 = 1;
        }

        else
        {
          v24 = 2;
        }
      }

      else
      {
        v24 = 0;
      }

      _Block_object_dispose(&v33, 8);
    }

    else
    {
      v24 = 1;
    }
  }

  else if (error)
  {
    v25 = v19;
    v24 = 0;
    *error = v20;
  }

  else
  {
    _HKLogDroppedError();
    v24 = 0;
  }

  return v24;
}

id __125__HDCachedCKRecordZoneEntity_requiresFetchForZoneWithContainerIdentifier_databaseScope_zoneName_ownerName_transaction_error___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) disambiguatedDatabaseTable];
  v3 = [v1 stringWithFormat:@"SELECT %@ FROM %@ WHERE %@ = ? AND %@ = ? AND %@ = ?", @"needs_fetch", v2, @"database_id", @"zone_name", @"owner_name"];

  return v3;
}

uint64_t __125__HDCachedCKRecordZoneEntity_requiresFetchForZoneWithContainerIdentifier_databaseScope_zoneName_ownerName_transaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, [*(a1 + 32) persistentID]);
  v3 = *(a1 + 40);
  HDSQLiteBindFoundationValueToStatement();
  v4 = *(a1 + 48);

  return HDSQLiteBindFoundationValueToStatement();
}

+ (BOOL)setRequiresFetch:(BOOL)fetch containerIdentifier:(id)identifier databaseScope:(int64_t)scope zoneName:(id)name ownerName:(id)ownerName transaction:(id)transaction error:(id *)error
{
  nameCopy = name;
  ownerNameCopy = ownerName;
  transactionCopy = transaction;
  v32 = 0;
  v18 = [HDCachedCKDatabaseEntity entityForContainerIdentifier:identifier databaseScope:scope userRecordName:0 transaction:transactionCopy shouldCreate:0 error:&v32];
  v19 = v32;
  v20 = v19;
  if (v18)
  {
    v21 = 1;
  }

  else
  {
    v21 = v19 == 0;
  }

  if (!v21)
  {
    if (error)
    {
      v24 = v19;
      v23 = 0;
      *error = v20;
      goto LABEL_13;
    }

    _HKLogDroppedError();
LABEL_12:
    v23 = 0;
    goto LABEL_13;
  }

  if (!v18)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:118 format:@"No such database."];
    goto LABEL_12;
  }

  v22 = [transactionCopy databaseForEntityClass:self];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __118__HDCachedCKRecordZoneEntity_setRequiresFetch_containerIdentifier_databaseScope_zoneName_ownerName_transaction_error___block_invoke;
  v31[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v31[4] = self;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __118__HDCachedCKRecordZoneEntity_setRequiresFetch_containerIdentifier_databaseScope_zoneName_ownerName_transaction_error___block_invoke_2;
  v26[3] = &unk_278614648;
  fetchCopy = fetch;
  v27 = v18;
  v28 = nameCopy;
  v29 = ownerNameCopy;
  v23 = [v22 executeCachedStatementForKey:&setRequiresFetch_containerIdentifier_databaseScope_zoneName_ownerName_transaction_error__updateKey error:error SQLGenerator:v31 bindingHandler:v26 enumerationHandler:0];

LABEL_13:
  return v23;
}

id __118__HDCachedCKRecordZoneEntity_setRequiresFetch_containerIdentifier_databaseScope_zoneName_ownerName_transaction_error___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) disambiguatedDatabaseTable];
  v3 = [v1 stringWithFormat:@"UPDATE %@ SET %@ = ? WHERE %@ = ? AND %@ = ? AND %@ = ?", v2, @"needs_fetch", @"database_id", @"zone_name", @"owner_name"];

  return v3;
}

uint64_t __118__HDCachedCKRecordZoneEntity_setRequiresFetch_containerIdentifier_databaseScope_zoneName_ownerName_transaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 56));
  sqlite3_bind_int64(a2, 2, [*(a1 + 32) persistentID]);
  v4 = *(a1 + 40);
  HDSQLiteBindFoundationValueToStatement();
  v5 = *(a1 + 48);

  return HDSQLiteBindFoundationValueToStatement();
}

+ (BOOL)setZoneEntityState:(int64_t)state containerIdentifier:(id)identifier databaseScope:(int64_t)scope zoneName:(id)name ownerName:(id)ownerName profile:(id)profile error:(id *)error
{
  identifierCopy = identifier;
  nameCopy = name;
  ownerNameCopy = ownerName;
  database = [profile database];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __116__HDCachedCKRecordZoneEntity_setZoneEntityState_containerIdentifier_databaseScope_zoneName_ownerName_profile_error___block_invoke;
  v24[3] = &unk_278614670;
  selfCopy = self;
  stateCopy = state;
  v25 = identifierCopy;
  v26 = nameCopy;
  v27 = ownerNameCopy;
  scopeCopy = scope;
  v19 = ownerNameCopy;
  v20 = nameCopy;
  v21 = identifierCopy;
  v22 = [(HDHealthEntity *)HDCachedCKRecordZoneEntity performWriteTransactionWithHealthDatabase:database error:error block:v24];

  return v22;
}

uint64_t __116__HDCachedCKRecordZoneEntity_setZoneEntityState_containerIdentifier_databaseScope_zoneName_ownerName_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = HDPredicateForContainerIdentifierAndDatabaseScope(*(a1 + 32), *(a1 + 56));
  v7 = [v5 databaseForEntityClass:*(a1 + 64)];
  v21 = 0;
  v8 = [(HDSQLiteEntity *)HDCachedCKDatabaseEntity anyInDatabase:v7 predicate:v6 error:&v21];
  v9 = v21;

  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9 == 0;
  }

  if (!v10)
  {
    if (a3)
    {
      v13 = v9;
      v12 = 0;
      *a3 = v9;
      goto LABEL_13;
    }

    _HKLogDroppedError();
LABEL_12:
    v12 = 0;
    goto LABEL_13;
  }

  if (!v8)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:118 format:@"No such database."];
    goto LABEL_12;
  }

  v11 = [v5 databaseForEntityClass:*(a1 + 64)];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __116__HDCachedCKRecordZoneEntity_setZoneEntityState_containerIdentifier_databaseScope_zoneName_ownerName_profile_error___block_invoke_2;
  v20[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v20[4] = *(a1 + 64);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __116__HDCachedCKRecordZoneEntity_setZoneEntityState_containerIdentifier_databaseScope_zoneName_ownerName_profile_error___block_invoke_3;
  v15[3] = &unk_2786144E0;
  v19 = *(a1 + 72);
  v16 = v8;
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v12 = [v11 executeCachedStatementForKey:&HDCachedCKRecordZoneEntityZoneState_block_invoke_updateKey error:a3 SQLGenerator:v20 bindingHandler:v15 enumerationHandler:0];

LABEL_13:
  return v12;
}

id __116__HDCachedCKRecordZoneEntity_setZoneEntityState_containerIdentifier_databaseScope_zoneName_ownerName_profile_error___block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) disambiguatedDatabaseTable];
  v3 = [v1 stringWithFormat:@"UPDATE %@ SET %@ = ? WHERE %@ = ? AND %@ = ? AND %@ = ?", v2, @"zone_state", @"database_id", @"zone_name", @"owner_name"];

  return v3;
}

uint64_t __116__HDCachedCKRecordZoneEntity_setZoneEntityState_containerIdentifier_databaseScope_zoneName_ownerName_profile_error___block_invoke_3(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 56));
  sqlite3_bind_int64(a2, 2, [*(a1 + 32) persistentID]);
  v4 = *(a1 + 40);
  HDSQLiteBindFoundationValueToStatement();
  v5 = *(a1 + 48);

  return HDSQLiteBindFoundationValueToStatement();
}

@end