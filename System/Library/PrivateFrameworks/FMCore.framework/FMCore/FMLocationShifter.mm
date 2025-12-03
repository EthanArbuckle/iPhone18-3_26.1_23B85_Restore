@interface FMLocationShifter
- (BOOL)isLocationShiftRequiredForItem:(id)item;
- (BOOL)isLocationShiftRequiredForItems:(id)items;
- (FMLocationShifter)init;
- (id)shiftLocation:(id)location timeout:(double)timeout;
- (id)shiftLocations:(id)locations timeout:(double)timeout;
- (void)shiftLocation:(id)location withCompletionHandler:(id)handler callbackQueue:(id)queue;
- (void)shiftLocations:(id)locations withCompletionHandler:(id)handler callbackQueue:(id)queue;
@end

@implementation FMLocationShifter

- (FMLocationShifter)init
{
  v7.receiver = self;
  v7.super_class = FMLocationShifter;
  v2 = [(FMLocationShifter *)&v7 init];
  if (v2)
  {
    v3 = dispatch_semaphore_create(1);
    [(FMLocationShifter *)v2 setSemaphore:v3];

    v4 = dispatch_queue_create("com.apple.icloud.fmcore.shifterQueue", 0);
    [(FMLocationShifter *)v2 setQueue:v4];

    v5 = objc_alloc_init(MEMORY[0x277D0EB88]);
    [(FMLocationShifter *)v2 setLocationShifter:v5];
  }

  return v2;
}

- (BOOL)isLocationShiftRequiredForItem:(id)item
{
  [item coordinate];
  v3 = MEMORY[0x277D0EB88];

  return [v3 isLocationShiftRequiredForCoordinate:?];
}

- (BOOL)isLocationShiftRequiredForItems:(id)items
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  itemsCopy = items;
  v5 = [itemsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(itemsCopy);
        }

        if ([(FMLocationShifter *)self isLocationShiftRequiredForItem:*(*(&v12 + 1) + 8 * i), v12])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [itemsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)shiftLocation:(id)location withCompletionHandler:(id)handler callbackQueue:(id)queue
{
  locationCopy = location;
  handlerCopy = handler;
  queueCopy = queue;
  if ([(FMLocationShifter *)self isLocationShiftRequiredForItem:locationCopy])
  {
    [locationCopy coordinate];
    v12 = v11;
    v14 = v13;
    [locationCopy accuracy];
    v16 = v15;
    queue = [(FMLocationShifter *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__FMLocationShifter_shiftLocation_withCompletionHandler_callbackQueue___block_invoke;
    block[3] = &unk_278FD9848;
    v30 = v12;
    v31 = v14;
    v32 = v16;
    block[4] = self;
    v27 = locationCopy;
    v28 = queueCopy;
    v29 = handlerCopy;
    v18 = locationCopy;
    v19 = handlerCopy;
    dispatch_async(queue, block);

    v20 = v27;
  }

  else
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __71__FMLocationShifter_shiftLocation_withCompletionHandler_callbackQueue___block_invoke_59;
    v23[3] = &unk_278FD97D0;
    v24 = locationCopy;
    v25 = handlerCopy;
    v21 = locationCopy;
    v22 = handlerCopy;
    dispatch_async(queueCopy, v23);

    v20 = v25;
  }
}

void __71__FMLocationShifter_shiftLocation_withCompletionHandler_callbackQueue___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) semaphore];
  dispatch_semaphore_wait(v2, 0xFFFFFFFFFFFFFFFFLL);

  v3 = [*(a1 + 32) locationShifter];
  v4 = *(a1 + 80);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __71__FMLocationShifter_shiftLocation_withCompletionHandler_callbackQueue___block_invoke_2;
  v16[3] = &unk_278FD97F8;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = *(a1 + 32);
  *(&v8 + 1) = v7;
  *&v9 = v5;
  *(&v9 + 1) = v6;
  v17 = v9;
  v18 = v8;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __71__FMLocationShifter_shiftLocation_withCompletionHandler_callbackQueue___block_invoke_4;
  v13[3] = &unk_278FD9820;
  v10 = *(a1 + 40);
  v11 = *(a1 + 32);
  v14 = v10;
  v15 = v11;
  v12 = dispatch_get_global_queue(21, 0);
  [v3 shiftCoordinate:v16 accuracy:0 withCompletionHandler:v13 mustGoToNetworkCallback:v12 errorHandler:*(a1 + 64) callbackQueue:{*(a1 + 72), v4}];
}

void __71__FMLocationShifter_shiftLocation_withCompletionHandler_callbackQueue___block_invoke_2(uint64_t a1, double a2, double a3, double a4)
{
  v8 = [FMLocationShifterItem alloc];
  v9 = [*(a1 + 32) timestamp];
  v10 = [*(a1 + 32) context];
  v11 = [(FMLocationShifterItem *)v8 initWithCoordinate:v9 accuracy:v10 timestamp:a2 context:a3, a4];

  [(FMLocationShifterItem *)v11 setShifted:1];
  v12 = *(a1 + 40);
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __71__FMLocationShifter_shiftLocation_withCompletionHandler_callbackQueue___block_invoke_3;
  v19 = &unk_278FD97D0;
  v13 = *(a1 + 56);
  v20 = v11;
  v21 = v13;
  v14 = v11;
  dispatch_async(v12, &v16);
  v15 = [*(a1 + 48) semaphore];
  dispatch_semaphore_signal(v15);
}

void __71__FMLocationShifter_shiftLocation_withCompletionHandler_callbackQueue___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [FMLocationShifterItem alloc];
  [*(a1 + 32) coordinate];
  v6 = v5;
  v8 = v7;
  [*(a1 + 32) accuracy];
  v10 = v9;
  v11 = [*(a1 + 32) timestamp];
  v12 = [*(a1 + 32) context];
  v13 = [(FMLocationShifterItem *)v4 initWithCoordinate:v11 accuracy:v12 timestamp:v6 context:v8, v10];

  [(FMLocationShifterItem *)v13 setError:v3];
  v14 = LogCategory_Unspecified();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    __71__FMLocationShifter_shiftLocation_withCompletionHandler_callbackQueue___block_invoke_4_cold_1(v3, v14);
  }

  v15 = [*(a1 + 40) semaphore];
  dispatch_semaphore_signal(v15);
}

- (void)shiftLocations:(id)locations withCompletionHandler:(id)handler callbackQueue:(id)queue
{
  v42 = *MEMORY[0x277D85DE8];
  locationsCopy = locations;
  handlerCopy = handler;
  queueCopy = queue;
  if ([(FMLocationShifter *)self isLocationShiftRequiredForItems:locationsCopy])
  {
    v24 = handlerCopy;
    v11 = dispatch_queue_create("com.apple.icloud.fmcore.multishift.shiftSerialQueue", 0);
    v12 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(locationsCopy, "count")}];
    v13 = dispatch_group_create();
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v25 = locationsCopy;
    obj = locationsCopy;
    v14 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v38;
      do
      {
        v17 = 0;
        do
        {
          v18 = queueCopy;
          if (*v38 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v37 + 1) + 8 * v17);
          dispatch_group_enter(v13);
          v33[0] = MEMORY[0x277D85DD0];
          v33[1] = 3221225472;
          v33[2] = __72__FMLocationShifter_shiftLocations_withCompletionHandler_callbackQueue___block_invoke;
          v33[3] = &unk_278FD9870;
          v34 = v11;
          v35 = v12;
          v36 = v13;
          v20 = v19;
          queueCopy = v18;
          [(FMLocationShifter *)self shiftLocation:v20 withCompletionHandler:v33 callbackQueue:v18];

          ++v17;
        }

        while (v15 != v17);
        v15 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v15);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__FMLocationShifter_shiftLocations_withCompletionHandler_callbackQueue___block_invoke_3;
    block[3] = &unk_278FD97D0;
    v31 = v12;
    v32 = v24;
    v21 = v24;
    v22 = v12;
    dispatch_group_notify(v13, queueCopy, block);

    locationsCopy = v25;
  }

  else
  {
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __72__FMLocationShifter_shiftLocations_withCompletionHandler_callbackQueue___block_invoke_4;
    v27[3] = &unk_278FD97D0;
    v29 = handlerCopy;
    v28 = locationsCopy;
    v11 = handlerCopy;
    dispatch_async(queueCopy, v27);

    v13 = v29;
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __72__FMLocationShifter_shiftLocations_withCompletionHandler_callbackQueue___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __72__FMLocationShifter_shiftLocations_withCompletionHandler_callbackQueue___block_invoke_2;
  v6[3] = &unk_278FD9690;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = v3;
  v5 = v3;
  dispatch_sync(v4, v6);
  dispatch_group_leave(*(a1 + 48));
}

- (id)shiftLocation:(id)location timeout:(double)timeout
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__1;
  v22 = __Block_byref_object_dispose__1;
  locationCopy = location;
  v23 = locationCopy;
  v7 = [objc_alloc(MEMORY[0x277D07B80]) initWithDescription:@"shiftLocation" andTimeout:timeout];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __56__FMLocationShifter_Synchronous__shiftLocation_timeout___block_invoke;
  v15 = &unk_278FD9960;
  v17 = &v18;
  v8 = v7;
  v16 = v8;
  v9 = dispatch_get_global_queue(21, 0);
  [(FMLocationShifter *)self shiftLocation:locationCopy withCompletionHandler:&v12 callbackQueue:v9];

  [v8 wait];
  v10 = v19[5];

  _Block_object_dispose(&v18, 8);

  return v10;
}

void __56__FMLocationShifter_Synchronous__shiftLocation_timeout___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  [*(a1 + 32) signal];
}

- (id)shiftLocations:(id)locations timeout:(double)timeout
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__1;
  v22 = __Block_byref_object_dispose__1;
  locationsCopy = locations;
  v23 = locationsCopy;
  v7 = [objc_alloc(MEMORY[0x277D07B80]) initWithDescription:@"shiftLocations" andTimeout:timeout];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __57__FMLocationShifter_Synchronous__shiftLocations_timeout___block_invoke;
  v15 = &unk_278FD9988;
  v17 = &v18;
  v8 = v7;
  v16 = v8;
  v9 = dispatch_get_global_queue(21, 0);
  [(FMLocationShifter *)self shiftLocations:locationsCopy withCompletionHandler:&v12 callbackQueue:v9];

  [v8 wait];
  v10 = v19[5];

  _Block_object_dispose(&v18, 8);

  return v10;
}

void __57__FMLocationShifter_Synchronous__shiftLocations_timeout___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  [*(a1 + 32) signal];
}

void __71__FMLocationShifter_shiftLocation_withCompletionHandler_callbackQueue___block_invoke_4_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_24A2EE000, a2, OS_LOG_TYPE_ERROR, "GEOLocationShifter error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end