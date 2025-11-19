@interface HDOntologyTransaction
- (HDInternalContentDatabaseManager)internalContentDatabaseManager;
- (HDOntologyTransaction)init;
- (HDOntologyTransaction)initWithProfile:(id)a3 databaseTransaction:(id)a4 graphDatabase:(id)a5 isWriteTransaction:(BOOL)a6;
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

- (HDOntologyTransaction)initWithProfile:(id)a3 databaseTransaction:(id)a4 graphDatabase:(id)a5 isWriteTransaction:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v16.receiver = self;
  v16.super_class = HDOntologyTransaction;
  v13 = [(HDOntologyTransaction *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_profile, v10);
    objc_storeStrong(&v14->_databaseTransaction, a4);
    objc_storeStrong(&v14->_graphDatabase, a5);
    v14->_isWriteTransaction = a6;
  }

  return v14;
}

- (HDInternalContentDatabaseManager)internalContentDatabaseManager
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v3 = [WeakRetained internalContentDatabaseManager];

  return v3;
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

@end