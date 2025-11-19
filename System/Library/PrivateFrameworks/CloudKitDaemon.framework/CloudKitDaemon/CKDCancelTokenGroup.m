@interface CKDCancelTokenGroup
- (CKDCancelTokenGroup)init;
- (void)addCancelToken:(id)a3 withOperation:(id)a4;
- (void)cancel;
- (void)removeAllCancelTokens;
- (void)removeCancelToken:(id)a3;
@end

@implementation CKDCancelTokenGroup

- (CKDCancelTokenGroup)init
{
  v6.receiver = self;
  v6.super_class = CKDCancelTokenGroup;
  v2 = [(CKDCancelTokenGroup *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    cancelTokens = v2->_cancelTokens;
    v2->_cancelTokens = v3;
  }

  return v2;
}

- (void)addCancelToken:(id)a3 withOperation:(id)a4
{
  v18 = a3;
  v8 = a4;
  if (v18)
  {
    if (objc_msgSend_isCancelled(v8, v6, v7))
    {
      goto LABEL_4;
    }

    v11 = objc_msgSend_cancelTokens(self, v9, v10);
    objc_sync_enter(v11);
    v14 = objc_msgSend_cancelTokens(self, v12, v13);
    objc_msgSend_addObject_(v14, v15, v18);

    objc_sync_exit(v11);
    if (objc_msgSend_isCancelled(v8, v16, v17))
    {
LABEL_4:
      objc_msgSend_cancel(v18, v9, v10);
    }
  }
}

- (void)removeCancelToken:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v12 = v4;
    v7 = objc_msgSend_cancelTokens(self, v5, v6);
    objc_sync_enter(v7);
    v10 = objc_msgSend_cancelTokens(self, v8, v9);
    objc_msgSend_removeObject_(v10, v11, v12);

    objc_sync_exit(v7);
    v4 = v12;
  }
}

- (void)removeAllCancelTokens
{
  obj = objc_msgSend_cancelTokens(self, a2, v2);
  objc_sync_enter(obj);
  v6 = objc_msgSend_cancelTokens(self, v4, v5);
  objc_msgSend_removeAllObjects(v6, v7, v8);

  objc_sync_exit(obj);
}

- (void)cancel
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_cancelTokens(self, a2, v2);
  objc_sync_enter(v4);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = objc_msgSend_cancelTokens(self, v5, v6, 0);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v20, v24, 16);
  if (v11)
  {
    v12 = *v21;
    do
    {
      v13 = 0;
      do
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v7);
        }

        objc_msgSend_cancel(*(*(&v20 + 1) + 8 * v13++), v9, v10);
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v20, v24, 16);
    }

    while (v11);
  }

  v16 = objc_msgSend_cancelTokens(self, v14, v15);
  objc_msgSend_removeAllObjects(v16, v17, v18);

  objc_sync_exit(v4);
  v19 = *MEMORY[0x277D85DE8];
}

@end