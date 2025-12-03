@interface HMDBackingStoreSaveToPersistentStore
- (HMDBackingStoreSaveToPersistentStore)initWithHomeManager:(id)manager reason:(id)reason incrementGeneration:(BOOL)generation;
- (id)mainReturningError;
@end

@implementation HMDBackingStoreSaveToPersistentStore

- (id)mainReturningError
{
  store = [(HMDBackingStoreOperation *)self store];
  local = [store local];
  _begin = [local _begin];

  store2 = [(HMDBackingStoreOperation *)self store];
  v7 = objc_opt_class();
  reason = self->_reason;
  homeManager = self->_homeManager;
  incrementGeneration = self->_incrementGeneration;
  store3 = [(HMDBackingStoreOperation *)self store];
  v12 = [v7 _saveToLocalStoreWithReason:reason homeManager:homeManager shouldIncrementGenerationCounter:incrementGeneration backingStore:store3];

  store4 = [(HMDBackingStoreOperation *)self store];
  local2 = [store4 local];
  _commit = [local2 _commit];

  return v12;
}

- (HMDBackingStoreSaveToPersistentStore)initWithHomeManager:(id)manager reason:(id)reason incrementGeneration:(BOOL)generation
{
  managerCopy = manager;
  reasonCopy = reason;
  v15.receiver = self;
  v15.super_class = HMDBackingStoreSaveToPersistentStore;
  v11 = [(HMDBackingStoreOperation *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_homeManager, manager);
    objc_storeStrong(&v12->_reason, reason);
    v12->_incrementGeneration = generation;
    v13 = v12;
  }

  return v12;
}

@end