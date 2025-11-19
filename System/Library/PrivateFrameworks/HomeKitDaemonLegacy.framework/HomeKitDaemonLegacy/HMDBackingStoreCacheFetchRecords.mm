@interface HMDBackingStoreCacheFetchRecords
- (HMDBackingStoreCacheFetchRecords)initWithGroup:(id)a3 parentUuids:(id)a4 fetchResult:(id)a5;
- (HMDBackingStoreCacheFetchRecords)initWithGroup:(id)a3 records:(id)a4 fetchResult:(id)a5;
- (HMDBackingStoreCacheFetchRecords)initWithGroup:(id)a3 uuids:(id)a4 fetchResult:(id)a5;
- (id)mainReturningError;
@end

@implementation HMDBackingStoreCacheFetchRecords

- (id)mainReturningError
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [MEMORY[0x277CBEB18] array];
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__16828;
  v37 = __Block_byref_object_dispose__16829;
  v38 = 0;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__HMDBackingStoreCacheFetchRecords_mainReturningError__block_invoke;
  aBlock[3] = &unk_279723718;
  objc_copyWeak(&v31, &location);
  v30 = &v33;
  v5 = v3;
  v28 = v5;
  v6 = v4;
  v29 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [(HMDBackingStoreCacheFetchRecords *)self uuids];

  if (v8)
  {
    v9 = [(HMDBackingStoreOperation *)self store];
    v10 = [v9 local];
    v11 = [(HMDBackingStoreCacheFetchRecords *)self group];
    v12 = [v11 groupID];
    v13 = [(HMDBackingStoreCacheFetchRecords *)self uuids];
    [v10 _fetchRecordsWithGroupID:v12 uuids:v13 callback:v7];
LABEL_5:

    goto LABEL_6;
  }

  v14 = [(HMDBackingStoreCacheFetchRecords *)self recordNames];

  if (v14)
  {
    v9 = [(HMDBackingStoreOperation *)self store];
    v10 = [v9 local];
    v11 = [(HMDBackingStoreCacheFetchRecords *)self group];
    v15 = [v11 groupID];
    v13 = [(HMDBackingStoreCacheFetchRecords *)self recordNames];
    [v10 _fetchRecordsWithGroupID:v15 names:v13 callback:v7];
    goto LABEL_5;
  }

  v20 = [(HMDBackingStoreCacheFetchRecords *)self parentUuids];
  v21 = [v20 copy];
  v22 = MEMORY[0x277CBEBF8];
  while (1)
  {
    v9 = v21;

    if (![v9 count])
    {
      break;
    }

    [v6 removeAllObjects];
    v23 = [(HMDBackingStoreOperation *)self store];
    v24 = [v23 local];
    v25 = [(HMDBackingStoreCacheFetchRecords *)self group];
    [v24 _fetchRecordsWithGroupID:objc_msgSend(v25 parentUuids:"groupID") callback:{v9, v7}];

    if (v34[5] || ![(HMDBackingStoreCacheFetchRecords *)self recursive])
    {
      break;
    }

    v26 = [v6 count];
    v20 = v9;
    v21 = v22;
    if (v26)
    {
      v21 = [v6 copy];
      v20 = v9;
    }
  }

LABEL_6:

  if (v34[5])
  {

    v5 = 0;
  }

  v16 = [(HMDBackingStoreCacheFetchRecords *)self fetchResult];

  if (v16)
  {
    v17 = [(HMDBackingStoreCacheFetchRecords *)self fetchResult];
    (v17)[2](v17, v5, v34[5]);
  }

  v18 = v34[5];

  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v33, 8);

  return v18;
}

BOOL __54__HMDBackingStoreCacheFetchRecords_mainReturningError__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (v14)
  {
    v16 = *(*(a1 + 48) + 8);
    v17 = v14;
    v18 = *(v16 + 40);
    *(v16 + 40) = v17;
  }

  else
  {
    v28 = v11;
    v18 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v11 error:0];
    v19 = [MEMORY[0x277D0F890] hmf_cachedInstanceForNSString:v13];
    v27 = *(a1 + 32);
    v20 = [HMDBackingStoreCacheFetchRecordResult alloc];
    v21 = [WeakRetained group];
    v22 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithCoder:v18];
    v23 = a3;
    v24 = v22;
    v25 = [(HMDBackingStoreCacheFetchRecordResult *)v20 initWithGroup:v21 record:v22 data:v12 encoding:v23 uuid:v19];
    [v27 addObject:v25];

    if (v19)
    {
      [*(a1 + 40) addObject:v19];
    }

    v11 = v28;
  }

  return v14 == 0;
}

- (HMDBackingStoreCacheFetchRecords)initWithGroup:(id)a3 records:(id)a4 fetchResult:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = HMDBackingStoreCacheFetchRecords;
  v12 = [(HMDBackingStoreOperation *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_group, a3);
    objc_storeStrong(&v13->_recordNames, a4);
    v14 = _Block_copy(v11);
    fetchResult = v13->_fetchResult;
    v13->_fetchResult = v14;

    v16 = v13;
  }

  return v13;
}

- (HMDBackingStoreCacheFetchRecords)initWithGroup:(id)a3 parentUuids:(id)a4 fetchResult:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = HMDBackingStoreCacheFetchRecords;
  v12 = [(HMDBackingStoreOperation *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_group, a3);
    objc_storeStrong(&v13->_parentUuids, a4);
    v14 = _Block_copy(v11);
    fetchResult = v13->_fetchResult;
    v13->_fetchResult = v14;

    v16 = v13;
  }

  return v13;
}

- (HMDBackingStoreCacheFetchRecords)initWithGroup:(id)a3 uuids:(id)a4 fetchResult:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = HMDBackingStoreCacheFetchRecords;
  v12 = [(HMDBackingStoreOperation *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_group, a3);
    objc_storeStrong(&v13->_uuids, a4);
    v14 = _Block_copy(v11);
    fetchResult = v13->_fetchResult;
    v13->_fetchResult = v14;

    v16 = v13;
  }

  return v13;
}

@end