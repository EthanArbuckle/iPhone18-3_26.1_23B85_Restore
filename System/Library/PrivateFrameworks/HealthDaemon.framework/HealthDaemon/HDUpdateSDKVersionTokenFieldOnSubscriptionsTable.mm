@interface HDUpdateSDKVersionTokenFieldOnSubscriptionsTable
@end

@implementation HDUpdateSDKVersionTokenFieldOnSubscriptionsTable

uint64_t ___HDUpdateSDKVersionTokenFieldOnSubscriptionsTable_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = HDSQLiteColumnAsInt64();
  HDSQLiteColumnAsInt64();
  HKBitPatternCastSignedToUnsignedInt64();
  v6 = *(a1 + 40);
  v7 = HKBitPatternCastUnsignedToSignedInt64();
  v8 = [*(a1 + 32) unprotectedDatabase];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = ___HDUpdateSDKVersionTokenFieldOnSubscriptionsTable_block_invoke_2;
  v11[3] = &__block_descriptor_48_e23_v16__0__sqlite3_stmt__8l;
  v11[4] = v7;
  v11[5] = v5;
  v9 = [v8 executeSQL:@"UPDATE subscription_app_launch SET sdk_version = ? WHERE ROWID = ?" error:a3 bindingHandler:v11 enumerationHandler:0];

  return v9;
}

uint64_t ___HDUpdateSDKVersionTokenFieldOnSubscriptionsTable_block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 32));
  v4 = *(a1 + 40);

  return sqlite3_bind_int64(a2, 2, v4);
}

@end