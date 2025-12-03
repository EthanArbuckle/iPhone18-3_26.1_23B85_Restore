@interface _HDOntologyShardRegistryInsertOperation
- (BOOL)performWithProfile:(id)profile transaction:(id)transaction error:(id *)error;
- (_HDOntologyShardRegistryInsertOperation)init;
- (_HDOntologyShardRegistryInsertOperation)initWithCoder:(id)coder;
- (id)initWithEntries:(id *)entries;
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

- (BOOL)performWithProfile:(id)profile transaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  daemon = [profile daemon];
  ontologyUpdateCoordinator = [daemon ontologyUpdateCoordinator];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __80___HDOntologyShardRegistryInsertOperation_performWithProfile_transaction_error___block_invoke;
  v12[3] = &unk_2796B9460;
  v12[4] = self;
  LOBYTE(error) = [ontologyUpdateCoordinator performOntologyTransactionForWrite:1 databaseTransaction:transactionCopy error:error transactionHandler:v12];

  return error;
}

- (id)transactionContext
{
  contextForReadingProtectedData = [MEMORY[0x277D10788] contextForReadingProtectedData];
  [contextForReadingProtectedData setAllowsJournalingDuringProtectedRead:1];
  v3 = [contextForReadingProtectedData copy];

  return v3;
}

- (_HDOntologyShardRegistryInsertOperation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = _HDOntologyShardRegistryInsertOperation;
  v5 = [(_HDOntologyShardRegistryInsertOperation *)&v10 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"entries"];
    entries = v5->_entries;
    v5->_entries = v7;
  }

  return v5;
}

- (id)initWithEntries:(id *)entries
{
  v4 = a2;
  if (entries)
  {
    v7.receiver = entries;
    v7.super_class = _HDOntologyShardRegistryInsertOperation;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    entries = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 2, a2);
    }
  }

  return entries;
}

@end