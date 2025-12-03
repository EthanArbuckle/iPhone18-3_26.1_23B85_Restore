@interface HMDBackingStoreCacheDeleteZoneOperation
- (HMDBackingStoreCacheDeleteZoneOperation)initWithZone:(id)zone resultBlock:(id)block;
- (id)mainReturningError;
@end

@implementation HMDBackingStoreCacheDeleteZoneOperation

- (id)mainReturningError
{
  v72 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v64 = 0;
  v65 = &v64;
  v66 = 0x3032000000;
  v67 = __Block_byref_object_copy__16828;
  v68 = __Block_byref_object_dispose__16829;
  v69 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__HMDBackingStoreCacheDeleteZoneOperation_mainReturningError__block_invoke;
  aBlock[3] = &unk_2797236C8;
  v63 = &v64;
  v51 = array;
  v62 = v51;
  v50 = _Block_copy(aBlock);
  store = [(HMDBackingStoreOperation *)self store];
  local = [store local];
  _begin = [local _begin];
  v7 = v65[5];
  v65[5] = _begin;

  if (v65[5])
  {
    store2 = [(HMDBackingStoreOperation *)self store];
    local2 = [store2 local];
    [local2 _rollback];
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
          store3 = [(HMDBackingStoreOperation *)self store];
          local3 = [store3 local];
          [local3 _fetchRecordsWithGroupID:objc_msgSend(v12 callback:{"groupID"), v50}];

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
              store4 = [(HMDBackingStoreOperation *)self store];
              local4 = [store4 local];
              v22 = [local4 _deleteRecordWithGroupID:objc_msgSend(v12 recordName:{"groupID"), v19}];
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

          store5 = [(HMDBackingStoreOperation *)self store];
          local5 = [store5 local];
          v26 = [local5 _deleteGroupWithID:{objc_msgSend(v12, "groupID")}];
          v27 = v65[5];
          v65[5] = v26;

          if (v65[5])
          {
LABEL_24:
            store6 = [(HMDBackingStoreOperation *)self store];
            local6 = [store6 local];
            [local6 _rollback];

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

    store7 = [(HMDBackingStoreOperation *)self store];
    local7 = [store7 local];
    v30 = [(HMDBackingStoreCacheDeleteZoneOperation *)self zone];
    v31 = [local7 _deleteZoneWithID:{objc_msgSend(v30, "zoneID")}];
    v32 = v65[5];
    v65[5] = v31;

    if (v65[5])
    {
      store8 = [(HMDBackingStoreOperation *)self store];
      local8 = [store8 local];
      [local8 _rollback];
    }

    else
    {
      store9 = [(HMDBackingStoreOperation *)self store];
      local9 = [store9 local];
      _commit = [local9 _commit];
      v42 = v65[5];
      v65[5] = _commit;

      if (v65[5])
      {
        store10 = [(HMDBackingStoreOperation *)self store];
        local10 = [store10 local];
        [local10 _rollback];
      }

      else
      {
        store10 = [(HMDBackingStoreOperation *)self store];
        local10 = [store10 local];
        zoneCache = [local10 zoneCache];
        v46 = [(HMDBackingStoreCacheDeleteZoneOperation *)self zone];
        [zoneCache removeObject:v46];
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

- (HMDBackingStoreCacheDeleteZoneOperation)initWithZone:(id)zone resultBlock:(id)block
{
  zoneCopy = zone;
  v12.receiver = self;
  v12.super_class = HMDBackingStoreCacheDeleteZoneOperation;
  v8 = [(HMDBackingStoreOperation *)&v12 initWithResultBlock:block];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_zone, zone);
    v10 = v9;
  }

  return v9;
}

@end