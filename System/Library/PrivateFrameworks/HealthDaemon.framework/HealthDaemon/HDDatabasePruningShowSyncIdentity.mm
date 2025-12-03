@interface HDDatabasePruningShowSyncIdentity
- (HDDatabasePruningShowSyncIdentity)init;
- (HDDatabasePruningShowSyncIdentity)initWithPersistentID:(int64_t)d hardwareIdentifier:(id)identifier databaseIdentifier:(id)databaseIdentifier instanceDiscriminator:(id)discriminator;
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

- (HDDatabasePruningShowSyncIdentity)initWithPersistentID:(int64_t)d hardwareIdentifier:(id)identifier databaseIdentifier:(id)databaseIdentifier instanceDiscriminator:(id)discriminator
{
  identifierCopy = identifier;
  databaseIdentifierCopy = databaseIdentifier;
  discriminatorCopy = discriminator;
  v17.receiver = self;
  v17.super_class = HDDatabasePruningShowSyncIdentity;
  v14 = [(HDDatabasePruningShowSyncIdentity *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_persitentID = d;
    objc_storeStrong(&v14->_hardwareIdentifier, identifier);
    objc_storeStrong(&v15->_databaseIdentifier, databaseIdentifier);
    objc_storeStrong(&v15->_instanceDiscriminator, discriminator);
  }

  return v15;
}

@end