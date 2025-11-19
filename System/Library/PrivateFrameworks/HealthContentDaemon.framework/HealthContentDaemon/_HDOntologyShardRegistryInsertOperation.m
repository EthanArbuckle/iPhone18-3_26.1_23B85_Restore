@interface _HDOntologyShardRegistryInsertOperation
- (BOOL)performWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5;
- (_HDOntologyShardRegistryInsertOperation)init;
- (_HDOntologyShardRegistryInsertOperation)initWithCoder:(id)a3;
- (id)initWithEntries:(id *)a1;
- (id)transactionContext;
@end

@implementation _HDOntologyShardRegistryInsertOperation

- (_HDOntologyShardRegistryInsertOperation)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (BOOL)performWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [a3 daemon];
  v10 = [v9 ontologyUpdateCoordinator];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __80___HDOntologyShardRegistryInsertOperation_performWithProfile_transaction_error___block_invoke;
  v12[3] = &unk_2796B9460;
  v12[4] = self;
  LOBYTE(a5) = [v10 performOntologyTransactionForWrite:1 databaseTransaction:v8 error:a5 transactionHandler:v12];

  return a5;
}

- (id)transactionContext
{
  v2 = [MEMORY[0x277D10788] contextForReadingProtectedData];
  [v2 setAllowsJournalingDuringProtectedRead:1];
  v3 = [v2 copy];

  return v3;
}

- (_HDOntologyShardRegistryInsertOperation)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _HDOntologyShardRegistryInsertOperation;
  v5 = [(_HDOntologyShardRegistryInsertOperation *)&v10 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"entries"];
    entries = v5->_entries;
    v5->_entries = v7;
  }

  return v5;
}

- (id)initWithEntries:(id *)a1
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = _HDOntologyShardRegistryInsertOperation;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 2, a2);
    }
  }

  return a1;
}

@end