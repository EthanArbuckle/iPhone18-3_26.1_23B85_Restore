@interface FCURLRequestScheduler
- (FCURLRequestScheduler)initWithURLSession:(id)a3;
- (id)scheduleURLRequest:(id)a3 destination:(int64_t)a4 priority:(int64_t)a5 loggingKey:(id)a6 completion:(id)a7;
- (void)_resumeURLTaskForRequest:(uint64_t)a1;
- (void)_serviceRequests;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation FCURLRequestScheduler

- (FCURLRequestScheduler)initWithURLSession:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = FCURLRequestScheduler;
  v6 = [(FCURLRequestScheduler *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_URLSession, a3);
    v8 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    requests = v7->_requests;
    v7->_requests = v8;

    v10 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:512 valueOptions:0];
    inFlightURLTasks = v7->_inFlightURLTasks;
    v7->_inFlightURLTasks = v10;

    v12 = objc_alloc_init(MEMORY[0x1E69B6920]);
    lock = v7->_lock;
    v7->_lock = v12;

    v14 = [v5 configuration];
    v7->_maxInFlightURLTasks = 2 * [v14 HTTPMaximumConnectionsPerHost];

    v7->_maxInFlightLowPriorityURLTasks = v7->_maxInFlightURLTasks;
  }

  return v7;
}

- (id)scheduleURLRequest:(id)a3 destination:(int64_t)a4 priority:(int64_t)a5 loggingKey:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a7;
  v14 = a6;
  v15 = [FCURLRequest alloc];
  v16 = [MEMORY[0x1E695DF00] date];
  v17 = v12;
  v18 = v16;
  v19 = v14;
  v20 = v13;
  if (v15)
  {
    v52.receiver = v15;
    v52.super_class = FCURLRequest;
    v15 = [(FCURLRequestScheduler *)&v52 init];
    if (v15)
    {
      v21 = [v17 copy];
      URLRequest = v15->_URLRequest;
      v15->_URLRequest = v21;

      v15->_destination = a4;
      v15->_priority = a5;
      v23 = [v18 copy];
      dateInitiated = v15->_dateInitiated;
      v15->_dateInitiated = v23;

      v25 = [v19 copy];
      loggingKey = v15->_loggingKey;
      v15->_loggingKey = v25;

      v27 = [v20 copy];
      completion = v15->_completion;
      v15->_completion = v27;

      v15->_remainingRetries = 2;
    }
  }

  if (self)
  {
    lock = self->_lock;
  }

  else
  {
    lock = 0;
  }

  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __87__FCURLRequestScheduler_scheduleURLRequest_destination_priority_loggingKey_completion___block_invoke;
  v50[3] = &unk_1E7C36C58;
  v50[4] = self;
  v30 = v15;
  v51 = v30;
  [(NFUnfairLock *)lock performWithLockSync:v50];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __87__FCURLRequestScheduler_scheduleURLRequest_destination_priority_loggingKey_completion___block_invoke_2;
  aBlock[3] = &unk_1E7C36C58;
  aBlock[4] = self;
  v31 = v30;
  v49 = v31;
  v32 = _Block_copy(aBlock);
  v42 = MEMORY[0x1E69E9820];
  v43 = 3221225472;
  v44 = __87__FCURLRequestScheduler_scheduleURLRequest_destination_priority_loggingKey_completion___block_invoke_4;
  v45 = &unk_1E7C37838;
  v46 = self;
  v47 = v31;
  v33 = v31;
  v34 = _Block_copy(&v42);
  v35 = [FCPseudoOperation alloc];
  v36 = objc_opt_class();
  v37 = NSStringFromClass(v36);
  v38 = objc_opt_class();
  v39 = NSStringFromClass(v38);
  v40 = [(FCPseudoOperation *)v35 initWithCancelBlock:v32 priorityBlock:v34 shortDescription:v37 longDescription:v39, v42, v43, v44, v45, v46];

  return v40;
}

void __87__FCURLRequestScheduler_scheduleURLRequest_destination_priority_loggingKey_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[2];
  }

  v3 = v2;
  v4 = [v3 array];
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (v5)
  {
    v5 = v5[2];
  }

  v7 = v5;
  v8 = [v7 count];
  objc_opt_self();
  v9 = [v4 indexOfObject:v6 inSortedRange:0 options:v8 usingComparator:{1024, &__block_literal_global_51_2}];

  v10 = *(a1 + 32);
  if (v10)
  {
    v11 = *(v10 + 16);
  }

  else
  {
    v11 = 0;
  }

  [v11 insertObject:*(a1 + 40) atIndex:v9];
  v12 = *(a1 + 32);

  [(FCURLRequestScheduler *)v12 _serviceRequests];
}

- (void)_serviceRequests
{
  if (a1 && [*(a1 + 16) count])
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__46;
    v22 = __Block_byref_object_dispose__46;
    v23 = 0;
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__46;
    v16 = __Block_byref_object_dispose__46;
    v17 = 0;
    v2 = *(a1 + 16);
    v3 = [v2 array];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __41__FCURLRequestScheduler__serviceRequests__block_invoke_10;
    v11[3] = &unk_1E7C419A0;
    v11[4] = a1;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __41__FCURLRequestScheduler__serviceRequests__block_invoke_2;
    v10[3] = &unk_1E7C3B658;
    v10[4] = &v18;
    v10[5] = &v12;
    [v3 fc_splitArrayWithTest:v11 result:v10];

    v4 = [v13[5] count];
    v5 = v19[5];
    if (v4)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __41__FCURLRequestScheduler__serviceRequests__block_invoke_3;
      v9[3] = &unk_1E7C419C8;
      v9[4] = a1;
      [v5 enumerateObjectsUsingBlock:v9];
      v6 = v13[5];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __41__FCURLRequestScheduler__serviceRequests__block_invoke_4;
      v8[3] = &unk_1E7C419C8;
      v8[4] = a1;
      [v6 enumerateObjectsUsingBlock:v8];
    }

    else
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __41__FCURLRequestScheduler__serviceRequests__block_invoke_5;
      v7[3] = &unk_1E7C419C8;
      v7[4] = a1;
      [v5 enumerateObjectsUsingBlock:v7];
    }

    _Block_object_dispose(&v12, 8);

    _Block_object_dispose(&v18, 8);
  }
}

void __87__FCURLRequestScheduler_scheduleURLRequest_destination_priority_loggingKey_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 48);
  }

  else
  {
    v2 = 0;
  }

  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __87__FCURLRequestScheduler_scheduleURLRequest_destination_priority_loggingKey_completion___block_invoke_3;
  v3[3] = &unk_1E7C36C58;
  v3[4] = v1;
  v4 = *(a1 + 40);
  [v2 performWithLockSync:v3];
}

void __87__FCURLRequestScheduler_scheduleURLRequest_destination_priority_loggingKey_completion___block_invoke_3(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v1 && [*(v1 + 16) containsObject:v2])
  {
    v3 = [*(v1 + 24) objectForKey:v2];
    [*(v1 + 16) removeObject:v2];
    [*(v1 + 24) removeObjectForKey:v2];
    if (v3)
    {
      v4 = FCOperationLog;
      if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
      {
        if (v2)
        {
          v5 = v2[5];
        }

        else
        {
          v5 = 0;
        }

        v6 = v5;
        v7 = v4;
        v8 = [v3 longOperationDescription];
        *v11 = 138543618;
        *&v11[4] = v5;
        *&v11[12] = 2114;
        *&v11[14] = v8;
        _os_log_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ will cancel URL task %{public}@", v11, 0x16u);
      }

      [v3 cancel];
      [(FCURLRequestScheduler *)v1 _serviceRequests];
    }

    v9 = dispatch_get_global_queue(0, 0);
    if (v2 && v2[6])
    {
      *v11 = MEMORY[0x1E69E9820];
      *&v11[8] = 3221225472;
      *&v11[16] = __40__FCURLRequestScheduler__cancelRequest___block_invoke;
      v12 = &unk_1E7C36EA0;
      v13 = v2;
      dispatch_async(v9, v11);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __87__FCURLRequestScheduler_scheduleURLRequest_destination_priority_loggingKey_completion___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 48);
  }

  else
  {
    v3 = 0;
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __87__FCURLRequestScheduler_scheduleURLRequest_destination_priority_loggingKey_completion___block_invoke_5;
  v4[3] = &unk_1E7C393F8;
  v4[4] = v2;
  v6 = a2;
  v5 = *(a1 + 40);
  [v3 performWithLockSync:v4];
}

uint64_t __87__FCURLRequestScheduler_scheduleURLRequest_destination_priority_loggingKey_completion___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = v3;
  if (!v2)
  {
    goto LABEL_12;
  }

  v5 = v3 ? v3[3] : 0;
  if (v5 == v1)
  {
    goto LABEL_12;
  }

  v11 = v3;
  v6 = [*(v2 + 24) objectForKey:v3];
  v7 = v6;
  if (v6)
  {
    [v6 setRelativePriority:v1];
  }

  v8 = *(v2 + 16);
  objc_opt_self();
  [v8 sortUsingComparator:&__block_literal_global_51_2];

  if (!v11)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v9 = v11[3];
  if (v9 > -2)
  {
    if (v1 < 0 == (v9 == -1))
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if ((v1 & 0x8000000000000000) == 0)
  {
LABEL_10:
    [(FCURLRequestScheduler *)v2 _serviceRequests];
  }

LABEL_11:

  v4 = v11;
LABEL_12:

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (FCURLRequestSchedulerKVOContext == a6)
  {
    v7 = [MEMORY[0x1E695DF00] date];
    v8 = v7;
    if (self)
    {
      v9 = v7;
      objc_setProperty_nonatomic_copy(self, v7, v7, 56);
      v8 = v9;
    }

    MEMORY[0x1EEE66BB8](v7, v8);
  }

  else
  {
    v10.receiver = self;
    v10.super_class = FCURLRequestScheduler;
    [(FCURLRequestScheduler *)&v10 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

uint64_t __41__FCURLRequestScheduler__serviceRequests__block_invoke_10(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 24) >> 63;
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  return (*(a1 + 32) != 0) & v2;
}

void __41__FCURLRequestScheduler__serviceRequests__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __41__FCURLRequestScheduler__serviceRequests__block_invoke_3(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = a2;
  if (v2)
  {
    v4 = [*(v2 + 24) objectForKey:v3];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
      v7 = FCOperationLog;
      if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
      {
        if (v3)
        {
          v8 = v3[5];
        }

        else
        {
          v8 = 0;
        }

        v9 = v8;
        v10 = v7;
        v11 = [v6 longOperationDescription];
        v13 = 138543618;
        v14 = v8;
        v15 = 2114;
        v16 = v11;
        _os_log_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ will cancel URL task %{public}@ to make way for higher-priority requests", &v13, 0x16u);
      }

      [*(v2 + 24) removeObjectForKey:v3];
      [v6 cancel];
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __41__FCURLRequestScheduler__serviceRequests__block_invoke_4(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v12 = a2;
  v6 = *(a1 + 32);
  if (v6)
  {
    v6 = v6[3];
  }

  v7 = v6;
  v8 = [v7 count];
  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = v8;
    v11 = *(v9 + 32);
    *a4 = v8 >= v11;

    if (v10 < v11)
    {
      [(FCURLRequestScheduler *)*(a1 + 32) _resumeURLTaskForRequest:v12];
    }
  }

  else
  {
    *a4 = 1;
  }
}

- (void)_resumeURLTaskForRequest:(uint64_t)a1
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!a1)
  {
    goto LABEL_17;
  }

  v4 = [*(a1 + 24) objectForKey:v3];

  if (v4)
  {
    goto LABEL_17;
  }

  v5 = [MEMORY[0x1E695DF00] date];
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__46;
  v34 = __Block_byref_object_dispose__46;
  v35 = 0;
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __50__FCURLRequestScheduler__resumeURLTaskForRequest___block_invoke_2;
  v25 = &unk_1E7C41A18;
  v26 = a1;
  v29 = &v30;
  v6 = v3;
  v27 = v6;
  v7 = v5;
  v28 = v7;
  v8 = _Block_copy(&v22);
  if (!v6)
  {
    v10 = *(a1 + 8);
    v13 = 0;
    goto LABEL_8;
  }

  v9 = v6[2];
  if (!v9)
  {
    v10 = *(a1 + 8);
    v13 = v6[1];
LABEL_8:
    v11 = v13;
    v12 = [v10 downloadTaskWithRequest:v11 completionHandler:{v8, v22, v23, v24, v25, v26, v27}];
    goto LABEL_9;
  }

  if (v9 == 1)
  {
    v10 = *(a1 + 8);
    v11 = v6[1];
    v12 = [v10 dataTaskWithRequest:v11 completionHandler:{v8, v22, v23, v24, v25, v26, v27}];
LABEL_9:
    v14 = v31[5];
    v31[5] = v12;
  }

  v15 = *(a1 + 24);
  [v15 setObject:v31[5] forKey:v6];

  if (v6)
  {
    v16 = v6[3];
  }

  else
  {
    v16 = 0;
  }

  [v31[5] setRelativePriority:{v16, v22, v23, v24, v25, v26}];
  [v31[5] addObserver:a1 forKeyPath:@"countOfBytesReceived" options:0 context:FCURLRequestSchedulerKVOContext];
  v17 = FCOperationLog;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    if (v6)
    {
      v18 = v6[5];
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;
    v20 = [v31[5] longOperationDescription];
    *buf = 138543618;
    v37 = v19;
    v38 = 2114;
    v39 = v20;
    _os_log_impl(&dword_1B63EF000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ will start URL task %{public}@", buf, 0x16u);
  }

  [v31[5] resume];
  _Block_object_dispose(&v30, 8);

LABEL_17:
  v21 = *MEMORY[0x1E69E9840];
}

void __41__FCURLRequestScheduler__serviceRequests__block_invoke_5(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v12 = a2;
  v6 = *(a1 + 32);
  if (v6)
  {
    v6 = v6[3];
  }

  v7 = v6;
  v8 = [v7 count];
  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = v8;
    v11 = *(v9 + 40);
    *a4 = v8 >= v11;

    if (v10 < v11)
    {
      [(FCURLRequestScheduler *)*(a1 + 32) _resumeURLTaskForRequest:v12];
    }
  }

  else
  {
    *a4 = 1;
  }
}

void __50__FCURLRequestScheduler__resumeURLTaskForRequest___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v10 = *(a1 + 32);
  if (v10)
  {
    v10 = v10[6];
  }

  v11 = v10;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __50__FCURLRequestScheduler__resumeURLTaskForRequest___block_invoke_3;
  v18[3] = &unk_1E7C419F0;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v22 = *(a1 + 56);
  v18[4] = v12;
  v19 = v13;
  v20 = *(a1 + 48);
  v14 = v9;
  v21 = v14;
  v23 = &v24;
  [v11 performWithLockSync:v18];

  if (*(v25 + 24) == 1)
  {
    v15 = *(a1 + 40);
    if (v15)
    {
      v16 = *(v15 + 48);
      if (v16)
      {
        v17 = v16;
        v17[2](v17, v7, v8, *(*(*(a1 + 56) + 8) + 40), v14);
      }
    }
  }

  _Block_object_dispose(&v24, 8);
}

void __50__FCURLRequestScheduler__resumeURLTaskForRequest___block_invoke_3(uint64_t a1)
{
  v54 = *MEMORY[0x1E69E9840];
  [*(*(*(a1 + 64) + 8) + 40) removeObserver:*(a1 + 32) forKeyPath:@"countOfBytesReceived"];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 24);
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 objectForKey:*(a1 + 40)];
  if (*(*(*(a1 + 64) + 8) + 40) == v4)
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      v8 = *(v7 + 24);
    }

    else
    {
      v8 = 0;
    }

    [v8 removeObjectForKey:*(a1 + 40)];
    v9 = *(a1 + 32);
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v12 = *(a1 + 40);
    v13 = v10;
    v14 = v11;
    v15 = v14;
    v16 = 0;
    if (v9 && v12)
    {
      if (*(v12 + 7) < 1)
      {
        goto LABEL_16;
      }

      v17 = [v14 domain];
      v18 = [v17 isEqualToString:*MEMORY[0x1E696A978]];

      if (!v18 || [v15 code] != -1001)
      {
        goto LABEL_16;
      }

      v19 = *(v9 + 56);
      if (v19)
      {
        v20 = v19;
        v21 = *(v9 + 56);
        [v21 fc_timeIntervalUntilNow];
        v23 = v22;
        [*(v12 + 1) timeoutInterval];
        v25 = v24;

        if (v23 < v25)
        {
          goto LABEL_15;
        }
      }

      [v13 fc_timeIntervalUntilNow];
      v27 = v26;
      [*(v12 + 1) timeoutInterval];
      if (v27 > v28 + v28)
      {
LABEL_15:
        v16 = 1;
      }

      else
      {
LABEL_16:
        v16 = 0;
      }
    }

    v29 = FCOperationLog;
    v30 = os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      if (v30)
      {
        v31 = *(a1 + 40);
        if (v31)
        {
          v32 = *(v31 + 40);
        }

        else
        {
          v32 = 0;
        }

        v33 = *(*(*(a1 + 64) + 8) + 40);
        v34 = v32;
        v35 = v29;
        v36 = [v33 longOperationDescription];
        *buf = 138543618;
        v51 = v32;
        v52 = 2114;
        v53 = v36;
        _os_log_impl(&dword_1B63EF000, v35, OS_LOG_TYPE_DEFAULT, "%{public}@ will retry URL task %{public}@", buf, 0x16u);
      }

      v37 = *(a1 + 40);
      if (v37)
      {
        --*(v37 + 56);
      }
    }

    else
    {
      if (v30)
      {
        v38 = *(a1 + 40);
        if (v38)
        {
          v39 = *(v38 + 40);
        }

        else
        {
          v39 = 0;
        }

        v40 = *(*(*(a1 + 64) + 8) + 40);
        v41 = v39;
        v42 = v29;
        v43 = [v40 longOperationDescription];
        *buf = 138543618;
        v51 = v39;
        v52 = 2114;
        v53 = v43;
        _os_log_impl(&dword_1B63EF000, v42, OS_LOG_TYPE_DEFAULT, "%{public}@ did complete URL task %{public}@", buf, 0x16u);
      }

      v44 = *(a1 + 32);
      if (v44)
      {
        v45 = *(v44 + 16);
      }

      else
      {
        v45 = 0;
      }

      [v45 removeObject:*(a1 + 40)];
      *(*(*(a1 + 72) + 8) + 24) = 1;
    }

    [(FCURLRequestScheduler *)*(a1 + 32) _serviceRequests];
  }

  else
  {
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __50__FCURLRequestScheduler__resumeURLTaskForRequest___block_invoke_4;
    v47[3] = &unk_1E7C3A3A0;
    v5 = *(a1 + 40);
    v6 = *(a1 + 64);
    v48 = v5;
    v49 = v6;
    __50__FCURLRequestScheduler__resumeURLTaskForRequest___block_invoke_4(v47);
  }

  v46 = *MEMORY[0x1E69E9840];
}

void __50__FCURLRequestScheduler__resumeURLTaskForRequest___block_invoke_4(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(v3 + 40);
    }

    else
    {
      v4 = 0;
    }

    v5 = *(*(*(a1 + 40) + 8) + 40);
    v6 = v4;
    v7 = v2;
    v8 = [v5 longOperationDescription];
    v10 = 138543618;
    v11 = v4;
    v12 = 2114;
    v13 = v8;
    _os_log_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ ignoring URL task completion due to prior cancellation %{public}@", &v10, 0x16u);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __40__FCURLRequestScheduler__cancelRequest___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 48);
  }

  else
  {
    v2 = 0;
  }

  v3 = MEMORY[0x1E696ABC0];
  v4 = *MEMORY[0x1E696A978];
  v5 = v2;
  v6 = [v3 errorWithDomain:v4 code:-999 userInfo:MEMORY[0x1E695E0F8]];
  (v2)[2](v5, 0, 0, 0, v6);
}

@end