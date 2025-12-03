@interface HDCachedCKDatabaseEntity
+ (BOOL)deleteDatabasesNotMatchingUserRecordName:(id)name profile:(id)profile error:(id *)error;
+ (BOOL)insertIfDoesNotExistWithContainerIdentifier:(id)identifier databaseScope:(int64_t)scope userRecordName:(id)name serverChangeToken:(id)token profile:(id)profile error:(id *)error;
+ (BOOL)insertOrUpdateWithContainerIdentifier:(id)identifier databaseScope:(int64_t)scope userRecordName:(id)name serverChangeToken:(id)token profile:(id)profile error:(id *)error;
+ (BOOL)updateServerChangeToken:(id)token containerIdentifier:(id)identifier databaseScope:(int64_t)scope transaction:(id)transaction error:(id *)error;
+ (id)entityForContainerIdentifier:(id)identifier databaseScope:(int64_t)scope userRecordName:(id)name transaction:(id)transaction shouldCreate:(BOOL)create error:(id *)error;
+ (id)insertWithContainerIdentifier:(id)identifier databaseScope:(int64_t)scope userRecordName:(id)name serverChangeToken:(id)token transaction:(id)transaction error:(id *)error;
+ (id)serverChangeTokenForContainerIdentifier:(id)identifier databaseScope:(int64_t)scope profile:(id)profile error:(id *)error;
+ (id)uniquedColumns;
+ (int64_t)previousEpochForTransaction:(id)transaction error:(id *)error;
- (BOOL)setCurrentEpoch:(int64_t)epoch transaction:(id)transaction error:(id *)error;
@end

@implementation HDCachedCKDatabaseEntity

+ (id)uniquedColumns
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"container_id";
  v5[1] = @"database_scope";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)insertWithContainerIdentifier:(id)identifier databaseScope:(int64_t)scope userRecordName:(id)name serverChangeToken:(id)token transaction:(id)transaction error:(id *)error
{
  identifierCopy = identifier;
  nameCopy = name;
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
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __123__HDCachedCKDatabaseEntity_insertWithContainerIdentifier_databaseScope_userRecordName_serverChangeToken_transaction_error___block_invoke;
  v31[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v31[4] = self;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __123__HDCachedCKDatabaseEntity_insertWithContainerIdentifier_databaseScope_userRecordName_serverChangeToken_transaction_error___block_invoke_2;
  v26[3] = &unk_2786144E0;
  v27 = identifierCopy;
  scopeCopy = scope;
  v21 = v18;
  v28 = v21;
  v29 = nameCopy;
  v22 = [v20 executeCachedStatementForKey:&insertWithContainerIdentifier_databaseScope_userRecordName_serverChangeToken_transaction_error__lookupKey error:error SQLGenerator:v31 bindingHandler:v26 enumerationHandler:0];
  v19 = 0;
  if (v22)
  {
    v23 = [HDCachedCKDatabaseEntity alloc];
    lastInsertRowID = [v20 lastInsertRowID];
    v19 = -[HDSQLiteEntity initWithPersistentID:](v23, "initWithPersistentID:", [lastInsertRowID longLongValue]);
  }

LABEL_8:

  return v19;
}

id __123__HDCachedCKDatabaseEntity_insertWithContainerIdentifier_databaseScope_userRecordName_serverChangeToken_transaction_error___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_self();
  v3 = MEMORY[0x277CCACA8];
  v4 = [v2 disambiguatedDatabaseTable];
  v5 = [v3 stringWithFormat:@"INSERT INTO %@ (%@, %@, %@, %@, %@) VALUES (?, ?, ?, ?, ?)", v4, @"container_id", @"database_scope", @"server_change_token", @"account_user_record_name", @"epoch"];

  return v5;
}

uint64_t __123__HDCachedCKDatabaseEntity_insertWithContainerIdentifier_databaseScope_userRecordName_serverChangeToken_transaction_error___block_invoke_2(void *a1, sqlite3_stmt *a2)
{
  v4 = a1[4];
  HDSQLiteBindFoundationValueToStatement();
  sqlite3_bind_int64(a2, 2, a1[7]);
  v5 = a1[5];
  HDSQLiteBindFoundationValueToStatement();
  v6 = a1[6];
  HDSQLiteBindFoundationValueToStatement();

  return sqlite3_bind_int64(a2, 5, 0);
}

+ (BOOL)updateServerChangeToken:(id)token containerIdentifier:(id)identifier databaseScope:(int64_t)scope transaction:(id)transaction error:(id *)error
{
  v25[1] = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  identifierCopy = identifier;
  transactionCopy = transaction;
  if (!tokenCopy)
  {
    v15 = 0;
    goto LABEL_5;
  }

  v15 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:tokenCopy requiringSecureCoding:1 error:error];
  if (v15)
  {
LABEL_5:
    v17 = [transactionCopy databaseForEntityClass:self];
    v18 = HDPredicateForContainerIdentifierAndDatabaseScope(identifierCopy, scope);
    v25[0] = @"server_change_token";
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __104__HDCachedCKDatabaseEntity_updateServerChangeToken_containerIdentifier_databaseScope_transaction_error___block_invoke;
    v23[3] = &unk_278614508;
    v24 = v15;
    v20 = v15;
    v16 = [self updateProperties:v19 predicate:v18 database:v17 error:error bindingHandler:v23];

    goto LABEL_6;
  }

  v16 = 0;
LABEL_6:

  v21 = *MEMORY[0x277D85DE8];
  return v16;
}

+ (id)entityForContainerIdentifier:(id)identifier databaseScope:(int64_t)scope userRecordName:(id)name transaction:(id)transaction shouldCreate:(BOOL)create error:(id *)error
{
  identifierCopy = identifier;
  nameCopy = name;
  transactionCopy = transaction;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__164;
  v37 = __Block_byref_object_dispose__164;
  v38 = 0;
  v18 = [transactionCopy databaseForEntityClass:self];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __117__HDCachedCKDatabaseEntity_entityForContainerIdentifier_databaseScope_userRecordName_transaction_shouldCreate_error___block_invoke;
  v32[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v32[4] = self;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __117__HDCachedCKDatabaseEntity_entityForContainerIdentifier_databaseScope_userRecordName_transaction_shouldCreate_error___block_invoke_2;
  v29[3] = &unk_278613B58;
  v19 = identifierCopy;
  v30 = v19;
  scopeCopy = scope;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __117__HDCachedCKDatabaseEntity_entityForContainerIdentifier_databaseScope_userRecordName_transaction_shouldCreate_error___block_invoke_3;
  v28[3] = &unk_278614620;
  v28[4] = &v33;
  v20 = [v18 executeCachedStatementForKey:&entityForContainerIdentifier_databaseScope_userRecordName_transaction_shouldCreate_error__lookupKey error:error SQLGenerator:v32 bindingHandler:v29 enumerationHandler:v28];

  if (v20)
  {
    v21 = v34[5];
    if (v21 || !create)
    {
      v22 = v21;
      goto LABEL_7;
    }

    if (nameCopy)
    {
      v22 = [self insertWithContainerIdentifier:v19 databaseScope:scope userRecordName:nameCopy serverChangeToken:0 transaction:transactionCopy error:error];
LABEL_7:
      v23 = v22;
      goto LABEL_14;
    }

    v24 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"User record name must not be nil"];
    v25 = v24;
    if (v24)
    {
      if (error)
      {
        v26 = v24;
        *error = v25;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  v23 = 0;
LABEL_14:

  _Block_object_dispose(&v33, 8);

  return v23;
}

id __117__HDCachedCKDatabaseEntity_entityForContainerIdentifier_databaseScope_userRecordName_transaction_shouldCreate_error___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = *MEMORY[0x277D10A40];
  v3 = [*(a1 + 32) disambiguatedDatabaseTable];
  v4 = [v1 stringWithFormat:@"SELECT %@ FROM %@ WHERE %@ = ? AND %@ = ?", v2, v3, @"container_id", @"database_scope"];

  return v4;
}

uint64_t __117__HDCachedCKDatabaseEntity_entityForContainerIdentifier_databaseScope_userRecordName_transaction_shouldCreate_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 32);
  HDSQLiteBindFoundationValueToStatement();
  v5 = *(a1 + 40);

  return sqlite3_bind_int64(a2, 2, v5);
}

uint64_t __117__HDCachedCKDatabaseEntity_entityForContainerIdentifier_databaseScope_userRecordName_transaction_shouldCreate_error___block_invoke_3(uint64_t a1)
{
  v2 = [(HDSQLiteEntity *)[HDCachedCKDatabaseEntity alloc] initWithPersistentID:HDSQLiteColumnAsInt64()];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return 0;
}

+ (BOOL)deleteDatabasesNotMatchingUserRecordName:(id)name profile:(id)profile error:(id *)error
{
  nameCopy = name;
  v9 = MEMORY[0x277CCACA8];
  profileCopy = profile;
  disambiguatedDatabaseTable = [self disambiguatedDatabaseTable];
  v12 = [v9 stringWithFormat:@"DELETE FROM %@ WHERE %@ != ?", disambiguatedDatabaseTable, @"account_user_record_name"];

  database = [profileCopy database];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __83__HDCachedCKDatabaseEntity_deleteDatabasesNotMatchingUserRecordName_profile_error___block_invoke;
  v17[3] = &unk_278613218;
  v18 = v12;
  v19 = nameCopy;
  v14 = nameCopy;
  v15 = v12;
  LOBYTE(error) = [(HDHealthEntity *)HDCachedCKDatabaseEntity performWriteTransactionWithHealthDatabase:database error:error block:v17];

  return error;
}

uint64_t __83__HDCachedCKDatabaseEntity_deleteDatabasesNotMatchingUserRecordName_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 unprotectedDatabase];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __83__HDCachedCKDatabaseEntity_deleteDatabasesNotMatchingUserRecordName_profile_error___block_invoke_2;
  v9[3] = &unk_278614860;
  v6 = *(a1 + 32);
  v10 = *(a1 + 40);
  v7 = [v5 executeUncachedSQL:v6 error:a3 bindingHandler:v9 enumerationHandler:0];

  return v7;
}

+ (BOOL)insertOrUpdateWithContainerIdentifier:(id)identifier databaseScope:(int64_t)scope userRecordName:(id)name serverChangeToken:(id)token profile:(id)profile error:(id *)error
{
  identifierCopy = identifier;
  nameCopy = name;
  tokenCopy = token;
  database = [profile database];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __127__HDCachedCKDatabaseEntity_insertOrUpdateWithContainerIdentifier_databaseScope_userRecordName_serverChangeToken_profile_error___block_invoke;
  v22[3] = &unk_2786145F8;
  selfCopy = self;
  scopeCopy = scope;
  v23 = identifierCopy;
  v24 = nameCopy;
  v25 = tokenCopy;
  v18 = tokenCopy;
  v19 = nameCopy;
  v20 = identifierCopy;
  LOBYTE(error) = [(HDHealthEntity *)HDCachedCKDatabaseEntity performWriteTransactionWithHealthDatabase:database error:error block:v22];

  return error;
}

BOOL __127__HDCachedCKDatabaseEntity_insertOrUpdateWithContainerIdentifier_databaseScope_userRecordName_serverChangeToken_profile_error___block_invoke(uint64_t *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a1[7];
  v7 = [v5 databaseForEntityClass:v6];
  v8 = HDPredicateForContainerIdentifierAndDatabaseScope(a1[4], a1[8]);
  v22 = 0;
  v9 = [v6 anyInDatabase:v7 predicate:v8 error:&v22];
  v10 = v22;

  if (v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10 == 0;
  }

  if (v11)
  {
    if (v9)
    {
      v12 = [HDCachedCKDatabaseEntity updateServerChangeToken:a1[6] containerIdentifier:a1[4] databaseScope:a1[8] transaction:v5 error:a3];
    }

    else
    {
      v14 = a1[8];
      v15 = a1[4];
      v16 = a1[5];
      v17 = a1[6];
      v21 = v10;
      v9 = [HDCachedCKDatabaseEntity insertWithContainerIdentifier:v15 databaseScope:v14 userRecordName:v16 serverChangeToken:v17 transaction:v5 error:&v21];
      v18 = v21;

      v12 = 1;
      if (!v9 && v18)
      {
        if (a3)
        {
          v19 = v18;
          v12 = 0;
          v9 = 0;
          *a3 = v18;
        }

        else
        {
          _HKLogDroppedError();
          v12 = 0;
          v9 = 0;
        }
      }

      v10 = v18;
    }
  }

  else if (a3)
  {
    v13 = v10;
    v12 = 0;
    v9 = 0;
    *a3 = v10;
  }

  else
  {
    _HKLogDroppedError();
    v12 = 0;
    v9 = 0;
  }

  return v12;
}

+ (BOOL)insertIfDoesNotExistWithContainerIdentifier:(id)identifier databaseScope:(int64_t)scope userRecordName:(id)name serverChangeToken:(id)token profile:(id)profile error:(id *)error
{
  identifierCopy = identifier;
  nameCopy = name;
  tokenCopy = token;
  database = [profile database];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __133__HDCachedCKDatabaseEntity_insertIfDoesNotExistWithContainerIdentifier_databaseScope_userRecordName_serverChangeToken_profile_error___block_invoke;
  v22[3] = &unk_2786145F8;
  selfCopy = self;
  scopeCopy = scope;
  v23 = identifierCopy;
  v24 = nameCopy;
  v25 = tokenCopy;
  v18 = tokenCopy;
  v19 = nameCopy;
  v20 = identifierCopy;
  LOBYTE(error) = [(HDHealthEntity *)HDCachedCKDatabaseEntity performWriteTransactionWithHealthDatabase:database error:error block:v22];

  return error;
}

uint64_t __133__HDCachedCKDatabaseEntity_insertIfDoesNotExistWithContainerIdentifier_databaseScope_userRecordName_serverChangeToken_profile_error___block_invoke(uint64_t *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a1[7];
  v7 = [v5 databaseForEntityClass:v6];
  v8 = HDPredicateForContainerIdentifierAndDatabaseScope(a1[4], a1[8]);
  v22 = 0;
  v9 = [v6 anyInDatabase:v7 predicate:v8 error:&v22];
  v10 = v22;

  if (v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10 == 0;
  }

  if (v11)
  {
    if (v9)
    {
      v12 = 1;
    }

    else
    {
      v14 = a1[8];
      v15 = a1[4];
      v16 = a1[5];
      v17 = a1[6];
      v21 = v10;
      v9 = [HDCachedCKDatabaseEntity insertWithContainerIdentifier:v15 databaseScope:v14 userRecordName:v16 serverChangeToken:v17 transaction:v5 error:&v21];
      v18 = v21;

      v12 = 1;
      if (!v9 && v18)
      {
        if (a3)
        {
          v19 = v18;
          v12 = 0;
          v9 = 0;
          *a3 = v18;
        }

        else
        {
          _HKLogDroppedError();
          v12 = 0;
          v9 = 0;
        }
      }

      v10 = v18;
    }
  }

  else if (a3)
  {
    v13 = v10;
    v12 = 0;
    v9 = 0;
    *a3 = v10;
  }

  else
  {
    _HKLogDroppedError();
    v12 = 0;
    v9 = 0;
  }

  return v12;
}

+ (id)serverChangeTokenForContainerIdentifier:(id)identifier databaseScope:(int64_t)scope profile:(id)profile error:(id *)error
{
  profileCopy = profile;
  v11 = HDPredicateForContainerIdentifierAndDatabaseScope(identifier, scope);
  database = [profileCopy database];

  v13 = [self propertyValueForAnyWithProperty:@"server_change_token" predicate:v11 healthDatabase:database error:error];

  if (v13)
  {
    v14 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v13 error:error];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)setCurrentEpoch:(int64_t)epoch transaction:(id)transaction error:(id *)error
{
  unprotectedDatabase = [transaction unprotectedDatabase];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__HDCachedCKDatabaseEntity_setCurrentEpoch_transaction_error___block_invoke_2;
  v10[3] = &unk_278613B58;
  v10[4] = self;
  v10[5] = epoch;
  LOBYTE(error) = [unprotectedDatabase executeCachedStatementForKey:&setCurrentEpoch_transaction_error__lookupKey error:error SQLGenerator:&__block_literal_global_198 bindingHandler:v10 enumerationHandler:0];

  return error;
}

id __62__HDCachedCKDatabaseEntity_setCurrentEpoch_transaction_error___block_invoke()
{
  v0 = MEMORY[0x277CCACA8];
  v1 = +[(HDSQLiteSchemaEntity *)HDCachedCKDatabaseEntity];
  v2 = [v0 stringWithFormat:@"UPDATE %@ SET %@ = ? WHERE %@ = ?", v1, @"epoch", *MEMORY[0x277D10A40]];

  return v2;
}

uint64_t __62__HDCachedCKDatabaseEntity_setCurrentEpoch_transaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 40));
  v4 = [*(a1 + 32) persistentID];

  return sqlite3_bind_int64(a2, 2, v4);
}

+ (int64_t)previousEpochForTransaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = -1;
  unprotectedDatabase = [transactionCopy unprotectedDatabase];
  v19[4] = self;
  v20 = 0;
  v18[4] = &v21;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __62__HDCachedCKDatabaseEntity_previousEpochForTransaction_error___block_invoke;
  v19[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __62__HDCachedCKDatabaseEntity_previousEpochForTransaction_error___block_invoke_2;
  v18[3] = &unk_278614620;
  v8 = [unprotectedDatabase executeCachedStatementForKey:&previousEpochForTransaction_error__lookupKey error:&v20 SQLGenerator:v19 bindingHandler:0 enumerationHandler:v18];
  v9 = v20;
  v10 = v9;
  if ((v8 & 1) == 0)
  {
    if (v9)
    {
      v11 = v9;
      v12 = v11;
      if (error)
      {
        v13 = v11;
        *error = v12;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    else
    {
      v14 = [MEMORY[0x277CCA9B8] hk_error:100 format:@"Failed to retrieve previous epoch from cache."];
      v12 = v14;
      if (v14)
      {
        if (error)
        {
          v15 = v14;
          *error = v12;
        }

        else
        {
          _HKLogDroppedError();
        }
      }
    }
  }

  v16 = v22[3];

  _Block_object_dispose(&v21, 8);
  return v16;
}

id __62__HDCachedCKDatabaseEntity_previousEpochForTransaction_error___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) disambiguatedDatabaseTable];
  v3 = [v1 stringWithFormat:@"SELECT MAX(%@) as %@ FROM %@", @"epoch", @"epoch", v2, 0];

  return v3;
}

@end