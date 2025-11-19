@interface HDLogicalSourceEntity
+ (BOOL)deleteLogicalSourceEntitiesIfNecessaryWithTransaction:(id)a3 error:(id *)a4;
+ (id)bundleIDForLogicalSourceID:(int64_t)a3 transaction:(id)a4 error:(id *)a5;
+ (id)logicalSourceIDForBundleIdentifier:(id)a3 transaction:(id)a4 error:(id *)a5;
+ (id)lookUpOrCreateLogicalSourceWithBundleIdentifier:(id)a3 owningAppBundleIdentifier:(id)a4 transaction:(id)a5 error:(id *)a6;
+ (id)ownerBundleIDForLogicalSourceID:(int64_t)a3 transaction:(id)a4 error:(id *)a5;
@end

@implementation HDLogicalSourceEntity

+ (id)bundleIDForLogicalSourceID:(int64_t)a3 transaction:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [v8 databaseForEntityClass:a1];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__38;
  v20 = __Block_byref_object_dispose__38;
  v21 = 0;
  v14[4] = a3;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __70__HDLogicalSourceEntity_bundleIDForLogicalSourceID_transaction_error___block_invoke;
  v15[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v15[4] = a1;
  v13[4] = &v16;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __70__HDLogicalSourceEntity_bundleIDForLogicalSourceID_transaction_error___block_invoke_2;
  v14[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __70__HDLogicalSourceEntity_bundleIDForLogicalSourceID_transaction_error___block_invoke_3;
  v13[3] = &unk_278614620;
  if ([v9 executeCachedStatementForKey:&bundleIDForLogicalSourceID_transaction_error__lookupKey error:a5 SQLGenerator:v15 bindingHandler:v14 enumerationHandler:v13])
  {
    v10 = v17[5];
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  _Block_object_dispose(&v16, 8);

  return v11;
}

id __70__HDLogicalSourceEntity_bundleIDForLogicalSourceID_transaction_error___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) disambiguatedDatabaseTable];
  v3 = [v1 stringWithFormat:@"SELECT %@ FROM %@ WHERE %@ = ?", @"bundle_id", v2, *MEMORY[0x277D10A40]];

  return v3;
}

uint64_t __70__HDLogicalSourceEntity_bundleIDForLogicalSourceID_transaction_error___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x22AAC6C90](a2, 0);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 1;
}

+ (id)logicalSourceIDForBundleIdentifier:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v9 databaseForEntityClass:a1];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__38;
  v23 = __Block_byref_object_dispose__38;
  v24 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __78__HDLogicalSourceEntity_logicalSourceIDForBundleIdentifier_transaction_error___block_invoke;
  v18[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v18[4] = a1;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __78__HDLogicalSourceEntity_logicalSourceIDForBundleIdentifier_transaction_error___block_invoke_2;
  v16[3] = &unk_278614860;
  v11 = v8;
  v17 = v11;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __78__HDLogicalSourceEntity_logicalSourceIDForBundleIdentifier_transaction_error___block_invoke_3;
  v15[3] = &unk_278614620;
  v15[4] = &v19;
  if ([v10 executeCachedStatementForKey:&logicalSourceIDForBundleIdentifier_transaction_error__lookupKey error:a5 SQLGenerator:v18 bindingHandler:v16 enumerationHandler:v15])
  {
    v12 = v20[5];
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  _Block_object_dispose(&v19, 8);

  return v13;
}

id __78__HDLogicalSourceEntity_logicalSourceIDForBundleIdentifier_transaction_error___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = *MEMORY[0x277D10A40];
  v3 = [*(a1 + 32) disambiguatedDatabaseTable];
  v4 = [v1 stringWithFormat:@"SELECT %@ FROM %@ WHERE %@ = ?", v2, v3, @"bundle_id"];

  return v4;
}

uint64_t __78__HDLogicalSourceEntity_logicalSourceIDForBundleIdentifier_transaction_error___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x277CCABB0] numberWithLongLong:HDSQLiteColumnAsInt64()];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return 1;
}

+ (id)ownerBundleIDForLogicalSourceID:(int64_t)a3 transaction:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [v8 databaseForEntityClass:a1];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__38;
  v20 = __Block_byref_object_dispose__38;
  v21 = 0;
  v14[4] = a3;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75__HDLogicalSourceEntity_ownerBundleIDForLogicalSourceID_transaction_error___block_invoke;
  v15[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v15[4] = a1;
  v13[4] = &v16;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __75__HDLogicalSourceEntity_ownerBundleIDForLogicalSourceID_transaction_error___block_invoke_2;
  v14[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __75__HDLogicalSourceEntity_ownerBundleIDForLogicalSourceID_transaction_error___block_invoke_3;
  v13[3] = &unk_278614620;
  if ([v9 executeCachedStatementForKey:&ownerBundleIDForLogicalSourceID_transaction_error__lookupKey error:a5 SQLGenerator:v15 bindingHandler:v14 enumerationHandler:v13])
  {
    v10 = v17[5];
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  _Block_object_dispose(&v16, 8);

  return v11;
}

id __75__HDLogicalSourceEntity_ownerBundleIDForLogicalSourceID_transaction_error___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) disambiguatedDatabaseTable];
  v3 = [v1 stringWithFormat:@"SELECT %@ FROM %@ WHERE %@ = ?", @"owner_bundle_id", v2, *MEMORY[0x277D10A40]];

  return v3;
}

uint64_t __75__HDLogicalSourceEntity_ownerBundleIDForLogicalSourceID_transaction_error___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x22AAC6C90](a2, 0);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 1;
}

+ (id)lookUpOrCreateLogicalSourceWithBundleIdentifier:(id)a3 owningAppBundleIdentifier:(id)a4 transaction:(id)a5 error:(id *)a6
{
  v49 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (!v11)
  {
    v29 = [MEMORY[0x277CCA890] currentHandler];
    [v29 handleFailureInMethod:a2 object:a1 file:@"HDLogicalSourceEntity.m" lineNumber:120 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier != nil"}];
  }

  if ([MEMORY[0x277CCDA00] _isPlaceholderBundleIdentifier:v11])
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a6 code:3 format:{@"Invalid bundle identifier '%@'", v11}];
    v14 = 0;
  }

  else
  {
    v15 = [v13 databaseForEntityClass:a1];
    v41 = 0;
    v42 = &v41;
    v43 = 0x3032000000;
    v44 = __Block_byref_object_copy__38;
    v45 = __Block_byref_object_dispose__38;
    v46 = 0;
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __117__HDLogicalSourceEntity_lookUpOrCreateLogicalSourceWithBundleIdentifier_owningAppBundleIdentifier_transaction_error___block_invoke;
    v38[3] = &unk_278618EF0;
    v39 = v12;
    v40 = a1;
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __117__HDLogicalSourceEntity_lookUpOrCreateLogicalSourceWithBundleIdentifier_owningAppBundleIdentifier_transaction_error___block_invoke_2;
    v35[3] = &unk_278613038;
    v16 = v11;
    v36 = v16;
    v17 = v39;
    v37 = v17;
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __117__HDLogicalSourceEntity_lookUpOrCreateLogicalSourceWithBundleIdentifier_owningAppBundleIdentifier_transaction_error___block_invoke_3;
    v34[3] = &unk_278614620;
    v34[4] = &v41;
    if ([v15 executeCachedStatementForKey:&lookUpOrCreateLogicalSourceWithBundleIdentifier_owningAppBundleIdentifier_transaction_error__key error:a6 SQLGenerator:v38 bindingHandler:v35 enumerationHandler:v34])
    {
      if (v42[5])
      {
        v14 = [(HDSQLiteEntity *)HDLogicalSourceEntity entityWithPersistentID:?];
      }

      else
      {
        v20 = [v13 databaseForEntityClass:a1];
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __117__HDLogicalSourceEntity_lookUpOrCreateLogicalSourceWithBundleIdentifier_owningAppBundleIdentifier_transaction_error___block_invoke_349;
        v33[3] = &__block_descriptor_40_e15___NSString_8__0l;
        v33[4] = a1;
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __117__HDLogicalSourceEntity_lookUpOrCreateLogicalSourceWithBundleIdentifier_owningAppBundleIdentifier_transaction_error___block_invoke_2_353;
        v30[3] = &unk_278613038;
        v31 = v16;
        v32 = v17;
        v21 = [v20 executeCachedStatementForKey:&lookUpOrCreateLogicalSourceWithBundleIdentifier_owningAppBundleIdentifier_transaction_error__insertKey error:a6 SQLGenerator:v33 bindingHandler:v30 enumerationHandler:0];

        if (v21)
        {
          v22 = [v13 unprotectedDatabase];
          v23 = [v22 lastInsertRowID];
          v24 = v42[5];
          v42[5] = v23;

          v14 = [(HDSQLiteEntity *)HDLogicalSourceEntity entityWithPersistentID:v42[5]];
        }

        else
        {
          _HKInitializeLogging();
          v25 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_INFO))
          {
            if (a6)
            {
              v26 = *a6;
            }

            else
            {
              v26 = 0;
            }

            *buf = 138543362;
            v48 = v26;
            _os_log_impl(&dword_228986000, v25, OS_LOG_TYPE_INFO, "Unable to insert logical source : %{public}@", buf, 0xCu);
          }

          v14 = 0;
        }
      }
    }

    else
    {
      _HKInitializeLogging();
      v18 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_INFO))
      {
        if (a6)
        {
          v19 = *a6;
        }

        else
        {
          v19 = 0;
        }

        *buf = 138543362;
        v48 = v19;
        _os_log_impl(&dword_228986000, v18, OS_LOG_TYPE_INFO, "Unable to look up logical source: %{public}@", buf, 0xCu);
      }

      v14 = 0;
    }

    _Block_object_dispose(&v41, 8);
  }

  v27 = *MEMORY[0x277D85DE8];

  return v14;
}

id __117__HDLogicalSourceEntity_lookUpOrCreateLogicalSourceWithBundleIdentifier_owningAppBundleIdentifier_transaction_error___block_invoke(uint64_t a1)
{
  v1 = @" = ";
  v2 = *(a1 + 40);
  if (!*(a1 + 32))
  {
    v1 = @" IS ";
  }

  v3 = MEMORY[0x277CCACA8];
  v4 = *MEMORY[0x277D10A40];
  v5 = v1;
  v6 = [v2 disambiguatedDatabaseTable];
  v7 = [v3 stringWithFormat:@"SELECT %@ FROM %@ WHERE %@ = ? AND %@ %@ ?", v4, v6, @"bundle_id", @"owner_bundle_id", v5];

  return v7;
}

uint64_t __117__HDLogicalSourceEntity_lookUpOrCreateLogicalSourceWithBundleIdentifier_owningAppBundleIdentifier_transaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 32);
  HDSQLiteBindStringToStatement();
  if (*(a1 + 40))
  {

    return HDSQLiteBindStringToStatement();
  }

  else
  {

    return sqlite3_bind_null(a2, 2);
  }
}

uint64_t __117__HDLogicalSourceEntity_lookUpOrCreateLogicalSourceWithBundleIdentifier_owningAppBundleIdentifier_transaction_error___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x277CCABB0] numberWithLongLong:HDSQLiteColumnAsInt64()];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return 1;
}

id __117__HDLogicalSourceEntity_lookUpOrCreateLogicalSourceWithBundleIdentifier_owningAppBundleIdentifier_transaction_error___block_invoke_349(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) disambiguatedDatabaseTable];
  v3 = [v1 stringWithFormat:@"INSERT INTO %@ (%@, %@) VALUES (?, ?)", v2, @"bundle_id", @"owner_bundle_id"];

  return v3;
}

uint64_t __117__HDLogicalSourceEntity_lookUpOrCreateLogicalSourceWithBundleIdentifier_owningAppBundleIdentifier_transaction_error___block_invoke_2_353(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 32);
  HDSQLiteBindStringToStatement();
  if (*(a1 + 40))
  {

    return HDSQLiteBindStringToStatement();
  }

  else
  {

    return sqlite3_bind_null(a2, 2);
  }
}

+ (BOOL)deleteLogicalSourceEntitiesIfNecessaryWithTransaction:(id)a3 error:(id *)a4
{
  v6 = [a3 databaseForEntityClass:a1];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __85__HDLogicalSourceEntity_deleteLogicalSourceEntitiesIfNecessaryWithTransaction_error___block_invoke;
  v8[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v8[4] = a1;
  LOBYTE(a4) = [v6 executeCachedStatementForKey:&deleteLogicalSourceEntitiesIfNecessaryWithTransaction_error__lookupKey error:a4 SQLGenerator:v8 bindingHandler:0 enumerationHandler:0];

  return a4;
}

id __85__HDLogicalSourceEntity_deleteLogicalSourceEntitiesIfNecessaryWithTransaction_error___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) disambiguatedDatabaseTable];
  v3 = *MEMORY[0x277D10A40];
  v4 = +[(HDSQLiteSchemaEntity *)HDSourceEntity];
  v5 = [v1 stringWithFormat:@"DELETE FROM %@ WHERE %@ NOT IN (SELECT DISTINCT(%@) FROM %@)", v2, v3, @"logical_source_id", v4];

  return v5;
}

@end