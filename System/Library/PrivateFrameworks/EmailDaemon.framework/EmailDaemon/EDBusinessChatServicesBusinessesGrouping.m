@interface EDBusinessChatServicesBusinessesGrouping
+ (OS_os_log)log;
- (EDBusinessChatServicesBusinessesGrouping)initWithBusinessPersistence:(id)a3;
- (id)businessConnectGroupingQueue;
- (void)_fetchBusinessMetadataForAddresses:(id)a3 progressHandler:(id)a4;
- (void)startBusinessConnectGroupingWithCancelationToken:(id)a3 progressHandler:(id)a4 completion:(id)a5;
@end

@implementation EDBusinessChatServicesBusinessesGrouping

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__EDBusinessChatServicesBusinessesGrouping_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_15 != -1)
  {
    dispatch_once(&log_onceToken_15, block);
  }

  v2 = log_log_15;

  return v2;
}

void __47__EDBusinessChatServicesBusinessesGrouping_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_15;
  log_log_15 = v1;
}

- (EDBusinessChatServicesBusinessesGrouping)initWithBusinessPersistence:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = EDBusinessChatServicesBusinessesGrouping;
  v6 = [(EDBusinessChatServicesBusinessesGrouping *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_businessPersistence, a3);
    v7->_addressesChecked = 0;
    v7->_addressesToCheck = 0;
  }

  return v7;
}

- (id)businessConnectGroupingQueue
{
  if (businessConnectGroupingQueue_onceToken != -1)
  {
    [EDBusinessChatServicesBusinessesGrouping businessConnectGroupingQueue];
  }

  v3 = businessConnectGroupingQueue_queue;

  return v3;
}

void __72__EDBusinessChatServicesBusinessesGrouping_businessConnectGroupingQueue__block_invoke()
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_BACKGROUND, 0);
  v1 = dispatch_queue_create("com.apple.email.EDBusinessChatServicesBusinessesGrouping", v0);
  v2 = businessConnectGroupingQueue_queue;
  businessConnectGroupingQueue_queue = v1;
}

- (void)startBusinessConnectGroupingWithCancelationToken:(id)a3 progressHandler:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(EDBusinessChatServicesBusinessesGrouping *)self businessConnectGroupingQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __120__EDBusinessChatServicesBusinessesGrouping_startBusinessConnectGroupingWithCancelationToken_progressHandler_completion___block_invoke;
  v15[3] = &unk_1E8250C58;
  v15[4] = self;
  v16 = v8;
  v17 = v10;
  v18 = v9;
  v12 = v9;
  v13 = v8;
  v14 = v10;
  dispatch_async(v11, v15);
}

void __120__EDBusinessChatServicesBusinessesGrouping_startBusinessConnectGroupingWithCancelationToken_progressHandler_completion___block_invoke(id *a1)
{
  v2 = [MEMORY[0x1E699B860] transactionWithDescription:@"com.apple.email.businessesConnectGrouping"];
  v3 = [a1[4] businessPersistence];
  [a1[4] setAddressesToCheck:{objc_msgSend(v3, "countOfAddressesNeedingUpdate")}];

  if ([a1[4] addressesToCheck])
  {
    *v31 = 0;
    v32 = v31;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy__1;
    v35 = __Block_byref_object_dispose__1;
    v36 = objc_opt_new();
    v4 = [MEMORY[0x1E695DF70] array];
    v5 = [a1[4] businessPersistence];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __120__EDBusinessChatServicesBusinessesGrouping_startBusinessConnectGroupingWithCancelationToken_progressHandler_completion___block_invoke_7;
    v25[3] = &unk_1E8250BE0;
    v6 = a1[5];
    v28 = a1[6];
    v30 = v31;
    v7 = v4;
    v8 = a1[4];
    v26 = v7;
    v27 = v8;
    v29 = a1[7];
    [v5 iterateAddressesNeedingUpdateWithCancelationToken:v6 handler:v25];

    if ([a1[5] isCanceled])
    {
      v9 = +[EDBusinessChatServicesBusinessesGrouping log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_DEFAULT, "Business grouping canceled. Returning early", buf, 2u);
      }

      [v2 invalidate];
      v10 = a1[6];
      if (!v10)
      {
        goto LABEL_14;
      }

      v11 = [MEMORY[0x1E696ABC0] ef_cancelledError];
      v10[2](v10, v11);
    }

    else
    {
      if ([*(v32 + 5) count])
      {
        v13 = [MEMORY[0x1E699B868] promise];
        v14 = [v13 future];
        [v7 addObject:v14];

        v15 = a1[4];
        v16 = *(v32 + 5);
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __120__EDBusinessChatServicesBusinessesGrouping_startBusinessConnectGroupingWithCancelationToken_progressHandler_completion___block_invoke_14;
        v21[3] = &unk_1E8250C08;
        v23 = a1[7];
        v17 = v13;
        v22 = v17;
        [v15 _fetchBusinessMetadataForAddresses:v16 progressHandler:v21];
      }

      v11 = [MEMORY[0x1E699B7C8] join:v7];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __120__EDBusinessChatServicesBusinessesGrouping_startBusinessConnectGroupingWithCancelationToken_progressHandler_completion___block_invoke_2;
      v18[3] = &unk_1E8250C30;
      v19 = v2;
      v20 = a1[6];
      [v11 always:v18];
    }

LABEL_14:
    _Block_object_dispose(v31, 8);

    goto LABEL_15;
  }

  v12 = +[EDBusinessChatServicesBusinessesGrouping log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v31 = 0;
    _os_log_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_DEFAULT, "No addresses needing an update, exiting.", v31, 2u);
  }

  (*(a1[6] + 2))();
  [v2 invalidate];
LABEL_15:
}

void __120__EDBusinessChatServicesBusinessesGrouping_startBusinessConnectGroupingWithCancelationToken_progressHandler_completion___block_invoke_7(uint64_t a1, void *a2, void *a3, void *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = +[EDBusinessChatServicesBusinessesGrouping log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [v9 ef_publicDescription];
      __120__EDBusinessChatServicesBusinessesGrouping_startBusinessConnectGroupingWithCancelationToken_progressHandler_completion___block_invoke_7_cold_1(v11, buf, v10);
    }

    v12 = *(a1 + 48);
    if (v12)
    {
      (*(v12 + 16))(v12, v9);
    }
  }

  else
  {
    [*(*(*(a1 + 64) + 8) + 40) setObject:v8 forKey:v7];
    if ([*(*(*(a1 + 64) + 8) + 40) count] >= 0xA)
    {
      *buf = 0;
      v25 = buf;
      v26 = 0x3032000000;
      v27 = __Block_byref_object_copy__1;
      v28 = __Block_byref_object_dispose__1;
      v29 = [MEMORY[0x1E699B868] promise];
      v13 = *(a1 + 32);
      v14 = [*(v25 + 5) future];
      [v13 addObject:v14];

      v15 = *(a1 + 40);
      v16 = *(*(*(a1 + 64) + 8) + 40);
      v18 = MEMORY[0x1E69E9820];
      v19 = 3221225472;
      v20 = __120__EDBusinessChatServicesBusinessesGrouping_startBusinessConnectGroupingWithCancelationToken_progressHandler_completion___block_invoke_9;
      v21 = &unk_1E8250BB8;
      v22 = *(a1 + 56);
      v23 = buf;
      [v15 _fetchBusinessMetadataForAddresses:v16 progressHandler:&v18];
      [*(*(*(a1 + 64) + 8) + 40) removeAllObjects];

      _Block_object_dispose(buf, 8);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __120__EDBusinessChatServicesBusinessesGrouping_startBusinessConnectGroupingWithCancelationToken_progressHandler_completion___block_invoke_9(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v3 = [MEMORY[0x1E695DFB0] null];
  [v2 finishWithResult:?];
}

void __120__EDBusinessChatServicesBusinessesGrouping_startBusinessConnectGroupingWithCancelationToken_progressHandler_completion___block_invoke_14(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E695DFB0] null];
  [v2 finishWithResult:?];
}

uint64_t __120__EDBusinessChatServicesBusinessesGrouping_startBusinessConnectGroupingWithCancelationToken_progressHandler_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_fetchBusinessMetadataForAddresses:(id)a3 progressHandler:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(EDBusinessChatServicesBusinessesGrouping *)self businessConnectGroupingQueue];
  dispatch_assert_queue_V2(v8);

  v9 = dispatch_semaphore_create(0);
  v10 = [v6 copy];
  v11 = +[EDBusinessChatServicesBusinessesGrouping log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v10 allValues];
    *buf = 138543362;
    v30 = v12;
    _os_log_impl(&dword_1C61EF000, v11, OS_LOG_TYPE_DEFAULT, "Fetching Business Connect metadata for addresses: %{public}@", buf, 0xCu);
  }

  v13 = [(EDBusinessChatServicesBusinessesGrouping *)self businessPersistence];
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __95__EDBusinessChatServicesBusinessesGrouping__fetchBusinessMetadataForAddresses_progressHandler___block_invoke;
  v24 = &unk_1E8250C80;
  v14 = v10;
  v25 = v14;
  v15 = v9;
  v26 = v15;
  v27 = self;
  v16 = v7;
  v28 = v16;
  [v13 fetchBusinessMetadataForAddresses:v14 completionHandler:&v21];

  v17 = dispatch_time(0, 5000000000);
  if (dispatch_semaphore_wait(v15, v17))
  {
    v18 = [EDBusinessChatServicesBusinessesGrouping log:v21];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [v14 allValues];
      [(EDBusinessChatServicesBusinessesGrouping *)v19 _fetchBusinessMetadataForAddresses:buf progressHandler:v18];
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

uint64_t __95__EDBusinessChatServicesBusinessesGrouping__fetchBusinessMetadataForAddresses_progressHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = +[EDBusinessChatServicesBusinessesGrouping log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) count];
    v8 = 134218240;
    v9 = a2;
    v10 = 2048;
    v11 = v5;
    _os_log_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_DEFAULT, "Updated %ld/%ld addresses with Business Connect.", &v8, 0x16u);
  }

  dispatch_semaphore_signal(*(a1 + 40));
  [*(a1 + 48) setAddressesChecked:{objc_msgSend(*(a1 + 48), "addressesChecked") + objc_msgSend(*(a1 + 32), "count")}];
  result = (*(*(a1 + 56) + 16))(*(a1 + 56), [*(a1 + 48) addressesChecked], objc_msgSend(*(a1 + 48), "addressesToCheck"));
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void __120__EDBusinessChatServicesBusinessesGrouping_startBusinessConnectGroupingWithCancelationToken_progressHandler_completion___block_invoke_7_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "Business Connect query failed with error %{public}@", buf, 0xCu);
}

- (void)_fetchBusinessMetadataForAddresses:(os_log_t)log progressHandler:.cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "Business Connect took longer than 5 seconds to return the results for addresses: %{public}@", buf, 0xCu);
}

@end