@interface HDDatabaseTransactionContextStatistics
- (HDDatabaseTransactionContextStatistics)init;
- (NSArray)transactions;
- (NSString)shortDescription;
@end

@implementation HDDatabaseTransactionContextStatistics

- (HDDatabaseTransactionContextStatistics)init
{
  v6.receiver = self;
  v6.super_class = HDDatabaseTransactionContextStatistics;
  v2 = [(HDDatabaseTransactionContextStatistics *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    transactions = v2->_transactions;
    v2->_transactions = v3;
  }

  return v2;
}

- (NSArray)transactions
{
  v2 = [(NSMutableArray *)self->_transactions copy];

  return v2;
}

- (NSString)shortDescription
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  transactions = self->_transactions;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__HDDatabaseTransactionContextStatistics_shortDescription__block_invoke;
  v7[3] = &unk_278623A08;
  v7[4] = &v8;
  [v3 hk_appendComponentsJoinedByString:@" container:" componentGenerator:{transactions, v7}];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.0lfms [ %@ ]", v9[3] * 1000.0, v3];

  _Block_object_dispose(&v8, 8);

  return v5;
}

uint64_t __58__HDDatabaseTransactionContextStatistics_shortDescription__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 duration];
  *(*(*(a1 + 32) + 8) + 24) = v4 + *(*(*(a1 + 32) + 8) + 24);
  v5 = MEMORY[0x277CCACA8];
  [v3 duration];
  v7 = v6;

  return [v5 stringWithFormat:@"%.1lf", v7 * 1000.0];
}

@end