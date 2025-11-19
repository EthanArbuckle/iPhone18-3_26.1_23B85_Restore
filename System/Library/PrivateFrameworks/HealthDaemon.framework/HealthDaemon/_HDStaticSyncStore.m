@interface _HDStaticSyncStore
- (HDProfile)profile;
- (NSString)description;
- (_HDStaticSyncStore)initWithProfile:(id)a3 storeIdentifier:(id)a4 error:(id *)a5;
- (id)orderedSyncEntities;
@end

@implementation _HDStaticSyncStore

- (_HDStaticSyncStore)initWithProfile:(id)a3 storeIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 database];
  v11 = [HDSyncStoreEntity syncStoreEntityWithUUID:v9 type:5 healthDatabase:v10 error:a5];

  if (v11)
  {
    v16.receiver = self;
    v16.super_class = _HDStaticSyncStore;
    v12 = [(_HDStaticSyncStore *)&v16 init];
    v13 = v12;
    if (v12)
    {
      objc_storeWeak(&v12->_profile, v8);
      v13->_syncProvenance = [v11 syncProvenance];
      objc_storeStrong(&v13->_storeIdentifier, a4);
    }

    self = v13;
    v14 = self;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(NSUUID *)self->_storeIdentifier UUIDString];
  v6 = [v3 stringWithFormat:@"<%@:%p storeIdentifier:%@>", v4, self, v5];

  return v6;
}

- (id)orderedSyncEntities
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v3 = [WeakRetained syncEngine];
  v4 = [v3 allOrderedSyncEntities];

  return v4;
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

@end