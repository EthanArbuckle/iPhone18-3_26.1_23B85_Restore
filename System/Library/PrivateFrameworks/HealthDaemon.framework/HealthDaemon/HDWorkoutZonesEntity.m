@interface HDWorkoutZonesEntity
+ (BOOL)_insertZone:(uint64_t)a3 ownerID:(void *)a4 transaction:(uint64_t)a5 error:;
+ (BOOL)enumerateZonesWithOwnerID:(unint64_t)a3 database:(id)a4 error:(id *)a5 handler:(id)a6;
+ (BOOL)enumerateZonesWithOwnerID:(unint64_t)a3 transaction:(id)a4 error:(id *)a5 handler:(id)a6;
+ (BOOL)insertZones:(id)a3 ownerID:(unint64_t)a4 transaction:(id)a5 error:(id *)a6;
+ (BOOL)insertZones:(id)a3 workoutUUID:(id)a4 transaction:(id)a5 error:(id *)a6;
+ (id)_allProperties;
+ (id)foreignKeys;
+ (id)indices;
+ (id)zoneEntityWithZoneUUID:(id)a3 transaction:(id)a4 error:(id *)a5;
- (BOOL)setTimeInZone:(double)a3 transaction:(id)a4 error:(id *)a5;
@end

@implementation HDWorkoutZonesEntity

+ (id)foreignKeys
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"owner_id";
  v2 = [objc_msgSend(a1 "ownerEntityClass")];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)indices
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D10B40]);
  v4 = MEMORY[0x277CCACA8];
  v5 = [a1 databaseTable];
  v6 = [v4 stringWithFormat:@"%@_owners", v5];
  v12 = @"owner_id";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
  v8 = [v3 initWithEntity:a1 name:v6 columns:v7];
  v13[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (BOOL)insertZones:(id)a3 workoutUUID:(id)a4 transaction:(id)a5 error:(id *)a6
{
  v37 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v12 databaseForEntityClass:a1];
  v14 = HDDataEntityPredicateForDataUUID();
  v35 = 0;
  v15 = [(HDDataEntity *)HDWorkoutEntity anyInDatabase:v13 predicate:v14 error:&v35];
  v16 = v35;

  if (v15)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v17 = v10;
    v18 = [v17 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v18)
    {
      v19 = v18;
      v29 = v11;
      v30 = v10;
      v20 = *v32;
      while (2)
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v32 != v20)
          {
            objc_enumerationMutation(v17);
          }

          if (!+[HDWorkoutZonesEntity _insertZone:ownerID:transaction:error:](a1, *(*(&v31 + 1) + 8 * i), [v15 persistentID], v12, a6))
          {
            v22 = 0;
            goto LABEL_12;
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v31 objects:v36 count:16];
        v22 = 1;
        if (v19)
        {
          continue;
        }

        break;
      }

LABEL_12:
      v11 = v29;
      v10 = v30;
    }

    else
    {
      v22 = 1;
    }
  }

  else
  {
    if (v16)
    {
      v17 = v16;
    }

    else
    {
      v23 = MEMORY[0x277CCA9B8];
      v24 = [v11 UUIDString];
      v25 = [v23 hk_error:118 format:{@"Workout with UUID %@ does not exist when attempting to insert zones", v24}];

      v17 = v25;
      if (!v17)
      {
        v16 = 0;
        v22 = 1;
        goto LABEL_22;
      }
    }

    if (a6)
    {
      v26 = v17;
      v22 = 0;
      *a6 = v17;
    }

    else
    {
      _HKLogDroppedError();
      v22 = 0;
    }

    v16 = v17;
  }

LABEL_22:
  v27 = *MEMORY[0x277D85DE8];
  return v22;
}

+ (BOOL)_insertZone:(uint64_t)a3 ownerID:(void *)a4 transaction:(uint64_t)a5 error:
{
  v8 = a2;
  v9 = a4;
  v10 = objc_opt_self();
  v11 = [v9 databaseForEntityClass:v10];

  v12 = +[HDWorkoutZonesEntity _allProperties];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __62__HDWorkoutZonesEntity__insertZone_ownerID_transaction_error___block_invoke;
  v16[3] = &unk_278616B10;
  v17 = v8;
  v18 = a3;
  v13 = v8;
  v14 = [v10 insertOrReplaceEntity:0 database:v11 properties:v12 error:a5 bindingHandler:v16];

  return v14 != 0;
}

+ (BOOL)insertZones:(id)a3 ownerID:(unint64_t)a4 transaction:(id)a5 error:(id *)a6
{
  v25 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        if (![(HDWorkoutZonesEntity *)a1 _insertZone:a4 ownerID:v11 transaction:a6 error:?])
        {
          v17 = 0;
          goto LABEL_11;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v17 = 1;
LABEL_11:

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

+ (id)zoneEntityWithZoneUUID:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [a4 databaseForEntityClass:a1];
  v10 = [MEMORY[0x277D10B18] predicateWithProperty:@"uuid" equalToValue:v8];

  v11 = [a1 anyInDatabase:v9 predicate:v10 error:a5];

  return v11;
}

- (BOOL)setTimeInZone:(double)a3 transaction:(id)a4 error:(id *)a5
{
  v14[1] = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = [v8 databaseForEntityClass:objc_opt_class()];

  v14[0] = @"time_in_zone";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__HDWorkoutZonesEntity_setTimeInZone_transaction_error___block_invoke;
  v13[3] = &__block_descriptor_40_e34_v16__0__HDSQLiteStatementBinder__8l;
  *&v13[4] = a3;
  LOBYTE(a5) = [(HDSQLiteEntity *)self updateProperties:v10 database:v9 error:a5 bindingHandler:v13];

  v11 = *MEMORY[0x277D85DE8];
  return a5;
}

+ (BOOL)enumerateZonesWithOwnerID:(unint64_t)a3 database:(id)a4 error:(id *)a5 handler:(id)a6
{
  v10 = a6;
  v11 = MEMORY[0x277D10B18];
  v12 = MEMORY[0x277CCABB0];
  v13 = a4;
  v14 = [v12 numberWithUnsignedLongLong:a3];
  v15 = [v11 predicateWithProperty:@"owner_id" equalToValue:v14];

  v16 = [a1 queryWithDatabase:v13 predicate:v15];

  v17 = +[HDWorkoutZonesEntity _allProperties];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __73__HDWorkoutZonesEntity_enumerateZonesWithOwnerID_database_error_handler___block_invoke;
  v20[3] = &unk_2786145A8;
  v21 = v10;
  v18 = v10;
  LOBYTE(a5) = [v16 enumerateProperties:v17 error:a5 enumerationHandler:v20];

  return a5;
}

+ (id)_allProperties
{
  v3[6] = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v3[0] = @"owner_id";
  v3[1] = @"uuid";
  v3[2] = @"start_quantity";
  v3[3] = @"end_quantity";
  v3[4] = @"object_type";
  v3[5] = @"time_in_zone";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:6];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

uint64_t __73__HDWorkoutZonesEntity_enumerateZonesWithOwnerID_database_error_handler___block_invoke(uint64_t a1)
{
  v2 = HDSQLiteColumnWithNameAsUUID();
  v3 = [MEMORY[0x277CCD720] dataTypeWithCode:HDSQLiteColumnWithNameAsInt64()];
  if (HDSQLiteColumnWithNameIsNull())
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x277CCDCE0];
    HDSQLiteColumnWithNameAsDouble();
    v4 = [v5 _quantityFromValue:v3 objectType:?];
  }

  if (HDSQLiteColumnWithNameIsNull())
  {
    v6 = 0;
  }

  else
  {
    v7 = MEMORY[0x277CCDCE0];
    HDSQLiteColumnWithNameAsDouble();
    v6 = [v7 _quantityFromValue:v3 objectType:?];
  }

  HDSQLiteColumnWithNameAsDouble();
  v9 = v8;
  v10 = [objc_alloc(MEMORY[0x277CCDCE0]) _initWithIdentifier:v2 type:v3 startQuantity:v4 endQuantity:v6];
  [v10 _setTimeInZone:v9];
  (*(*(a1 + 32) + 16))();

  return 1;
}

+ (BOOL)enumerateZonesWithOwnerID:(unint64_t)a3 transaction:(id)a4 error:(id *)a5 handler:(id)a6
{
  v10 = a6;
  v11 = [a4 databaseForEntityClass:a1];
  LOBYTE(a5) = [a1 enumerateZonesWithOwnerID:a3 database:v11 error:a5 handler:v10];

  return a5;
}

void __62__HDWorkoutZonesEntity__insertZone_ownerID_transaction_error___block_invoke(uint64_t a1, uint64_t a2)
{
  MEMORY[0x22AAC6B90](a2, @"owner_id", *(a1 + 40));
  v4 = [*(a1 + 32) identifier];
  MEMORY[0x22AAC6C00](a2, @"uuid", v4);

  v11 = [*(a1 + 32) type];
  v5 = MEMORY[0x277CCDCE0];
  v6 = [*(a1 + 32) startQuantity];
  v7 = [v5 _valueForQuantity:v6 objectType:v11];

  if (v7)
  {
    [v7 doubleValue];
    MEMORY[0x22AAC6B60](a2, @"start_quantity");
  }

  else
  {
    MEMORY[0x22AAC6BA0](a2, @"start_quantity");
  }

  v8 = MEMORY[0x277CCDCE0];
  v9 = [*(a1 + 32) endQuantity];
  v10 = [v8 _valueForQuantity:v9 objectType:v11];

  if (v10)
  {
    [v10 doubleValue];
    MEMORY[0x22AAC6B60](a2, @"end_quantity");
  }

  else
  {
    MEMORY[0x22AAC6BA0](a2, @"end_quantity");
  }

  MEMORY[0x22AAC6B90](a2, @"object_type", [v11 code]);
  [*(a1 + 32) timeInZone];
  MEMORY[0x22AAC6B60](a2, @"time_in_zone");
}

@end