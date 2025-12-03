@interface HDCachedCKRecordEntity
+ (BOOL)deleteRecordWithContainerIdentifier:(id)identifier databaseScope:(int64_t)scope zoneName:(id)name ownerName:(id)ownerName recordName:(id)recordName profile:(id)profile error:(id *)error;
+ (BOOL)enumerateRecordIDAndDataWithContainerIdentifier:(id)identifier databaseScope:(int64_t)scope zoneName:(id)name ownerName:(id)ownerName recordType:(id)type recordName:(id)recordName epoch:(int64_t)epoch profile:(id)self0 error:(id *)self1 enumerationHandler:(id)self2;
+ (BOOL)enumerateRecordIDsWithContainerIdentifier:(id)identifier databaseScope:(int64_t)scope zoneName:(id)name ownerName:(id)ownerName profile:(id)profile error:(id *)error enumerationHandler:(id)handler;
+ (BOOL)insertOrUpdateWithContainerIdentifier:(id)identifier databaseScope:(int64_t)scope zoneName:(id)name ownerName:(id)ownerName recordData:(id)data recordType:(id)type recordName:(id)recordName profile:(id)self0 error:(id *)self1;
+ (BOOL)updateWithRecordData:(id)data epoch:(int64_t)epoch zoneID:(int64_t)d recordName:(id)name transaction:(id)transaction error:(id *)error;
+ (id)_dbEntityWithContainerIdentifier:(uint64_t)identifier databaseScope:(void *)scope transaction:(uint64_t)transaction error:(void *)error;
+ (id)_recordZoneEntityWithContainerIdentifier:(uint64_t)identifier databaseScope:(void *)scope zoneName:(void *)name ownerName:(void *)ownerName transaction:(uint64_t)transaction error:;
+ (id)_recordZoneEntityWithDbEntity:(void *)entity zoneName:(void *)name ownerName:(void *)ownerName transaction:(uint64_t)transaction error:;
+ (id)foreignKeys;
+ (id)insertWithZoneID:(int64_t)d recordType:(id)type epoch:(int64_t)epoch recordName:(id)name recordData:(id)data transaction:(id)transaction error:(id *)error;
+ (id)recordDataWithContainerIdentifier:(id)identifier databaseScope:(int64_t)scope zoneName:(id)name ownerName:(id)ownerName recordName:(id)recordName profile:(id)profile error:(id *)error;
+ (id)uniquedColumns;
+ (int64_t)containsRecordWithContainerIdentifier:(id)identifier databaseScope:(int64_t)scope zoneName:(id)name ownerName:(id)ownerName recordName:(id)recordName profile:(id)profile error:(id *)error;
+ (int64_t)containsRecordsWithContainerIdentifier:(id)identifier databaseScope:(int64_t)scope zoneName:(id)name ownerName:(id)ownerName profile:(id)profile error:(id *)error;
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

+ (id)insertWithZoneID:(int64_t)d recordType:(id)type epoch:(int64_t)epoch recordName:(id)name recordData:(id)data transaction:(id)transaction error:(id *)error
{
  typeCopy = type;
  nameCopy = name;
  dataCopy = data;
  v18 = [transaction databaseForEntityClass:self];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __100__HDCachedCKRecordEntity_insertWithZoneID_recordType_epoch_recordName_recordData_transaction_error___block_invoke;
  v35[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v35[4] = self;
  v26 = MEMORY[0x277D85DD0];
  v27 = 3221225472;
  v28 = __100__HDCachedCKRecordEntity_insertWithZoneID_recordType_epoch_recordName_recordData_transaction_error___block_invoke_2;
  v29 = &unk_278626580;
  dCopy = d;
  v19 = typeCopy;
  v30 = v19;
  epochCopy = epoch;
  v20 = nameCopy;
  v31 = v20;
  v21 = dataCopy;
  v32 = v21;
  v22 = 0;
  if ([v18 executeCachedStatementForKey:&insertWithZoneID_recordType_epoch_recordName_recordData_transaction_error__lookupKey error:error SQLGenerator:v35 bindingHandler:&v26 enumerationHandler:0])
  {
    v23 = [HDCachedCKRecordEntity alloc];
    lastInsertRowID = [v18 lastInsertRowID];
    v22 = -[HDSQLiteEntity initWithPersistentID:](v23, "initWithPersistentID:", [lastInsertRowID longLongValue]);
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

+ (BOOL)updateWithRecordData:(id)data epoch:(int64_t)epoch zoneID:(int64_t)d recordName:(id)name transaction:(id)transaction error:(id *)error
{
  v25[2] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  nameCopy = name;
  v16 = [transaction databaseForEntityClass:self];
  v17 = HDPredicateForZoneIDAndRecordName(d, nameCopy);

  v25[0] = @"epoch";
  v25[1] = @"record_data";
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __89__HDCachedCKRecordEntity_updateWithRecordData_epoch_zoneID_recordName_transaction_error___block_invoke;
  v22[3] = &unk_278616B10;
  v23 = dataCopy;
  epochCopy = epoch;
  v19 = dataCopy;
  LOBYTE(error) = [self updateProperties:v18 predicate:v17 database:v16 error:error bindingHandler:v22];

  v20 = *MEMORY[0x277D85DE8];
  return error;
}

void __89__HDCachedCKRecordEntity_updateWithRecordData_epoch_zoneID_recordName_transaction_error___block_invoke(uint64_t a1, uint64_t a2)
{
  MEMORY[0x22AAC6B90](a2, @"epoch", *(a1 + 40));
  v3 = *(a1 + 32);

  JUMPOUT(0x22AAC6B40);
}

+ (BOOL)insertOrUpdateWithContainerIdentifier:(id)identifier databaseScope:(int64_t)scope zoneName:(id)name ownerName:(id)ownerName recordData:(id)data recordType:(id)type recordName:(id)recordName profile:(id)self0 error:(id *)self1
{
  identifierCopy = identifier;
  nameCopy = name;
  ownerNameCopy = ownerName;
  dataCopy = data;
  typeCopy = type;
  recordNameCopy = recordName;
  database = [profile database];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __144__HDCachedCKRecordEntity_insertOrUpdateWithContainerIdentifier_databaseScope_zoneName_ownerName_recordData_recordType_recordName_profile_error___block_invoke;
  v31[3] = &unk_278614530;
  selfCopy = self;
  scopeCopy = scope;
  v32 = identifierCopy;
  v33 = nameCopy;
  v34 = ownerNameCopy;
  v35 = recordNameCopy;
  v36 = typeCopy;
  v37 = dataCopy;
  v23 = dataCopy;
  v24 = typeCopy;
  v25 = recordNameCopy;
  v26 = ownerNameCopy;
  v27 = nameCopy;
  v28 = identifierCopy;
  LOBYTE(typeCopy) = [(HDHealthEntity *)HDCachedCKRecordZoneEntity performWriteTransactionWithHealthDatabase:database error:error block:v31];

  return typeCopy;
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

+ (id)_dbEntityWithContainerIdentifier:(uint64_t)identifier databaseScope:(void *)scope transaction:(uint64_t)transaction error:(void *)error
{
  errorCopy = error;
  scopeCopy = scope;
  v8 = objc_opt_self();
  v9 = HDPredicateForContainerIdentifierAndDatabaseScope(scopeCopy, transaction);

  v10 = [errorCopy databaseForEntityClass:v8];

  v13 = 0;
  v11 = [(HDSQLiteEntity *)HDCachedCKDatabaseEntity anyInDatabase:v10 predicate:v9 error:&v13];

  return v11;
}

+ (id)_recordZoneEntityWithDbEntity:(void *)entity zoneName:(void *)name ownerName:(void *)ownerName transaction:(uint64_t)transaction error:
{
  ownerNameCopy = ownerName;
  nameCopy = name;
  entityCopy = entity;
  v13 = a2;
  v14 = objc_opt_self();
  persistentID = [v13 persistentID];

  v16 = HDPredicateForDatabaseIDAndRecordZone(persistentID, entityCopy, nameCopy);

  v17 = [ownerNameCopy databaseForEntityClass:v14];

  v18 = [(HDSQLiteEntity *)HDCachedCKRecordZoneEntity anyInDatabase:v17 predicate:v16 error:transaction];

  return v18;
}

+ (BOOL)enumerateRecordIDsWithContainerIdentifier:(id)identifier databaseScope:(int64_t)scope zoneName:(id)name ownerName:(id)ownerName profile:(id)profile error:(id *)error enumerationHandler:(id)handler
{
  identifierCopy = identifier;
  nameCopy = name;
  ownerNameCopy = ownerName;
  handlerCopy = handler;
  v18 = MEMORY[0x277CBC5F8];
  profileCopy = profile;
  v20 = [[v18 alloc] initWithZoneName:nameCopy ownerName:ownerNameCopy];
  database = [profileCopy database];

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __134__HDCachedCKRecordEntity_enumerateRecordIDsWithContainerIdentifier_databaseScope_zoneName_ownerName_profile_error_enumerationHandler___block_invoke;
  v29[3] = &unk_2786265A8;
  selfCopy = self;
  scopeCopy = scope;
  v30 = identifierCopy;
  v31 = nameCopy;
  v33 = v20;
  v34 = handlerCopy;
  v32 = ownerNameCopy;
  v22 = v20;
  v23 = handlerCopy;
  v24 = ownerNameCopy;
  v25 = nameCopy;
  v26 = identifierCopy;
  LOBYTE(v20) = [(HDHealthEntity *)HDCachedCKRecordEntity performReadTransactionWithHealthDatabase:database error:error block:v29];

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

+ (id)_recordZoneEntityWithContainerIdentifier:(uint64_t)identifier databaseScope:(void *)scope zoneName:(void *)name ownerName:(void *)ownerName transaction:(uint64_t)transaction error:
{
  scopeCopy = scope;
  nameCopy = name;
  ownerNameCopy = ownerName;
  v15 = a2;
  v16 = objc_opt_self();
  v17 = [HDCachedCKRecordEntity _dbEntityWithContainerIdentifier:v16 databaseScope:v15 transaction:identifier error:ownerNameCopy];

  if (v17)
  {
    v18 = [(HDCachedCKRecordEntity *)v16 _recordZoneEntityWithDbEntity:v17 zoneName:scopeCopy ownerName:nameCopy transaction:ownerNameCopy error:transaction];
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

+ (BOOL)enumerateRecordIDAndDataWithContainerIdentifier:(id)identifier databaseScope:(int64_t)scope zoneName:(id)name ownerName:(id)ownerName recordType:(id)type recordName:(id)recordName epoch:(int64_t)epoch profile:(id)self0 error:(id *)self1 enumerationHandler:(id)self2
{
  identifierCopy = identifier;
  nameCopy = name;
  ownerNameCopy = ownerName;
  typeCopy = type;
  recordNameCopy = recordName;
  handlerCopy = handler;
  v22 = MEMORY[0x277CBC5F8];
  profileCopy = profile;
  v24 = [[v22 alloc] initWithZoneName:nameCopy ownerName:ownerNameCopy];
  database = [profileCopy database];

  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __168__HDCachedCKRecordEntity_enumerateRecordIDAndDataWithContainerIdentifier_databaseScope_zoneName_ownerName_recordType_recordName_epoch_profile_error_enumerationHandler___block_invoke;
  v36[3] = &unk_2786265F8;
  v37 = identifierCopy;
  v38 = nameCopy;
  scopeCopy = scope;
  epochCopy = epoch;
  v39 = ownerNameCopy;
  v40 = typeCopy;
  v43 = handlerCopy;
  selfCopy = self;
  v41 = recordNameCopy;
  v42 = v24;
  v26 = v24;
  v27 = handlerCopy;
  v28 = recordNameCopy;
  v29 = typeCopy;
  v30 = ownerNameCopy;
  v31 = nameCopy;
  v32 = identifierCopy;
  LOBYTE(handlerCopy) = [(HDHealthEntity *)HDCachedCKRecordEntity performReadTransactionWithHealthDatabase:database error:error block:v36];

  return handlerCopy;
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

+ (int64_t)containsRecordsWithContainerIdentifier:(id)identifier databaseScope:(int64_t)scope zoneName:(id)name ownerName:(id)ownerName profile:(id)profile error:(id *)error
{
  identifierCopy = identifier;
  nameCopy = name;
  ownerNameCopy = ownerName;
  profileCopy = profile;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__140;
  v35 = __Block_byref_object_dispose__140;
  v36 = 0;
  database = [profileCopy database];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __112__HDCachedCKRecordEntity_containsRecordsWithContainerIdentifier_databaseScope_zoneName_ownerName_profile_error___block_invoke;
  v24[3] = &unk_278614580;
  selfCopy = self;
  v19 = identifierCopy;
  v25 = v19;
  scopeCopy = scope;
  v20 = nameCopy;
  v26 = v20;
  v21 = ownerNameCopy;
  v27 = v21;
  v28 = &v31;
  LODWORD(error) = [(HDHealthEntity *)HDCachedCKRecordEntity performReadTransactionWithHealthDatabase:database error:error block:v24];

  if (error)
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

+ (int64_t)containsRecordWithContainerIdentifier:(id)identifier databaseScope:(int64_t)scope zoneName:(id)name ownerName:(id)ownerName recordName:(id)recordName profile:(id)profile error:(id *)error
{
  identifierCopy = identifier;
  nameCopy = name;
  ownerNameCopy = ownerName;
  recordNameCopy = recordName;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__140;
  v39 = __Block_byref_object_dispose__140;
  v40 = 0;
  profileCopy = profile;
  database = [profileCopy database];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __122__HDCachedCKRecordEntity_containsRecordWithContainerIdentifier_databaseScope_zoneName_ownerName_recordName_profile_error___block_invoke;
  v27[3] = &unk_278626620;
  selfCopy = self;
  v20 = identifierCopy;
  v28 = v20;
  scopeCopy = scope;
  v21 = nameCopy;
  v29 = v21;
  v22 = ownerNameCopy;
  v30 = v22;
  v32 = &v35;
  v23 = recordNameCopy;
  v31 = v23;
  LODWORD(nameCopy) = [(HDHealthEntity *)HDCachedCKRecordEntity performReadTransactionWithHealthDatabase:database error:error block:v27];

  if (nameCopy)
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

+ (id)recordDataWithContainerIdentifier:(id)identifier databaseScope:(int64_t)scope zoneName:(id)name ownerName:(id)ownerName recordName:(id)recordName profile:(id)profile error:(id *)error
{
  identifierCopy = identifier;
  nameCopy = name;
  ownerNameCopy = ownerName;
  recordNameCopy = recordName;
  profileCopy = profile;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__140;
  v41 = __Block_byref_object_dispose__140;
  v42 = 0;
  database = [profileCopy database];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __118__HDCachedCKRecordEntity_recordDataWithContainerIdentifier_databaseScope_zoneName_ownerName_recordName_profile_error___block_invoke;
  v29[3] = &unk_278626620;
  selfCopy = self;
  v21 = identifierCopy;
  v30 = v21;
  scopeCopy = scope;
  v22 = nameCopy;
  v31 = v22;
  v23 = ownerNameCopy;
  v32 = v23;
  v34 = &v37;
  v24 = recordNameCopy;
  v33 = v24;
  v25 = [(HDHealthEntity *)HDCachedCKRecordEntity performReadTransactionWithHealthDatabase:database error:error block:v29];

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

+ (BOOL)deleteRecordWithContainerIdentifier:(id)identifier databaseScope:(int64_t)scope zoneName:(id)name ownerName:(id)ownerName recordName:(id)recordName profile:(id)profile error:(id *)error
{
  identifierCopy = identifier;
  nameCopy = name;
  ownerNameCopy = ownerName;
  recordNameCopy = recordName;
  database = [profile database];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __120__HDCachedCKRecordEntity_deleteRecordWithContainerIdentifier_databaseScope_zoneName_ownerName_recordName_profile_error___block_invoke;
  v26[3] = &unk_278626648;
  selfCopy = self;
  scopeCopy = scope;
  v27 = identifierCopy;
  v28 = nameCopy;
  v29 = ownerNameCopy;
  v30 = recordNameCopy;
  v20 = recordNameCopy;
  v21 = ownerNameCopy;
  v22 = nameCopy;
  v23 = identifierCopy;
  v24 = [(HDHealthEntity *)HDCachedCKRecordZoneEntity performWriteTransactionWithHealthDatabase:database error:error block:v26];

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