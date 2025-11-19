@interface IMChatHistoryController
+ (id)sharedInstance;
- (IMChatHistoryController)init;
- (void)dealloc;
- (void)itemQuery:(id)a3 finishedWithResult:(id)a4 chatGUIDs:(id)a5;
- (void)loadItemWithGUID:(id)a3 completionBlock:(id)a4;
- (void)loadMessageItemWithGUID:(id)a3 completionBlock:(id)a4;
- (void)loadMessageWithGUID:(id)a3 completionBlock:(id)a4;
- (void)messageItemQuery:(id)a3 finishedWithResult:(id)a4 chatGUIDs:(id)a5;
- (void)messageQuery:(id)a3 finishedWithResult:(id)a4 chatGUIDs:(id)a5;
@end

@implementation IMChatHistoryController

+ (id)sharedInstance
{
  if (qword_1ED767950 != -1)
  {
    sub_1A82461DC();
  }

  v3 = qword_1ED7678F0;

  return v3;
}

- (IMChatHistoryController)init
{
  v11.receiver = self;
  v11.super_class = IMChatHistoryController;
  v4 = [(IMChatHistoryController *)&v11 init];
  if (v4)
  {
    v5 = objc_msgSend_sharedController(IMDaemonController, v2, v3);
    v8 = objc_msgSend_listener(v5, v6, v7);
    objc_msgSend_addHandler_(v8, v9, v4);
  }

  return v4;
}

- (void)dealloc
{
  v4 = objc_msgSend_sharedController(IMDaemonController, a2, v2);
  v7 = objc_msgSend_listener(v4, v5, v6);
  objc_msgSend_removeHandler_(v7, v8, self);

  v9.receiver = self;
  v9.super_class = IMChatHistoryController;
  [(IMChatHistoryController *)&v9 dealloc];
}

- (void)loadMessageWithGUID:(id)a3 completionBlock:(id)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v10 = v7;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v11 = objc_msgSend_sharedRegistry(IMChatRegistry, v8, v9);
    v14 = objc_msgSend_cachedChats(v11, v12, v13);

    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v42, v46, 16);
    if (v16)
    {
      v18 = v16;
      v19 = *v43;
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v43 != v19)
          {
            objc_enumerationMutation(v14);
          }

          v21 = objc_msgSend_messageForGUID_(*(*(&v42 + 1) + 8 * i), v17, v6);
          if (v21)
          {
            v39 = v21;
            v40 = objc_msgSend_copy(v10, v17, v22);

            v37 = v39;
            v10 = v40;
            im_dispatch_after();

            goto LABEL_14;
          }
        }

        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v42, v46, 16);
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    if (!self->_runningQueries)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      runningQueries = self->_runningQueries;
      self->_runningQueries = Mutable;
    }

    v14 = objc_msgSend_stringGUID(MEMORY[0x1E696AEC0], v23, v24);
    v29 = objc_msgSend_sharedController(IMDaemonController, v27, v28);
    v32 = objc_msgSend_remoteDaemon(v29, v30, v31);
    objc_msgSend_loadMessageWithGUID_queryID_(v32, v33, v6, v14);

    v34 = self->_runningQueries;
    v37 = objc_msgSend_copy(v10, v35, v36);
    objc_msgSend_setObject_forKey_(v34, v38, v37, v14);
LABEL_14:
  }

  v41 = *MEMORY[0x1E69E9840];
}

- (void)loadItemWithGUID:(id)a3 completionBlock:(id)a4
{
  v24 = a3;
  v8 = a4;
  if (v8)
  {
    if (!self->_runningQueries)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      runningQueries = self->_runningQueries;
      self->_runningQueries = Mutable;
    }

    v11 = objc_msgSend_stringGUID(MEMORY[0x1E696AEC0], v6, v7);
    v14 = objc_msgSend_sharedController(IMDaemonController, v12, v13);
    v17 = objc_msgSend_remoteDaemon(v14, v15, v16);
    objc_msgSend_loadItemWithGUID_queryID_(v17, v18, v24, v11);

    v19 = self->_runningQueries;
    v22 = objc_msgSend_copy(v8, v20, v21);
    objc_msgSend_setObject_forKey_(v19, v23, v22, v11);
  }
}

- (void)loadMessageItemWithGUID:(id)a3 completionBlock:(id)a4
{
  v24 = a3;
  v8 = a4;
  if (v8)
  {
    if (!self->_runningQueries)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      runningQueries = self->_runningQueries;
      self->_runningQueries = Mutable;
    }

    v11 = objc_msgSend_stringGUID(MEMORY[0x1E696AEC0], v6, v7);
    v14 = objc_msgSend_sharedController(IMDaemonController, v12, v13);
    v17 = objc_msgSend_remoteDaemon(v14, v15, v16);
    objc_msgSend_loadMessageItemWithGUID_queryID_(v17, v18, v24, v11);

    v19 = self->_runningQueries;
    v22 = objc_msgSend_copy(v8, v20, v21);
    objc_msgSend_setObject_forKey_(v19, v23, v22, v11);
  }
}

- (void)messageQuery:(id)a3 finishedWithResult:(id)a4 chatGUIDs:(id)a5
{
  v60 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v12 = objc_msgSend_objectForKey_(self->_runningQueries, v11, v8);
  if (v12)
  {
    v49 = self;
    v51 = v8;
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v50 = v10;
    v14 = v10;
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v55, v59, 16);
    if (v16)
    {
      v19 = v16;
      v20 = *v56;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v56 != v20)
          {
            objc_enumerationMutation(v14);
          }

          v22 = *(*(&v55 + 1) + 8 * i);
          v23 = objc_msgSend_sharedRegistry(IMChatRegistry, v17, v18, v49);
          v25 = objc_msgSend_existingChatWithGUID_(v23, v24, v22);

          if (v25)
          {
            objc_msgSend_addObject_(v13, v26, v25);
          }
        }

        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v55, v59, 16);
      }

      while (v19);
    }

    v29 = objc_msgSend_lastObject(v13, v27, v28);
    v32 = objc_msgSend_account(v29, v30, v31);

    v35 = objc_msgSend_sender(v9, v33, v34);
    v37 = objc_msgSend_imHandleWithID_alreadyCanonical_(v32, v36, v35, 1);

    v40 = objc_msgSend_handle(v9, v38, v39);
    v42 = objc_msgSend_imHandleWithID_alreadyCanonical_(v32, v41, v40, 1);

    v44 = objc_msgSend_messageFromIMMessageItem_sender_subject_(IMMessage, v43, v9, v37, v42);
    v53 = v13;
    v54 = v12;
    v52 = v44;
    v45 = v13;
    v46 = v44;
    im_dispatch_after();
    v8 = v51;
    objc_msgSend_removeObjectForKey_(v49->_runningQueries, v47, v51);

    v10 = v50;
  }

  v48 = *MEMORY[0x1E69E9840];
}

- (void)itemQuery:(id)a3 finishedWithResult:(id)a4 chatGUIDs:(id)a5
{
  v40 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v12 = objc_msgSend_objectForKey_(self->_runningQueries, v11, v8);
  if (v12)
  {
    v30 = self;
    v31 = v9;
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v14 = v10;
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v35, v39, 16);
    if (v16)
    {
      v19 = v16;
      v20 = *v36;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v36 != v20)
          {
            objc_enumerationMutation(v14);
          }

          v22 = *(*(&v35 + 1) + 8 * i);
          v23 = objc_msgSend_sharedRegistry(IMChatRegistry, v17, v18, v30);
          v25 = objc_msgSend_existingChatWithGUID_(v23, v24, v22);

          if (v25)
          {
            objc_msgSend_addObject_(v13, v26, v25);
          }
        }

        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v35, v39, 16);
      }

      while (v19);
    }

    v34 = v12;
    v9 = v31;
    v32 = v31;
    v33 = v13;
    v27 = v13;
    im_dispatch_after();
    objc_msgSend_removeObjectForKey_(v30->_runningQueries, v28, v8);
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (void)messageItemQuery:(id)a3 finishedWithResult:(id)a4 chatGUIDs:(id)a5
{
  v40 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v12 = objc_msgSend_objectForKey_(self->_runningQueries, v11, v8);
  if (v12)
  {
    v30 = self;
    v31 = v9;
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v14 = v10;
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v35, v39, 16);
    if (v16)
    {
      v19 = v16;
      v20 = *v36;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v36 != v20)
          {
            objc_enumerationMutation(v14);
          }

          v22 = *(*(&v35 + 1) + 8 * i);
          v23 = objc_msgSend_sharedRegistry(IMChatRegistry, v17, v18, v30);
          v25 = objc_msgSend_existingChatWithGUID_(v23, v24, v22);

          if (v25)
          {
            objc_msgSend_addObject_(v13, v26, v25);
          }
        }

        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v35, v39, 16);
      }

      while (v19);
    }

    v34 = v12;
    v9 = v31;
    v32 = v31;
    v33 = v13;
    v27 = v13;
    im_dispatch_after();
    objc_msgSend_removeObjectForKey_(v30->_runningQueries, v28, v8);
  }

  v29 = *MEMORY[0x1E69E9840];
}

@end