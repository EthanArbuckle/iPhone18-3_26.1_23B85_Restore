@interface HMDBackingStoreCacheCreateZoneOperation
- (HMDBackingStoreCacheCreateZoneOperation)initWithZoneName:(id)name creationBlock:(id)block;
- (id)mainReturningError;
@end

@implementation HMDBackingStoreCacheCreateZoneOperation

- (id)mainReturningError
{
  store = [(HMDBackingStoreOperation *)self store];
  local = [store local];
  zoneName = [(HMDBackingStoreCacheCreateZoneOperation *)self zoneName];
  v20 = 0;
  v6 = [local _insertZoneWithName:zoneName error:&v20];
  v7 = v20;

  if (v7)
  {
    creationBlock = [(HMDBackingStoreCacheCreateZoneOperation *)self creationBlock];

    if (creationBlock)
    {
      creationBlock2 = [(HMDBackingStoreCacheCreateZoneOperation *)self creationBlock];
      (creationBlock2)[2](creationBlock2, 0, v7);
    }

    v10 = v7;
  }

  else
  {
    v11 = [HMDBackingStoreCacheZone alloc];
    zoneName2 = [(HMDBackingStoreCacheCreateZoneOperation *)self zoneName];
    v13 = [(HMDBackingStoreCacheZone *)v11 initWithZoneID:v6 name:zoneName2];

    store2 = [(HMDBackingStoreOperation *)self store];
    local2 = [store2 local];
    zoneCache = [local2 zoneCache];
    [zoneCache addObject:v13];

    creationBlock3 = [(HMDBackingStoreCacheCreateZoneOperation *)self creationBlock];

    if (creationBlock3)
    {
      creationBlock4 = [(HMDBackingStoreCacheCreateZoneOperation *)self creationBlock];
      (creationBlock4)[2](creationBlock4, v13, 0);
    }
  }

  return v7;
}

- (HMDBackingStoreCacheCreateZoneOperation)initWithZoneName:(id)name creationBlock:(id)block
{
  nameCopy = name;
  blockCopy = block;
  v14.receiver = self;
  v14.super_class = HMDBackingStoreCacheCreateZoneOperation;
  v9 = [(HMDBackingStoreOperation *)&v14 init];
  if (v9)
  {
    v10 = _Block_copy(blockCopy);
    creationBlock = v9->_creationBlock;
    v9->_creationBlock = v10;

    objc_storeStrong(&v9->_zoneName, name);
    v12 = v9;
  }

  return v9;
}

@end