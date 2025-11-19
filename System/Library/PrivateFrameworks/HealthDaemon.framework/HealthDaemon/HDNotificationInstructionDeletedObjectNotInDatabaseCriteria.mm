@interface HDNotificationInstructionDeletedObjectNotInDatabaseCriteria
- (int64_t)isValidWithDatabaseTransaction:(id)a3 error:(id *)a4;
@end

@implementation HDNotificationInstructionDeletedObjectNotInDatabaseCriteria

- (int64_t)isValidWithDatabaseTransaction:(id)a3 error:(id *)a4
{
  v6 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 1;
  v7 = [v6 databaseForEntityClass:objc_opt_class()];
  v8 = v7;
  if (!v7)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a4 code:6 description:@"Protected database is inaccessible"];
    goto LABEL_5;
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __100__HDNotificationInstructionDeletedObjectNotInDatabaseCriteria_isValidWithDatabaseTransaction_error___block_invoke_2;
  v12[3] = &unk_278614860;
  v12[4] = self;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __100__HDNotificationInstructionDeletedObjectNotInDatabaseCriteria_isValidWithDatabaseTransaction_error___block_invoke_3;
  v11[3] = &unk_278614620;
  v11[4] = &v13;
  if (![v7 executeCachedStatementForKey:&isValidWithDatabaseTransaction_error__lookupKey error:a4 SQLGenerator:&__block_literal_global_189 bindingHandler:v12 enumerationHandler:v11])
  {
LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v9 = v14[3];
LABEL_6:

  _Block_object_dispose(&v13, 8);
  return v9;
}

id __100__HDNotificationInstructionDeletedObjectNotInDatabaseCriteria_isValidWithDatabaseTransaction_error___block_invoke()
{
  v0 = MEMORY[0x277CCACA8];
  v1 = +[(HDSQLiteSchemaEntity *)HDDataEntity];
  v2 = [v0 stringWithFormat:@"SELECT 1 FROM %@ WHERE %@ = ? AND %@ = ? LIMIT 1", v1, @"uuid", @"type"];

  return v2;
}

uint64_t __100__HDNotificationInstructionDeletedObjectNotInDatabaseCriteria_isValidWithDatabaseTransaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) UUID];
  HDSQLiteBindFoundationValueToStatement();

  return sqlite3_bind_int64(a2, 2, 2);
}

@end