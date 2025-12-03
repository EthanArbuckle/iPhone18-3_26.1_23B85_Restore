@interface HMDBackingStoreCacheFetchGroupInformation
- (HMDBackingStoreCacheFetchGroupInformation)initWithGroup:(id)group fetchResult:(id)result;
- (id)mainReturningError;
@end

@implementation HMDBackingStoreCacheFetchGroupInformation

- (id)mainReturningError
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__16828;
  v16 = __Block_byref_object_dispose__16829;
  v17 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __63__HMDBackingStoreCacheFetchGroupInformation_mainReturningError__block_invoke;
  v11[3] = &unk_2797236F0;
  v11[4] = &v12;
  v11[5] = &v18;
  v3 = _Block_copy(v11);
  store = [(HMDBackingStoreOperation *)self store];
  local = [store local];
  group = [(HMDBackingStoreCacheFetchGroupInformation *)self group];
  [local _fetchRecordCountWithGroupID:objc_msgSend(group callback:{"groupID"), v3}];

  fetchResult = [(HMDBackingStoreCacheFetchGroupInformation *)self fetchResult];

  if (fetchResult)
  {
    fetchResult2 = [(HMDBackingStoreCacheFetchGroupInformation *)self fetchResult];
    fetchResult2[2](fetchResult2, v19[3], v13[5]);
  }

  v9 = v13[5];

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);

  return v9;
}

BOOL __63__HMDBackingStoreCacheFetchGroupInformation_mainReturningError__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }

  return v6 == 0;
}

- (HMDBackingStoreCacheFetchGroupInformation)initWithGroup:(id)group fetchResult:(id)result
{
  groupCopy = group;
  resultCopy = result;
  v15.receiver = self;
  v15.super_class = HMDBackingStoreCacheFetchGroupInformation;
  v9 = [(HMDBackingStoreOperation *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_group, group);
    v11 = _Block_copy(resultCopy);
    fetchResult = v10->_fetchResult;
    v10->_fetchResult = v11;

    v13 = v10;
  }

  return v10;
}

@end