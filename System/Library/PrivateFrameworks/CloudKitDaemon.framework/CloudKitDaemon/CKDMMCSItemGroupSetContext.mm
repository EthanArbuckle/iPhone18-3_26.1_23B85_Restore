@interface CKDMMCSItemGroupSetContext
- (CKDMMCSItemGroupSetContext)initWithItemGroupSet:(id)a3 itemGroupSetCompletionBlock:(id)a4;
- (CKDOperation)operation;
- (void)addItemGroupContext:(id)a3;
- (void)cancel;
- (void)start;
@end

@implementation CKDMMCSItemGroupSetContext

- (CKDMMCSItemGroupSetContext)initWithItemGroupSet:(id)a3 itemGroupSetCompletionBlock:(id)a4
{
  v7 = a3;
  v8 = a4;
  v23.receiver = self;
  v23.super_class = CKDMMCSItemGroupSetContext;
  v9 = [(CKDMMCSItemGroupSetContext *)&v23 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_itemGroupSet, a3);
    v11 = objc_opt_new();
    itemGroupContexts = v10->_itemGroupContexts;
    v10->_itemGroupContexts = v11;

    v13 = _Block_copy(v8);
    itemGroupSetCompletionBlock = v10->_itemGroupSetCompletionBlock;
    v10->_itemGroupSetCompletionBlock = v13;

    v15 = dispatch_group_create();
    itemGroupSetCompletionGroup = v10->_itemGroupSetCompletionGroup;
    v10->_itemGroupSetCompletionGroup = v15;

    objc_initWeak(&location, v10);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_22513F868;
    v20[3] = &unk_2785466E0;
    objc_copyWeak(&v21, &location);
    v17 = _Block_copy(v20);
    itemGroupCompletionBlock = v10->_itemGroupCompletionBlock;
    v10->_itemGroupCompletionBlock = v17;

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v10;
}

- (void)cancel
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = objc_msgSend_itemGroupContexts(self, a2, v2, 0);
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v12, v16, 16);
  if (v5)
  {
    v8 = v5;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v3);
        }

        objc_msgSend_cancel(*(*(&v12 + 1) + 8 * v10++), v6, v7);
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v12, v16, 16);
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)addItemGroupContext:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_mmcsOperationType(self, v5, v6);
  objc_msgSend_setMmcsOperationType_(v4, v8, v7);
  v12 = objc_msgSend_itemGroupContexts(self, v9, v10);
  objc_msgSend_addObject_(v12, v11, v4);
}

- (void)start
{
  v27 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = objc_msgSend_itemGroupContexts(self, a2, v2);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v22, v26, 16);
  if (v6)
  {
    v9 = v6;
    v10 = *v23;
    do
    {
      v11 = 0;
      do
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v4);
        }

        v12 = *(*(&v22 + 1) + 8 * v11);
        v13 = objc_msgSend_itemGroupSetCompletionGroup(self, v7, v8);
        dispatch_group_enter(v13);

        objc_msgSend_start(v12, v14, v15);
        ++v11;
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v22, v26, 16);
    }

    while (v9);
  }

  v18 = objc_msgSend_itemGroupSetCompletionGroup(self, v16, v17);
  v19 = CKGetGlobalQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22513FBB8;
  block[3] = &unk_278545A00;
  block[4] = self;
  dispatch_group_notify(v18, v19, block);

  v20 = *MEMORY[0x277D85DE8];
}

- (CKDOperation)operation
{
  WeakRetained = objc_loadWeakRetained(&self->_operation);

  return WeakRetained;
}

@end