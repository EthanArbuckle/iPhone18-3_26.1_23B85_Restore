@interface HMDBackingStoreCacheFetchRecords
- (HMDBackingStoreCacheFetchRecords)initWithGroup:(id)group parentUuids:(id)uuids fetchResult:(id)result;
- (HMDBackingStoreCacheFetchRecords)initWithGroup:(id)group records:(id)records fetchResult:(id)result;
- (HMDBackingStoreCacheFetchRecords)initWithGroup:(id)group uuids:(id)uuids fetchResult:(id)result;
- (id)mainReturningError;
@end

@implementation HMDBackingStoreCacheFetchRecords

- (id)mainReturningError
{
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
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
  v5 = array;
  v28 = v5;
  v6 = array2;
  v29 = v6;
  v7 = _Block_copy(aBlock);
  uuids = [(HMDBackingStoreCacheFetchRecords *)self uuids];

  if (uuids)
  {
    store = [(HMDBackingStoreOperation *)self store];
    local = [store local];
    group = [(HMDBackingStoreCacheFetchRecords *)self group];
    groupID = [group groupID];
    uuids2 = [(HMDBackingStoreCacheFetchRecords *)self uuids];
    [local _fetchRecordsWithGroupID:groupID uuids:uuids2 callback:v7];
LABEL_5:

    goto LABEL_6;
  }

  recordNames = [(HMDBackingStoreCacheFetchRecords *)self recordNames];

  if (recordNames)
  {
    store = [(HMDBackingStoreOperation *)self store];
    local = [store local];
    group = [(HMDBackingStoreCacheFetchRecords *)self group];
    groupID2 = [group groupID];
    uuids2 = [(HMDBackingStoreCacheFetchRecords *)self recordNames];
    [local _fetchRecordsWithGroupID:groupID2 names:uuids2 callback:v7];
    goto LABEL_5;
  }

  parentUuids = [(HMDBackingStoreCacheFetchRecords *)self parentUuids];
  v21 = [parentUuids copy];
  v22 = MEMORY[0x277CBEBF8];
  while (1)
  {
    store = v21;

    if (![store count])
    {
      break;
    }

    [v6 removeAllObjects];
    store2 = [(HMDBackingStoreOperation *)self store];
    local2 = [store2 local];
    group2 = [(HMDBackingStoreCacheFetchRecords *)self group];
    [local2 _fetchRecordsWithGroupID:objc_msgSend(group2 parentUuids:"groupID") callback:{store, v7}];

    if (v34[5] || ![(HMDBackingStoreCacheFetchRecords *)self recursive])
    {
      break;
    }

    v26 = [v6 count];
    parentUuids = store;
    v21 = v22;
    if (v26)
    {
      v21 = [v6 copy];
      parentUuids = store;
    }
  }

LABEL_6:

  if (v34[5])
  {

    v5 = 0;
  }

  fetchResult = [(HMDBackingStoreCacheFetchRecords *)self fetchResult];

  if (fetchResult)
  {
    fetchResult2 = [(HMDBackingStoreCacheFetchRecords *)self fetchResult];
    (fetchResult2)[2](fetchResult2, v5, v34[5]);
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

- (HMDBackingStoreCacheFetchRecords)initWithGroup:(id)group records:(id)records fetchResult:(id)result
{
  groupCopy = group;
  recordsCopy = records;
  resultCopy = result;
  v18.receiver = self;
  v18.super_class = HMDBackingStoreCacheFetchRecords;
  v12 = [(HMDBackingStoreOperation *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_group, group);
    objc_storeStrong(&v13->_recordNames, records);
    v14 = _Block_copy(resultCopy);
    fetchResult = v13->_fetchResult;
    v13->_fetchResult = v14;

    v16 = v13;
  }

  return v13;
}

- (HMDBackingStoreCacheFetchRecords)initWithGroup:(id)group parentUuids:(id)uuids fetchResult:(id)result
{
  groupCopy = group;
  uuidsCopy = uuids;
  resultCopy = result;
  v18.receiver = self;
  v18.super_class = HMDBackingStoreCacheFetchRecords;
  v12 = [(HMDBackingStoreOperation *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_group, group);
    objc_storeStrong(&v13->_parentUuids, uuids);
    v14 = _Block_copy(resultCopy);
    fetchResult = v13->_fetchResult;
    v13->_fetchResult = v14;

    v16 = v13;
  }

  return v13;
}

- (HMDBackingStoreCacheFetchRecords)initWithGroup:(id)group uuids:(id)uuids fetchResult:(id)result
{
  groupCopy = group;
  uuidsCopy = uuids;
  resultCopy = result;
  v18.receiver = self;
  v18.super_class = HMDBackingStoreCacheFetchRecords;
  v12 = [(HMDBackingStoreOperation *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_group, group);
    objc_storeStrong(&v13->_uuids, uuids);
    v14 = _Block_copy(resultCopy);
    fetchResult = v13->_fetchResult;
    v13->_fetchResult = v14;

    v16 = v13;
  }

  return v13;
}

@end