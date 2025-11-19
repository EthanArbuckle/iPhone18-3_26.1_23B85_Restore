@interface HMDBackingStoreUpdateObjectReference
- (HMDBackingStoreUpdateObjectReference)initWithObject:(id)a3 uuid:(id)a4;
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
  v3 = [v6 objectLookup];
  v4 = [(HMDBackingStoreUpdateObjectReference *)self object];
  v5 = [(HMDBackingStoreUpdateObjectReference *)self uuid];
  [v3 setObject:v4 forKey:v5];
}

- (HMDBackingStoreUpdateObjectReference)initWithObject:(id)a3 uuid:(id)a4
{
  objc_initWeak(&location, a3);
  v6 = a4;
  v11.receiver = self;
  v11.super_class = HMDBackingStoreUpdateObjectReference;
  v7 = [(HMDBackingStoreUpdateObjectReference *)&v11 init];
  if (v7)
  {
    v8 = objc_loadWeakRetained(&location);
    objc_storeWeak(&v7->_object, v8);

    objc_storeStrong(&v7->_uuid, a4);
    v9 = v7;
  }

  objc_destroyWeak(&location);
  return v7;
}

@end