@interface HDInsertSerializedUDCLinkDataForConceptWithIdentifier
@end

@implementation HDInsertSerializedUDCLinkDataForConceptWithIdentifier

uint64_t ___HDInsertSerializedUDCLinkDataForConceptWithIdentifier_block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc(MEMORY[0x277CCDB00]);
  v5 = MEMORY[0x22AAC6CA0](a2, 0);
  v6 = [v4 initWithTarget:v5 type:HDSQLiteColumnAsInt64()];

  [*(a1 + 32) addObject:v6];
  return 1;
}

uint64_t ___HDInsertSerializedUDCLinkDataForConceptWithIdentifier_block_invoke_5(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 32);
  HDSQLiteBindFoundationValueToStatement();
  v5 = *(a1 + 40);

  return sqlite3_bind_int64(a2, 2, v5);
}

@end