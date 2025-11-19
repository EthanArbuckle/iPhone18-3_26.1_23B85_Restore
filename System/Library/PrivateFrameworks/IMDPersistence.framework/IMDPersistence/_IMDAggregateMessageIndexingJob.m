@interface _IMDAggregateMessageIndexingJob
+ (id)_classNamesOfObjects:(id)a3;
- (_IMDAggregateMessageIndexingJob)initWithIntegrations:(id)a3 size:(int64_t)a4 context:(id)a5;
- (void)finishWithCompletion:(id)a3;
- (void)processMessageDictionary:(id)a3 chatDictionary:(id)a4;
@end

@implementation _IMDAggregateMessageIndexingJob

- (_IMDAggregateMessageIndexingJob)initWithIntegrations:(id)a3 size:(int64_t)a4 context:(id)a5
{
  v42 = *MEMORY[0x1E69E9840];
  v34 = a3;
  v8 = a5;
  v40.receiver = self;
  v40.super_class = _IMDAggregateMessageIndexingJob;
  v9 = [(_IMDAggregateMessageIndexingJob *)&v40 init];
  if (!v9)
  {
    goto LABEL_15;
  }

  v10 = objc_alloc_init(MEMORY[0x1E69A6170]);
  timing = v9->_timing;
  v9->_timing = v10;

  v12 = dispatch_group_create();
  group = v9->_group;
  v9->_group = v12;

  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v15 = v34;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v36, v41, 16);
  if (v17)
  {
    v18 = *v37;
    do
    {
      v19 = 0;
      do
      {
        if (*v37 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v36 + 1) + 8 * v19);
        if (objc_opt_respondsToSelector())
        {
          v23 = objc_msgSend_messageIndexingJobWithSize_context_timingCollection_(v20, v21, a4, v8, v9->_timing);
          if (v23)
          {
            objc_msgSend_addObject_(v14, v22, v23);
          }
        }

        ++v19;
      }

      while (v17 != v19);
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v21, &v36, v41, 16);
    }

    while (v17);
  }

  if (objc_msgSend_count(v14, v24, v25))
  {
    v28 = objc_msgSend_copy(v14, v26, v27);
    indexingJobs = v9->_indexingJobs;
    v9->_indexingJobs = v28;

LABEL_15:
    v30 = v9;
    goto LABEL_21;
  }

  if (IMOSLoggingEnabled())
  {
    v31 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v31, OS_LOG_TYPE_INFO, "Dropping request to index messages as no indexing managers are interested in indexing messages", buf, 2u);
    }
  }

  v30 = 0;
LABEL_21:

  v32 = *MEMORY[0x1E69E9840];
  return v30;
}

+ (id)_classNamesOfObjects:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (objc_msgSend_count(v3, v4, v5))
  {
    v8 = MEMORY[0x1E695DF70];
    v9 = objc_msgSend_count(v3, v6, v7);
    v11 = objc_msgSend_arrayWithCapacity_(v8, v10, v9);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v12 = v3;
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v30, v34, 16);
    if (v14)
    {
      v15 = v14;
      v16 = *v31;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v31 != v16)
          {
            objc_enumerationMutation(v12);
          }

          v18 = *(*(&v30 + 1) + 8 * i);
          v19 = objc_opt_class();
          if (v19)
          {
            v21 = NSStringFromClass(v19);
            if (objc_msgSend_length(v21, v22, v23, v30))
            {
              objc_msgSend_addObject_(v11, v24, v21);
            }
          }
        }

        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v20, &v30, v34, 16);
      }

      while (v15);
    }

    v27 = objc_msgSend_copy(v11, v25, v26);
  }

  else
  {
    v27 = 0;
  }

  v28 = *MEMORY[0x1E69E9840];

  return v27;
}

- (void)finishWithCompletion:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v27 = a3;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x3032000000;
  v39[3] = sub_1B7AE1AF0;
  v39[4] = sub_1B7AE2580;
  v40 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = objc_alloc(MEMORY[0x1E695DFA8]);
  v7 = objc_msgSend_indexingJobs(self, v5, v6);
  v9 = objc_msgSend_initWithArray_(v4, v8, v7);

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v12 = objc_msgSend_indexingJobs(self, v10, v11);
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v35, v41, 16);
  if (v16)
  {
    v17 = *v36;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v36 != v17)
        {
          objc_enumerationMutation(v12);
        }

        v19 = *(*(&v35 + 1) + 8 * i);
        v20 = objc_msgSend_group(self, v14, v15);
        dispatch_group_enter(v20);

        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = sub_1B7BC82E4;
        v30[3] = &unk_1E7CBC2E0;
        v34 = v39;
        v31 = v9;
        v32 = v19;
        v33 = self;
        objc_msgSend_finishWithCompletion_(v19, v21, v30);
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v14, &v35, v41, 16);
    }

    while (v16);
  }

  v24 = objc_msgSend_group(self, v22, v23);
  v25 = IMDIndexingClientRequestQueue();
  dispatch_time(0, 120000000000);
  v28 = v9;
  v29 = v27;
  IMDispatchGroupNotifyWithTimeout();

  _Block_object_dispose(v39, 8);
  v26 = *MEMORY[0x1E69E9840];
}

- (void)processMessageDictionary:(id)a3 chatDictionary:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = objc_msgSend_indexingJobs(self, v8, v9, 0);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v18, v22, 16);
  if (v12)
  {
    v14 = v12;
    v15 = *v19;
    do
    {
      v16 = 0;
      do
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v10);
        }

        objc_msgSend_processMessageDictionary_chatDictionary_(*(*(&v18 + 1) + 8 * v16++), v13, v6, v7);
      }

      while (v14 != v16);
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v18, v22, 16);
    }

    while (v14);
  }

  v17 = *MEMORY[0x1E69E9840];
}

@end