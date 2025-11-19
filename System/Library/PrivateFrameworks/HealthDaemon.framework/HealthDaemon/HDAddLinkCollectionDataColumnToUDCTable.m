@interface HDAddLinkCollectionDataColumnToUDCTable
@end

@implementation HDAddLinkCollectionDataColumnToUDCTable

uint64_t ___HDAddLinkCollectionDataColumnToUDCTable_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = HDSQLiteColumnAsInt64();
  v6 = *(a1 + 32);
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = ___HDInsertSerializedUDCLinkDataForConceptWithIdentifier_block_invoke_2;
  v19[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v19[4] = v5;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = ___HDInsertSerializedUDCLinkDataForConceptWithIdentifier_block_invoke_3;
  v17[3] = &unk_278614098;
  v8 = v7;
  v18 = v8;
  if ([v6 executeCachedStatementForKey:&_HDInsertSerializedUDCLinkDataForConceptWithIdentifier_enumerateStatementKey error:a3 SQLGenerator:&__block_literal_global_146 bindingHandler:v19 enumerationHandler:v17])
  {
    v9 = [objc_alloc(MEMORY[0x277CCDB08]) _initWithLinks:v8];
    v10 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v9 requiringSecureCoding:1 error:a3];
    v11 = v10;
    if (v10)
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = ___HDInsertSerializedUDCLinkDataForConceptWithIdentifier_block_invoke_5;
      v14[3] = &unk_278613B58;
      v15 = v10;
      v16 = v5;
      v12 = [v6 executeCachedStatementForKey:&_HDInsertSerializedUDCLinkDataForConceptWithIdentifier_updateStatementKey error:a3 SQLGenerator:&__block_literal_global_382_1 bindingHandler:v14 enumerationHandler:0];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end