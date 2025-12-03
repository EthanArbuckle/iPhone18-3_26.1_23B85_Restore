@interface HDStateOfMindLabelEntity
+ (BOOL)insertLabelsForObjectID:(int64_t)d labels:(id)labels transaction:(id)transaction error:(id *)error;
+ (id)foreignKeys;
+ (id)labelsForObjectID:(int64_t)d transaction:(id)transaction error:(id *)error;
+ (id)predicateForLabelsForObjectID:(int64_t)d;
@end

@implementation HDStateOfMindLabelEntity

+ (id)foreignKeys
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"data_id";
  v2 = +[(HDDataEntity *)HDStateOfMindEntity];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)predicateForLabelsForObjectID:(int64_t)d
{
  v3 = MEMORY[0x277D10B18];
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:d];
  v5 = [v3 predicateWithProperty:@"data_id" equalToValue:v4];

  return v5;
}

+ (id)labelsForObjectID:(int64_t)d transaction:(id)transaction error:(id *)error
{
  v8 = MEMORY[0x277CBEB18];
  transactionCopy = transaction;
  array = [v8 array];
  v11 = [transactionCopy databaseForEntityClass:self];

  v17[4] = d;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __64__HDStateOfMindLabelEntity_labelsForObjectID_transaction_error___block_invoke;
  v18[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v18[4] = self;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __64__HDStateOfMindLabelEntity_labelsForObjectID_transaction_error___block_invoke_2;
  v17[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __64__HDStateOfMindLabelEntity_labelsForObjectID_transaction_error___block_invoke_3;
  v15[3] = &unk_278614098;
  v12 = array;
  v16 = v12;
  LODWORD(error) = [v11 executeCachedStatementForKey:&labelsForObjectID_transaction_error__selectKey error:error SQLGenerator:v18 bindingHandler:v17 enumerationHandler:v15];

  if (error)
  {
    v13 = [v12 copy];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

id __64__HDStateOfMindLabelEntity_labelsForObjectID_transaction_error___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) disambiguatedDatabaseTable];
  v3 = [v1 stringWithFormat:@"SELECT %@ FROM %@ WHERE %@ = ?", @"label", v2, @"data_id"];

  return v3;
}

uint64_t __64__HDStateOfMindLabelEntity_labelsForObjectID_transaction_error___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCABB0] numberWithLongLong:HDSQLiteColumnWithNameAsInt64()];
  [v1 addObject:v2];

  return 1;
}

+ (BOOL)insertLabelsForObjectID:(int64_t)d labels:(id)labels transaction:(id)transaction error:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  labelsCopy = labels;
  transactionCopy = transaction;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = labelsCopy;
  v8 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(obj);
        }

        integerValue = [*(*(&v23 + 1) + 8 * i) integerValue];
        v13 = transactionCopy;
        v14 = objc_opt_self();
        v15 = [v13 databaseForEntityClass:v14];

        v27[5] = integerValue;
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __76__HDStateOfMindLabelEntity__insertLabelForObjectID_label_transaction_error___block_invoke;
        v28[3] = &__block_descriptor_40_e15___NSString_8__0l;
        v28[4] = v14;
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __76__HDStateOfMindLabelEntity__insertLabelForObjectID_label_transaction_error___block_invoke_2;
        v27[3] = &__block_descriptor_48_e23_v16__0__sqlite3_stmt__8l;
        v27[4] = d;
        LODWORD(integerValue) = [v15 executeCachedStatementForKey:&_insertLabelForObjectID_label_transaction_error__insertKey error:error SQLGenerator:v28 bindingHandler:v27 enumerationHandler:0];

        if (!integerValue)
        {
          v16 = 0;
          goto LABEL_11;
        }
      }

      v9 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v16 = 1;
LABEL_11:

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

id __76__HDStateOfMindLabelEntity__insertLabelForObjectID_label_transaction_error___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) disambiguatedDatabaseTable];
  v3 = [v1 stringWithFormat:@"INSERT OR REPLACE INTO %@ (%@, %@) VALUES (?, ?)", v2, @"data_id", @"label", 0];

  return v3;
}

uint64_t __76__HDStateOfMindLabelEntity__insertLabelForObjectID_label_transaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 32));
  v4 = *(a1 + 40);

  return sqlite3_bind_int64(a2, 2, v4);
}

@end