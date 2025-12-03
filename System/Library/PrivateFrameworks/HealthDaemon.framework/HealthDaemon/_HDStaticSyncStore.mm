@interface _HDStaticSyncStore
- (HDProfile)profile;
- (NSString)description;
- (_HDStaticSyncStore)initWithProfile:(id)profile storeIdentifier:(id)identifier error:(id *)error;
- (id)orderedSyncEntities;
@end

@implementation _HDStaticSyncStore

- (_HDStaticSyncStore)initWithProfile:(id)profile storeIdentifier:(id)identifier error:(id *)error
{
  profileCopy = profile;
  identifierCopy = identifier;
  database = [profileCopy database];
  v11 = [HDSyncStoreEntity syncStoreEntityWithUUID:identifierCopy type:5 healthDatabase:database error:error];

  if (v11)
  {
    v16.receiver = self;
    v16.super_class = _HDStaticSyncStore;
    v12 = [(_HDStaticSyncStore *)&v16 init];
    v13 = v12;
    if (v12)
    {
      objc_storeWeak(&v12->_profile, profileCopy);
      v13->_syncProvenance = [v11 syncProvenance];
      objc_storeStrong(&v13->_storeIdentifier, identifier);
    }

    self = v13;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  uUIDString = [(NSUUID *)self->_storeIdentifier UUIDString];
  v6 = [v3 stringWithFormat:@"<%@:%p storeIdentifier:%@>", v4, self, uUIDString];

  return v6;
}

- (id)orderedSyncEntities
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  syncEngine = [WeakRetained syncEngine];
  allOrderedSyncEntities = [syncEngine allOrderedSyncEntities];

  return allOrderedSyncEntities;
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

@end