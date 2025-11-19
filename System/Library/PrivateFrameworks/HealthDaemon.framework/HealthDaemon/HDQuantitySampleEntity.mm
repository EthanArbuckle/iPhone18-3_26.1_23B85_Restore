@interface HDQuantitySampleEntity
+ (BOOL)addCodableObject:(id)a3 toCollection:(id)a4;
+ (BOOL)validateEntityWithProfile:(id)a3 error:(id *)a4 validationErrorHandler:(id)a5;
+ (id)entityEncoderForProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5 encodingOptions:(id)a6 authorizationFilter:(id)a7;
+ (id)foreignKeys;
+ (id)insertDataObject:(id)a3 withProvenance:(id)a4 inDatabase:(id)a5 persistentID:(id)a6 error:(id *)a7;
+ (id)joinClausesForProperty:(id)a3;
+ (id)orderingTermForSortDescriptor:(id)a3;
+ (int64_t)compareForReplacmentWithObject:(id)a3 existingObject:(id)a4;
@end

@implementation HDQuantitySampleEntity

+ (id)foreignKeys
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"original_unit";
  v2 = objc_alloc(MEMORY[0x277D10B38]);
  v3 = [v2 initWithEntityClass:objc_opt_class() property:*MEMORY[0x277D10A40] deletionAction:0];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)orderingTermForSortDescriptor:(id)a3
{
  v4 = a3;
  v5 = [v4 key];
  v6 = [v4 ascending];
  if ([v5 isEqualToString:*MEMORY[0x277CCC900]])
  {
    v7 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"quantity" entityClass:objc_opt_class() ascending:v6];
  }

  else
  {
    v10.receiver = a1;
    v10.super_class = &OBJC_METACLASS___HDQuantitySampleEntity;
    v7 = objc_msgSendSuper2(&v10, sel_orderingTermForSortDescriptor_, v4);
  }

  v8 = v7;

  return v8;
}

+ (id)insertDataObject:(id)a3 withProvenance:(id)a4 inDatabase:(id)a5 persistentID:(id)a6 error:(id *)a7
{
  v12 = a5;
  v13 = a6;
  v14 = a3;
  v15 = objc_opt_class();
  if (([v15 isEqual:objc_opt_class()] & 1) == 0)
  {
    v28 = [MEMORY[0x277CCA890] currentHandler];
    [v28 handleFailureInMethod:a2 object:a1 file:@"HDQuantitySampleEntity.m" lineNumber:89 description:{@"Subclasses must override %s", "+[HDQuantitySampleEntity insertDataObject:withProvenance:inDatabase:persistentID:error:]"}];
  }

  v16 = [v14 quantity];
  v17 = [v16 _unit];
  v18 = [v14 quantityType];

  v19 = [v18 canonicalUnit];

  v20 = [v17 isEqual:v19];
  if (v20)
  {
    v21 = 0;
LABEL_6:
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __88__HDQuantitySampleEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke;
    v29[3] = &unk_27862FCE0;
    v23 = v13;
    v30 = v23;
    v31 = v16;
    v32 = v19;
    v35 = v20;
    v33 = v17;
    v34 = v21;
    v24 = v21;
    if ([v12 executeSQL:@"INSERT INTO quantity_samples (data_id error:quantity bindingHandler:original_quantity enumerationHandler:{original_unit) VALUES (?, ?, ?, ?)", a7, v29, 0}])
    {
      v25 = v23;
    }

    else
    {
      v25 = 0;
    }

    v26 = v25;

    goto LABEL_10;
  }

  v22 = [v17 unitString];
  v21 = [HDUnitStringEntity storeUnitString:v22 database:v12 error:a7];

  if (v21)
  {
    goto LABEL_6;
  }

  v26 = 0;
LABEL_10:

  return v26;
}

uint64_t __88__HDQuantitySampleEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, [*(a1 + 32) longLongValue]);
  [*(a1 + 40) doubleValueForUnit:*(a1 + 48)];
  sqlite3_bind_double(a2, 2, v4);
  if (*(a1 + 72) == 1)
  {
    sqlite3_bind_null(a2, 3);

    return sqlite3_bind_null(a2, 4);
  }

  else
  {
    [*(a1 + 40) doubleValueForUnit:*(a1 + 56)];
    sqlite3_bind_double(a2, 3, v6);
    v7 = [*(a1 + 64) longLongValue];

    return sqlite3_bind_int64(a2, 4, v7);
  }
}

+ (id)joinClausesForProperty:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"unit_strings.unit_string"])
  {
    v5 = MEMORY[0x277CBEB98];
    v6 = MEMORY[0x277D10B50];
    v7 = +[(HDSQLiteSchemaEntity *)HDQuantitySampleEntity];
    v8 = [v6 leftJoinClauseFromTable:v7 toTargetEntity:objc_opt_class() as:@"unit_strings" localReference:@"original_unit" targetKey:*MEMORY[0x277D10A40]];
    v9 = [v5 setWithObject:v8];
  }

  else
  {
    v11.receiver = a1;
    v11.super_class = &OBJC_METACLASS___HDQuantitySampleEntity;
    v9 = objc_msgSendSuper2(&v11, sel_joinClausesForProperty_, v4);
  }

  return v9;
}

+ (BOOL)addCodableObject:(id)a3 toCollection:(id)a4
{
  if (a3)
  {
    [a4 addQuantitySamples:a3];
  }

  return a3 != 0;
}

+ (id)entityEncoderForProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5 encodingOptions:(id)a6 authorizationFilter:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a4;
  v14 = a3;
  v15 = [(HDEntityEncoder *)[_HDQuantitySampleEntityEncoder alloc] initWithHealthEntityClass:objc_opt_class() profile:v14 transaction:v13 purpose:a5 encodingOptions:v12 authorizationFilter:v11];

  return v15;
}

+ (int64_t)compareForReplacmentWithObject:(id)a3 existingObject:(id)a4
{
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:a1 file:@"HDQuantitySampleEntity.m" lineNumber:167 description:{@"Invalid parameter not satisfying: %@", @"[replacementObject isKindOfClass:[HKQuantitySample class]]"}];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"HDQuantitySampleEntity.m" lineNumber:168 description:{@"Invalid parameter not satisfying: %@", @"[existingObject isKindOfClass:[HKQuantitySample class]]"}];
  }

  v9 = [v7 _compareFreezeStateWithSample:v8];

  return v9;
}

+ (BOOL)validateEntityWithProfile:(id)a3 error:(id *)a4 validationErrorHandler:(id)a5
{
  v8 = MEMORY[0x277CCD720];
  v9 = a5;
  v10 = a3;
  v11 = [v8 _allTypesOfClass:objc_opt_class()];
  LOBYTE(a4) = [a1 validateEntitiesOfTypes:v11 profile:v10 error:a4 validationErrorHandler:v9];

  return a4;
}

@end