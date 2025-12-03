@interface HMDBackingStoreCacheFetchModelObjects
- (HMDBackingStoreCacheFetchModelObjects)initWithGroup:(id)group names:(id)names fetchResult:(id)result;
- (HMDBackingStoreCacheFetchModelObjects)initWithGroup:(id)group parent:(id)parent type:(id)type fetchResult:(id)result;
- (HMDBackingStoreCacheFetchModelObjects)initWithGroup:(id)group uuids:(id)uuids fetchResult:(id)result;
- (HMDBackingStoreCacheFetchModelObjects)initWithNames:(id)names fetchResult:(id)result;
- (HMDBackingStoreCacheFetchModelObjects)initWithParent:(id)parent type:(id)type fetchResult:(id)result;
- (HMDBackingStoreCacheFetchModelObjects)initWithUUIDs:(id)ds fetchResult:(id)result;
- (id)mainReturningError;
@end

@implementation HMDBackingStoreCacheFetchModelObjects

- (id)mainReturningError
{
  array = [MEMORY[0x277CBEB18] array];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__23924;
  v28 = __Block_byref_object_dispose__23925;
  v29 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__HMDBackingStoreCacheFetchModelObjects_mainReturningError__block_invoke;
  aBlock[3] = &unk_278671630;
  v23 = &v24;
  aBlock[4] = self;
  v4 = array;
  v22 = v4;
  v5 = _Block_copy(aBlock);
  names = [(HMDBackingStoreCacheFetchModelObjects *)self names];

  if (names)
  {
    store = [(HMDBackingStoreOperation *)self store];
    local = [store local];
    group = [(HMDBackingStoreCacheFetchModelObjects *)self group];
    groupID = [group groupID];
    names2 = [(HMDBackingStoreCacheFetchModelObjects *)self names];
    [local _fetchRecordsWithGroupID:groupID names:names2 callback:v5];
  }

  else
  {
    uuids = [(HMDBackingStoreCacheFetchModelObjects *)self uuids];

    if (uuids)
    {
      store = [(HMDBackingStoreOperation *)self store];
      local = [store local];
      group = [(HMDBackingStoreCacheFetchModelObjects *)self group];
      groupID2 = [group groupID];
      names2 = [(HMDBackingStoreCacheFetchModelObjects *)self uuids];
      [local _fetchRecordsWithGroupID:groupID2 uuids:names2 callback:v5];
    }

    else
    {
      parent = [(HMDBackingStoreCacheFetchModelObjects *)self parent];

      if (!parent)
      {
        goto LABEL_8;
      }

      store = [(HMDBackingStoreOperation *)self store];
      local = [store local];
      group = [(HMDBackingStoreCacheFetchModelObjects *)self group];
      groupID3 = [group groupID];
      names2 = [(HMDBackingStoreCacheFetchModelObjects *)self parent];
      type = [(HMDBackingStoreCacheFetchModelObjects *)self type];
      [local _fetchRecordsWithGroupID:groupID3 parent:names2 type:type callback:v5];
    }
  }

LABEL_8:
  if (v25[5])
  {

    v4 = 0;
  }

  fetchResult = [(HMDBackingStoreCacheFetchModelObjects *)self fetchResult];

  if (fetchResult)
  {
    fetchResult2 = [(HMDBackingStoreCacheFetchModelObjects *)self fetchResult];
    (fetchResult2)[2](fetchResult2, v4, v25[5]);
  }

  v19 = v25[5];

  _Block_object_dispose(&v24, 8);

  return v19;
}

BOOL __59__HMDBackingStoreCacheFetchModelObjects_mainReturningError__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v33 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v14)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a6);
    v15 = 0;
  }

  else
  {
    v15 = 0;
    if (v11 && a3 && v12 && v13)
    {
      v16 = [HMDBackingStoreCacheFetchModelObjectResult alloc];
      v17 = *(*(a1 + 48) + 8);
      obj = *(v17 + 40);
      v18 = [(HMDBackingStoreCacheFetchModelObjectResult *)v16 initWithRecord:v11 data:v12 encoding:a3 error:&obj];
      objc_storeStrong((v17 + 40), obj);
      v19 = *(*(*(a1 + 48) + 8) + 40);
      v15 = v19 == 0;
      if (v19)
      {
        v20 = objc_autoreleasePoolPush();
        v21 = *(a1 + 32);
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          HMFGetLogIdentifier();
          v23 = v27 = v20;
          v24 = *(*(*(a1 + 48) + 8) + 40);
          *buf = 138543618;
          v30 = v23;
          v31 = 2112;
          v32 = v24;
          _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@unable to decode result (%@)", buf, 0x16u);

          v20 = v27;
        }

        objc_autoreleasePoolPop(v20);
      }

      else if (v18)
      {
        [*(a1 + 40) addObject:v18];
      }
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return v15;
}

- (HMDBackingStoreCacheFetchModelObjects)initWithGroup:(id)group parent:(id)parent type:(id)type fetchResult:(id)result
{
  groupCopy = group;
  parentCopy = parent;
  resultCopy = result;
  v19.receiver = self;
  v19.super_class = HMDBackingStoreCacheFetchModelObjects;
  v13 = [(HMDBackingStoreOperation *)&v19 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_group, group);
    v15 = _Block_copy(resultCopy);
    fetchResult = v14->_fetchResult;
    v14->_fetchResult = v15;

    objc_storeStrong(&v14->_parent, parent);
    v17 = v14;
  }

  return v14;
}

- (HMDBackingStoreCacheFetchModelObjects)initWithParent:(id)parent type:(id)type fetchResult:(id)result
{
  parentCopy = parent;
  resultCopy = result;
  v15.receiver = self;
  v15.super_class = HMDBackingStoreCacheFetchModelObjects;
  v10 = [(HMDBackingStoreOperation *)&v15 init];
  if (v10)
  {
    v11 = _Block_copy(resultCopy);
    fetchResult = v10->_fetchResult;
    v10->_fetchResult = v11;

    objc_storeStrong(&v10->_parent, parent);
    v13 = v10;
  }

  return v10;
}

- (HMDBackingStoreCacheFetchModelObjects)initWithGroup:(id)group names:(id)names fetchResult:(id)result
{
  groupCopy = group;
  namesCopy = names;
  resultCopy = result;
  v18.receiver = self;
  v18.super_class = HMDBackingStoreCacheFetchModelObjects;
  v12 = [(HMDBackingStoreOperation *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_group, group);
    v14 = _Block_copy(resultCopy);
    fetchResult = v13->_fetchResult;
    v13->_fetchResult = v14;

    objc_storeStrong(&v13->_names, names);
    v16 = v13;
  }

  return v13;
}

- (HMDBackingStoreCacheFetchModelObjects)initWithNames:(id)names fetchResult:(id)result
{
  namesCopy = names;
  resultCopy = result;
  v14.receiver = self;
  v14.super_class = HMDBackingStoreCacheFetchModelObjects;
  v9 = [(HMDBackingStoreOperation *)&v14 init];
  if (v9)
  {
    v10 = _Block_copy(resultCopy);
    fetchResult = v9->_fetchResult;
    v9->_fetchResult = v10;

    objc_storeStrong(&v9->_names, names);
    v12 = v9;
  }

  return v9;
}

- (HMDBackingStoreCacheFetchModelObjects)initWithGroup:(id)group uuids:(id)uuids fetchResult:(id)result
{
  groupCopy = group;
  uuidsCopy = uuids;
  resultCopy = result;
  v18.receiver = self;
  v18.super_class = HMDBackingStoreCacheFetchModelObjects;
  v12 = [(HMDBackingStoreOperation *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_group, group);
    v14 = _Block_copy(resultCopy);
    fetchResult = v13->_fetchResult;
    v13->_fetchResult = v14;

    objc_storeStrong(&v13->_uuids, uuids);
    v16 = v13;
  }

  return v13;
}

- (HMDBackingStoreCacheFetchModelObjects)initWithUUIDs:(id)ds fetchResult:(id)result
{
  dsCopy = ds;
  resultCopy = result;
  v14.receiver = self;
  v14.super_class = HMDBackingStoreCacheFetchModelObjects;
  v9 = [(HMDBackingStoreOperation *)&v14 init];
  if (v9)
  {
    v10 = _Block_copy(resultCopy);
    fetchResult = v9->_fetchResult;
    v9->_fetchResult = v10;

    objc_storeStrong(&v9->_uuids, ds);
    v12 = v9;
  }

  return v9;
}

@end