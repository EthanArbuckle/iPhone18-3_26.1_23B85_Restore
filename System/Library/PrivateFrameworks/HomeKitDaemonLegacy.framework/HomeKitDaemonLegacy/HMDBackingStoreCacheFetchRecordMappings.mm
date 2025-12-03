@interface HMDBackingStoreCacheFetchRecordMappings
- (HMDBackingStoreCacheFetchRecordMappings)initWithGroup:(id)group fetchResult:(id)result;
- (id)mainReturningError;
@end

@implementation HMDBackingStoreCacheFetchRecordMappings

- (id)mainReturningError
{
  array = [MEMORY[0x277CBEB18] array];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__16828;
  v25 = __Block_byref_object_dispose__16829;
  v26 = 0;
  objc_initWeak(&location, self);
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __61__HMDBackingStoreCacheFetchRecordMappings_mainReturningError__block_invoke;
  v16 = &unk_279723740;
  objc_copyWeak(&v19, &location);
  v18 = &v21;
  v4 = array;
  v17 = v4;
  v5 = _Block_copy(&v13);
  v6 = [(HMDBackingStoreOperation *)self store:v13];
  local = [v6 local];
  group = [(HMDBackingStoreCacheFetchRecordMappings *)self group];
  [local _fetchRecordMapWithGroupID:objc_msgSend(group callback:{"groupID"), v5}];

  if (v22[5])
  {

    v4 = 0;
  }

  fetchResult = [(HMDBackingStoreCacheFetchRecordMappings *)self fetchResult];

  if (fetchResult)
  {
    fetchResult2 = [(HMDBackingStoreCacheFetchRecordMappings *)self fetchResult];
    (fetchResult2)[2](fetchResult2, v4, v22[5]);
  }

  v11 = v22[5];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v21, 8);

  return v11;
}

BOOL __61__HMDBackingStoreCacheFetchRecordMappings_mainReturningError__block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (v15)
  {
    v17 = *(*(a1 + 40) + 8);
    v18 = v15;
    v19 = *(v17 + 40);
    *(v17 + 40) = v18;
LABEL_5:

    goto LABEL_6;
  }

  if (v11)
  {
    v25 = *(a1 + 32);
    v20 = [HMDBackingStoreCacheFetchRecordMappingResult alloc];
    v19 = [WeakRetained group];
    v21 = [MEMORY[0x277D0F890] hmf_cachedInstanceForNSString:v12];
    v22 = [MEMORY[0x277D0F890] hmf_cachedInstanceForNSString:v13];
    v23 = [(HMDBackingStoreCacheFetchRecordMappingResult *)v20 initWithGroup:v19 recordName:v11 uuid:v21 parentUuid:v22 type:v14];
    [v25 addObject:v23];

    goto LABEL_5;
  }

LABEL_6:

  return v15 != 0;
}

- (HMDBackingStoreCacheFetchRecordMappings)initWithGroup:(id)group fetchResult:(id)result
{
  groupCopy = group;
  resultCopy = result;
  v15.receiver = self;
  v15.super_class = HMDBackingStoreCacheFetchRecordMappings;
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