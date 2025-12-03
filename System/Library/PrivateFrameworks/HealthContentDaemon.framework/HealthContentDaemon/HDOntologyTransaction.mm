@interface HDOntologyTransaction
- (HDInternalContentDatabaseManager)internalContentDatabaseManager;
- (HDOntologyTransaction)init;
- (HDOntologyTransaction)initWithProfile:(id)profile databaseTransaction:(id)transaction graphDatabase:(id)database isWriteTransaction:(BOOL)writeTransaction;
- (HDProfile)profile;
@end

@implementation HDOntologyTransaction

- (HDOntologyTransaction)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDOntologyTransaction)initWithProfile:(id)profile databaseTransaction:(id)transaction graphDatabase:(id)database isWriteTransaction:(BOOL)writeTransaction
{
  profileCopy = profile;
  transactionCopy = transaction;
  databaseCopy = database;
  v16.receiver = self;
  v16.super_class = HDOntologyTransaction;
  v13 = [(HDOntologyTransaction *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_profile, profileCopy);
    objc_storeStrong(&v14->_databaseTransaction, transaction);
    objc_storeStrong(&v14->_graphDatabase, database);
    v14->_isWriteTransaction = writeTransaction;
  }

  return v14;
}

- (HDInternalContentDatabaseManager)internalContentDatabaseManager
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  internalContentDatabaseManager = [WeakRetained internalContentDatabaseManager];

  return internalContentDatabaseManager;
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

@end