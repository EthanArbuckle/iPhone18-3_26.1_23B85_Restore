@interface SGSqliteTransaction
+ (void)readTransactionWithHandle:(id)a3 block:(id)a4;
+ (void)writeTransactionWithHandle:(id)a3 block:(id)a4;
@end

@implementation SGSqliteTransaction

+ (void)writeTransactionWithHandle:(id)a3 block:(id)a4
{
  v5 = a3;
  v6 = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__SGSqliteTransaction_writeTransactionWithHandle_block___block_invoke;
  v9[3] = &unk_278955EE8;
  v10 = v5;
  v11 = v6;
  v7 = v5;
  v8 = v6;
  [v7 writeTransaction:v9];
}

void __56__SGSqliteTransaction_writeTransactionWithHandle_block___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [[SGSqliteWriteTransaction alloc] initWithHandle:*(a1 + 32)];
  (*(v1 + 16))(v1, v2);
}

+ (void)readTransactionWithHandle:(id)a3 block:(id)a4
{
  v5 = a3;
  v6 = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__SGSqliteTransaction_readTransactionWithHandle_block___block_invoke;
  v9[3] = &unk_278955EE8;
  v10 = v5;
  v11 = v6;
  v7 = v5;
  v8 = v6;
  [v7 readTransaction:v9];
}

void __55__SGSqliteTransaction_readTransactionWithHandle_block___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [[SGSqliteReadTransaction alloc] initWithHandle:*(a1 + 32)];
  (*(v1 + 16))(v1, v2);
}

@end