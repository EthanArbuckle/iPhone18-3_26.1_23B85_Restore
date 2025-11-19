@interface HMDBackingStoreCacheFetchModelObjects
- (HMDBackingStoreCacheFetchModelObjects)initWithGroup:(id)a3 names:(id)a4 fetchResult:(id)a5;
- (HMDBackingStoreCacheFetchModelObjects)initWithGroup:(id)a3 parent:(id)a4 type:(id)a5 fetchResult:(id)a6;
- (HMDBackingStoreCacheFetchModelObjects)initWithGroup:(id)a3 uuids:(id)a4 fetchResult:(id)a5;
- (HMDBackingStoreCacheFetchModelObjects)initWithNames:(id)a3 fetchResult:(id)a4;
- (HMDBackingStoreCacheFetchModelObjects)initWithParent:(id)a3 type:(id)a4 fetchResult:(id)a5;
- (HMDBackingStoreCacheFetchModelObjects)initWithUUIDs:(id)a3 fetchResult:(id)a4;
- (id)mainReturningError;
@end

@implementation HMDBackingStoreCacheFetchModelObjects

- (id)mainReturningError
{
  v3 = [MEMORY[0x277CBEB18] array];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__16828;
  v28 = __Block_byref_object_dispose__16829;
  v29 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__HMDBackingStoreCacheFetchModelObjects_mainReturningError__block_invoke;
  aBlock[3] = &unk_279730F18;
  v23 = &v24;
  aBlock[4] = self;
  v4 = v3;
  v22 = v4;
  v5 = _Block_copy(aBlock);
  v6 = [(HMDBackingStoreCacheFetchModelObjects *)self names];

  if (v6)
  {
    v7 = [(HMDBackingStoreOperation *)self store];
    v8 = [v7 local];
    v9 = [(HMDBackingStoreCacheFetchModelObjects *)self group];
    v10 = [v9 groupID];
    v11 = [(HMDBackingStoreCacheFetchModelObjects *)self names];
    [v8 _fetchRecordsWithGroupID:v10 names:v11 callback:v5];
  }

  else
  {
    v12 = [(HMDBackingStoreCacheFetchModelObjects *)self uuids];

    if (v12)
    {
      v7 = [(HMDBackingStoreOperation *)self store];
      v8 = [v7 local];
      v9 = [(HMDBackingStoreCacheFetchModelObjects *)self group];
      v13 = [v9 groupID];
      v11 = [(HMDBackingStoreCacheFetchModelObjects *)self uuids];
      [v8 _fetchRecordsWithGroupID:v13 uuids:v11 callback:v5];
    }

    else
    {
      v14 = [(HMDBackingStoreCacheFetchModelObjects *)self parent];

      if (!v14)
      {
        goto LABEL_8;
      }

      v7 = [(HMDBackingStoreOperation *)self store];
      v8 = [v7 local];
      v9 = [(HMDBackingStoreCacheFetchModelObjects *)self group];
      v15 = [v9 groupID];
      v11 = [(HMDBackingStoreCacheFetchModelObjects *)self parent];
      v16 = [(HMDBackingStoreCacheFetchModelObjects *)self type];
      [v8 _fetchRecordsWithGroupID:v15 parent:v11 type:v16 callback:v5];
    }
  }

LABEL_8:
  if (v25[5])
  {

    v4 = 0;
  }

  v17 = [(HMDBackingStoreCacheFetchModelObjects *)self fetchResult];

  if (v17)
  {
    v18 = [(HMDBackingStoreCacheFetchModelObjects *)self fetchResult];
    (v18)[2](v18, v4, v25[5]);
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
          _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@unable to decode result (%@)", buf, 0x16u);

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

- (HMDBackingStoreCacheFetchModelObjects)initWithGroup:(id)a3 parent:(id)a4 type:(id)a5 fetchResult:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v19.receiver = self;
  v19.super_class = HMDBackingStoreCacheFetchModelObjects;
  v13 = [(HMDBackingStoreOperation *)&v19 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_group, a3);
    v15 = _Block_copy(v12);
    fetchResult = v14->_fetchResult;
    v14->_fetchResult = v15;

    objc_storeStrong(&v14->_parent, a4);
    v17 = v14;
  }

  return v14;
}

- (HMDBackingStoreCacheFetchModelObjects)initWithParent:(id)a3 type:(id)a4 fetchResult:(id)a5
{
  v8 = a3;
  v9 = a5;
  v15.receiver = self;
  v15.super_class = HMDBackingStoreCacheFetchModelObjects;
  v10 = [(HMDBackingStoreOperation *)&v15 init];
  if (v10)
  {
    v11 = _Block_copy(v9);
    fetchResult = v10->_fetchResult;
    v10->_fetchResult = v11;

    objc_storeStrong(&v10->_parent, a3);
    v13 = v10;
  }

  return v10;
}

- (HMDBackingStoreCacheFetchModelObjects)initWithGroup:(id)a3 names:(id)a4 fetchResult:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = HMDBackingStoreCacheFetchModelObjects;
  v12 = [(HMDBackingStoreOperation *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_group, a3);
    v14 = _Block_copy(v11);
    fetchResult = v13->_fetchResult;
    v13->_fetchResult = v14;

    objc_storeStrong(&v13->_names, a4);
    v16 = v13;
  }

  return v13;
}

- (HMDBackingStoreCacheFetchModelObjects)initWithNames:(id)a3 fetchResult:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = HMDBackingStoreCacheFetchModelObjects;
  v9 = [(HMDBackingStoreOperation *)&v14 init];
  if (v9)
  {
    v10 = _Block_copy(v8);
    fetchResult = v9->_fetchResult;
    v9->_fetchResult = v10;

    objc_storeStrong(&v9->_names, a3);
    v12 = v9;
  }

  return v9;
}

- (HMDBackingStoreCacheFetchModelObjects)initWithGroup:(id)a3 uuids:(id)a4 fetchResult:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = HMDBackingStoreCacheFetchModelObjects;
  v12 = [(HMDBackingStoreOperation *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_group, a3);
    v14 = _Block_copy(v11);
    fetchResult = v13->_fetchResult;
    v13->_fetchResult = v14;

    objc_storeStrong(&v13->_uuids, a4);
    v16 = v13;
  }

  return v13;
}

- (HMDBackingStoreCacheFetchModelObjects)initWithUUIDs:(id)a3 fetchResult:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = HMDBackingStoreCacheFetchModelObjects;
  v9 = [(HMDBackingStoreOperation *)&v14 init];
  if (v9)
  {
    v10 = _Block_copy(v8);
    fetchResult = v9->_fetchResult;
    v9->_fetchResult = v10;

    objc_storeStrong(&v9->_uuids, a3);
    v12 = v9;
  }

  return v9;
}

@end