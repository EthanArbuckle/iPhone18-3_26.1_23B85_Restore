@interface HMDBackingStoreUpdateObjectReference
- (HMDBackingStoreUpdateObjectReference)initWithObject:(id)object uuid:(id)uuid;
- (id)object;
- (void)main;
@end

@implementation HMDBackingStoreUpdateObjectReference

- (id)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

- (void)main
{
  v6 = +[HMDBackingStoreSingleton sharedInstance];
  objectLookup = [v6 objectLookup];
  object = [(HMDBackingStoreUpdateObjectReference *)self object];
  uuid = [(HMDBackingStoreUpdateObjectReference *)self uuid];
  [objectLookup setObject:object forKey:uuid];
}

- (HMDBackingStoreUpdateObjectReference)initWithObject:(id)object uuid:(id)uuid
{
  objc_initWeak(&location, object);
  uuidCopy = uuid;
  v11.receiver = self;
  v11.super_class = HMDBackingStoreUpdateObjectReference;
  v7 = [(HMDBackingStoreUpdateObjectReference *)&v11 init];
  if (v7)
  {
    v8 = objc_loadWeakRetained(&location);
    objc_storeWeak(&v7->_object, v8);

    objc_storeStrong(&v7->_uuid, uuid);
    v9 = v7;
  }

  objc_destroyWeak(&location);
  return v7;
}

@end