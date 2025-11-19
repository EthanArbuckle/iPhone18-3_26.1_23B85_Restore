@interface SGLowMemoryContactEnumeration
+ (void)enumerateContactIdentifierBatchesUsingBlock:(id)a3;
+ (void)enumerateContactIdentifiersUsingBlock:(id)a3;
@end

@implementation SGLowMemoryContactEnumeration

+ (void)enumerateContactIdentifiersUsingBlock:(id)a3
{
  v4 = a3;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v9[3] = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__SGLowMemoryContactEnumeration_enumerateContactIdentifiersUsingBlock___block_invoke;
  v6[3] = &unk_27894D470;
  v5 = v4;
  v7 = v5;
  v8 = v9;
  [a1 enumerateContactIdentifierBatchesUsingBlock:v6];

  _Block_object_dispose(v9, 8);
}

void __71__SGLowMemoryContactEnumeration_enumerateContactIdentifiersUsingBlock___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v12 = a2;
  v5 = [v12 count];
  if (v5)
  {
    v6 = 0;
    v7 = v5 - 1;
    do
    {
      v8 = objc_autoreleasePoolPush();
      v9 = *(a1 + 32);
      v10 = [v12 objectAtIndexedSubscript:v6];
      ++*(*(*(a1 + 40) + 8) + 24);
      (*(v9 + 16))(v9, v10);

      LOBYTE(v9) = *a3;
      objc_autoreleasePoolPop(v8);
      if (v9)
      {
        break;
      }
    }

    while (v7 != v6++);
  }
}

+ (void)enumerateContactIdentifierBatchesUsingBlock:(id)a3
{
  v40[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setLowPriority:1];
  [v4 setFetchAttributes:MEMORY[0x277CBEBF8]];
  [v4 setReason:@"reason:SGLowMemoryContactEnumeration-1; code:9"];
  v5 = [objc_alloc(MEMORY[0x277CC3498]) initWithQueryString:@"true" context:v4];
  [v5 setBundleIDs:&unk_28474A600];
  [v5 setPrivateIndex:0];
  if ([MEMORY[0x277D42598] isDeviceFormattedForProtection])
  {
    v6 = *MEMORY[0x277CCA1B8];
    v40[0] = *MEMORY[0x277CCA1A0];
    v40[1] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:2];
    [v5 setProtectionClasses:v7];
  }

  v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_create("SGLowMemoryContactEnumeration", v8);

  v10 = dispatch_semaphore_create(0);
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__11856;
  v38 = __Block_byref_object_dispose__11857;
  v39 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __77__SGLowMemoryContactEnumeration_enumerateContactIdentifierBatchesUsingBlock___block_invoke;
  v25[3] = &unk_27894D448;
  v11 = v9;
  v26 = v11;
  v28 = &v30;
  v29 = &v34;
  v12 = v10;
  v27 = v12;
  [v5 setFoundItemsHandler:v25];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __77__SGLowMemoryContactEnumeration_enumerateContactIdentifierBatchesUsingBlock___block_invoke_4;
  v21 = &unk_278951198;
  v13 = v11;
  v22 = v13;
  v24 = &v30;
  v14 = v12;
  v23 = v14;
  [v5 setCompletionHandler:&v18];
  [v5 start];
  while (1)
  {
    dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
    if (v31[3])
    {
      break;
    }

    v15 = objc_autoreleasePoolPush();
    v3[2](v3, v35[5], (v31 + 3));
    if (*(v31 + 24) == 1)
    {
      [v5 cancel];
    }

    objc_autoreleasePoolPop(v15);
    v16 = *(v31 + 24);
    dispatch_resume(v13);
    if (v16)
    {
      goto LABEL_10;
    }
  }

  dispatch_resume(v13);
LABEL_10:

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v34, 8);

  v17 = *MEMORY[0x277D85DE8];
}

void __77__SGLowMemoryContactEnumeration_enumerateContactIdentifierBatchesUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__SGLowMemoryContactEnumeration_enumerateContactIdentifierBatchesUsingBlock___block_invoke_2;
  block[3] = &unk_27894D420;
  v10 = *(a1 + 48);
  v7 = v3;
  v8 = v4;
  v9 = *(a1 + 40);
  v5 = v3;
  dispatch_sync(v8, block);
}

void __77__SGLowMemoryContactEnumeration_enumerateContactIdentifierBatchesUsingBlock___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __77__SGLowMemoryContactEnumeration_enumerateContactIdentifierBatchesUsingBlock___block_invoke_5;
  v6[3] = &unk_278953EC0;
  v10 = *(a1 + 48);
  v7 = v3;
  v8 = v4;
  v9 = *(a1 + 40);
  v5 = v3;
  dispatch_sync(v8, v6);
}

intptr_t __77__SGLowMemoryContactEnumeration_enumerateContactIdentifierBatchesUsingBlock___block_invoke_5(intptr_t result)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(*(result + 56) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    v2 = result;
    *(v1 + 24) = 1;
    if (*(result + 32))
    {
      v3 = sgLogHandle();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
      {
        v5 = *(v2 + 32);
        v6 = 138412290;
        v7 = v5;
        _os_log_fault_impl(&dword_231E60000, v3, OS_LOG_TYPE_FAULT, "SGLowMemoryContactEnumeration got an error from Spotlight: %@", &v6, 0xCu);
      }

      if (_PASEvaluateLogFaultAndProbCrashCriteria())
      {
        abort();
      }
    }

    dispatch_suspend(*(v2 + 40));
    result = dispatch_semaphore_signal(*(v2 + 48));
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

intptr_t __77__SGLowMemoryContactEnumeration_enumerateContactIdentifierBatchesUsingBlock___block_invoke_2(intptr_t result)
{
  if ((*(*(*(result + 56) + 8) + 24) & 1) == 0)
  {
    v2 = result;
    v3 = [*(result + 32) _pas_proxyArrayWithMapping:&__block_literal_global_11862];
    v4 = *(*(v2 + 64) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    dispatch_suspend(*(v2 + 40));
    v6 = *(v2 + 48);

    return dispatch_semaphore_signal(v6);
  }

  return result;
}

@end