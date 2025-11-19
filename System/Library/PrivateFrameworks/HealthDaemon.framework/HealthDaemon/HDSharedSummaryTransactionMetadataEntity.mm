@interface HDSharedSummaryTransactionMetadataEntity
+ (id)foreignKeys;
+ (id)insertWithTransactionID:(int64_t)a3 metadata:(id)a4 databaseTransaction:(id)a5 error:(id *)a6;
+ (id)metadataForTransactionID:(int64_t)a3 databaseTransaction:(id)a4 error:(id *)a5;
+ (id)uniquedColumns;
@end

@implementation HDSharedSummaryTransactionMetadataEntity

+ (id)foreignKeys
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"transaction_id";
  v2 = +[(HDHealthEntity *)HDSharedSummaryTransactionEntity];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)uniquedColumns
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"transaction_id";
  v5[1] = @"key";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)insertWithTransactionID:(int64_t)a3 metadata:(id)a4 databaseTransaction:(id)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a5;
  v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__110;
  v31 = __Block_byref_object_dispose__110;
  v32 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __103__HDSharedSummaryTransactionMetadataEntity_insertWithTransactionID_metadata_databaseTransaction_error___block_invoke;
  v21[3] = &unk_278622DE8;
  v25 = a1;
  v26 = a3;
  v13 = v11;
  v22 = v13;
  v24 = &v27;
  v14 = v12;
  v23 = v14;
  [v10 enumerateKeysAndObjectsUsingBlock:v21];
  v15 = v28[5];
  v16 = v15;
  if (v15)
  {
    if (a6)
    {
      v17 = v15;
      *a6 = v16;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  if (v28[5])
  {
    v18 = 0;
  }

  else
  {
    v18 = v14;
  }

  v19 = v18;

  _Block_object_dispose(&v27, 8);

  return v19;
}

void __103__HDSharedSummaryTransactionMetadataEntity_insertWithTransactionID_metadata_databaseTransaction_error___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v48[7] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 32);
  v8 = *(*(a1 + 48) + 8);
  v10 = *(v8 + 40);
  v9 = (v8 + 40);
  obj = v10;
  v11 = a2;
  v12 = a3;
  v13 = v7;
  v14 = objc_opt_self();
  objc_opt_class();
  v37 = v12;
  v38 = v9;
  v36 = v11;
  if (objc_opt_isKindOfClass())
  {
    v15 = v12;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
LABEL_11:
    [v13 databaseForEntityClass:v14];
    v26 = v25 = v13;
    v48[0] = @"transaction_id";
    v48[1] = @"key";
    v48[2] = @"value_type";
    v48[3] = @"string_value";
    v48[4] = @"numerical_value";
    v48[5] = @"date_value";
    v48[6] = @"data_value";
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:7];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __105__HDSharedSummaryTransactionMetadataEntity__insertWithTransactionID_key_value_databaseTransaction_error___block_invoke;
    v40[3] = &unk_278622E10;
    v46 = v6;
    v41 = v36;
    v42 = v15;
    v43 = v16;
    v44 = v17;
    v47 = v19;
    v45 = v18;
    v28 = v18;
    v29 = v17;
    v30 = v16;
    v31 = v15;
    v32 = [v14 insertOrReplaceEntity:0 database:v26 properties:v27 error:&obj bindingHandler:v40];

    v13 = v25;
    v11 = v36;

    v12 = v37;
    v9 = v38;
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v12;
    v17 = 0;
    v18 = 0;
    v15 = 0;
    v19 = 1;
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = v12;
    v16 = 0;
    v18 = 0;
    v15 = 0;
    v19 = 2;
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = MEMORY[0x277CCABB0];
    v21 = v12;
    [v21 _unit];
    v23 = v22 = v13;
    [v21 doubleValueForUnit:v23];
    v16 = [v20 numberWithDouble:?];

    v13 = v22;
    v24 = [v21 _unit];

    v15 = [v24 unitString];

    v17 = 0;
    v18 = 0;
    v19 = 3;
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = v12;
    v16 = 0;
    v17 = 0;
    v15 = 0;
    v19 = 4;
    goto LABEL_11;
  }

  [MEMORY[0x277CCA9B8] hk_assignError:&obj code:3 format:{@"Received invalid metadata value type %@ (%@)", v12, objc_opt_class()}];
  v32 = 0;
LABEL_12:

  objc_storeStrong(v9, obj);
  if (v32)
  {
    [*(a1 + 40) addObject:v32];
  }

  else
  {
    *a4 = 1;
  }

  v33 = *MEMORY[0x277D85DE8];
}

+ (id)metadataForTransactionID:(int64_t)a3 databaseTransaction:(id)a4 error:(id *)a5
{
  v24[6] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CBEB38];
  v9 = a4;
  v10 = objc_alloc_init(v8);
  v11 = MEMORY[0x277D10B18];
  v12 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
  v13 = [v11 predicateWithProperty:@"transaction_id" equalToValue:v12];

  v14 = [v9 databaseForEntityClass:a1];

  v15 = [a1 queryWithDatabase:v14 predicate:v13];

  v24[0] = @"key";
  v24[1] = @"value_type";
  v24[2] = @"string_value";
  v24[3] = @"numerical_value";
  v24[4] = @"date_value";
  v24[5] = @"data_value";
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:6];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __95__HDSharedSummaryTransactionMetadataEntity_metadataForTransactionID_databaseTransaction_error___block_invoke;
  v22[3] = &unk_27861E4C0;
  v23 = v10;
  v17 = v10;
  if ([v15 enumerateProperties:v16 error:a5 enumerationHandler:v22])
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  v20 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t __95__HDSharedSummaryTransactionMetadataEntity_metadataForTransactionID_databaseTransaction_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = HDSQLiteColumnWithNameAsString();
  v7 = HDSQLiteColumnWithNameAsInt64();
  v8 = v7;
  if (v7 <= 1)
  {
    if (v7)
    {
      if (v7 != 1)
      {
        goto LABEL_15;
      }

      v15 = HDSQLiteColumnWithNameAsNumber();
    }

    else
    {
      v15 = HDSQLiteColumnWithNameAsString();
    }

LABEL_13:
    v14 = v15;
    if (v15)
    {
      goto LABEL_14;
    }

LABEL_15:
    v17 = MEMORY[0x277CCA9B8];
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
    [v17 hk_assignError:a4 code:3 format:{@"Read invalid metadata type %@ ", v14}];
    v16 = 0;
    goto LABEL_16;
  }

  if (v7 == 2)
  {
    v15 = HDSQLiteColumnWithNameAsDate();
    goto LABEL_13;
  }

  if (v7 == 4)
  {
    v15 = HDSQLiteColumnWithNameAsData();
    goto LABEL_13;
  }

  if (v7 != 3)
  {
    goto LABEL_15;
  }

  HDSQLiteColumnWithNameAsDouble();
  v10 = v9;
  v11 = HDSQLiteColumnWithNameAsString();
  v12 = MEMORY[0x277CCD7E8];
  v13 = [MEMORY[0x277CCDAB0] unitFromString:v11];
  v14 = [v12 quantityWithUnit:v13 doubleValue:v10];

  if (!v14)
  {
    goto LABEL_15;
  }

LABEL_14:
  [*(a1 + 32) setObject:v14 forKeyedSubscript:v6];
  v16 = 1;
LABEL_16:

  return v16;
}

void __105__HDSharedSummaryTransactionMetadataEntity__insertWithTransactionID_key_value_databaseTransaction_error___block_invoke(void *a1, uint64_t a2)
{
  MEMORY[0x22AAC6B90](a2, @"transaction_id", a1[9]);
  MEMORY[0x22AAC6BD0](a2, @"key", a1[4]);
  MEMORY[0x22AAC6B90](a2, @"value_type", a1[10]);
  MEMORY[0x22AAC6BD0](a2, @"string_value", a1[5]);
  MEMORY[0x22AAC6BB0](a2, @"numerical_value", a1[6]);
  MEMORY[0x22AAC6B50](a2, @"date_value", a1[7]);
  v4 = a1[8];

  JUMPOUT(0x22AAC6B40);
}

@end