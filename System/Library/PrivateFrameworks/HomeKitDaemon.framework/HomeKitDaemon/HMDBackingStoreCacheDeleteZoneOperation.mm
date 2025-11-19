@interface HMDBackingStoreCacheDeleteZoneOperation
- (HMDBackingStoreCacheDeleteZoneOperation)initWithZone:(id)a3 resultBlock:(id)a4;
- (id)mainReturningError;
@end

@implementation HMDBackingStoreCacheDeleteZoneOperation

- (id)mainReturningError
{
  v72 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v64 = 0;
  v65 = &v64;
  v66 = 0x3032000000;
  v67 = __Block_byref_object_copy__23924;
  v68 = __Block_byref_object_dispose__23925;
  v69 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__HMDBackingStoreCacheDeleteZoneOperation_mainReturningError__block_invoke;
  aBlock[3] = &unk_2786715B8;
  v63 = &v64;
  v51 = v3;
  v62 = v51;
  v50 = _Block_copy(aBlock);
  v4 = [(HMDBackingStoreOperation *)self store];
  v5 = [v4 local];
  v6 = [v5 _begin];
  v7 = v65[5];
  v65[5] = v6;

  if (v65[5])
  {
    v8 = [(HMDBackingStoreOperation *)self store];
    v9 = [v8 local];
    [v9 _rollback];
  }

  else
  {
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v11 = [(HMDBackingStoreCacheDeleteZoneOperation *)self zone];
    obj = [v11 groups];

    v48 = [obj countByEnumeratingWithState:&v57 objects:v71 count:16];
    if (v48)
    {
      v49 = *v58;
      while (2)
      {
        for (i = 0; i != v48; ++i)
        {
          if (*v58 != v49)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v57 + 1) + 8 * i);
          [v51 removeAllObjects];
          v13 = [(HMDBackingStoreOperation *)self store];
          v14 = [v13 local];
          [v14 _fetchRecordsWithGroupID:objc_msgSend(v12 callback:{"groupID"), v50}];

          if (v65[5])
          {
            goto LABEL_24;
          }

          v55 = 0u;
          v56 = 0u;
          v53 = 0u;
          v54 = 0u;
          v15 = v51;
          v16 = [v15 countByEnumeratingWithState:&v53 objects:v70 count:16];
          if (v16)
          {
            v17 = *v54;
LABEL_12:
            v18 = 0;
            while (1)
            {
              if (*v54 != v17)
              {
                objc_enumerationMutation(v15);
              }

              v19 = *(*(&v53 + 1) + 8 * v18);
              v20 = [(HMDBackingStoreOperation *)self store];
              v21 = [v20 local];
              v22 = [v21 _deleteRecordWithGroupID:objc_msgSend(v12 recordName:{"groupID"), v19}];
              v23 = v65[5];
              v65[5] = v22;

              if (v65[5])
              {
                break;
              }

              if (v16 == ++v18)
              {
                v16 = [v15 countByEnumeratingWithState:&v53 objects:v70 count:16];
                if (v16)
                {
                  goto LABEL_12;
                }

                break;
              }
            }
          }

          if (v65[5])
          {
            goto LABEL_24;
          }

          v24 = [(HMDBackingStoreOperation *)self store];
          v25 = [v24 local];
          v26 = [v25 _deleteGroupWithID:{objc_msgSend(v12, "groupID")}];
          v27 = v65[5];
          v65[5] = v26;

          if (v65[5])
          {
LABEL_24:
            v35 = [(HMDBackingStoreOperation *)self store];
            v36 = [v35 local];
            [v36 _rollback];

            v10 = v65[5];
            goto LABEL_25;
          }
        }

        v48 = [obj countByEnumeratingWithState:&v57 objects:v71 count:16];
        if (v48)
        {
          continue;
        }

        break;
      }
    }

    v28 = [(HMDBackingStoreOperation *)self store];
    v29 = [v28 local];
    v30 = [(HMDBackingStoreCacheDeleteZoneOperation *)self zone];
    v31 = [v29 _deleteZoneWithID:{objc_msgSend(v30, "zoneID")}];
    v32 = v65[5];
    v65[5] = v31;

    if (v65[5])
    {
      v33 = [(HMDBackingStoreOperation *)self store];
      v34 = [v33 local];
      [v34 _rollback];
    }

    else
    {
      v39 = [(HMDBackingStoreOperation *)self store];
      v40 = [v39 local];
      v41 = [v40 _commit];
      v42 = v65[5];
      v65[5] = v41;

      if (v65[5])
      {
        v43 = [(HMDBackingStoreOperation *)self store];
        v44 = [v43 local];
        [v44 _rollback];
      }

      else
      {
        v43 = [(HMDBackingStoreOperation *)self store];
        v44 = [v43 local];
        v45 = [v44 zoneCache];
        v46 = [(HMDBackingStoreCacheDeleteZoneOperation *)self zone];
        [v45 removeObject:v46];
      }
    }
  }

  v10 = v65[5];
LABEL_25:

  _Block_object_dispose(&v64, 8);
  v37 = *MEMORY[0x277D85DE8];

  return v10;
}

uint64_t __61__HMDBackingStoreCacheDeleteZoneOperation_mainReturningError__block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10)
{
  v16 = a2;
  v17 = a3;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v24 = *(*(a1 + 40) + 8);
  if (v23 || *(v24 + 40))
  {
    objc_storeStrong((v24 + 40), a10);
    v25 = 0;
  }

  else
  {
    if (v16)
    {
      [*(a1 + 32) addObject:v16];
    }

    v25 = 1;
  }

  return v25;
}

- (HMDBackingStoreCacheDeleteZoneOperation)initWithZone:(id)a3 resultBlock:(id)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = HMDBackingStoreCacheDeleteZoneOperation;
  v8 = [(HMDBackingStoreOperation *)&v12 initWithResultBlock:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_zone, a3);
    v10 = v9;
  }

  return v9;
}

@end