@interface HDDatabasePruningShowSyncIdentity
- (HDDatabasePruningShowSyncIdentity)init;
- (HDDatabasePruningShowSyncIdentity)initWithPersistentID:(int64_t)a3 hardwareIdentifier:(id)a4 databaseIdentifier:(id)a5 instanceDiscriminator:(id)a6;
@end

@implementation HDDatabasePruningShowSyncIdentity

- (HDDatabasePruningShowSyncIdentity)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDDatabasePruningShowSyncIdentity)initWithPersistentID:(int64_t)a3 hardwareIdentifier:(id)a4 databaseIdentifier:(id)a5 instanceDiscriminator:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = HDDatabasePruningShowSyncIdentity;
  v14 = [(HDDatabasePruningShowSyncIdentity *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_persitentID = a3;
    objc_storeStrong(&v14->_hardwareIdentifier, a4);
    objc_storeStrong(&v15->_databaseIdentifier, a5);
    objc_storeStrong(&v15->_instanceDiscriminator, a6);
  }

  return v15;
}

@end