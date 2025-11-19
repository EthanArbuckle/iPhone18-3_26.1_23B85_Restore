@interface HMDBackingStoreCacheCreateGroupOperation
- (HMDBackingStoreCacheCreateGroupOperation)initWithZone:(id)a3 owner:(id)a4 rootRecord:(id)a5 subscriptionName:(id)a6 subscription:(id)a7 creationBlock:(id)a8;
- (id)mainReturningError;
@end

@implementation HMDBackingStoreCacheCreateGroupOperation

- (id)mainReturningError
{
  v3 = [(HMDBackingStoreCacheCreateGroupOperation *)self record];
  v4 = [v3 zone];

  v5 = [(HMDBackingStoreOperation *)self store];
  v6 = [v5 local];
  v25 = v4;
  v7 = [v4 zoneID];
  v8 = [(HMDBackingStoreCacheCreateGroupOperation *)self record];
  v9 = [v8 rootRecordName];
  v10 = [(HMDBackingStoreCacheCreateGroupOperation *)self record];
  v11 = [v10 owner];
  v12 = [(HMDBackingStoreCacheCreateGroupOperation *)self record];
  v13 = [v12 subscriptionName];
  v26 = 0;
  v24 = [v6 _insertGroupWithZoneID:v7 root:v9 owner:v11 subscription:v13 error:&v26];
  v14 = v26;

  if (v14)
  {
    v15 = v14;
    v16 = v25;
  }

  else
  {
    v17 = [(HMDBackingStoreCacheCreateGroupOperation *)self record];
    [v17 setGroupID:v24];

    v16 = v25;
    v18 = [v25 actualGroups];
    v19 = [(HMDBackingStoreCacheCreateGroupOperation *)self record];
    [v18 addObject:v19];

    v20 = [(HMDBackingStoreCacheCreateGroupOperation *)self creationBlock];

    if (v20)
    {
      v21 = [(HMDBackingStoreCacheCreateGroupOperation *)self creationBlock];
      v22 = [(HMDBackingStoreCacheCreateGroupOperation *)self record];
      (v21)[2](v21, v22, 0);
    }
  }

  return v14;
}

- (HMDBackingStoreCacheCreateGroupOperation)initWithZone:(id)a3 owner:(id)a4 rootRecord:(id)a5 subscriptionName:(id)a6 subscription:(id)a7 creationBlock:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v27.receiver = self;
  v27.super_class = HMDBackingStoreCacheCreateGroupOperation;
  v20 = [(HMDBackingStoreOperation *)&v27 init];
  if (v20)
  {
    v21 = [[HMDBackingStoreCacheGroup alloc] initWithGroupID:0 zone:v14 rootRecord:v16 serverChangeToken:0 subscriptionName:v17 owner:v15 subscription:v18];
    record = v20->_record;
    v20->_record = v21;

    v23 = _Block_copy(v19);
    creationBlock = v20->_creationBlock;
    v20->_creationBlock = v23;

    v25 = v20;
  }

  return v20;
}

@end