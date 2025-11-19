@interface HDMetadataValueEntity
+ (BOOL)_insertMetadataValueWithKeyID:(int64_t)a3 objectID:(int64_t)a4 value:(id)a5 database:(id)a6 error:(id *)a7;
+ (BOOL)_updateMetadataValueForKeyID:(int64_t)a3 objectID:(int64_t)a4 value:(id)a5 database:(id)a6 error:(id *)a7;
+ (id)deleteStatementForObjectMetadataWithTransaction:(id)a3;
+ (id)indices;
+ (uint64_t)_determineMetadataTypeForValue:(__CFString *)a3 stringValue:(__CFString *)a4 numberValue:(__CFString *)a5 dateValue:(__CFString *)a6 dataValue:(uint64_t *)a7 type:(uint64_t)a8 error:;
@end

@implementation HDMetadataValueEntity

+ (id)indices
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277D10B40]);
  v3 = objc_opt_class();
  v9 = @"object_id";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v9 count:1];
  v5 = [v2 initWithEntity:v3 name:@"object" columns:v4];
  v10[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)deleteStatementForObjectMetadataWithTransaction:(id)a3
{
  v4 = [a3 databaseForEntityClass:a1];
  v5 = [a1 deleteStatementWithProperty:@"object_id" database:v4];

  return v5;
}

+ (uint64_t)_determineMetadataTypeForValue:(__CFString *)a3 stringValue:(__CFString *)a4 numberValue:(__CFString *)a5 dateValue:(__CFString *)a6 dataValue:(uint64_t *)a7 type:(uint64_t)a8 error:
{
  v40 = *MEMORY[0x277D85DE8];
  v13 = a2;
  objc_opt_self();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    if (!a3)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = v13;
    v15 = 0;
    v17 = 0;
    v14 = 0;
    v16 = 1;
    if (!a3)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = v13;
    v15 = 0;
    v18 = 0;
    v14 = 0;
    v16 = 2;
    if (!a3)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = MEMORY[0x277CCABB0];
    v20 = v13;
    v21 = [(__CFString *)v20 _unit];
    [(__CFString *)v20 doubleValueForUnit:v21];
    v18 = [v19 numberWithDouble:?];

    v22 = [(__CFString *)v20 _unit];

    v14 = [v22 unitString];

    v15 = 0;
    v17 = 0;
    v16 = 3;
    if (!a3)
    {
LABEL_13:
      if (a4)
      {
        v24 = v18;
        *a4 = v18;
      }

      if (a5)
      {
        v25 = v17;
        *a5 = v17;
      }

      if (a6)
      {
        v26 = v15;
        *a6 = v15;
      }

      if (a7)
      {
        *a7 = v16;
      }

      v27 = 1;
      goto LABEL_22;
    }

LABEL_12:
    v23 = v14;
    *a3 = v14;
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v13;
    v17 = 0;
    v18 = 0;
    v14 = 0;
    v16 = 4;
    if (!a3)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  [MEMORY[0x277CCA9B8] hk_assignError:a8 code:3 format:{@"Received invalid metadata value type %@ (%@)", v13, objc_opt_class()}];
  _HKInitializeLogging();
  v30 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
  {
    v31 = MEMORY[0x277CCDD30];
    v32 = v30;
    if ([v31 isAppleInternalInstall])
    {
      v33 = v13;
    }

    else
    {
      v33 = @"<redacted>";
    }

    *buf = 138412546;
    v37 = v33;
    v38 = 2112;
    v39 = objc_opt_class();
    v34 = v39;
    _os_log_error_impl(&dword_228986000, v32, OS_LOG_TYPE_ERROR, "Received invalid value %@ of type %@", buf, 0x16u);
  }

  v15 = 0;
  v17 = 0;
  v18 = 0;
  v14 = 0;
  v27 = 0;
LABEL_22:

  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

+ (BOOL)_insertMetadataValueWithKeyID:(int64_t)a3 objectID:(int64_t)a4 value:(id)a5 database:(id)a6 error:(id *)a7
{
  v12 = a6;
  v32 = 0;
  v33 = 0;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v13 = [(HDMetadataValueEntity *)a1 _determineMetadataTypeForValue:a5 stringValue:&v32 numberValue:&v31 dateValue:&v30 dataValue:&v29 type:&v33 error:a7];
  v14 = v32;
  v15 = v31;
  v16 = v30;
  v17 = v29;
  if (v13)
  {
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __85__HDMetadataValueEntity__insertMetadataValueWithKeyID_objectID_value_database_error___block_invoke;
    v28[3] = &__block_descriptor_40_e15___NSString_8__0l;
    v28[4] = a1;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __85__HDMetadataValueEntity__insertMetadataValueWithKeyID_objectID_value_database_error___block_invoke_2;
    v20[3] = &unk_27861FCD8;
    v25 = a3;
    v26 = a4;
    v21 = v14;
    v22 = v15;
    v23 = v16;
    v24 = v17;
    v27 = v33;
    v18 = [v12 executeCachedStatementForKey:&_insertMetadataValueWithKeyID_objectID_value_database_error__insertKey error:a7 SQLGenerator:v28 bindingHandler:v20 enumerationHandler:0];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

id __85__HDMetadataValueEntity__insertMetadataValueWithKeyID_objectID_value_database_error___block_invoke(uint64_t a1)
{
  v6[7] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v6[0] = @"key_id";
  v6[1] = @"object_id";
  v6[2] = @"string_value";
  v6[3] = @"numerical_value";
  v6[4] = @"date_value";
  v6[5] = @"data_value";
  v6[6] = @"value_type";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:7];
  v3 = [v1 insertSQLForProperties:v2 shouldReplace:0];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

uint64_t __85__HDMetadataValueEntity__insertMetadataValueWithKeyID_objectID_value_database_error___block_invoke_2(void *a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, a1[8]);
  sqlite3_bind_int64(a2, 2, a1[9]);
  v4 = a1[4];
  HDSQLiteBindFoundationValueToStatement();
  v5 = a1[5];
  HDSQLiteBindFoundationValueToStatement();
  v6 = a1[6];
  HDSQLiteBindFoundationValueToStatement();
  v7 = a1[7];
  HDSQLiteBindFoundationValueToStatement();
  v8 = a1[10];

  return sqlite3_bind_int64(a2, 7, v8);
}

+ (BOOL)_updateMetadataValueForKeyID:(int64_t)a3 objectID:(int64_t)a4 value:(id)a5 database:(id)a6 error:(id *)a7
{
  v55[2] = *MEMORY[0x277D85DE8];
  v12 = a6;
  v53 = 0;
  v54 = 0;
  v52 = 0;
  v50 = 0;
  v51 = 0;
  v13 = [(HDMetadataValueEntity *)a1 _determineMetadataTypeForValue:a5 stringValue:&v53 numberValue:&v52 dateValue:&v51 dataValue:&v50 type:&v54 error:a7];
  v14 = v53;
  v15 = v52;
  v16 = v51;
  v17 = v50;
  if (v13)
  {
    v18 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
    [MEMORY[0x277CCABB0] numberWithLongLong:a4];
    v19 = v38 = v12;
    v20 = v18;
    objc_opt_self();
    v21 = MEMORY[0x277D10B20];
    v22 = v20;
    objc_opt_self();
    v37 = v17;
    v23 = v16;
    v24 = v15;
    v25 = v14;
    v26 = [MEMORY[0x277D10B18] predicateWithProperty:@"key_id" equalToValue:v22];

    v55[0] = v26;
    v27 = v19;
    objc_opt_self();
    v28 = [MEMORY[0x277D10B18] predicateWithProperty:@"object_id" equalToValue:v27];

    v55[1] = v28;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:2];
    v30 = [v21 predicateMatchingAllPredicates:v29];

    v14 = v25;
    v15 = v24;
    v16 = v23;
    v17 = v37;

    v12 = v38;
    v48 = a1;
    v49 = 0;
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __84__HDMetadataValueEntity__updateMetadataValueForKeyID_objectID_value_database_error___block_invoke;
    v46[3] = &unk_278618EF0;
    v47 = v30;
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __84__HDMetadataValueEntity__updateMetadataValueForKeyID_objectID_value_database_error___block_invoke_2;
    v39[3] = &unk_27861FD00;
    v40 = v14;
    v41 = v15;
    v42 = v16;
    v31 = v37;
    v44 = v47;
    v45 = v54;
    v43 = v31;
    v32 = v47;
    v33 = [v38 executeCachedStatementForKey:&_updateMetadataValueForKeyID_objectID_value_database_error__updateKey error:&v49 SQLGenerator:v46 bindingHandler:v39 enumerationHandler:0];
    v34 = v49;
  }

  else
  {
    v33 = 0;
  }

  v35 = *MEMORY[0x277D85DE8];
  return v33;
}

id __84__HDMetadataValueEntity__updateMetadataValueForKeyID_objectID_value_database_error___block_invoke(uint64_t a1)
{
  v7[5] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v7[0] = @"string_value";
  v7[1] = @"numerical_value";
  v7[2] = @"date_value";
  v7[3] = @"data_value";
  v7[4] = @"value_type";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:5];
  v4 = [v2 updateSQLForProperties:v3 predicate:*(a1 + 32)];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

uint64_t __84__HDMetadataValueEntity__updateMetadataValueForKeyID_objectID_value_database_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 32);
  HDSQLiteBindFoundationValueToStatement();
  v5 = *(a1 + 40);
  HDSQLiteBindFoundationValueToStatement();
  v6 = *(a1 + 48);
  HDSQLiteBindFoundationValueToStatement();
  v7 = *(a1 + 56);
  HDSQLiteBindFoundationValueToStatement();
  v9 = 6;
  sqlite3_bind_int64(a2, 5, *(a1 + 72));
  return [*(a1 + 64) bindToStatement:a2 bindingIndex:&v9];
}

@end