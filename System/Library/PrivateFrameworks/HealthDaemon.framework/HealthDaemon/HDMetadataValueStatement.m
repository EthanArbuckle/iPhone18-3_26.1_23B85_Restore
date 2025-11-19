@interface HDMetadataValueStatement
+ (HDMetadataValueStatement)metadataValueStatementWithTransaction:(id)a3;
- (BOOL)enumerateResultsForObjectID:(int64_t)a3 error:(id *)a4 block:(id)a5;
@end

@implementation HDMetadataValueStatement

+ (HDMetadataValueStatement)metadataValueStatementWithTransaction:(id)a3
{
  v4 = a3;
  v5 = [HDMetadataValueStatement alloc];
  v6 = v4;
  if (v5)
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = +[(HDSQLiteSchemaEntity *)HDMetadataValueEntity];
    v9 = [v7 stringWithFormat:@"SELECT %@, %@, %@, %@, %@, %@ FROM %@ WHERE %@ = ?", @"key_id", @"string_value", @"numerical_value", @"date_value", @"value_type", @"data_value", v8, @"object_id"];

    v10 = [v6 databaseForEntityClass:objc_opt_class()];
    v14.receiver = v5;
    v14.super_class = HDMetadataValueStatement;
    v11 = objc_msgSendSuper2(&v14, sel_initWithSQL_database_, v9, v10);

    if (v11)
    {
      objc_storeStrong(v11 + 3, a3);
    }

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)enumerateResultsForObjectID:(int64_t)a3 error:(id *)a4 block:(id)a5
{
  v11 = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __68__HDMetadataValueStatement_enumerateResultsForObjectID_error_block___block_invoke;
  v12[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v12[4] = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__HDMetadataValueStatement_enumerateResultsForObjectID_error_block___block_invoke_2;
  v10[3] = &unk_278613B30;
  v8 = v11;
  LOBYTE(a4) = [(HDSQLiteStatement *)self enumerateStatementWithError:a4 bindingHandler:v12 block:v10];

  return a4;
}

uint64_t __68__HDMetadataValueStatement_enumerateResultsForObjectID_error_block___block_invoke_2(uint64_t a1, uint64_t a2)
{
  HDSQLiteColumnAsInt64();
  v4 = HDSQLiteColumnAsInt64();
  v5 = 0;
  if (v4 <= 1)
  {
    if (v4)
    {
      if (v4 != 1)
      {
        goto LABEL_13;
      }

      v10 = MEMORY[0x22AAC6C80](a2, 2);
    }

    else
    {
      v10 = MEMORY[0x22AAC6C90](a2, 1);
    }

LABEL_12:
    v5 = v10;
    goto LABEL_13;
  }

  switch(v4)
  {
    case 2:
      v10 = MEMORY[0x22AAC6C40](a2, 3);
      goto LABEL_12;
    case 4:
      v10 = MEMORY[0x22AAC6C30](a2, 5);
      goto LABEL_12;
    case 3:
      v6 = MEMORY[0x22AAC6C50](a2, 2);
      v7 = MEMORY[0x22AAC6C90](a2, 1);
      v8 = MEMORY[0x277CCD7E8];
      v9 = [MEMORY[0x277CCDAB0] unitFromString:v7];
      v5 = [v8 quantityWithUnit:v9 doubleValue:v6];

      break;
  }

LABEL_13:
  v11 = (*(*(a1 + 32) + 16))();

  return v11;
}

@end