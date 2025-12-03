@interface HMDBackingStoreCacheCreateGroupOperation
- (HMDBackingStoreCacheCreateGroupOperation)initWithZone:(id)zone owner:(id)owner rootRecord:(id)record subscriptionName:(id)name subscription:(id)subscription creationBlock:(id)block;
- (id)mainReturningError;
@end

@implementation HMDBackingStoreCacheCreateGroupOperation

- (id)mainReturningError
{
  record = [(HMDBackingStoreCacheCreateGroupOperation *)self record];
  v4 = [record zone];

  store = [(HMDBackingStoreOperation *)self store];
  local = [store local];
  v25 = v4;
  zoneID = [v4 zoneID];
  record2 = [(HMDBackingStoreCacheCreateGroupOperation *)self record];
  rootRecordName = [record2 rootRecordName];
  record3 = [(HMDBackingStoreCacheCreateGroupOperation *)self record];
  owner = [record3 owner];
  record4 = [(HMDBackingStoreCacheCreateGroupOperation *)self record];
  subscriptionName = [record4 subscriptionName];
  v26 = 0;
  v24 = [local _insertGroupWithZoneID:zoneID root:rootRecordName owner:owner subscription:subscriptionName error:&v26];
  v14 = v26;

  if (v14)
  {
    v15 = v14;
    v16 = v25;
  }

  else
  {
    record5 = [(HMDBackingStoreCacheCreateGroupOperation *)self record];
    [record5 setGroupID:v24];

    v16 = v25;
    actualGroups = [v25 actualGroups];
    record6 = [(HMDBackingStoreCacheCreateGroupOperation *)self record];
    [actualGroups addObject:record6];

    creationBlock = [(HMDBackingStoreCacheCreateGroupOperation *)self creationBlock];

    if (creationBlock)
    {
      creationBlock2 = [(HMDBackingStoreCacheCreateGroupOperation *)self creationBlock];
      record7 = [(HMDBackingStoreCacheCreateGroupOperation *)self record];
      (creationBlock2)[2](creationBlock2, record7, 0);
    }
  }

  return v14;
}

- (HMDBackingStoreCacheCreateGroupOperation)initWithZone:(id)zone owner:(id)owner rootRecord:(id)record subscriptionName:(id)name subscription:(id)subscription creationBlock:(id)block
{
  zoneCopy = zone;
  ownerCopy = owner;
  recordCopy = record;
  nameCopy = name;
  subscriptionCopy = subscription;
  blockCopy = block;
  v27.receiver = self;
  v27.super_class = HMDBackingStoreCacheCreateGroupOperation;
  v20 = [(HMDBackingStoreOperation *)&v27 init];
  if (v20)
  {
    v21 = [[HMDBackingStoreCacheGroup alloc] initWithGroupID:0 zone:zoneCopy rootRecord:recordCopy serverChangeToken:0 subscriptionName:nameCopy owner:ownerCopy subscription:subscriptionCopy];
    record = v20->_record;
    v20->_record = v21;

    v23 = _Block_copy(blockCopy);
    creationBlock = v20->_creationBlock;
    v20->_creationBlock = v23;

    v25 = v20;
  }

  return v20;
}

@end