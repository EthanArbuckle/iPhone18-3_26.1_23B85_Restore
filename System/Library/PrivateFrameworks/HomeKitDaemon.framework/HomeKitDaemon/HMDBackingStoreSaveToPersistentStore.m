@interface HMDBackingStoreSaveToPersistentStore
- (HMDBackingStoreSaveToPersistentStore)initWithHomeManager:(id)a3 reason:(id)a4 incrementGeneration:(BOOL)a5;
- (id)mainReturningError;
@end

@implementation HMDBackingStoreSaveToPersistentStore

- (id)mainReturningError
{
  v3 = [(HMDBackingStoreOperation *)self store];
  v4 = [v3 local];
  v5 = [v4 _begin];

  v6 = [(HMDBackingStoreOperation *)self store];
  v7 = objc_opt_class();
  reason = self->_reason;
  homeManager = self->_homeManager;
  incrementGeneration = self->_incrementGeneration;
  v11 = [(HMDBackingStoreOperation *)self store];
  v12 = [v7 _saveToLocalStoreWithReason:reason homeManager:homeManager shouldIncrementGenerationCounter:incrementGeneration backingStore:v11];

  v13 = [(HMDBackingStoreOperation *)self store];
  v14 = [v13 local];
  v15 = [v14 _commit];

  return v12;
}

- (HMDBackingStoreSaveToPersistentStore)initWithHomeManager:(id)a3 reason:(id)a4 incrementGeneration:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v15.receiver = self;
  v15.super_class = HMDBackingStoreSaveToPersistentStore;
  v11 = [(HMDBackingStoreOperation *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_homeManager, a3);
    objc_storeStrong(&v12->_reason, a4);
    v12->_incrementGeneration = a5;
    v13 = v12;
  }

  return v12;
}

@end