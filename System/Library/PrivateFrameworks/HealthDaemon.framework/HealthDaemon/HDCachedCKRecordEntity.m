@interface HDCachedCKRecordEntity
+ (BOOL)deleteRecordWithContainerIdentifier:(id)a3 databaseScope:(int64_t)a4 zoneName:(id)a5 ownerName:(id)a6 recordName:(id)a7 profile:(id)a8 error:(id *)a9;
+ (BOOL)enumerateRecordIDAndDataWithContainerIdentifier:(id)a3 databaseScope:(int64_t)a4 zoneName:(id)a5 ownerName:(id)a6 recordType:(id)a7 recordName:(id)a8 epoch:(int64_t)a9 profile:(id)a10 error:(id *)a11 enumerationHandler:(id)a12;
+ (BOOL)enumerateRecordIDsWithContainerIdentifier:(id)a3 databaseScope:(int64_t)a4 zoneName:(id)a5 ownerName:(id)a6 profile:(id)a7 error:(id *)a8 enumerationHandler:(id)a9;
+ (BOOL)insertOrUpdateWithContainerIdentifier:(id)a3 databaseScope:(int64_t)a4 zoneName:(id)a5 ownerName:(id)a6 recordData:(id)a7 recordType:(id)a8 recordName:(id)a9 profile:(id)a10 error:(id *)a11;
+ (BOOL)updateWithRecordData:(id)a3 epoch:(int64_t)a4 zoneID:(int64_t)a5 recordName:(id)a6 transaction:(id)a7 error:(id *)a8;
+ (id)_dbEntityWithContainerIdentifier:(uint64_t)a1 databaseScope:(void *)a2 transaction:(uint64_t)a3 error:(void *)a4;
+ (id)_recordZoneEntityWithContainerIdentifier:(uint64_t)a3 databaseScope:(void *)a4 zoneName:(void *)a5 ownerName:(void *)a6 transaction:(uint64_t)a7 error:;
+ (id)_recordZoneEntityWithDbEntity:(void *)a3 zoneName:(void *)a4 ownerName:(void *)a5 transaction:(uint64_t)a6 error:;
+ (id)foreignKeys;
+ (id)insertWithZoneID:(int64_t)a3 recordType:(id)a4 epoch:(int64_t)a5 recordName:(id)a6 recordData:(id)a7 transaction:(id)a8 error:(id *)a9;
+ (id)recordDataWithContainerIdentifier:(id)a3 databaseScope:(int64_t)a4 zoneName:(id)a5 ownerName:(id)a6 recordName:(id)a7 profile:(id)a8 error:(id *)a9;
+ (id)uniquedColumns;
+ (int64_t)containsRecordWithContainerIdentifier:(id)a3 databaseScope:(int64_t)a4 zoneName:(id)a5 ownerName:(id)a6 recordName:(id)a7 profile:(id)a8 error:(id *)a9;
+ (int64_t)containsRecordsWithContainerIdentifier:(id)a3 databaseScope:(int64_t)a4 zoneName:(id)a5 ownerName:(id)a6 profile:(id)a7 error:(id *)a8;
@end

@implementation HDCachedCKRecordEntity

+ (id)foreignKeys
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"zone_id";
  v2 = +[(HDHealthEntity *)HDCachedCKRecordZoneEntity];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)uniquedColumns
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"zone_id";
  v5[1] = @"record_name";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)insertWithZoneID:(int64_t)a3 recordType:(id)a4 epoch:(int64_t)a5 recordName:(id)a6 recordData:(id)a7 transaction:(id)a8 error:(id *)a9
{
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = [a8 databaseForEntityClass:a1];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __100__HDCachedCKRecordEntity_insertWithZoneID_recordType_epoch_recordName_recordData_transaction_error___block_invoke;
  v35[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v35[4] = a1;
  v26 = MEMORY[0x277D85DD0];
  v27 = 3221225472;
  v28 = __100__HDCachedCKRecordEntity_insertWithZoneID_recordType_epoch_recordName_recordData_transaction_error___block_invoke_2;
  v29 = &unk_278626580;
  v33 = a3;
  v19 = v15;
  v30 = v19;
  v34 = a5;
  v20 = v16;
  v31 = v20;
  v21 = v17;
  v32 = v21;
  v22 = 0;
  if ([v18 executeCachedStatementForKey:&insertWithZoneID_recordType_epoch_recordName_recordData_transaction_error__lookupKey error:a9 SQLGenerator:v35 bindingHandler:&v26 enumerationHandler:0])
  {
    v23 = [HDCachedCKRecordEntity alloc];
    v24 = [v18 lastInsertRowID];
    v22 = -[HDSQLiteEntity initWithPersistentID:](v23, "initWithPersistentID:", [v24 longLongValue]);
  }

  return v22;
}

id __100__HDCachedCKRecordEntity_insertWithZoneID_recordType_epoch_recordName_recordData_transaction_error___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_self();
  v3 = MEMORY[0x277CCACA8];
  v4 = [v2 disambiguatedDatabaseTable];
  v5 = [v3 stringWithFormat:@"INSERT INTO %@ (%@, %@, %@, %@, %@) VALUES (?, ?, ?, ?, ?)", v4, @"zone_id", @"record_type", @"epoch", @"record_name", @"record_data"];

  return v5;
}

uint64_t __100__HDCachedCKRecordEntity_insertWithZoneID_recordType_epoch_recordName_recordData_transaction_error___block_invoke_2(void *a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, a1[7]);
  v4 = a1[4];
  HDSQLiteBindFoundationValueToStatement();
  sqlite3_bind_int64(a2, 3, a1[8]);
  v5 = a1[5];
  HDSQLiteBindFoundationValueToStatement();
  v6 = a1[6];

  return HDSQLiteBindFoundationValueToStatement();
}

+ (BOOL)updateWithRecordData:(id)a3 epoch:(int64_t)a4 zoneID:(int64_t)a5 recordName:(id)a6 transaction:(id)a7 error:(id *)a8
{
  v25[2] = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a6;
  v16 = [a7 databaseForEntityClass:a1];
  v17 = HDPredicateForZoneIDAndRecordName(a5, v15);

  v25[0] = @"epoch";
  v25[1] = @"record_data";
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __89__HDCachedCKRecordEntity_updateWithRecordData_epoch_zoneID_recordName_transaction_error___block_invoke;
  v22[3] = &unk_278616B10;
  v23 = v14;
  v24 = a4;
  v19 = v14;
  LOBYTE(a8) = [a1 updateProperties:v18 predicate:v17 database:v16 error:a8 bindingHandler:v22];

  v20 = *MEMORY[0x277D85DE8];
  return a8;
}

void __89__HDCachedCKRecordEntity_updateWithRecordData_epoch_zoneID_recordName_transaction_error___block_invoke(uint64_t a1, uint64_t a2)
{
  MEMORY[0x22AAC6B90](a2, @"epoch", *(a1 + 40));
  v3 = *(a1 + 32);

  JUMPOUT(0x22AAC6B40);
}

+ (BOOL)insertOrUpdateWithContainerIdentifier:(id)a3 databaseScope:(int64_t)a4 zoneName:(id)a5 ownerName:(id)a6 recordData:(id)a7 recordType:(id)a8 recordName:(id)a9 profile:(id)a10 error:(id *)a11
{
  v16 = a3;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = [a10 database];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __144__HDCachedCKRecordEntity_insertOrUpdateWithContainerIdentifier_databaseScope_zoneName_ownerName_recordData_recordType_recordName_profile_error___block_invoke;
  v31[3] = &unk_278614530;
  v38 = a1;
  v39 = a4;
  v32 = v16;
  v33 = v17;
  v34 = v18;
  v35 = v21;
  v36 = v20;
  v37 = v19;
  v23 = v19;
  v24 = v20;
  v25 = v21;
  v26 = v18;
  v27 = v17;
  v28 = v16;
  LOBYTE(v20) = [(HDHealthEntity *)HDCachedCKRecordZoneEntity performWriteTransactionWithHealthDatabase:v22 error:a11 block:v31];

  return v20;
}

uint64_t __144__HDCachedCKRecordEntity_insertOrUpdateWithContainerIdentifier_databaseScope_zoneName_ownerName_recordData_recordType_recordName_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [HDCachedCKRecordEntity _dbEntityWithContainerIdentifier:*(a1 + 32) databaseScope:*(a1 + 88) transaction:v5 error:?];
  if (v6)
  {
    v33 = 0;
    v7 = [HDCachedCKDatabaseEntity previousEpochForTransaction:v5 error:&v33];
    v8 = v33;
    v9 = v8;
    if (v7 < 0)
    {
      v10 = v8;
      if (v10)
      {
        if (a3)
        {
          v17 = v10;
          v16 = 0;
          *a3 = v10;
        }

        else
        {
          _HKLogDroppedError();
          v16 = 0;
        }

        goto LABEL_31;
      }
    }

    else
    {
      v10 = [(HDCachedCKRecordEntity *)*(a1 + 80) _recordZoneEntityWithDbEntity:v6 zoneName:*(a1 + 40) ownerName:*(a1 + 48) transaction:v5 error:a3];
      if (v10)
      {
        v29 = v9;
        v11 = [v5 databaseForEntityClass:*(a1 + 80)];
        v12 = HDPredicateForZoneIDAndRecordName([v10 persistentID], *(a1 + 56));
        v32 = 0;
        v13 = [(HDSQLiteEntity *)HDCachedCKRecordEntity anyInDatabase:v11 predicate:v12 error:&v32];
        v14 = v32;

        if (!v13 && v14)
        {
          if (a3)
          {
            v15 = v14;
            v16 = 0;
            *a3 = v14;
          }

          else
          {
            _HKLogDroppedError();
            v16 = 0;
          }

          v9 = v29;
          goto LABEL_30;
        }

        if (v13)
        {
          v18 = *(a1 + 72);
          v19 = [v10 persistentID];
          v20 = *(a1 + 56);
          v30 = v14;
          LOBYTE(v18) = [HDCachedCKRecordEntity updateWithRecordData:v18 epoch:v7 + 1 zoneID:v19 recordName:v20 transaction:v5 error:&v30];
          v21 = v30;

          if ((v18 & 1) == 0)
          {
            v14 = v21;
            v16 = v14 == 0;
            v9 = v29;
            if (v14)
            {
              if (a3)
              {
                v27 = v14;
                *a3 = v14;
              }

              else
              {
                _HKLogDroppedError();
              }
            }

            goto LABEL_30;
          }

          v9 = v29;
        }

        else
        {
          v22 = [v10 persistentID];
          v24 = *(a1 + 56);
          v23 = *(a1 + 64);
          v25 = *(a1 + 72);
          v31 = v14;
          v13 = [HDCachedCKRecordEntity insertWithZoneID:v22 recordType:v23 epoch:v7 + 1 recordName:v24 recordData:v25 transaction:v5 error:&v31];
          v21 = v31;

          v9 = v29;
          if (!v13 && v21)
          {
            if (a3)
            {
              v26 = v21;
              v16 = 0;
              *a3 = v21;
            }

            else
            {
              _HKLogDroppedError();
              v16 = 0;
            }

            goto LABEL_22;
          }
        }

        v16 = [v6 setCurrentEpoch:v7 + 1 transaction:v5 error:a3];

LABEL_22:
        v14 = v21;
LABEL_30:

        goto LABEL_31;
      }
    }

    v16 = 1;
LABEL_31:

    goto LABEL_32;
  }

  v16 = 1;
LABEL_32:

  return v16;
}

+ (id)_dbEntityWithContainerIdentifier:(uint64_t)a1 databaseScope:(void *)a2 transaction:(uint64_t)a3 error:(void *)a4
{
  v6 = a4;
  v7 = a2;
  v8 = objc_opt_self();
  v9 = HDPredicateForContainerIdentifierAndDatabaseScope(v7, a3);

  v10 = [v6 databaseForEntityClass:v8];

  v13 = 0;
  v11 = [(HDSQLiteEntity *)HDCachedCKDatabaseEntity anyInDatabase:v10 predicate:v9 error:&v13];

  return v11;
}

+ (id)_recordZoneEntityWithDbEntity:(void *)a3 zoneName:(void *)a4 ownerName:(void *)a5 transaction:(uint64_t)a6 error:
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = a2;
  v14 = objc_opt_self();
  v15 = [v13 persistentID];

  v16 = HDPredicateForDatabaseIDAndRecordZone(v15, v12, v11);

  v17 = [v10 databaseForEntityClass:v14];

  v18 = [(HDSQLiteEntity *)HDCachedCKRecordZoneEntity anyInDatabase:v17 predicate:v16 error:a6];

  return v18;
}

+ (BOOL)enumerateRecordIDsWithContainerIdentifier:(id)a3 databaseScope:(int64_t)a4 zoneName:(id)a5 ownerName:(id)a6 profile:(id)a7 error:(id *)a8 enumerationHandler:(id)a9
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a9;
  v18 = MEMORY[0x277CBC5F8];
  v19 = a7;
  v20 = [[v18 alloc] initWithZoneName:v15 ownerName:v16];
  v21 = [v19 database];

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __134__HDCachedCKRecordEntity_enumerateRecordIDsWithContainerIdentifier_databaseScope_zoneName_ownerName_profile_error_enumerationHandler___block_invoke;
  v29[3] = &unk_2786265A8;
  v35 = a1;
  v36 = a4;
  v30 = v14;
  v31 = v15;
  v33 = v20;
  v34 = v17;
  v32 = v16;
  v22 = v20;
  v23 = v17;
  v24 = v16;
  v25 = v15;
  v26 = v14;
  LOBYTE(v20) = [(HDHealthEntity *)HDCachedCKRecordEntity performReadTransactionWithHealthDatabase:v21 error:a8 block:v29];

  return v20;
}

uint64_t __134__HDCachedCKRecordEntity_enumerateRecordIDsWithContainerIdentifier_databaseScope_zoneName_ownerName_profile_error_enumerationHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [(HDCachedCKRecordEntity *)*(a1 + 72) _recordZoneEntityWithContainerIdentifier:*(a1 + 80) databaseScope:*(a1 + 40) zoneName:*(a1 + 48) ownerName:v5 transaction:a3 error:?];
  if (v6)
  {
    v7 = [v5 databaseForEntityClass:*(a1 + 72)];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __134__HDCachedCKRecordEntity_enumerateRecordIDsWithContainerIdentifier_databaseScope_zoneName_ownerName_profile_error_enumerationHandler___block_invoke_2;
    v15[3] = &__block_descriptor_40_e15___NSString_8__0l;
    v15[4] = *(a1 + 72);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __134__HDCachedCKRecordEntity_enumerateRecordIDsWithContainerIdentifier_databaseScope_zoneName_ownerName_profile_error_enumerationHandler___block_invoke_3;
    v13[3] = &unk_278614860;
    v14 = v6;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __134__HDCachedCKRecordEntity_enumerateRecordIDsWithContainerIdentifier_databaseScope_zoneName_ownerName_profile_error_enumerationHandler___block_invoke_4;
    v10[3] = &unk_27861B8D8;
    v12 = *(a1 + 64);
    v11 = *(a1 + 56);
    v8 = [v7 executeCachedStatementForKey:&HDCachedCKRecordEntityRecordData_block_invoke_fetchKey error:a3 SQLGenerator:v15 bindingHandler:v13 enumerationHandler:v10];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

+ (id)_recordZoneEntityWithContainerIdentifier:(uint64_t)a3 databaseScope:(void *)a4 zoneName:(void *)a5 ownerName:(void *)a6 transaction:(uint64_t)a7 error:
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a2;
  v16 = objc_opt_self();
  v17 = [HDCachedCKRecordEntity _dbEntityWithContainerIdentifier:v16 databaseScope:v15 transaction:a3 error:v14];

  if (v17)
  {
    v18 = [(HDCachedCKRecordEntity *)v16 _recordZoneEntityWithDbEntity:v17 zoneName:v12 ownerName:v13 transaction:v14 error:a7];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

id __134__HDCachedCKRecordEntity_enumerateRecordIDsWithContainerIdentifier_databaseScope_zoneName_ownerName_profile_error_enumerationHandler___block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) disambiguatedDatabaseTable];
  v3 = [v1 stringWithFormat:@"SELECT %@ FROM %@ WHERE %@ = ?", @"record_name", v2, @"zone_id"];

  return v3;
}

uint64_t __134__HDCachedCKRecordEntity_enumerateRecordIDsWithContainerIdentifier_databaseScope_zoneName_ownerName_profile_error_enumerationHandler___block_invoke_3(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) persistentID];

  return sqlite3_bind_int64(a2, 1, v3);
}

uint64_t __134__HDCachedCKRecordEntity_enumerateRecordIDsWithContainerIdentifier_databaseScope_zoneName_ownerName_profile_error_enumerationHandler___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v6 = objc_alloc(MEMORY[0x277CBC5D0]);
  v7 = HDSQLiteColumnWithNameAsString();
  v8 = [v6 initWithRecordName:v7 zoneID:*(a1 + 32)];
  v9 = (*(v5 + 16))(v5, v8, a3);

  return v9;
}

+ (BOOL)enumerateRecordIDAndDataWithContainerIdentifier:(id)a3 databaseScope:(int64_t)a4 zoneName:(id)a5 ownerName:(id)a6 recordType:(id)a7 recordName:(id)a8 epoch:(int64_t)a9 profile:(id)a10 error:(id *)a11 enumerationHandler:(id)a12
{
  v16 = a3;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a12;
  v22 = MEMORY[0x277CBC5F8];
  v23 = a10;
  v24 = [[v22 alloc] initWithZoneName:v17 ownerName:v18];
  v25 = [v23 database];

  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __168__HDCachedCKRecordEntity_enumerateRecordIDAndDataWithContainerIdentifier_databaseScope_zoneName_ownerName_recordType_recordName_epoch_profile_error_enumerationHandler___block_invoke;
  v36[3] = &unk_2786265F8;
  v37 = v16;
  v38 = v17;
  v45 = a4;
  v46 = a9;
  v39 = v18;
  v40 = v19;
  v43 = v21;
  v44 = a1;
  v41 = v20;
  v42 = v24;
  v26 = v24;
  v27 = v21;
  v28 = v20;
  v29 = v19;
  v30 = v18;
  v31 = v17;
  v32 = v16;
  LOBYTE(v21) = [(HDHealthEntity *)HDCachedCKRecordEntity performReadTransactionWithHealthDatabase:v25 error:a11 block:v36];

  return v21;
}

uint64_t __168__HDCachedCKRecordEntity_enumerateRecordIDAndDataWithContainerIdentifier_databaseScope_zoneName_ownerName_recordType_recordName_epoch_profile_error_enumerationHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v34[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [(HDCachedCKRecordEntity *)*(a1 + 88) _recordZoneEntityWithContainerIdentifier:*(a1 + 96) databaseScope:*(a1 + 40) zoneName:*(a1 + 48) ownerName:v5 transaction:a3 error:?];
  if (v6)
  {
    v7 = HDPredicateForRecordsSinceEpoch(*(a1 + 104));
    v8 = HDPredicateForZoneIDAndRecordType([v6 persistentID], *(a1 + 56));
    v9 = MEMORY[0x277D10B20];
    v26 = v8;
    v27 = v7;
    v34[0] = v8;
    v34[1] = v7;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
    v11 = [v9 predicateMatchingAllPredicates:v10];

    if (*(a1 + 64))
    {
      v12 = HDPredicateForZoneIDAndRecordName([v6 persistentID], *(a1 + 64));
      v13 = MEMORY[0x277D10B20];
      v33[0] = v11;
      v33[1] = v12;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
      v15 = [v13 predicateMatchingAllPredicates:v14];

      v11 = v15;
    }

    v16 = *(a1 + 88);
    v17 = [v5 databaseForEntityClass:{v16, a3}];
    v18 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"epoch" entityClass:*(a1 + 88) ascending:1];
    v32 = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
    v20 = [v16 queryWithDatabase:v17 predicate:v11 limit:0 orderingTerms:v19 groupBy:0];

    v31[0] = *MEMORY[0x277D10A40];
    v31[1] = @"epoch";
    v31[2] = @"record_name";
    v31[3] = @"record_data";
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:4];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __168__HDCachedCKRecordEntity_enumerateRecordIDAndDataWithContainerIdentifier_databaseScope_zoneName_ownerName_recordType_recordName_epoch_profile_error_enumerationHandler___block_invoke_2;
    v28[3] = &unk_2786265D0;
    v30 = *(a1 + 80);
    v29 = *(a1 + 72);
    v22 = [v20 enumerateProperties:v21 error:v25 enumerationHandler:v28];
  }

  else
  {
    v22 = 1;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

uint64_t __168__HDCachedCKRecordEntity_enumerateRecordIDAndDataWithContainerIdentifier_databaseScope_zoneName_ownerName_recordType_recordName_epoch_profile_error_enumerationHandler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 40);
  v7 = [HDCachedCKRecordEntity alloc];
  v8 = *MEMORY[0x277D10A40];
  v9 = [(HDSQLiteEntity *)v7 initWithPersistentID:HDSQLiteColumnWithNameAsInt64()];
  v10 = objc_alloc(MEMORY[0x277CBC5D0]);
  v11 = HDSQLiteColumnWithNameAsString();
  v12 = [v10 initWithRecordName:v11 zoneID:*(a1 + 32)];
  v13 = HDSQLiteColumnWithNameAsData();
  v14 = HDSQLiteColumnWithNameAsInt64();
  v15 = (*(v6 + 16))(v6, v9, v12, v13, v14, a4);

  return v15;
}

+ (int64_t)containsRecordsWithContainerIdentifier:(id)a3 databaseScope:(int64_t)a4 zoneName:(id)a5 ownerName:(id)a6 profile:(id)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__140;
  v35 = __Block_byref_object_dispose__140;
  v36 = 0;
  v18 = [v17 database];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __112__HDCachedCKRecordEntity_containsRecordsWithContainerIdentifier_databaseScope_zoneName_ownerName_profile_error___block_invoke;
  v24[3] = &unk_278614580;
  v29 = a1;
  v19 = v14;
  v25 = v19;
  v30 = a4;
  v20 = v15;
  v26 = v20;
  v21 = v16;
  v27 = v21;
  v28 = &v31;
  LODWORD(a8) = [(HDHealthEntity *)HDCachedCKRecordEntity performReadTransactionWithHealthDatabase:v18 error:a8 block:v24];

  if (a8)
  {
    if (v32[5])
    {
      v22 = 1;
    }

    else
    {
      v22 = 2;
    }
  }

  else
  {
    v22 = 0;
  }

  _Block_object_dispose(&v31, 8);
  return v22;
}

uint64_t __112__HDCachedCKRecordEntity_containsRecordsWithContainerIdentifier_databaseScope_zoneName_ownerName_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [(HDCachedCKRecordEntity *)*(a1 + 64) _recordZoneEntityWithContainerIdentifier:*(a1 + 72) databaseScope:*(a1 + 40) zoneName:*(a1 + 48) ownerName:v5 transaction:a3 error:?];
  if (v6)
  {
    v7 = *(a1 + 64);
    v8 = [v5 databaseForEntityClass:v7];
    v9 = HDPredicateForZoneID([v6 persistentID]);
    v18 = 0;
    v10 = [v7 anyInDatabase:v8 predicate:v9 error:&v18];
    v11 = v18;
    v12 = *(*(a1 + 56) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v10;

    if (*(*(*(a1 + 56) + 8) + 40))
    {
      v14 = 1;
    }

    else
    {
      v14 = v11 == 0;
    }

    v15 = v14;
    if (!v14)
    {
      if (a3)
      {
        v16 = v11;
        *a3 = v11;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

+ (int64_t)containsRecordWithContainerIdentifier:(id)a3 databaseScope:(int64_t)a4 zoneName:(id)a5 ownerName:(id)a6 recordName:(id)a7 profile:(id)a8 error:(id *)a9
{
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__140;
  v39 = __Block_byref_object_dispose__140;
  v40 = 0;
  v26 = a8;
  v19 = [v26 database];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __122__HDCachedCKRecordEntity_containsRecordWithContainerIdentifier_databaseScope_zoneName_ownerName_recordName_profile_error___block_invoke;
  v27[3] = &unk_278626620;
  v33 = a1;
  v20 = v15;
  v28 = v20;
  v34 = a4;
  v21 = v16;
  v29 = v21;
  v22 = v17;
  v30 = v22;
  v32 = &v35;
  v23 = v18;
  v31 = v23;
  LODWORD(v16) = [(HDHealthEntity *)HDCachedCKRecordEntity performReadTransactionWithHealthDatabase:v19 error:a9 block:v27];

  if (v16)
  {
    if (v36[5])
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

  _Block_object_dispose(&v35, 8);
  return v24;
}

uint64_t __122__HDCachedCKRecordEntity_containsRecordWithContainerIdentifier_databaseScope_zoneName_ownerName_recordName_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [(HDCachedCKRecordEntity *)*(a1 + 72) _recordZoneEntityWithContainerIdentifier:*(a1 + 80) databaseScope:*(a1 + 40) zoneName:*(a1 + 48) ownerName:v5 transaction:a3 error:?];
  if (v6)
  {
    v7 = *(a1 + 72);
    v8 = [v5 databaseForEntityClass:v7];
    v9 = HDPredicateForZoneIDAndRecordName([v6 persistentID], *(a1 + 56));
    v18 = 0;
    v10 = [v7 anyInDatabase:v8 predicate:v9 error:&v18];
    v11 = v18;
    v12 = *(*(a1 + 64) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v10;

    if (*(*(*(a1 + 64) + 8) + 40))
    {
      v14 = 1;
    }

    else
    {
      v14 = v11 == 0;
    }

    v15 = v14;
    if (!v14)
    {
      if (a3)
      {
        v16 = v11;
        *a3 = v11;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

+ (id)recordDataWithContainerIdentifier:(id)a3 databaseScope:(int64_t)a4 zoneName:(id)a5 ownerName:(id)a6 recordName:(id)a7 profile:(id)a8 error:(id *)a9
{
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__140;
  v41 = __Block_byref_object_dispose__140;
  v42 = 0;
  v20 = [v19 database];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __118__HDCachedCKRecordEntity_recordDataWithContainerIdentifier_databaseScope_zoneName_ownerName_recordName_profile_error___block_invoke;
  v29[3] = &unk_278626620;
  v35 = a1;
  v21 = v15;
  v30 = v21;
  v36 = a4;
  v22 = v16;
  v31 = v22;
  v23 = v17;
  v32 = v23;
  v34 = &v37;
  v24 = v18;
  v33 = v24;
  v25 = [(HDHealthEntity *)HDCachedCKRecordEntity performReadTransactionWithHealthDatabase:v20 error:a9 block:v29];

  if (v25)
  {
    v26 = v38[5];
  }

  else
  {
    v26 = 0;
  }

  v27 = v26;

  _Block_object_dispose(&v37, 8);

  return v27;
}

uint64_t __118__HDCachedCKRecordEntity_recordDataWithContainerIdentifier_databaseScope_zoneName_ownerName_recordName_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [(HDCachedCKRecordEntity *)*(a1 + 72) _recordZoneEntityWithContainerIdentifier:*(a1 + 80) databaseScope:*(a1 + 40) zoneName:*(a1 + 48) ownerName:v5 transaction:a3 error:?];
  if (v6)
  {
    v7 = *(a1 + 72);
    v8 = [v5 databaseForEntityClass:v7];
    v9 = HDPredicateForZoneIDAndRecordName([v6 persistentID], *(a1 + 56));
    v18 = 0;
    v10 = [v7 propertyValueForAnyInDatabase:v8 property:@"record_data" predicate:v9 error:&v18];
    v11 = v18;
    v12 = *(*(a1 + 64) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v10;

    if (*(*(*(a1 + 64) + 8) + 40))
    {
      v14 = 1;
    }

    else
    {
      v14 = v11 == 0;
    }

    v15 = v14;
    if (!v14)
    {
      if (a3)
      {
        v16 = v11;
        *a3 = v11;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

+ (BOOL)deleteRecordWithContainerIdentifier:(id)a3 databaseScope:(int64_t)a4 zoneName:(id)a5 ownerName:(id)a6 recordName:(id)a7 profile:(id)a8 error:(id *)a9
{
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = [a8 database];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __120__HDCachedCKRecordEntity_deleteRecordWithContainerIdentifier_databaseScope_zoneName_ownerName_recordName_profile_error___block_invoke;
  v26[3] = &unk_278626648;
  v31 = a1;
  v32 = a4;
  v27 = v15;
  v28 = v16;
  v29 = v17;
  v30 = v18;
  v20 = v18;
  v21 = v17;
  v22 = v16;
  v23 = v15;
  v24 = [(HDHealthEntity *)HDCachedCKRecordZoneEntity performWriteTransactionWithHealthDatabase:v19 error:a9 block:v26];

  return v24;
}

uint64_t __120__HDCachedCKRecordEntity_deleteRecordWithContainerIdentifier_databaseScope_zoneName_ownerName_recordName_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [(HDCachedCKRecordEntity *)*(a1 + 64) _recordZoneEntityWithContainerIdentifier:*(a1 + 72) databaseScope:*(a1 + 40) zoneName:*(a1 + 48) ownerName:v5 transaction:a3 error:?];
  v7 = v6;
  if (v6)
  {
    v8 = HDPredicateForZoneIDAndRecordName([v6 persistentID], *(a1 + 56));
    v9 = [v5 databaseForEntityClass:*(a1 + 64)];
    v19 = 0;
    v10 = [(HDSQLiteEntity *)HDCachedCKRecordEntity anyInDatabase:v9 predicate:v8 error:&v19];
    v11 = v19;

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
      v13 = *(a1 + 64);
      v14 = [v5 databaseForEntityClass:v13];
      v18.receiver = v13;
      v18.super_class = &OBJC_METACLASS___HDCachedCKRecordEntity;
      v15 = objc_msgSendSuper2(&v18, sel_deleteEntitiesInDatabase_predicate_error_, v14, v8, a3);
    }

    else if (a3)
    {
      v16 = v11;
      v15 = 0;
      *a3 = v11;
    }

    else
    {
      _HKLogDroppedError();
      v15 = 0;
    }
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

@end