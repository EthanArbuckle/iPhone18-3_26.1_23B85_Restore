@interface LBFBucket
- (LBFBucket)initWithInterval:(id)a3 endTimestamp:(id)a4 index:(unint64_t)a5;
- (id)flattenEvents;
@end

@implementation LBFBucket

- (LBFBucket)initWithInterval:(id)a3 endTimestamp:(id)a4 index:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v16.receiver = self;
  v16.super_class = LBFBucket;
  v11 = [(LBFBucket *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_startTime, a3);
    objc_storeStrong(&v12->_endTime, a4);
    v12->_bucketIndex = a5;
    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    eventTree = v12->_eventTree;
    v12->_eventTree = v13;
  }

  return v12;
}

- (id)flattenEvents
{
  v70 = *MEMORY[0x277D85DE8];
  v57 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = objc_msgSend_allKeys(self->_eventTree, v2, v3, v4, v5);
  v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v64, v69, 16);
  if (v58)
  {
    v55 = *v65;
    do
    {
      for (i = 0; i != v58; ++i)
      {
        if (*v65 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v59 = *(*(&v64 + 1) + 8 * i);
        v11 = objc_msgSend_objectForKey_(self->_eventTree, v7, v59, v8, v9);
        v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v17 = objc_msgSend_deploymentEventsHolders(v11, v13, v14, v15, v16);
        v22 = objc_msgSend_allKeys(v17, v18, v19, v20, v21);

        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v60, v68, 16);
        if (v24)
        {
          v29 = v24;
          v30 = *v61;
          do
          {
            for (j = 0; j != v29; ++j)
            {
              if (*v61 != v30)
              {
                objc_enumerationMutation(v22);
              }

              v32 = *(*(&v60 + 1) + 8 * j);
              v33 = objc_msgSend_deploymentEventsHolders(v11, v25, v26, v27, v28);
              v37 = objc_msgSend_objectForKey_(v33, v34, v32, v35, v36);

              v42 = objc_msgSend_getSortedEvents(v37, v38, v39, v40, v41);
              objc_msgSend_setObject_forKey_(v12, v43, v42, v32, v44);
            }

            v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v25, &v60, v68, 16);
          }

          while (v29);
        }

        objc_msgSend_setObject_forKey_(v57, v45, v12, v59, v46);
      }

      v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v64, v69, 16);
    }

    while (v58);
  }

  v51 = objc_msgSend_copy(v57, v47, v48, v49, v50);
  v52 = *MEMORY[0x277D85DE8];

  return v51;
}

@end