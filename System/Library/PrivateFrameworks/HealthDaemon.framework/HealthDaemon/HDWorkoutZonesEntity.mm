@interface HDWorkoutZonesEntity
+ (BOOL)_insertZone:(uint64_t)zone ownerID:(void *)d transaction:(uint64_t)transaction error:;
+ (BOOL)enumerateZonesWithOwnerID:(unint64_t)d database:(id)database error:(id *)error handler:(id)handler;
+ (BOOL)enumerateZonesWithOwnerID:(unint64_t)d transaction:(id)transaction error:(id *)error handler:(id)handler;
+ (BOOL)insertZones:(id)zones ownerID:(unint64_t)d transaction:(id)transaction error:(id *)error;
+ (BOOL)insertZones:(id)zones workoutUUID:(id)d transaction:(id)transaction error:(id *)error;
+ (id)_allProperties;
+ (id)foreignKeys;
+ (id)indices;
+ (id)zoneEntityWithZoneUUID:(id)d transaction:(id)transaction error:(id *)error;
- (BOOL)setTimeInZone:(double)zone transaction:(id)transaction error:(id *)error;
@end

@implementation HDWorkoutZonesEntity

+ (id)foreignKeys
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"owner_id";
  v2 = [objc_msgSend(self "ownerEntityClass")];
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
  databaseTable = [self databaseTable];
  v6 = [v4 stringWithFormat:@"%@_owners", databaseTable];
  v12 = @"owner_id";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
  v8 = [v3 initWithEntity:self name:v6 columns:v7];
  v13[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (BOOL)insertZones:(id)zones workoutUUID:(id)d transaction:(id)transaction error:(id *)error
{
  v37 = *MEMORY[0x277D85DE8];
  zonesCopy = zones;
  dCopy = d;
  transactionCopy = transaction;
  v13 = [transactionCopy databaseForEntityClass:self];
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
    v17 = zonesCopy;
    v18 = [v17 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v18)
    {
      v19 = v18;
      v29 = dCopy;
      v30 = zonesCopy;
      v20 = *v32;
      while (2)
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v32 != v20)
          {
            objc_enumerationMutation(v17);
          }

          if (!+[HDWorkoutZonesEntity _insertZone:ownerID:transaction:error:](self, *(*(&v31 + 1) + 8 * i), [v15 persistentID], transactionCopy, error))
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
      dCopy = v29;
      zonesCopy = v30;
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
      uUIDString = [dCopy UUIDString];
      v25 = [v23 hk_error:118 format:{@"Workout with UUID %@ does not exist when attempting to insert zones", uUIDString}];

      v17 = v25;
      if (!v17)
      {
        v16 = 0;
        v22 = 1;
        goto LABEL_22;
      }
    }

    if (error)
    {
      v26 = v17;
      v22 = 0;
      *error = v17;
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

+ (BOOL)_insertZone:(uint64_t)zone ownerID:(void *)d transaction:(uint64_t)transaction error:
{
  v8 = a2;
  dCopy = d;
  v10 = objc_opt_self();
  v11 = [dCopy databaseForEntityClass:v10];

  v12 = +[HDWorkoutZonesEntity _allProperties];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __62__HDWorkoutZonesEntity__insertZone_ownerID_transaction_error___block_invoke;
  v16[3] = &unk_278616B10;
  v17 = v8;
  zoneCopy = zone;
  v13 = v8;
  v14 = [v10 insertOrReplaceEntity:0 database:v11 properties:v12 error:transaction bindingHandler:v16];

  return v14 != 0;
}

+ (BOOL)insertZones:(id)zones ownerID:(unint64_t)d transaction:(id)transaction error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  zonesCopy = zones;
  transactionCopy = transaction;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = zonesCopy;
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

        if (![(HDWorkoutZonesEntity *)self _insertZone:d ownerID:transactionCopy transaction:error error:?])
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

+ (id)zoneEntityWithZoneUUID:(id)d transaction:(id)transaction error:(id *)error
{
  dCopy = d;
  v9 = [transaction databaseForEntityClass:self];
  v10 = [MEMORY[0x277D10B18] predicateWithProperty:@"uuid" equalToValue:dCopy];

  v11 = [self anyInDatabase:v9 predicate:v10 error:error];

  return v11;
}

- (BOOL)setTimeInZone:(double)zone transaction:(id)transaction error:(id *)error
{
  v14[1] = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  v9 = [transactionCopy databaseForEntityClass:objc_opt_class()];

  v14[0] = @"time_in_zone";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__HDWorkoutZonesEntity_setTimeInZone_transaction_error___block_invoke;
  v13[3] = &__block_descriptor_40_e34_v16__0__HDSQLiteStatementBinder__8l;
  *&v13[4] = zone;
  LOBYTE(error) = [(HDSQLiteEntity *)self updateProperties:v10 database:v9 error:error bindingHandler:v13];

  v11 = *MEMORY[0x277D85DE8];
  return error;
}

+ (BOOL)enumerateZonesWithOwnerID:(unint64_t)d database:(id)database error:(id *)error handler:(id)handler
{
  handlerCopy = handler;
  v11 = MEMORY[0x277D10B18];
  v12 = MEMORY[0x277CCABB0];
  databaseCopy = database;
  v14 = [v12 numberWithUnsignedLongLong:d];
  v15 = [v11 predicateWithProperty:@"owner_id" equalToValue:v14];

  v16 = [self queryWithDatabase:databaseCopy predicate:v15];

  v17 = +[HDWorkoutZonesEntity _allProperties];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __73__HDWorkoutZonesEntity_enumerateZonesWithOwnerID_database_error_handler___block_invoke;
  v20[3] = &unk_2786145A8;
  v21 = handlerCopy;
  v18 = handlerCopy;
  LOBYTE(error) = [v16 enumerateProperties:v17 error:error enumerationHandler:v20];

  return error;
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

+ (BOOL)enumerateZonesWithOwnerID:(unint64_t)d transaction:(id)transaction error:(id *)error handler:(id)handler
{
  handlerCopy = handler;
  v11 = [transaction databaseForEntityClass:self];
  LOBYTE(error) = [self enumerateZonesWithOwnerID:d database:v11 error:error handler:handlerCopy];

  return error;
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