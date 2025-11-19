@interface HMDBackingStoreCacheCreateZoneOperation
- (HMDBackingStoreCacheCreateZoneOperation)initWithZoneName:(id)a3 creationBlock:(id)a4;
- (id)mainReturningError;
@end

@implementation HMDBackingStoreCacheCreateZoneOperation

- (id)mainReturningError
{
  v3 = [(HMDBackingStoreOperation *)self store];
  v4 = [v3 local];
  v5 = [(HMDBackingStoreCacheCreateZoneOperation *)self zoneName];
  v20 = 0;
  v6 = [v4 _insertZoneWithName:v5 error:&v20];
  v7 = v20;

  if (v7)
  {
    v8 = [(HMDBackingStoreCacheCreateZoneOperation *)self creationBlock];

    if (v8)
    {
      v9 = [(HMDBackingStoreCacheCreateZoneOperation *)self creationBlock];
      (v9)[2](v9, 0, v7);
    }

    v10 = v7;
  }

  else
  {
    v11 = [HMDBackingStoreCacheZone alloc];
    v12 = [(HMDBackingStoreCacheCreateZoneOperation *)self zoneName];
    v13 = [(HMDBackingStoreCacheZone *)v11 initWithZoneID:v6 name:v12];

    v14 = [(HMDBackingStoreOperation *)self store];
    v15 = [v14 local];
    v16 = [v15 zoneCache];
    [v16 addObject:v13];

    v17 = [(HMDBackingStoreCacheCreateZoneOperation *)self creationBlock];

    if (v17)
    {
      v18 = [(HMDBackingStoreCacheCreateZoneOperation *)self creationBlock];
      (v18)[2](v18, v13, 0);
    }
  }

  return v7;
}

- (HMDBackingStoreCacheCreateZoneOperation)initWithZoneName:(id)a3 creationBlock:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = HMDBackingStoreCacheCreateZoneOperation;
  v9 = [(HMDBackingStoreOperation *)&v14 init];
  if (v9)
  {
    v10 = _Block_copy(v8);
    creationBlock = v9->_creationBlock;
    v9->_creationBlock = v10;

    objc_storeStrong(&v9->_zoneName, a3);
    v12 = v9;
  }

  return v9;
}

@end