@interface HDStatisticsCalculatorEntity
+ (BOOL)enumerateStatisticsForOwner:(id)a3 transaction:(id)a4 error:(id *)a5 block:(id)a6;
+ (BOOL)setCalculator:(id)a3 forOwner:(id)a4 anchor:(id)a5 transaction:(id)a6 error:(id *)a7;
+ (BOOL)setStatistics:(id)a3 forOwner:(id)a4 anchor:(id)a5 transaction:(id)a6 error:(id *)a7;
+ (Class)ownerEntityClass;
+ (id)calculatorForOwner:(id)a3 type:(id)a4 anchor:(id *)a5 transaction:(id)a6 error:(id *)a7;
+ (id)databaseTable;
+ (id)foreignKeys;
+ (id)ownerEntityReferenceColumn;
+ (id)statisticsForOwner:(id)a3 type:(id)a4 anchor:(id *)a5 transaction:(id)a6 error:(id *)a7;
+ (id)uniquedColumns;
+ (int64_t)protectionClass;
@end

@implementation HDStatisticsCalculatorEntity

+ (id)statisticsForOwner:(id)a3 type:(id)a4 anchor:(id *)a5 transaction:(id)a6 error:(id *)a7
{
  v37[2] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__120;
  v35 = __Block_byref_object_dispose__120;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__120;
  v29 = __Block_byref_object_dispose__120;
  v30 = 0;
  v37[0] = @"anchor";
  v37[1] = @"statistics";
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
  v16 = _HDPredicateForOwnerAndType(v12, v13);
  v17 = [v14 databaseForEntityClass:a1];
  v18 = [a1 queryWithDatabase:v17 predicate:v16];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __81__HDStatisticsCalculatorEntity_statisticsForOwner_type_anchor_transaction_error___block_invoke;
  v24[3] = &unk_278624148;
  v24[4] = &v25;
  v24[5] = &v31;
  v19 = [v18 enumerateProperties:v15 error:a7 enumerationHandler:v24];
  if (a5)
  {
    *a5 = v26[5];
  }

  if (v19)
  {
    v20 = v32[5];
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

uint64_t __81__HDStatisticsCalculatorEntity_statisticsForOwner_type_anchor_transaction_error___block_invoke(uint64_t a1)
{
  v2 = HDSQLiteColumnWithNameAsNumber();
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  objc_opt_class();
  v5 = HDSQLiteColumnWithNameAsObject();
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return 1;
}

+ (id)calculatorForOwner:(id)a3 type:(id)a4 anchor:(id *)a5 transaction:(id)a6 error:(id *)a7
{
  v37[2] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__120;
  v35 = __Block_byref_object_dispose__120;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__120;
  v29 = __Block_byref_object_dispose__120;
  v30 = 0;
  v37[0] = @"anchor";
  v37[1] = @"calculator";
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
  v16 = _HDPredicateForOwnerAndType(v12, v13);
  v17 = [v14 databaseForEntityClass:a1];
  v18 = [a1 queryWithDatabase:v17 predicate:v16];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __81__HDStatisticsCalculatorEntity_calculatorForOwner_type_anchor_transaction_error___block_invoke;
  v24[3] = &unk_278624148;
  v24[4] = &v31;
  v24[5] = &v25;
  v19 = [v18 enumerateProperties:v15 error:a7 enumerationHandler:v24];
  if (a5)
  {
    *a5 = v32[5];
  }

  if (v19)
  {
    v20 = v26[5];
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

BOOL __81__HDStatisticsCalculatorEntity_calculatorForOwner_type_anchor_transaction_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = HDSQLiteColumnWithNameAsNumber();
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = HDSQLiteColumnWithNameAsData();
  v13 = 1;
  if (v9)
  {
    v10 = [HDStatisticsCollectionCalculator calculatorForArchivedRepresentation:v9 error:a4];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      v13 = 0;
    }
  }

  return v13;
}

+ (BOOL)setStatistics:(id)a3 forOwner:(id)a4 anchor:(id)a5 transaction:(id)a6 error:(id *)a7
{
  v29[4] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v29[0] = @"owner_id";
  v29[1] = @"quantity_type";
  v29[2] = @"anchor";
  v29[3] = @"statistics";
  v15 = MEMORY[0x277CBEA60];
  v16 = a6;
  v17 = [v15 arrayWithObjects:v29 count:4];
  v18 = [v16 databaseForEntityClass:a1];

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __80__HDStatisticsCalculatorEntity_setStatistics_forOwner_anchor_transaction_error___block_invoke;
  v25[3] = &unk_278624170;
  v26 = v12;
  v27 = v13;
  v28 = v14;
  v19 = v14;
  v20 = v13;
  v21 = v12;
  v22 = [a1 insertOrReplaceEntity:1 database:v18 properties:v17 error:a7 bindingHandler:v25];

  v23 = *MEMORY[0x277D85DE8];
  return v22 != 0;
}

void __80__HDStatisticsCalculatorEntity_setStatistics_forOwner_anchor_transaction_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = [*(a1 + 32) quantityType];
  MEMORY[0x22AAC6B90](a2, @"owner_id", [*(a1 + 40) persistentID]);
  MEMORY[0x22AAC6B90](a2, @"quantity_type", [v5 code]);
  MEMORY[0x22AAC6BB0](a2, @"anchor", *(a1 + 48));
  v4 = *(a1 + 32);
  HDSQLiteBindSecureCodingObjectToProperty();
}

+ (BOOL)setCalculator:(id)a3 forOwner:(id)a4 anchor:(id)a5 transaction:(id)a6 error:(id *)a7
{
  v28[4] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [v12 archivedRepresentationWithError:a7];
  if (v16)
  {
    v28[0] = @"owner_id";
    v28[1] = @"quantity_type";
    v28[2] = @"anchor";
    v28[3] = @"calculator";
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];
    v18 = [v15 databaseForEntityClass:a1];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __80__HDStatisticsCalculatorEntity_setCalculator_forOwner_anchor_transaction_error___block_invoke;
    v23[3] = &unk_278624198;
    v24 = v12;
    v25 = v13;
    v26 = v14;
    v27 = v16;
    v19 = [a1 insertOrReplaceEntity:1 database:v18 properties:v17 error:a7 bindingHandler:v23];

    v20 = v19 != 0;
  }

  else
  {
    v20 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

void __80__HDStatisticsCalculatorEntity_setCalculator_forOwner_anchor_transaction_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) quantityType];
  MEMORY[0x22AAC6B90](a2, @"owner_id", [*(a1 + 40) persistentID]);
  MEMORY[0x22AAC6B90](a2, @"quantity_type", [v4 code]);
  MEMORY[0x22AAC6BB0](a2, @"anchor", *(a1 + 48));
  MEMORY[0x22AAC6B40](a2, @"calculator", *(a1 + 56));
}

+ (BOOL)enumerateStatisticsForOwner:(id)a3 transaction:(id)a4 error:(id *)a5 block:(id)a6
{
  v27[4] = *MEMORY[0x277D85DE8];
  v10 = a6;
  v27[0] = @"quantity_type";
  v27[1] = @"anchor";
  v27[2] = @"statistics";
  v27[3] = @"calculator";
  v11 = MEMORY[0x277CBEA60];
  v12 = a4;
  v13 = a3;
  v14 = [v11 arrayWithObjects:v27 count:4];
  v15 = MEMORY[0x277D10B18];
  v16 = MEMORY[0x277CCABB0];
  v17 = [v13 persistentID];

  v18 = [v16 numberWithLongLong:v17];
  v19 = [v15 predicateWithProperty:@"owner_id" equalToValue:v18];

  v20 = [v12 databaseForEntityClass:a1];

  v21 = [a1 queryWithDatabase:v20 predicate:v19];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __84__HDStatisticsCalculatorEntity_enumerateStatisticsForOwner_transaction_error_block___block_invoke;
  v25[3] = &unk_2786145A8;
  v26 = v10;
  v22 = v10;
  LOBYTE(a5) = [v21 enumerateProperties:v14 error:a5 enumerationHandler:v25];

  v23 = *MEMORY[0x277D85DE8];
  return a5;
}

uint64_t __84__HDStatisticsCalculatorEntity_enumerateStatisticsForOwner_transaction_error_block___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = HDSQLiteColumnWithNameAsInt64();
  v7 = [MEMORY[0x277CCD830] _quantityTypeWithCode:v6];
  if (v7)
  {
    v8 = HDSQLiteColumnWithNameAsNumber();
    objc_opt_class();
    v9 = HDSQLiteColumnWithNameAsObject();
    v10 = HDSQLiteColumnWithNameAsData();
    if (v10)
    {
      v11 = [HDStatisticsCollectionCalculator calculatorForArchivedRepresentation:v10 error:a4];
      if (!v11)
      {
        v12 = 0;
LABEL_8:

        goto LABEL_9;
      }
    }

    else
    {
      v11 = 0;
    }

    (*(*(a1 + 32) + 16))();

    v12 = 1;
    goto LABEL_8;
  }

  [MEMORY[0x277CCA9B8] hk_assignError:a4 code:100 format:{@"Unable to deserialize statistics with improper quantity type code %lld", v6}];
  v12 = 0;
LABEL_9:

  return v12;
}

+ (id)databaseTable
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

+ (Class)ownerEntityClass
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

+ (id)ownerEntityReferenceColumn
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

+ (int64_t)protectionClass
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 2;
}

+ (id)foreignKeys
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10 = @"owner_id";
  v3 = objc_alloc(MEMORY[0x277D10B38]);
  v4 = [a1 ownerEntityClass];
  v5 = [a1 ownerEntityReferenceColumn];
  v6 = [v3 initWithEntityClass:v4 property:v5 deletionAction:2];
  v11[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)uniquedColumns
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"owner_id";
  v5[1] = @"quantity_type";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end